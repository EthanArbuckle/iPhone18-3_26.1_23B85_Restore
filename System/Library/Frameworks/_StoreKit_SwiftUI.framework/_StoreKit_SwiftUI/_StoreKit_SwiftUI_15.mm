uint64_t sub_23BADAFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BADB06C();

  return sub_23BADB0C0(a1, a2);
}

unint64_t sub_23BADB06C()
{
  result = qword_27E19FCF0;
  if (!qword_27E19FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCF0);
  }

  return result;
}

uint64_t sub_23BADB0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-1] - v5;
  sub_23B99FCE0(a1, &v10[-1] - v5, &qword_27E198848);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  v10[3] = v4;
  v10[4] = sub_23BADB544();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_23BADC148(v6, boxed_opaque_existential_1);
  return sub_23BADC1C0(v10, a2);
}

void SubscriptionPeriodGroupSet.init<>()(uint64_t a1@<X8>)
{
  *(a1 + 24) = sub_23BADB0C0;
  *(a1 + 32) = 0;
  *(a1 + 73) = 1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t SubscriptionPeriodGroupSet.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
  v4 = *(a1 + 24);
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_7();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v35 = v3;
  v36 = &v33 - v8;
  v9 = *(a1 + 16);
  v34 = type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v33 = sub_23BADB544();
  v41 = *(a1 + 32);
  v44[0] = v3;
  v44[1] = v9;
  v44[2] = v4;
  v44[3] = v33;
  v45 = v41;
  v15 = type metadata accessor for SubscriptionOptionGroupSet();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v24 = swift_allocObject();
  *&v25 = v9;
  *(&v25 + 1) = v4;
  v26 = v41;
  *(v24 + 16) = v25;
  *(v24 + 32) = v26;
  v27 = *(a1 + 52);
  v28 = v39;
  (*(v11 + 16))(v14, v39 + v27, v34);
  v29 = v36;
  (*(v37 + 16))(v36, v28, v38);
  sub_23B9AFF04(sub_23BADB620, 0, sub_23BADB8B4, v24, v14, v29, 1, v20);
  OUTLINED_FUNCTION_1_42();
  WitnessTable = swift_getWitnessTable();
  static StoreContentBuilder.buildExpression<A>(_:)(v20, v15, v23);
  v31 = *(v17 + 8);
  v31(v20, v15);
  (*(v17 + 16))(v20, v23, v15);
  v43 = v15;
  v44[0] = v20;
  v42 = WitnessTable;
  static StoreContentBuilder.buildBlock<each A>(_:)(v44, 1, &v43, &v42, v40);
  v31(v23, v15);
  return (v31)(v20, v15);
}

unint64_t sub_23BADB544()
{
  result = qword_27E19FCF8;
  if (!qword_27E19FCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
    sub_23BADB5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FCF8);
  }

  return result;
}

unint64_t sub_23BADB5C8()
{
  result = qword_27E19FD00[0];
  if (!qword_27E19FD00[0])
  {
    sub_23BBDCD08();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19FD00);
  }

  return result;
}

uint64_t sub_23BADB620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDCD08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_23BBDC8F8();
  v15 = sub_23BBDCB58();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v2);
  }

  else
  {
    sub_23B99FCE0(v11, v8, &qword_27E197B90);
    sub_23BBDCA98();
    (*(v3 + 16))(v14, v5, v2);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
    (*(v3 + 8))(v5, v2);
    (*(*(v15 - 8) + 8))(v8, v15);
  }

  sub_23B979910(v11, &qword_27E197B90);
  return sub_23BADC148(v14, a1);
}

BOOL sub_23BADB8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_23BBDCD08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_23B99FCE0(a1, v9, &qword_27E198848);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_23B979910(v9, &qword_27E198848);
    return 0;
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v16, v9, v10);
    sub_23B99FCE0(a2, v6, &qword_27E198848);
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      sub_23B979910(v6, &qword_27E198848);
      return 1;
    }

    else
    {
      v18(v13, v6, v10);
      v17 = sub_23BA53C70();
      v19 = *(v11 + 8);
      v19(v13, v10);
      v19(v16, v10);
    }
  }

  return v17;
}

uint64_t sub_23BADBBF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
  result = type metadata accessor for NullaryOrUnaryValue();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NullaryOrUnaryValue();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BADBCA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v7 = *(v5 + 80) & 0xF8 | 7;
  v8 = v6 + ((v4 + v7 + 1) & ~v7) + 1;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v4);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_23BADBE38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 24) - 8) + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = v7 + ((v5 + v8 + 1) & ~v8) + 1;
  v10 = 8 * v9;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
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

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v9)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_40:
        __break(1u);
        JUMPOUT(0x23BADC060);
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_23BADC0A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198848);
  sub_23BADB544();
  type metadata accessor for SubscriptionOptionGroupSet();
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  type metadata accessor for TupleStoreContent();
  return swift_getWitnessTable();
}

uint64_t sub_23BADC148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BADC1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C4E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BADC248()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BADC34C()
{
  sub_23BADC2DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t View.subscriptionStoreSignInAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x23EEB43C0](v4, a3, &type metadata for SubscriptionStoreSignInButtonActionModifier);
}

uint64_t sub_23BADC3F4()
{
  sub_23BBDA358();
  sub_23BADC458();
  return swift_getWitnessTable();
}

unint64_t sub_23BADC458()
{
  result = qword_27E19FE08;
  if (!qword_27E19FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FE08);
  }

  return result;
}

uint64_t sub_23BADC4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_23BBDCB58();
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_23BADC5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_23BBDCB58();
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for SubscriptionOfferManager()
{
  result = qword_27E19FE10;
  if (!qword_27E19FE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BADC6F4()
{
  sub_23BBDCDB8();
  if (v0 <= 0x3F)
  {
    sub_23BBDCB58();
    if (v1 <= 0x3F)
    {
      sub_23BADC870(319, &qword_27E19ACB0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23BADC870(319, &qword_27E19FE20, &type metadata for IntroductoryOfferProvider, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23BADC870(319, &qword_27E19FE28, &unk_284E65B28, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23BADC870(319, qword_27E19FE30, &type metadata for PreferredSubscriptionOfferProvider, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23BADC870(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23BADC8C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v5 = type metadata accessor for Subscription();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_1();
  v23 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v12)
    {

      return;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_23BA54F2C(a3 + v14 + v15 * v12, v11);
    v16 = v25(v11);
    if (v3)
    {
      sub_23BA1D2DC(v11);

      return;
    }

    if (v16)
    {
      sub_23BA1D1B4(v11, v23);
      v17 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23BA92C48();
        v17 = v27;
      }

      v19 = *(v17 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v17 + 24) >> 1)
      {
        v24 = v19 + 1;
        v22 = v19;
        sub_23BA92C48();
        v20 = v24;
        v19 = v22;
        v17 = v27;
      }

      ++v12;
      *(v17 + 16) = v20;
      v24 = v17;
      sub_23BA1D1B4(v23, v17 + v14 + v19 * v15);
    }

    else
    {
      sub_23BA1D2DC(v11);
      ++v12;
    }
  }

  __break(1u);
}

void sub_23BADCAE8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v31 = sub_23BBDCC88();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = 0;
  v30 = *(a3 + 16);
  v27 = v5 + 16;
  v12 = (v5 + 8);
  v24 = (v5 + 32);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v30 == v11)
    {

      return;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v31, v8);
    v16 = v28(v10);
    if (v3)
    {
      (*v12)(v10, v31);

      return;
    }

    if (v16)
    {
      v23 = *v24;
      v23(v25, v10, v31);
      v17 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_23BA92C68();
        v19 = v32;
      }

      a3 = v15;
      v20 = *(v19 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v19 + 24) >> 1)
      {
        v26 = v20 + 1;
        v22 = v20;
        sub_23BA92C68();
        v21 = v26;
        v20 = v22;
        a3 = v15;
        v19 = v32;
      }

      ++v11;
      *(v19 + 16) = v21;
      v26 = v19;
      v23((v19 + v13 + v20 * v14), v25, v31);
    }

    else
    {
      (*v12)(v10, v31);
      ++v11;
    }
  }

  __break(1u);
}

uint64_t sub_23BADCDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_43();
  v12 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v54 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v57 = &v50 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v58 = MEMORY[0x277D84F90];
  v26 = type metadata accessor for SubscriptionOfferManager();
  v27 = v26;
  v28 = (v4 + *(v26 + 36));
  if (!*v28)
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v12);
    goto LABEL_7;
  }

  sub_23BB78B40(v4, v4 + *(v26 + 20), *v28, v28[1], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v12) == 1)
  {
LABEL_7:
    sub_23B9C8F9C(v3);
    v30 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v55 = v27;
  v56 = a1;
  v52 = *(v14 + 32);
  v52(v25, v3, v12);
  (*(v14 + 16))(v22, v25, v12);
  sub_23B9B7EE0();
  v30 = v29;
  v32 = *(v29 + 16);
  v31 = *(v29 + 24);
  v53 = a2;
  v51 = v32 + 1;
  if (v32 >= v31 >> 1)
  {
    sub_23B9B7EE0();
    v30 = v49;
  }

  (*(v14 + 8))(v25, v12);
  *(v30 + 16) = v51;
  v52((v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v32), v22, v12);
  v58 = v30;
  v27 = v55;
  a1 = v56;
  a2 = v53;
LABEL_8:
  sub_23BADD250();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
  {
    sub_23B9C8F9C(v10);
  }

  else
  {
    v56 = a1;
    v36 = a2;
    v37 = *(v14 + 32);
    v38 = v57;
    v37(v57, v10, v12);
    v39 = v54;
    (*(v14 + 16))(v54, v38, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23B9B7EE0();
      v30 = v47;
    }

    v41 = *(v30 + 16);
    if (v41 >= *(v30 + 24) >> 1)
    {
      sub_23B9B7EE0();
      v30 = v48;
    }

    (*(v14 + 8))(v57, v12);
    *(v30 + 16) = v41 + 1;
    v37((v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v41), v39, v12);
    v58 = v30;
    a2 = v36;
    v27 = v55;
    a1 = v56;
  }

  v42 = *(v27 + 20);
  v43 = sub_23BBDCA58();
  MEMORY[0x28223BE20](v43);
  *(&v50 - 2) = v4;
  sub_23BADCAE8(sub_23BADD82C, (&v50 - 4), v44);
  sub_23BADD84C(v45);
  sub_23B9C8C18(v4, v4 + v42, v58, a1, a2);
}

uint64_t sub_23BADD250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for SubscriptionOfferManager();
  v5 = *(v0 + v4[8]);
  if (v5)
  {
    v6 = v4[5];

    sub_23BBDCA78();
    v7 = sub_23BBDCC88();
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
    {

      sub_23B9C8F9C(v3);
    }

    else
    {
      sub_23B9C8F9C(v3);
      v9 = *(v5 + 16);

      v9(&v18, v0, v0 + v6);

      if (v18)
      {
        sub_23BBDCA78();
      }
    }

    OUTLINED_FUNCTION_8_1();
    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  }

  else if (*(v0 + v4[7]) == 1)
  {
    return sub_23BBDCA78();
  }

  else
  {
    sub_23BBDCC88();
    OUTLINED_FUNCTION_8_1();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_23BADD438@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v40[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v40 - v12;
  v14 = sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v40 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_43();
  v25 = type metadata accessor for SubscriptionOfferManager();
  v26 = (v3 + *(v25 + 36));
  if (*v26)
  {
    sub_23BB78B40(v3, v3 + *(v25 + 20), *v26, v26[1], v13);
    OUTLINED_FUNCTION_35_3(v13);
    if (!v27)
    {
      v28 = *(v16 + 32);
      v28(v2, v13, v14);
      v29 = v40[0];
      v28(v40[0], v2, v14);
LABEL_11:
      v36 = 0;
      return __swift_storeEnumTagSinglePayload(v29, v36, 1, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v14);
  }

  sub_23B9C8F9C(v13);
  sub_23BADD250();
  OUTLINED_FUNCTION_35_3(v10);
  if (!v27)
  {
    v37 = *(v16 + 32);
    v37(v23, v10, v14);
    v29 = v40[0];
    v37(v40[0], v23, v14);
    goto LABEL_11;
  }

  sub_23B9C8F9C(v10);
  v33 = sub_23BBDCA58();
  MEMORY[0x28223BE20](v33);
  v40[-2] = v3;
  sub_23BADCAE8(sub_23BADD9E0, &v40[-4], v34);
  sub_23BAC7804(v35, v7);

  OUTLINED_FUNCTION_35_3(v7);
  if (!v27)
  {
    v38 = *(v16 + 32);
    v38(v20, v7, v14);
    v29 = v40[0];
    v38(v40[0], v20, v14);
    goto LABEL_11;
  }

  sub_23B9C8F9C(v7);
  v36 = 1;
  v29 = v40[0];
  return __swift_storeEnumTagSinglePayload(v29, v36, 1, v14);
}

BOOL sub_23BADD75C()
{
  v0 = sub_23BBDCC38();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = type metadata accessor for SubscriptionOfferManager();
    v9[0] = v2;
    v9[1] = v3;
    MEMORY[0x28223BE20](v4);
    v8[2] = v9;
    v6 = sub_23BB78850(sub_23B9AE380, v8, v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_23BADD84C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23BADD94C(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_23BBDCC88();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_23BADD94C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_23B9B7EE0();
    *v1 = v5;
  }
}

uint64_t CompactSubscriptionOfferViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_23BADDB80(a1, v7);
  sub_23B998C6C(v7, v10);
  v11 = *(a1 + *(v5 + 44));

  sub_23BADDBE4(v10, v11, a2);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D20) + 36);
  sub_23BADDB80(a1, v12);
  v13 = *(type metadata accessor for ConfigureSubscriptionOfferViewEnvironmentViewModifier() + 20);
  *(v12 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BADDB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BADDBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23BBDB588();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197D30);
  *(a3 + v15[9]) = a2;
  sub_23BADE0BC(a1, a3);
  v16 = v15[10];
  *(a3 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(KeyPath);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_0_42(v21);
  v22 = a3 + v15[16];
  v26[1] = 0;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197E38);
  sub_23BBDBF58();
  v23 = v29;
  v24 = v30;
  *v22 = v28;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24;
  (*(v8 + 104))(v14, *MEMORY[0x277CE0AB0], v6);
  if (qword_27E1976F8 != -1)
  {
    swift_once();
  }

  v28 = qword_27E1BFCA0;
  (*(v8 + 16))(v12, v14, v6);
  sub_23B974940();
  sub_23BBD9D18();
  return (*(v8 + 8))(v14, v6);
}

uint64_t sub_23BADDEEC(uint64_t a1)
{
  sub_23BBDA438();
  OUTLINED_FUNCTION_7();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23BBDA708();
}

_BYTE *storeEnumTagSinglePayload for CompactSubscriptionOfferViewStyle(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x23BADE080);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23BADE0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_23BADE138@<W0>(_BYTE *a1@<X8>)
{
  result = sub_23B9DA88C();
  *a1 = result;
  return result;
}

uint64_t sub_23BADE178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B9DA908();
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_42(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_23BADE204@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = sub_23BADE3B4(a1, a2);
  if (a1)
  {
    if (v9)
    {
      v11 = v10 - v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = a4 >> 62;
    v13 = BYTE6(a4);
    switch(v12)
    {
      case 1uLL:
        LODWORD(v14) = HIDWORD(a3) - a3;
        if (__OFSUB__(HIDWORD(a3), a3))
        {
          __break(1u);
        }

        else
        {
          v14 = v14;
LABEL_15:
          if (v11 == v14)
          {
LABEL_16:
            sub_23BAE0F98();
            result = sub_23BBD9538();
            v20 = a1[1];
            *a5 = *a1;
            a5[1] = v20;
            return result;
          }

          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12 != 1)
          {
            v22 = *(a3 + 16);
            v21 = *(a3 + 24);
            v13 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
              goto LABEL_22;
            }

LABEL_26:
            __break(1u);
            JUMPOUT(0x23BADE3A4);
          }

          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            v13 = HIDWORD(a3) - a3;
LABEL_22:
            sub_23BAE0F44();
            swift_allocError();
            *v23 = v11;
            *(v23 + 8) = v13;
            *(v23 + 16) = 0;
            return swift_willThrow();
          }
        }

        __break(1u);
        goto LABEL_26;
      case 2uLL:
        v17 = *(a3 + 16);
        v16 = *(a3 + 24);
        v18 = __OFSUB__(v16, v17);
        v14 = v16 - v17;
        if (!v18)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_11:
        if (!v11)
        {
          goto LABEL_16;
        }

        v13 = 0;
        goto LABEL_22;
      case 3uLL:
        goto LABEL_11;
      default:
        v14 = v13;
        goto LABEL_15;
    }
  }

  sub_23BAE0F44();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_23BADE3B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_23BADE42C(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for HostingController();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1 & 1);
  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v4 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v4, qword_27E1BFC88);
  v5 = sub_23BBDD5B8();
  v6 = sub_23BBD9988();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = OUTLINED_FUNCTION_132();
    v9 = OUTLINED_FUNCTION_131();
    *v7 = 136446466;
    *(v7 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v9);
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_23BA5AB90(0xD00000000000001ELL, 0x800000023BBE2170, &v9);
    _os_log_impl(&dword_23B970000, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
  }

  result = sub_23BADE3E0();
  if (result)
  {
    [result onDismiss];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23BADE5F4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_23BADE42C(a3);
}

uint64_t sub_23BADE67C(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_23BAE0E8C(a1, v4, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
  v5 = sub_23BBDABE8();
  sub_23BAE0EEC(a1, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
  return v5;
}

uint64_t sub_23BADE804(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + qword_27E1BFD88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_23BBDABE8();
  (*(v4 + 8))(a1, v3);
  return v7;
}

void *sub_23BADE980(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27E1BFD88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v8 = sub_23BBDABD8();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_23BADEAD0(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23BADEC10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23BADECF0(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x49746375646F7270;
      break;
    case 2:
      result = 0x4449726566666FLL;
      break;
    case 3:
      result = 0x79654B676F6CLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x546567617373656DLL;
      break;
    case 6:
      result = 0x726576726573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_23BADEDE0(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v61 = 0u;
    v62 = 0u;
    goto LABEL_6;
  }

  v56 = 0x79654B676F6CLL;
  v57 = 0xE600000000000000;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {
LABEL_6:
    sub_23B979910(&v61, &unk_27E19FEE0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v2 = *(&v58 + 1);
    v3 = v58;
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_7_32();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v5 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v5, qword_27E1BFC88);
  sub_23B9EAEFC();
  v3 = v6;
  v2 = v7;
  if (!a1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v12 = "]: Missing parameters to display offer";
LABEL_34:
    v16 = (v12 - 32) | 0x8000000000000000;
    v15 = 0xD000000000000026;
    goto LABEL_35;
  }

LABEL_10:
  v56 = 0x4449656C646E7562;
  v57 = 0xE800000000000000;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {
    sub_23B979910(&v61, &unk_27E19FEE0);
    goto LABEL_25;
  }

  if ((OUTLINED_FUNCTION_5_29() & 1) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v13 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v13, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v14 = "eters to display offer";
    v15 = 0xD000000000000025;
    goto LABEL_28;
  }

  v8 = v56;
  v9 = v57;
  v56 = 0x49746375646F7270;
  v57 = 0xE900000000000044;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {

    sub_23B979910(&v61, &unk_27E19FEE0);
LABEL_31:
    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v17 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v17, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v12 = "]: Missing product ID to display offer";
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_5_29() & 1) == 0)
  {

    goto LABEL_31;
  }

  v10 = v57;
  v54 = v56;
  v56 = 0x4449726566666FLL;
  v57 = 0xE700000000000000;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {

    sub_23B979910(&v61, &unk_27E19FEE0);
LABEL_42:
    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v25 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v25, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v14 = "ct ID to display offer";
    v15 = 0xD000000000000024;
    goto LABEL_28;
  }

  if ((OUTLINED_FUNCTION_5_29() & 1) == 0)
  {

    goto LABEL_42;
  }

  v53 = v10;
  v11 = v57;
  v52 = v56;
  v56 = 0xD000000000000010;
  v57 = 0x800000023BBE2050;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {

    sub_23B979910(&v61, &unk_27E19FEE0);
LABEL_47:
    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v26 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v26, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();
    MEMORY[0x23EEB5890](91, 0xE100000000000000);
    MEMORY[0x23EEB5890](v3, v2);

    v14 = "clientAuditToken";
    v15 = 0xD000000000000033;
LABEL_28:
    v16 = v14 | 0x8000000000000000;
LABEL_35:
    MEMORY[0x23EEB5890](v15, v16);
    v18 = sub_23BBDD598();

    v19 = sub_23BBD9988();

    if (os_log_type_enabled(v19, v18))
    {
      v20 = OUTLINED_FUNCTION_132();
      *&v58 = OUTLINED_FUNCTION_131();
      v21 = OUTLINED_FUNCTION_19_17(4.8752e-34);
      v22 = OUTLINED_FUNCTION_12_22(v21);

      *(v20 + 14) = v22;
      OUTLINED_FUNCTION_18_15(&dword_23B970000, v23, v24, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    sub_23BADFC4C();
    return;
  }

  if ((OUTLINED_FUNCTION_5_29() & 1) == 0)
  {

    goto LABEL_47;
  }

  v50 = v56;
  v51 = v57;
  v56 = 0x546567617373656DLL;
  v57 = 0xEB00000000657079;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {

    sub_23B979910(&v61, &unk_27E19FEE0);
LABEL_52:
    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v27 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v27, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v28 = "ta to display offer";
    v29 = 0xD000000000000028;
    goto LABEL_60;
  }

  if ((OUTLINED_FUNCTION_5_29() & 1) == 0)
  {

    goto LABEL_52;
  }

  v49 = v56;
  v56 = 0x726576726573;
  v57 = 0xE600000000000000;
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_6_23();
  sub_23BAC5FF8(&v58);
  if (!*(&v62 + 1))
  {

    sub_23B979910(&v61, &unk_27E19FEE0);
LABEL_57:
    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v30 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v30, qword_27E1BFC88);
    OUTLINED_FUNCTION_1_44();
    sub_23BBDD768();

    OUTLINED_FUNCTION_3_34();

    v28 = "ge type to display offer";
    v29 = 0xD000000000000029;
LABEL_60:
    MEMORY[0x23EEB5890](v29, v28 | 0x8000000000000000);
    v31 = sub_23BBDD598();

    v32 = sub_23BBD9988();

    if (os_log_type_enabled(v32, v31))
    {
      v33 = OUTLINED_FUNCTION_132();
      *&v58 = OUTLINED_FUNCTION_131();
      v34 = OUTLINED_FUNCTION_19_17(4.8752e-34);
      v35 = OUTLINED_FUNCTION_12_22(v34);

      *(v33 + 14) = v35;
      OUTLINED_FUNCTION_18_15(&dword_23B970000, v36, v37, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();

LABEL_64:
      sub_23BADFC4C();
      sub_23B9A940C(v50, v51);
      return;
    }

LABEL_63:

    goto LABEL_64;
  }

  if ((OUTLINED_FUNCTION_5_29() & 1) == 0)
  {

    goto LABEL_57;
  }

  v48 = v56;
  sub_23BADE204(&v55, 1, v50, v51, &v58);
  v46 = *(&v58 + 1);
  v47 = v58;
  v39 = v59;
  v38 = v60;
  v40 = sub_23BAA1C8C(v48);
  if (v40 == 3)
  {

    OUTLINED_FUNCTION_7_32();
    if (!v4)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v41 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v41, qword_27E1BFC88);
    v42 = sub_23BBDD598();

    v43 = sub_23BBD9988();

    if (os_log_type_enabled(v43, v42))
    {
      v44 = OUTLINED_FUNCTION_132();
      v56 = OUTLINED_FUNCTION_131();
      *v44 = 136446466;
      *&v61 = 91;
      *(&v61 + 1) = 0xE100000000000000;
      MEMORY[0x23EEB5890](v3, v2);
      MEMORY[0x23EEB5890](8285, 0xE200000000000000);
      v45 = sub_23BA5AB90(v61, *(&v61 + 1), &v56);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_23BA5AB90(0x206E776F6E6B6E55, 0xEE00726576726573, &v56);
      _os_log_impl(&dword_23B970000, v43, v42, "%{public}s%{public}s", v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    goto LABEL_63;
  }

  sub_23BADFCB4(v54, v53, v8, v9, v52, v11, v47, v46, v39, v38, v49, v3, v2, v40);
  sub_23B9A940C(v50, v51);
}

void sub_23BADFC4C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ErrorController()) init];
  [v0 presentViewController:v1 animated:1 completion:0];
}

uint64_t sub_23BADFCB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unsigned __int8 a14)
{
  v81 = a6;
  v78 = a7;
  v79 = a8;
  v75 = a1;
  v76 = a5;
  v80 = a2;
  v70 = a11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  MEMORY[0x28223BE20](v73);
  v72 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v64 - v18;
  v19 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v19);
  v69 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19E5B8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v64 - v25;
  v27 = type metadata accessor for SubscriptionOfferViewNoCodeSheet(0);
  MEMORY[0x28223BE20](v27);
  v74 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - v30;
  v32 = type metadata accessor for SKLogger();
  MEMORY[0x28223BE20](v32);
  v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E1976D0 != -1)
  {
    swift_once();
  }

  v77 = a3;
  v68 = a14;
  v83 = a12;
  v67 = a10;
  v66 = a9;
  v35 = __swift_project_value_buffer(v32, qword_27E1BFC88);
  sub_23BAE0E8C(v35, v34, type metadata accessor for SKLogger);

  v36 = sub_23BBD9988();
  v37 = sub_23BBD99A8();
  (*(*(v37 - 8) + 8))(v34, v37);
  v38 = sub_23BBDD5B8();

  v39 = os_log_type_enabled(v36, v38);
  v65 = a13;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v64 = v19;
    v41 = v40;
    v42 = a4;
    v43 = swift_slowAlloc();
    *&v86 = v43;
    *v41 = 136315394;
    *(v41 + 4) = sub_23BA5AB90(v83, a13, &v86);
    *(v41 + 12) = 2080;
    v44 = v77;
    *(v41 + 14) = sub_23BA5AB90(v77, v42, &v86);
    _os_log_impl(&dword_23B970000, v36, v38, "[%s] Did start offer view controller for %s.", v41, 0x16u);
    swift_arrayDestroy();
    v45 = v43;
    a4 = v42;
    MEMORY[0x23EEB6DC0](v45, -1, -1);
    MEMORY[0x23EEB6DC0](v41, -1, -1);
  }

  else
  {

    v44 = v77;
  }

  sub_23BBDC818();
  v46 = sub_23BBDC838();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v46);
  swift_storeEnumTagMultiPayload();
  sub_23BAE0E8C(v23, v69, type metadata accessor for Product.TaskState);
  sub_23BBDBF58();
  sub_23BAE0EEC(v23, type metadata accessor for Product.TaskState);
  v47 = a4;
  v48 = sub_23BBDCC88();
  v49 = v71;
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v48);
  sub_23B99FCE0(v49, v72, &unk_27E19FEF0);
  sub_23BBDBF58();
  sub_23B979910(v49, &unk_27E19FEF0);
  v50 = &v31[v27[11]];
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_23BBDBF58();
  v51 = v87;
  *v50 = v86;
  *(v50 + 2) = v51;
  v52 = v76;
  v54 = v80;
  v53 = v81;
  *v31 = v75;
  *(v31 + 1) = v54;
  *(v31 + 2) = v52;
  *(v31 + 3) = v53;
  *(v31 + 4) = v44;
  *(v31 + 5) = v47;
  v55 = v79;
  *(v31 + 6) = v78;
  *(v31 + 7) = v55;
  v56 = v67;
  *(v31 + 8) = v66;
  *(v31 + 9) = v56;
  v31[80] = v68;
  sub_23B99FCE0(v26, &v31[v27[7]], &qword_27E19E5B8);
  v57 = v65;

  sub_23B979910(v26, &qword_27E19E5B8);
  v58 = &v31[v27[8]];
  *v58 = v83;
  *(v58 + 1) = v57;
  v59 = v74;
  sub_23BAE0E8C(v31, v74, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
  v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FF00));
  v61 = sub_23BADE67C(v59);
  v62 = v82;
  swift_unknownObjectWeakAssign();
  [v62 presentViewController:v61 animated:1 completion:0];

  return sub_23BAE0EEC(v31, type metadata accessor for SubscriptionOfferViewNoCodeSheet);
}

id sub_23BAE0440()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_23BAE0538()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FEC8));
  v3 = sub_23BADE788();
  sub_23BAE079C(v1);
}

uint64_t sub_23BAE05DC@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BAE06BC@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_23BAE079C(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_23BAE0928(v5);
}

void sub_23BAE0928(id a1)
{
  sub_23BAE0B64(v1, a1);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = MEMORY[0x277D84F90];
  sub_23BAE0E08(0, &qword_27E19FED0);
  sub_23BAE0E08(0, &qword_27E19FED8);
  v3 = v1;
  v4 = a1;
  v5 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v6, 3, 0, v7, 3, v5, v8);
  MEMORY[0x23EEB5A00]();
  OUTLINED_FUNCTION_8_33();
  if (v9)
  {
    OUTLINED_FUNCTION_9_22();
  }

  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_16_13();
  v10 = v4;
  v11 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v12, 4, 0, v13, 4, v11, v14);
  MEMORY[0x23EEB5A00]();
  OUTLINED_FUNCTION_8_33();
  if (v9)
  {
    OUTLINED_FUNCTION_9_22();
  }

  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_16_13();
  v15 = v10;
  v16 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v17, 5, 0, v18, 5, v16, v19);
  MEMORY[0x23EEB5A00]();
  OUTLINED_FUNCTION_8_33();
  if (v9)
  {
    OUTLINED_FUNCTION_9_22();
  }

  OUTLINED_FUNCTION_17_13();
  OUTLINED_FUNCTION_16_13();
  v20 = v15;
  v21 = OUTLINED_FUNCTION_4_27();
  sub_23BAE0C34(v22, 6, 0, v23, 6, v21, v24);
  MEMORY[0x23EEB5A00]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23BBDD268();
  }

  sub_23BBDD298();
  v25 = sub_23BBDD238();

  [v20 addConstraints_];
}

id sub_23BAE0B64(uint64_t a1, id a2)
{
  v4 = [a2 subviews];
  sub_23BAE0E08(0, &qword_27E19FED8);
  v5 = sub_23BBDD248();

  v9 = a1;
  v8[2] = &v9;
  sub_23BB789D4(sub_23BAE0E6C, v8, v5);
  LOBYTE(v4) = v6;

  if ((v4 & 1) == 0)
  {
    return [a2 addSubview_];
  }

  return result;
}

id sub_23BAE0C34(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_23BBDDA78();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v25 = a5;
    v26 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = MEMORY[0x28223BE20](v16);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_23BBDDA78();
    (*(v18 + 8))(v21, v15);
    a3 = v17;
    a5 = v25;
    a2 = v26;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v22 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

uint64_t sub_23BAE0E08(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23BAE0E8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23BAE0EEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BAE0F44()
{
  result = qword_27E19FF08;
  if (!qword_27E19FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FF08);
  }

  return result;
}

unint64_t sub_23BAE0F98()
{
  result = qword_27E19FF10;
  if (!qword_27E19FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FF10);
  }

  return result;
}

void OUTLINED_FUNCTION_3_34()
{
  *(v0 - 168) = 91;
  *(v0 - 160) = 0xE100000000000000;

  JUMPOUT(0x23EEB5890);
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_6_23()
{

  return sub_23B9F4060(v1 - 168, v0, (v1 - 128));
}

uint64_t OUTLINED_FUNCTION_9_22()
{

  return sub_23BBDD268();
}

unint64_t OUTLINED_FUNCTION_12_22(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_23BA5AB90(v3, v1, (v4 - 168));
}

uint64_t OUTLINED_FUNCTION_13_24()
{

  return sub_23BBDD718();
}

id OUTLINED_FUNCTION_16_13()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_17_13()
{

  return sub_23BBDD298();
}

void OUTLINED_FUNCTION_18_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t OUTLINED_FUNCTION_19_17(float a1)
{
  *v1 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, (v2 - 168));
}

uint64_t sub_23BAE1268()
{
  result = sub_23BBDCD08();
  if (v1 <= 0x3F)
  {
    result = _s22LocalizedPriceResourceV6FormatOMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23BAE12FC()
{
  sub_23BAE1398();
  if (v0 <= 0x3F)
  {
    sub_23BAE1418();
    if (v1 <= 0x3F)
    {
      sub_23BAE1440();
      if (v2 <= 0x3F)
      {
        sub_23BAE14D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_23BAE1398()
{
  if (!qword_27E19FF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E19FF40);
    }
  }
}

uint64_t sub_23BAE1418()
{
  result = qword_27E19FF48;
  if (!qword_27E19FF48)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27E19FF48);
  }

  return result;
}

void sub_23BAE1440()
{
  if (!qword_27E19FF50)
  {
    _s15PricePropertiesVMa(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E19FF50);
    }
  }
}

void sub_23BAE14D4()
{
  if (!qword_27E19FF58)
  {
    v0 = _s15PricePropertiesVMa(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27E19FF58);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v11 = a4(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v12 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      v12 = a5(0);
      v13 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v13, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v11 = a5(0);
    if (*(*(v11 - 8) + 84) == a3)
    {
      v12 = v11;
      v13 = *(a4 + 20);
    }

    else
    {
      v12 = a6(0);
      v13 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v7 + v13, a2, a2, v12);
  }

  return result;
}

uint64_t sub_23BAE1754()
{
  result = sub_23BBDCBE8();
  if (v1 <= 0x3F)
  {
    result = sub_23BBDCD08();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s22LocalizedPriceResourceV14SeparatorStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BAE18BCLL);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23BAE1914()
{
  result = _s22LocalizedPriceResourceVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s20LocalizationResourceVMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23BAE1994()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v32 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v13 = OUTLINED_FUNCTION_13_0(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  sub_23BBDC8F8();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_23B979910(v15, &qword_27E197B90);
    v23 = sub_23BBDC8E8();
    v25 = v24;
  }

  else
  {
    (*(v18 + 32))(v22, v15, v16);
    v23 = sub_23BBDC8E8();
    v30 = v6;
    v25 = v26;
    sub_23BBDCA98();
    _s22LocalizedPriceResourceVMa(0);
    v31 = v1;
    OUTLINED_FUNCTION_48_4();
    sub_23BACBE14(v5 + v27);
    (*(v32 + 8))(v11, v30);
    (*(v18 + 8))(v22, v16);
    v28 = v5 + *(v1 + 24);
    *v28 = v3;
    *(v28 + 1) = v31;
    _s22LocalizedPriceResourceV6FormatOMa(0);
    swift_storeEnumTagMultiPayload();
  }

  *v5 = v23;
  v5[1] = v25;
  _s11PriceStringOMa(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_9_1();
}

void sub_23BAE1C0C()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v3 = _s20LocalizationResourceVMa();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v30 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v15);
  v16 = _s22LocalizedPriceResourceVMa(0);
  v17 = OUTLINED_FUNCTION_13_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_1();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_6_24();
  sub_23BAE5514(v2, v24, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = sub_23BAE545C(v24, v20, _s22LocalizedPriceResourceVMa);
      sub_23BAE1EA0(v27);
      sub_23BBDB668();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_11_19();
      v29 = v20;
    }

    else
    {
      sub_23BAE545C(v24, v7, _s20LocalizationResourceVMa);
      if (*(v7 + *(v3 + 20)) == 6)
      {
        sub_23BB74064();
      }

      else
      {
        sub_23BB72A48();
      }

      (*(v30 + 32))(v1, v13, v8);
      sub_23BBDB668();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_1_45();
      v29 = v7;
    }

    sub_23BAE54BC(v29, v28);
  }

  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_9_1();
}

void sub_23BAE2194()
{
  OUTLINED_FUNCTION_10_0();
  v4 = v3;
  v6 = v5;
  _s20LocalizationResourceVMa();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v45 = v9 - v8;
  v10 = OUTLINED_FUNCTION_5_3();
  v46 = _s22LocalizedPriceResourceVMa(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v14 = (v13 - v12);
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_35_5();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FFA8);
  v22 = OUTLINED_FUNCTION_13_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_46_2();
  v24 = (v0 + v23);
  sub_23BAE5514(v6, v0, _s11PriceStringOMa);
  sub_23BAE5514(v4, v24, _s11PriceStringOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_24();
      v26 = OUTLINED_FUNCTION_44_2();
      sub_23BAE5514(v26, v27, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_19_18();
        sub_23BAE545C(v24, v14, v29);
        v30 = *v2 == *v14 && v2[1] == v14[1];
        if (v30 || (sub_23BBDDA88()) && (sub_23BBDCCA8())
        {
          sub_23BAE3C9C();
        }

        OUTLINED_FUNCTION_20_13();
        sub_23BAE54BC(v14, v31);
        v32 = v2;
        v33 = v46;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_11_19();
      v43 = v2;
    }

    else
    {
      OUTLINED_FUNCTION_6_24();
      v37 = OUTLINED_FUNCTION_35_0();
      sub_23BAE5514(v37, v38, v39);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_21_14();
        sub_23BAE545C(v24, v45, v40);
        sub_23BBDCCA8();
        OUTLINED_FUNCTION_1_45();
        sub_23BAE54BC(v45, v41);
        OUTLINED_FUNCTION_1_45();
        v32 = v18;
LABEL_27:
        sub_23BAE54BC(v32, v33);
LABEL_28:
        OUTLINED_FUNCTION_22_13();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_1_45();
      v43 = v18;
    }

    sub_23BAE54BC(v43, v42);
  }

  else
  {
    OUTLINED_FUNCTION_6_24();
    sub_23BAE5514(v0, v1, v34);
    v36 = *v1;
    v35 = v1[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v36 != *v24 || v35 != v24[1])
      {
        sub_23BBDDA88();
      }

      goto LABEL_28;
    }
  }

  sub_23B979910(v0, &qword_27E19FFA8);
LABEL_29:
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAE2584()
{
  v1 = _s20LocalizationResourceVMa();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  _s11PriceStringOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_6_24();
  sub_23BAE5514(v0, v13, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19_18();
      sub_23BAE545C(v13, v9, v16);
      MEMORY[0x23EEB63A0](1);
      sub_23BBDD078();
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      sub_23BAE5384(v17, v18);
      OUTLINED_FUNCTION_35_0();
      sub_23BBDCE68();
      sub_23BAE4118();
      OUTLINED_FUNCTION_11_19();
      v20 = v9;
    }

    else
    {
      OUTLINED_FUNCTION_21_14();
      sub_23BAE545C(v13, v5, v22);
      MEMORY[0x23EEB63A0](2);
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      sub_23BAE5384(v23, v24);
      sub_23BBDCE68();
      v25 = (v5 + *(v1 + 20));
      v26 = *v25;
      if (v26 == 6)
      {
        v27 = 1;
      }

      else
      {
        v27 = *(v25 + 1);
        MEMORY[0x23EEB63A0](0);
        MEMORY[0x23EEB63A0](v26);
      }

      MEMORY[0x23EEB63A0](v27);
      OUTLINED_FUNCTION_1_45();
      v20 = v5;
    }

    return sub_23BAE54BC(v20, v19);
  }

  else
  {
    MEMORY[0x23EEB63A0](0);
    OUTLINED_FUNCTION_35_0();
    sub_23BBDD078();
  }
}

unint64_t sub_23BAE28A8()
{
  result = qword_27E19FF80;
  if (!qword_27E19FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19FF80);
  }

  return result;
}

uint64_t sub_23BAE28FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v33[0] = a4;
  v33[1] = a5;
  v38 = a1;
  v39 = a2;
  v40 = a6;
  v7 = sub_23BBD9848();
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v9 - 8);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BBDCFA8();
  MEMORY[0x28223BE20](v11 - 8);
  v37 = sub_23BBD96B8();
  v12 = *(v37 - 8);
  v13 = MEMORY[0x28223BE20](v37);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v33 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v35 = v33 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v33 - v21;
  v23 = sub_23BBDCCC8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      goto LABEL_6;
    case 2:
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v30 = v37;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      v31 = v35;
      sub_23BB73D2C();
      (*(v12 + 8))(v22, v30);
      return (*(v12 + 32))(v40, v31, v30);
    case 3:
      if (sub_23BBDCCE8() == 1)
      {
        sub_23BBDCCD8();
        sub_23BB739F8();
        return (*(v24 + 8))(v26, v23);
      }

      else
      {
LABEL_6:
        sub_23BB72A48();
        sub_23BBDCF98();
        sub_23BBDCF88();
        sub_23BBDCF68();
        sub_23BBDCF88();
        v27 = v37;
        sub_23BBDCF78();
        sub_23BBDCF88();
        sub_23BBDCFB8();
        sub_23BBD9838();
        sub_23BB73D2C();
        (*(v12 + 8))(v22, v27);
        v28 = *(v12 + 32);
        v29 = v35;
        v28(v35, v15, v27);
        return (v28)(v40, v29, v27);
      }

    default:
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v27 = v37;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      (*(v12 + 8))(v22, v27);
      v28 = *(v12 + 32);
      v29 = v35;
      v28(v35, v18, v27);
      return (v28)(v40, v29, v27);
  }
}

uint64_t sub_23BAE2F84@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = sub_23BBD9848();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23BBDCFA8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23BBD96B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BB72A48();
  sub_23BBDCF98();
  sub_23BBDCF88();
  sub_23BBDCF68();
  sub_23BBDCF88();
  sub_23BBDCF78();
  sub_23BBDCF88();
  sub_23BBDCFB8();
  sub_23BBD9838();
  sub_23BB73D2C();
  return (*(v5 + 8))(v7, v4);
}

void sub_23BAE325C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v49 = a4;
  v5 = sub_23BBD9848();
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDCFC8();
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDCFA8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23BBD96B8();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - v13;
  v14 = sub_23BBDCBE8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = *(_s15PricePropertiesVMa(0) + 20);
  v22 = *(v15 + 16);
  v45 = v4;
  v22(v20, v4 + v21, v14);
  sub_23BBDCBD8();
  sub_23BAE5384(&qword_27E19FFA0, MEMORY[0x277CDD298]);
  v23 = sub_23BBDCF38();
  v24 = *(v15 + 8);
  v24(v18, v14);
  if (v23)
  {
    v24(v20, v14);
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v25, qword_27E1BFC88);
    v26 = sub_23BBDD5A8();
    v27 = sub_23BBD9988();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v50);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_23BA5AB90(0xD000000000000038, 0x800000023BBE22B0, &v50);
      _os_log_impl(&dword_23B970000, v27, v26, "%{public}s%{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v29, -1, -1);
      MEMORY[0x23EEB6DC0](v28, -1, -1);
    }

    sub_23BAE4520(v46, v47, v48, 0, 0, 0, v30, v31, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    sub_23BBDCBC8();
    v32 = sub_23BBDCF38();
    v24(v18, v14);
    if (v32)
    {
      v24(v20, v14);
      v33 = v40;
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v34 = v42;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      (*(v41 + 8))(v33, v34);
    }

    else
    {
      sub_23BBDCBB8();
      sub_23BBDCF38();
      v24(v18, v14);
      v24(v20, v14);
      v35 = v40;
      sub_23BB72A48();
      v36 = v39;
      sub_23BB72A48();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      v37 = v42;
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCF68();
      sub_23BBDCF88();
      sub_23BBDCF78();
      sub_23BBDCF88();
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      v38 = *(v41 + 8);
      v38(v36, v37);
      v38(v35, v37);
    }
  }
}

void sub_23BAE3A20(uint64_t a1)
{
  OUTLINED_FUNCTION_33_4(a1);
  v4 = v4 && v2 == v3;
  if (v4 || (sub_23BBDDA88() & 1) != 0)
  {
    _s22LocalizedPriceResourceVMa(0);
    OUTLINED_FUNCTION_48_4();
    OUTLINED_FUNCTION_45_3(v5);
    if (sub_23BBDCCA8())
    {
      OUTLINED_FUNCTION_45_3(*(v1 + 24));

      sub_23BAE3C9C();
    }
  }
}

uint64_t sub_23BAE3AA0()
{
  sub_23BBDD078();
  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  sub_23BAE5384(v0, v1);
  sub_23BBDCE68();
  return sub_23BAE4118();
}

uint64_t sub_23BAE3B3C()
{
  OUTLINED_FUNCTION_54_3();
  sub_23BBDD078();
  _s22LocalizedPriceResourceVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  sub_23BAE5384(v0, v1);
  OUTLINED_FUNCTION_26_8();
  sub_23BAE4118();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE3BDC()
{
  sub_23BBDDBB8();
  sub_23BBDD078();
  sub_23BBDCD08();
  sub_23BAE5384(qword_27E19FD00, MEMORY[0x277CDD300]);
  sub_23BBDCE68();
  sub_23BAE4118();
  return sub_23BBDDBF8();
}

void sub_23BAE3C9C()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v51 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_1();
  v49 = (v7 - v8);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v9);
  v50 = (&v48 - v10);
  v11 = OUTLINED_FUNCTION_5_3();
  _s22LocalizedPriceResourceV6FormatOMa(v11);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v13);
  v15 = (&v48 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19FFB0);
  v21 = OUTLINED_FUNCTION_13_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_46_2();
  v23 = v0 + v22;
  sub_23BAE5514(v5, v0, _s22LocalizedPriceResourceV6FormatOMa);
  sub_23BAE5514(v3, v23, _s22LocalizedPriceResourceV6FormatOMa);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_38();
      sub_23BAE5514(v0, v18, v43);
      if (OUTLINED_FUNCTION_52_3() != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_2_38();
      v27 = OUTLINED_FUNCTION_43_4();
      sub_23BAE5514(v27, v28, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8);
      if (OUTLINED_FUNCTION_52_3() != 2)
      {
        v1 = v15;
LABEL_27:
        OUTLINED_FUNCTION_5_30();
        sub_23BAE54BC(v1, v44);
LABEL_28:
        sub_23B979910(v0, &qword_27E19FFB0);
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_35();
      v30 = v23;
      v31 = v50;
      sub_23BAE545C(v30, v50, v32);
      v33 = *v15 == *v31 && v15[1] == v31[1];
      v34 = v51;
      if (v33 || (sub_23BBDDA88()) && (sub_23B9A0684(v15 + *(v34 + 20), v31 + *(v34 + 20)) & 1) != 0 && (sub_23BBDCCA8() & 1) != 0 && *(v15 + *(v34 + 28)) == *(v31 + *(v34 + 28)))
      {
        OUTLINED_FUNCTION_7_33();
        sub_23BAE54BC(v31, v35);
        sub_23BAE54BC(v15, v34);
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_7_33();
      sub_23BAE54BC(v31, v45);
      v46 = v15;
      goto LABEL_31;
    case 3u:
      OUTLINED_FUNCTION_2_38();
      v36 = OUTLINED_FUNCTION_44_2();
      sub_23BAE5514(v36, v37, v38);
      if (OUTLINED_FUNCTION_52_3() != 3)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_3_35();
      v39 = v49;
      sub_23BAE545C(v23, v49, v40);
      v41 = *v1 == *v39 && v1[1] == v39[1];
      v34 = v51;
      if (v41 || (sub_23BBDDA88()) && (sub_23B9A0684(v1 + *(v34 + 20), v39 + *(v34 + 20)) & 1) != 0 && (sub_23BBDCCA8() & 1) != 0 && *(v1 + *(v34 + 28)) == *(v39 + *(v34 + 28)))
      {
        OUTLINED_FUNCTION_7_33();
        sub_23BAE54BC(v39, v42);
        sub_23BAE54BC(v1, v34);
        OUTLINED_FUNCTION_14_19();
      }

      else
      {
        OUTLINED_FUNCTION_7_33();
        sub_23BAE54BC(v39, v47);
        v46 = v1;
LABEL_31:
        sub_23BAE54BC(v46, v34);
LABEL_32:
        OUTLINED_FUNCTION_14_19();
      }

LABEL_33:
      OUTLINED_FUNCTION_9_1();
      return;
    default:
      OUTLINED_FUNCTION_2_38();
      v24 = OUTLINED_FUNCTION_35_0();
      sub_23BAE5514(v24, v25, v26);
      if (!OUTLINED_FUNCTION_52_3())
      {
        goto LABEL_32;
      }

      goto LABEL_28;
  }
}

uint64_t sub_23BAE4118()
{
  v3 = v0;
  v4 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_35_5();
  _s22LocalizedPriceResourceV6FormatOMa(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_2_38();
  sub_23BAE5514(v3, v10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x23EEB63A0](1);
      goto LABEL_10;
    case 2u:
      v14 = v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3F8) + 48)];
      OUTLINED_FUNCTION_3_35();
      sub_23BAE545C(v10, v1, v15);
      MEMORY[0x23EEB63A0](2);
      sub_23BBDD078();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_4_28();
      sub_23BAE5384(v16, v17);
      OUTLINED_FUNCTION_50_3();
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      sub_23BAE5384(v18, v19);
      OUTLINED_FUNCTION_50_3();
      MEMORY[0x23EEB63A0](*(v1 + *(v4 + 28)));
      MEMORY[0x23EEB63A0](v14);
      sub_23BBDDBD8();
      OUTLINED_FUNCTION_5_30();
      v21 = v1;
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_3_35();
      sub_23BAE545C(v10, v2, v22);
      MEMORY[0x23EEB63A0](3);
      sub_23BBDD078();
      sub_23BBDCBE8();
      OUTLINED_FUNCTION_4_28();
      sub_23BAE5384(v23, v24);
      OUTLINED_FUNCTION_49_2();
      sub_23BBDCD08();
      OUTLINED_FUNCTION_0_43();
      sub_23BAE5384(v25, v26);
      OUTLINED_FUNCTION_49_2();
      MEMORY[0x23EEB63A0](*(v2 + *(v4 + 28)));
      OUTLINED_FUNCTION_5_30();
      v21 = v2;
LABEL_6:
      result = sub_23BAE54BC(v21, v20);
      break;
    default:
      v12 = *v10;
      v13 = v10[1];
      MEMORY[0x23EEB63A0](0);
      MEMORY[0x23EEB63A0](v12);
      if (v13 != 2)
      {
        sub_23BBDDBD8();
      }

      sub_23BBDDBD8();
LABEL_10:
      result = sub_23BBDDBD8();
      break;
  }

  return result;
}

uint64_t sub_23BAE444C(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_54_3();
  a1(v3);
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE448C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_54_3();
  MEMORY[0x23EEB63A0](a1);
  return sub_23BBDDBF8();
}

void sub_23BAE4520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_0();
  a19 = v22;
  a20 = v23;
  v133 = v24;
  v125 = v25;
  v132 = v26;
  v136 = v27;
  v137 = v28;
  v135 = v29;
  v141 = v30;
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v123 = v32;
  v124 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v122 = v34 - v33;
  OUTLINED_FUNCTION_5_3();
  v35 = sub_23BBD9848();
  v36 = OUTLINED_FUNCTION_13_0(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v139 = v38 - v37;
  OUTLINED_FUNCTION_5_3();
  v39 = sub_23BBDCFC8();
  v40 = OUTLINED_FUNCTION_13_0(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v138 = v42 - v41;
  OUTLINED_FUNCTION_5_3();
  v43 = sub_23BBDCFA8();
  v44 = OUTLINED_FUNCTION_13_0(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v131 = v46 - v45;
  OUTLINED_FUNCTION_5_3();
  v140 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v134 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18_3();
  v128 = v52;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18_3();
  v127 = v59;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18_3();
  v126 = v61;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18_3();
  v121 = v64;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_18_3();
  v130 = v66;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v67);
  v129 = v118 - v68;
  OUTLINED_FUNCTION_5_3();
  v69 = sub_23BBDCBE8();
  OUTLINED_FUNCTION_7();
  v71 = v70;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v73);
  v75 = v118 - v74;
  _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_48_4();
  v76 = v20;
  (*(v71 + 16))(v75, v20 + v77, v69);
  sub_23BBDCBD8();
  OUTLINED_FUNCTION_4_28();
  sub_23BAE5384(v78, v79);
  v80 = OUTLINED_FUNCTION_15_20();
  v81 = *(v71 + 8);
  v82 = OUTLINED_FUNCTION_42_4();
  (v81)(v82);
  if (v80)
  {
    v83 = OUTLINED_FUNCTION_43_4();
    (v81)(v83);
    v84 = v129;
    sub_23BB72A48();
    v85 = v134;
    OUTLINED_FUNCTION_23_8();
    if (v88)
    {
      v89 = v86;
    }

    else
    {
      v89 = v87;
    }

    if (v132)
    {
      OUTLINED_FUNCTION_32_3();
      sub_23BBDCF98();
      sub_23BBDCF88();
      OUTLINED_FUNCTION_51_4();
      sub_23BBDCF88();
      sub_23BBDCF68();
      OUTLINED_FUNCTION_39_3();
      sub_23BBDCF78();
      OUTLINED_FUNCTION_29_4();
      v90 = v120;
    }

    else
    {
      OUTLINED_FUNCTION_32_3();
      sub_23BBDCF98();
      sub_23BBDCF88();
      OUTLINED_FUNCTION_51_4();
      sub_23BBDCF88();
      sub_23BBDCF68();
      OUTLINED_FUNCTION_27_5();
      sub_23BBDCF78();
      OUTLINED_FUNCTION_53_3();
      v90 = v121;
    }

    sub_23BBDCFB8();
    sub_23BBD9838();
    sub_23BB73D2C();
    (*(v85 + 8))(v84, v89);
    v105 = *(v85 + 32);
    v106 = v130;
    v105(v130, v90, v89);
    v105(v141, v106, v89);
  }

  else
  {
    sub_23BBDCBB8();
    v91 = OUTLINED_FUNCTION_15_20();
    v92 = OUTLINED_FUNCTION_42_4();
    (v81)(v92);
    if (v91 & 1) != 0 && *(v20 + *(v21 + 28)) == 1 || (sub_23BBDCBC8(), v93 = OUTLINED_FUNCTION_15_20(), v94 = OUTLINED_FUNCTION_42_4(), (v81)(v94), (v93))
    {
      v95 = OUTLINED_FUNCTION_43_4();
      (v81)(v95);
      v96 = v122;
      v97 = v123;
      v98 = v76 + *(v21 + 24);
      v99 = v124;
      (*(v123 + 16))(v122, v98, v124);
      v100 = v132 & 1;
      v101 = v125;
      v102 = v126;
      sub_23BB72A48();
      (*(v97 + 8))(v96, v99);
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_23_8();
      if (v100)
      {
        OUTLINED_FUNCTION_32_3();
        sub_23BBDCF98();
        sub_23BBDCF88();
        sub_23BBDCF68();
        v103 = v140;
        if (v101)
        {
          OUTLINED_FUNCTION_28_5();
          OUTLINED_FUNCTION_34_4();
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          OUTLINED_FUNCTION_39_3();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_29_4();
          v104 = &a11;
        }

        else
        {
          OUTLINED_FUNCTION_27_5();
          OUTLINED_FUNCTION_34_4();
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          OUTLINED_FUNCTION_39_3();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_29_4();
          v104 = &a12;
        }
      }

      else
      {
        OUTLINED_FUNCTION_32_3();
        sub_23BBDCF98();
        sub_23BBDCF88();
        sub_23BBDCF68();
        v103 = v140;
        if (v101)
        {
          OUTLINED_FUNCTION_28_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          sub_23BBDCF88();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_53_3();
          v104 = &a13;
        }

        else
        {
          sub_23BBDCF88();
          OUTLINED_FUNCTION_34_4();
          OUTLINED_FUNCTION_31_4();
          sub_23BBDCF68();
          OUTLINED_FUNCTION_27_5();
          OUTLINED_FUNCTION_30_5();
          sub_23BBDCF78();
          OUTLINED_FUNCTION_53_3();
          v104 = &a10;
        }
      }

      v117 = *(v104 - 32);
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      (*(v81 + 8))(v102, v103);
      v115 = *(v81 + 32);
      v116 = v127;
      v115(v127, v117, v103);
    }

    else
    {
      sub_23BBDCBB8();
      OUTLINED_FUNCTION_15_20();
      v107 = OUTLINED_FUNCTION_42_4();
      (v81)(v107);
      v108 = OUTLINED_FUNCTION_43_4();
      (v81)(v108);
      v109 = v132 & 1;
      v110 = v118[7];
      sub_23BB72A48();
      v111 = v128;
      sub_23BB72A48();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_23_8();
      OUTLINED_FUNCTION_32_3();
      sub_23BBDCF98();
      sub_23BBDCF88();
      sub_23BBDCF68();
      if (v109)
      {
        OUTLINED_FUNCTION_39_3();
        v103 = v140;
        OUTLINED_FUNCTION_34_4();
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_34_4();
        sub_23BBDCF88();
        sub_23BBDCF68();
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_30_5();
        sub_23BBDCF78();
        OUTLINED_FUNCTION_29_4();
        v112 = &a14;
      }

      else
      {
        sub_23BBDCF88();
        v103 = v140;
        sub_23BBDCF78();
        OUTLINED_FUNCTION_28_5();
        sub_23BBDCF78();
        sub_23BBDCF88();
        sub_23BBDCF68();
        sub_23BBDCF88();
        OUTLINED_FUNCTION_30_5();
        v111 = v128;
        sub_23BBDCF78();
        OUTLINED_FUNCTION_53_3();
        v112 = &a15;
      }

      v113 = *(v112 - 32);
      sub_23BBDCFB8();
      sub_23BBD9838();
      sub_23BB73D2C();
      v114 = *(v81 + 8);
      v114(v111, v103);
      v114(v110, v103);
      v115 = *(v81 + 32);
      v116 = v119;
      v115(v119, v113, v103);
    }

    v115(v141, v116, v103);
  }

  OUTLINED_FUNCTION_9_1();
}

BOOL sub_23BAE50A8(uint64_t a1)
{
  OUTLINED_FUNCTION_33_4(a1);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_23BBDDA88()) && (_s15PricePropertiesVMa(0), OUTLINED_FUNCTION_48_4(), v8 = OUTLINED_FUNCTION_45_3(v7), (sub_23B9A0684(v8, v9)) && (OUTLINED_FUNCTION_45_3(*(v3 + 24)), (sub_23BBDCCA8()))
  {
    return *(v2 + *(v3 + 28)) == *(v1 + *(v3 + 28));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BAE5128()
{
  sub_23BBDD078();
  v1 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCBE8();
  OUTLINED_FUNCTION_4_28();
  sub_23BAE5384(v2, v3);
  OUTLINED_FUNCTION_44_2();
  sub_23BBDCE68();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  sub_23BAE5384(v4, v5);
  OUTLINED_FUNCTION_44_2();
  sub_23BBDCE68();
  return MEMORY[0x23EEB63A0](*(v0 + *(v1 + 28)));
}

uint64_t sub_23BAE5204()
{
  OUTLINED_FUNCTION_54_3();
  sub_23BBDD078();
  v1 = _s15PricePropertiesVMa(0);
  OUTLINED_FUNCTION_47_3();
  sub_23BBDCBE8();
  OUTLINED_FUNCTION_4_28();
  sub_23BAE5384(v2, v3);
  OUTLINED_FUNCTION_26_8();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_0_43();
  sub_23BAE5384(v4, v5);
  OUTLINED_FUNCTION_26_8();
  MEMORY[0x23EEB63A0](*(v0 + *(v1 + 28)));
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE52F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_23BBDDBB8();
  a4(v6);
  return sub_23BBDDBF8();
}

uint64_t sub_23BAE5384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BAE545C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BAE54BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BAE5514(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_19()
{

  return sub_23BAE54BC(v0, _s22LocalizedPriceResourceV6FormatOMa);
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return sub_23BBDCF38();
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_23BAE54BC(v0, _s11PriceStringOMa);
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return sub_23BBDCE68();
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return sub_23BBDCF78();
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return sub_23BBDCE68();
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return sub_23BBDCE68();
}

uint64_t OUTLINED_FUNCTION_51_4()
{

  return sub_23BBDCF78();
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_23BBDCF88();
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return sub_23BBDDBB8();
}

uint64_t sub_23BAE596C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, unint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v10 = OUTLINED_FUNCTION_2_6(result, a2);
  v12 = sub_23BA92D68(v10, v11);
  result = sub_23BAF7448(v12, v14, v13 & 1, v8, *(a2 + 16), 0, 1, a2, a3);
  if ((v16 & 0x100) != 0)
  {
    v15 = 0;
    v17 = *(a2 + 16);
    LOBYTE(v16) = 1;
    result = v17;
    goto LABEL_8;
  }

  v17 = *(a2 + 16);
  if (v17 == result)
  {
    if (v16)
    {
      LOBYTE(v16) = 1;
      v17 = result;
LABEL_8:
      v19[0] = result;
      v19[1] = v15;
      v20 = v16 & 1;
      v21 = v17;
      v22 = 0;
      v23 = 1;
      sub_23BAF733C(v19, a2, a3, a4, __src);

      return memcpy(a5, __src, 0x48uLL);
    }

    goto LABEL_10;
  }

  if (v17 >= result)
  {
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

int64_t sub_23BAE5A7C(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_23BAF70E0(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_23BAF5DA8(result, v3, a2);

      return OUTLINED_FUNCTION_48_1();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BAE5B10(unsigned int a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v2 = sub_23BBDC208();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v41 - v8;
  v9 = sub_23BBDAA98();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0108) - 8;
  MEMORY[0x28223BE20](v49);
  v12 = v41 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0110) - 8;
  MEMORY[0x28223BE20](v47);
  v14 = v41 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E8) - 8;
  MEMORY[0x28223BE20](v45);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0118);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  sub_23B989ECC(v51, v16, &qword_27E1A00E8);
  sub_23B989918(v16, v14, &qword_27E1A0110);
  sub_23B989918(v14, v12, &qword_27E1A0108);
  (*(v46 + 32))(v48, v12, v9);
  v44 = MEMORY[0x277CE0150];
  sub_23BAF9FDC(&qword_27E1A00F8, MEMORY[0x277CE0150]);
  v51 = v9;
  sub_23BBDD188();
  v21 = &v12[*(v49 + 52)];
  v22 = *v21;
  v23 = v21[1];
  v24 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0120) + 44)];
  v48 = v23;
  v49 = v22;
  *v24 = v22;
  *(v24 + 1) = v23;
  v25 = &v14[*(v47 + 44)];
  v26 = *v25;
  v27 = v25[1];
  v28 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0128) + 36)];
  v46 = v27;
  v47 = v26;
  *v28 = v26;
  *(v28 + 1) = v27;
  v29 = &v16[*(v45 + 52)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = &v20[*(v18 + 52)];
  v41[1] = v31;
  v42 = v30;
  *v32 = v30;
  *(v32 + 1) = v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0) + 36);
  sub_23BAF9FDC(&qword_27E1984F8, v44);
  v44 = (v43 + 16);
  v45 = v43 + 32;
  v34 = (v43 + 8);
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v20[v33] == v53[0])
    {
      v35 = 1;
      v36 = v52;
    }

    else
    {
      v37 = sub_23BBDD558();
      v36 = v52;
      (*v44)(v52);
      v37(v53, 0);
      sub_23BBDD4B8();
      v35 = 0;
    }

    __swift_storeEnumTagSinglePayload(v36, v35, 1, v2);
    sub_23B989918(v36, v6, &qword_27E1986C8);
    if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
    {
      break;
    }

    v38 = v50;
    (*v45)(v50, v6, v2);
    (v49)(v53, v38);
    (*v34)(v38, v2);
    v39 = v53[0];
    LOBYTE(v55) = v53[0];
    if ((v47)(&v55))
    {
      LOBYTE(v53[0]) = v39;
      v42(&v55, v53);
      v54 = ((v54 == 2) | v54) & v55 & 1;
    }
  }

  sub_23B9A8E20(v20, &qword_27E1A0118);
  return v54;
}

uint64_t sub_23BAE6168(int a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v2 = sub_23BBDC208();
  v43 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = v41 - v8;
  v9 = sub_23BBDAA98();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0108) - 8;
  MEMORY[0x28223BE20](v49);
  v12 = v41 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0110) - 8;
  MEMORY[0x28223BE20](v47);
  v14 = v41 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E8) - 8;
  MEMORY[0x28223BE20](v45);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0118);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = v41 - v19;
  sub_23B989ECC(v51, v16, &qword_27E1A00E8);
  sub_23B989918(v16, v14, &qword_27E1A0110);
  sub_23B989918(v14, v12, &qword_27E1A0108);
  (*(v46 + 32))(v48, v12, v9);
  v44 = MEMORY[0x277CE0150];
  sub_23BAF9FDC(&qword_27E1A00F8, MEMORY[0x277CE0150]);
  v51 = v9;
  sub_23BBDD188();
  v21 = &v12[*(v49 + 52)];
  v22 = *v21;
  v23 = v21[1];
  v24 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0120) + 44)];
  v48 = v23;
  v49 = v22;
  *v24 = v22;
  *(v24 + 1) = v23;
  v25 = &v14[*(v47 + 44)];
  v26 = *v25;
  v27 = v25[1];
  v28 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0128) + 36)];
  v46 = v27;
  v47 = v26;
  *v28 = v26;
  *(v28 + 1) = v27;
  v29 = &v16[*(v45 + 52)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = &v20[*(v18 + 52)];
  v41[1] = v31;
  v42 = v30;
  *v32 = v30;
  *(v32 + 1) = v31;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0) + 36);
  sub_23BAF9FDC(&qword_27E1984F8, v44);
  v44 = (v43 + 16);
  v45 = v43 + 32;
  v34 = (v43 + 8);
  while (1)
  {
    sub_23BBDD4A8();
    if (*&v20[v33] == v53[0])
    {
      v35 = 1;
      v36 = v52;
    }

    else
    {
      v37 = sub_23BBDD558();
      v36 = v52;
      (*v44)(v52);
      v37(v53, 0);
      sub_23BBDD4B8();
      v35 = 0;
    }

    __swift_storeEnumTagSinglePayload(v36, v35, 1, v2);
    sub_23B989918(v36, v6, &qword_27E1986C8);
    if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
    {
      break;
    }

    v38 = v50;
    (*v45)(v50, v6, v2);
    (v49)(v53, v38);
    (*v34)(v38, v2);
    v39 = v53[0];
    LOBYTE(v55) = v53[0];
    if ((v47)(&v55))
    {
      LOBYTE(v53[0]) = v39;
      v42(&v55, v53);
      v54 |= v55;
    }
  }

  sub_23B9A8E20(v20, &qword_27E1A0118);
  return v54 & 1;
}

uint64_t sub_23BAE67D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  if (*(a1 + 16) == 1)
  {
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    sub_23B9ECEE0(a1 + v11, v7);
    v12 = &v7[*(v4 + 28)];
    if (v12[8] == 1)
    {
      v13 = *(*v12 + 16);
      sub_23BAF6B34(v7, type metadata accessor for SubscriptionStoreContentConfiguration);
      if (v13 == 1)
      {
        sub_23B9ECEE0(a1 + v11, v10);
        v14 = 0;
LABEL_10:
        __swift_storeEnumTagSinglePayload(v10, v14, 1, v4);
        return sub_23B989918(v10, a2, qword_27E19A490);
      }
    }

    else
    {
      sub_23BAF6B34(v7, type metadata accessor for SubscriptionStoreContentConfiguration);
    }

    v14 = 1;
    goto LABEL_10;
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

void sub_23BAE69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v22 = v21;
  v60 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v62 = v31;
  v63 = v32;
  v34 = v33;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v59 - v38;
  *&v68 = v30;
  *(&v68 + 1) = v28;
  *&v69 = v26;
  *(&v69 + 1) = v24;
  v70 = v22;
  v71 = a21;
  v40 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  v41 = v40[19];
  v61 = v40[18];
  v42 = v36 + v41;
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  v43 = v36 + v40[20];
  *v43 = swift_getKeyPath();
  *(v43 + 48) = 0;
  v44 = v36 + v40[21];
  *v44 = sub_23BAE7428();
  *(v44 + 8) = v45;
  v46 = v36 + v40[22];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  v47 = v40[23];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v64 = v47;
  sub_23BAE7474(&v68);
  (*(*(v30 - 8) + 16))(v36, v34, v30);
  v48 = v40[17];
  *&v68 = v28;
  *(&v68 + 1) = v26;
  v49 = v62;
  *&v69 = v60;
  *(&v69 + 1) = a21;
  v50 = type metadata accessor for SubscriptionStoreContainerContext();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v36 + v48, v49, v50);
  v52 = v63;
  *(v36 + v61) = v63;
  if (v52)
  {
    sub_23BAC78C8(v52, v39);
    (*(v51 + 8))(v49, v50);
    v53 = OUTLINED_FUNCTION_51_5();
    v54(v53);
    v55 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
    if (__swift_getEnumTagSinglePayload(v39, 1, v55) != 1)
    {
      sub_23B97933C(v39, &v65);
      OUTLINED_FUNCTION_30_6();
      sub_23BAF6B34(v39, v58);
      goto LABEL_7;
    }

    sub_23B9A8E20(v39, qword_27E19A490);
  }

  else
  {
    (*(v51 + 8))(v49, v50);
    v56 = OUTLINED_FUNCTION_51_5();
    v57(v56);
  }

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
LABEL_7:
  v68 = v65;
  v69 = v66;
  v70 = v67;
  v71 = 0;
  sub_23BAC4438(&v68, v36 + v64);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAE6CEC(uint64_t a1)
{
  v62 = sub_23BBDA288();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23BBDC208();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - v7;
  MEMORY[0x28223BE20](v8);
  v64 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v69 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v51 - v13;
  v14 = sub_23BBDAA98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = MEMORY[0x277CE0150];
  sub_23BAF9FDC(&qword_27E1984F8, MEMORY[0x277CE0150]);
  sub_23BBDD458();
  sub_23B9B83DC();
  v54 = v23;
  v51 = v15;
  v24 = *(v15 + 16);
  v52 = a1;
  v24(v17, a1, v14);
  sub_23BAF9FDC(&qword_27E1A00F8, v22);
  v63 = v21;
  sub_23BBDD188();
  v25 = *(v19 + 44);
  v66 = (v3 + 32);
  v67 = (v3 + 16);
  v60 = v3;
  v56 = v3 + 8;
  v57 = (v65 + 8);
  LODWORD(v65) = 1;
  v55 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  for (i = v25; ; v25 = i)
  {
    v27 = v63;
    sub_23BBDD4A8();
    if (*(v27 + v25) == v70[0])
    {
      break;
    }

    v28 = v26;
    v29 = v5;
    v30 = sub_23BBDD558();
    v31 = v68;
    v32 = *v67;
    v33 = v59;
    (*v67)(v59);
    v30(v70, 0);
    v34 = v14;
    sub_23BBDD4B8();
    v35 = *v66;
    (*v66)(v69, v33, v31);
    v36 = v61;
    sub_23BBDC1D8();
    sub_23BAC3448();
    sub_23BBDA298();
    (*v57)(v36, v62);
    if ((v65 & 1) == 0)
    {
      v5 = v29;
      v26 = v28;
      if (LOBYTE(v70[0]) == 2 || (v70[0] & 1) != 0)
      {
LABEL_14:
        (v32)(v5, v69, v68);
        v40 = v54;
        v41 = *(v54 + 16);
        v42 = v41 + 1;
        if (v41 >= *(v54 + 24) >> 1)
        {
          sub_23B9B83DC();
          v40 = v47;
          v65 = v5;
          v54 = v47;
        }

        else
        {
          v65 = v5;
        }
      }

      else
      {
LABEL_16:
        (v32)(v53, v69, v68);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = v55;
        }

        else
        {
          sub_23B9B83DC();
          v40 = v48;
        }

        v41 = *(v40 + 16);
        v42 = v41 + 1;
        if (v41 >= *(v40 + 24) >> 1)
        {
          sub_23B9B83DC();
          v40 = v49;
          v65 = v53;
          v55 = v49;
        }

        else
        {
          v55 = v40;
          v65 = v53;
        }
      }

      v43 = v60;
      v44 = v68;
      (*(v60 + 8))(v69, v68);
      *(v40 + 16) = v42;
      v35((v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v41), v65, v44);
      LODWORD(v65) = 0;
      goto LABEL_11;
    }

    v5 = v29;
    v26 = v28;
    if (LOBYTE(v70[0]) == 2)
    {
      goto LABEL_14;
    }

    if ((v70[0] & 1) == 0)
    {
      goto LABEL_16;
    }

    (v32)(v64, v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B9B83DC();
      v26 = v45;
    }

    v37 = *(v26 + 16);
    if (v37 >= *(v26 + 24) >> 1)
    {
      sub_23B9B83DC();
      v26 = v46;
    }

    v38 = v60;
    v39 = v68;
    (*(v60 + 8))(v69, v68);
    *(v26 + 16) = v37 + 1;
    v35((v26 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37), v64, v39);
    LODWORD(v65) = 1;
LABEL_11:
    v14 = v34;
  }

  (*(v51 + 8))(v52, v14);
  sub_23B9A8E20(v27, &qword_27E1A00F0);
  return v26;
}

uint64_t sub_23BAE7428()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199218);
  sub_23BBDBF58();
  return v1;
}

uint64_t sub_23BAE7474(uint64_t a1)
{
  sub_23B989ECC(a1, v4, &qword_27E197878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197878);
  sub_23BBDBF58();
  v1 = OUTLINED_FUNCTION_35_0();
  return sub_23B9A8E20(v1, v2);
}

BOOL sub_23BAE7588(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 88);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23BBDD5A8();
    v9 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v12[15];
  }

  if (v8 == 2)
  {
    v10 = *(v1 + *(a1 + 72));
    if (v10 && *(v10 + 16))
    {
      type metadata accessor for SubscriptionStoreContentConfiguration(0);
      return sub_23BA227E4();
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23BAE7758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = *(v2 + *(a1 + 72));
  if (v11)
  {
    if (sub_23BAE7588(a1))
    {
      v12 = sub_23BAE74F0();
      if (*(&v18 + 1))
      {
        v20[0] = v17;
        v20[1] = v18;
        v21 = v19;
        MEMORY[0x28223BE20](v12);
        *(&v16 - 2) = v20;
        sub_23B9FCA38(sub_23BAC6090, v11, v10);
        sub_23B989918(v10, v7, qword_27E19A490);
        v13 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
        if (__swift_getEnumTagSinglePayload(v7, 1, v13) != 1)
        {
          sub_23B9ECE7C(v7, a2);
          __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
          return sub_23BAC5FF8(v20);
        }

        sub_23B9A8E20(v7, qword_27E19A490);
        sub_23BAC5FF8(v20);
      }

      else
      {
        sub_23B9A8E20(&v17, &qword_27E197878);
      }
    }

    return sub_23BAC78C8(v11, a2);
  }

  else
  {
    v14 = type metadata accessor for SubscriptionStoreContentConfiguration(0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
  }
}

uint64_t sub_23BAE7994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v252 = a2;
  sub_23BBDB588();
  OUTLINED_FUNCTION_7();
  v243 = v4;
  v244 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v242 = v5 - v6;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_3();
  v241 = v8;
  v269 = type metadata accessor for StoreKitProminentButtonStyle(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v240 = (v11 - v10);
  v12 = OUTLINED_FUNCTION_48_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v12);
  v14 = OUTLINED_FUNCTION_36_2(&qword_27E1A0068);
  v15 = *(a1 + 40);
  v270 = *(a1 + 16);
  v271 = v15;
  v221 = v14;
  v222 = v13;
  *(&v280[0] + 1) = v13;
  *&v280[0] = v270;
  *(&v280[1] + 1) = v14;
  *&v280[1] = v15;
  OUTLINED_FUNCTION_31_5();
  v16 = type metadata accessor for CombinedMarketingContent();
  OUTLINED_FUNCTION_55_2();
  v255 = v16;
  sub_23BBDA358();
  OUTLINED_FUNCTION_38_3();
  OpaqueTypeConformance2 = sub_23BBDACE8();
  v265 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  v259 = a1;
  v272 = *(a1 + 24);
  v17 = *(a1 + 48);
  v267 = *(a1 + 56);
  v268 = v17;
  OUTLINED_FUNCTION_31_5();
  v266 = type metadata accessor for SubscriptionStoreMainContainerContent();
  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  OUTLINED_FUNCTION_4_29();
  sub_23B9A8CB4(v18, &qword_27E19F5A0);
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for StoreContentNavigation();
  OUTLINED_FUNCTION_23_9();
  v19 = sub_23BBDD648();
  OUTLINED_FUNCTION_2_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_46();
  v327 = swift_getWitnessTable();
  v21 = MEMORY[0x277CE1550];
  swift_getWitnessTable();
  v248 = v19;
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for BottomContentContainer();
  sub_23BBDD648();
  sub_23BBDD648();
  v326 = WitnessTable;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for MagicPocketContainer();
  OUTLINED_FUNCTION_23_9();
  sub_23BBDD648();
  OUTLINED_FUNCTION_26_9();
  v262 = v22;
  v254 = swift_getWitnessTable();
  v257 = sub_23BAF69D4();
  v324 = v254;
  v325 = v257;
  v322 = swift_getWitnessTable();
  v323 = v271;
  OUTLINED_FUNCTION_2_7();
  v249 = v23;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_14();
  v253 = v24;
  v321 = swift_getWitnessTable();
  v250 = v21;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33_5();
  v251 = v25;
  v320 = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_32_4();
  v318 = swift_getWitnessTable();
  v319 = sub_23B97AD88();
  v316 = swift_getWitnessTable();
  v317 = sub_23BA3D77C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_15();
  v261 = sub_23BBDACB8();
  v258 = sub_23BBDA358();
  v26 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v26);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_42_5();
  sub_23B9A8CB4(v27, v28);
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for CombinedMarketingContent();
  sub_23BBDA358();
  sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  OUTLINED_FUNCTION_48();
  sub_23BBDACE8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_48();
  sub_23BBDC3D8();
  v29 = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for BottomContentContainer();
  OUTLINED_FUNCTION_48_5();
  sub_23BBDD648();
  OUTLINED_FUNCTION_55_2();
  sub_23BBDACE8();
  v314 = sub_23BAF6A40();
  v315 = v29;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for MagicPocketContainer();
  OUTLINED_FUNCTION_23_9();
  sub_23BBDD648();
  v312 = swift_getWitnessTable();
  v313 = v257;
  v310 = swift_getWitnessTable();
  v311 = v271;
  swift_getWitnessTable();
  v309 = swift_getWitnessTable();
  swift_getWitnessTable();
  v308 = swift_getWitnessTable();
  OUTLINED_FUNCTION_51_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_13_6();
  v306 = v30;
  v307 = sub_23B9A8CB4(v31, &qword_27E1A00A8);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_31_5();
  sub_23BBDAEC8();
  OUTLINED_FUNCTION_38_3();
  v32 = sub_23BBDBE28();
  sub_23B9C7F48();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_24_12();
  v304 = &unk_23BBFA8B0;
  v305 = swift_getWitnessTable();
  swift_getWitnessTable();
  v303 = OUTLINED_FUNCTION_37_2();
  OUTLINED_FUNCTION_3_4();
  v228 = v32;
  v225 = swift_getWitnessTable();
  v226 = &unk_23BBFA8B0;
  OUTLINED_FUNCTION_52_4();
  v33 = type metadata accessor for FeatureView();
  OUTLINED_FUNCTION_7();
  v232 = v34;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_2();
  v230 = v36;
  OUTLINED_FUNCTION_28_6();
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_6();
  v40 = sub_23BAF9FDC(v38, v39);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v233 = v42;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22_2();
  v256 = v44;
  v235 = v33;
  v227 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v264 = OpaqueTypeMetadata2;
  v265 = v40;
  OUTLINED_FUNCTION_52_4();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v231 = v45;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_2();
  v229 = v47;
  v234 = v48;
  v49 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v238 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_1();
  v237 = v52 - v53;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_3();
  v236 = v55;
  OUTLINED_FUNCTION_3_2();
  v239 = v56;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_22_2();
  v257 = v58;
  OUTLINED_FUNCTION_52_4();
  type metadata accessor for SubscriptionStoreContainerContext();
  OUTLINED_FUNCTION_7();
  v246 = v60;
  v247 = v59;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_1();
  v63 = v61 - v62;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_3();
  v215 = v65;
  OUTLINED_FUNCTION_3_2();
  v213 = v66;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_3_1();
  v70 = v69 - v68;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_22_2();
  v223 = v72;
  *(v280 + 8) = v272;
  *&v280[0] = v73;
  *(&v280[1] + 1) = v254;
  v281 = v268;
  v282 = v267;
  OUTLINED_FUNCTION_52_4();
  v74 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  OUTLINED_FUNCTION_7();
  v214 = v75;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v76);
  v78 = &v212 - v77;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19A1E0);
  v253 = v74;
  sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v217 = v79;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_22_2();
  v224 = v81;
  v262 = v82;
  v83 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v220 = v84;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_6_1();
  v219 = v86 - v87;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v88);
  v216 = &v212 - v89;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_6_3();
  v218 = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490);
  MEMORY[0x28223BE20](v92 - 8);
  OUTLINED_FUNCTION_6_1();
  v95 = v93 - v94;
  MEMORY[0x28223BE20](v96);
  v98 = &v212 - v97;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v99);
  v101 = &v212 - v100;
  v102 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_3_1();
  v245 = v105 - v104;
  v250 = v83;
  v251 = v49;
  sub_23BBDACE8();
  OUTLINED_FUNCTION_7();
  v248 = v107;
  v249 = v106;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_22_2();
  v261 = v109;
  v110 = v259;
  v111 = v260;
  v112 = *(v260 + *(v259 + 72));
  if (v112)
  {
    sub_23BAE67D4(v112, v101);
    if (__swift_getEnumTagSinglePayload(v101, 1, v102) != 1)
    {
      v113 = v245;
      sub_23B9ECE7C(v101, v245);
      sub_23B9ECEE0(v113, v98);
      __swift_storeEnumTagSinglePayload(v98, 0, 1, v102);
      v114 = v270;
      (*(v213 + 16))(v70, v111, v270);
      sub_23BABD26C(v98, v70, v115, v114, v222, v223);
      v116 = v111 + *(v110 + 68);
      v117 = v215;
      (*(v246 + 16))(v215, v116, v247);
      v118 = v113 + *(v102 + 28);
      if (*(v118 + 8) == 1)
      {
        v119 = *v118;
      }

      else
      {
        v119 = MEMORY[0x277D84F90];
      }

      v171 = v268;
      sub_23BAE69D8(v223, v117, v119, v255, v272.i64[0], v272.i64[1], v254, v268, v267, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
      OUTLINED_FUNCTION_8_34();
      v172 = v253;
      v173 = swift_getWitnessTable();
      sub_23BAB3BD0();
      (*(v214 + 8))(v78, v172);
      v174 = sub_23B989ECC(v245 + *(v102 + 24), v279, &qword_27E19A528);
      if (v279[1])
      {
        MEMORY[0x28223BE20](v174);
        *(&v212 - 8) = v114;
        *(&v212 - 7) = v272;
        *(&v212 - 5) = v271;
        *(&v212 - 4) = v171;
        *(&v212 - 3) = v175;
        v210 = v111;
        sub_23BA23CEC(sub_23BAFA5C8, v280);
      }

      else
      {
        sub_23B9A8E20(v279, &qword_27E19A528);
        bzero(v280, 0x157uLL);
      }

      v176 = v262;
      OUTLINED_FUNCTION_1_15();
      v179 = sub_23B9A8CB4(v177, v178);
      v277 = v173;
      v278 = v179;
      OUTLINED_FUNCTION_10_5();
      v180 = swift_getWitnessTable();
      v181 = v216;
      sub_23BA2241C(v280, v176, v180);
      sub_23B9A8E20(v280, &qword_27E19A528);
      v182 = OUTLINED_FUNCTION_48_1();
      v183(v182);
      v184 = sub_23B9ECF44();
      v275 = v180;
      v276 = v184;
      v185 = v250;
      v186 = swift_getWitnessTable();
      v187 = v218;
      sub_23B9D2D88(v181, v185, v186);
      v188 = *(v220 + 8);
      v188(v181, v185);
      v189 = v219;
      v190 = OUTLINED_FUNCTION_9_7();
      sub_23B9D2D88(v190, v191, v186);
      *&v280[0] = v264;
      v192 = v269;
      *(&v280[0] + 1) = v269;
      *&v280[1] = OpaqueTypeConformance2;
      *(&v280[1] + 1) = v265;
      OUTLINED_FUNCTION_11_20();
      v193 = swift_getOpaqueTypeConformance2();
      v194 = sub_23BAC5F00();
      v273 = v193;
      v274 = v194;
      v170 = v192;
      swift_getWitnessTable();
      sub_23BA82D64();
      v188(v189, v185);
      v188(v187, v185);
      OUTLINED_FUNCTION_30_6();
      sub_23BAF6B34(v245, v195);
      goto LABEL_14;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v102);
  }

  v120 = OUTLINED_FUNCTION_46();
  sub_23B9A8E20(v120, v121);
  sub_23BAE7758(v110, v98);
  sub_23B989ECC(v98, v95, qword_27E19A490);
  (*(v246 + 16))(v63, v111 + *(v110 + 68), v247);
  sub_23B9EBFF8(v95, v63, v257);
  v255 = v98;
  sub_23BAE936C(v98, v110, v279);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_44_3(&v212);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_44_3(&v212);
  v210 = v225;
  v124 = v230;
  sub_23BBC691C(0, sub_23BAF6ABC, v125, sub_23BAF6AD4, v126, v258, v228);
  KeyPath = swift_getKeyPath();
  v301 = 0;
  v129 = v240;
  v128 = v241;
  *v240 = KeyPath;
  *(v129 + 73) = 0;
  v130 = v269;
  v132 = v243;
  v131 = v244;
  v133 = *(v243 + 104);
  LODWORD(v258) = *MEMORY[0x277CE0AC0];
  v254 = v243 + 104;
  v247 = v133;
  v133(v128);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v134 = qword_27E1BFCB0;
  *&v280[0] = qword_27E1BFCB0;
  v246 = *(v132 + 16);
  v135 = v242;
  (v246)(v242, v128, v131);
  v245 = sub_23B974940();
  sub_23BBD9D18();
  v243 = *(v132 + 8);
  v136 = OUTLINED_FUNCTION_46();
  v137(v136);
  *(v129 + *(v130 + 24)) = 0;
  *(v129 + *(v130 + 28)) = 0;
  v138 = v235;
  v139 = v265;
  sub_23BBDB988();
  v228 = type metadata accessor for StoreKitProminentButtonStyle;
  sub_23BAF6B34(v129, type metadata accessor for StoreKitProminentButtonStyle);
  (*(v232 + 8))(v124, v138);
  v140 = swift_getKeyPath();
  v302 = 0;
  *v129 = v140;
  *(v129 + 73) = 0;
  v141 = v269;
  v247(v128, v258, v131);
  *&v280[0] = v134;
  (v246)(v135, v128, v131);
  sub_23BBD9D18();
  v142 = OUTLINED_FUNCTION_46();
  (v243)(v142);
  v143 = v141;
  *(v129 + *(v141 + 24)) = 0;
  *(v129 + *(v141 + 28)) = 0;
  v144 = v229;
  v146 = OpaqueTypeConformance2;
  v145 = v264;
  v147 = v143;
  sub_23BBDBA48();
  sub_23BAF6B34(v129, v228);
  v148 = OUTLINED_FUNCTION_48_1();
  v149(v148);
  sub_23BAE74F0();
  v297 = v145;
  v298 = v147;
  v299 = v146;
  v300 = v139;
  OUTLINED_FUNCTION_11_20();
  v150 = swift_getOpaqueTypeConformance2();
  v151 = v234;
  sub_23BB492B0(v280, v234, v150);
  sub_23B9A8E20(v280, &qword_27E197878);
  (*(v231 + 8))(v144, v151);
  v152 = sub_23BAC5F00();
  v295 = v150;
  v296 = v152;
  OUTLINED_FUNCTION_1_22();
  v153 = v251;
  v154 = swift_getWitnessTable();
  v155 = v236;
  v156 = OUTLINED_FUNCTION_9_7();
  sub_23B9D2D88(v156, v157, v154);
  v158 = *(v238 + 8);
  v159 = OUTLINED_FUNCTION_9_7();
  v158(v159);
  sub_23B9D2D88(v155, v153, v154);
  OUTLINED_FUNCTION_8_34();
  v160 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v163 = sub_23B9A8CB4(v161, v162);
  v293 = v160;
  v294 = v163;
  v164 = swift_getWitnessTable();
  v165 = sub_23B9ECF44();
  v291 = v164;
  v292 = v165;
  swift_getWitnessTable();
  sub_23BA82E14();
  v166 = OUTLINED_FUNCTION_9_7();
  v158(v166);
  (v158)(v155, v153);
  sub_23B9A8E20(v255, qword_27E19A490);
  *&v167 = vdupq_laneq_s64(v272, 1).u64[0];
  *(&v167 + 1) = v271;
  v168.i64[0] = v270;
  v280[0] = vzip1q_s64(v168, v272);
  v280[1] = v167;
  v281 = v268;
  v282 = v267;
  OUTLINED_FUNCTION_52_4();
  type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties();
  OUTLINED_FUNCTION_4_1();
  (*(v169 + 8))(v279);
  (*(v239 + 8))(v257, v266);
  v170 = v269;
LABEL_14:
  v196 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  v199 = sub_23B9A8CB4(v197, v198);
  v289 = v196;
  v290 = v199;
  OUTLINED_FUNCTION_1_22();
  v200 = swift_getWitnessTable();
  v201 = sub_23B9ECF44();
  v287 = v200;
  v288 = v201;
  v202 = swift_getWitnessTable();
  *&v280[0] = v264;
  *(&v280[0] + 1) = v170;
  *&v280[1] = OpaqueTypeConformance2;
  *(&v280[1] + 1) = v265;
  OUTLINED_FUNCTION_11_20();
  v203 = swift_getOpaqueTypeConformance2();
  v204 = sub_23BAC5F00();
  v285 = v203;
  v286 = v204;
  v205 = swift_getWitnessTable();
  v283 = v202;
  v284 = v205;
  OUTLINED_FUNCTION_2_7();
  v206 = v249;
  v207 = swift_getWitnessTable();
  v208 = v261;
  sub_23B9D2D88(v261, v206, v207);
  return (*(v248 + 8))(v208, v206);
}

double sub_23BAE936C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = sub_23BBDA928();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  sub_23B989ECC(a1, &v25 - v12, qword_27E19A490);
  v14 = type metadata accessor for SubscriptionStoreContentConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_23B9A8E20(v13, qword_27E19A490);
    bzero(v28, 0x157uLL);
  }

  else
  {
    sub_23B989ECC(&v13[*(v14 + 24)], v28, &qword_27E19A528);
    sub_23BAF6B34(v13, type metadata accessor for SubscriptionStoreContentConfiguration);
    if (*&v28[8])
    {
      memcpy(v29, v28, 0x157uLL);
      v15 = sub_23B9AF0F0(&v29[1], &v27);
      MEMORY[0x28223BE20](v15);
      v16 = *(a2 + 32);
      *(&v25 - 4) = *(a2 + 16);
      *(&v25 - 3) = v16;
      *(&v25 - 2) = *(a2 + 48);
      *(&v25 - 2) = v4;
      sub_23BA899B4(sub_23BAF7CA4, v28);
      sub_23B9ED050(v29);
      goto LABEL_6;
    }
  }

  sub_23B9A8E20(v28, &qword_27E19A528);
  sub_23B9B78A0();
  sub_23B9AF0F0(v29 + 8, v28);
  sub_23B9ED0A4(v29);
LABEL_6:
  v17 = v4 + *(a2 + 76);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_8:
      v19 = 0;
      goto LABEL_13;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v20 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v18, 0);
    (*(v8 + 8))(v10, v26);
    if (LOBYTE(v29[0]) != 1)
    {
      goto LABEL_8;
    }
  }

  v21 = v4 + *(a2 + 68);
  v22 = *(a2 + 48);
  v29[0] = *(a2 + 24);
  v29[1] = v22;
  if (*(v21 + *(type metadata accessor for SubscriptionStoreContainerContext() + 60)))
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

LABEL_13:
  result = *v28;
  v24 = *&v28[16];
  *a3 = *v28;
  *(a3 + 16) = v24;
  *(a3 + 32) = *&v28[32];
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_23BAE96FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = a7;
  v45 = a3;
  v44 = a2;
  v46 = a1;
  v47 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0060);
  sub_23B9A8CB4(&qword_27E1A0068, &qword_27E1A0060);
  v43 = a4;
  type metadata accessor for CombinedMarketingContent();
  sub_23BBDA358();
  v36 = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  v40 = a5;
  v41 = a6;
  v42 = a8;
  v39 = a10;
  v38 = type metadata accessor for SubscriptionStoreMainContainerContent();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  type metadata accessor for StoreContentNavigation();
  sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for BottomContentContainer();
  v15 = sub_23BBDD648();
  sub_23BBDD648();
  v60 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for MagicPocketContainer();
  v16 = sub_23BBDD648();
  v58 = swift_getWitnessTable();
  v59 = sub_23BAF69D4();
  v17 = v37;
  v56 = swift_getWitnessTable();
  v57 = v37;
  v18 = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v62 = v36;
  v63 = v15;
  v64 = v16;
  v65 = v18;
  v66 = v19;
  v67 = swift_getWitnessTable();
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  v20 = v38;
  sub_23BBDA358();
  sub_23BBDA358();
  v21 = swift_getWitnessTable();
  v52 = v21;
  v53 = sub_23B97AD88();
  v50 = swift_getWitnessTable();
  v51 = sub_23BA3D77C();
  swift_getWitnessTable();
  sub_23BBDACB8();
  v22 = sub_23BBDA358();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v35 - v27;
  v62 = v43;
  v63 = v40;
  v64 = v41;
  v65 = v17;
  v66 = v42;
  v67 = v39;
  v29 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  sub_23BAE9D44(v44, v45, v29, v20, v21, v25);
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v48 = v30;
  v49 = v31;
  v32 = swift_getWitnessTable();
  sub_23B9D2D88(v25, v22, v32);
  v33 = *(v23 + 8);
  v33(v25, v22);
  sub_23B9D2D88(v28, v22, v32);
  return (v33)(v28, v22);
}

uint64_t sub_23BAE9D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v103 = a4;
  v95 = a5;
  v97 = a2;
  v100 = a1;
  v101 = a6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0060);
  v98 = sub_23B9A8CB4(&qword_27E1A0068, &qword_27E1A0060);
  v7 = *(a3 + 16);
  v86 = *(a3 + 40);
  *v139 = v7;
  *&v139[8] = v99;
  v8 = v7;
  *&v139[16] = v86;
  *&v139[24] = v98;
  type metadata accessor for CombinedMarketingContent();
  sub_23BBDA358();
  v9 = v8;
  v94 = v8;
  v102 = sub_23BBDACE8();
  MEMORY[0x28223BE20](v102);
  v96 = &v71[-v10];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  swift_getTupleTypeMetadata2();
  v11 = sub_23BBDC3D8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  v13 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v90 = a3;
  v14 = *(a3 + 48);
  v92 = *(a3 + 56);
  v93 = v14;
  *v139 = v12;
  *&v139[24] = v13;
  v140 = v14;
  v141 = v92;
  v15.i64[0] = v9;
  v91 = v15;
  v105 = *(a3 + 24);
  *&v139[8] = v105;
  type metadata accessor for StoreContentNavigation();
  v16 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v138[16] = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *v139 = v11;
  *&v139[8] = v16;
  *&v139[16] = WitnessTable;
  *&v139[24] = v18;
  type metadata accessor for BottomContentContainer();
  v19 = sub_23BBDD648();
  v20 = sub_23BBDD648();
  v138[15] = WitnessTable;
  v21 = swift_getWitnessTable();
  *v139 = v20;
  *&v139[8] = v16;
  *&v139[16] = v21;
  *&v139[24] = v18;
  type metadata accessor for MagicPocketContainer();
  v22 = sub_23BBDD648();
  v23 = swift_getWitnessTable();
  v24 = sub_23BAF69D4();
  v138[13] = v23;
  v138[14] = v24;
  v25 = MEMORY[0x277CDFAD8];
  v26 = swift_getWitnessTable();
  v27 = v86;
  v138[11] = v26;
  v138[12] = v86;
  v28 = v102;
  v29 = swift_getWitnessTable();
  v81 = v29;
  v138[10] = swift_getWitnessTable();
  v83 = v19;
  v30 = swift_getWitnessTable();
  v80 = v30;
  v138[9] = swift_getWitnessTable();
  v82 = v22;
  v78 = swift_getWitnessTable();
  *v139 = v28;
  *&v139[8] = v19;
  *&v139[16] = v22;
  *&v139[24] = v29;
  v140 = v30;
  v141 = v78;
  v73 = type metadata accessor for SubscriptionStoreStructuredScrollView();
  v89 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v77 = &v71[-v31];
  sub_23BBDA358();
  v32 = sub_23BBDA358();
  v33 = sub_23B97AD88();
  v34 = v95;
  v138[7] = v95;
  v138[8] = v33;
  v88 = v25;
  v35 = swift_getWitnessTable();
  v36 = sub_23BA3D77C();
  v138[5] = v35;
  v138[6] = v36;
  v75 = v32;
  v76 = swift_getWitnessTable();
  v84 = sub_23BBDACB8();
  v85 = sub_23BBDA358();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v74 = &v71[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v79 = &v71[-v39];
  sub_23B9AF0F0(v97, v138);
  v40 = v90;
  v41 = v104;
  v42 = (v104 + *(v90 + 84));
  v43 = *v42;
  v44 = *(v42 + 1);
  v139[0] = v43;
  *&v139[8] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130);
  sub_23BBDBF68();
  v72 = v137;
  *&v45 = vdupq_laneq_s64(v105, 1).u64[0];
  v46 = v27;
  *(&v45 + 1) = v27;
  *&v139[16] = v45;
  *v139 = vzip1q_s64(v91, v105);
  v48 = v92;
  v47 = v93;
  v140 = v93;
  v141 = v92;
  type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties();
  v49 = sub_23BAEDB28();
  v50 = v96;
  sub_23BAEB680(v51, v40, v99, v98, v96);
  v99 = v71;
  v125 = v94;
  v126 = v105;
  v52 = v103;
  v127 = v103;
  v53 = v46;
  v128 = v46;
  v54 = v47;
  v129 = v47;
  v55 = v48;
  v130 = v48;
  v131 = v34;
  v132 = v138;
  v56 = v41;
  v133 = v41;
  v57 = v100;
  v134 = v100;
  v115 = v94;
  v58 = v94;
  v116 = v105;
  v117 = v103;
  v118 = v53;
  v59 = v53;
  v119 = v54;
  v120 = v55;
  v121 = v34;
  v122 = v138;
  v60 = v34;
  v123 = v56;
  v124 = v100;
  v61 = v77;
  sub_23BAF0478(v72 & 1, 2, v50, sub_23BAF7834, sub_23BAF784C, v102, v77, v49);
  v106 = v58;
  v107 = v105;
  v108 = v52;
  v109 = v59;
  v110 = v54;
  v111 = v55;
  v112 = v60;
  v113 = v57;
  v114 = v104;
  v62 = v73;
  v63 = swift_getWitnessTable();
  sub_23B9C2924();
  v64 = v74;
  sub_23BBDB6B8();
  (*(v89 + 8))(v61, v62);
  v65 = swift_getWitnessTable();
  v135 = v63;
  v136 = v65;
  v66 = v85;
  v67 = swift_getWitnessTable();
  v68 = v79;
  sub_23B9D2D88(v64, v66, v67);
  v69 = *(v87 + 8);
  v69(v64, v66);
  sub_23B9D2D88(v68, v66, v67);
  v69(v68, v66);
  return sub_23B97B104(v138);
}

uint64_t sub_23BAEA60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a7;
  v35 = a5;
  v36 = a6;
  v30 = a4;
  v32 = a3;
  v31 = a2;
  v33 = a1;
  v34 = a9;
  v29 = a8;
  v28 = type metadata accessor for SubscriptionStoreMainContainerContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080);
  sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080);
  type metadata accessor for CombinedMarketingContent();
  sub_23BBDA358();
  v26[1] = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  type metadata accessor for StoreContentNavigation();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for BottomContentContainer();
  sub_23BBDD648();
  sub_23BBDACE8();
  v46 = sub_23BAF6A40();
  v47 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for MagicPocketContainer();
  sub_23BBDD648();
  v44 = swift_getWitnessTable();
  v45 = sub_23BAF69D4();
  v11 = v27;
  v42 = swift_getWitnessTable();
  v43 = v27;
  swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v52 = v12;
  v53 = swift_getWitnessTable();
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8);
  v13 = sub_23BBDA358();
  v14 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v39 = sub_23B9A8CB4(&qword_27E1A00B0, &qword_27E1A00A8);
  v48 = v28;
  v49 = v13;
  v50 = v14;
  v51 = swift_getWitnessTable();
  sub_23BBDAEC8();
  v15 = sub_23BBDBE28();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v26 - v20;
  v48 = v30;
  v49 = v35;
  v50 = v36;
  v51 = v11;
  v52 = v29;
  v53 = a10;
  v22 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  sub_23BAEAC78(v31, v32, v22, v14, v18);
  v37 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v18, v15, v23);
  v24 = *(v16 + 8);
  v24(v18, v15);
  sub_23B9D2D88(v21, v15, v23);
  return (v24)(v21, v15);
}

uint64_t sub_23BAEAC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v91 = a4;
  v81 = a2;
  v77 = a1;
  v84 = a5;
  v90 = *(a3 - 8);
  v82 = *(v90 + 64);
  MEMORY[0x28223BE20](a1);
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v7;
  v76 = *(v7 - 8);
  v80 = *(v76 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080);
  v13 = sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080);
  v15 = *(a3 + 40);
  *v106 = *(a3 + 16);
  v14 = *v106;
  *&v106[8] = v12;
  *&v106[16] = v15;
  *&v106[24] = v13;
  v85 = v15;
  type metadata accessor for CombinedMarketingContent();
  v71 = sub_23BBDA358();
  v75 = v14;
  v72 = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v16 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  v18 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v89 = a3;
  v88 = *(a3 + 48);
  v87 = *(a3 + 56);
  *v106 = v17;
  *&v106[24] = v18;
  *&v106[32] = v88;
  *&v106[40] = v87;
  v19.i64[0] = v14;
  v73 = v19;
  v86 = *(a3 + 24);
  *&v106[8] = v86;
  type metadata accessor for StoreContentNavigation();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v20 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *v106 = v16;
  *&v106[8] = v20;
  *&v106[16] = WitnessTable;
  *&v106[24] = v22;
  type metadata accessor for BottomContentContainer();
  v23 = sub_23BBDD648();
  v24 = sub_23BBDACE8();
  v104 = sub_23BAF6A40();
  v105 = WitnessTable;
  v25 = swift_getWitnessTable();
  *v106 = v24;
  *&v106[8] = v20;
  *&v106[16] = v25;
  *&v106[24] = v22;
  type metadata accessor for MagicPocketContainer();
  v26 = sub_23BBDD648();
  v27 = swift_getWitnessTable();
  v28 = sub_23BAF69D4();
  v102 = v27;
  v103 = v28;
  v100 = swift_getWitnessTable();
  v101 = v15;
  v29 = v72;
  v30 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  *v106 = v29;
  *&v106[8] = v23;
  *&v106[16] = v26;
  *&v106[24] = v30;
  *&v106[32] = v31;
  *&v106[40] = v32;
  type metadata accessor for SubscriptionStoreStructuredScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8);
  v33 = sub_23BBDA358();
  v34 = swift_getWitnessTable();
  v35 = sub_23B9A8CB4(&qword_27E1A00B0, &qword_27E1A00A8);
  v96 = v34;
  v97 = v35;
  v71 = v33;
  v70 = swift_getWitnessTable();
  v36 = v74;
  *v106 = v74;
  *&v106[8] = v33;
  *&v106[16] = v91;
  *&v106[24] = v70;
  v69 = sub_23BBDAEC8();
  v72 = sub_23BBDBE28();
  v37 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v39);
  v68 = &v67 - v41;
  v42 = v76;
  v43 = *(v76 + 16);
  v44 = v77;
  v43(v92, v77, v36, v40);
  *&v45 = vdupq_laneq_s64(v86, 1).u64[0];
  *(&v45 + 1) = v85;
  *&v106[16] = v45;
  *v106 = vzip1q_s64(v73, v86);
  *&v106[32] = v88;
  *&v106[40] = v87;
  v46 = type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties();
  v47 = v81;
  (*(*(v46 - 8) + 16))(v106, v81, v46);
  v48 = v90;
  v49 = v79;
  (*(v90 + 16))(v79, v83, v89);
  sub_23B9AF0F0(v47, v94);
  v50 = v78;
  (v43)(v78, v44, v36);
  v51 = (*(v48 + 80) + 121) & ~*(v48 + 80);
  v52 = v37;
  v53 = (v82 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v42 + 80) + v53 + 40) & ~*(v42 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v75;
  *(v55 + 24) = v86;
  v56 = v85;
  *(v55 + 40) = v36;
  *(v55 + 48) = v56;
  v57 = v87;
  *(v55 + 56) = v88;
  *(v55 + 64) = v57;
  *(v55 + 72) = v91;
  v58 = *&v106[16];
  *(v55 + 80) = *v106;
  *(v55 + 96) = v58;
  *(v55 + 105) = *&v106[25];
  (*(v90 + 32))(v55 + v51, v49, v89);
  v59 = v55 + v53;
  v60 = v94[1];
  *v59 = v94[0];
  *(v59 + 16) = v60;
  *(v59 + 32) = v95;
  (*(v42 + 32))(v55 + v54, v50, v36);
  v61 = v67;
  sub_23BBDBE08();
  v93 = swift_getWitnessTable();
  v62 = v72;
  v63 = swift_getWitnessTable();
  v64 = v68;
  sub_23B9D2D88(v61, v62, v63);
  v65 = *(v52 + 8);
  v65(v61, v62);
  sub_23B9D2D88(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_23BAEB680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a1;
  v67 = a5;
  v57 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19A490);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - v17;
  v19 = *(a2 + 40);
  v76 = v11;
  v77 = a3;
  v66 = v19;
  v78 = v19;
  v79 = a4;
  v59 = a4;
  v20 = type metadata accessor for CombinedMarketingContent();
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v65 = v23;
  v24 = sub_23BBDA358();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - v29;
  v31 = sub_23BBDACE8();
  v63 = *(v31 - 8);
  v64 = v31;
  MEMORY[0x28223BE20](v31);
  v62 = &v53 - v32;
  if (*(v5 + *(a2 + 72)))
  {
    sub_23BAE7758(a2, v18);
    v33 = v60;
    (*(v61 + 16))(v60, v5, v11);
    v34 = v56;
    (*(v57 + 16))(v56, v58, a3);
    v35 = v18;
    v36 = v66;
    sub_23BABD26C(v35, v33, v34, v11, a3, v22);
    v37 = v65;
    WitnessTable = swift_getWitnessTable();
    sub_23B97AB10(1, v37, WitnessTable);
    (*(v55 + 8))(v22, v37);
    v39 = sub_23BAF69D4();
    v68 = WitnessTable;
    v69 = v39;
    v40 = swift_getWitnessTable();
    sub_23B9D2D88(v27, v24, v40);
    v41 = *(v25 + 8);
    v41(v27, v24);
    sub_23B9D2D88(v30, v24, v40);
    v42 = v62;
    sub_23BA82D64();
    v41(v27, v24);
    v41(v30, v24);
  }

  else
  {
    v43 = v60;
    v36 = v66;
    sub_23B9D2D88(v5, v11, v66);
    v44 = v54;
    sub_23B9D2D88(v43, v11, v36);
    v45 = swift_getWitnessTable();
    v46 = sub_23BAF69D4();
    v74 = v45;
    v75 = v46;
    swift_getWitnessTable();
    v42 = v62;
    sub_23BA82E14();
    v47 = *(v61 + 8);
    v47(v44, v11);
    v47(v43, v11);
  }

  v48 = swift_getWitnessTable();
  v49 = sub_23BAF69D4();
  v72 = v48;
  v73 = v49;
  v70 = swift_getWitnessTable();
  v71 = v36;
  v50 = v64;
  v51 = swift_getWitnessTable();
  sub_23B9D2D88(v42, v50, v51);
  return (*(v63 + 8))(v42, v50);
}

double sub_23BAEBD04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 72));
  if (v4)
  {

    if (sub_23BAE7588(a1))
    {
      sub_23BAE753C();
      sub_23BAAFC80(v4, v9, v10);
      v6 = v10[1];
      *a2 = v10[0];
      *(a2 + 16) = v6;
      result = *&v11;
      v8 = v12;
      *(a2 + 32) = v11;
      *(a2 + 48) = v8;
      return result;
    }
  }

  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_23BAEBDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = *(a1 + 48);
  v40 = *(a1 + 24);
  v41 = v4;
  *&v43[16] = v4;
  *v43 = v40;
  v36 = type metadata accessor for SubscriptionStoreContainerContext();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  v7 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v33 = v6;
  *v43 = v6;
  *&v43[8] = v40;
  *&v43[24] = v7;
  v44 = v41;
  v8 = type metadata accessor for StoreContentNavigation();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v32 - v12;
  v13 = sub_23BBDD648();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = *(v2 + *(a1 + 72));
  if (v20 && *(v20 + 16) >= 2uLL)
  {

    if (!sub_23BAE7588(a1))
    {
      *v43 = sub_23BAE5A7C(1, v20);
      *&v43[8] = v24;
      *&v43[16] = v25;
      *&v43[24] = v26;
      v27 = v2 + *(a1 + 68);
      v28 = v35;
      (*(v34 + 16))(v35, v27, v36);
      sub_23BAB6FF0(v43, v28, v33, v40, *(&v40 + 1), v7, v41, *(&v41 + 1), v10);
      WitnessTable = swift_getWitnessTable();
      sub_23B9D2D88(v10, v8, WitnessTable);
      v30 = v37;
      *&v41 = *(v37 + 8);
      (v41)(v10, v8);
      v31 = v38;
      sub_23B9D2D88(v38, v8, WitnessTable);
      (v41)(v31, v8);
      (*(v30 + 32))(v16, v10, v8);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v8);
      goto LABEL_6;
    }
  }

  __swift_storeEnumTagSinglePayload(v16, 1, 1, v8);
  swift_getWitnessTable();
LABEL_6:
  sub_23BB2F9F4();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v42 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  sub_23B9D2D88(v19, v13, v22);
  return (v21)(v19, v13);
}

uint64_t sub_23BAEC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v99 = a8;
  v98 = a7;
  v93 = a5;
  v91 = a4;
  v92 = a3;
  v72 = a2;
  v84 = a1;
  v94 = a9;
  v90 = a14;
  v73 = a11;
  v103 = a6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0080);
  v86 = v104;
  v105 = a11;
  v106 = sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080);
  v85 = v106;
  type metadata accessor for CombinedMarketingContent();
  sub_23BBDA358();
  v97 = v103;
  v14 = sub_23BBDACE8();
  MEMORY[0x28223BE20](v14);
  v87 = &v72 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  v89 = a10;
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v16 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  v18 = sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v103 = v17;
  v104 = v98;
  v105 = v99;
  v106 = v18;
  v95 = a12;
  v107 = a12;
  v108 = a13;
  v96 = a13;
  type metadata accessor for StoreContentNavigation();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v19 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v103 = v16;
  v104 = v19;
  v105 = WitnessTable;
  v106 = v21;
  type metadata accessor for BottomContentContainer();
  v22 = sub_23BBDD648();
  v23 = sub_23BBDACE8();
  v102[7] = sub_23BAF6A40();
  v102[8] = WitnessTable;
  v24 = swift_getWitnessTable();
  v103 = v23;
  v104 = v19;
  v25 = v73;
  v105 = v24;
  v106 = v21;
  type metadata accessor for MagicPocketContainer();
  v26 = sub_23BBDD648();
  v27 = swift_getWitnessTable();
  v28 = sub_23BAF69D4();
  v102[5] = v27;
  v102[6] = v28;
  v102[3] = swift_getWitnessTable();
  v102[4] = v25;
  v29 = swift_getWitnessTable();
  v102[2] = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v102[1] = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v88 = v14;
  v103 = v14;
  v104 = v22;
  v83 = v22;
  v82 = v26;
  v105 = v26;
  v106 = v29;
  v76 = v29;
  v75 = v30;
  v107 = v30;
  v108 = v31;
  v74 = v31;
  v32 = type metadata accessor for SubscriptionStoreStructuredScrollView();
  v80 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v77 = &v72 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A00A8);
  v34 = sub_23BBDA358();
  v81 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v78 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v79 = &v72 - v37;
  v38 = sub_23BBDAA98();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v84, v39);
  sub_23BAECCBC(v41, &v109);
  v43 = 0.0;
  if ((BYTE1(v109) & 1) == 0)
  {
    v103 = v97;
    v104 = v98;
    v105 = v99;
    v106 = v25;
    v107 = v95;
    v108 = v96;
    type metadata accessor for SubscriptionStoreStaticViewContainer.PlacementProperties();
    v43 = sub_23BAEDB28();
  }

  LODWORD(v72) = (v110[24] == 2) | v110[24];
  LODWORD(v84) = v109;
  v102[0] = *(&v109 + 1);
  v44 = v97;
  v45 = v98;
  v103 = v97;
  v104 = v98;
  v46 = v99;
  v105 = v99;
  v106 = v25;
  v47 = v95;
  v107 = v95;
  v108 = v96;
  v48 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  v49 = v87;
  v50 = sub_23BAEB680(v102, v48, v86, v85, v87);
  MEMORY[0x28223BE20](v50);
  *(&v72 - 12) = v44;
  *(&v72 - 11) = v45;
  v51 = v89;
  *(&v72 - 10) = v46;
  *(&v72 - 9) = v51;
  *(&v72 - 8) = v52;
  *(&v72 - 7) = v47;
  MEMORY[0x28223BE20](v51);
  *(&v72 - 12) = v44;
  *(&v72 - 11) = v45;
  *(&v72 - 10) = v46;
  *(&v72 - 9) = v53;
  *(&v72 - 8) = v54;
  *(&v72 - 7) = v47;
  v71 = v55;
  v70 = v74;
  v69 = v75;
  v68 = v76;
  v67 = v82;
  v66 = v83;
  v56 = v77;
  sub_23BAF0478(v84, v72 & 1, v49, sub_23BAF6FE4, sub_23BAF6FFC, v88, v77, v43);
  swift_getKeyPath();
  v57 = swift_allocObject();
  v58 = *v110;
  v57[1] = v109;
  v57[2] = v58;
  *(v57 + 41) = *&v110[9];
  v59 = swift_getWitnessTable();
  v60 = v78;
  sub_23BBDB9B8();

  (*(v80 + 8))(v56, v32);
  v61 = sub_23B9A8CB4(&qword_27E1A00B0, &qword_27E1A00A8);
  v100 = v59;
  v101 = v61;
  v62 = swift_getWitnessTable();
  v63 = v79;
  sub_23B9D2D88(v60, v34, v62);
  v64 = *(v81 + 8);
  v64(v60, v34);
  sub_23B9D2D88(v63, v34, v62);
  return (v64)(v63, v34);
}

uint64_t sub_23BAECCBC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E0);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = v100 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00E8);
  MEMORY[0x28223BE20](v115);
  v111 = v100 - v5;
  v127 = sub_23BBDA288();
  v6 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v102 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v119 = v100 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v100 - v11;
  v130 = sub_23BBDC208();
  v13 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v113 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100[0] = v100 - v16;
  MEMORY[0x28223BE20](v17);
  v112 = v100 - v18;
  MEMORY[0x28223BE20](v19);
  v123 = v100 - v20;
  MEMORY[0x28223BE20](v21);
  v118 = v100 - v22;
  MEMORY[0x28223BE20](v23);
  v117 = v100 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v100 - v26;
  v28 = sub_23BBDAA98();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00F0);
  MEMORY[0x28223BE20](v32);
  v120 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = v100 - v36;
  v122 = v29;
  v38 = *(v29 + 16);
  v114 = a1;
  v124 = (v29 + 16);
  i = v38;
  (v38)(v31, a1, v28, v35);
  v39 = MEMORY[0x277CE0150];
  v40 = sub_23BAF9FDC(&qword_27E1A00F8, MEMORY[0x277CE0150]);
  v107 = v31;
  v100[1] = v40;
  sub_23BBDD188();
  v101 = v32;
  v41 = *(v32 + 36);
  sub_23BAF9FDC(&qword_27E1984F8, v39);
  v128 = (v13 + 16);
  v129 = v28;
  v121 = v13;
  v125 = (v13 + 8);
  v126 = (v6 + 8);
  v42 = v28;
  do
  {
    sub_23BBDD4A8();
    v43 = *&v37[v41];
    v44 = v131;
    if (v43 == v131)
    {
      break;
    }

    v45 = sub_23BBDD558();
    v46 = v130;
    (*v128)(v27);
    v45(&v131, 0);
    sub_23BBDD4B8();
    sub_23BBDC1D8();
    sub_23BAF72E8();
    sub_23BBDA298();
    (*v126)(v12, v127);
    v47 = v46;
    v42 = v129;
    (*v125)(v27, v47);
  }

  while (v131 == 2);
  sub_23B9A8E20(v37, &qword_27E1A00F0);
  v133 = v43 != v44;
  v48 = v108;
  v49 = v114;
  (i)(v108, v114, v42);
  v106 = *(v122 + 32);
  v50 = v111;
  (v106)(v111, v48, v42);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0108);
  v51 = (v50 + *(v105 + 44));
  *v51 = sub_23BAF24D8;
  v51[1] = 0;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0110);
  v52 = (v50 + *(v104 + 36));
  v103 = sub_23BAF77FC;
  *v52 = sub_23BAF77FC;
  v52[1] = 0;
  v53 = (v50 + *(v115 + 44));
  *v53 = sub_23BAF7804;
  v53[1] = 0;
  v109 = sub_23BAE5B10(2u, v50);
  sub_23B9A8E20(v50, &qword_27E1A00E8);
  (i)(v48, v49, v42);
  (v106)(v50, v48, v42);
  v54 = (v50 + *(v105 + 44));
  *v54 = sub_23BAF2608;
  v54[1] = 0;
  v55 = (v50 + *(v104 + 36));
  *v55 = v103;
  v55[1] = 0;
  v56 = (v50 + *(v115 + 44));
  *v56 = sub_23BAF7804;
  v56[1] = 0;
  LOBYTE(v48) = sub_23BAE6168(0, v50);
  sub_23B9A8E20(v50, &qword_27E1A00E8);
  v132 = v48 & 1;
  v57 = v107;
  (i)(v107, v49, v42);
  if (v43 != v44)
  {
    v58 = v120;
    sub_23BBDD188();
    v124 = (v121 + 32);
    v59 = MEMORY[0x277D84F90];
    v60 = 1;
    v61 = *(v101 + 36);
    v105 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v62 = v122;
    for (i = v61; ; v61 = i)
    {
      sub_23BBDD4A8();
      if (*&v61[v58] == v131)
      {
        (*(v62 + 8))(v114, v42);
        result = sub_23B9A8E20(v58, &qword_27E1A00F0);
        v93 = v111;
        v95 = v107;
        v97 = v106;
        goto LABEL_40;
      }

      v63 = sub_23BBDD558();
      v64 = *v128;
      (*v128)(v117);
      v63(&v131, 0);
      sub_23BBDD4B8();
      v65 = *v124;
      v66 = v118;
      (*v124)();
      v67 = v119;
      sub_23BBDC1D8();
      sub_23BAC3448();
      sub_23BBDA298();
      v68 = *v126;
      (*v126)(v67, v127);
      if ((v60 & 1) == 0)
      {
        break;
      }

      if (v131 == 2)
      {
        goto LABEL_18;
      }

      if ((v131 & 1) == 0)
      {
        goto LABEL_29;
      }

      (v64)(v123, v66, v130);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v122;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23B9B83DC();
        v59 = v85;
      }

      v70 = *(v59 + 16);
      if (v70 >= *(v59 + 24) >> 1)
      {
        sub_23B9B83DC();
        v59 = v86;
      }

      v71 = v121;
      v72 = v66;
      v73 = v130;
      (*(v121 + 8))(v72, v130);
      *(v59 + 16) = v70 + 1;
      (v65)(v59 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70, v123, v73);
      v60 = 1;
      v42 = v129;
LABEL_15:
      v58 = v120;
    }

    if (v131 == 2 || (v131 & 1) != 0)
    {
LABEL_18:
      v74 = v102;
      sub_23BBDC1D8();
      sub_23BAF72E8();
      sub_23BBDA298();
      v68(v74, v127);
      if (v131 == 2 || (v131 & 1) == 0)
      {
        (v64)(v113, v66, v130);
        v75 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B9B83DC();
          v75 = v87;
        }

        v77 = *(v75 + 2);
        v80 = *(v75 + 3);
        v115 = v77 + 1;
        if (v77 < v80 >> 1)
        {
          v78 = v113;
          v107 = v75;
          v79 = &v134;
          goto LABEL_28;
        }

        sub_23B9B83DC();
        v75 = v88;
        v78 = v113;
        v107 = v88;
        v89 = &v134;
      }

      else
      {
        (v64)(v100[0], v66, v130);
        v75 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B9B83DC();
          v75 = v91;
        }

        v77 = *(v75 + 2);
        v76 = *(v75 + 3);
        v115 = v77 + 1;
        if (v77 < v76 >> 1)
        {
          v78 = v100[0];
          v106 = v75;
          v79 = &v133;
LABEL_28:
          *(v79 - 32) = v75;
LABEL_33:
          v82 = v121;
          v83 = v66;
          v84 = v130;
          (*(v121 + 8))(v83, v130);
          *(v75 + 2) = v115;
          (v65)(&v75[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v77], v78, v84);
          v60 = 0;
          v42 = v129;
          v62 = v122;
          goto LABEL_15;
        }

        sub_23B9B83DC();
        v75 = v88;
        v78 = v100[0];
        v106 = v88;
        v89 = &v133;
      }
    }

    else
    {
LABEL_29:
      (v64)(v112, v66, v130);
      v75 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23B9B83DC();
        v75 = v90;
      }

      v77 = *(v75 + 2);
      v81 = *(v75 + 3);
      v115 = v77 + 1;
      if (v77 < v81 >> 1)
      {
        v111 = v75;
        v78 = v112;
        goto LABEL_33;
      }

      sub_23B9B83DC();
      v75 = v88;
      v78 = v112;
      v89 = &v135;
    }

    *(v89 - 32) = v88;
    goto LABEL_33;
  }

  v59 = sub_23BAE6CEC(v57);
  v93 = v92;
  v95 = v94;
  result = (*(v122 + 8))(v49, v42);
  v97 = MEMORY[0x277D84F90];
LABEL_40:
  v98 = v132;
  v99 = v110;
  *v110 = v133;
  v99[1] = v98;
  *(v99 + 1) = v59;
  *(v99 + 2) = v93;
  *(v99 + 3) = v95;
  *(v99 + 4) = v97;
  v99[40] = v109;
  return result;
}

double sub_23BAEDB28()
{
  v0 = sub_23BAF21C8();
  result = 0.0;
  if (v0)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_23BAEDB50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v76 = a4;
  v77 = a2;
  v71 = a3;
  v75 = a1;
  v78 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  v72 = a7;
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v16 = a5;
  v69 = a6;
  v73 = a10;
  v74 = a11;
  v84 = a10;
  v85 = a11;
  type metadata accessor for StoreContentNavigation();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v70 = v15;
  v80 = v15;
  v81 = sub_23BBDC3D8();
  v65 = v81;
  WitnessTable = swift_getWitnessTable();
  v82 = WitnessTable;
  v83 = swift_getWitnessTable();
  v63 = v83;
  v17 = type metadata accessor for BottomContentContainer();
  v68 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v67 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v66 = &v55 - v20;
  v21 = sub_23BBDD648();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v55 - v26;
  v28 = v75;
  if (sub_23BAEE1D0(v75))
  {
    v57 = a12;
    v56 = a9;
    v80 = v76;
    v81 = v16;
    v60 = v27;
    v29 = v69;
    v82 = v69;
    v83 = a9;
    v62 = v21;
    v30 = v73;
    v61 = v22;
    v31 = v74;
    v84 = v73;
    v85 = v74;
    v32 = v77 + *(type metadata accessor for SubscriptionStoreStaticViewContainer() + 68);
    v80 = v16;
    v81 = v29;
    v82 = v30;
    v83 = v31;
    v58 = *(v32 + *(type metadata accessor for SubscriptionStoreContainerContext() + 56));
    v33 = sub_23B9AF0F0(v28, &v80);
    v59 = &v55;
    MEMORY[0x28223BE20](v33);
    *(&v55 - 12) = v76;
    *(&v55 - 11) = v16;
    v34 = v72;
    *(&v55 - 10) = v29;
    *(&v55 - 9) = v34;
    *(&v55 - 8) = v56;
    *(&v55 - 7) = v30;
    MEMORY[0x28223BE20](v34);
    *(&v55 - 10) = v35;
    *(&v55 - 9) = v16;
    *(&v55 - 8) = v29;
    *(&v55 - 7) = v36;
    v21 = v62;
    v22 = v61;
    v54 = v37;
    v53 = v63;
    v52 = WitnessTable;
    v51 = v65;
    v49 = &v55 - 12;
    v50 = v70;
    v38 = v67;
    sub_23BAEEBE0(v58, &v80, v39, v40, v41, sub_23BAF727C, sub_23BAF72A0, v67);
    v42 = swift_getWitnessTable();
    v43 = v66;
    sub_23B9D2D88(v38, v17, v42);
    v44 = v68;
    v45 = *(v68 + 8);
    v45(v38, v17);
    sub_23B9D2D88(v43, v17, v42);
    v45(v43, v17);
    v27 = v60;
    (*(v44 + 32))(v24, v38, v17);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v17);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v17);
    swift_getWitnessTable();
  }

  sub_23BB2F9F4();
  v46 = *(v22 + 8);
  v46(v24, v21);
  v79 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  sub_23B9D2D88(v27, v21, v47);
  return (v46)(v27, v21);
}

uint64_t sub_23BAEE1D0(uint64_t a1)
{
  memset(v6, 0, 40);
  v3 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a1, v6);
  sub_23B97B104(v6);
  if (v3)
  {
    v4 = 1;
  }

  else if (*v1)
  {
    memset(v6, 0, 24);
    *(&v6[1] + 8) = xmmword_23BBE7BC0;
    v4 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a1, v6);
    sub_23B97B104(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_23BAEE26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v53 = a4;
  v61 = a1;
  v68 = a9;
  v67 = a12;
  v56 = *(a8 - 8);
  v60 = a10;
  MEMORY[0x28223BE20](a1);
  v55 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v54 = &v52 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0098);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v22 = &v52 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00B8);
  MEMORY[0x28223BE20](v58);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0090);
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v63 = v28;
  v66 = a8;
  v29 = sub_23BBDACE8();
  v62 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v65 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v64 = &v52 - v32;
  v77[0] = a5;
  v77[1] = a6;
  v77[2] = a7;
  v78 = v60;
  v79 = a11;
  v33 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  sub_23BAEBD04(v33, v77);
  if (*a2)
  {
    v34 = *(a2 + 24);
    v75 = 0;
    memset(v74, 0, sizeof(v74));

    v35 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a3, v74);
    v36 = sub_23B97B104(v74);
    v37 = 0;
    if (v35)
    {
      v37 = *(a2 + 32);
    }

    MEMORY[0x28223BE20](v36);
    v38 = sub_23BAEEB5C(sub_23BAF72DC);
    *v24 = v34;
    *(v24 + 1) = v37;
    v24[16] = v38 & 1;
    *(v24 + 3) = 0;
    v24[32] = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0);
    sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0);
    sub_23BAF6A40();
    sub_23BBDACD8();
    sub_23BAF712C();
    v39 = v64;
    v40 = v67;
    sub_23BA82D64();
    sub_23B9A8E20(v27, &qword_27E1A0090);
  }

  else if (*(*(a2 + 8) + 16) || *(*(a2 + 16) + 16))
  {
    *&v74[0] = *(a2 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080);
    sub_23BBDC1E8();
    sub_23BBDC208();
    sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080);
    sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0]);
    v41 = v22;
    sub_23BBDC198();
    v42 = v57;
    v43 = v59;
    (*(v57 + 16))(v24, v41, v59);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0);
    sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0);
    sub_23BAF6A40();
    sub_23BBDACD8();
    sub_23BAF712C();
    v39 = v64;
    v40 = v67;
    sub_23BA82D64();
    sub_23B9A8E20(v27, &qword_27E1A0090);
    (*(v42 + 8))(v41, v43);
  }

  else
  {
    v48 = v54;
    v49 = v66;
    v40 = v67;
    sub_23B9D2D88(v53, v66, v67);
    v50 = v55;
    sub_23B9D2D88(v48, v49, v40);
    sub_23BAF712C();
    v39 = v64;
    sub_23BA82E14();
    v51 = *(v56 + 8);
    v51(v50, v49);
    v51(v48, v49);
  }

  sub_23B989ECC(v77, v74, &qword_27E1A0070);
  v76[0] = v74;
  v44 = v62;
  v45 = v65;
  (*(v62 + 16))(v65, v39, v29);
  v76[1] = v45;
  v73[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0070);
  v73[1] = v29;
  v71 = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
  v69 = sub_23BAF712C();
  v70 = v40;
  WitnessTable = swift_getWitnessTable();
  sub_23BB6739C(v76, 2, v73);
  v46 = *(v44 + 8);
  v46(v39, v29);
  sub_23B9A8E20(v77, &qword_27E1A0070);
  v46(v45, v29);
  return sub_23B9A8E20(v74, &qword_27E1A0070);
}

uint64_t sub_23BAEEB5C(void (*a1)(void *__return_ptr))
{
  v2 = *(v1 + 40);
  if (v2 == 2 || (v2 & 1) != 0)
  {
    a1(v7);
    memset(v5, 0, sizeof(v5));
    v6 = xmmword_23BBE4070;
    v3 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v7, v5);
    sub_23B97B104(v5);
    sub_23B97B104(v7);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_23BAEEBE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t (*a6)(void)@<X5>, void (*a7)(uint64_t)@<X7>, _BYTE *a8@<X8>)
{
  *a8 = a1;
  sub_23B9AF0F0(a2, (a8 + 8));
  a8[48] = a3;
  a8[49] = a4;
  a8[50] = a5;
  type metadata accessor for BottomContentContainer();
  v14 = a6();
  a7(v14);
  return sub_23B97B104(a2);
}

uint64_t sub_23BAEECBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v72 = a5;
  v70 = a4;
  v76 = a3;
  v77 = a2;
  v78 = a9;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  v75 = a8;
  sub_23BBDACE8();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  v15 = sub_23BBDACE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v73 = a6;
  v74 = a7;
  *(&v86 + 1) = *(&a10 + 1);
  v87 = a11;
  v71 = a11;
  type metadata accessor for StoreContentNavigation();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v16 = sub_23BBDC3D8();
  v81 = sub_23BAF6A40();
  WitnessTable = swift_getWitnessTable();
  v83 = v15;
  v84 = v16;
  v69 = swift_getWitnessTable();
  v85 = v69;
  *&v86 = swift_getWitnessTable();
  v67 = v86;
  v17 = type metadata accessor for MagicPocketContainer();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v68 = &v58 - v22;
  v23 = sub_23BBDD648();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  sub_23B9C9234(v79, &v83);
  if ((v86 - 1) >= 2)
  {
    sub_23B9C9290(&v83);
LABEL_6:
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v17);
    swift_getWitnessTable();
    goto LABEL_7;
  }

  v64 = v20;
  v65 = v16;
  v66 = v15;
  v30 = v76;
  if (*(v77 + 1))
  {
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = xmmword_23BBE4070;
    v31 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v79, &v83);
    sub_23B97B104(&v83);
    if ((v31 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v59 = a12;
  v58 = a10;
  v62 = v29;
  v32 = v72;
  v33 = v73;
  v83 = v72;
  v84 = v73;
  v61 = v18;
  v34 = v74;
  v85 = v74;
  v86 = a10;
  v63 = v24;
  v35 = v71;
  v87 = v71;
  v36 = v30;
  v37 = v30 + *(type metadata accessor for SubscriptionStoreStaticViewContainer() + 68);
  v83 = v33;
  v84 = v34;
  v85 = *(&a10 + 1);
  *&v86 = v35;
  v38 = type metadata accessor for SubscriptionStoreContainerContext();
  v60 = &v58;
  MEMORY[0x28223BE20](*(v37 + *(v38 + 56)));
  *(&v58 - 12) = v32;
  *(&v58 - 11) = v33;
  v39 = v75;
  *(&v58 - 10) = v34;
  *(&v58 - 9) = v39;
  *(&v58 - 8) = v58;
  *(&v58 - 7) = *(&a10 + 1);
  v40 = v59;
  *(&v58 - 6) = v35;
  *(&v58 - 5) = v40;
  v41 = v79;
  *(&v58 - 4) = v77;
  *(&v58 - 3) = v41;
  MEMORY[0x28223BE20](v42);
  *(&v58 - 10) = v32;
  *(&v58 - 9) = v33;
  v29 = v62;
  *(&v58 - 8) = v34;
  *(&v58 - 7) = v43;
  *(&v58 - 6) = v44;
  *(&v58 - 5) = *(&a10 + 1);
  v24 = v63;
  *(&v58 - 4) = v35;
  *(&v58 - 3) = v45;
  v57 = v36;
  v56 = v67;
  v46 = v64;
  sub_23BAF03EC(v47, sub_23BAF7080, sub_23BAFA5CC, v64);
  v48 = swift_getWitnessTable();
  v49 = v68;
  sub_23B9D2D88(v46, v17, v48);
  v79 = v23;
  v50 = v61;
  v51 = *(v61 + 8);
  v51(v46, v17);
  sub_23B9D2D88(v49, v17, v48);
  v51(v49, v17);
  v52 = v50;
  v23 = v79;
  (*(v52 + 32))(v26, v46, v17);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v17);
LABEL_7:
  sub_23BB2F9F4();
  v53 = *(v24 + 8);
  v53(v26, v23);
  v80 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  sub_23B9D2D88(v29, v23, v54);
  return (v53)(v29, v23);
}

uint64_t sub_23BAEF398@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v70 = a6;
  v69 = a5;
  v68 = a4;
  v66 = a2;
  v83 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
  v16 = sub_23BBDACE8();
  v76 = v14;
  swift_getTupleTypeMetadata2();
  v17 = sub_23BBDC3D8();
  v78 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v62 - v18;
  v73 = a7;
  v65 = *(a7 - 8);
  MEMORY[0x28223BE20](v19);
  v64 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v63 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00B8);
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v71 = v15;
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v75 = *(v16 - 8);
  MEMORY[0x28223BE20](v29);
  v72 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v74 = &v62 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0098);
  v67 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v62 - v34;
  v84 = v36;
  v82 = v17;
  v81 = sub_23BBDACE8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v62 - v37;
  v38 = *a1;
  if (*a1 & 1) != 0 && (v94 = 0, v95 = 0, v96 = 0, v97 = xmmword_23BBE7BC0, v39 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(&v94, v66), sub_23B97B104(&v94), (v39))
  {
    v94 = *(a1 + 4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080);
    sub_23BBDC1E8();
    sub_23BBDC208();
    sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080);
    sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0]);
    sub_23BBDC198();
    sub_23BAF6A40();
    swift_getWitnessTable();
    v40 = v79;
    v41 = v84;
    sub_23BA82D64();
    (*(v67 + 8))(v35, v41);
  }

  else
  {
    v94 = v68;
    v95 = v69;
    v96 = v70;
    v97 = a9;
    v98 = a10;
    v42 = type metadata accessor for SubscriptionStoreStaticViewContainer();
    sub_23BAEBD04(v42, &v94);
    if (v38)
    {
      v43 = *(a1 + 3);
      v44 = *(a1 + 4);
      *v25 = v43;
      *(v25 + 1) = v44;
      v25[16] = 1;
      *(v25 + 3) = 0;
      v25[32] = 1;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0);
      sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0);
      sub_23BAF6A40();
      sub_23BBDACD8();
      sub_23BAF712C();
      v45 = v74;
      sub_23BA82D64();
      sub_23B9A8E20(v28, &qword_27E1A0090);
    }

    else if (*(*(a1 + 1) + 16) || *(*(a1 + 2) + 16))
    {
      v92[0] = *(a1 + 3);

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080);
      sub_23BBDC1E8();
      sub_23BBDC208();
      sub_23B9A8CB4(&qword_27E1A0088, &qword_27E1A0080);
      sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0]);
      sub_23BBDC198();
      v46 = v67;
      v47 = v84;
      (*(v67 + 16))(v25, v35, v84);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A00C0);
      sub_23B9A8CB4(&qword_27E1A00C8, &qword_27E1A00C0);
      sub_23BAF6A40();
      sub_23BBDACD8();
      sub_23BAF712C();
      v45 = v74;
      sub_23BA82D64();
      sub_23B9A8E20(v28, &qword_27E1A0090);
      (*(v46 + 8))(v35, v47);
    }

    else
    {
      v58 = v63;
      v59 = v73;
      sub_23B9D2D88(a3, v73, a11);
      v60 = v64;
      sub_23B9D2D88(v58, v59, a11);
      sub_23BAF712C();
      v45 = v74;
      sub_23BA82E14();
      v61 = *(v65 + 8);
      v61(v60, v59);
      v61(v58, v59);
    }

    sub_23B989ECC(&v94, v92, &qword_27E1A0070);
    v93[0] = v92;
    v48 = v75;
    v49 = v72;
    (*(v75 + 16))(v72, v45, v16);
    v93[1] = v49;
    v91[0] = v76;
    v91[1] = v16;
    v89 = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
    v87 = sub_23BAF712C();
    v88 = a11;
    WitnessTable = swift_getWitnessTable();
    v50 = v77;
    sub_23BB6739C(v93, 2, v91);
    v51 = *(v48 + 8);
    v51(v49, v16);
    sub_23B9A8E20(v92, &qword_27E1A0070);
    sub_23BAF6A40();
    v52 = v82;
    swift_getWitnessTable();
    v40 = v79;
    sub_23BA82E14();
    (*(v78 + 8))(v50, v52);
    v51(v45, v16);
    sub_23B9A8E20(&v94, &qword_27E1A0070);
  }

  v53 = sub_23BAF6A40();
  v54 = swift_getWitnessTable();
  v85 = v53;
  v86 = v54;
  v55 = v81;
  v56 = swift_getWitnessTable();
  sub_23B9D2D88(v40, v55, v56);
  return (*(v80 + 8))(v40, v55);
}

void sub_23BAEFFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_10_0();
  v22 = v21;
  v72 = v23;
  v73 = v21;
  v76 = v24;
  v77 = v25;
  v26 = v23;
  v28 = v27;
  v78 = v29;
  v79 = v30;
  v32 = v31;
  v70 = a21;
  v71 = v27;
  v33 = OUTLINED_FUNCTION_35_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v33);
  OUTLINED_FUNCTION_4_29();
  v83 = v34;
  v84 = v28;
  v85 = v26;
  v86 = sub_23B9A8CB4(v35, &qword_27E19F5A0);
  v87 = v22;
  v88 = a21;
  OUTLINED_FUNCTION_21_15();
  v74 = type metadata accessor for StoreContentNavigation();
  v36 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v75 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_1();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_3();
  v69 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0098);
  OUTLINED_FUNCTION_7();
  v46 = v45;
  v66 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_1();
  v68 = v48 - v49;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v50);
  v67 = &v66 - v51;
  v83 = *(v32 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0080);
  sub_23BBDC1E8();
  sub_23BBDC208();
  OUTLINED_FUNCTION_10_17();
  sub_23B9A8CB4(v52, &qword_27E1A0080);
  sub_23BAF9FDC(&qword_27E197A60, MEMORY[0x277CE12D0]);
  sub_23BBDC198();
  v83 = v76;
  v84 = v71;
  v85 = v72;
  v86 = v77;
  v87 = v73;
  v88 = v70;
  v53 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  sub_23BAEBDB4(v53, v41);
  OUTLINED_FUNCTION_1_46();
  v82[2] = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  WitnessTable = swift_getWitnessTable();
  v55 = v69;
  v56 = OUTLINED_FUNCTION_46();
  sub_23B9D2D88(v56, v57, WitnessTable);
  v58 = v75;
  v59 = *(v75 + 8);
  v60 = OUTLINED_FUNCTION_46();
  v59(v60);
  v61 = *(v46 + 16);
  v62 = v68;
  v63 = v67;
  v61(v68, v67, v44);
  v83 = v62;
  (*(v58 + 16))(v41, v55, v36);
  v84 = v41;
  v82[0] = v44;
  v82[1] = v36;
  v80 = sub_23BAF6A40();
  v81 = WitnessTable;
  sub_23BB6739C(&v83, 2, v82);
  (v59)(v55, v36);
  v64 = *(v66 + 8);
  v64(v63, v44);
  v65 = OUTLINED_FUNCTION_46();
  v59(v65);
  v64(v62, v44);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAF03EC@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v6 = type metadata accessor for MagicPocketContainer();
  v10 = a2(v6, v7, v8, v9);
  return a3(v10);
}

uint64_t sub_23BAF0478@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = type metadata accessor for SubscriptionStoreStructuredScrollView();
  v17 = v16[21];
  *(a7 + v16[20]) = a1;
  *(a7 + v16[19]) = a8;
  *(a7 + v17) = a2;
  v18 = *(a6 - 8);
  v19 = (*(v18 + 16))(a7, a3, a6);
  v20 = a4(v19);
  a5(v20);
  return (*(v18 + 8))(a3, a6);
}

double sub_23BAF05AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1))
  {
    sub_23B9AF0F0(a1, v9);
    *&v8 = &unk_284E5A000;
    *(&v8 + 1) = sub_23B9C9318();
    v3 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v7, v9);
    sub_23B97B104(v7);
    if (v3)
    {
      sub_23B97B104(a1);
      v4 = v9;
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      v8 = xmmword_23BBE7BC0;
      v5 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v7, v9);
      sub_23B97B104(v7);
      sub_23B97B104(v9);
      v4 = a1;
      if ((v5 & 1) == 0)
      {
        return result;
      }
    }

    sub_23B97B104(v4);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23BAF0670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v87 = a2;
  v88 = a8;
  v82 = a3;
  v85 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  v83 = a7;
  swift_getTupleTypeMetadata2();
  v17 = sub_23BBDC3D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v86 = a10;
  v95 = a10;
  v96 = a11;
  type metadata accessor for StoreContentNavigation();
  v18 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v81 = v17;
  *&v93 = v17;
  *(&v93 + 1) = v18;
  v78 = v18;
  v76 = WitnessTable;
  *&v94 = WitnessTable;
  *(&v94 + 1) = swift_getWitnessTable();
  v73 = *(&v94 + 1);
  v20 = type metadata accessor for BottomContentContainer();
  v80 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v79 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = &v66 - v23;
  MEMORY[0x28223BE20](v24);
  v75 = &v66 - v25;
  v26 = sub_23BBDD648();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v84 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - v30;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v77 = a1;
  v32 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(a1, &v93);
  sub_23B97B104(&v93);
  if (v32 & 1) != 0 || (*&v93 = a4, *(&v93 + 1) = a5, *&v94 = a6, *(&v94 + 1) = v88, v95 = v86, v96 = a11, v54 = (v87 + *(type metadata accessor for SubscriptionStoreStaticViewContainer() + 84)), v55 = *v54, v56 = *(v54 + 1), LOBYTE(v93) = v55, *(&v93 + 1) = v56, __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130), sub_23BBDBF68(), v89 != 2) && (v89)
  {
    v68 = a12;
    *&v93 = a4;
    *(&v93 + 1) = a5;
    v70 = v31;
    *&v94 = a6;
    *(&v94 + 1) = v88;
    v71 = v27;
    v33 = v86;
    v95 = v86;
    v96 = a11;
    v67 = a4;
    v34 = type metadata accessor for SubscriptionStoreStaticViewContainer();
    v35 = v87;
    v36 = v83;
    v37 = v87 + *(v34 + 68);
    *&v93 = a5;
    *(&v93 + 1) = a6;
    *&v94 = v33;
    *(&v94 + 1) = a11;
    v38 = type metadata accessor for SubscriptionStoreContainerContext();
    v72 = v26;
    v69 = *(v37 + *(v38 + 56));
    sub_23B9AF0F0(v77, &v93);
    v39 = (v35 + *(v34 + 84));
    v40 = *v39;
    v41 = *(v39 + 1);
    v89 = v40;
    v90 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130);
    v42 = sub_23BBDBF68();
    v31 = v70;
    MEMORY[0x28223BE20](v42);
    *(&v66 - 10) = v67;
    *(&v66 - 9) = a5;
    *(&v66 - 8) = a6;
    *(&v66 - 7) = v36;
    v65 = v82;
    MEMORY[0x28223BE20](v43);
    *(&v66 - 10) = v44;
    *(&v66 - 9) = a5;
    *(&v66 - 8) = a6;
    *(&v66 - 7) = v36;
    v26 = v72;
    v27 = v71;
    v64 = v73;
    v63 = v76;
    v62 = v78;
    v60 = &v66 - 12;
    v61 = v81;
    v46 = v74;
    sub_23BAEEBE0(v69, &v93, v45 & 1, v47, 0, sub_23BAF7C14, sub_23BAFA5D0, v74);
    v48 = swift_getWitnessTable();
    v49 = v75;
    sub_23B9D2D88(v46, v20, v48);
    v50 = v80;
    v51 = *(v80 + 8);
    v51(v46, v20);
    v52 = v79;
    sub_23B9D2D88(v49, v20, v48);
    v51(v49, v20);
    v53 = v84;
    (*(v50 + 32))(v84, v52, v20);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v20);
  }

  else
  {
    v53 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v20);
    swift_getWitnessTable();
  }

  sub_23BB2F9F4();
  v57 = *(v27 + 8);
  v57(v53, v26);
  v91 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  sub_23B9D2D88(v31, v26, v58);
  return (v57)(v31, v26);
}

uint64_t sub_23BAF0DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  v31[3] = v21;
  v31[4] = v22;
  v31[5] = v23;
  v24 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  sub_23BAEBD04(v24, v31);
  sub_23B9D2D88(a2, a6, a10);
  sub_23B989ECC(v31, v29, &qword_27E1A0070);
  v30[0] = v29;
  (*(v12 + 16))(v14, v17, a6);
  v30[1] = v14;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A0070);
  v28[1] = a6;
  v27[0] = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
  v27[1] = a10;
  sub_23BB6739C(v30, 2, v28);
  v25 = *(v12 + 8);
  v25(v17, a6);
  sub_23B9A8E20(v31, &qword_27E1A0070);
  v25(v14, a6);
  return sub_23B9A8E20(v29, &qword_27E1A0070);
}

uint64_t sub_23BAF0FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = a2;
  v69 = a8;
  v70 = a1;
  v71 = a4;
  v65 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  v67 = a7;
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  v16 = sub_23BBDD648();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19F5A0);
  sub_23B9A8CB4(&qword_27E19F5A8, &qword_27E19F5A0);
  v17 = a6;
  v79 = a10;
  v80 = a11;
  v66 = a11;
  type metadata accessor for StoreContentNavigation();
  v18 = sub_23BBDD648();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v63 = v18;
  v64 = v16;
  v75 = v16;
  v76 = v18;
  v62 = v19;
  v77 = v19;
  v78 = swift_getWitnessTable();
  v59 = v78;
  v20 = type metadata accessor for MagicPocketContainer();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v61 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v60 = v55 - v24;
  v25 = sub_23BBDD648();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v55 - v30;
  sub_23B9C9234(v70, &v75);
  if ((v78 - 1) > 1)
  {
    sub_23B9C9290(&v75);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v20);
    swift_getWitnessTable();
  }

  else
  {
    v55[0] = a12;
    v75 = v71;
    v76 = a5;
    v58 = v26;
    v32 = v69;
    v77 = v17;
    v78 = v69;
    v57 = v31;
    v33 = v66;
    v79 = a10;
    v80 = v66;
    v34 = *(type metadata accessor for SubscriptionStoreStaticViewContainer() + 68);
    v70 = a9;
    v56 = v21;
    v35 = v68 + v34;
    v75 = a5;
    v76 = v17;
    v77 = a10;
    v78 = v33;
    v36 = type metadata accessor for SubscriptionStoreContainerContext();
    v55[1] = v55;
    MEMORY[0x28223BE20](*(v35 + *(v36 + 56)));
    v55[-10] = v71;
    v55[-9] = a5;
    v37 = v67;
    v55[-8] = v17;
    v55[-7] = v37;
    v55[-6] = v32;
    v55[-5] = a10;
    v38 = v55[0];
    v55[-4] = v33;
    v55[-3] = v38;
    v54 = v65;
    MEMORY[0x28223BE20](v39);
    v55[-10] = v40;
    v55[-9] = a5;
    v55[-8] = v17;
    v55[-7] = v41;
    v55[-6] = v32;
    v55[-5] = a10;
    v26 = v58;
    v55[-4] = v33;
    v55[-3] = v42;
    v31 = v57;
    v53 = v59;
    v43 = v61;
    sub_23BAF03EC(v44, sub_23BAF7BF8, sub_23BAF7C10, v61);
    v45 = swift_getWitnessTable();
    v46 = v60;
    sub_23B9D2D88(v43, v20, v45);
    v71 = v25;
    v47 = v56;
    v48 = *(v56 + 8);
    v48(v43, v20);
    sub_23B9D2D88(v46, v20, v45);
    v48(v46, v20);
    v49 = v47;
    v25 = v71;
    (*(v49 + 32))(v28, v43, v20);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v20);
  }

  sub_23BB2F9F4();
  v50 = *(v26 + 8);
  v50(v28, v25);
  v72 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  sub_23B9D2D88(v31, v25, v51);
  return (v50)(v31, v25);
}

uint64_t sub_23BAF15E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a8;
  v52 = a7;
  v51 = a5;
  v44 = a2;
  v54 = a9;
  v50 = a10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0070);
  swift_getTupleTypeMetadata2();
  v15 = sub_23BBDC3D8();
  v48 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v49 = &v43 - v16;
  v47 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v45 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = sub_23BBDD648();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  v60 = a3;
  v61 = a4;
  v29 = a1;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  v65 = v50;
  v30 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  v31 = (v29 + *(v30 + 84));
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v60) = v32;
  v61 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130);
  sub_23BBDBF68();
  if (v58[0] == 2 || (v58[0] & 1) != 0)
  {
    v34 = v25;
    v35 = 1;
  }

  else
  {
    v53 = a11;
    sub_23BAEBD04(v30, &v60);
    v36 = v53;
    sub_23B9D2D88(v44, a6, v53);
    sub_23B989ECC(&v60, v58, &qword_27E1A0070);
    v59[0] = v58;
    v37 = v47;
    v38 = v45;
    (*(v47 + 16))(v45, v21, a6);
    v59[1] = v38;
    v57[0] = v46;
    v57[1] = a6;
    v55 = sub_23BAF7214(&qword_27E1A00D8, &qword_27E1A0070, &unk_23BBFA888, sub_23BAF71E4);
    v56 = v36;
    sub_23BB6739C(v59, 2, v57);
    v39 = *(v37 + 8);
    v39(v21, a6);
    sub_23B9A8E20(&v60, &qword_27E1A0070);
    v39(v38, a6);
    sub_23B9A8E20(v58, &qword_27E1A0070);
    (*(v48 + 32))(v25, v49, v15);
    v34 = v25;
    v35 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34, v35, 1, v15);
  swift_getWitnessTable();
  sub_23BB2F9F4();
  v40 = *(v23 + 8);
  v40(v25, v22);
  WitnessTable = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_23B9D2D88(v28, v22, v41);
  return (v40)(v28, v22);
}

void sub_23BAF1B30()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v31[0] = v5;
  v31[1] = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v31[2] = v12;
  v13 = OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v13);
  OUTLINED_FUNCTION_4_29();
  sub_23B9A8CB4(v14, &qword_27E19F5A0);
  type metadata accessor for StoreContentNavigation();
  v15 = sub_23BBDD648();
  OUTLINED_FUNCTION_7();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v31 - v23;
  v31[4] = v11;
  v31[5] = v9;
  v31[6] = v7;
  v31[7] = v31[0];
  v31[8] = v3;
  v31[9] = v1;
  v25 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  sub_23BAEBDB4(v25, v21);
  OUTLINED_FUNCTION_1_46();
  v31[3] = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_8();
  WitnessTable = swift_getWitnessTable();
  v27 = OUTLINED_FUNCTION_35_0();
  sub_23B9D2D88(v27, v28, WitnessTable);
  v29 = *(v17 + 8);
  v30 = OUTLINED_FUNCTION_35_0();
  v29(v30);
  sub_23B9D2D88(v24, v15, WitnessTable);
  (v29)(v24, v15);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23BAF1CF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v44 = a6;
  v45 = a7;
  v41 = a3;
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v48 = a8;
  v43 = a9;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a6;
  v57 = a7;
  v58 = a9;
  v37 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v36 - v12;
  v14 = sub_23BBDA358();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_23BBDA358();
  v47 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v36 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v38 = &v36 - v20;
  sub_23BBDBB48();
  v21 = v13;
  v22 = v13;
  v23 = v37;
  (*(v11 + 16))(v22, v39, v37);
  v24 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v26;
  *(v25 + 4) = v42;
  *(v25 + 5) = a5;
  v27 = v45;
  *(v25 + 6) = v44;
  *(v25 + 7) = v27;
  *(v25 + 8) = v43;
  *(v25 + 9) = a10;
  (*(v11 + 32))(&v25[v24], v21, v23);
  v28 = sub_23B97AD88();
  v51 = a10;
  v52 = v28;
  WitnessTable = swift_getWitnessTable();
  v30 = v36;
  sub_23BB2FDBC(sub_23BAF7B30, v25, v14);

  (*(v46 + 8))(v16, v14);
  v31 = sub_23BA3D77C();
  v49 = WitnessTable;
  v50 = v31;
  v32 = swift_getWitnessTable();
  v33 = v38;
  sub_23B9D2D88(v30, v17, v32);
  v34 = *(v47 + 8);
  v34(v30, v17);
  sub_23B9D2D88(v33, v17, v32);
  return (v34)(v33, v17);
}

uint64_t sub_23BAF20AC()
{
  type metadata accessor for SubscriptionStoreStaticViewContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1A0130);
  return sub_23BBDBF78();
}

uint64_t sub_23BAF2178()
{
  sub_23BBDDBB8();
  sub_23B9A9DE8(v2, *v0);
  return sub_23BBDDBF8();
}

BOOL sub_23BAF21C8()
{
  sub_23B9AF0F0(v0, &v4);
  v2[0] = v4;
  v2[1] = v5;
  v3 = v6;
  if (*(&v5 + 1) == 2)
  {
    return 1;
  }

  if (*(&v5 + 1) == 1)
  {
    return *(v0 + 40) != 1;
  }

  sub_23B9C9290(v2);
  return 0;
}

uint64_t sub_23BAF2280()
{
  v1 = v0;
  sub_23B9C9234(v0, &v5);
  v2 = v6;
  if (v6 >= 6)
  {
    sub_23B98473C(&v5, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v2 = sub_23BBDCE78();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  MEMORY[0x23EEB63A0](v2);
  return MEMORY[0x23EEB63A0](*(v1 + 40));
}

uint64_t sub_23BAF2318()
{
  sub_23BBDDBB8();
  sub_23BAF2280();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAF2368()
{
  sub_23BBDDBB8();
  sub_23BAF2280();
  return sub_23BBDDBF8();
}

uint64_t sub_23BAF23C0()
{
  type metadata accessor for SubscriptionStoreStaticViewContainer();
  type metadata accessor for SubscriptionStoreContainerContext();
  type metadata accessor for SubscriptionStoreControlConfiguration();
  sub_23B9774BC();
  return v0 & 1;
}

uint64_t sub_23BAF2460()
{
  sub_23BAF5E64();
  sub_23BBDA298();
  return v1;
}

uint64_t sub_23BAF24D8@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_23BBDA288();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDC1D8();
  sub_23BAF5E64();
  sub_23BBDA298();
  *a1 = v7[15];
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23BAF25D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BB30020();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_23BAF2608@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_23BBDA288();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23BBDC1D8();
  sub_23BAF72E8();
  sub_23BBDA298();
  v6 = v8[15];
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_23BAF2704(uint64_t a1)
{
  result = 0x3FDB6DB6DB6DB6DBLL;
  v4 = *(v1 + *(a1 + 84));
  if (v4 == 2)
  {
    if (*(v1 + *(a1 + 80)))
    {
      return result;
    }

    return 0;
  }

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23BAF274C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = v27.i64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 40);
  v10 = *(v7 + 56);
  v11.i64[0] = v4;
  v46 = *(v7 + 48);
  v8 = v46;
  v47 = v10;
  v27 = *(v7 + 24);
  *&v12 = vdupq_laneq_s64(v27, 1).u64[0];
  *(&v12 + 1) = v9;
  v44 = vzip1q_s64(v11, v27);
  v45 = v12;
  v13 = type metadata accessor for StructuredScrollView();
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (v27.i64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v27.i8[-v18];
  (*(v5 + 16))(v30, v2, v4, v17);
  v20 = sub_23BAF2704(a1);
  v21 = *(v2 + *(a1 + 76));
  v38 = v4;
  v39 = v27;
  v40 = v9;
  v41 = v8;
  v42 = v10;
  v43 = v2;
  v31 = v4;
  v32 = v27;
  v33 = v9;
  v34 = v8;
  v35 = v10;
  v36 = v2;
  *(&v26 + 1) = v8;
  *&v26 = v9;
  sub_23B9BF1A8(v30, v20, v22 & 1, sub_23BAF9F90, v37, sub_23BAF9FA8, v4, v15, v21, v27.i64[0], v27.i64[1], v26, v10);
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v15, v13, WitnessTable);
  v24 = *(v28 + 8);
  v24(v15, v13);
  sub_23B9D2D88(v19, v13, WitnessTable);
  return (v24)(v19, v13);
}

uint64_t sub_23BAF2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v18 = type metadata accessor for SubscriptionStoreStructuredScrollView();
  sub_23B9D2D88(a1 + *(v18 + 68), a3, a6);
  sub_23B9D2D88(v11, a3, a6);
  return (*(v9 + 8))(v11, a3);
}

uint64_t sub_23BAF2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for SubscriptionStoreStructuredScrollView();
  sub_23B9D2D88(a1 + *(v19 + 72), a4, a7);
  sub_23B9D2D88(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

uint64_t sub_23BAF2C44()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v2 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(v0 + 8, v3);
  sub_23B97B104(v3);
  if (v2)
  {
    return 0x4038000000000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BAF2D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for BottomContentContainer();
  sub_23B9D2D88(a1 + *(v15 + 72), a3, a5);
  sub_23B9D2D88(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t sub_23BAF2E08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C0);
  v31 = a1[2];
  v36 = a1[4];
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8);
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDC078();
  v3 = a1[3];
  v30 = a1[5];
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v4 = sub_23BBDC078();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  sub_23BBDB038();
  v7 = sub_23BBDA358();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310);
  v10 = sub_23BBDA358();
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = &v29 - v13;
  *&v14 = v31;
  *(&v14 + 1) = v3;
  *&v15 = v36;
  *(&v15 + 1) = v30;
  v39 = v14;
  v40 = v15;
  v41 = v37;
  sub_23B9BE15C();
  sub_23BBDC068();
  v16 = sub_23BBDB3A8();
  v17 = sub_23BAF2C44();
  v19 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_23BB2FA54(v16, v17, v19 & 1, v4, WitnessTable);
  (*(v33 + 8))(v6, v4);
  v21 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v44 = WitnessTable;
  v45 = v21;
  v22 = swift_getWitnessTable();
  v23 = v29;
  sub_23BBDBBD8();
  (*(v34 + 8))(v9, v7);
  v24 = sub_23B9A8CB4(&qword_27E198308, &qword_27E198310);
  v42 = v22;
  v43 = v24;
  v25 = swift_getWitnessTable();
  v26 = v32;
  sub_23B9D2D88(v23, v10, v25);
  v27 = *(v35 + 8);
  v27(v23, v10);
  sub_23B9D2D88(v26, v10, v25);
  return (v27)(v26, v10);
}

uint64_t sub_23BAF3334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v56 = a6;
  v11 = type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = v43 - v14;
  v50 = v15;
  v55 = sub_23BBDD648();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v54 = v43 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C0);
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8);
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v19 = sub_23BBDC078();
  v57 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v43 - v23;
  *&v67 = a2;
  *(&v67 + 1) = a3;
  *&v68 = a4;
  *(&v68 + 1) = a5;
  v43[1] = type metadata accessor for BottomContentContainer();
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a1;
  sub_23B9BE15C();
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  v51 = v24;
  v47 = WitnessTable;
  sub_23B9D2D88(v21, v19, WitnessTable);
  v26 = *(v57 + 8);
  v49 = v57 + 8;
  v48 = v26;
  v26(v21, v19);
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v27 = _s17_StoreKit_SwiftUI012SubscriptionA19ControlPlacementKeyV2eeoiySbAC_ACtFZ_0(&v67, a1 + 8);
  sub_23B97B104(&v67);
  if ((v27 & 1) != 0 && (*(a1 + 50) & 1) == 0)
  {
    v29 = v46;
    sub_23BAF2CAC(v46);
    v30 = v50;
    v31 = swift_getWitnessTable();
    v32 = v44;
    sub_23B9D2D88(v29, v30, v31);
    v33 = v45;
    v34 = *(v45 + 8);
    v34(v29, v30);
    sub_23B9D2D88(v32, v30, v31);
    v34(v32, v30);
    v28 = v52;
    (*(v33 + 32))(v52, v29, v30);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v30);
  }

  else
  {
    v28 = v52;
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v50);
    swift_getWitnessTable();
  }

  v35 = v54;
  sub_23BB2F9F4();
  v36 = v53;
  v37 = *(v53 + 8);
  v38 = v55;
  v37(v28, v55);
  v39 = v51;
  (*(v57 + 16))(v21, v51, v19);
  *&v67 = v21;
  (*(v36 + 16))(v28, v35, v38);
  *(&v67 + 1) = v28;
  v66[0] = v19;
  v66[1] = v38;
  v64 = v47;
  v63 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  sub_23BB6739C(&v67, 2, v66);
  v37(v35, v38);
  v40 = v39;
  v41 = v48;
  v48(v40, v19);
  v37(v28, v38);
  return v41(v21, v19);
}

uint64_t sub_23BAF39C8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a6;
  v61 = a3;
  v63 = a5;
  v69 = type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  v70 = sub_23BBDD648();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v56 - v9;
  v60 = a4;
  v10 = sub_23BBDC078();
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = &v56 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A03C8);
  v59 = v10;
  v58 = sub_23BBDA358();
  v71 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v73 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v56 - v14;
  MEMORY[0x28223BE20](v15);
  v72 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197CB0);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197C50);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1A03C0);
  MEMORY[0x28223BE20](v57);
  v62 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  v30 = 1;
  if (a1[49] == 1)
  {
    sub_23BB254D4(v19);
    v31 = sub_23BBDB388();
    v32 = &v19[*(v17 + 36)];
    *v32 = v31;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    v56 = a1;
    if (a1[48] == 1)
    {
      v33 = sub_23BBDB3B8();
    }

    else
    {
      v33 = sub_23BBDB3D8();
    }

    v34 = v33;
    sub_23B989918(v19, v22, &qword_27E197CB0);
    v35 = &v22[*(v20 + 36)];
    *v35 = v34;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    v35[40] = 1;
    sub_23B989918(v22, v25, &qword_27E197C50);
    sub_23B989918(v25, v29, &qword_27E197C50);
    v30 = 0;
    a1 = v56;
  }

  v36 = 1;
  v37 = v29;
  v38 = __swift_storeEnumTagSinglePayload(v29, v30, 1, v20);
  MEMORY[0x28223BE20](v38);
  v39 = v61;
  *(&v56 - 6) = a2;
  *(&v56 - 5) = v39;
  v40 = v60;
  v41 = v63;
  *(&v56 - 4) = v60;
  *(&v56 - 3) = v41;
  *(&v56 - 2) = a1;
  sub_23B9BE15C();
  v42 = v64;
  sub_23BBDC068();
  v43 = v67;
  if (a1[50] == 1)
  {
    v75 = a2;
    v76 = v39;
    v77 = v40;
    v78 = v41;
    type metadata accessor for BottomContentContainer();
    sub_23BAF2CAC(v43);
    v36 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v36, 1, v69);
  v44 = v59;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v46 = v65;
  sub_23BA20F3C();
  (*(v68 + 8))(v43, v70);
  (*(v66 + 8))(v42, v44);
  v47 = sub_23B9A8CB4(&qword_27E1A03D0, &qword_27E1A03C8);
  v81[2] = WitnessTable;
  v81[3] = v47;
  v48 = v58;
  v49 = swift_getWitnessTable();
  v50 = v72;
  sub_23B9D2D88(v46, v48, v49);
  v51 = v71;
  v52 = *(v71 + 8);
  v52(v46, v48);
  v53 = v62;
  sub_23B989ECC(v37, v62, &qword_27E1A03C0);
  v75 = v53;
  v54 = v73;
  (*(v51 + 16))(v73, v50, v48);
  v76 = v54;
  v81[0] = v57;
  v81[1] = v48;
  v79 = sub_23BAF7214(qword_27E1A03D8, &qword_27E1A03C0, &unk_23BBFACA8, sub_23B97AE30);
  v80 = v49;
  sub_23BB6739C(&v75, 2, v81);
  v52(v50, v48);
  sub_23B9A8E20(v37, &qword_27E1A03C0);
  v52(v54, v48);
  return sub_23B9A8E20(v53, &qword_27E1A03C0);
}

uint64_t sub_23BAF417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for BottomContentContainer();
  sub_23B9D2D88(a1 + *(v14 + 68), a2, a4);
  sub_23B9D2D88(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

uint64_t sub_23BAF4288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = a1[4];
  v24 = a1[2];
  v25 = v3;
  sub_23BBDC078();
  v4 = a1[3];
  v5 = a1[5];
  type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v6 = sub_23BBDC078();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198310);
  v9 = sub_23BBDA358();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_23BBDC2A8();
  v23 = &v23;
  *&v16 = v24;
  *&v17 = v25;
  *(&v16 + 1) = v4;
  *(&v17 + 1) = v5;
  v29 = v16;
  v30 = v17;
  v31 = v26;
  sub_23B9BE15C();
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBBD8();
  (*(v27 + 8))(v8, v6);
  v19 = sub_23B9A8CB4(&qword_27E198308, &qword_27E198310);
  v32 = WitnessTable;
  v33 = v19;
  v20 = swift_getWitnessTable();
  sub_23B9D2D88(v12, v9, v20);
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_23B9D2D88(v15, v9, v20);
  return (v21)(v15, v9);
}

uint64_t sub_23BAF45F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a1;
  v43 = a6;
  v10 = type metadata accessor for SubscriptionStoreStandardButtonsSectionView();
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v33 - v14;
  v15 = sub_23BBDC078();
  v36 = *(v15 - 8);
  v16 = v36;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v18;
  MEMORY[0x28223BE20](v19);
  v37 = &v33 - v20;
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = v44;
  sub_23B9BE15C();
  sub_23BBDC068();
  v35 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v18, v15, WitnessTable);
  v21 = *(v16 + 8);
  v38 = v16 + 8;
  v40 = v21;
  v21(v18, v15);
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = v44;
  sub_23BAA48E0(sub_23BAF9F60, v12);
  v22 = v10;
  v23 = swift_getWitnessTable();
  v24 = v41;
  v25 = v12;
  sub_23B9D2D88(v12, v22, v23);
  v26 = v42;
  v27 = *(v42 + 8);
  v27(v12, v22);
  v28 = v34;
  v29 = v37;
  v30 = v35;
  (*(v36 + 16))(v34, v37, v35);
  v58[0] = v28;
  (*(v26 + 16))(v25, v24, v22);
  v58[1] = v25;
  v57[0] = v30;
  v57[1] = v22;
  v55 = WitnessTable;
  v56 = v23;
  sub_23BB6739C(v58, 2, v57);
  v27(v24, v22);
  v31 = v40;
  v40(v29, v30);
  v27(v25, v22);
  return v31(v28, v30);
}

uint64_t sub_23BAF4A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for MagicPocketContainer();
  sub_23B9D2D88(a1 + *(v14 + 52), a2, a4);
  sub_23B9D2D88(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

uint64_t sub_23BAF4B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for MagicPocketContainer();
  sub_23B9D2D88(a1 + *(v15 + 56), a3, a5);
  sub_23B9D2D88(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t sub_23BAF4C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *(a1 + 16);
  v24 = a2;
  v4 = sub_23BBDC1E8();
  v5 = sub_23BBDC208();
  v22 = *(a1 + 24);
  v31 = v23;
  v32 = v4;
  v33 = v5;
  v34 = v22;
  v35 = sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8]);
  sub_23BBDC1A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E19B690);
  v30 = MEMORY[0x277CE12C8];
  swift_getWitnessTable();
  sub_23BBDC078();
  sub_23BBDB038();
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v6 = sub_23BBDC078();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_23BBDA358();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  v25 = v23;
  v26 = v22;
  v27 = v2;
  sub_23B9BE15C();
  sub_23BBDC068();
  WitnessTable = swift_getWitnessTable();
  sub_23BBDBC78();
  (*(v20 + 8))(v8, v6);
  v28 = WitnessTable;
  v29 = MEMORY[0x277CDFC48];
  v16 = swift_getWitnessTable();
  sub_23B9D2D88(v11, v9, v16);
  v17 = *(v21 + 8);
  v17(v11, v9);
  sub_23B9D2D88(v14, v9, v16);
  return (v17)(v14, v9);
}

uint64_t sub_23BAF5000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v96 = a4;
  v119 = a2;
  v120 = sub_23BBDC1E8();
  v121 = sub_23BBDC208();
  v122 = a3;
  v123 = sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8]);
  v7 = sub_23BBDC1A8();
  v118 = MEMORY[0x277CE12C8];
  WitnessTable = swift_getWitnessTable();
  v9 = sub_23BBDC078();
  v81 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = &v79 - v10;
  sub_23BBDB038();
  v102 = v9;
  v11 = sub_23BBDA358();
  v84 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v83 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v79 - v14;
  v15 = sub_23BBDD648();
  v85 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v99 = v11;
  v95 = sub_23BBDD648();
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v101 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v100 = &v79 - v20;
  MEMORY[0x28223BE20](v21);
  v87 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v79 - v24;
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v79 - v32;
  v79 = v34;
  (*(v34 + 16))(v25, a1, a2, v31);
  v35 = v25;
  v36 = v86;
  sub_23B9758C0(v35, a2);
  v91 = v33;
  v98 = WitnessTable;
  sub_23B9D2D88(v29, v7, WitnessTable);
  v90 = v26;
  v37 = v26;
  v38 = v85;
  v39 = *(v37 + 8);
  v88 = v29;
  v97 = v7;
  v94 = v37 + 8;
  v93 = v39;
  v39(v29, v7);
  v40 = type metadata accessor for SubscriptionPickerScrollViewContainer();
  v41 = (a1 + v40[11]);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = v40[9];
  v89 = *(a1 + v40[10]);
  (*(v38 + 16))(v17, a1 + v44, v15);
  if (__swift_getEnumTagSinglePayload(v17, 1, a2) == 1)
  {
    (*(v38 + 8))(v17, v15);
    v45 = v43;
    v46 = v101;
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v99);
    v47 = swift_getWitnessTable();
    v48 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
    v116 = v47;
    v117 = v48;
    swift_getWitnessTable();
    sub_23BB2F9F4();
    v49 = v92;
    v50 = *(v92 + 8);
    v51 = v46;
    v52 = v95;
    v50(v51, v95);
  }

  else
  {
    v53 = v79;
    v54 = v87;
    v55 = (*(v79 + 32))();
    MEMORY[0x28223BE20](v55);
    *(&v79 - 4) = a2;
    *(&v79 - 3) = v36;
    *(&v79 - 2) = v54;
    sub_23B9BE15C();
    v56 = v80;
    sub_23BBDC068();
    v57 = sub_23BBDB3A8();
    v58 = v102;
    v59 = swift_getWitnessTable();
    v60 = v83;
    sub_23BB2FA54(v57, 0x4030000000000000, 0, v58, v59);
    (*(v81 + 8))(v56, v58);
    v61 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
    v103 = v59;
    v104 = v61;
    v62 = v99;
    v63 = swift_getWitnessTable();
    LODWORD(v86) = v43;
    v64 = v82;
    sub_23B9D2D88(v60, v62, v63);
    v65 = v84;
    v66 = *(v84 + 8);
    v66(v60, v62);
    sub_23B9D2D88(v64, v62, v63);
    v66(v64, v62);
    v67 = v101;
    (*(v65 + 32))(v101, v60, v62);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v62);
    sub_23BB2F9F4();
    v49 = v92;
    v50 = *(v92 + 8);
    v68 = v67;
    v52 = v95;
    v50(v68, v95);
    v69 = a2;
    v45 = v86;
    (*(v53 + 8))(v87, v69);
  }

  v70 = v88;
  v71 = v91;
  v72 = v97;
  (*(v90 + 16))(v88, v91, v97);
  v112 = v42;
  v113 = v45;
  v114 = 0;
  v115 = v89;
  v119 = v70;
  v120 = &v112;
  v73 = v101;
  v74 = v100;
  (*(v49 + 16))(v101, v100, v52);
  v121 = v73;
  v111[0] = v72;
  v111[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E19B690);
  v111[2] = v52;
  v108 = v98;
  v109 = sub_23BA1A59C();
  v75 = swift_getWitnessTable();
  v76 = sub_23BAF9FDC(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v106 = v75;
  v107 = v76;
  v105 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  sub_23BB6739C(&v119, 3, v111);
  v50(v74, v52);
  v77 = v93;
  v93(v71, v72);
  v50(v73, v52);
  return v77(v70, v72);
}

uint64_t sub_23BAF5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC1E8();
  v10 = sub_23BBDC208();
  v11 = sub_23BAF9FDC(&qword_27E19B1F8, MEMORY[0x277CE12A8]);
  v23[1] = a2;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = a3;
  v23[5] = v11;
  v12 = sub_23BBDC1A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - v18;
  (*(v6 + 16))(v8, a1, a2, v17);
  sub_23B9758C0(v8, a2);
  v23[0] = MEMORY[0x277CE12C8];
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v15, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_23B9D2D88(v19, v12, WitnessTable);
  return (v21)(v19, v12);
}

unint64_t sub_23BAF5DA8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SubscriptionStoreContentConfiguration(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_23BAF5E64()
{
  result = qword_27E19FFC0[0];
  if (!qword_27E19FFC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19FFC0);
  }

  return result;
}

void sub_23BAF5EC8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreContainerContext();
    if (v1 <= 0x3F)
    {
      sub_23BAF82C4(319, &qword_27E1A0048, &qword_27E19EF20, &unk_23BBF7380, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23BAD216C(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23BAD216C(319, &qword_27E1A0050, &_s34SubscriptionStoreControlPropertiesVN, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23BAF82C4(319, &qword_27E1A0058, &qword_27E199218, &unk_23BBFA470, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_23BAD216C(319, &qword_27E19DFE0, &unk_284E611E8, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_23BAF82C4(319, qword_27E19F488, &qword_27E197878, &unk_23BBE38D0, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
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
}

uint64_t sub_23BAF60E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v41 = *(a3 + 24);
  v7 = *(v41 - 8);
  v8 = *(v6 + 84);
  v9 = *(v7 + 84);
  v10 = sub_23BBDCDB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = v13 - 1;
  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = *(v11 + 80) & 0xF8;
  v20 = v19 | 7;
  v21 = v19 | 7 | *(v7 + 80);
  v22 = *(v7 + 64) + (v19 | 7);
  v23 = *(v6 + 64) + v21;
  if (v17 < a2)
  {
    v24 = ((((((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v19 + 87) & ~v20) + (v22 & ~v20) + (v23 & ~v21) + 19) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 48;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = a2 - v17 + 1;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    switch(v27)
    {
      case 1:
        v28 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          break;
        }

        goto LABEL_31;
      case 2:
        v28 = *(a1 + v24);
        if (*(a1 + v24))
        {
          goto LABEL_31;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BAF6448);
      case 4:
        v28 = *(a1 + v24);
        if (!v28)
        {
          break;
        }

LABEL_31:
        v30 = v28 - 1;
        if ((v24 & 0xFFFFFFF8) != 0)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v17 + (v31 | v30) + 1;
      default:
        break;
    }
  }

  if (v8 >= v16)
  {
    v32 = a1;
    v35 = v8;
    v36 = v5;
  }

  else
  {
    v32 = (a1 + v23) & ~v21;
    if (v9 < v15)
    {
      v33 = ((((v22 + v32) & ~v20) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v37 = (v20 + ((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20;
        if (v12 < 0xFD)
        {
          v39 = *(((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v39 >= 2)
          {
            v40 = (v39 + 2147483646) & 0x7FFFFFFF;
          }

          else
          {
            v40 = -1;
          }

          if ((v40 + 1) >= 2)
          {
            EnumTagSinglePayload = v40;
          }

          else
          {
            EnumTagSinglePayload = 0;
          }
        }

        else
        {
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v12, v10);
        }

        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v34 = *v33;
        if (*v33 >= 0xFFFFFFFF)
        {
          LODWORD(v34) = -1;
        }

        return (v34 + 1);
      }
    }

    v35 = v9;
    v36 = v41;
  }

  return __swift_getEnumTagSinglePayload(v32, v35, v36);
}

void sub_23BAF645C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v53 = *(a4 + 24);
  v54 = *(a4 + 16);
  v7 = *(v54 - 8);
  v8 = *(v53 - 8);
  v9 = *(v7 + 84);
  v10 = *(v8 + 84);
  v11 = sub_23BBDCDB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= 0xFD)
  {
    v14 = 253;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v7 + 64);
  v20 = *(v12 + 80) & 0xF8;
  v21 = v20 | 7;
  v22 = *(v12 + 80) & 0xF8 | 7 | *(v8 + 80);
  v23 = *(v8 + 64) + (v20 | 7);
  v24 = v23 & ~(v20 | 7);
  v25 = (v20 + 87) & ~(v20 | 7);
  v26 = *(*(v11 - 8) + 64);
  v27 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v28 = v19 + v22;
  v29 = (v19 + v22) & ~v22;
  v30 = v25 + v27;
  v31 = v25 + v27 + v24 + 1;
  v32 = ((((((v29 + v31 + 9) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v18 >= a3)
  {
    v35 = 0;
  }

  else
  {
    if (((((((v29 + v31 + 9) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v33 = a3 - v18 + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }
  }

  if (a2 > v18)
  {
    if (v32)
    {
      v36 = 1;
    }

    else
    {
      v36 = a2 - v18;
    }

    if (v32)
    {
      v37 = ~v18 + a2;
      bzero(a1, v32);
      *a1 = v37;
    }

    switch(v35)
    {
      case 1:
        *(a1 + v32) = v36;
        return;
      case 2:
        *(a1 + v32) = v36;
        return;
      case 3:
        goto LABEL_88;
      case 4:
        *(a1 + v32) = v36;
        return;
      default:
        return;
    }
  }

  v38 = ~v22;
  v39 = ~v21;
  switch(v35)
  {
    case 1:
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 2:
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 3:
LABEL_88:
      __break(1u);
      JUMPOUT(0x23BAF6944);
    case 4:
      *(a1 + v32) = 0;
      goto LABEL_40;
    default:
LABEL_40:
      if (!a2)
      {
        return;
      }

LABEL_41:
      if (v9 >= v17)
      {
        v45 = a1;
        v46 = a2;
        v13 = v9;
        v11 = v54;
      }

      else
      {
        v40 = ((a1 + v28) & v38);
        if (v17 < a2)
        {
          v41 = (v25 + v27 + v24 + 3);
          if (v41 <= 3)
          {
            v42 = ~(-1 << (8 * (v25 + v27 + v24 + 3)));
          }

          else
          {
            v42 = -1;
          }

          if (v25 + v27 + v24 != -3)
          {
            v43 = v42 & (~v17 + a2);
            if (v41 <= 3)
            {
              v44 = v25 + v27 + v24 + 3;
            }

            else
            {
              v44 = 4;
            }

            bzero(v40, v41);
            switch(v44)
            {
              case 2:
                goto LABEL_66;
              case 3:
                goto LABEL_71;
              case 4:
                goto LABEL_74;
              default:
                goto LABEL_75;
            }
          }

          return;
        }

        if (v10 >= v16)
        {
          v45 = v40;
          v46 = a2;
          v13 = v10;
          v11 = v53;
        }

        else
        {
          v40 = (&v40[v23] & v39);
          if (v16 < a2)
          {
            if (v30 <= 2)
            {
              v47 = ~(-1 << (8 * (v30 + 1)));
            }

            else
            {
              v47 = -1;
            }

            v43 = v47 & (~v16 + a2);
            if (v30 <= 2)
            {
              v48 = v30 + 1;
            }

            else
            {
              v48 = 4;
            }

            bzero(v40, v30 + 1);
            switch(v48)
            {
              case 2:
LABEL_66:
                *v40 = v43;
                break;
              case 3:
LABEL_71:
                *v40 = v43;
                v40[2] = BYTE2(v43);
                break;
              case 4:
                goto LABEL_74;
              default:
                goto LABEL_75;
            }

            return;
          }

          v49 = ((v40 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v50 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v50 = (a2 - 1);
            }

            *v49 = v50;
            return;
          }

          v40 = ((v21 + ((((v49 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v39);
          if (v15 < a2)
          {
            v43 = a2 - v14;
            bzero(((v21 + ((((v49 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v39), ((v26 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
            if (v27 <= 3)
            {
LABEL_75:
              *v40 = v43;
            }

            else
            {
LABEL_74:
              *v40 = v43;
            }

            return;
          }

          v51 = a2 - v14;
          if (a2 >= v14)
          {
            bzero(((v21 + ((((v49 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v39), ((v26 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
            if (v27 <= 3)
            {
              *v40 = v51;
            }

            else
            {
              *v40 = v51;
            }

            return;
          }

          v46 = (a2 + 1);
          if (v13 < 0xFD)
          {
            v52 = &v40[v26 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFC)
            {
              *v52 = 0;
              *(v52 + 8) = 0;
              *v52 = a2 - 253;
            }

            else
            {
              *(v52 + 8) = a2 + 3;
            }

            return;
          }

          v45 = (v21 + ((((v49 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v39;
        }
      }

      __swift_storeEnumTagSinglePayload(v45, v46, v13, v11);
      return;
  }
}

unint64_t sub_23BAF69D4()
{
  result = qword_27E1A0078;
  if (!qword_27E1A0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0078);
  }

  return result;
}

unint64_t sub_23BAF6A40()
{
  result = qword_27E1A00A0;
  if (!qword_27E1A00A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A00A0);
  }

  return result;
}

uint64_t sub_23BAF6B34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BAF6BA4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for SubscriptionStoreStaticViewContainer();
  OUTLINED_FUNCTION_57();
  v6 = *(v5 + 64);
  v7 = (*(v4 + 80) + 121) & ~*(v4 + 80);
  OUTLINED_FUNCTION_3_2();
  v9 = v8;
  v10 = *(v8 + 80);
  if (*(v0 + 13) >= 6uLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  }

  v11 = &v0[v7];
  OUTLINED_FUNCTION_1_4();
  (*(v12 + 8))(&v0[v7], v1);
  v13 = &v0[v7 + v3[17]];
  OUTLINED_FUNCTION_1_4();
  (*(v14 + 8))(v13);
  v15 = &v13[*(type metadata accessor for SubscriptionStoreContainerContext() + 52)];

  if (*(v15 + 6))
  {
  }

  v16 = v6 + v7;

  v17 = *(type metadata accessor for SubscriptionStoreControlConfiguration() + 60);
  v18 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(&v15[v17], 1, v18))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v19 + 8))(&v15[v17]);
  }

  v20 = v16 + 7;

  OUTLINED_FUNCTION_61_2(&v11[v3[19]]);
  v21 = &v11[v3[20]];
  v22 = v21[48];

  if (v22 == 1 && *(v21 + 4) >= 6uLL)
  {
    __swift_destroy_boxed_opaque_existential_1((v21 + 8));
  }

  v23 = v20 & 0xFFFFFFFFFFFFFFF8;

  OUTLINED_FUNCTION_61_2(&v11[v3[22]]);
  v24 = &v11[v3[23]];
  if (*(v24 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  if (*&v0[v23 + 24] >= 6uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(&v0[v23]);
  }

  (*(v9 + 8))(&v0[(v23 + v10 + 40) & ~v10], v2);
  return swift_deallocObject();
}

uint64_t sub_23BAF6EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v12 = *(type metadata accessor for SubscriptionStoreStaticViewContainer() - 8);
  v13 = (*(v12 + 80) + 121) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23BAEC254(a1, (v2 + 10), v2 + v13, v2 + v14, v2 + ((v14 + *(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80)), v5, v4, v6, a2, v7, v8, v9, v11, v10);
}

uint64_t sub_23BAF7028()
{

  return swift_deallocObject();
}

uint64_t sub_23BAF70E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_23BAF712C()
{
  result = qword_27E1A00D0;
  if (!qword_27E1A00D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1A0090);
    sub_23B9A8CB4(&qword_27E1A00C8, &unk_27E1A00C0);
    sub_23BAF6A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A00D0);
  }

  return result;
}

uint64_t sub_23BAF7214(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    OUTLINED_FUNCTION_8_8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BAF72E8()
{
  result = qword_27E1A0100;
  if (!qword_27E1A0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1A0100);
  }

  return result;
}

uint64_t sub_23BAF733C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, unint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_23BA92D68(a2, a3);
  v13 = *(a2 + 16);
  if (v13 == result)
  {
    if (v12)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v13 < result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v17 = *a1 < result;
  if (*a1 == result)
  {
    if ((a1[2] & 1) == 0)
    {
      goto LABEL_12;
    }

    if (v12)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v17)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_12:
  if (v12)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  if (v15 < v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_14:
  v18 = *(a1 + 3);
  v19 = *(a1 + 40);
  v20 = a1[3];
  if (v13 != v20)
  {
    goto LABEL_17;
  }

  if (!*(a1 + 40))
  {
    __break(1u);
LABEL_17:
    if (v13 >= v20)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_18:
  *a5 = v14;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v18;
  *(a5 + 40) = v19;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
}