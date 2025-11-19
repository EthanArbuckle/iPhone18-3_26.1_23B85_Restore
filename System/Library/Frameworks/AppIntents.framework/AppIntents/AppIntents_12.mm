uint64_t sub_18F1F713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v15 = a3;
  v7 = sub_18F520B3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18F0FD724(a1, v18);
  v17[0] = sub_18F52307C();
  v17[1] = v11;
  MEMORY[0x193ADB000](58, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  v12 = sub_18F52307C();
  MEMORY[0x193ADB000](v12);

  MEMORY[0x193ADB000](58, 0xE100000000000000);
  v13 = sub_18F1F753C(*v4);
  MEMORY[0x193ADB000](v13);

  (*(v8 + 16))(v10, a2, v7);
  sub_18F1F8FAC((v4 + 1), v17);
  sub_18F1F8FAC((v4 + 6), v16);
  return sub_18F370810(v18, v10, v17, v16, v15);
}

uint64_t sub_18F1F7310(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentError.Context(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F1F8F48(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 3;
  switch(EnumCaseMultiPayload)
  {
    case 1:

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0570);
      sub_18F0EF1A8(&v4[*(v10 + 64)], &qword_1EACCF7A0);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      result = 1;
      break;
    case 2:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1FF8);

      sub_18F0F689C(*&v4[*(v11 + 112)]);
      sub_18F0EF1A8(v4, &qword_1EACCF7A0);
      result = 7;
      break;
    case 3:
      v9 = sub_18F520C8C();
      (*(*(v9 - 8) + 8))(v4, v9);
      result = 8;
      break;
    case 4:
      sub_18F1D5680(v4, type metadata accessor for AppIntentError.Context);
      result = 0;
      break;
    case 5:
      return result;
    default:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568);
      v8 = *(v7 + 48);
      sub_18F0EF1A8(&v4[*(v7 + 64)], &qword_1EACD0550);
      sub_18F0EF1A8(&v4[v8], &qword_1EACCF7A0);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      result = 2;
      break;
  }

  return result;
}

unint64_t sub_18F1F753C(uint64_t a1)
{
  result = 0x546C617571653C3CLL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x757145746F6E3C3CLL;
      break;
    case 2:
      result = 0x6574616572673C3CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x68547373656C3C3CLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6961746E6F633C3CLL;
      break;
    case 7:
      result = 0x6572507361683C3CLL;
      break;
    case 8:
      result = 0x6675537361683C3CLL;
      break;
    case 9:
      result = 0x7774654273693C3CLL;
      break;
    default:
      result = 0x776F6E6B6E753C3CLL;
      break;
  }

  return result;
}

_BYTE *sub_18F1F7740(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F1F77F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1F7830()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1F7884()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1F78D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents21ResolverSpecification_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F1F7934(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_18F1F7974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F1F79F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_18F1F7A48(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_26_12();
      sub_18F52279C();

      OUTLINED_FUNCTION_13_20();
      v5 = v11 + 3;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_26_12();
      sub_18F52279C();

      OUTLINED_FUNCTION_13_20();
      v19 = v6;
      v7 = OUTLINED_FUNCTION_66();
      goto LABEL_8;
    case 3:
      result = 0x6C616E7265746E49;
      switch(a1)
      {
        case 1:
          v10 = 72;
          goto LABEL_14;
        case 2:
          OUTLINED_FUNCTION_2_34();
          result = v14 + 63;
          break;
        case 3:
          OUTLINED_FUNCTION_2_34();
          result = v15 + 77;
          break;
        case 4:
          OUTLINED_FUNCTION_2_34();
          result = v13 + 67;
          break;
        case 5:
          OUTLINED_FUNCTION_2_34();
          result = v16 + 69;
          break;
        case 6:
          OUTLINED_FUNCTION_2_34();
          result = v17 + 60;
          break;
        case 7:
          v10 = 76;
LABEL_14:
          result = v10 | 0xD000000000000013;
          break;
        case 8:
          OUTLINED_FUNCTION_2_34();
          result = v18 + 70;
          break;
        default:
          return result;
      }

      return result;
    default:
      OUTLINED_FUNCTION_26_12();
      sub_18F52279C();

      OUTLINED_FUNCTION_13_20();
      v5 = v4 + 1;
LABEL_7:
      v19 = v5;
      v12 = OUTLINED_FUNCTION_66();
      MEMORY[0x193ADB000](v12);
      v7 = 46;
      v8 = 0xE100000000000000;
LABEL_8:
      MEMORY[0x193ADB000](v7, v8);
      return v19;
  }
}

uint64_t sub_18F1F7C38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    case 2:
      if (a6 != 2)
      {
        return 0;
      }

      goto LABEL_11;
    case 3:
      switch(a1)
      {
        case 1:
          v8 = a6 == 3 && a4 == 1;
          break;
        case 2:
          v8 = a6 == 3 && a4 == 2;
          break;
        case 3:
          v8 = a6 == 3 && a4 == 3;
          break;
        case 4:
          v8 = a6 == 3 && a4 == 4;
          break;
        case 5:
          v8 = a6 == 3 && a4 == 5;
          break;
        case 6:
          v8 = a6 == 3 && a4 == 6;
          break;
        case 7:
          v8 = a6 == 3 && a4 == 7;
          break;
        case 8:
          v8 = a6 == 3 && a4 == 8;
          break;
        default:
          return a6 == 3 && !(a5 | a4);
      }

      return v8 && a5 == 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_11:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_18F522D5C();
      }
  }
}

uint64_t sub_18F1F7DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  v8[2] = a4;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v8[6] = v17;
  v8[7] = a5;
  v8[8] = v18;
  v8[9] = v19;
  v8[10] = v14;
  type metadata accessor for EntityPropertyQueryComparator();
  *v14 = v8;
  v14[1] = sub_18F1F7EA4;

  return sub_18F1F5854();
}

uint64_t sub_18F1F7EA4()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_85();
  v10 = *v1;
  OUTLINED_FUNCTION_39();
  *v11 = v10;

  OUTLINED_FUNCTION_22_15();
  if (!v0)
  {
    v12 = v9;
    v13 = v7;
    v14 = v5;
    v15 = v3;
  }

  return v16(v12, v13, v14, v15);
}

uint64_t sub_18F1F7FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[43] = a5;
  v6[44] = a6;
  v6[41] = a1;
  v6[42] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1F7FE8()
{
  OUTLINED_FUNCTION_29();
  sub_18F0FECD4(*(v0 + 328), v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 112), v0 + 232);
    OUTLINED_FUNCTION_4_22();
    v22 = v1;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 360) = v2;
    *v2 = v3;
    v2[1] = sub_18F1F8324;
    v4 = *(v0 + 336);
    v5 = v0 + 232;
LABEL_6:

    return v22(v5, v4);
  }

  sub_18F0F21A8(0, &unk_1ED6FE390);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 304);
    *(v0 + 376) = v6;
    LNValue.asPropertyType.getter();
    if (*(v0 + 216))
    {
      sub_18F0FD0B4((v0 + 192), v0 + 152);
      OUTLINED_FUNCTION_4_22();
      v22 = v7;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 384) = v8;
      *v8 = v9;
      v8[1] = sub_18F1F849C;
      v4 = *(v0 + 336);
      v5 = v0 + 152;
      goto LABEL_6;
    }

    sub_18F0EF1A8(v0 + 192, &qword_1EACD0620);
    v15 = OUTLINED_FUNCTION_66();
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    *(v0 + 320) = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2390);
    v17 = sub_18F52194C();
    v19 = v18;
    sub_18F1F8920();
    OUTLINED_FUNCTION_28();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 328), *(*(v0 + 328) + 24));
    *(v0 + 312) = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2390);
    v11 = sub_18F52194C();
    v13 = v12;
    sub_18F1F8920();
    OUTLINED_FUNCTION_28();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = 1;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
  OUTLINED_FUNCTION_71();

  return v21();
}

uint64_t sub_18F1F8324()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v2[6] = v7;
  v2[7] = v0;
  v8 = *v1;
  OUTLINED_FUNCTION_39();
  *v9 = v8;
  *(v10 + 368) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F1F842C()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
  v1 = OUTLINED_FUNCTION_19_12();

  return v2(v1);
}

uint64_t sub_18F1F849C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v5;
  v2[11] = v6;
  v2[12] = v7;
  v2[13] = v0;
  v8 = *v1;
  OUTLINED_FUNCTION_39();
  *v9 = v8;
  *(v10 + 392) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F1F85A4()
{
  OUTLINED_FUNCTION_21();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
  v1 = OUTLINED_FUNCTION_19_12();

  return v2(v1);
}

uint64_t sub_18F1F861C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1F8680()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1F8740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  v8[2] = a3;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[7] = a4;
  v8[8] = v18;
  v8[9] = v19;
  v8[10] = v15;
  type metadata accessor for EntityPropertyQueryComparator.ResolvedValue();
  *v15 = v8;
  v15[1] = sub_18F1F8838;

  return sub_18F1F49F0();
}

uint64_t sub_18F1F8838()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  OUTLINED_FUNCTION_85();
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  OUTLINED_FUNCTION_20_0();

  return v5(v2);
}

unint64_t sub_18F1F8920()
{
  result = qword_1EACD2398;
  if (!qword_1EACD2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2398);
  }

  return result;
}

uint64_t sub_18F1F8980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1F8A6C;
  OUTLINED_FUNCTION_6_27();

  return sub_18F1F7DA4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F1F8A6C()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_85();
  v9 = *v0;
  OUTLINED_FUNCTION_39();
  *v10 = v9;

  OUTLINED_FUNCTION_22_15();

  return v11(v8, v6, v4, v2);
}

uint64_t sub_18F1F8B94()
{
  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_6_27();
  return sub_18F1F86EC();
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 56);
  v2 = type metadata accessor for EntityPropertyQueryComparator.ResolvedValue();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80));
  if (*(v3 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 8);
  }

  if (*(v3 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 48);
  }

  sub_18F14A500();
  sub_18F14A500();
  v4 = *(*(v1 - 8) + 8);
  v4(v3 + *(v2 + 84), v1);
  v5 = *(v2 + 88);
  if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v1))
  {
    v4(v3 + v5, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18F1F8DCC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  v1[2] = v0[2];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v2;
  v1[8] = v8;
  v1[9] = v7;
  OUTLINED_FUNCTION_49_5();
  v9 = swift_task_alloc();
  v1[10] = v9;
  *v9 = v1;
  v9[1] = sub_18F1F8838;
  OUTLINED_FUNCTION_6_27();

  return sub_18F1F8740(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_18F1F8EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1F8F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentError.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1F8FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1F9024()
{
  Comparator = type metadata accessor for EntityPropertyQueryComparator();
  if (v1 <= 0x3F)
  {
    Comparator = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      Comparator = sub_18F52254C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return Comparator;
}

uint64_t sub_18F1F90F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  if (v6)
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v12 = v10 + ((v9 + v8 + ((v8 + 153) & ~v8)) & ~v8);
  v13 = 8 * (v10 + ((v9 + v8 + ((v8 - 103) & ~v8)) & ~v8));
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_26:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v8 + 153) & ~v8, v6, v4);
      }

      v18 = *(a1 + 11);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v7 + (v12 | v17) + 1;
}

void sub_18F1F9288(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = (v11 + v10 + ((v10 + 153) & ~v10)) & ~v10;
  if (!v8)
  {
    ++v11;
  }

  v13 = v11 + v12;
  v14 = 8 * (v11 + v12);
  v15 = a3 >= v9;
  v16 = a3 - v9;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v20 = ((v16 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if ((v8 & 0x80000000) != 0)
          {
            v23 = &a1[v10 + 153] & ~v10;

            __swift_storeEnumTagSinglePayload(v23, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 136) = 0u;
            *(a1 + 120) = 0u;
            *(a1 + 104) = 0u;
            *(a1 + 88) = 0u;
            *(a1 + 72) = 0u;
            *(a1 + 56) = 0u;
            *(a1 + 40) = 0u;
            *(a1 + 24) = 0u;
            *(a1 + 8) = 0u;
            a1[152] = 0;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 11) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v9 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> v14) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v13 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v13] = v19;
        break;
      case 2:
        *&a1[v13] = v19;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *&a1[v13] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10AppIntents34EntityPropertyQueryResolutionErrorO(uint64_t a1)
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

uint64_t sub_18F1F9530(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_18F1F9570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_18F1F95B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_18F1F95DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_18F1F9678(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_18F3AAE6C();
    v5 = v35;
    v6 = (a1 + 40);
    do
    {
      v7 = v5;
      v8 = *(v6 - 1);
      v9 = *v6;
      v10 = qword_1ED6FF6D8;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (v10 != -1)
      {
        swift_once();
      }

      v11 = sub_18F3E7078();

      v5 = v7;
      v36 = v7;
      v12 = *(v7 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v5 + 24) >> 1)
      {
        sub_18F3AAE6C();
        v13 = v12 + 1;
        v5 = v36;
      }

      *(v5 + 16) = v13;
      v14 = v5 + 24 * v12;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v17 = (v5 + 48);
  v33 = v5;
  v34 = v13;
  while (v13 != v15)
  {
    if (v15 >= *(v5 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      _Block_release(a3);
      sub_18F522E2C();
      __break(1u);
      return;
    }

    v19 = *(v17 - 2);
    v18 = *(v17 - 1);
    v20 = *v17;
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_18F0F713C(v19, v18);
    if (__OFADD__(v16[2], (v22 & 1) == 0))
    {
      goto LABEL_26;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD24C0);
    if (sub_18F5229DC())
    {
      v25 = sub_18F0F713C(v19, v18);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_28;
      }

      v23 = v25;
    }

    if (v24)
    {

      *(v16[7] + v23) = v20;
    }

    else
    {
      v16[(v23 >> 6) + 8] |= 1 << v23;
      v27 = (v16[6] + 16 * v23);
      *v27 = v19;
      v27[1] = v18;
      *(v16[7] + v23) = v20;

      v28 = v16[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_27;
      }

      v16[2] = v30;
    }

    v17 += 24;
    ++v15;
    v5 = v33;
    v13 = v34;
  }

  v31 = sub_18F5216AC();
  (a3)[2](a3, v31, 0);

  _Block_release(a3);
}

uint64_t AppContext.fetchIntentState(_:completionHandler:)(uint64_t a1, void (*a2)(void *, void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_18F3AAE6C();
    v4 = v34;
    v5 = (a1 + 40);
    do
    {
      v6 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = qword_1ED6FF6D8;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = sub_18F3E7078();

      v4 = v6;
      v35 = v6;
      v11 = *(v6 + 16);
      v12 = v11 + 1;
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_18F3AAE6C();
        v12 = v11 + 1;
        v4 = v35;
      }

      *(v4 + 16) = v12;
      v13 = v4 + 24 * v11;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v10;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC8];
  v16 = (v4 + 48);
  v32 = v4;
  v33 = v12;
  while (v12 != v14)
  {
    if (v14 >= *(v4 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      result = sub_18F522E2C();
      __break(1u);
      return result;
    }

    v18 = *(v16 - 2);
    v17 = *(v16 - 1);
    v19 = *v16;
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_18F0F713C(v18, v17);
    if (__OFADD__(v15[2], (v21 & 1) == 0))
    {
      goto LABEL_26;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD24C0);
    if (sub_18F5229DC())
    {
      v24 = sub_18F0F713C(v18, v17);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_28;
      }

      v22 = v24;
    }

    if (v23)
    {

      *(v15[7] + v22) = v19;
    }

    else
    {
      v15[(v22 >> 6) + 8] |= 1 << v22;
      v26 = (v15[6] + 16 * v22);
      *v26 = v18;
      v26[1] = v17;
      *(v15[7] + v22) = v19;

      v27 = v15[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_27;
      }

      v15[2] = v29;
    }

    v16 += 24;
    ++v14;
    v4 = v32;
    v12 = v33;
  }

  a2(v15, 0);
}

uint64_t AppEntityQueryReferenceV1.Containing.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F1F9DB0()
{
  sub_18F522EFC();
  AppEntityQueryReferenceV1.Containing.hash(into:)();
  return sub_18F522F4C();
}

uint64_t AppEntityQueryReferenceV1.map<A>(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = *v5;
  *(v6 + 56) = a5;
  *(v6 + 64) = v7;
  *(v6 + 96) = *(v5 + 16);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1F9E20()
{
  if (*(v0 + 96))
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 24), 1, 1, *(v0 + 56));
    OUTLINED_FUNCTION_6();

    return v1();
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 48);
    *(v0 + 16) = *(v0 + 64);
    v5 = swift_task_alloc();
    v5[2] = *(v4 + 16);
    v5[3] = v3;
    v5[4] = *(v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
    swift_getAssociatedTypeWitness();
    sub_18F1F0344();
    v6 = OUTLINED_FUNCTION_13_21();
    *(v0 + 72) = v6;

    OUTLINED_FUNCTION_3_22();
    v11 = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 80) = v8;
    *v8 = v9;
    v8[1] = sub_18F1F9FE8;
    v10 = *(v0 + 24);

    return v11(v10, v6);
  }
}

uint64_t sub_18F1F9FE8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1FA0E8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F1FA148()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1FA1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(v1, v2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t AppEntityQueryReferenceV1.map<A>(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a3;
  *(v6 + 40) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = *v5;
  *(v6 + 72) = *(v5 + 16);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1FA2A8()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 72) == 1)
  {
    v1 = *(v0 + 56);
    OUTLINED_FUNCTION_4_23();
    v9 = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 64) = v3;
    *v3 = v4;
    v3[1] = sub_18F1FA3C8;
    v5 = *(v0 + 48);
    v6 = *(v0 + 16);

    return v9(v6, v5, v1);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 16), 1, 1, *(v0 + 40));
    OUTLINED_FUNCTION_6();

    return v8();
  }
}

uint64_t sub_18F1FA3C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_18F1FA4E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F1FA540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *v8;
  v11 = *(v8 + 8);
  *(v9 + 64) = a8;
  *(v9 + 72) = v10;
  *(v9 + 80) = v11;
  v12 = *(v8 + 16);
  *(v9 + 136) = v12;
  sub_18F1FBA30(v10, v11, v12);

  return MEMORY[0x1EEE6DFA0](sub_18F1FA5C4, 0, 0);
}

uint64_t sub_18F1FA5C4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    v2 = *(v0 + 72);
    v3 = sub_18F2EBAC8();
    *(v0 + 88) = v3;
    OUTLINED_FUNCTION_10_20();
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_18F1FA6E8;
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_18F2EBBBC(v7, v3, v2, v6, v5);
  }

  else
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 16);
    sub_18F1FBA5C(*(v0 + 72), *(v0 + 80), v1);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v9);
    OUTLINED_FUNCTION_6();

    return v11();
  }
}

uint64_t sub_18F1FA6E8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F1FA7F0()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = *(v0 + 72);
    v2 = sub_18F383EC8();
    OUTLINED_FUNCTION_10_20();
  }

  else
  {
    v2 = 0;
  }

  v8 = (*(v0 + 32) + **(v0 + 32));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 120) = v3;
  *v3 = v4;
  v3[1] = sub_18F1FA934;
  v5 = *(v0 + 104);
  v6 = *(v0 + 16);

  return v8(v6, v5, v2);
}

uint64_t sub_18F1FA934()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1FAA34()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 56);
  sub_18F1FBA5C(*(v0 + 72), *(v0 + 80), 2u);
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_18F1FAAA8()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1FAB14()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t AppEntityQueryReferenceV1<>.map<A>(defaultQuery:)()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 88) = *(v5 + 24);
  *(v1 + 96) = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 104) = AssociatedTypeWitness;
  *(v1 + 112) = *(AssociatedTypeWitness - 8);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = *v0;
  *(v1 + 33) = *(v0 + 16);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1FAC7C()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 16) = *(v0 + 128);
  OUTLINED_FUNCTION_14_21();
  v1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v2;
  *v2 = v3;
  v2[1] = sub_18F1FAD44;
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);

  return sub_18F1FA540(v10, v4, v11, v8, v9, v5, v6, v7);
}

uint64_t sub_18F1FAD44()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = *v1;
  OUTLINED_FUNCTION_39();
  *v10 = v9;
  *(v3 + 152) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v14();
  }
}

uint64_t sub_18F1FAED0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t AppEntityQueryReferenceV1<>.map<A>(identifiers:string:defaultQuery:)()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 112) = v16;
  *(v1 + 120) = v17;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  *(v1 + 128) = *(v3 + 24);
  *(v1 + 136) = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 144) = AssociatedTypeWitness;
  *(v1 + 152) = *(AssociatedTypeWitness - 8);
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = *v0;
  *(v1 + 33) = *(v0 + 16);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F1FB02C()
{
  if (*(v0 + 33))
  {
    if (*(v0 + 33) == 1)
    {
      v1 = *(v0 + 176);
      OUTLINED_FUNCTION_4_23();
      v29 = v2;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 208) = v3;
      *v3 = v4;
      v3[1] = sub_18F1FB414;
      v5 = *(v0 + 168);
      v6 = *(v0 + 48);

      return v29(v6, v5, v1);
    }

    else
    {
      *(v0 + 16) = *(v0 + 168);
      OUTLINED_FUNCTION_14_21();
      v18();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 216) = v19;
      *v19 = v20;
      v19[1] = sub_18F1FB5AC;
      v21 = *(v0 + 160);
      v22 = *(v0 + 144);
      v23 = *(v0 + 112);
      v24 = *(v0 + 120);
      v25 = *(v0 + 96);
      v26 = *(v0 + 104);
      v27 = *(v0 + 88);
      v28 = *(v0 + 48);

      return sub_18F1FA540(v28, v21, v27, v25, v26, v22, v23, v24);
    }
  }

  else
  {
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    *(v0 + 40) = *(v0 + 168);
    v12 = swift_task_alloc();
    v12[2] = v8;
    v12[3] = v11;
    v12[4] = v9;
    v12[5] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
    swift_getAssociatedTypeWitness();
    sub_18F1F0344();
    v13 = OUTLINED_FUNCTION_13_21();
    *(v0 + 184) = v13;

    OUTLINED_FUNCTION_3_22();
    v30 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 192) = v15;
    *v15 = v16;
    v15[1] = sub_18F1FB314;
    v17 = *(v0 + 48);

    return v30(v17, v13);
  }
}

uint64_t sub_18F1FB314()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1FB414()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_18F1FB544()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F1FB5AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[28] = v0;

  if (v0)
  {
    (*(v3[19] + 8))(v3[20], v3[18]);
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    (*(v3[19] + 8))(v3[20], v3[18]);

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F1FB6F8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1FB75C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1FB890()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_18F1FB8F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F1FB9D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_18F1FBA30(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

void sub_18F1FBA5C(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

void IntentParameter<>.init(title:description:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v30 = v2;
  v31 = v3;
  v5 = v4;
  v32 = v6;
  v8 = v7;
  v29 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_39_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  (*(v20 + 16))(v0, v8, v18);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  sub_18F1DF68C(v5, v30);
  OUTLINED_FUNCTION_36_11();

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v31, v1, &qword_1EACCF7A0);
  v25 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v13, v26, v27, v25);
  OUTLINED_FUNCTION_33_11();
  v28 = OUTLINED_FUNCTION_36_11();
  sub_18F0EF148(v28, &qword_1EACCF7A0);
  sub_18F0EF148(v32, &qword_1EACCF7A8);
  (*(v20 + 8))(v29, v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:resolvers:)()
{
  OUTLINED_FUNCTION_18();
  v33 = v2;
  v34 = v1;
  v31 = v3;
  v5 = v4;
  v35 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_47_5(v7);
  OUTLINED_FUNCTION_12_21();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v32 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v16 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_41_7();
  v23(v22, v8, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, AssociatedTypeWitness);
  sub_18F1DF68C(v5, v31);

  OUTLINED_FUNCTION_17_19();
  v33();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v34, v0, &qword_1EACCF7A0);
  v27 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v32, v28, v29, v27);
  OUTLINED_FUNCTION_52_4();

  sub_18F0EF148(v34, &qword_1EACCF7A0);
  sub_18F0EF148(v35, &qword_1EACCF7A8);
  (*(v18 + 8))(v30, v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v23 = v22;
  v59 = v24;
  v26 = v25;
  v56 = v27;
  v29 = v28;
  v60 = v30;
  v32 = v31;
  v58 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v37);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v57 = v39;
  OUTLINED_FUNCTION_11_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  (*(v41 + 16))(v44 - v43, v32);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, AssociatedTypeWitness);
  v48 = sub_18F1DF68C(v29, v56);
  OUTLINED_FUNCTION_44_1(v48);

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v26, v21, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_6_19(v49);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v61[3] = v23;
  v61[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  v55 = *(v23 - 8);
  (*(v55 + 16))(boxed_opaque_existential_1, v59, v23);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v55 + 8))(v59, v23);
  sub_18F0EF148(v26, &qword_1EACCF7A0);
  sub_18F0EF148(v60, &qword_1EACCF7A8);
  (*(v41 + 8))(v58, v57);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v61 = v28;
  v62 = v27;
  v64 = v29;
  v31 = v30;
  v65 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_37_9(v33);
  v63 = a25;
  v35 = a23;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v39);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  v47 = OUTLINED_FUNCTION_30_11();
  v48(v47, v34, v43);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, AssociatedTypeWitness);
  v52 = OUTLINED_FUNCTION_54_4(v31);
  OUTLINED_FUNCTION_47_5(v52);

  OUTLINED_FUNCTION_22_0(&a16);
  v61();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v62, v59, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v66[3] = v35;
  v66[4] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v58 = *(v35 - 8);
  (*(v58 + 16))(boxed_opaque_existential_1, v64, v35);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v58 + 8))(v64, v35);
  sub_18F0EF148(v62, &qword_1EACCF7A0);
  sub_18F0EF148(v65, &qword_1EACCF7A8);
  (*(v45 + 8))(v60, v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v33 = v3;
  v34 = v2;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_37_9(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v32 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_22_3();
  swift_getAssociatedTypeWitness();
  v30 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_11_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_44_1(v18);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_33_2();
  v23(v22, v10);
  OUTLINED_FUNCTION_41_7();
  v24(v0, v8, v30);
  sub_18F1DF68C(v6, v31);

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v33, v1, &qword_1EACCF7A0);
  v25 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v32, v26, v27, v25);
  sub_18F116B3C();
  sub_18F0EF148(v33, &qword_1EACCF7A0);
  (*(v16 + 8))(v8, v30);
  sub_18F0EF148(v34, &qword_1EACCF7A8);
  v28 = OUTLINED_FUNCTION_22_4();
  v29(v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v57 = v26;
  v58 = v25;
  v55 = v27;
  v29 = v28;
  v52 = v28;
  v59 = v30;
  v32 = v31;
  v53 = v31;
  OUTLINED_FUNCTION_23_3(a22);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  v56 = v35;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v37);
  swift_getAssociatedTypeWitness();
  v51 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_11_0();
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  v45 = OUTLINED_FUNCTION_30_11();
  v46(v45, v32, v41);
  (*(v39 + 16))(v22, v29, v51);
  v47 = OUTLINED_FUNCTION_6_19(&a15);
  sub_18F1DF68C(v47, v55);

  OUTLINED_FUNCTION_17_19();
  v57();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v58, v54, &qword_1EACCF7A0);
  v48 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v56, v49, v50, v48);
  sub_18F116B3C();

  sub_18F0EF148(v58, &qword_1EACCF7A0);
  (*(v39 + 8))(v52, v51);
  sub_18F0EF148(v59, &qword_1EACCF7A8);
  (*(v43 + 8))(v53, v41);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v64 = v24;
  v62 = v25;
  v60 = v26;
  v28 = v27;
  v65 = v29;
  v66 = v30;
  v32 = v31;
  OUTLINED_FUNCTION_37_9(v31);
  v63 = a22;
  v61 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v58 - v36;
  swift_getAssociatedTypeWitness();
  v38 = OUTLINED_FUNCTION_28_1();
  v59 = v38;
  OUTLINED_FUNCTION_11_0();
  v40 = v39;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_44_1(v42);
  OUTLINED_FUNCTION_11_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  (*(v44 + 16))(v23, v32);
  (*(v40 + 16))(v22, v66, v38);
  v46 = OUTLINED_FUNCTION_54_4(v28);
  OUTLINED_FUNCTION_47_5(v46);

  OUTLINED_FUNCTION_2_0();
  v47 = v62;
  sub_18F116908(v62, v37, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = v61;
  v67[3] = v61;
  v67[4] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v54 = *(v52 - 8);
  v55 = v64;
  (*(v54 + 16))(boxed_opaque_existential_1, v64, v52);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v54 + 8))(v55, v52);
  sub_18F0EF148(v47, &qword_1EACCF7A0);
  (*(v40 + 8))(v66, v59);
  sub_18F0EF148(v65, &qword_1EACCF7A8);
  v56 = OUTLINED_FUNCTION_22_4();
  v57(v56);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  a19 = v28;
  a20 = v29;
  v66 = v30;
  v64 = v31;
  v33 = v32;
  v61 = v32;
  v67 = v34;
  v36 = v35;
  v63 = v35;
  OUTLINED_FUNCTION_23_3(a21);
  v65 = a26;
  v37 = a24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v41);
  swift_getAssociatedTypeWitness();
  v60 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_11_0();
  v43 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_34_1();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_37_9(v45);
  OUTLINED_FUNCTION_11_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  (*(v47 + 16))(v26, v36);
  OUTLINED_FUNCTION_41_7();
  v49(v27, v33, v60);
  v50 = OUTLINED_FUNCTION_6_19(&a13);
  v51 = OUTLINED_FUNCTION_54_4(v50);
  OUTLINED_FUNCTION_47_5(v51);

  v52 = OUTLINED_FUNCTION_22_0(&a14);
  v62(v52);
  OUTLINED_FUNCTION_8();
  sub_18F116908(v64, v59, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v68[3] = v37;
  v68[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v58 = *(v37 - 8);
  (*(v58 + 16))(boxed_opaque_existential_1, v66, v37);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v58 + 8))(v66, v37);
  sub_18F0EF148(v64, &qword_1EACCF7A0);
  (*(v43 + 8))(v61, v60);
  sub_18F0EF148(v67, &qword_1EACCF7A8);
  (*(v47 + 8))(v63);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v27 = v3;
  v28 = v4;
  v6 = v5;
  v7 = v3;
  v29 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedTypeWitness();
  v15 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_32_2();
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_25_0();
  v21 = OUTLINED_FUNCTION_30_11();
  v22(v21, v7, v15);
  sub_18F1DF68C(v6, v28);
  OUTLINED_FUNCTION_36_11();

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v2, v0, &qword_1EACCF7A0);
  v23 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v13, v24, v25, v23);
  OUTLINED_FUNCTION_33_11();
  v26 = OUTLINED_FUNCTION_36_11();
  sub_18F0EF148(v26, &qword_1EACCF7A0);
  (*(v17 + 8))(v27, v15);
  sub_18F0EF148(v29, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:resolvers:)()
{
  OUTLINED_FUNCTION_18();
  v27 = v3;
  v28 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v25 = v8;
  v29 = v10;
  OUTLINED_FUNCTION_12_21();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  v26 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_22_3();
  swift_getAssociatedTypeWitness();
  v15 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_35_0();
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_41_7();
  v21(v0, v9, v15);
  sub_18F1DF68C(v7, v5);

  OUTLINED_FUNCTION_17_19();
  v27();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v28, v1, &qword_1EACCF7A0);
  v22 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v26, v23, v24, v22);
  OUTLINED_FUNCTION_52_4();

  sub_18F0EF148(v28, &qword_1EACCF7A0);
  (*(v17 + 8))(v25, v15);
  sub_18F0EF148(v29, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v50 = v24;
  v51 = v23;
  v26 = v25;
  v49 = v27;
  v29 = v28;
  v31 = v30;
  v52 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22_3();
  swift_getAssociatedTypeWitness();
  v36 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_44_1(v36);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_33();
  v38 = sub_18F520B3C();
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_33_2();
  v40(v21, v31, v36);
  sub_18F1DF68C(v29, v49);

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v26, v22, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v53[3] = v50;
  v53[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  v46 = *(v50 - 8);
  (*(v46 + 16))(boxed_opaque_existential_1, v51, v50);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v46 + 8))(v51, v50);
  sub_18F0EF148(v26, &qword_1EACCF7A0);
  v47 = OUTLINED_FUNCTION_22_4();
  v48(v47);
  sub_18F0EF148(v52, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(description:default:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v61 = v29;
  v62 = v28;
  v64 = v30;
  v60 = v31;
  v33 = v32;
  v35 = v34;
  v59 = v34;
  v65 = v36;
  v63 = a25;
  v37 = a23;
  OUTLINED_FUNCTION_23_3(a24);
  v57[1] = a21;
  OUTLINED_FUNCTION_49_1(a22);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v57 - v41;
  swift_getAssociatedTypeWitness();
  v43 = OUTLINED_FUNCTION_28_1();
  v58 = v43;
  OUTLINED_FUNCTION_11_0();
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  v47 = OUTLINED_FUNCTION_20_4();
  v48 = OUTLINED_FUNCTION_10(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  (*(v45 + 16))(v25, v35, v43);
  v60 = sub_18F1DF68C(v33, v60);

  OUTLINED_FUNCTION_22_0(&a17);
  v61();
  OUTLINED_FUNCTION_8();
  v49 = v62;
  sub_18F116908(v62, v42, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v66[3] = v37;
  v66[4] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v55 = *(v37 - 8);
  v56 = v64;
  (*(v55 + 16))(boxed_opaque_existential_1, v64, v37);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v55 + 8))(v56, v37);
  sub_18F0EF148(v49, &qword_1EACCF7A0);
  (*(v45 + 8))(v59, v58);
  sub_18F0EF148(v65, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v33 = v1;
  v31 = v2;
  v34 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v9);
  swift_getAssociatedTypeWitness();
  v30 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_0();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;

  sub_18F116908(v5, v0, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_29_4(v0);
  if (v24)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_29_4(v0);
    if (!v24)
    {
      sub_18F0EF148(v0, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v0, v17);
  }

  OUTLINED_FUNCTION_33_2();
  v25(v14, v34, v30);
  OUTLINED_FUNCTION_54_4(v31);

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v33, v32, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_1_4(*(v26 - 256), v27, v28, v29);
  sub_18F116B3C();
  sub_18F0EF148(v33, &qword_1EACCF7A0);
  (*(v11 + 8))(v34, v30);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v5);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v58 = v24;
  v54 = v25;
  v55 = v26;
  v59 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_49_1(a21);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v31 = OUTLINED_FUNCTION_10(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v33);
  swift_getAssociatedTypeWitness();
  v34 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_28_0();
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  v48 = v47 - v46;

  sub_18F116908(v29, v21, &qword_1EACCF7A8);
  if (__swift_getEnumTagSinglePayload(v21, 1, v42) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v21, 1, v42) != 1)
    {
      sub_18F0EF148(v21, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v44 + 32))(v48, v21, v42);
  }

  OUTLINED_FUNCTION_33_2();
  v49(v39, v59, v34);
  sub_18F1DF68C(v55, v54);

  OUTLINED_FUNCTION_22_0(&a13);
  v56();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v58, v57, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_1_4(*(v50 - 256), v51, v52, v53);
  sub_18F116B3C();

  sub_18F0EF148(v58, &qword_1EACCF7A0);
  (*(v36 + 8))(v59, v34);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v29);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v62 = v27;
  v58 = v28;
  OUTLINED_FUNCTION_40_11(v29, v30, v31, v32, &a14);
  OUTLINED_FUNCTION_49_1(a23);
  OUTLINED_FUNCTION_12_21();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v36);
  swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_0();
  v42 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v43);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  v45 = OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_42_0(v49);
  sub_18F116908(v23, v24, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_29_4(v24);
  if (v50)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_29_4(v24);
    if (!v50)
    {
      sub_18F0EF148(v24, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v47 + 32))(v64, v24, v45);
  }

  (*(v39 + 16))(v42, v65, v37);
  sub_18F1DF68C(v59, v58);

  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v62, v57, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_6_19(&a16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v66[3] = v61;
  v66[4] = v60;
  __swift_allocate_boxed_opaque_existential_1(v66);
  v55 = *(v61 - 8);
  OUTLINED_FUNCTION_48_2();
  v56();
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v55 + 8))(v45);
  sub_18F0EF148(v62, &qword_1EACCF7A0);
  (*(v39 + 8))(v65, v37);
  OUTLINED_FUNCTION_27_0(v63);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:capabilities:currencyCodes:inclusiveRange:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_18();
  a19 = v28;
  a20 = v29;
  v74 = v30;
  v66 = v31;
  OUTLINED_FUNCTION_40_11(v32, v33, v34, v35, &a11);
  OUTLINED_FUNCTION_49_1(a27);
  v67 = a26;
  v73 = a25;
  v65[1] = a24;
  v70 = a23;
  v69 = a22;
  OUTLINED_FUNCTION_23_3(a21);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v39);
  swift_getAssociatedTypeWitness();
  v40 = OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_28_0();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v46);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v65 - v48;
  v50 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_42_0(v54);
  v76 = v27;
  sub_18F116908(v27, v49, &qword_1EACCF7A8);
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    OUTLINED_FUNCTION_25_0();
    if (__swift_getEnumTagSinglePayload(v49, 1, v50) != 1)
    {
      sub_18F0EF148(v49, &qword_1EACCF7A8);
    }
  }

  else
  {
    (*(v52 + 32))(v77, v49, v50);
  }

  v55 = v42;
  v56 = *(v42 + 16);
  v65[0] = v40;
  v56(v45, v78, v40);
  v66 = sub_18F1DF68C(v68, v66);

  OUTLINED_FUNCTION_22_0(&a10);
  v69();
  OUTLINED_FUNCTION_8();
  v57 = v74;
  sub_18F116908(v74, v71, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v73;
  v79[3] = v73;
  v79[4] = v72;
  __swift_allocate_boxed_opaque_existential_1(v79);
  v63 = *(v62 - 8);
  OUTLINED_FUNCTION_48_2();
  v64();
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v63 + 8))(v40, v62);
  sub_18F0EF148(v57, &qword_1EACCF7A0);
  (*(v55 + 8))(v78, v65[0]);
  OUTLINED_FUNCTION_27_0(v75);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F200AF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_18F5226AC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_18F3AADAC();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v8;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x193ADBE10](v3, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        sub_18F0F21A8(0, &unk_1ED6FE390);
        swift_dynamicCast();
        v8 = v4;
        v6 = *(v4 + 16);
        if (v6 >= *(v4 + 24) >> 1)
        {
          sub_18F3AADAC();
          v4 = v8;
        }

        ++v3;
        *(v4 + 16) = v6 + 1;
        sub_18F118710(&v7, (v4 + 32 * v6 + 32));
      }

      while (v2 != v3);
    }
  }
}

uint64_t sub_18F200C58(uint64_t a1)
{
  v2 = type metadata accessor for IntentPerson(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_18F3AACEC();
    v7 = v16;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_18F1CC8DC(v8, v5);
      v16 = v7;
      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_18F3AACEC();
        v7 = v16;
      }

      v14 = v2;
      v15 = sub_18F2032F8(&qword_1EACCE838, type metadata accessor for IntentPerson);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
      sub_18F1CC8DC(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v10 + 1;
      sub_18F0FD0B4(&v13, v7 + 40 * v10 + 32);
      sub_18F2031F4(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_18F200E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_18F3AACEC();
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      sub_18F203144(v4, v10);
      v11 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_18F3AACEC();
        v2 = v11;
      }

      v8 = &type metadata for BoxedSystemIntentValue;
      v9 = sub_18F1E9B68();
      *&v7 = swift_allocObject();
      sub_18F203144(v10, v7 + 16);
      *(v2 + 16) = v5 + 1;
      sub_18F0FD0B4(&v7, v2 + 40 * v5 + 32);
      sub_18F2031A0(v10);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t AppContext.createAsyncIterator(for:options:connectionIdentifier:)()
{
  OUTLINED_FUNCTION_69();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = sub_18F520E6C();
  v0[7] = v4;
  OUTLINED_FUNCTION_51(v4);
  v0[8] = v5;
  v0[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F200FF4()
{
  if (!*(v0 + 40))
  {
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = *(v0 + 48);
  if (!v3)
  {
    goto LABEL_12;
  }

  *(v0 + 16) = v3;
  swift_unknownObjectRetain();
  if ((OUTLINED_FUNCTION_5_25() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(v0 + 24);
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v5 = sub_18F10C01C(v4);
  *(v0 + 80) = v5;

  if (!v5)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v14 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_11_16();
    goto LABEL_14;
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = [*(v0 + 32) identifier];
  sub_18F520E4C();

  v10 = sub_18F201368(v6);
  *(v0 + 88) = v10;
  (*(v7 + 8))(v6, v8);
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = [v2 exportConfiguration];
    v12 = [v2 pageSize];
    [v12 integerValue];
    swift_unknownObjectRelease();

    v18 = v11;
    v13 = sub_18F25E6D8();
    *(v0 + 96) = v13;

    return MEMORY[0x1EEE6DFA0](sub_18F201278, v13, 0);
  }

  v16 = LNConnectionErrorWithCode();
  OUTLINED_FUNCTION_11_16();

  swift_unknownObjectRelease();
LABEL_14:

  OUTLINED_FUNCTION_71();

  return v15();
}

uint64_t sub_18F201278()
{
  OUTLINED_FUNCTION_69();
  *(v0 + 104) = sub_18F25E744();
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_18F2012D8()
{
  OUTLINED_FUNCTION_31();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X2, X16 }
}

id sub_18F201368(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18F520E6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = *(v1 + 40);
  v30 = v1;
  v31 = a1;
  v27 = sub_18F203340;
  v28 = &v29;
  os_unfair_lock_lock(v11 + 4);
  sub_18F203374(v12, v32);
  os_unfair_lock_unlock(v11 + 4);
  v13 = v32[0];
  if (!v32[0])
  {
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v14 = sub_18F52165C();
    __swift_project_value_buffer(v14, qword_1ED7077A8);
    v15 = *(v5 + 16);
    v15(v10, a1, v4);

    v16 = sub_18F52163C();
    v17 = sub_18F52221C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v18 = 134218242;
      *(v18 + 4) = *(v2 + 16);

      *(v18 + 12) = 2080;
      v15(v8, v10, v4);
      v19 = sub_18F52194C();
      v21 = v20;
      (*(v5 + 8))(v10, v4);
      v22 = sub_18F11897C(v19, v21, v32);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_18F0E9000, v16, v17, "ConnectionConnect[%ld]: no object with id %s", v18, 0x16u);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x193ADD350](v23, -1, -1);
      MEMORY[0x193ADD350](v18, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    return 0;
  }

  if (object_getClass(v32[0]) != _TtC10AppIntents33AsyncIntentValueSequenceContainer)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v13;
}

uint64_t sub_18F201724(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v8 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = swift_task_alloc();
  v5[7] = v10;
  *v10 = v5;
  v10[1] = sub_18F201810;

  return AppContext.createAsyncIterator(for:options:connectionIdentifier:)();
}

uint64_t sub_18F201810()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_13_2();
  v4 = v3[5];
  v5 = v3[2];
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v8 = v3[6];
  if (v0)
  {
    v9 = sub_18F520A7C();

    v10 = OUTLINED_FUNCTION_11_3();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_11_3();
    v13(v12, v1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();

  return v14();
}

uint64_t AppContext.nextAsyncIteratorResults(for:connectionIdentifier:)()
{
  OUTLINED_FUNCTION_69();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_18F520E6C();
  v0[6] = v3;
  OUTLINED_FUNCTION_51(v3);
  v0[7] = v4;
  v0[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F201A88()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_11;
  }

  *(v0 + 16) = v1;
  swift_unknownObjectRetain();
  if ((OUTLINED_FUNCTION_5_25() & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = *(v0 + 24);
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v3 = sub_18F10C01C(v2);
  *(v0 + 72) = v3;

  if (!v3)
  {
LABEL_11:
    v15 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_11_16();
    goto LABEL_12;
  }

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = [*(v0 + 32) sequenceIdentifier];
  sub_18F520E4C();

  v8 = sub_18F201368(v4);
  *(v0 + 80) = v8;
  (*(v5 + 8))(v4, v6);
  if (!v8)
  {
    v18 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_11_16();
LABEL_17:

LABEL_12:

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_9();

    __asm { BRAA            X1, X16 }
  }

  v9 = [*(v0 + 32) iteratorIdentifier];
  v10 = [v9 integerValue];

  v11 = sub_18F25E834(v10);
  *(v0 + 88) = v11;
  if (!v11)
  {
    v19 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_11_16();

    goto LABEL_17;
  }

  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_18F201CD0;
  OUTLINED_FUNCTION_31_9();

  return sub_18F25FAE4();
}

uint64_t sub_18F201CD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v4 + 104) = v1;

  if (v1)
  {
    v7 = sub_18F201EC4;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_18F201DF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F201DF0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 112);
  sub_18F0F21A8(0, &qword_1EACD2648);
  sub_18F200AF0(v1);

  sub_18F201F3C();

  v2 = OUTLINED_FUNCTION_12_7();

  return v3(v2);
}

uint64_t sub_18F201EC4()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

id sub_18F201F3C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F521C8C();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_18F201FD4(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_18F2020A8;

  return AppContext.nextAsyncIteratorResults(for:connectionIdentifier:)();
}

uint64_t sub_18F2020A8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_13_2();
  v4 = v3[4];
  v5 = v3[2];
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  swift_unknownObjectRelease();
  v8 = v3[5];
  if (v0)
  {
    v9 = sub_18F520A7C();

    v10 = OUTLINED_FUNCTION_11_3();
    v11(v10, 0, v9);

    _Block_release(v8);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_11_3();
    v13(v12, v1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();

  return v14();
}

uint64_t AppContext.releaseAsyncSequence(_:connectionIdentifier:)()
{
  OUTLINED_FUNCTION_69();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_18F520E6C();
  v0[6] = v3;
  OUTLINED_FUNCTION_51(v3);
  v0[7] = v4;
  v0[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_18F202304()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_7;
  }

  *(v0 + 16) = v1;
  swift_unknownObjectRetain();
  if ((OUTLINED_FUNCTION_5_25() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = *(v0 + 24);
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v3 = sub_18F10C01C(v2);

  if (v3)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = [*(v0 + 32) identifier];
    sub_18F520E4C();

    sub_18F202470(v4);

    (*(v5 + 8))(v4, v6);

    OUTLINED_FUNCTION_71();
  }

  else
  {
LABEL_7:
    LNConnectionErrorWithCode();
    swift_willThrow();

    OUTLINED_FUNCTION_71();
  }

  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

void sub_18F202470(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18F520E6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = *(v1 + 40);
  v37 = v1;
  v38 = a1;
  v34 = sub_18F2032AC;
  v35 = &v36;
  os_unfair_lock_lock(v11 + 4);
  sub_18F2032DC(v12, v40);
  os_unfair_lock_unlock(v11 + 4);
  v13 = v40[0];
  if (v40[0])
  {
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v14 = sub_18F52165C();
    __swift_project_value_buffer(v14, qword_1ED7077A8);

    swift_unknownObjectRetain();
    v15 = sub_18F52163C();
    v16 = sub_18F52220C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 134218242;
      *(v17 + 4) = *(v1 + 16);

      *(v17 + 12) = 2080;
      swift_getObjectType();
      v39 = v13;
      v40[3] = swift_getAssociatedTypeWitness();
      v40[4] = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v40);
      sub_18F5227DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2650);
      v19 = sub_18F52194C();
      v21 = sub_18F11897C(v19, v20, &v41);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_18F0E9000, v15, v16, "ConnectionContext[%ld]: removed %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x193ADD350](v18, -1, -1);
      MEMORY[0x193ADD350](v17, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v22 = sub_18F52165C();
    __swift_project_value_buffer(v22, qword_1ED7077A8);
    v23 = *(v5 + 16);
    v23(v10, a1, v4);

    v24 = sub_18F52163C();
    v25 = sub_18F52221C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40[0] = v33;
      *v26 = 134218242;
      *(v26 + 4) = *(v2 + 16);

      *(v26 + 12) = 2080;
      v23(v8, v10, v4);
      v27 = sub_18F52194C();
      v29 = v28;
      (*(v5 + 8))(v10, v4);
      v30 = sub_18F11897C(v27, v29, v40);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_18F0E9000, v24, v25, "ConnectionConnect[%ld]: no object to remove with id %s", v26, 0x16u);
      v31 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x193ADD350](v31, -1, -1);
      MEMORY[0x193ADD350](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t sub_18F202968(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a1;

  return sub_18F10B344();
}

uint64_t sub_18F2029F8(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_18F202ACC;

  return AppContext.releaseAsyncSequence(_:connectionIdentifier:)();
}

uint64_t sub_18F202ACC()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  *v5 = *v1;

  swift_unknownObjectRelease();
  if (v2)
  {
    v8 = sub_18F520A7C();

    v9 = OUTLINED_FUNCTION_11_3();
    v10(v9, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_11_3();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 40));
  OUTLINED_FUNCTION_18_9();

  return v13();
}

void sub_18F202C68()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F203370;
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_31_9();

  __asm { BR              X4 }
}

void sub_18F202D14()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F203370;
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_31_9();

  __asm { BR              X4 }
}

uint64_t sub_18F202DC0()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1EC4D0;
  v2 = OUTLINED_FUNCTION_4_24();

  return v3(v2);
}

uint64_t sub_18F202E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520E6C();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22, a2, v4);
  sub_18F2032F8(&qword_1ED6FF180, MEMORY[0x1E69695A8]);
  sub_18F52272C();
  swift_beginAccess();
  v7 = *(a1 + 32);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v8 = sub_18F19E46C(v11, v7);

  sub_18F0EF654(v11);
  return v8;
}

uint64_t sub_18F202FE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_18F520E6C();
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  sub_18F2032F8(&qword_1ED6FF180, MEMORY[0x1E69695A8]);
  sub_18F52272C();
  swift_beginAccess();
  sub_18F2BF17C(v17, v6, v7, v8, v9, v10, v11, v12, v16[0], v16[1]);
  v14 = v13;
  sub_18F0EF654(v17);
  swift_endAccess();
  return v14;
}

uint64_t sub_18F2031F4(uint64_t a1)
{
  v2 = type metadata accessor for IntentPerson(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_18F203250@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_18F2B73C4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_18F20327C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_18F2032F8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_18F2033C0(void *a1)
{
  v24 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD23A8);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v20, v23);
    sub_18F0FD724(v23, &v20);
    v3 = sub_18F52163C();
    v4 = sub_18F52222C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;
      __swift_project_boxed_opaque_existential_1Tm(&v20, *(&v21 + 1));
      v7 = sub_18F522E8C();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      v10 = sub_18F11897C(v7, v9, &v24);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_18F0E9000, v3, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();

      v11 = v23;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v11 = &v20;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_18F0EF148(&v20, &qword_1EACD23B0);
    v12 = a1;
    v13 = sub_18F52163C();
    v14 = sub_18F52222C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_18F0E9000, v13, v14, "%@", v15, 0xCu);
      sub_18F0EF148(v16, &qword_1EACD0578);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_18F203668@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FDA70 != -1)
  {
    swift_once();
  }

  v2 = sub_18F52165C();
  v3 = __swift_project_value_buffer(v2, qword_1ED7076B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_18F203758()
{
  v0 = sub_18F52165C();
  __swift_allocate_value_buffer(v0, qword_1ED707760);
  __swift_project_value_buffer(v0, qword_1ED707760);
  return sub_18F52164C();
}

uint64_t sub_18F2037E4(uint64_t a1)
{
  v3 = *(*v1 + 168);
  swift_beginAccess();
  sub_18F1D58E4(a1, v1 + v3);
  swift_endAccess();
  result = sub_18F0FA038(a1, &qword_1EACD0620);
  *(v1 + *(*v1 + 176)) = 1;
  return result;
}

uint64_t sub_18F203884(uint64_t a1)
{
  v2 = sub_18F520C8C();
  v7[3] = v2;
  v7[4] = sub_18F10F99C(qword_1EACCEB30, MEMORY[0x1E6968FB0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  sub_18F2037E4(v7);
  v4 = OUTLINED_FUNCTION_66();
  return v5(v4);
}

uint64_t sub_18F2039AC(uint64_t a1, uint64_t a2)
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  v5[4] = sub_18F206294();
  v5[0] = a1;
  v5[1] = a2;
  return sub_18F2037E4(v5);
}

uint64_t sub_18F203A0C(uint64_t a1)
{
  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  v6[4] = sub_18F2061E0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_18F0F9FD4(a1, boxed_opaque_existential_1, &unk_1EACD1480);
  sub_18F2037E4(v6);
  v3 = OUTLINED_FUNCTION_66();
  return sub_18F0FA038(v3, v4);
}

uint64_t sub_18F203A94(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DE8);
  v7 = sub_18F206108();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_14_22(v2);
  *(v3 + 64) = *(a1 + 48);
  return sub_18F2037E4(v5);
}

uint64_t sub_18F203B2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7[4] = a4();
  v7[0] = a1;
  return sub_18F2037E4(v7);
}

uint64_t sub_18F203B88()
{
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DD0);
  v10[4] = sub_18F206000();
  OUTLINED_FUNCTION_15_15();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_18_17(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10[0]);
  return sub_18F2037E4(v10);
}

uint64_t sub_18F203BEC()
{
  v10[3] = &type metadata for MailMessagePrototype;
  v10[4] = sub_18F205FAC();
  OUTLINED_FUNCTION_15_15();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_18_17(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10[0]);
  return sub_18F2037E4(v10);
}

uint64_t sub_18F203C44(char a1)
{
  v4 = MEMORY[0x1E69E6370];
  v5 = sub_18F118844();
  v3[0] = a1;
  return sub_18F2037E4(v3);
}

uint64_t sub_18F203CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7[3] = a3;
  v7[4] = a4();
  v7[0] = a1;
  v7[1] = a2;
  return sub_18F2037E4(v7);
}

uint64_t sub_18F203CFC(uint64_t a1)
{
  v6 = &type metadata for MessageGroupPrototype;
  v7 = sub_18F205F58();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_14_22(v2);
  *(v3 + 57) = *(a1 + 41);
  return sub_18F2037E4(v5);
}

uint64_t sub_18F203D60()
{
  v0 = sub_18F520B3C();
  __swift_allocate_value_buffer(v0, qword_1EACD2658);
  __swift_project_value_buffer(v0, qword_1EACD2658);
  return sub_18F520ACC();
}

uint64_t sub_18F203DC4()
{
  if (qword_1EACCF4C0 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v0 = sub_18F520B3C();

  return __swift_project_value_buffer(v0, qword_1EACD2658);
}

uint64_t static OpenURLIntent.title.getter()
{
  if (qword_1EACCF4C0 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v0 = sub_18F520B3C();
  __swift_project_value_buffer(v0, qword_1EACD2658);
  swift_beginAccess();
  OUTLINED_FUNCTION_31_0();
  v1 = OUTLINED_FUNCTION_66();
  return v2(v1);
}

uint64_t static OpenURLIntent.title.setter(uint64_t a1)
{
  if (qword_1EACCF4C0 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EACD2658);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenURLIntent.title.modify())()
{
  if (qword_1EACCF4C0 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v0 = sub_18F520B3C();
  __swift_project_value_buffer(v0, qword_1EACD2658);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F204028@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F203DC4();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18F2040A4(uint64_t a1)
{
  v2 = sub_18F203DC4();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

double static OpenURLIntent.urlRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  MEMORY[0x193ADAF90](2);
  sub_18F205EA0(1);
  sub_18F12A000();
  v2 = OUTLINED_FUNCTION_13_3();
  MEMORY[0x193ADB000](v2);

  KeyPath = swift_getKeyPath();
  sub_18F204334(KeyPath, sub_18F111F70, sub_18F25D904);

  v4 = OUTLINED_FUNCTION_13_3();
  MEMORY[0x193ADB000](v4);

  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_18F2042A0@<X0>(uint64_t *a1@<X8>)
{
  result = OpenURLIntent.$url.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18F204334(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  a2(*v3);
  v6 = sub_18F522C9C();
  MEMORY[0x193ADB000](v6);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000](0x656D617261707B24, 0xEB00000000726574);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F7E0;
  *(inited + 32) = a1;

  return a3(inited);
}

uint64_t sub_18F20449C(uint64_t a1, void *a2)
{
  v4 = sub_18F520C8C();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v9[1] = *a2;

  OpenURLIntent.url.setter(v6);
}

uint64_t OpenURLIntent.url.setter(uint64_t a1)
{
  v2 = sub_18F520C8C();
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v2);
  sub_18F203884(v7);
  v8 = OUTLINED_FUNCTION_66();
  return v9(v8);
}

void (*OpenURLIntent.url.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = sub_18F520C8C();
  *v3 = v4;
  OUTLINED_FUNCTION_51(v4);
  v3[1] = v5;
  v7 = *(v6 + 64);
  v3[2] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *v1;
  v3[3] = v8;
  v3[4] = v9;
  sub_18F1B6CCC();
  return sub_18F204734;
}

void sub_18F204734(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  if (a2)
  {
    v5 = *v2;
    v6 = v2[1];
    (*(v6 + 16))(*(*a1 + 16), v3, *v2);
    sub_18F203884(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_18F203884(*(*a1 + 24));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t OpenURLIntent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v66 = a1;
  v3 = sub_18F520C8C();
  OUTLINED_FUNCTION_11_0();
  v64 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v63 = v6 - v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v61 = v12 - v13;
  OUTLINED_FUNCTION_44();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v21 = OUTLINED_FUNCTION_10(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  v28 = sub_18F520B3C();
  v60 = v28;
  OUTLINED_FUNCTION_11_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_5_26();
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v3);
  v39 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  (*(v30 + 16))(v34, v2, v28);
  sub_18F0F9FD4(v27, v24, &qword_1EACD0360);
  OUTLINED_FUNCTION_2_0();
  v43 = v17;
  sub_18F0F9FD4(v19, v17, &qword_1EACCF7A0);
  v44 = v61;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v39);
  OUTLINED_FUNCTION_12_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2670);
  OUTLINED_FUNCTION_17_20();
  swift_allocObject();
  OUTLINED_FUNCTION_11_17();
  v51 = sub_18F1B44D8(v34, v24, 0, v48, v49, v43, v44, v50);
  sub_18F0FA038(v19, &qword_1EACCF7A0);
  sub_18F0FA038(v27, &qword_1EACD0360);
  (*(v30 + 8))(v2, v60);
  v52 = v64;
  *v65 = v51;
  v53 = *(v52 + 16);
  v54 = v62;
  v55 = v66;
  v53(v62, v66, v3);
  v56 = v63;
  v53(v63, v54, v3);
  sub_18F203884(v56);
  v57 = *(v52 + 8);
  v57(v55, v3);
  return (v57)(v54, v3);
}

uint64_t OpenURLIntent.init<A>(urlRepresentable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v81 = a2;
  v82 = a3;
  v83 = a1;
  v76 = a4;
  v5 = sub_18F520C8C();
  v77 = v5;
  OUTLINED_FUNCTION_11_0();
  v75 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v72 = v8 - v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v15 = OUTLINED_FUNCTION_10(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v79 = v16 - v17;
  OUTLINED_FUNCTION_44();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_22_3();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v80 = v24 - v25;
  OUTLINED_FUNCTION_44();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v72 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v72 - v30;
  v32 = sub_18F520B3C();
  v78 = v32;
  OUTLINED_FUNCTION_11_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v72 - v40;
  OUTLINED_FUNCTION_5_26();
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v5);
  v45 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  (*(v34 + 16))(v38, v41, v32);
  sub_18F0F9FD4(v31, v29, &qword_1EACD0360);
  OUTLINED_FUNCTION_2_0();
  v49 = v21;
  sub_18F0F9FD4(v4, v21, &qword_1EACCF7A0);
  v50 = v79;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v45);
  OUTLINED_FUNCTION_12_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2670);
  OUTLINED_FUNCTION_17_20();
  swift_allocObject();
  OUTLINED_FUNCTION_11_17();
  v54 = v29;
  v55 = v77;
  v59 = sub_18F1B44D8(v38, v54, 0, v56, v57, v49, v50, v58);
  sub_18F0FA038(v4, &qword_1EACCF7A0);
  v60 = v31;
  v61 = v81;
  sub_18F0FA038(v60, &qword_1EACD0360);
  (*(v34 + 8))(v41, v78);
  v62 = v80;
  URLRepresentableEnum.urlRepresentation.getter(v82, v80);
  if (__swift_getEnumTagSinglePayload(v62, 1, v55) == 1)
  {
    sub_18F0FA038(v62, &qword_1EACD0360);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_31_0();
    (*(v63 + 8))(v83, v61);
  }

  else
  {
    v65 = v75;
    v66 = v73;
    (*(v75 + 32))(v73, v62, v55);
    v67 = *(v65 + 16);
    v68 = v74;
    v67(v74, v66, v55);
    v69 = v72;
    v67(v72, v68, v55);
    sub_18F203884(v69);
    OUTLINED_FUNCTION_31_0();
    (*(v70 + 8))(v83, v61);
    v71 = *(v65 + 8);
    v71(v68, v55);
    result = (v71)(v66, v55);
    *v76 = v59;
  }

  return result;
}

uint64_t OpenURLIntent.init<A>(urlRepresentable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_18F520C8C();
  v4[6] = v5;
  OUTLINED_FUNCTION_51(v5);
  v4[7] = v6;
  v4[8] = OUTLINED_FUNCTION_19_13();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v7);
  v4[11] = OUTLINED_FUNCTION_19_13();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_10(v8);
  v4[14] = OUTLINED_FUNCTION_19_13();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = sub_18F520B3C();
  v4[17] = v9;
  OUTLINED_FUNCTION_51(v9);
  v4[18] = v10;
  v4[19] = OUTLINED_FUNCTION_19_13();
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F20533C, 0, 0);
}

uint64_t sub_18F20533C()
{
  v31 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v24 = v0[12];
  v8 = v0[11];
  v9 = v0[6];
  OUTLINED_FUNCTION_5_26();
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  (*(v4 + 16))(v2, v1, v3);
  sub_18F0F9FD4(v5, v6, &qword_1EACD0360);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_18F0F9FD4(v7, v24, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2670);
  OUTLINED_FUNCTION_17_20();
  swift_allocObject();
  v0[21] = sub_18F1B44D8(v2, v6, 0, v25, v27, v24, v8, v29);
  sub_18F0FA038(v7, &qword_1EACCF7A0);
  sub_18F0FA038(v5, &qword_1EACD0360);
  (*(v4 + 8))(v1, v3);
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_18F205578;
  v21 = v0[14];
  v22 = v0[4];

  return URLRepresentableEntity.urlRepresentation.getter(v21, v22);
}

uint64_t sub_18F205578()
{

  return MEMORY[0x1EEE6DFA0](sub_18F205674, 0, 0);
}

uint64_t sub_18F205674()
{
  v1 = v0[14];
  v2 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[3];
    v4 = v0[4];
    sub_18F0FA038(v1, &qword_1EACD0360);
    sub_18F205C9C();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_31_0();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v7 = v0[21];
    v8 = v0[10];
    v9 = v1;
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[7];
    v13 = v0[4];
    v18 = v0[3];
    v19 = v0[2];
    (*(v12 + 32))(v8, v9, v2);
    v14 = *(v12 + 16);
    v14(v11, v8, v2);
    v14(v10, v11, v2);
    sub_18F203884(v10);
    OUTLINED_FUNCTION_31_0();
    (*(v15 + 8))(v18, v13);
    v16 = *(v12 + 8);
    v16(v11, v2);
    v16(v8, v2);
    *v19 = v7;
  }

  v6 = v0[1];

  return v6();
}

uint64_t OpenURLIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v4 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22_3();
  v19 = sub_18F520B3C();
  OUTLINED_FUNCTION_11_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v45 - v27;
  OUTLINED_FUNCTION_5_26();
  sub_18F520ACC();
  sub_18F520C8C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  (*(v21 + 16))(v25, v28, v19);
  sub_18F0F9FD4(v1, v17, &qword_1EACD0360);
  OUTLINED_FUNCTION_2_0();
  sub_18F0F9FD4(v12, v10, &qword_1EACCF7A0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  OUTLINED_FUNCTION_12_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2670);
  OUTLINED_FUNCTION_17_20();
  swift_allocObject();
  OUTLINED_FUNCTION_11_17();
  v43 = sub_18F1B44D8(v25, v17, 0, v40, v41, v10, v6, v42);
  sub_18F0FA038(v12, &qword_1EACCF7A0);
  sub_18F0FA038(v1, &qword_1EACD0360);
  result = (*(v21 + 8))(v28, v19);
  *v46 = v43;
  return result;
}

unint64_t sub_18F205C9C()
{
  result = qword_1EACD2678;
  if (!qword_1EACD2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2678);
  }

  return result;
}

unint64_t sub_18F205CF0()
{
  result = qword_1EACD2680;
  if (!qword_1EACD2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2680);
  }

  return result;
}

unint64_t sub_18F205D44()
{
  result = qword_1EACD2688;
  if (!qword_1EACD2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2688);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18F205EA0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_18F5226AC();
LABEL_9:
  result = sub_18F52283C();
  *v1 = result;
  return result;
}

unint64_t sub_18F205F58()
{
  result = qword_1EACD2690;
  if (!qword_1EACD2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2690);
  }

  return result;
}

unint64_t sub_18F205FAC()
{
  result = qword_1EACD2698;
  if (!qword_1EACD2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2698);
  }

  return result;
}

unint64_t sub_18F206000()
{
  result = qword_1EACD26A0;
  if (!qword_1EACD26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DD0);
    sub_18F205FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26A0);
  }

  return result;
}

unint64_t sub_18F206084()
{
  result = qword_1EACCDD88;
  if (!qword_1EACCDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DD8);
    sub_18F178220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCDD88);
  }

  return result;
}

unint64_t sub_18F206108()
{
  result = qword_1EACD26A8;
  if (!qword_1EACD26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DE8);
    sub_18F20618C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26A8);
  }

  return result;
}

unint64_t sub_18F20618C()
{
  result = qword_1EACD26B0;
  if (!qword_1EACD26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26B0);
  }

  return result;
}

unint64_t sub_18F2061E0()
{
  result = qword_1EACD26B8;
  if (!qword_1EACD26B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EACD1480);
    sub_18F10F99C(qword_1EACCED60, MEMORY[0x1E6968848]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26B8);
  }

  return result;
}

unint64_t sub_18F206294()
{
  result = qword_1EACD26C0;
  if (!qword_1EACD26C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4470);
    sub_18F10F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26C0);
  }

  return result;
}

unint64_t sub_18F206318()
{
  result = qword_1EACD26C8;
  if (!qword_1EACD26C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DF8);
    sub_18F20639C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26C8);
  }

  return result;
}

unint64_t sub_18F20639C()
{
  result = qword_1EACD26D0;
  if (!qword_1EACD26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26D0);
  }

  return result;
}

unint64_t sub_18F2063F0()
{
  result = qword_1EACD26D8;
  if (!qword_1EACD26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26D8);
  }

  return result;
}

uint64_t ParameterSummaryWhenCondition.init<A, B>(_:_:_:_:otherwise:)()
{
}

uint64_t sub_18F206500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  v11 = *(*(a10 - 8) + 8);

  return v11(a3, a10);
}

uint64_t sub_18F206564(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a3, AssociatedTypeWitness);
}

uint64_t ParameterSummaryWhenCondition.init<A>(_:identifier:_:_:otherwise:)()
{
}

{
}

uint64_t ParameterSummaryWhenCondition.init<A, B>(_:identifier:_:_:otherwise:)()
{
}

uint64_t OneOfComparisonOperator.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t _s10AppIntents12IntentOriginO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_5_27();
  sub_18F522EFC();
  OUTLINED_FUNCTION_6_28();
  return sub_18F522F4C();
}

uint64_t sub_18F206860()
{
  OUTLINED_FUNCTION_5_27();
  sub_18F522EFC();
  OUTLINED_FUNCTION_6_28();
  return sub_18F522F4C();
}

unint64_t sub_18F206908()
{
  result = qword_1EACD26E0;
  if (!qword_1EACD26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26E0);
  }

  return result;
}

unint64_t sub_18F206960()
{
  result = qword_1EACD26E8;
  if (!qword_1EACD26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26E8);
  }

  return result;
}

unint64_t sub_18F2069B8()
{
  result = qword_1EACD26F0;
  if (!qword_1EACD26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26F0);
  }

  return result;
}

unint64_t sub_18F206A10()
{
  result = qword_1EACD26F8;
  if (!qword_1EACD26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD26F8);
  }

  return result;
}

unint64_t sub_18F206A68()
{
  result = qword_1EACD2700;
  if (!qword_1EACD2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2700);
  }

  return result;
}

unint64_t sub_18F206AC0()
{
  result = qword_1EACD2708;
  if (!qword_1EACD2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2708);
  }

  return result;
}

unint64_t sub_18F206B48()
{
  result = qword_1EACD2720;
  if (!qword_1EACD2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2720);
  }

  return result;
}

uint64_t sub_18F206BCC(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_18F206C50(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_18_2(a1);
}

_BYTE *sub_18F206C9C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_18F206D50(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_2(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentWidgetFamily(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for IntentWidgetFamily(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F206F84(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_2(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t _URLRepresentableEntity.urlRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F20716C()
{
  v1 = OUTLINED_FUNCTION_80_0();
  v2(v1);
  v3 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  type metadata accessor for _EntityURLRepresentation();
  *v4 = v0;
  v4[1] = sub_18F207258;

  return sub_18F207378();
}

uint64_t sub_18F207258()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_18F207378()
{
  OUTLINED_FUNCTION_69();
  v1[97] = v2;
  v1[96] = v3;
  v1[95] = v4;
  v5 = v0[1];
  v1[98] = *v0;
  v1[99] = v5;
  v1[100] = v0[2];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return MEMORY[0x1EEE6DFA0](sub_18F207404, 0, 0);
}

uint64_t sub_18F207404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  v17 = v16[97];
  v16[92] = v16[98];
  v16[101] = *(v17 + 16);
  sub_18F52288C();
  v18 = sub_18F521DBC();
  v16[102] = v18;
  WitnessTable = swift_getWitnessTable();
  v16[103] = WitnessTable;
  MEMORY[0x193ADB130](v18, WitnessTable);

  v16[91] = v16[93];
  sub_18F522A8C();
  v20 = v16 + 91;
  sub_18F522A5C();
  v21 = v16[100];
  v22 = v16[99];
  v23 = MEMORY[0x1E69E6158];
  while (1)
  {
    v16[105] = v21;
    v16[104] = v22;
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_10_21();
    if (!v20)
    {
      break;
    }

    OUTLINED_FUNCTION_21_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_15_4();
    v21 = MEMORY[0x1E69E7CA0];
    if (OUTLINED_FUNCTION_36_2())
    {
      OUTLINED_FUNCTION_4_26();
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_27_3(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_0_38(v39);
      OUTLINED_FUNCTION_28_2();

      return sub_18F3F4F20(v41, v42, v43, v44, v45);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (OUTLINED_FUNCTION_12_23())
    {
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_93();
      v47();
      v48 = swift_task_alloc();
      v49 = OUTLINED_FUNCTION_16_17(v48);
      *v49 = v50;
      OUTLINED_FUNCTION_1_32(v49);
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_28_2();

      return sub_18F1E1ED4(v51, v52, v53, v54);
    }

    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_14_4();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 66));
    v24 = v16[87];
    v25 = v16[88];
    v20 = v16[106];
    v26 = v16[105];
    OUTLINED_FUNCTION_26_13();
    v16[86] = v26;
    OUTLINED_FUNCTION_2_35();
    sub_18F522C9C();
    OUTLINED_FUNCTION_52();

    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_47_6();
    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_50_1(v27);
    OUTLINED_FUNCTION_7();
    a9 = v23;
    a10 = v28;
    OUTLINED_FUNCTION_8_5();
    v22 = sub_18F5225CC();
    OUTLINED_FUNCTION_51_0();
  }

  OUTLINED_FUNCTION_35_9();
  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F2076F8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 872) = v3;
  *(v1 + 880) = v4;

  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2077E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  __swift_destroy_boxed_opaque_existential_1Tm((v16 + 52));
  v18 = v16[110];
  v19 = v16[109];
  v20 = MEMORY[0x1E69E6158];
  while (1)
  {
    OUTLINED_FUNCTION_43_9();
    v21 = v16[104];
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 62));
    v16[85] = v21;
    v16[86] = v17;
    OUTLINED_FUNCTION_2_35();
    v22 = sub_18F522C9C();
    MEMORY[0x193ADB000](v22);

    OUTLINED_FUNCTION_23_4();
    v23 = v16[84];
    v16[81] = v16[83];
    v16[82] = v23;
    if (v18)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    if (!v18)
    {
      v18 = 0xE000000000000000;
    }

    v16[79] = v24;
    v16[80] = v18;
    sub_18F12A000();
    OUTLINED_FUNCTION_7();
    v57 = v25;
    OUTLINED_FUNCTION_8_5();
    v26 = sub_18F5225CC();
    v28 = v27;

    v16[105] = v28;
    v16[104] = v26;
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_10_21();
    if (v16 == -664)
    {
      break;
    }

    OUTLINED_FUNCTION_21_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_15_4();
    if (OUTLINED_FUNCTION_36_2())
    {
      OUTLINED_FUNCTION_4_26();
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_27_3(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_0_38(v39, v41);
      OUTLINED_FUNCTION_28_2();

      return sub_18F3F4F20(v42, v43, v44, v45, v46);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (OUTLINED_FUNCTION_12_23())
    {
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_93();
      v48();
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_16_17(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_1_32(v50);
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_28_2();

      return sub_18F1E1ED4(v52, v53, v54, v55);
    }

    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_14_4();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 66));
    v19 = v16[87];
    v18 = v16[88];
  }

  OUTLINED_FUNCTION_35_9();
  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v20, v57, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F207A80()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {

    v7 = sub_18F2087F0;
  }

  else
  {
    sub_18F0EF148(v3 + 376, &qword_1EACCFCF8);
    v7 = sub_18F207B9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F207B9C()
{
  sub_18F102F54(v1 + 456, v1 + 176);
  if (*(v1 + 200))
  {
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27D0);
    if (OUTLINED_FUNCTION_38_7())
    {
      if (*(v1 + 320))
      {
        sub_18F0FD0B4((v1 + 296), v1 + 336);
        __swift_project_boxed_opaque_existential_1Tm((v1 + 336), *(v1 + 360));
        OUTLINED_FUNCTION_9_18();
        v3 = swift_task_alloc();
        *(v1 + 896) = v3;
        *v3 = v1;
        OUTLINED_FUNCTION_11_18(v3);
        OUTLINED_FUNCTION_68_1();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
      *(v1 + 328) = 0;
      OUTLINED_FUNCTION_42_6();
    }
  }

  else
  {
    sub_18F0EF148(v1 + 176, &qword_1EACD0620);
    OUTLINED_FUNCTION_42_6();
    *(v1 + 328) = 0;
  }

  sub_18F0EF148(v1 + 296, &qword_1EACD27B8);
  sub_18F102F54(v1 + 456, v1 + 56);
  if (*(v1 + 80))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27C8);
    if (OUTLINED_FUNCTION_37_10())
    {
      if (*(v1 + 120))
      {
        sub_18F0FD0B4((v1 + 96), v1 + 136);
        __swift_project_boxed_opaque_existential_1Tm((v1 + 136), *(v1 + 160));
        OUTLINED_FUNCTION_9_18();
        v7 = swift_task_alloc();
        *(v1 + 904) = v7;
        *v7 = v1;
        OUTLINED_FUNCTION_11_18(v7);
        OUTLINED_FUNCTION_68_1();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
      *(v1 + 128) = 0;
      OUTLINED_FUNCTION_41_8();
    }

    sub_18F0EF148(v1 + 456, &qword_1EACD0620);
  }

  else
  {
    v6 = &qword_1EACD0620;
    v0 = &unk_18F541850;
    OUTLINED_FUNCTION_49_0(v1 + 456);
    OUTLINED_FUNCTION_49_0(v1 + 56);
    OUTLINED_FUNCTION_41_8();
    *(v1 + 128) = 0;
  }

  sub_18F0EF148(v1 + 96, &qword_1EACD27C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);
  v10 = 0;
  for (i = 0; ; i = *(v1 + 704))
  {
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_26_13();
    *(v1 + 688) = v2;
    OUTLINED_FUNCTION_2_35();
    sub_18F522C9C();
    OUTLINED_FUNCTION_52();

    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_47_6();
    if (i)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    OUTLINED_FUNCTION_50_1(v12);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8_5();
    v13 = sub_18F5225CC();
    OUTLINED_FUNCTION_51_0();

    *(v1 + 840) = v0;
    *(v1 + 832) = v13;
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_10_21();
    if (!v6)
    {
      OUTLINED_FUNCTION_35_9();
      sub_18F520C6C();

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_68_1();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_21_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_15_4();
    v0 = MEMORY[0x1E69E7CA0];
    if (OUTLINED_FUNCTION_36_2())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (OUTLINED_FUNCTION_12_23())
    {
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_93();
      v29(v27, v28);
      v30 = swift_task_alloc();
      v31 = OUTLINED_FUNCTION_16_17(v30);
      *v31 = v32;
      OUTLINED_FUNCTION_1_32(v31, v33);
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_68_1();

      return sub_18F1E1ED4(v34, v35, v36, v37);
    }

    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_14_4();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm(v1 + 528);
    v10 = *(v1 + 696);
  }

  OUTLINED_FUNCTION_4_26();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_27_3(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_0_38(v17, v19);
  OUTLINED_FUNCTION_68_1();

  return sub_18F3F4F20(v20, v21, v22, v23, v24);
}

uint64_t sub_18F208120()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v1[73] = v0;
  v1[74] = v3;
  v1[75] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F20820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  sub_18F0EF148((v18 + 57), &qword_1EACD0620);
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 42));
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 2));
  v20 = MEMORY[0x1E69E6158];
  while (1)
  {
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_26_13();
    v18[86] = v19;
    OUTLINED_FUNCTION_2_35();
    sub_18F522C9C();
    OUTLINED_FUNCTION_52();

    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_50_1(v21);
    OUTLINED_FUNCTION_7();
    v51 = v22;
    OUTLINED_FUNCTION_8_5();
    v23 = sub_18F5225CC();
    OUTLINED_FUNCTION_51_0();

    v18[105] = v16;
    v18[104] = v23;
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_10_21();
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_21_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_15_4();
    v16 = MEMORY[0x1E69E7CA0];
    if (OUTLINED_FUNCTION_36_2())
    {
      OUTLINED_FUNCTION_4_26();
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_27_3(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_0_38();
      OUTLINED_FUNCTION_28_2();

      return sub_18F3F4F20(v36, v37, v38, v39, v40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (OUTLINED_FUNCTION_12_23())
    {
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_93();
      v42();
      v43 = swift_task_alloc();
      v44 = OUTLINED_FUNCTION_16_17(v43);
      *v44 = v45;
      OUTLINED_FUNCTION_1_32();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_28_2();

      return sub_18F1E1ED4(v46, v47, v48, v49);
    }

    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_14_4();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v18 + 66));
  }

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_80_0();
  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v20, v51, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F208488()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v1[76] = v0;
  v1[77] = v3;
  v1[78] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F208574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_175();
  sub_18F0EF148((v18 + 57), &qword_1EACD0620);
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm((v18 + 2));
  v20 = MEMORY[0x1E69E6158];
  while (1)
  {
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_26_13();
    v18[86] = v19;
    OUTLINED_FUNCTION_2_35();
    sub_18F522C9C();
    OUTLINED_FUNCTION_52();

    OUTLINED_FUNCTION_23_4();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_50_1(v21);
    OUTLINED_FUNCTION_7();
    v51 = v22;
    OUTLINED_FUNCTION_8_5();
    v23 = sub_18F5225CC();
    OUTLINED_FUNCTION_51_0();

    v18[105] = v16;
    v18[104] = v23;
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_10_21();
    if (!v17)
    {
      break;
    }

    OUTLINED_FUNCTION_21_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_15_4();
    v16 = MEMORY[0x1E69E7CA0];
    if (OUTLINED_FUNCTION_36_2())
    {
      OUTLINED_FUNCTION_4_26();
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_27_3(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_0_38();
      OUTLINED_FUNCTION_28_2();

      return sub_18F3F4F20(v36, v37, v38, v39, v40);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (OUTLINED_FUNCTION_12_23())
    {
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_93();
      v42();
      v43 = swift_task_alloc();
      v44 = OUTLINED_FUNCTION_16_17(v43);
      *v44 = v45;
      OUTLINED_FUNCTION_1_32();
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_28_2();

      return sub_18F1E1ED4(v46, v47, v48, v49);
    }

    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_14_4();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm((v18 + 66));
  }

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_80_0();
  sub_18F520C6C();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_28_2();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v20, v51, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_18F2087F0()
{
  sub_18F0EF148(v0 + 376, &qword_1EACCFCF8);
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0;
  sub_18F102F54(v0 + 456, v0 + 176);
  if (*(v0 + 200))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27D0);
    if (OUTLINED_FUNCTION_38_7())
    {
      if (*(v0 + 320))
      {
        sub_18F0FD0B4((v0 + 296), v0 + 336);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 336), *(v0 + 360));
        OUTLINED_FUNCTION_9_18();
        v1 = swift_task_alloc();
        *(v0 + 896) = v1;
        *v1 = v0;
        OUTLINED_FUNCTION_11_18(v1);
        OUTLINED_FUNCTION_68_1();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
      *(v0 + 328) = 0;
      OUTLINED_FUNCTION_42_6();
    }
  }

  else
  {
    sub_18F0EF148(v0 + 176, &qword_1EACD0620);
    OUTLINED_FUNCTION_42_6();
    *(v0 + 328) = 0;
  }

  sub_18F0EF148(v0 + 296, &qword_1EACD27B8);
  sub_18F102F54(v0 + 456, v0 + 56);
  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27C8);
    if (OUTLINED_FUNCTION_37_10())
    {
      if (*(v0 + 120))
      {
        sub_18F0FD0B4((v0 + 96), v0 + 136);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
        OUTLINED_FUNCTION_9_18();
        v4 = swift_task_alloc();
        *(v0 + 904) = v4;
        *v4 = v0;
        OUTLINED_FUNCTION_11_18(v4);
        OUTLINED_FUNCTION_68_1();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
      *(v0 + 128) = 0;
      OUTLINED_FUNCTION_41_8();
    }

    sub_18F0EF148(v0 + 456, &qword_1EACD0620);
  }

  else
  {
    OUTLINED_FUNCTION_49_0(v0 + 456);
    OUTLINED_FUNCTION_49_0(v0 + 56);
    OUTLINED_FUNCTION_41_8();
    *(v0 + 128) = 0;
  }

  sub_18F0EF148(v0 + 96, &qword_1EACD27C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v7 = 0;
  for (i = 0; ; i = *(v0 + 704))
  {
    v9 = *(v0 + 840);
    v10 = *(v0 + 832);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 496);
    *(v0 + 680) = v10;
    *(v0 + 688) = v9;
    OUTLINED_FUNCTION_2_35();
    v11 = sub_18F522C9C();
    MEMORY[0x193ADB000](v11);

    OUTLINED_FUNCTION_23_4();
    v12 = *(v0 + 672);
    *(v0 + 648) = *(v0 + 664);
    *(v0 + 656) = v12;
    if (i)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if (!i)
    {
      i = 0xE000000000000000;
    }

    *(v0 + 632) = v13;
    *(v0 + 640) = i;
    sub_18F12A000();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8_5();
    v14 = sub_18F5225CC();
    v16 = v15;

    *(v0 + 840) = v16;
    *(v0 + 832) = v14;
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_10_21();
    if (v0 == -664)
    {
      OUTLINED_FUNCTION_35_9();
      sub_18F520C6C();

      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_68_1();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_21_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    OUTLINED_FUNCTION_15_4();
    if (OUTLINED_FUNCTION_36_2())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
    if (OUTLINED_FUNCTION_12_23())
    {
      OUTLINED_FUNCTION_3_23();
      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_93();
      v32(v30, v31);
      v33 = swift_task_alloc();
      v34 = OUTLINED_FUNCTION_16_17(v33);
      *v34 = v35;
      OUTLINED_FUNCTION_1_32(v34, v36);
      OUTLINED_FUNCTION_68_1();

      return sub_18F1E1ED4(v37, v38, v39, v40);
    }

    *(v0 + 696) = 0;
    *(v0 + 704) = 0xE000000000000000;
    swift_getAtPartialKeyPath();
    OUTLINED_FUNCTION_14_4();
    sub_18F52299C();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 528);
    v7 = *(v0 + 696);
  }

  OUTLINED_FUNCTION_4_26();
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_27_3(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_0_38(v20, v22);
  OUTLINED_FUNCTION_68_1();

  return sub_18F3F4F20(v23, v24, v25, v26, v27);
}

uint64_t _URLRepresentableEntity.urlRepresentationParameter.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_18F5227DC();
  OUTLINED_FUNCTION_80_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return OUTLINED_FUNCTION_56();
}

uint64_t _EntityURLRepresentation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[1] = a1;
  a3[2] = a2;
  sub_18F52288C();
  result = sub_18F521D2C();
  *a3 = result;
  return result;
}

double _EntityURLRepresentation.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _EntityURLRepresentation.init(_:)(a1, a2, &v6);
  result = *&v6;
  v5 = v7;
  *a3 = v6;
  *(a3 + 16) = v5;
  return result;
}

__n128 _EntityURLRepresentation.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t _EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

Swift::Void __swiftcall _EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  sub_18F12A000();
  OUTLINED_FUNCTION_8_5();
  v1 = sub_18F5225CC();
  MEMORY[0x193ADB000](v1);
}

uint64_t _EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_28();
  OUTLINED_FUNCTION_29_0();
  sub_18F521D7C();
  v2 = sub_18F522C9C();
  MEMORY[0x193ADB000](v2);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  swift_allocObject();
  v3 = sub_18F521CDC();
  *v4 = a1;
  sub_18F129FD4(v3);

  OUTLINED_FUNCTION_56();
  sub_18F521D5C();
}

{
  OUTLINED_FUNCTION_5_28();
  OUTLINED_FUNCTION_29_0();
  sub_18F521D7C();
  v2 = sub_18F522C9C();
  MEMORY[0x193ADB000](v2);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000]();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  swift_allocObject();
  v3 = sub_18F521CDC();
  *v4 = a1;
  sub_18F129FD4(v3);

  OUTLINED_FUNCTION_56();
  sub_18F521D5C();
}

uint64_t _EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)()
{
  OUTLINED_FUNCTION_5_28();
  v5 = v0;
  sub_18F52288C();
  sub_18F521D7C();
  v1 = sub_18F522C9C();
  MEMORY[0x193ADB000](v1);

  MEMORY[0x193ADB000](125, 0xE100000000000000);
  MEMORY[0x193ADB000](v5, 0xEA00000000007974);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  swift_allocObject();
  v2 = sub_18F521CDC();
  *v3 = swift_getKeyPath();
  sub_18F129FD4(v2);
  OUTLINED_FUNCTION_56();
  sub_18F521D5C();
}

uint64_t sub_18F209498@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  result = v3(v4, AssociatedConformanceWitness);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t _EntityURLRepresentation.StringInterpolation.Token.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t sub_18F2095E8()
{
  sub_18F522EFC();
  _EntityURLRepresentation.StringInterpolation.Token.hash(into:)();
  return sub_18F522F4C();
}

_BYTE *sub_18F2096F4(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F2097B0(uint64_t a1)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = type metadata accessor for DisplayRepresentation();
  *(v2 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  v4 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v4;

  return MEMORY[0x1EEE6DFA0](sub_18F209898, 0, 0);
}

uint64_t sub_18F209898()
{
  v22 = v0;
  if (qword_1ED6FD658 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  v0[52] = __swift_project_value_buffer(v1, qword_1ED707698);
  sub_18F1A81D8((v0 + 2), (v0 + 10));
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  sub_18F16AD28((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v6 = v0[7];
    v7 = v0[8];
    v19 = *(v0 + 5);
    v20 = v6;
    v21 = v7;
    v8 = EntityIdentifier.viewDebugDescription.getter();
    v10 = sub_18F11897C(v8, v9, &v18);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Fetching display representation for identifier %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v12 = v0[5];
  v11 = v0[6];
  v0[53] = v12;
  v0[54] = v11;
  v13 = v0[7];
  v14 = v0[8];
  v0[55] = v13;
  v0[56] = v14;
  v0[42] = v12;
  v0[43] = v11;
  v0[44] = v13;
  v0[45] = v14;
  v0[46] = v0[9];
  sub_18F1A81D8((v0 + 2), (v0 + 18));
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_18F209AA4;
  v16 = v0[51];

  return sub_18F27F504(v16, (v0 + 42), v0 + 46, v12, v11);
}

uint64_t sub_18F209AA4()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_18F209E50;
  }

  else
  {
    v2 = sub_18F209BD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F209BD8()
{
  v32 = v1;
  v2 = v1[50];
  v3 = v1[48];
  sub_18F209F7C(v1[51], v2);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = v1[50];
  if (EnumTagSinglePayload == 1)
  {
    sub_18F1C7564(v5);
    sub_18F1A81D8((v1 + 2), (v1 + 26));
    v6 = sub_18F52163C();
    v7 = sub_18F52221C();
    sub_18F16AD28((v1 + 2));
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_0_39();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      v10 = OUTLINED_FUNCTION_1_33(4.8149e-34);
      v12 = sub_18F11897C(v10, v11, v31);

      *(v8 + 4) = v12;
      OUTLINED_FUNCTION_3_24(&dword_18F0E9000, v13, v14, "Failed to retrieve display representation for identifier %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();

      v15 = v0;
    }

    else
    {
      v26 = v1[51];

      v15 = v26;
    }

    sub_18F1C7564(v15);
    v27 = 1;
  }

  else
  {
    sub_18F143B8C(v5, v1[49]);
    sub_18F1A81D8((v1 + 2), (v1 + 34));
    v16 = sub_18F52163C();
    v17 = sub_18F5221FC();
    sub_18F16AD28((v1 + 2));
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_0_39();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      v20 = OUTLINED_FUNCTION_1_33(4.8149e-34);
      v22 = sub_18F11897C(v20, v21, v31);

      *(v18 + 4) = v22;
      OUTLINED_FUNCTION_3_24(&dword_18F0E9000, v23, v24, "Successfully fetched display representation for identifier %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();

      v25 = v0;
    }

    else
    {
      v28 = v1[51];

      v25 = v28;
    }

    sub_18F1C7564(v25);
    sub_18F143B8C(v1[49], v1[47]);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1[47], v27, 1, v1[48]);

  v29 = v1[1];

  return v29();
}

uint64_t sub_18F209E50()
{

  v1 = *(v0 + 8);

  return v1();
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

uint64_t sub_18F209EDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18F209F1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_18F209F7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ProgressReportingIntent.progress.getter()
{
  v0 = type metadata accessor for IntentContext();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IntentContext.current.getter(v2);
  v3 = *&v2[*(v0 + 56)];
  sub_18F178EA4(v2);
  return v3;
}

uint64_t sub_18F20A0DC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0);
  v3 = sub_18F5216CC();
  v49 = *(v2 + 16);
  if (v49)
  {
    v4 = 0;
    v5 = v2 + 32;
    do
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_34;
      }

      sub_18F139A94(v5, v61);
      v6 = *(&v62 + 1);
      v7 = v63;
      __swift_project_boxed_opaque_existential_1Tm(v61, *(&v62 + 1));
      v8 = (*(*(v7 + 8) + 16))(v6);
      if (v9)
      {
        v10 = v8;
        v11 = v9;
        sub_18F0FD724(v61, &v59);
        swift_isUniquelyReferenced_nonNull_native();
        *&v56 = v3;
        v12 = sub_18F0F713C(v10, v11);
        if (__OFADD__(v3[2], (v13 & 1) == 0))
        {
          goto LABEL_35;
        }

        v14 = v12;
        v15 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27E0);
        if (sub_18F5229DC())
        {
          v16 = sub_18F0F713C(v10, v11);
          if ((v15 & 1) != (v17 & 1))
          {
            goto LABEL_37;
          }

          v14 = v16;
        }

        if (v15)
        {

          v3 = v56;
          v18 = *(v56 + 56) + 40 * v14;
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          sub_18F0FD0B4(&v59, v18);
        }

        else
        {
          v3 = v56;
          *(v56 + 8 * (v14 >> 6) + 64) |= 1 << v14;
          v19 = (v3[6] + 16 * v14);
          *v19 = v10;
          v19[1] = v11;
          sub_18F0FD0B4(&v59, v3[7] + 40 * v14);
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_36;
          }

          v3[2] = v22;
        }
      }

      ++v4;
      sub_18F13E500(v61);
      v5 += 48;
    }

    while (v49 != v4);
  }

  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 64);
  v26 = (v23 + 63) >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v27 = 0;
  while (v25)
  {
    v28 = v27;
LABEL_22:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v28 << 6);
    v31 = (*(a1 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    sub_18F0FD724(*(a1 + 56) + 40 * v30, &v62);
    *&v59 = v32;
    *(&v59 + 1) = v33;
    sub_18F0FD0B4(&v62, &v60);
    sub_18F20A644(&v59, &v56);
    v34 = v56;
    v35 = v3[2];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if (v35)
    {
      v36 = sub_18F0F713C(v34, *(&v34 + 1));
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_18F0FD724(v3[7] + 40 * v36, v55);
      sub_18F0FD0B4(v55, &v51);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      sub_18F20A644(&v59, &v56);

      sub_18F0FD0B4(v57, v55);
      v39 = *(&v52 + 1);
      v40 = v53;
      __swift_mutable_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      (*(*(v40 + 8) + 80))(v55, v39);
      sub_18F20A6B4(&v59);
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
      v27 = v28;
    }

    else
    {

LABEL_26:
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      if (qword_1ED6FEFE8 != -1)
      {
        swift_once();
      }

      v41 = sub_18F52165C();
      __swift_project_value_buffer(v41, qword_1ED7077A8);
      sub_18F20A644(&v59, &v56);
      v42 = sub_18F52163C();
      v43 = sub_18F52221C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v44 = 136315138;
        v51 = v56;
        v52 = v57[0];
        v53 = v57[1];
        v54 = v58;
        *&v55[0] = v50;
        v45 = v56;
        __swift_destroy_boxed_opaque_existential_1Tm(&v52);
        v46 = sub_18F11897C(v45, *(&v45 + 1), v55);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_18F0E9000, v42, v43, "Unable to find draft parameter for key: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x193ADD350](v50, -1, -1);
        MEMORY[0x193ADD350](v44, -1, -1);
      }

      else
      {

        sub_18F20A6B4(&v56);
      }

      sub_18F20A6B4(&v59);
      v27 = v28;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
    }

    v25 = *(a1 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

uint64_t sub_18F20A644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F20A6B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AppIntentsExtension.configuration.getter@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(LNExtensionConnectionHandler) init];
  *a1 = result;
  return result;
}

unint64_t sub_18F20A758()
{
  result = qword_1ED6FE628;
  if (!qword_1ED6FE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE628);
  }

  return result;
}

uint64_t sub_18F20A7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F20A81C, 0, 0);
}

uint64_t sub_18F20A81C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18F18C388(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_18F521CDC();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  v0[7] = sub_18F129FD4(v4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_18F20A9A8;

  return sub_18F1922E0();
}

uint64_t sub_18F20A9A8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {

    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F20AABC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_18();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_17();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v0 = Array<A>.items.getter();

  OUTLINED_FUNCTION_20_0();

  return v1(v0);
}

uint64_t sub_18F20ABA8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v1[14] = v6;
  v1[15] = v0;
  v1[13] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v1[16] = swift_task_alloc();
  v1[17] = *(v3 + 24);
  v1[18] = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[19] = AssociatedTypeWitness;
  v9 = sub_18F52254C();
  v1[20] = v9;
  v1[21] = *(v9 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = *(AssociatedTypeWitness - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v5;
  v1[26] = v10;
  v1[27] = v11;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18F20AD50()
{
  v56 = v0;
  v55 = *(v0 + 216);
  sub_18F173914();
  if (v2 >> 60 == 15)
  {
    v1 = 0;
    v2 = 0;
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2800);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
    v8 = OUTLINED_FUNCTION_22();
    v9(v8);
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 184);
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v15 = sub_18F52165C();
    __swift_project_value_buffer(v15, qword_1ED7077A8);
    v16 = v14[4];
    v52 = v14[3];
    v54 = *v14;
    v17 = *(v12 + 16);
    v17(v11, v10, v13);

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v18 = sub_18F52163C();
    v19 = sub_18F52223C();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 200);
    if (v20)
    {
      v50 = v17;
      v23 = *(v0 + 184);
      v22 = *(v0 + 192);
      v24 = *(v0 + 152);
      v25 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = v51;
      *v25 = 136315394;
      *(v25 + 4) = sub_18F11897C(v52, v16, &v55);
      *(v25 + 12) = 2080;
      v50(v22, v21, v24);
      v26 = sub_18F52194C();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v21, v24);
      v30 = sub_18F11897C(v26, v28, &v55);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_18F0E9000, v18, v19, "Perform %s with: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v51, -1, -1);
      MEMORY[0x193ADD350](v25, -1, -1);
    }

    else
    {
      v46 = *(v0 + 184);
      v47 = *(v0 + 152);

      v29 = *(v46 + 8);
      v29(v21, v47);
    }

    *(v0 + 224) = v29;
    v53 = (v54 + *v54);
    v48 = swift_task_alloc();
    *(v0 + 232) = v48;
    *v48 = v0;
    v48[1] = sub_18F20B204;
    v49 = *(v0 + 208);

    return v53(v49);
  }

  else
  {
    v31 = *(v0 + 216);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 160);
    v35 = *(v0 + 136);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    (*(v33 + 8))(v32, v34);
    *(v0 + 96) = v31;
    type metadata accessor for IntentParameterContext();
    sub_18F3C0F34(v35, v0 + 16);
    v40 = swift_task_alloc();
    *(v0 + 256) = v40;
    *v40 = v0;
    v40[1] = sub_18F20B490;
    v41 = OUTLINED_FUNCTION_26_14();

    return sub_18F20BAA0(v41, v42, v43, v44);
  }
}

uint64_t sub_18F20B204()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F20B310()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_20_14();
  v2(v1);
  v0[35] = v0[31];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F521D7C();

  v4 = v0[18];
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_16_18();
    sub_18F521DFC();

    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    goto LABEL_5;
  }

  if (!v3)
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);

LABEL_5:
    OUTLINED_FUNCTION_14_23();

    OUTLINED_FUNCTION_71();

    return v11();
  }

  v13 = v0[16];
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_19_15(v18);
  *v13 = v0;
  OUTLINED_FUNCTION_2_36();

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F20B490()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  sub_18F0FA038(v3 + 16, &qword_1EACD27F0);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F20B5A8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[33];
  if (!v1)
  {
    v1 = sub_18F521D2C();
  }

  v0[35] = v1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v2 = sub_18F521D7C();

  v3 = v0[18];
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_16_18();
    sub_18F521DFC();

    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
    goto LABEL_7;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);

LABEL_7:
    OUTLINED_FUNCTION_14_23();

    OUTLINED_FUNCTION_71();

    return v10();
  }

  v12 = v0[16];
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_19_15(v17);
  *v12 = v0;
  OUTLINED_FUNCTION_2_36();

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F20B72C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v8 + 296) = v0;

  sub_18F0FA038(v5, &qword_1EACCF7A0);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F20B874()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_58_0();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_14_23();

  OUTLINED_FUNCTION_71();

  return v4();
}

void sub_18F20B904()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_20_14();
  v1(v0);
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

void sub_18F20B998()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

void sub_18F20BA1C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_12_24();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F20BAA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  v6 = sub_18F5211EC();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_18F52254C();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a1;
  v4[16] = v8;
  v4[17] = v9;

  return MEMORY[0x1EEE6DFA0](sub_18F20BC34, 0, 0);
}

uint64_t sub_18F20BC34()
{
  OUTLINED_FUNCTION_24_4();
  v1 = [*(v0 + 136) typeIdentifier];
  if (!v1)
  {

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_29_1();

    __asm { BRAA            X2, X16 }
  }

  v2 = v1;
  v3 = *(v0 + 40);
  sub_18F5218DC();

  v4 = dynamic_cast_existential_1_conditional(v3);
  *(v0 + 144) = v4;
  if (v4)
  {
    v5 = *(v0 + 136);
    OUTLINED_FUNCTION_31_0();
    *(v0 + 152) = swift_task_alloc();
    v6 = [v5 data];
    sub_18F520D4C();

    v7 = sub_18F52153C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
    sub_18F5214EC();
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_18F20BEC4;
    OUTLINED_FUNCTION_29_1();

    return MEMORY[0x1EEDBF5A0]();
  }

  else
  {

    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_15_16(v18);
    OUTLINED_FUNCTION_29_1();

    return sub_18F20DB54(v19, v20, v21);
  }
}

uint64_t sub_18F20BEC4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F20BFBC()
{
  OUTLINED_FUNCTION_24_4();
  v1 = v0[16];
  v13 = *(v0 + 5);
  v2 = v0[5];
  v3 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v1, v3 ^ 1u, 1, v2);

  *(swift_task_alloc() + 16) = v13;
  sub_18F521DBC();
  OUTLINED_FUNCTION_16_18();
  sub_18F107A24(v4, v5, v6, v7);

  v8 = v0[3];
  v9 = OUTLINED_FUNCTION_22();
  v10(v9);

  OUTLINED_FUNCTION_20_0();

  return v11(v8);
}

uint64_t sub_18F20C128(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_18F20C2E8()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 168);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  if (!swift_dynamicCast())
  {

    swift_willThrow();
    goto LABEL_8;
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);

  (*(v6 + 32))(v3, v4, v7);
  v8 = *(v6 + 16);
  *(v0 + 184) = v8;
  *(v0 + 192) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9 = OUTLINED_FUNCTION_22_17();
  v8(v9);
  LODWORD(v4) = (*(v6 + 88))(v5, v7);
  LODWORD(v3) = *MEMORY[0x1E6965BD0];
  v10 = *(v6 + 8);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  if (v4 != v3)
  {
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    sub_18F20E078();
    swift_allocError();
    (v8)(v19, v17, v18);
    swift_willThrow();
    v10(v17, v18);

LABEL_8:
    OUTLINED_FUNCTION_13_22();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_15_16(v11);
  OUTLINED_FUNCTION_176();

  return sub_18F20DB54(v12, v13, v14);
}

uint64_t sub_18F20C55C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v4;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F20C65C()
{
  v1 = *(v0 + 200);
  if (*(v0 + 224))
  {
    (v1)(*(v0 + 80), *(v0 + 56));

    v2 = *(v0 + 224);
    OUTLINED_FUNCTION_13_22();

    OUTLINED_FUNCTION_20_0();

    return v3(v2);
  }

  else
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    sub_18F20E078();
    swift_allocError();
    v5(v8, v6, v7);
    swift_willThrow();
    v9 = OUTLINED_FUNCTION_22();
    v1(v9);

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F20C7E8()
{
  OUTLINED_FUNCTION_31();
  (*(v0 + 200))(*(v0 + 80), *(v0 + 56));

  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F20C890()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_18F18A260;

  return sub_18F20ABA8();
}

void *sub_18F20C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_27();
  v9 = v8;
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v9 + 32))(&v11[v10], a1, a3);
  return &unk_18F548FD0;
}

uint64_t sub_18F20CA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_18F20CB04;

  return sub_18F1922E0();
}

uint64_t sub_18F20CB04()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_18F20CC34()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_16_18();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_17();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v0 = Array<A>.items.getter();

  OUTLINED_FUNCTION_20_0();

  return v1(v0);
}

uint64_t sub_18F20CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a3;
  v7[10] = a4;
  v7[7] = a1;
  v7[8] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F20CD54()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v0[2] = v0[7];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DD8);
  swift_getAssociatedTypeWitness();
  v0[14] = sub_18F20DA14();
  v5 = sub_18F521B3C();
  v0[15] = v5;

  v8 = (v3 + *v3);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_18F20CF00;

  return v8(v5);
}

uint64_t sub_18F20CF00()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F20D008()
{
  OUTLINED_FUNCTION_31();
  v0[3] = v0[17];
  v1 = sub_18F521DBC();
  v0[19] = v1;
  OUTLINED_FUNCTION_8_17();
  if ((sub_18F52213C() & 1) != 0 && sub_18F20D564(v0[11]))
  {
    v2 = v0[7];
    v3 = v0[8];
    v10 = *(v0 + 11);

    v0[4] = v2;
    v4 = swift_task_alloc();
    v0[20] = v4;
    *(v4 + 16) = v10;
    *(v4 + 32) = v3;
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_18F20D17C;
    v6 = v0[13];
    v7 = v0[14];

    return MEMORY[0x1EEE18F40](&unk_18F548F80, v4, v6, v1, v7);
  }

  else
  {
    OUTLINED_FUNCTION_20_0();

    return v8();
  }
}

uint64_t sub_18F20D17C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_18F20D284()
{
  OUTLINED_FUNCTION_24_4();
  *(v0 + 40) = *(v0 + 176);
  sub_18F521DBC();
  OUTLINED_FUNCTION_8_17();
  if (sub_18F52213C())
  {
  }

  else
  {
    *(v0 + 48) = *(v0 + 176);
    *(swift_task_alloc() + 16) = *(v0 + 88);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_18F521BEC();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_176();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_18F20D3C8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F20D424()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F20D480@<X0>(uint64_t a1@<X8>)
{
  sub_18F173914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2800);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v3 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_18F20D590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a1;
  v5[10] = a3;
  v5[13] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_18F20D5BC, 0, 0);
}

uint64_t sub_18F20D5BC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[12];
  v0[7] = v0[13];
  sub_18F521DBC();
  v0[8] = *(*(v1 + 8) + 24);
  swift_getWitnessTable();
  type metadata accessor for IntentParameterContext();
  sub_18F3C0F34(v1, (v0 + 2));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_18F20D6B4;
  v3 = OUTLINED_FUNCTION_26_14();

  return sub_18F20BAA0(v3, v4, v5, v6);
}

uint64_t sub_18F20D6B4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  sub_18F0FA038(v5 + 16, &qword_1EACD27F0);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F20D7EC()
{
  **(v0 + 72) = *(v0 + 128);
  OUTLINED_FUNCTION_71();
  return v1();
}

uint64_t sub_18F20D840(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  v8 = *a2;
  v10 = *v4;
  v9 = v4[1];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_18F130D80;

  return sub_18F20CD20(v8, a3, v10, v9, v12, v13, v14);
}

uint64_t sub_18F20D904(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F20D964()
{
  sub_18F522EFC();
  sub_18F1EFFBC(v4, v1, v2, *(v0 + 16));
  return sub_18F522F4C();
}

uint64_t sub_18F20D9A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_18F20DA14()
{
  result = qword_1EACD27E8;
  if (!qword_1EACD27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD27E8);
  }

  return result;
}

uint64_t sub_18F20DA78()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_31_9();

  return sub_18F20D590(v2, v3, v4, v5, v6);
}

uint64_t sub_18F20DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F20DB78, 0, 0);
}

uint64_t sub_18F20DB78()
{
  OUTLINED_FUNCTION_31();
  v1 = [*(v0 + 296) data];
  sub_18F520D4C();

  sub_18F0F21A8(0, &qword_1EACD0540);
  sub_18F0F21A8(0, &unk_1ED6FE390);
  OUTLINED_FUNCTION_16_18();
  v4 = sub_18F5222FC();
  v5 = OUTLINED_FUNCTION_22_17();
  sub_18F123A1C(v5, v6);
  if (!v4)
  {
    goto LABEL_2;
  }

  LNValue.asPropertyType.getter();

  if (!*(v0 + 120))
  {
    sub_18F0FA038(v0 + 96, &qword_1EACD0620);
LABEL_2:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_3:
    sub_18F0FA038(v0 + 56, &qword_1EACD0620);
    goto LABEL_4;
  }

  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  v7 = OUTLINED_FUNCTION_22();
  sub_18F3C12AC(v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  if (!*(v0 + 80))
  {
    goto LABEL_3;
  }

  v10 = *(v0 + 304);
  sub_18F0FD0B4((v0 + 56), v0 + 16);
  sub_18F20E1D4(v10, v0 + 176);
  if (!*(v0 + 200))
  {
    sub_18F0FA038(v0 + 176, &qword_1EACD27F0);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
LABEL_4:
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_31_9();

    __asm { BRAA            X2, X16 }
  }

  sub_18F0FD0B4((v0 + 176), v0 + 136);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
  v11 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v11);
  *(v0 + 280) = v11;
  __swift_allocate_boxed_opaque_existential_1((v0 + 256));
  OUTLINED_FUNCTION_31_0();
  (*(v12 + 16))();
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v13[1] = sub_18F20DE30;
  OUTLINED_FUNCTION_31_9();

  return sub_18F1AD1B0(v14, v15, v16, v17);
}

uint64_t sub_18F20DE30()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 256);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F20DF30()
{
  OUTLINED_FUNCTION_69();
  if (*(v0 + 240))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    sub_18F521DBC();
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 288);
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_18F0FA038(v0 + 216, &qword_1EACD0620);
    v1 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_20_0();

  return v2(v1);
}

uint64_t sub_18F20E00C()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

unint64_t sub_18F20E078()
{
  result = qword_1EACD27F8;
  if (!qword_1EACD27F8)
  {
    sub_18F5211EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD27F8);
  }

  return result;
}

uint64_t sub_18F20E0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_18F18C388(a2, a2);
  v6 = *(a2 - 8);
  swift_allocObject();
  v7 = sub_18F521CDC();
  (*(v6 + 16))(v8, a1, a2);
  result = sub_18F129FD4(v7);
  *a3 = result;
  return result;
}

uint64_t sub_18F20E1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD27F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F20E244()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_19(v1);

  return sub_18F20CA48(v2, v3, v4, v5, v6);
}

uint64_t sub_18F20E304()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_19(v1);

  return sub_18F20A7F4(v2, v3, v4, v5, v6);
}

unint64_t sub_18F20E3C4()
{
  result = qword_1EACCEB30[0];
  if (!qword_1EACCEB30[0])
  {
    sub_18F520C8C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACCEB30);
  }

  return result;
}

uint64_t sub_18F20E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F20E444, 0, 0);
}

uint64_t sub_18F20E444()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18F18C388(AssociatedTypeWitness, AssociatedTypeWitness);
  v3 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v4 = sub_18F521CDC();
  (*(v3 + 16))(v5, v1, AssociatedTypeWitness);
  v0[7] = sub_18F129FD4(v4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_18F20E5D0;

  return sub_18F1922E0();
}

uint64_t sub_18F20E5D0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {

    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F20E6E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30();
  swift_getAssociatedConformanceWitness();
  Array<A>.items.getter();

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_59_1();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F20E7AC()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[7] = v5;
  v1[8] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v1[11] = swift_task_alloc();
  v1[12] = *(v3 + 24);
  v1[13] = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[14] = AssociatedTypeWitness;
  v8 = sub_18F52254C();
  v1[15] = v8;
  v1[16] = *(v8 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v1[18] = swift_task_alloc();
  v1[19] = *(AssociatedTypeWitness - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F20E97C()
{
  v54 = v0;
  sub_18F520C8C();
  v1 = OUTLINED_FUNCTION_9_19();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = sub_18F520B7C();
  v7 = v6;
  sub_18F0EF148(*(v0 + 144), &qword_1EACD0360);
  *(v0 + 16) = v5;
  *(v0 + 24) = v7;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v8 = swift_dynamicCast();
  v9 = *(v0 + 112);
  if (v8)
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 136);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, *(v0 + 112));
    (*(v11 + 32))(v10, v12, v9);
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED7077A8);
    v19 = v17[4];
    v50 = v17[3];
    v52 = *v17;
    v20 = *(v15 + 16);
    v20(v14, v13, v16);

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v21 = sub_18F52163C();
    v22 = sub_18F52223C();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 168);
    if (v23)
    {
      v48 = v20;
      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 112);
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v53[0] = v49;
      *v28 = 136315394;
      *(v28 + 4) = sub_18F11897C(v50, v19, v53);
      *(v28 + 12) = 2080;
      v48(v25, v24, v27);
      v29 = sub_18F52194C();
      v31 = v30;
      v32 = *(v26 + 8);
      v32(v24, v27);
      v33 = sub_18F11897C(v29, v31, v53);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_18F0E9000, v21, v22, "Perform %s with: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v49, -1, -1);
      MEMORY[0x193ADD350](v28, -1, -1);
    }

    else
    {
      v44 = *(v0 + 152);
      v45 = *(v0 + 112);

      v32 = *(v44 + 8);
      v32(v24, v45);
    }

    *(v0 + 184) = v32;
    v51 = (v52 + *v52);
    v46 = swift_task_alloc();
    *(v0 + 192) = v46;
    *v46 = v0;
    v46[1] = sub_18F20EE80;
    v47 = *(v0 + 176);

    return v51(v47);
  }

  else
  {
    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    v36 = *(v0 + 120);
    v37 = OUTLINED_FUNCTION_9_19();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v9);
    (*(v35 + 8))(v34, v36);
    v40 = OUTLINED_FUNCTION_0_40();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);

    OUTLINED_FUNCTION_71();

    return v42();
  }
}

uint64_t sub_18F20EE80()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  *(v2 + 200) = v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F20EF88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v1 = sub_18F521D7C();
  if (v1 == 1)
  {
    v4 = v0[22];
    v5 = v0[23];
    v6 = v0[14];
    sub_18F521DFC();

    v5(v4, v6);
    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = OUTLINED_FUNCTION_1_34();
    v3(v2);

LABEL_5:
    v7 = OUTLINED_FUNCTION_0_40();
    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_59_1();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  type metadata accessor for IntentDialog(0);
  v19 = OUTLINED_FUNCTION_9_19();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = swift_task_alloc();
  v0[27] = v23;
  type metadata accessor for IntentParameterContext();
  *v23 = v0;
  v23[1] = sub_18F20F154;
  OUTLINED_FUNCTION_59_1();

  return IntentParameterContext.requestDisambiguation(among:dialog:)();
}

uint64_t sub_18F20F154()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  sub_18F0EF148(*(v2 + 88), &qword_1EACCF7A0);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F20F2A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_1_34();
  v1(v0);
  v2 = OUTLINED_FUNCTION_0_40();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_18F20F350()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_1_34();
  v1(v0);
  OUTLINED_FUNCTION_18_18();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F20F3E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_1_34();
  v1(v0);
  OUTLINED_FUNCTION_18_18();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F20F480()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_18F18A260;

  return sub_18F20E7AC();
}

unint64_t sub_18F20F558()
{
  result = qword_1EACD2808;
  if (!qword_1EACD2808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD2810);
    sub_18F20E3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2808);
  }

  return result;
}

void *sub_18F20F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_27();
  v9 = v8;
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v9 + 32))(&v11[v10], a1, a3);
  return &unk_18F5491F8;
}

uint64_t sub_18F20F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_18F20F778;

  return sub_18F1922E0();
}

uint64_t sub_18F20F778()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_18F20F8A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30();
  swift_getAssociatedConformanceWitness();
  Array<A>.items.getter();

  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_59_1();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_18F20F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a3;
  v7[6] = a4;
  v7[4] = a1;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F20F9A4()
{
  v0[2] = v0[4];
  v1 = v0[7];
  v2 = v0[8];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2810);
  swift_getAssociatedTypeWitness();
  sub_18F210088();
  v4 = sub_18F521B3C();
  v0[9] = v4;
  v5 = v4;
  v6 = v0[5];

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_18F20FB84;

  return v9(v5);
}

uint64_t sub_18F20FB84()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F20FC8C()
{
  OUTLINED_FUNCTION_69();
  v0[3] = v0[11];
  sub_18F521DBC();
  swift_getWitnessTable();
  v1 = sub_18F52213C();
  v2 = v0[11];
  if (v1)
  {

    v2 = 0;
  }

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_18F20FD3C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F20FD98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - v4;
  v6 = sub_18F520C8C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_18F520B7C();
  if (v1)
  {
    return sub_18F0EF148(v5, &qword_1EACD0360);
  }

  v10 = v7;
  v11 = v8;
  sub_18F0EF148(v5, &qword_1EACD0360);
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = 0;
  v14[4] = 0;
  v15 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v13 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t sub_18F20FF0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 16) = a1;
  v7 = *a2;
  v9 = *v4;
  v8 = v4[1];
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  *v10 = v5;
  v10[1] = sub_18F130D80;

  return sub_18F20F970(v7, v11, v9, v8, v12, v13, v14);
}

uint64_t sub_18F20FFC0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F210018()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_18F210088()
{
  result = qword_1EACD2818;
  if (!qword_1EACD2818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD2810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD2818);
  }

  return result;
}

uint64_t sub_18F2100EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_19(v1);
  OUTLINED_FUNCTION_59_1();

  return sub_18F20F6BC(v2, v3, v4, v5, v6);
}

uint64_t sub_18F2101A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_19(v1);
  OUTLINED_FUNCTION_59_1();

  return sub_18F20E41C(v2, v3, v4, v5, v6);
}

uint64_t sub_18F2102C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F2102F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22[4] + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_9();
  swift_getAssociatedConformanceWitness();
  if (sub_18F21025C())
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v26 = v22[2];
    v27 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v27, qword_1ED7077A8);
    v28 = v26;
    v29 = sub_18F52163C();
    v30 = sub_18F52223C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v22[2];
      v32 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = [v31 contentType];
      v34 = [v33 contentType];

      v35 = sub_18F5218DC();
      v37 = v36;

      v38 = sub_18F11897C(v35, v37, &a10);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2080;
      v39 = OUTLINED_FUNCTION_28_21();
      v41 = v40(v39);
      v43 = sub_18F11897C(v41, v42, &a10);

      *(v32 + 14) = v43;
      _os_log_impl(&dword_18F0E9000, v29, v30, "Extracting %s from Transferable type %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    v44 = swift_task_alloc();
    v22[6] = v44;
    *v44 = v22;
    v44[1] = sub_18F210770;
    OUTLINED_FUNCTION_20();

    return sub_18F2108F0(v45, v46, v47, v48, v49, v50, v51);
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v54 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v54, qword_1ED7077A8);
    v55 = sub_18F52163C();
    v56 = sub_18F52221C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      a10 = v58;
      *v57 = 136315138;
      v59 = OUTLINED_FUNCTION_28_21();
      v61 = v60(v59);
      v63 = sub_18F11897C(v61, v62, &a10);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_18F0E9000, v55, v56, "Transferable extraction requested for non-transferable type %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_32();
    }

    v64 = v22[4];
    v65 = v22[3];
    v66 = swift_task_alloc();
    *v66 = v65;
    v66[1] = v64;
    KeyPath = swift_getKeyPath();

    v68 = swift_task_alloc();
    v68[2] = v65;
    v68[3] = v64;
    v68[4] = KeyPath;
    v69 = sub_18F0F21A8(0, &unk_1ED6FE390);
    sub_18F10C138(sub_18F2121E4, v68, v65, v69, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v70);

    v71 = OUTLINED_FUNCTION_19_3();
    static AppEntity.valueType.getter(v71, v72);
    v73 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    v74 = OUTLINED_FUNCTION_53();
    sub_18F265138(v74, v75);
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_20();

    return v78(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_18F210770()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  OUTLINED_FUNCTION_20_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id sub_18F21085C@<X0>(void *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = AppEntity.asValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a1 = result;
  return result;
}

uint64_t sub_18F2108F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F21091C, 0, 0);
}

uint64_t sub_18F21091C()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = sub_18F0F21A8(0, &unk_1ED6FE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 64);
  *(v5 + 16) = *(v0 + 48);
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v1;
  *(v5 + 64) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 88) = v7;
  *v7 = v8;
  v7[1] = sub_18F210A48;
  OUTLINED_FUNCTION_68_0();

  return MEMORY[0x1EEE6DD58](v9, v10, v11, 0, 0, v12, v5, v4);
}

uint64_t sub_18F210A48()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F210B48()
{
  OUTLINED_FUNCTION_21();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static AppEntity.valueType.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v2 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v3 = OUTLINED_FUNCTION_53();
  sub_18F265138(v3, v4);
  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_18F210C28()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v1[24] = v4;
  v1[25] = v0;
  v1[22] = v5;
  v1[23] = v2;
  v6 = sub_18F520B3C();
  v1[26] = v6;
  OUTLINED_FUNCTION_51(v6);
  v1[27] = v7;
  v1[28] = swift_task_alloc();
  type metadata accessor for DisplayRepresentation();
  v1[29] = swift_task_alloc();
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F210D5C()
{
  v1 = *(v0 + 176);
  if (!v1 || (AssociatedTypeWitness = swift_getAssociatedTypeWitness(), !dynamic_cast_existential_1_conditional(AssociatedTypeWitness)))
  {
    sub_18F142A38(*(v0 + 184));
    goto LABEL_8;
  }

  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 200), *(v0 + 184));
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2820);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 16), v0 + 136);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_18F211064;
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_43_2();

    return sub_18F2102C4(v5, v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  if (!swift_dynamicCast())
  {
    sub_18F142A38(*(v0 + 184));

    v20 = OUTLINED_FUNCTION_18_19();
    v21(v20);
LABEL_8:
    OUTLINED_FUNCTION_57_3();

    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_43_2();

    __asm { BRAA            X2, X16 }
  }

  sub_18F0FD0B4((v0 + 56), v0 + 96);
  v12 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  v13 = OUTLINED_FUNCTION_53();
  *(v0 + 280) = AppEntity.asValueWithDisplayRepresentation.getter(v13, v14, v12);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  v15 = OUTLINED_FUNCTION_46_8();
  v16(v15);
  sub_18F52193C();
  *(v0 + 288) = v17;
  v18 = swift_task_alloc();
  *(v0 + 296) = v18;
  *v18 = v0;
  v18[1] = sub_18F21120C;
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_43_2();

  return sub_18F21158C();
}

uint64_t sub_18F211064()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F211170()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_57_3();

  v4 = OUTLINED_FUNCTION_12_7();

  return v5(v4);
}

uint64_t sub_18F21120C()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {
  }

  else
  {

    *(v4 + 304) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F211350()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  v3 = *(v0 + 176);
  [*(v0 + 280) setExportedContent_];

  OUTLINED_FUNCTION_2_37();
  sub_18F11CDDC(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  v5 = OUTLINED_FUNCTION_19_3();
  v6(v5);
  OUTLINED_FUNCTION_57_3();

  v7 = OUTLINED_FUNCTION_12_7();

  return v8(v7);
}

uint64_t sub_18F21141C()
{
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  v1 = OUTLINED_FUNCTION_41_9();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F2114C4()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  [*(v0 + 280) setExportedContent_];

  OUTLINED_FUNCTION_2_37();
  sub_18F11CDDC(v3, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  (*(v2 + 8))(v1, v4);
  OUTLINED_FUNCTION_57_3();

  v7 = OUTLINED_FUNCTION_12_7();

  return v8(v7);
}

uint64_t sub_18F21158C()
{
  OUTLINED_FUNCTION_69();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v1[37] = v5;
  v1[38] = v6;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F21164C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v3 + 16);
  *(v0 + 368) = v5;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1DA0);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 16), v0 + 176);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v7);
    v9 = swift_task_alloc();
    *(v0 + 384) = v9;
    *v9 = v0;
    v9[1] = sub_18F211940;
    v10 = *(v0 + 328);
    v11 = *(v0 + 312);
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 304);

    return sub_18F212D9C(v8, v13, v14, v11, v12, v7, v10, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2830);
    OUTLINED_FUNCTION_68_0();
    if (swift_dynamicCast())
    {
      v16 = swift_task_alloc();
      *(v0 + 424) = v16;
      *v16 = v0;
      v16[1] = sub_18F211DD8;
      v17 = OUTLINED_FUNCTION_33_12();

      return sub_18F213B48(v17, v18);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2838);
      OUTLINED_FUNCTION_68_0();
      if (swift_dynamicCast())
      {
        sub_18F0FD0B4((v0 + 96), v0 + 136);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
        v19 = swift_task_alloc();
        *(v0 + 448) = v19;
        *v19 = v0;
        v19[1] = sub_18F211F68;
        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_68_0();

        return sub_18F21277C(v20, v21, v22);
      }

      else
      {
        (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 320));

        OUTLINED_FUNCTION_20_0();

        return v23(0);
      }
    }
  }
}