uint64_t sub_21B3328C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (a1[1])
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v14 = *a1;
    v7 = *(type metadata accessor for FormattingOptions() + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
    sub_21B2CFAF0();
    sub_21B278F78(qword_27CD7EDE0, &qword_27CD7EDD8, &qword_21B3581E0);
    sub_21B34B504();
    v6 = v12;
    v5 = v13;
  }

  v8 = sub_21B2A11F8(a2, v6, v5);
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_21B3329E0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (!__OFSUB__(a5 >> 1, a4))
  {
    v34 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      goto LABEL_30;
    }

    v8 = v34;
    if (v7)
    {
      v9 = 0;
      v27 = a4 - v6;
      do
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if (!(v27 + v9))
        {
          goto LABEL_26;
        }

        if ((a4 + v9) >= v6 || v9 >= v7)
        {
          goto LABEL_27;
        }

        v11 = v6;
        v30 = *(a3 + 8 * a4 + 8 * v9);
        v31 = 0;
        a1(&v32, &v30);
        if (v5)
        {
          goto LABEL_31;
        }

        v12 = v32;
        v13 = v33;
        v34 = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          v17 = v32;
          sub_21B231F10((v14 > 1), v15 + 1, 1);
          v12 = v17;
          v8 = v34;
        }

        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        ++v9;
        v6 = v11;
      }

      while (v10 != v7);
      v18 = a4 + v9;
      if (v18 == v11)
      {
        return v8;
      }
    }

    else
    {
      v18 = a4;
      if (a4 == v6)
      {
        return v8;
      }
    }

    v20 = v18;
    while (v18 >= a4 && v20 < v6)
    {
      v30 = *(a3 + 8 * v20);
      a1(&v32, &v30);
      if (v5)
      {
        goto LABEL_32;
      }

      v21 = v32;
      v22 = v33;
      v34 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_21B231F10((v23 > 1), v24 + 1, 1);
        v8 = v34;
      }

      ++v20;
      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      if (v6 == v20)
      {
        return v8;
      }
    }

LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:

  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t JoinKind.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

uint64_t DataFrameProtocol.joined<A>(_:on:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a1;
  v41 = a3;
  v42 = a5;
  v43 = a2;
  v44 = a4;
  v45 = a9;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v37 = a11;
  v38 = a10;
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v16);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v24;
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v28 = type metadata accessor for HashJoin();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v36 - v31;
  LOBYTE(a6) = *a6;
  (*(v20 + 16))(v23, v39, a7);
  (*(v14 + 16))(v18, v40, a8);
  LOBYTE(v46) = a6;
  v33 = v41;

  v34 = v42;

  sub_21B2E4200(v23, v18, v43, v33, v44, v34, a7, v32, a8, v38, v37);
  sub_21B2E4900(v28, v45);
  return (*(v29 + 8))(v32, v28);
}

uint64_t DataFrameProtocol.joined<A, B>(_:on:kind:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v10 = a2[1];
  v11 = *a3;
  v15[0] = *a2;
  v15[1] = v10;
  v14[0] = v15[0];
  v14[1] = v10;
  v13 = v11;
  return DataFrameProtocol.joined<A, B>(_:on:kind:)(a1, v15, v14, &v13, a4, a5, a6, a7, a9, a8, a10);
}

uint64_t DataFrameProtocol.joined<A, B>(_:on:kind:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v48 = a1;
  v50 = a9;
  v51 = a7;
  v41 = a6;
  v15 = *(a6 - 8);
  v45 = a8;
  v46 = v15;
  v16 = *(v15 + 64);
  v49 = a11;
  v43 = a10;
  v17 = MEMORY[0x28223BE20](a1);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v24;
  v56 = v25;
  v40 = v24;
  v57 = v26;
  v58 = v27;
  v44 = type metadata accessor for HashJoin();
  v28 = *(v44 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v44);
  v31 = &v40 - v30;
  v33 = *a2;
  v32 = a2[1];
  v35 = *a3;
  v34 = a3[1];
  LOBYTE(a4) = *a4;
  (*(v20 + 16))(v23, v47, a5);
  v37 = v41;
  v36 = v42;
  (*(v46 + 16))(v42, v48, v41);

  v55 = v33;
  v56 = v32;

  v53 = v35;
  v54 = v34;
  v52 = a4;
  sub_21B2E4008(v23, v36, v40, v37, v31, v45, v43);
  v38 = v44;
  sub_21B2E4900(v44, v50);
  return (*(v28 + 8))(v31, v38);
}

unint64_t sub_21B3335AC()
{
  result = qword_27CD7F618;
  if (!qword_27CD7F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoinKind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AnyColumn.name.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t AnyColumn.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t AnyColumn.count.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 48))(v2);
}

uint64_t AnyColumn.wrappedElementType.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 80))(v2);
}

uint64_t sub_21B3338E8()
{
  sub_21B233A10(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
  type metadata accessor for Column();
  return swift_dynamicCast();
}

uint64_t AnyColumn.append(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

Swift::Void __swiftcall AnyColumn.remove(at:)(Swift::Int at)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 80))(at, v3, v4);
}

uint64_t AnyColumn.append(contentsOf:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 48))(a1, v3, v4);
}

uint64_t sub_21B333AD4()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277D83B88])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B333C8C()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277D84DC8])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7ED10, &qword_21B354A68);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x363174616F6C46, 0xE700000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B333E4C()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277D83A90])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E160, &unk_21B352A10);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B334008()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277D839F8])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3341C4()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277D839B0])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](1819242306, 0xE400000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B33437C()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277D837D0])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](0x676E69727453, 0xE600000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B334538()
{
  v1 = v0;
  v2 = sub_21B34A834();
  v4 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  if (v2 == (*(*(v3 + 8) + 80))(v4))
  {
    sub_21B233A10(v1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v9[0] = 0xD00000000000001CLL;
    v9[1] = 0x800000021B34C840;
    v7 = v1[3];
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v7);
    (*(*(v6 + 8) + 80))(v7);
    v8 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](1702125892, 0xE400000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3346FC()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if ((*(*(v2 + 8) + 80))(v3) == MEMORY[0x277CC9318])
  {
    sub_21B233A10(v1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E148, &unk_21B352A20);
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v8[0] = 0xD00000000000001CLL;
    v8[1] = 0x800000021B34C840;
    v6 = v1[3];
    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v6);
    (*(*(v5 + 8) + 80))(v6);
    v7 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v7);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    MEMORY[0x21CEED5E0](1635017028, 0xE400000000000000);
    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t AnyColumn.assumingType<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  if ((*(*(v4 + 8) + 80))(v5) == a1)
  {
    sub_21B233A10(v2, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F0, &qword_21B3548A0);
    type metadata accessor for Column();
    return swift_dynamicCast();
  }

  else
  {
    sub_21B34B634();

    v11[0] = 0xD00000000000001CLL;
    v11[1] = 0x800000021B34C840;
    v8 = v2[3];
    v7 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v8);
    (*(*(v7 + 8) + 80))(v8);
    v9 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v9);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    v10 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v10);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall AnyColumn.isNil(at:)(Swift::Int at)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 96))(at, v3) & 1;
}

uint64_t sub_21B334ADC(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v17[12] = v3;
    v17[13] = v4;
    v5 = v2;
    v7 = v2[3];
    v8 = v2[4];
    v9 = result;
    __swift_project_boxed_opaque_existential_1(v2, v7);
    (*(*(v8 + 8) + 128))(v17, v9, v7);
    v10 = v2[3];
    v11 = v2[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    (*(*(v11 + 8) + 128))(v16, a2, v10);
    v12 = v2[3];
    v13 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    (*(*(v13 + 8) + 136))(v9, v16, v12);
    sub_21B261664(v16, &qword_27CD7E0F8, &unk_21B3557C0);
    v14 = v2[3];
    v15 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    (*(*(v15 + 8) + 136))(a2, v17, v14);
    return sub_21B261664(v17, &qword_27CD7E0F8, &unk_21B3557C0);
  }

  return result;
}

uint64_t sub_21B334C40(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v12[8] = v2;
    v12[10] = v3;
    v12[11] = v4;
    v5 = v2[1];
    v6 = v2[2];
    v12[0] = *v2;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = result;
    v7 = result;

    v9 = v2[1];
    v10 = v2[2];
    v11[0] = *v2;
    v11[1] = v9;
    v11[2] = v10;
    v11[3] = a2;

    DataFrame.Rows.subscript.setter(v11, v7);
    return DataFrame.Rows.subscript.setter(v12, a2);
  }

  return result;
}

unint64_t sub_21B334CEC(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      if (*(*v2 + 16) > result)
      {
        v6 = v2[3];
        sub_21B233A74(v4 + 32 + 40 * result, v12);
        v7 = v13;
        v8 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(*(v8 + 8) + 128))(v15, v6, v7);
        result = sub_21B233960(v12);
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (*(v4 + 16) > a2)
          {
            sub_21B233A74(v4 + 32 + 40 * a2, v12);
            v9 = v13;
            v10 = v14;
            __swift_project_boxed_opaque_existential_1(v12, v13);
            (*(*(v10 + 8) + 128))(v11, v6, v9);
            sub_21B233960(v12);
            DataFrame.Row.subscript.setter(v11, v3);
            return DataFrame.Row.subscript.setter(v15, a2);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

__n128 sub_21B334E3C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *(a2 + 24) = type metadata accessor for Column();
  *(a2 + 32) = &off_282CAA128;
  *a2 = v4;
  result = *(a1 + 1);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_21B334E8C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B334EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_21B3350B8(a1, a3);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v9 = __OFADD__(a1, a2);
  v8 = a1 + a2;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v3[3];
    v10 = v3[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v12 = (*(*(v10 + 8) + 32))(v11);
    v14 = v4[3];
    v13 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v14);
    result = (*(*(v13 + 8) + 40))(v14);
    if (v8 >= v12 && result >= v8)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B334FF8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_21B3351E4(a1, a3, a4, a5, a6);
  if (a2 >= 1)
  {
    if (v10 < 0 || v10 >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v10 <= 0 && v10 > a2)
  {
    return 0;
  }

LABEL_8:
  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (a6)
  {
    if (a6 == 1)
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (result > v12)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_21B3350B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v8 = (*(*(v6 + 8) + 32))(v7);
  v10 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v10);
  result = (*(*(v9 + 8) + 40))(v10);
  if (v8 > a1 || result < a1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v14);
  v15 = (*(*(v13 + 8) + 32))(v14);
  v17 = v3[3];
  v16 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v17);
  result = (*(*(v16 + 8) + 40))(v17);
  if (v15 > a2 || result < a2)
  {
    goto LABEL_12;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B3351E4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 == 1)
    {
      v5 = *(a3 + 16);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    if (a5)
    {
      if (a5 == 1)
      {
        v6 = *(a3 + 16);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 1;
    }

    if (v6 >= a2)
    {
      return a2 - result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B33524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = MEMORY[0x277D84FA0];
  v32 = 0;
  v33 = 0;
  v34 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v29 = a1;
    v30 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = *(a3 + 24);
        v15 = sub_21B2B1790(v12, v11, v13);
        v17 = v16;
        v18 = v35;
        if (*(v35 + 16))
        {
          v19 = *(v35 + 40);
          sub_21B34BBC4();
          sub_21B34BBE4();
          if ((v17 & 1) == 0)
          {
            MEMORY[0x21CEEE3B0](v15);
          }

          v20 = sub_21B34BC24();
          v21 = -1 << *(v18 + 32);
          v22 = v20 & ~v21;
          if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
          {
            v23 = ~v21;
            do
            {
              v24 = *(v18 + 48) + 16 * v22;
              if (*(v24 + 8))
              {
                if (v17)
                {
                  goto LABEL_6;
                }
              }

              else if ((v17 & 1) == 0 && *v24 == v15)
              {
                goto LABEL_6;
              }

              v22 = (v22 + 1) & v23;
            }

            while (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B256274(v31, v15, v17 & 1);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v26 = v32;
      v25 = v33;
      v27 = v34;
      a1 = v29;
      a2 = v30;
      goto LABEL_23;
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v26;
  *(a4 + 32) = v25;
  *(a4 + 40) = v27;
}

uint64_t sub_21B3354E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = MEMORY[0x277D84FA0];
  v31 = 0;
  v30 = 0;
  v32 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v27 = a1;
    v28 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = *(a3 + 24);
        v15 = sub_21B2B1C24(v12, v11, v13);
        v16 = v33;
        if (*(v33 + 16))
        {
          v17 = *(v33 + 40);
          sub_21B34BBC4();
          sub_21B34BBE4();
          if ((v15 & 0x10000) == 0)
          {
            sub_21B34BBF4();
          }

          v18 = sub_21B34BC24();
          v19 = -1 << *(v16 + 32);
          v20 = v18 & ~v19;
          if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            do
            {
              v22 = *(v16 + 48) + 4 * v20;
              if (*(v22 + 2))
              {
                if ((v15 & 0x10000) != 0)
                {
                  goto LABEL_6;
                }
              }

              else if ((v15 & 0x10000) == 0 && *v22 == *&v15)
              {
                goto LABEL_6;
              }

              v20 = (v20 + 1) & v21;
            }

            while (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B256130(v29, v15 & 0x1FFFF);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v23 = v30;
      v24 = v31;
      v25 = v32;
      a1 = v27;
      a2 = v28;
      goto LABEL_23;
    }
  }

  v24 = 0;
  v23 = 0;
  v25 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = v25;
}

uint64_t sub_21B335780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = MEMORY[0x277D84FA0];
  v31 = 0;
  v30 = 0;
  v32 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v27 = a1;
    v28 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = *(a3 + 24);
        v15 = sub_21B2B1B7C(v12, v11, v13);
        v16 = v33;
        if (*(v33 + 16))
        {
          v17 = *(v33 + 40);
          sub_21B34BBC4();
          sub_21B34BBE4();
          if ((v15 & 0x100000000) == 0)
          {
            sub_21B34BC04();
          }

          v18 = sub_21B34BC24();
          v19 = -1 << *(v16 + 32);
          v20 = v18 & ~v19;
          if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            do
            {
              v22 = *(v16 + 48) + 8 * v20;
              if (*(v22 + 4))
              {
                if ((v15 & 0x100000000) != 0)
                {
                  goto LABEL_6;
                }
              }

              else if ((v15 & 0x100000000) == 0 && *v22 == *&v15)
              {
                goto LABEL_6;
              }

              v20 = (v20 + 1) & v21;
            }

            while (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255FD4(v29, v15 | ((HIDWORD(v15) & 1) << 32));
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v23 = v30;
      v24 = v31;
      v25 = v32;
      a1 = v27;
      a2 = v28;
      goto LABEL_23;
    }
  }

  v24 = 0;
  v23 = 0;
  v25 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = v25;
}

uint64_t sub_21B335A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = MEMORY[0x277D84FA0];
  v33 = 0;
  v34 = 0;
  v35 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_beginAccess();
  if (v9)
  {
    v30 = a1;
    v31 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_29;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_31;
        }

        ++v10;
        v14 = *(a3 + 24);
        v15 = COERCE_DOUBLE(sub_21B2B1790(v12, v11, v13));
        v17 = v16;
        v18 = v36;
        if (*(v36 + 16))
        {
          v19 = *(v36 + 40);
          sub_21B34BBC4();
          if (v17)
          {
            sub_21B34BBE4();
          }

          else
          {
            sub_21B34BBE4();
            v20 = (*&v15 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? *&v15 : 0;
            MEMORY[0x21CEEE3F0](v20);
          }

          v21 = sub_21B34BC24();
          v22 = -1 << *(v18 + 32);
          v23 = v21 & ~v22;
          if ((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            do
            {
              v25 = *(v18 + 48) + 16 * v23;
              if (*(v25 + 8))
              {
                if (v17)
                {
                  goto LABEL_6;
                }
              }

              else if ((v17 & 1) == 0 && *v25 == v15)
              {
                goto LABEL_6;
              }

              v23 = (v23 + 1) & v24;
            }

            while (((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255E74(v32, *&v15, v17 & 1);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v27 = v33;
      v26 = v34;
      v28 = v35;
      a1 = v30;
      a2 = v31;
      goto LABEL_27;
    }
  }

  v26 = 0;
  v27 = 0;
  v28 = 2;
LABEL_27:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v27;
  *(a4 + 32) = v26;
  *(a4 + 40) = v28;
}

uint64_t sub_21B335CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = MEMORY[0x277D84FA0];
  v29 = 0;
  v30 = 0;
  v31 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  if (v9)
  {
    v27 = a1;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_25;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_27;
        }

        ++v10;
        v14 = *(a3 + 24);
        v15 = sub_21B2B18C4(v12, v11, v13);
        v16 = v32;
        if (*(v32 + 16))
        {
          v17 = *(v32 + 40);
          sub_21B34BBC4();
          if (v15 != 2)
          {
            sub_21B34BBE4();
          }

          sub_21B34BBE4();
          v18 = sub_21B34BC24();
          v19 = -1 << *(v16 + 32);
          v20 = v18 & ~v19;
          if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            do
            {
              v22 = *(*(v16 + 48) + v20);
              if (v22 == 2)
              {
                if (v15 == 2)
                {
                  goto LABEL_6;
                }
              }

              else if (v15 != 2 && ((v22 ^ v15) & 1) == 0)
              {
                goto LABEL_6;
              }

              v20 = (v20 + 1) & v21;
            }

            while (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255D28(v28, v15);
LABEL_6:
        if (v10 != v9)
        {
          continue;
        }
      }

      v24 = v29;
      v23 = v30;
      v25 = v31;
      a1 = v27;
      goto LABEL_23;
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v24;
  *(a4 + 32) = v23;
  *(a4 + 40) = v25;
}

uint64_t sub_21B335F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = MEMORY[0x277D84FA0];
  v37 = 0;
  v38 = 0;
  v39 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_beginAccess();
  if (v9)
  {
    v33 = a1;
    v34 = a4;
    v35 = a2;
    v10 = 0;
    while (1)
    {
      v11 = *(a3 + 16);
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = v10;
      v13 = v11[1];
      if (v10 != v13)
      {
        if (v10 >= v13)
        {
          goto LABEL_32;
        }

        ++v10;
        v14 = *(a3 + 24);
        v15 = sub_21B232880(v12, v11, v13);
        v17 = v16;
        v18 = v40;
        if (*(v40 + 16))
        {
          v19 = *(v40 + 40);
          sub_21B34BBC4();
          sub_21B34BBE4();
          if (v17)
          {
            sub_21B34AD94();
          }

          v20 = sub_21B34BC24();
          v21 = v18 + 56;
          v22 = -1 << *(v18 + 32);
          v23 = v20 & ~v22;
          if ((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            v25 = *(v18 + 48);
            do
            {
              v26 = (v25 + 16 * v23);
              v27 = v26[1];
              if (v27)
              {
                if (v17)
                {
                  v28 = *v26 == v15 && v27 == v17;
                  if (v28 || (sub_21B34B9F4() & 1) != 0)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else if (!v17)
              {
                goto LABEL_25;
              }

              v23 = (v23 + 1) & v24;
            }

            while (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
          }
        }

        sub_21B28DFBC(v12, v12 + 1);
        sub_21B255BA0(&v36, v15, v17);
LABEL_24:

LABEL_25:
        if (v10 != v9)
        {
          continue;
        }
      }

      v30 = v37;
      v29 = v38;
      v31 = v39;
      a4 = v34;
      a2 = v35;
      a1 = v33;
      goto LABEL_28;
    }
  }

  v29 = 0;
  v30 = 0;
  v31 = 2;
LABEL_28:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v30;
  *(a4 + 32) = v29;
  *(a4 + 40) = v31;
}

uint64_t sub_21B336228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v68 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v7 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v9 = &v66 - v8;
  v10 = sub_21B34A834();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v66 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v66 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v66 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v91 = &v66 - v30;
  MEMORY[0x28223BE20](v29);
  v76 = &v66 - v31;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F1A8, &qword_21B356240);
  v32 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = &v66 - v33;
  v95 = MEMORY[0x277D84FA0];
  v92 = 0;
  v93 = 0;
  v94 = 2;
  swift_beginAccess();
  v34 = *(a3 + 16);
  if (!v34)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v35 = *(v34 + 8);
  if (v35 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v66 = a4;
  v67 = a2;
  v77 = v35;

  swift_beginAccess();
  if (v77)
  {
    v70 = v28;
    v36 = 0;
    v79 = (v11 + 32);
    v83 = (v11 + 8);
    v84 = v22;
    v81 = v25;
    v73 = a3;
    v89 = (v11 + 48);
    while (1)
    {
      v37 = *(a3 + 16);
      if (!v37)
      {
        goto LABEL_31;
      }

      v38 = v37[1];
      if (v36 == v38)
      {
        goto LABEL_27;
      }

      if (v36 >= v38)
      {
        goto LABEL_33;
      }

      v82 = v36 + 1;
      v39 = *(a3 + 24);
      v40 = v76;
      v78 = v36;
      sub_21B2B194C(v36, v37, v76);
      v41 = *(v75 + 48);
      v42 = v74;
      sub_21B260BE8(v40, &v74[v41]);
      sub_21B260BE8(&v42[v41], v91);
      v90 = v95;
      if (*(v95 + 16))
      {
        v43 = *(v90 + 40);
        sub_21B34BBC4();
        v44 = v70;
        sub_21B2615FC(v91, v70, &qword_27CD7E100, &unk_21B352A30);
        v45 = *v89;
        if ((*v89)(v44, 1, v10) == 1)
        {
          sub_21B34BBE4();
        }

        else
        {
          v46 = v80;
          (*v79)(v80, v44, v10);
          sub_21B34BBE4();
          sub_21B260D68(&qword_27CD7E1E0);
          sub_21B34AAB4();
          v47 = v46;
          v22 = v84;
          (*v83)(v47, v10);
        }

        v48 = sub_21B34BC24();
        v49 = -1 << *(v90 + 32);
        v50 = v48 & ~v49;
        v88 = v90 + 56;
        if ((*(v90 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          break;
        }
      }

LABEL_22:
      sub_21B28DFBC(v78, v82);
      v56 = v72;
      sub_21B2615FC(v91, v72, &qword_27CD7E100, &unk_21B352A30);
      v57 = v71;
      v58 = v56;
      v25 = v81;
      sub_21B255530(v71, v58);
      v59 = v57;
LABEL_23:
      sub_21B261664(v59, &qword_27CD7E100, &unk_21B352A30);
LABEL_24:
      sub_21B261664(v91, &qword_27CD7E100, &unk_21B352A30);
      v36 = v82;
      a3 = v73;
      if (v82 == v77)
      {
LABEL_27:
        v61 = v92;
        v60 = v93;
        v62 = v94;
        goto LABEL_29;
      }
    }

    v86 = ~v49;
    v87 = *(v69 + 72);
    while (1)
    {
      sub_21B2615FC(*(v90 + 48) + v87 * v50, v25, &qword_27CD7E100, &unk_21B352A30);
      v51 = *(v85 + 48);
      sub_21B2615FC(v25, v9, &qword_27CD7E100, &unk_21B352A30);
      sub_21B2615FC(v91, &v9[v51], &qword_27CD7E100, &unk_21B352A30);
      if (v45(v9, 1, v10) == 1)
      {
        break;
      }

      sub_21B2615FC(v9, v22, &qword_27CD7E100, &unk_21B352A30);
      if (v45(&v9[v51], 1, v10) == 1)
      {
        sub_21B261664(v25, &qword_27CD7E100, &unk_21B352A30);
        (*v83)(v22, v10);
LABEL_15:
        sub_21B261664(v9, &qword_27CD7E1D8, &qword_21B351B08);
        goto LABEL_16;
      }

      v52 = v80;
      (*v79)(v80, &v9[v51], v10);
      sub_21B260D68(&qword_27CD7E1E8);
      v53 = sub_21B34AC54();
      v54 = *v83;
      v55 = v52;
      v25 = v81;
      (*v83)(v55, v10);
      sub_21B261664(v25, &qword_27CD7E100, &unk_21B352A30);
      v54(v84, v10);
      v22 = v84;
      sub_21B261664(v9, &qword_27CD7E100, &unk_21B352A30);
      if (v53)
      {
        goto LABEL_24;
      }

LABEL_16:
      v50 = (v50 + 1) & v86;
      if (((*(v88 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    sub_21B261664(v25, &qword_27CD7E100, &unk_21B352A30);
    if (v45(&v9[v51], 1, v10) == 1)
    {
      v59 = v9;
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v60 = 0;
  v61 = 0;
  v62 = 2;
LABEL_29:

  v63 = v67;

  v64 = v66;
  *v66 = v68;
  v64[1] = v63;
  v64[2] = a3;
  v64[3] = v61;
  v64[4] = v60;
  *(v64 + 40) = v62;
}

uint64_t sub_21B336B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = MEMORY[0x277D84FA0];
  v31 = 0;
  v32 = 0;
  v33 = 2;
  swift_beginAccess();
  v8 = *(a3 + 16);
  if (!v8)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8);
  if (v9 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  if (v9)
  {
    v29 = a1;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v14 = *(a3 + 16);
      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = v14[1];
      if (v11 == v15)
      {
        goto LABEL_21;
      }

      if (v11 >= v15)
      {
        goto LABEL_28;
      }

      if ((*(v14 + (v11 >> 3) + 64) >> (v11 & 7)))
      {
        v16 = *v14 + 7;
        if (__OFADD__(*v14, 7))
        {
          __break(1u);
          goto LABEL_25;
        }

        if (v16 < 0)
        {
          v16 = *v14 + 14;
        }

        v17 = v16 >> 3;
        v19 = v17 - 1;
        v18 = v17 < 1;
        v20 = v17 + 62;
        if (!v18)
        {
          v20 = v19;
        }

        v21 = &v14[v10] + (v20 & 0xFFFFFFFFFFFFFFC0);
        v22 = *(v21 + 128);
        v23 = *(v21 + 136);
        sub_21B260DC0(v22, v23);
        if (v23 >> 60 == 11)
        {
LABEL_21:
          v26 = v31;
          v25 = v32;
          v27 = v33;
          a1 = v29;
          goto LABEL_23;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0xF000000000000000;
      }

      v24 = v11 + 1;
      if (sub_21B241ACC(v22, v23, v34))
      {
        v12 = v22;
        v13 = v23;
      }

      else
      {
        sub_21B28DFBC(v11, v11 + 1);
        sub_21B254968(v30, v22, v23);
        v12 = v30[0];
        v13 = v30[1];
      }

      sub_21B260C58(v12, v13);
      v10 += 2;
      ++v11;
      if (v9 == v24)
      {
        goto LABEL_21;
      }
    }
  }

  v25 = 0;
  v26 = 0;
  v27 = 2;
LABEL_23:

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v26;
  *(a4 + 32) = v25;
  *(a4 + 40) = v27;
}

uint64_t AnyColumn.prototype.getter()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 88))(v3);
}

uint64_t AnyColumn.subscript.getter(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 128))(a1, v3);
}

uint64_t AnyColumn.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v6 + 8) + 136))(a2, a1, v5);
  return sub_21B261664(a1, &qword_27CD7E0F8, &unk_21B3557C0);
}

uint64_t (*AnyColumn.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  *a1 = (*(*(v4 + 8) + 8))(v3);
  a1[1] = v5;
  return sub_21B2EEDE0;
}

uint64_t AnyColumn.missingCount.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 56))(v2);
}

uint64_t AnyColumn.hashValue.getter()
{
  sub_21B34BBC4();
  AnyColumn.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(*(v6 + 8) + 144))(a1, a2, v5);
}

uint64_t sub_21B3370A0()
{
  sub_21B34BBC4();
  AnyColumn.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumn.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v3 + 8) + 8))(v4);
  sub_21B34AD94();

  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 48))(v6);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_11:
    sub_21B2F1184(a1, v8);
  }

  v9 = v7;
  v29 = MEMORY[0x277D84F90];
  sub_21B253FF4(0, v7 & ~(v7 >> 63), 0);
  v8 = v29;
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  result = (*(*(v10 + 8) + 32))(v11);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v13 = result;
    do
    {
      v15 = v1[3];
      v14 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v15);
      (*(*(v14 + 8) + 128))(&v24, v13, v15);
      v23[0] = v24;
      v23[1] = v25;
      if (*(&v25 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
        }
      }

      else
      {
        sub_21B261664(v23, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v29 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21B253FF4((v16 > 1), v17 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 40 * v17;
      v19 = v26;
      v20 = v27;
      *(v18 + 64) = v28;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      v22 = v1[3];
      v21 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v22);
      v13 = (*(*(v21 + 8) + 64))(v13, v22);
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B337370()
{
  sub_21B34BBC4();
  AnyColumn.hash(into:)(v1);
  return sub_21B34BC24();
}

uint64_t AnyColumn.startIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 32))(v2);
}

uint64_t AnyColumn.endIndex.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 40))(v2);
}

Swift::Int __swiftcall AnyColumn.index(after:)(Swift::Int after)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 64))(after, v3);
}

Swift::Int __swiftcall AnyColumn.index(before:)(Swift::Int before)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v4 + 8) + 72))(before, v3);
}

void (*AnyColumn.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  *a1 = v6;
  *(v6 + 64) = a2;
  *(v6 + 72) = v3;
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 128))(a2, v7);
  return sub_21B2EF930;
}

uint64_t AnyColumn.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v7);
  (*(*(v8 + 8) + 152))(a2, a3, a1, v7);

  return sub_21B25F000(a1);
}

void (*AnyColumn.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  *a1 = v8;
  v8[11] = a3;
  v8[12] = v4;
  v8[10] = a2;
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(*(v10 + 8) + 144))(a2, a3, v9);
  return sub_21B2EFC2C;
}

uint64_t AnyColumn.subscript.getter(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v10 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  v11 = (*(*(v9 + 8) + 32))(v10);
  v13 = v4[3];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  result = (*(*(v12 + 8) + 40))(v13);
  if (result < v11)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_21B288DA4(a1, v11, result, a2, a3);
    v17 = v16;
    v19 = v18;
    (*(*(v8 + 8) + 160))();

    return sub_21B23A9F4(v15, v17, v19);
  }

  return result;
}

void (*sub_21B337858(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  *a1 = v5;
  v6 = *a2;
  *(v5 + 64) = v2;
  *(v5 + 72) = v6;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  (*(*(v8 + 8) + 128))(v6, v7);
  return sub_21B2EFE58;
}

void (*sub_21B337910(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  *a1 = v5;
  v7 = *a2;
  v6 = a2[1];
  v5[10] = v2;
  v5[11] = v7;
  v5[12] = v6;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(*(v9 + 8) + 144))(v7, v6, v8);
  return sub_21B2F00C0;
}

uint64_t sub_21B3379D8@<X0>(uint64_t (*a1)(void *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B3387A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21B337A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_21B233A74(v1, a1);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v6 = (*(*(v4 + 8) + 32))(v5);
  result = sub_21B233960(v2);
  *(a1 + 40) = v6;
  return result;
}

void *sub_21B337A9C()
{
  v1 = sub_21B263EC4(v0);
  sub_21B233960(v0);
  return v1;
}

uint64_t AnyColumn.customMirror.getter()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(*(v2 + 8) + 176))(v3);
}

uint64_t AnyColumn.distinct()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(*(v4 + 8) + 80))(v5);
  if (swift_dynamicCastMetatype())
  {
    sub_21B333AD4();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E710, &qword_21B352330);
    a1[4] = &off_282CAB618;
    v6 = swift_allocObject();
    *a1 = v6;
    sub_21B33524C(v15, v16, v17, v6 + 16);
LABEL_17:
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B333C8C();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E708, &qword_21B352328);
    a1[4] = &off_282CAB618;
    v7 = swift_allocObject();
    *a1 = v7;
    sub_21B3354E0(v15, v16, v17, v7 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B333E4C();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E700, &qword_21B352320);
    a1[4] = &off_282CAB618;
    v8 = swift_allocObject();
    *a1 = v8;
    sub_21B335780(v15, v16, v17, v8 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B334008();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F8, &qword_21B352318);
    a1[4] = &off_282CAB618;
    v9 = swift_allocObject();
    *a1 = v9;
    sub_21B335A30(v15, v16, v17, v9 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B3341C4();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6F0, &qword_21B352310);
    a1[4] = &off_282CAB618;
    v10 = swift_allocObject();
    *a1 = v10;
    sub_21B335CCC(v15, v16, v17, v10 + 16);
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B33437C();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E8, &qword_21B352308);
    a1[4] = &off_282CAB618;
    v11 = swift_allocObject();
    *a1 = v11;
    sub_21B335F68(v15, v16, v17, v11 + 16);
    goto LABEL_17;
  }

  sub_21B34A834();
  if (swift_dynamicCastMetatype())
  {
    sub_21B334538();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6E0, &qword_21B352300);
    a1[4] = &off_282CAB618;
    v12 = swift_allocObject();
    *a1 = v12;
    sub_21B336228(v15, v16, v17, (v12 + 16));
    goto LABEL_17;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_21B3346FC();
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E6D8, &qword_21B3522F8);
    a1[4] = &off_282CAB618;
    v13 = swift_allocObject();
    *a1 = v13;
    sub_21B336B70(v15, v16, v17, v13 + 16);
    goto LABEL_17;
  }

  return sub_21B337F8C();
}

uint64_t sub_21B337F8C()
{
  v1 = v0;
  v32 = MEMORY[0x277D84FA0];
  v29 = 0;
  v30 = 0;
  v31 = 2;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = (*(*(v2 + 8) + 32))(v3);
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v7 = (*(*(v5 + 8) + 40))(v6);
  if (v7 < v4)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_21B34B634();

    *&v26 = 0xD00000000000002ALL;
    *(&v26 + 1) = 0x800000021B34D600;
    v19 = v1[3];
    v18 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v19);
    (*(*(v18 + 8) + 80))(v19);
    v20 = sub_21B34BD24();
    MEMORY[0x21CEED5E0](v20);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = v7;
  if (v4 != v7)
  {
    while (v4 < v8)
    {
      v12 = v1[3];
      v13 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v12);
      (*(*(v13 + 8) + 128))(&v26, v4, v12);
      if (*(&v27 + 1))
      {
        sub_21B261720(&v26, v22);
        sub_21B2616C4(v22, v21);
        if (!swift_dynamicCast())
        {
          goto LABEL_17;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v26 = v23;
        v27 = v24;
        v28 = v25;
      }

      else
      {
        sub_21B261664(&v26, &qword_27CD7E0F8, &unk_21B3557C0);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      v14 = v4 + 1;
      if ((sub_21B24185C(&v26, v32) & 1) == 0)
      {
        sub_21B2615FC(&v26, v22, &qword_27CD7E200, &unk_21B352050);
        sub_21B254668(&v23, v22);
        sub_21B261664(&v23, &qword_27CD7E200, &unk_21B352050);
        sub_21B28DFBC(v4, v4 + 1);
      }

      sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
      ++v4;
      if (v8 == v14)
      {
        v10 = v29;
        v9 = v30;
        v11 = v31;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2;
LABEL_14:

  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  (*(*(v16 + 8) + 160))(v10, v9, v11, v15);
  return sub_21B23A9F4(v10, v9, v11);
}

uint64_t sub_21B33834C(uint64_t (*a1)(__int128 *))
{
  v3 = v2;
  v4 = v1;
  v5 = DataFrame.Rows.startIndex.getter();
  sub_21B2A6400(v1[3], v1[4], *(v1 + 40));
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v5 < v8)
  {
LABEL_5:
    before = v8;
    do
    {
      v9 = v4[1];
      v10 = v4[2];
      *&v28 = *v4;
      *(&v28 + 1) = v9;
      v29 = v10;
      *&v30 = v5;

      v11 = a1(&v28);

      if (v3)
      {
        break;
      }

      v32 = v5;
      v12 = *v4;
      v13 = v4[1];
      v14 = v4[2];
      v15 = v4[3];
      v16 = v4[4];
      v17 = *(v4 + 40);
      if (v11)
      {
        do
        {
          *&v28 = v12;
          *(&v28 + 1) = v13;
          v29 = v14;
          *&v30 = v15;
          *(&v30 + 1) = v16;
          v31 = v17;
          v18 = DataFrame.Rows.index(before:)(before);
          if (v32 >= v18)
          {
            return v32;
          }

          v19 = v4[1];
          v20 = v4[2];
          *&v28 = *v4;
          *(&v28 + 1) = v19;
          v29 = v20;
          *&v30 = v18;
          before = v18;

          v21 = a1(&v28);
        }

        while ((v21 & 1) != 0);
        v22 = v32;
        v8 = before;
        sub_21B334C40(v32, before);
        v23 = v4[2];
        v24 = *(v4 + 40);
        v28 = *v4;
        v29 = v23;
        v30 = *(v4 + 3);
        v31 = v24;
        v5 = DataFrame.Rows.index(after:)(v22);
        if (v5 < before)
        {
          goto LABEL_5;
        }

        return v5;
      }

      *&v28 = *v4;
      *(&v28 + 1) = v13;
      v29 = v14;
      *&v30 = v15;
      *(&v30 + 1) = v16;
      v31 = v17;
      v5 = DataFrame.Rows.index(after:)(v32);
    }

    while (v5 < before);
  }

  return v5;
}

unint64_t sub_21B338564(unint64_t result)
{
  v18 = result;
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0;
LABEL_3:
    v4 = 40 * v3 + 32;
    v5 = v3;
    while (1)
    {
      if (v3 < 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v6 = *v1;
      if (v5 >= *(*v1 + 16))
      {
        goto LABEL_22;
      }

      v7 = v1[3];
      sub_21B233A74(v6 + v4, v19);
      v9 = v20;
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(*(v8 + 8) + 128))(v22, v7, v9);
      sub_21B233960(v19);
      v10 = v23;
      v11 = v18(v22);
      result = sub_21B261664(v22, &qword_27CD7E0F8, &unk_21B3557C0);
      v23 = v10;
      if (v10)
      {
        return v5;
      }

      if (v11)
      {
        break;
      }

      ++v5;
      v4 += 40;
      v1 = v17;
      if (v5 >= v2)
      {
        return v5;
      }
    }

    v12 = v23;
    while (1)
    {
      v13 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v5 >= v13)
      {
        v23 = v12;
        return v5;
      }

      if (v13 >= *(v6 + 16))
      {
        goto LABEL_24;
      }

      sub_21B233A74(v6 + 32 + 40 * v13, v19);
      v15 = v20;
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(*(v14 + 8) + 128))(v22, v7, v15);
      sub_21B233960(v19);
      v16 = v18(v22);
      result = sub_21B261664(v22, &qword_27CD7E0F8, &unk_21B3557C0);
      ++v2;
      if ((v16 & 1) == 0)
      {
        v23 = 0;
        v1 = v17;
        result = sub_21B334CEC(v5, v13);
        v3 = v5 + 1;
        v2 = v13;
        if (v5 + 1 < v13)
        {
          goto LABEL_3;
        }

        return ++v5;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_21B3387A8(uint64_t (*a1)(void *))
{
  v3 = v1;
  v6 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  v7 = (*(*(v5 + 8) + 32))(v6);
  v9 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v10 = (*(*(v8 + 8) + 40))(v9);
  if (v7 < v10)
  {
    v11 = v10;
    do
    {
      v12 = v3[3];
      v13 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v12);
      (*(*(v13 + 8) + 128))(v24, v7, v12);
      v14 = a1(v24);
      sub_21B261664(v24, &qword_27CD7E0F8, &unk_21B3557C0);
      if (v2)
      {
        break;
      }

      if (v14)
      {
        while (1)
        {
          v17 = v3[3];
          v18 = v3[4];
          __swift_project_boxed_opaque_existential_1(v3, v17);
          v19 = (*(*(v18 + 8) + 72))(v11, v17);
          if (v7 >= v19)
          {
            return v7;
          }

          v11 = v19;
          v20 = v3[3];
          v21 = v3[4];
          __swift_project_boxed_opaque_existential_1(v3, v20);
          (*(*(v21 + 8) + 128))(v24, v11, v20);
          v22 = a1(v24);
          sub_21B261664(v24, &qword_27CD7E0F8, &unk_21B3557C0);
          if ((v22 & 1) == 0)
          {
            sub_21B334ADC(v7, v11);
            break;
          }
        }
      }

      v15 = v3[3];
      v16 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v15);
      v7 = (*(*(v16 + 8) + 64))(v7, v15);
    }

    while (v7 < v11);
  }

  return v7;
}

unint64_t sub_21B3389F8()
{
  result = qword_27CD7F620;
  if (!qword_27CD7F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F620);
  }

  return result;
}

unint64_t sub_21B338A50()
{
  result = qword_27CD7F628;
  if (!qword_27CD7F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F628);
  }

  return result;
}

unint64_t sub_21B338AA4()
{
  result = qword_27CD7F630;
  if (!qword_27CD7F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F630);
  }

  return result;
}

unint64_t sub_21B338AFC()
{
  result = qword_27CD7F638;
  if (!qword_27CD7F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F638);
  }

  return result;
}

unint64_t sub_21B338B54()
{
  result = qword_27CD7F640;
  if (!qword_27CD7F640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E530, &qword_21B352028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7F640);
  }

  return result;
}

uint64_t Column<A>.numericSummary()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v7[2] = *(a1 + 16);
  v7[3] = a2;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  type metadata accessor for NumericSummary();
  return sub_21B328CA8(sub_21B339C1C, v7, v5);
}

{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v7[2] = *(a1 + 16);
  v7[3] = a2;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F648, &qword_21B358088);
  return sub_21B328CA8(sub_21B33AADC, v7, v5);
}

uint64_t ColumnSlice<A>.numericSummary()(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v15[0] = *v2;
  v15[1] = v4;
  v16 = *(v2 + 4);
  v5 = v2[1];
  v12 = *v2;
  v13 = v5;
  v14 = *(v2 + 4);
  v6 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v7 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v11, v7);
  v8 = v11[2];

  v10[2] = v6;
  v10[3] = a2;
  v10[4] = v15;
  type metadata accessor for NumericSummary();
  sub_21B328CA8(sub_21B33AB00, v10, v8);
}

{
  v4 = v2[1];
  v15[0] = *v2;
  v15[1] = v4;
  v16 = *(v2 + 4);
  v5 = v2[1];
  v12 = *v2;
  v13 = v5;
  v14 = *(v2 + 4);
  v6 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v7 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v11, v7);
  v8 = v11[2];

  v10[2] = v6;
  v10[3] = a2;
  v10[4] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F648, &qword_21B358088);
  sub_21B328CA8(sub_21B33AE28, v10, v8);
}

uint64_t DiscontiguousColumnSlice<A>.numericSummary()(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v7 = *v2;
  v8[0] = v3;
  *(v8 + 9) = *(v2 + 25);
  v4 = v3;
  v6[2] = *(a1 + 16);
  v6[3] = a2;
  v6[4] = &v7;
  type metadata accessor for NumericSummary();
  return sub_21B328CA8(sub_21B33AE48, v6, v4);
}

{
  v3 = v2[1];
  v7 = *v2;
  v8[0] = v3;
  *(v8 + 9) = *(v2 + 25);
  v4 = v3;
  v6[2] = *(a1 + 16);
  v6[3] = a2;
  v6[4] = &v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F648, &qword_21B358088);
  return sub_21B328CA8(sub_21B33B214, v6, v4);
}

__n128 sub_21B339014@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    v21 = NAN;
    a4.n128_u64[0] = 0x7FF8000000000000;
    v45 = a4;
    v46.i64[0] = 0x7FF8000000000000;
    v22 = 0x7FF8000000000000;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = vdupq_n_s64(0x7FF8000000000000uLL);
  v10 = (a1 + 32);
  v11 = 0.0;
  v12 = vdupq_n_s64(0x7FF0000000000000uLL);
  v13 = vdupq_n_s64(0xFFFFFFFFFFFFFuLL);
  do
  {
    v14 = *&v10[v8++];
    v11 = v11 + v14;
    *&v15.f64[0] = v9.i64[0];
    v15.f64[1] = v14;
    *&v16.f64[1] = v9.i64[1];
    v16.f64[0] = v14;
    v17 = vcgtq_f64(v16, v15);
    v18 = vdupq_laneq_s64(v15, 1);
    v9 = vbslq_s8(vornq_s8(vceqzq_s64(vandq_s8(v9, v13)), vceqq_s64(vandq_s8(v9, v12), v12)), vbslq_s8(v17, v18, v9), v18);
  }

  while (v6 != v8);
  v16.f64[0] = v11 / v6;
  if (v6 >= 4)
  {
    v19 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    v31 = vdupq_lane_s64(*&v16.f64[0], 0);
    v32 = (a1 + 48);
    v20 = 0.0;
    v33 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v34 = vsubq_f64(v32[-1], v31);
      v35 = vsubq_f64(*v32, v31);
      v36 = vmulq_f64(v34, v34);
      v37 = vmulq_f64(v35, v35);
      v20 = v20 + v36.f64[0] + v36.f64[1] + v37.f64[0] + v37.f64[1];
      v32 += 2;
      v33 -= 4;
    }

    while (v33);
    if (v6 == v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  v38 = v6 - v19;
  v39 = (a1 + 8 * v19 + 32);
  do
  {
    v40 = *v39++;
    v20 = v20 + (v40 - v16.f64[0]) * (v40 - v16.f64[0]);
    --v38;
  }

  while (v38);
LABEL_13:
  v45 = v16;
  v46 = v9;
  if (v20 <= 0.0)
  {
    v21 = NAN;
  }

  else
  {
    v21 = sqrt(v20 / (v6 - 1));
  }

  v7 = sub_21B24A18C(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
  v41 = *(v7 + 2);
  v22 = v46.i64[1];
  v42 = v6;
  do
  {
    v43 = *v10;
    v44 = *(v7 + 3);
    if (v41 >= v44 >> 1)
    {
      v7 = sub_21B24A18C((v44 > 1), v41 + 1, 1, v7);
    }

    *(v7 + 2) = v41 + 1;
    *&v7[8 * v41 + 32] = v43;
    ++v10;
    ++v41;
    --v42;
  }

  while (v42);
LABEL_7:
  v47 = v7;

  sub_21B33D904(&v47);

  v23 = v47;
  sub_21B339590(v47, 0.25);
  v25 = v24;
  sub_21B339590(v23, 0.5);
  v27 = v26;
  sub_21B339590(v23, 0.75);
  v29 = v28;

  *a3 = v6;
  *(a3 + 8) = a2;
  *(a3 + 48) = v21;
  *(a3 + 56) = v22;
  result = v45;
  *(a3 + 64) = v46.i64[0];
  *(a3 + 16) = v27;
  *(a3 + 24) = v25;
  *(a3 + 32) = v29;
  *(a3 + 40) = v45.n128_u64[0];
  return result;
}

__n128 sub_21B3392C8@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v7 = a1[1].u64[0];
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    a4.n128_u64[0] = vneg_f32(0x3F0000003FLL);
    v42 = a4.n128_u64[0];
    v18 = NAN;
    a4.n128_u32[0] = 2143289344;
    v41 = a4;
    goto LABEL_7;
  }

  v9 = 0;
  v10 = vneg_f32(0x3F0000003FLL);
  v11 = a1 + 2;
  v12 = 0.0;
  v13 = vneg_f32(0x7F0000007FLL);
  do
  {
    v14 = v11->f32[v9++];
    v12 = v12 + v14;
    v15 = vdup_lane_s32(__PAIR64__(v10.u32[1], LODWORD(v14)), 0);
    v10 = vbsl_s8(vorn_s8(vceqz_s32(vand_s8(v10, 0x7F0000007FLL)), vceq_s32(vand_s8(v10, v13), v13)), vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v14), v10.u32[0]), __PAIR64__(v10.u32[1], LODWORD(v14))), v15, v10), v15);
  }

  while (v7 != v9);
  v4.n128_f32[0] = v12 / v7;
  if (v7 >= 8)
  {
    v16 = v7 & 0x7FFFFFFFFFFFFFF8;
    v27 = vdupq_lane_s32(v4.n128_u64[0], 0);
    v28 = a1 + 3;
    v17 = 0.0;
    v29 = v7 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v30 = vsubq_f32(v28[-1], v27);
      v31 = vsubq_f32(*v28, v27);
      v32 = vmulq_f32(v30, v30);
      v33 = vmulq_f32(v31, v31);
      v17 = (((((((v17 + v32.f32[0]) + v32.f32[1]) + v32.f32[2]) + v32.f32[3]) + v33.f32[0]) + v33.f32[1]) + v33.f32[2]) + v33.f32[3];
      v28 += 2;
      v29 -= 8;
    }

    while (v29);
    if (v7 == v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0.0;
  }

  v34 = v7 - v16;
  v35 = &a1[2].f32[v16];
  do
  {
    v36 = *v35++;
    v17 = v17 + ((v36 - v4.n128_f32[0]) * (v36 - v4.n128_f32[0]));
    --v34;
  }

  while (v34);
LABEL_13:
  v41 = v4;
  v42 = v10;
  if (v17 <= 0.0)
  {
    v18 = NAN;
  }

  else
  {
    v18 = sqrtf(v17 / (v7 - 1));
  }

  v8 = sub_21B24A290(0, *(MEMORY[0x277D84F90] + 16) + 1, 1, MEMORY[0x277D84F90]);
  v37 = *(v8 + 2);
  v38 = v7;
  do
  {
    v39 = v11->i32[0];
    v40 = *(v8 + 3);
    if (v37 >= v40 >> 1)
    {
      v8 = sub_21B24A290((v40 > 1), v37 + 1, 1, v8);
    }

    *(v8 + 2) = v37 + 1;
    *&v8[4 * v37 + 32] = v39;
    v11 = (v11 + 4);
    ++v37;
    --v38;
  }

  while (v38);
LABEL_7:
  v43 = v8;

  sub_21B33DA38(&v43);

  v19 = v43;
  sub_21B3397B8(v43, 0.25);
  v21 = v20;
  sub_21B3397B8(v19, 0.5);
  v23 = v22;
  sub_21B3397B8(v19, 0.75);
  v25 = v24;

  *a3 = v7;
  *(a3 + 8) = a2;
  result = v41;
  *(a3 + 36) = v42;
  *(a3 + 16) = v23;
  *(a3 + 20) = v21;
  *(a3 + 28) = v41.n128_u32[0];
  *(a3 + 32) = v18;
  *(a3 + 24) = v25;
  return result;
}

uint64_t sub_21B339590(uint64_t result, double a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    goto LABEL_24;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (v4 - 1) * a2;
    v6 = trunc(v5);
    v7 = floor(v5);
    v8 = ceil(v5);
    if (v5 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v6 == v9)
    {
      result = sub_21B33B40C(&v14, v5);
      if ((v15 & 1) == 0)
      {
        if (v14 < v4)
        {
          v10 = *(v3 + 8 * v14 + 32);
          return result;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      sub_21B33B40C(&v14, v6);
      if ((v15 & 1) == 0)
      {
        if (v14 >= v4)
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_24;
        }

        v11 = v3 + 32;
        v12 = *(v11 + 8 * v14);
        result = sub_21B33B40C(&v14, v9);
        if ((v15 & 1) == 0)
        {
          if (v14 < v4)
          {
            v13 = (v9 - v5) * v12 + (v5 - v6) * *(v11 + 8 * v14);
            return result;
          }

          goto LABEL_21;
        }
      }
    }

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DAE0);
    MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
    MEMORY[0x21CEED5E0](0xD00000000000002ELL, 0x800000021B34DB00);
LABEL_24:
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3397B8(uint64_t result, float a2)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    goto LABEL_24;
  }

  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (v4 - 1) * a2;
    v6 = truncf(v5);
    v7 = floorf(v5);
    v8 = ceilf(v5);
    if (v5 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    if (v6 == v9)
    {
      result = sub_21B33B5FC(&v14, v5);
      if ((v15 & 1) == 0)
      {
        if (v14 < v4)
        {
          v10 = *(v3 + 4 * v14 + 32);
          return result;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      sub_21B33B5FC(&v14, v6);
      if ((v15 & 1) == 0)
      {
        if (v14 >= v4)
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_24;
        }

        v11 = v3 + 32;
        v12 = *(v11 + 4 * v14);
        result = sub_21B33B5FC(&v14, v9);
        if ((v15 & 1) == 0)
        {
          if (v14 < v4)
          {
            v13 = ((v9 - v5) * v12) + ((v5 - v6) * *(v11 + 4 * v14));
            return result;
          }

          goto LABEL_21;
        }
      }
    }

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0x74616F6C46, 0xE500000000000000);
    MEMORY[0x21CEED5E0](0xD00000000000001ELL, 0x800000021B34DAE0);
    MEMORY[0x21CEED5E0](7630409, 0xE300000000000000);
    MEMORY[0x21CEED5E0](0xD00000000000002ELL, 0x800000021B34DB00);
LABEL_24:
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B3399E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = result;
    v27 = a8;
    v28 = a6;
    v29 = a7;
    if (a2)
    {
      type metadata accessor for Column();
      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      v30 = a5;
      do
      {
        v31[0] = a3;
        v31[1] = a4;
        v31[2] = a5;
        result = Column.isNil(at:)(v12);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v32 = v13;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v13 + 16) + 1, 1);
            v13 = v32;
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            result = sub_21B254034((v14 > 1), v15 + 1, 1);
            v13 = v32;
          }

          *(v13 + 16) = v15 + 1;
          *(v13 + 8 * v15 + 32) = v12;
          a5 = v30;
        }

        ++v12;
      }

      while (a2 != v12);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v16 = a2 - *(v13 + 16);
    v31[0] = v13;
    MEMORY[0x28223BE20](result);
    v18 = v28;
    v17 = v29;
    v25[2] = v28;
    v25[3] = v29;
    v25[4] = v26;
    v25[5] = a2;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v20 = sub_21B26F384();
    v22 = sub_21B2FCC28(sub_21B26F44C, v25, v19, v28, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v21);

    v31[0] = v22;
    v23 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    sub_21B308E68(v31, v16, v18, v23, v17, WitnessTable, v27);
  }

  return result;
}

uint64_t sub_21B339C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v31 = a2;
  v30 = a1;
  v10 = a3[1];
  v40 = *a3;
  v41 = v10;
  v42 = *(a3 + 4);
  v11 = a3[1];
  v37 = *a3;
  v38 = v11;
  v39 = *(a3 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v46 = sub_21B34BB44();
  result = sub_21B34BB14();
  v14 = v35;
  v13 = v36;
  v33 = a5;
  v32 = a6;
  if (v35 == v36)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_3:
    v43 = v40;
    v44 = v41;
    v45 = v42;
    result = sub_21B34BB14();
    v16 = *(&v37 + 1) - v37;
    if (!__OFSUB__(*(&v37 + 1), v37))
    {
      v17 = *(v15 + 16);
      v18 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
        *&v43 = v15;
        MEMORY[0x28223BE20](result);
        v19 = v33;
        v29[2] = a4;
        v29[3] = v33;
        v29[4] = v30;
        v29[5] = v31;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
        v21 = sub_21B26F384();
        v23 = sub_21B2FCC28(sub_21B26F36C, v29, v20, a4, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);

        *&v43 = v23;
        v24 = sub_21B34B054();
        WitnessTable = swift_getWitnessTable();
        sub_21B308E68(&v43, v18, a4, v24, v19, WitnessTable, v32);
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v36 >= v35)
  {
    v15 = MEMORY[0x277D84F90];
    while (v13 != v14)
    {
      v28 = a3[1];
      v43 = *a3;
      v44 = v28;
      v45 = *(a3 + 4);
      type metadata accessor for ColumnSlice();
      result = ColumnSlice.isNil(at:)(v14);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v34 = v15;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v15 + 16) + 1, 1);
          v15 = v34;
        }

        v27 = *(v15 + 16);
        v26 = *(v15 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_21B254034((v26 > 1), v27 + 1, 1);
          v15 = v34;
        }

        *(v15 + 16) = v27 + 1;
        *(v15 + 8 * v27 + 32) = v14;
      }

      if (v13 == ++v14)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21B339F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a2;
  v35 = a6;
  v36 = a5;
  v33 = a1;
  v62 = *a3;
  v8 = *(a3 + 3);
  v63 = *(a3 + 2);
  v9 = *(a3 + 4);
  v10 = *(a3 + 40);
  v38 = v9;
  v39 = v8;
  v37 = v10;
  result = sub_21B2FB104(v8, v9, v10);
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = 0;
    v42 = result + 32;
    v15 = MEMORY[0x277D84F90];
    v40 = result;
    v41 = a4;
    while (v14 < *(v12 + 16))
    {
      v18 = *(v42 + 8 * v14);
      v19 = a3[1];
      v58 = *a3;
      *v59 = v19;
      *&v59[9] = *(a3 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v18);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v64 = v15;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v15 + 16) + 1, 1);
          v15 = v64;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_21B254034((v16 > 1), v17 + 1, 1);
          v15 = v64;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v18;
        v12 = v40;
        a4 = v41;
      }

      if (v13 == ++v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_12:

    v53 = v62;
    v54 = v63;
    v55 = v39;
    v56 = v38;
    v57 = v37;
    type metadata accessor for Column();
    swift_getWitnessTable();
    type metadata accessor for _DiscontiguousSlice();
    swift_getWitnessTable();
    sub_21B34B2E4();
    *&v59[16] = v50;
    v60 = v51;
    v61 = v52;
    v58 = v48;
    *v59 = v49;
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v43 = v48;
    v44 = v49;
    v20 = sub_21B34AAF4();
    swift_getWitnessTable();
    v21 = sub_21B34B264();
    result = (*(*(v20 - 8) + 8))(&v58, v20);
    v22 = *(v15 + 16);
    v23 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      *&v48 = v15;
      MEMORY[0x28223BE20](result);
      v24 = v36;
      v32[2] = a4;
      v32[3] = v36;
      v32[4] = v33;
      v32[5] = v34;
      v25 = a4;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
      v27 = sub_21B26F384();
      v29 = sub_21B2FCC28(sub_21B26F44C, v32, v26, v25, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);

      *&v48 = v29;
      v30 = sub_21B34B054();
      WitnessTable = swift_getWitnessTable();
      sub_21B308E68(&v48, v23, v25, v30, v24, WitnessTable, v35);
    }
  }

  __break(1u);
  return result;
}

uint64_t FilledColumn<>.numericSummary()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v21 = a3;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(*(*(v5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - v11;
  sub_21B34B204();
  v23 = v6;
  v24 = v5;
  v25 = a2;
  v26 = v3;
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_21B2FCC28(sub_21B26CA3C, v22, AssociatedTypeWitness, v13, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v15);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v27 = v16;
  v17 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  sub_21B308E68(&v27, 0, v13, v17, a2, WitnessTable, v21);
}

uint64_t FilledColumn<>.numericSummary()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(*(*(v7 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19[-v12];
  sub_21B34B204();
  v20 = v6;
  v21 = v7;
  v22 = a2;
  v23 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_21B2FCC28(sub_21B33B234, v19, AssociatedTypeWitness, MEMORY[0x277D839F8], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v15);
  v17.n128_f64[0] = (*(v10 + 8))(v13, AssociatedTypeWitness);
  sub_21B339014(v16, 0, a3, v17);
}

uint64_t sub_21B33A6CC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v14 - v7;
  v9 = type metadata accessor for FilledColumn();
  FilledColumn.subscript.getter(a1, v9, v8);
  if (sub_21B34B524() < 65)
  {
    v12 = sub_21B34B534();
    v13 = sub_21B34B514();
    result = (*(v5 + 8))(v8, AssociatedTypeWitness);
    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v5 + 8))(v8, AssociatedTypeWitness);
    v11 = *&v14[3];
  }

  *a2 = v11;
  return result;
}

uint64_t sub_21B33A89C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a1 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x277D84F90];
  if (a1)
  {
    type metadata accessor for Column();
    v12 = 0;
    v24 = a4;
    v25 = a5;
    do
    {
      v28 = a2;
      v29 = a3;
      v30 = a4;
      if (!Column.isNil(at:)(v12))
      {
        v27 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B254034(0, *(v8 + 16) + 1, 1);
          v8 = v27;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21B254034((v13 > 1), v14 + 1, 1);
          v8 = v27;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 8 * v14 + 32) = v12;
        a4 = v24;
        a5 = v25;
      }

      ++v12;
    }

    while (a1 != v12);
  }

  v15 = *(v8 + 16);
  if (v15)
  {
    v28 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v15, 0);
    v17 = 0;
    v18 = v28;
    while (v17 < *(v8 + 16))
    {
      v26 = *(v8 + 8 * v17 + 32);
      result = sub_21B33B258(&v26, a5, &v27);
      v19 = v27;
      v28 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_21B2542A8((v20 > 1), v21 + 1, 1);
        v18 = v28;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      *(v18 + 8 * v21 + 32) = v19;
      if (v15 == v17)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_19:
  sub_21B339014(v18, a1 - v15, a6, v22);
}

uint64_t sub_21B33AB20@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v30 = *a1;
  v31 = v5;
  v32 = *(a1 + 4);
  v6 = a1[1];
  v28[0] = *a1;
  v28[1] = v6;
  v29 = *(a1 + 4);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34BB44();
  result = sub_21B34BB14();
  v9 = v26;
  v8 = v27;
  v10 = MEMORY[0x277D84F90];
  if (v26 != v27)
  {
    if (v27 >= v26)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_21B254034((v20 > 1), v21 + 1, 1);
      v10 = v25;
    }

    *(v10 + 16) = v21 + 1;
    *(v10 + 8 * v21 + 32) = v9;
    while (v8 != ++v9)
    {
LABEL_17:
      if (v8 == v9)
      {
        goto LABEL_24;
      }

      v22 = a1[1];
      v33 = *a1;
      v34 = v22;
      v35 = *(a1 + 4);
      type metadata accessor for ColumnSlice();
      result = ColumnSlice.isNil(at:)(v9);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v10;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v10 + 16) + 1, 1);
        }

        goto LABEL_13;
      }
    }
  }

  v33 = v30;
  v34 = v31;
  v35 = v32;
  result = sub_21B34BB14();
  v11 = *(&v28[0] + 1) - *&v28[0];
  if (__OFSUB__(*(&v28[0] + 1), *&v28[0]))
  {
    goto LABEL_25;
  }

  v12 = *(v10 + 16);
  v13 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v24 = v11 - v12;
    *&v33 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v12, 0);
    v14 = 0;
    v15 = v33;
    while (v14 < *(v10 + 16))
    {
      v26 = *(v10 + 8 * v14 + 32);
      result = sub_21B33B258(&v26, a2, v28);
      v16 = *&v28[0];
      *&v33 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_21B2542A8((v17 > 1), v18 + 1, 1);
        v15 = v33;
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      *(v15 + 8 * v18 + 32) = v16;
      if (v12 == v14)
      {

        v13 = v24;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_22:
  sub_21B339014(v15, v13, a3, v19);
}

uint64_t sub_21B33AE68@<X0>(__int128 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v47 = *a1;
  v4 = *(a1 + 3);
  v48 = *(a1 + 2);
  v28 = v4;
  v27 = *(a1 + 4);
  v26 = *(a1 + 40);
  result = sub_21B2FB104(v4, v27, v26);
  v6 = result;
  v7 = *(result + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v10 = result + 32;
    v29 = result + 32;
    while (v9 < *(v6 + 16))
    {
      v13 = *(v10 + 8 * v9);
      v14 = a1[1];
      v42 = *a1;
      *v43 = v14;
      *&v43[9] = *(a1 + 25);
      type metadata accessor for DiscontiguousColumnSlice();
      result = DiscontiguousColumnSlice.isNil(at:)(v13);
      if ((result & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v46 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21B254034(0, *(v8 + 16) + 1, 1);
          v8 = v46;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_21B254034((v11 > 1), v12 + 1, 1);
          v8 = v46;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v13;
        v10 = v29;
      }

      if (v7 == ++v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_11:

  v37 = v47;
  v38 = v48;
  v39 = v28;
  v40 = v27;
  v41 = v26;
  type metadata accessor for Column();
  swift_getWitnessTable();
  type metadata accessor for _DiscontiguousSlice();
  swift_getWitnessTable();
  sub_21B34B2E4();
  *&v43[16] = v34;
  v44 = v35;
  v45 = v36;
  v42 = v32;
  *v43 = v33;
  v31[2] = v34;
  v31[3] = v35;
  v31[4] = v36;
  v31[0] = v32;
  v31[1] = v33;
  v15 = sub_21B34AAF4();
  swift_getWitnessTable();
  v16 = sub_21B34B264();
  result = (*(*(v15 - 8) + 8))(&v42, v15);
  v17 = *(v8 + 16);
  v18 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v17)
  {
    *&v32 = MEMORY[0x277D84F90];
    result = sub_21B2542A8(0, v17, 0);
    v19 = 0;
    v20 = v32;
    while (v19 < *(v8 + 16))
    {
      *&v37 = *(v8 + 8 * v19 + 32);
      result = sub_21B33B258(&v37, a2, v31);
      v21 = *&v31[0];
      *&v32 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_21B2542A8((v22 > 1), v23 + 1, 1);
        v20 = v32;
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      *(v20 + 8 * v23 + 32) = v21;
      if (v17 == v19)
      {

        goto LABEL_20;
      }
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_20:
  sub_21B339014(v20, v18, a3, v24);
}

uint64_t sub_21B33B234@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  return sub_21B33A6CC(a1, a2);
}

uint64_t sub_21B33B258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, double *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v11 + *(v10 + 72) * *v7, v12);
  if (sub_21B34B524() < 65)
  {
    v15 = sub_21B34B534();
    v16 = sub_21B34B514();
    result = (*(v5 + 8))(v9, a2);
    if (v15)
    {
      v14 = v16;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    sub_21B2CFB44();
    sub_21B2659F4();
    sub_21B34A9B4();
    result = (*(v5 + 8))(v9, a2);
    v14 = *&v17[1];
  }

  *a3 = v14;
  return result;
}

BOOL sub_21B33B40C(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_21B34B0C4();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_21B34B0B4();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_21B33B5FC(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LOBYTE(a2);
  if (!(v4 | v5))
  {
    v12 = 0;
    result = 1;
    goto LABEL_32;
  }

  if (v4 == 255 || (v7 = sub_21B34B0E4(), v7 > 63))
  {
LABEL_44:
    v12 = 0;
    result = 0;
    v6 = 1;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = sub_21B34B0D4();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 > 63)
  {
    if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = v5 >> (v11 - v8);
      }

      goto LABEL_17;
    }

    if (v12 >= 0x20)
    {
LABEL_13:
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = v5 << v12;
    }

LABEL_17:
    v12 = v12;
LABEL_18:
    if (v8 != 63)
    {
      if (v8 > -65)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v13 = 1 << v8;
          goto LABEL_26;
        }

        if (v8 != -64)
        {
          v13 = 0;
LABEL_26:
          v12 |= v13;
        }
      }

      if (a2 >= 0.0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      if (a2 >= 0.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v6 = 0;
      v12 = 0x8000000000000000;
      goto LABEL_32;
    }

LABEL_37:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_8;
      }

      v12 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      v12 = v5 << v12;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 63)
  {
    goto LABEL_43;
  }

  if (v8 < -64)
  {
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v8 != -64)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v12 = 0;
  if (a2 >= 0.0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v6 = 0;
  v12 = -v12;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v6;
  return result;
}

void *sub_21B33B7E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F700, &qword_21B358140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E200, &unk_21B352050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33B944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21B33BA48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4D8, &qword_21B351D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4E0, &qword_21B351D98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33BB98(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_21B33BD00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F750, &qword_21B358190);
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

void *sub_21B33BE18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21B33BF4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F740, &qword_21B358180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_21B33C074(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_21B33C190(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F718, &qword_21B358158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B33C2F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F730, &qword_21B358170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E548, &unk_21B352060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33C444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7F710, &qword_21B358150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33C554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E458, &qword_21B351D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21B33C660(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E448, &qword_21B351D48);
  v10 = *(sub_21B34A834() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21B34A834() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21B33C838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E438, &qword_21B351D38);
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

char *sub_21B33C92C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21B33CA30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E400, &qword_21B351D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21B33CB34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E418, &qword_21B351D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_21B33CC54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D0, &qword_21B351CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B33CDB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E388, &qword_21B351C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21B33CF1C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_21B33D200(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D370(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D510(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B33D7D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_21B33D904(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA20(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21B34B914();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21B34AFE4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21B33DB6C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21B33DA38(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B33EA34(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_21B34B914();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_21B34AFE4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_21B33E0C8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_21B33DB6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21B23A330(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_21B33E624((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B2356AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_21B2356AC((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_21B33E624((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_21B33E0C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_21B23A330(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_21B33E818((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B2356AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_21B2356AC((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_21B33E818((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_21B33E624(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_21B33E818(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t FormattingOptions.init()@<X0>(uint64_t a1@<X8>)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = sub_21B34A6A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - v9;
  v11 = sub_21B34A874();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  *a1 = xmmword_21B3581C0;
  *(a1 + 16) = 20;
  *(a1 + 24) = 257;
  *(a1 + 26) = 1;
  v13 = [objc_opt_self() processInfo];
  v14 = [v13 environment];

  v15 = sub_21B34A9D4();
  v16 = *(v15 + 16);
  v60 = v7;
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = sub_21B24B534(0x534E4D554C4F43, 0xE700000000000000);
  if ((v18 & 1) == 0)
  {
    goto LABEL_22;
  }

  v19 = (*(v15 + 56) + 16 * v17);
  v21 = *v19;
  v20 = v19[1];

  v22 = HIBYTE(v20) & 0xF;
  v23 = v21 & 0xFFFFFFFFFFFFLL;
  if (!((v20 & 0x2000000000000000) != 0 ? HIBYTE(v20) & 0xF : v21 & 0xFFFFFFFFFFFFLL))
  {
LABEL_22:

    goto LABEL_23;
  }

  if ((v20 & 0x1000000000000000) == 0)
  {
    if ((v20 & 0x2000000000000000) != 0)
    {
      *&v62 = v21;
      *(&v62 + 1) = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v21 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v27 = 0;
            v48 = &v62 + 1;
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                break;
              }

              v50 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v50 + v49;
              if (__OFADD__(v50, v49))
              {
                break;
              }

              ++v48;
              if (!--v22)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_79:
        __break(1u);
      }

      if (v21 != 45)
      {
        if (v22)
        {
          v27 = 0;
          v53 = &v62;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              break;
            }

            v53 = (v53 + 1);
            if (!--v22)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v22)
      {
        if (--v22)
        {
          v27 = 0;
          v42 = &v62 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 - v43;
            if (__OFSUB__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v22)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v21 & 0x1000000000000000) != 0)
      {
        v25 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v25 = sub_21B34B6F4();
      }

      v26 = *v25;
      if (v26 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v27 = 0;
            if (v25)
            {
              v45 = v25 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  goto LABEL_69;
                }

                v47 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_69;
                }

                v27 = v47 + v46;
                if (__OFADD__(v47, v46))
                {
                  goto LABEL_69;
                }

                ++v45;
                if (!--v22)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_78;
      }

      if (v26 != 45)
      {
        if (v23)
        {
          v27 = 0;
          if (v25)
          {
            while (1)
            {
              v51 = *v25 - 48;
              if (v51 > 9)
              {
                goto LABEL_69;
              }

              v52 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_69;
              }

              v27 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                goto LABEL_69;
              }

              ++v25;
              if (!--v23)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v27 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_70;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v27 = 0;
          if (v25)
          {
            v28 = v25 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_69;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_69;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_69;
              }

              ++v28;
              if (!--v22)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v22) = 0;
LABEL_70:
          v61 = v22;
          v56 = v22;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v27 = sub_21B3411A0(v21, v20, 10);
  v56 = v57;
LABEL_71:

  if ((v56 & 1) == 0)
  {
    v31 = v3;
    v33 = v2;
    *a1 = v27;
    goto LABEL_27;
  }

LABEL_23:
  v31 = v3;
  *&v62 = 0;
  v32 = sub_21B34A934();
  if (!MEMORY[0x21CEED120](1, v32, &v62) && WORD1(v62))
  {
    *a1 = WORD1(v62);
  }

  v33 = v2;
LABEL_27:
  v34 = type metadata accessor for FormattingOptions();
  v35 = v34[11];
  sub_21B34A864();
  sub_21B2CFAF0();
  sub_21B34A634();
  v36 = v34[10];
  sub_21B34A864();
  sub_21B2CFB44();
  sub_21B34A674();
  v62 = xmmword_21B354DD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
  sub_21B34A694();
  v37 = v60;
  MEMORY[0x21CEECE60](v6, v60);
  (*(v31 + 8))(v6, v33);
  v38 = (*(v59 + 8))(v10, v37);
  v39 = a1 + v34[12];
  result = MEMORY[0x21CEECE20](v38);
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B33F0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v1, 0);
    v3 = v17;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_21B34AE74();
      v18 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_21B231F10((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v18;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
  v13 = sub_21B34AB74();
  v15 = v14;

  MEMORY[0x21CEED5E0](v13, v15);

  MEMORY[0x21CEED5E0](10196194, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  return 9934050;
}

uint64_t FormattingOptions.init(maximumLineWidth:maximumCellWidth:maximumRowCount:includesColumnTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_21B34A6A4();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v28);
  v17 = &v27 - v16;
  v18 = sub_21B34A874();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  *(a5 + 25) = 257;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  v20 = type metadata accessor for FormattingOptions();
  v21 = v20[11];
  sub_21B34A864();
  sub_21B2CFAF0();
  sub_21B34A634();
  v22 = v20[10];
  sub_21B34A864();
  sub_21B2CFB44();
  sub_21B34A674();
  v31 = xmmword_21B354DD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
  sub_21B34A694();
  v23 = v28;
  MEMORY[0x21CEECE60](v13, v28);
  (*(v29 + 8))(v13, v30);
  v24 = (*(v14 + 8))(v17, v23);
  v25 = a5 + v20[12];
  return MEMORY[0x21CEECE20](v24);
}

int64_t sub_21B33F588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_21B33F63C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_21B34B6F4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_21B3411A0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t FormattingOptions.floatingPointFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormattingOptions() + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21B33FAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FormattingOptions() + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_21B33FB70(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FormattingOptions() + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v6 = *(*(v5 - 8) + 24);

  return v6(a2 + v4, a1, v5);
}

uint64_t FormattingOptions.floatingPointFormatStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormattingOptions() + 40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*FormattingOptions.floatingPointFormatStyle.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(type metadata accessor for FormattingOptions() + 40);
  *(v5 + 8) = v11;
  (*(v8 + 16))(v10, v1 + v11, v6);
  return sub_21B341CC4;
}

uint64_t FormattingOptions.integerFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormattingOptions() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21B33FE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FormattingOptions() + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_21B33FEBC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FormattingOptions() + 44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v6 = *(*(v5 - 8) + 24);

  return v6(a2 + v4, a1, v5);
}

uint64_t FormattingOptions.integerFormatStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormattingOptions() + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*FormattingOptions.integerFormatStyle.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(type metadata accessor for FormattingOptions() + 44);
  *(v5 + 8) = v11;
  (*(v8 + 16))(v10, v1 + v11, v6);
  return sub_21B341CC4;
}

uint64_t FormattingOptions.dateFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormattingOptions() + 48);
  v4 = sub_21B34A784();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FormattingOptions.dateFormatStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormattingOptions() + 48);
  v4 = sub_21B34A784();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*FormattingOptions.dateFormatStyle.modify(void *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_21B34A784();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = *(type metadata accessor for FormattingOptions() + 48);
  *(v5 + 8) = v11;
  (*(v8 + 16))(v10, v1 + v11, v6);
  return sub_21B340304;
}

void sub_21B340308(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  (*(*(*a1 + 16) + 40))(**a1 + *(*a1 + 32), v2, *(*a1 + 8));
  free(v2);

  free(v1);
}

uint64_t FormattingOptions.locale.getter()
{
  v0 = *(type metadata accessor for FormattingOptions() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  return sub_21B34A614();
}

uint64_t sub_21B3403BC()
{
  v0 = *(type metadata accessor for FormattingOptions() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  return sub_21B34A614();
}

uint64_t sub_21B340414(uint64_t a1)
{
  v2 = sub_21B34A874();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return FormattingOptions.locale.setter(v5);
}

uint64_t FormattingOptions.locale.setter(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v4 = sub_21B34A784();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v42 = *(v45 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_21B34A874();
  v44 = *(v14 - 8);
  v15 = v44;
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + 16);
  v20 = a1;
  v22 = v21;
  v19(v18, v20);
  v39 = v19;
  v23 = type metadata accessor for FormattingOptions();
  v24 = *(v23 + 44);
  v40 = v23;
  (*(v10 + 16))(v13, v2 + v24, v9);
  sub_21B34A624();
  (*(v10 + 40))(v2 + v24, v13, v9);
  v25 = v41;
  (v19)(v18, v41, v22);
  v26 = *(v23 + 40);
  v27 = v42;
  v28 = v43;
  v29 = v45;
  (*(v42 + 16))(v43, v2 + v26, v45);
  sub_21B34A664();
  v30 = v2;
  (*(v27 + 40))(v2 + v26, v28, v29);
  v31 = v22;
  v39(v18, v25, v22);
  v32 = *(v40 + 48);
  v34 = v47;
  v33 = v48;
  v35 = v30 + v32;
  v36 = v30;
  v37 = v46;
  (*(v47 + 16))(v46, v35, v48);
  sub_21B34A774();
  (*(v44 + 8))(v25, v31);
  return (*(v34 + 40))(v36 + v32, v37, v33);
}

void (*FormattingOptions.locale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_21B34A874();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = *(type metadata accessor for FormattingOptions() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  sub_21B34A614();
  return sub_21B3409DC;
}

void sub_21B3409DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    FormattingOptions.locale.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    FormattingOptions.locale.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t FormattingOptions.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v4 = sub_21B34A784();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v45 = *(v48 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v40 - v11;
  v13 = sub_21B34A874();
  v46 = *(v13 - 8);
  v14 = v46;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormattingOptions.init()(a2);
  v18 = *(v14 + 16);
  v19 = a1;
  v20 = v13;
  v18(v17, v19, v13);
  v41 = v18;
  v21 = type metadata accessor for FormattingOptions();
  v22 = *(v21 + 44);
  v42 = v21;
  v23 = a2 + v22;
  v24 = a2;
  v25 = v44;
  (*(v9 + 16))(v12, v23, v44);
  sub_21B34A624();
  (*(v9 + 40))(v24 + v22, v12, v25);
  v26 = v43;
  v18(v17, v43, v20);
  v27 = *(v21 + 40);
  v28 = v45;
  v30 = v47;
  v29 = v48;
  (*(v45 + 16))(v47, v24 + v27, v48);
  sub_21B34A664();
  v31 = v24;
  (*(v28 + 40))(v24 + v27, v30, v29);
  v32 = v20;
  v41(v17, v26, v20);
  v33 = *(v42 + 48);
  v35 = v50;
  v34 = v51;
  v36 = v31 + v33;
  v37 = v31;
  v38 = v49;
  (*(v50 + 16))(v49, v36, v51);
  sub_21B34A774();
  (*(v46 + 8))(v26, v32);
  return (*(v35 + 40))(v37 + v33, v38, v34);
}

uint64_t sub_21B340E7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_21B231F10(0, v7, 0);
    if (v6[2] < 2uLL)
    {
      goto LABEL_14;
    }

    v9 = v33;
    v10 = (a2 + 32);
    v11 = v6[6];
    v12 = v6[7];
    do
    {
      v13 = *v10++;

      result = sub_21B34AE74();
      v34 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        v30 = result;
        v18 = v14;
        sub_21B231F10((v15 > 1), v16 + 1, 1);
        v14 = v18;
        result = v30;
        v9 = v34;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = result;
      *(v17 + 40) = v14;
      --v7;
    }

    while (v7);
  }

  v19 = v6[2];
  if (v19 < 3)
  {
    __break(1u);
  }

  else
  {
    v21 = v6[8];
    v20 = v6[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
    v22 = sub_21B34AB74();
    v24 = v23;

    if (a5)
    {

      v25 = sub_21B34AE74();
      v27 = v26;

      MEMORY[0x21CEED5E0](v25, v27);

      MEMORY[0x21CEED5E0](v21, v20);
    }

    v31 = v6[4];
    v32 = v6[5];
    swift_bridgeObjectRetain_n();
    MEMORY[0x21CEED5E0](v22, v24);

    if (v19 != 3)
    {
      v29 = v6[10];
      v28 = v6[11];

      MEMORY[0x21CEED5E0](v29, v28);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      return v31;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FormattingOptions()
{
  result = qword_280C83AF0;
  if (!qword_280C83AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *sub_21B3411A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21B34AEA4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21B2E1664();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21B34B6F4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_21B341754()
{
  sub_21B341884(319, qword_280C83968, sub_21B2CFB44, MEMORY[0x277D839F8], MEMORY[0x277CC9160]);
  if (v0 <= 0x3F)
  {
    sub_21B341884(319, qword_27CD7F778, sub_21B2CFAF0, MEMORY[0x277D83B88], MEMORY[0x277CC8CD0]);
    if (v1 <= 0x3F)
    {
      sub_21B34A784();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21B341884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

int64_t sub_21B3418EC(int64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(result + 8 * a2);
    v5 = a2 + 1;
    if (a2 + 1 == v3)
    {
      return v4;
    }

    if (a2 + 1 < v3)
    {
      v6 = v3 + ~a2;
      if (v6 < 4)
      {
        goto LABEL_10;
      }

      v5 += v6 & 0xFFFFFFFFFFFFFFFCLL;
      v7 = vdupq_n_s64(v4);
      v8 = (result + 8 * a2 + 24);
      v9 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = v7;
      do
      {
        v7 = vbslq_s8(vcgtq_s64(v7, v8[-1]), v7, v8[-1]);
        v10 = vbslq_s8(vcgtq_s64(v10, *v8), v10, *v8);
        v8 += 2;
        v9 -= 4;
      }

      while (v9);
      v11 = vbslq_s8(vcgtq_s64(v7, v10), v7, v10);
      v12 = vextq_s8(v11, v11, 8uLL).u64[0];
      v4 = vbsl_s8(vcgtd_s64(v11.i64[0], v12), *v11.i8, v12);
      if (v6 != (v6 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v13 = v3 - v5;
        v14 = (result + 8 * v5);
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (v4 <= v16)
          {
            v4 = v15;
          }

          --v13;
        }

        while (v13);
      }

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B3419B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v39 = sub_21B2A0B58();
  v12 = *(a5 + 16);
  if (v12)
  {
    v35 = a1;
    v36 = a2;
    v37 = a3;
    v38 = a4;
    v40 = MEMORY[0x277D84F90];
    sub_21B254034(0, v12, 0);
    a1 = 0;
    v13 = v40;
    a3 = a5 + 32;
    do
    {
      v14 = (a3 + 16 * a1);
      v15 = *v14;
      v16 = v14[1];
      swift_bridgeObjectRetain_n();
      a2 = 0;
      while (1)
      {
        v17 = sub_21B34AE14();
        if (!v18)
        {
          break;
        }

        v19 = v18;
        a4 = sub_21B2A0BE0(v17, v18);

        v21 = __OFADD__(a2, a4);
        a2 += a4;
        if (v21)
        {
          __break(1u);
          goto LABEL_16;
        }
      }

      v23 = *(v40 + 16);
      v22 = *(v40 + 24);
      v16 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_21B254034((v22 > 1), v23 + 1, 1);
      }

      ++a1;
      *(v40 + 16) = v16;
      *(v40 + 8 * v23 + 32) = a2;
    }

    while (a1 != v12);
    a3 = v37;
    a4 = v38;
    a1 = v35;
    a2 = v36;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    v16 = *(MEMORY[0x277D84F90] + 16);
    if (!v16)
    {
      v19 = 0;
      goto LABEL_25;
    }
  }

  v19 = *(v13 + 32);
  v20 = v16 - 1;
  if (v16 == 1)
  {
    goto LABEL_25;
  }

  if (v16 >= 5)
  {
LABEL_16:
    v24 = v20 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v25 = vdupq_n_s64(v19);
    v26 = (v13 + 56);
    v27 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v25;
    do
    {
      v25 = vbslq_s8(vcgtq_s64(v25, v26[-1]), v25, v26[-1]);
      v28 = vbslq_s8(vcgtq_s64(v28, *v26), v28, *v26);
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    v29 = vbslq_s8(vcgtq_s64(v25, v28), v25, v28);
    v30 = vextq_s8(v29, v29, 8uLL).u64[0];
    v19 = vbsl_s8(vcgtd_s64(v29.i64[0], v30), *v29.i8, v30);
    if (v20 == (v20 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v24 = 1;
  }

  v31 = v16 - v24;
  v32 = 8 * v24 + 32;
  do
  {
    if (v19 <= *(v13 + v32))
    {
      v19 = *(v13 + v32);
    }

    v32 += 8;
    --v31;
  }

  while (v31);
LABEL_25:

  if (v19 <= v39)
  {
    v19 = v39;
  }

  result = sub_21B2A0B58();
  if (result <= v19)
  {
    v34 = v19;
  }

  else
  {
    v34 = result;
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = v34;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21B341C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21B341C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B341CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_21B34214C(a1, a2, v3[4], MEMORY[0x277D843C0], a3);
}

uint64_t sub_21B341D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_21B34214C(a1, a2, v3[4], MEMORY[0x277D843C8], a3);
}

uint64_t sub_21B341D90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_21B3424A8(a1, *(v1 + 40));
}

uint64_t static OptionalColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  return sub_21B341EB0(a1, a2, a3, a4, sub_21B341DE8, sub_21B3434B0, 42, a5);
}

{
  v16 = 0;
  v17 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  v10 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v10);

  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B342E38, v12, a2, a3, a5, *(a4 + 8));
}

uint64_t sub_21B341DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_21B34214C(a1, a2, v3[4], MEMORY[0x277D83C18], a3);
}

uint64_t static OptionalColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  return sub_21B341EB0(a1, a2, a3, a4, sub_21B341E4C, sub_21B3434B0, 47, a5);
}

{
  return sub_21B341EB0(a1, a2, a3, a4, sub_21B342474, sub_21B342550, 47, a5);
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  v10 = *(a4 + 8);
  sub_21B34B9D4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v11);

  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B3430D4, v13, a2, a3, a5, *(*(a4 + 24) + 8));
}

{
  v16 = 0;
  v17 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v10 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v10);

  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B3433EC, v12, a2, a3, a5, *(*(*(a4 + 16) + 8) + 8));
}

uint64_t sub_21B341E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_21B34214C(a1, a2, v3[4], MEMORY[0x277D83F38], a3);
}

uint64_t sub_21B341EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(char *, char *)@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v35 = a7;
  v34 = a6;
  v32 = a5;
  v33 = a1;
  v36 = a8;
  v11 = *(a3 + 8);
  v12 = *(*(*(v11 + 8) + 8) + 8);
  v47 = a2;
  v48 = a2;
  v49 = v12;
  v50 = v12;
  v13 = sub_21B34B674();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  sub_21B34BA54();
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = v32;
  v42 = &v43;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_21B34B474();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_21B23CCA8(v34, v37, v13, v19, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);
  (*(v14 + 8))(v17, v13);
  v23 = *(v11 + 16);
  v47 = v23(a2, v11);
  v48 = v24;
  MEMORY[0x21CEED5E0](v35, 0xE100000000000000);
  v25 = v23(a2, v11);
  MEMORY[0x21CEED5E0](v25);

  v26 = v47;
  v27 = v48;
  v47 = v22;
  v28 = sub_21B34B054();
  v29 = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v26, v27, &v47, AssociatedTypeWitness, v28, v29, v36);
}

uint64_t sub_21B34214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void (*a4)(char *, char *, uint64_t, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21B34B474();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v33 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v37 = v9;
  v38 = &v31 - v21;
  v22 = *(v9 + 16);
  v22(v16, a1, v8);
  v23 = *(v17 + 48);
  if (v23(v16, 1, AssociatedTypeWitness) == 1)
  {
    v13 = v16;
  }

  else
  {
    v32 = a5;
    v24 = v16;
    v25 = *(v17 + 32);
    v25(v38, v24, AssociatedTypeWitness);
    v22(v13, v36, v8);
    if (v23(v13, 1, AssociatedTypeWitness) != 1)
    {
      v27 = v33;
      v25(v33, v13, AssociatedTypeWitness);
      a5 = v32;
      v28 = v38;
      v35(v38, v27, AssociatedTypeWitness, v34);
      v29 = *(v17 + 8);
      v29(v27, AssociatedTypeWitness);
      v29(v28, AssociatedTypeWitness);
      v26 = 0;
      return (*(v17 + 56))(a5, v26, 1, AssociatedTypeWitness);
    }

    (*(v17 + 8))(v38, AssociatedTypeWitness);
    a5 = v32;
  }

  (*(v37 + 8))(v13, v8);
  v26 = 1;
  return (*(v17 + 56))(a5, v26, 1, AssociatedTypeWitness);
}

uint64_t sub_21B342474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_21B34214C(a1, a2, v3[4], MEMORY[0x277D83550], a3);
}

uint64_t sub_21B3424A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  sub_21B34B474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B342568@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a9;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_21B34B474();
  v21 = sub_21B2FCC28(sub_21B343480, v20, a6, v15, MEMORY[0x277D84A98], *(*(*(a7 + 8) + 8) + 8), MEMORY[0x277D84AC0], v16);
  v17 = sub_21B34B054();

  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(a2, a3, &v21, AssociatedTypeWitness, v17, WitnessTable, a8);
}

uint64_t sub_21B3426A0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v21 - v17;
  (*(v10 + 16))(v14, a1, v9);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v19 = 1;
  }

  else
  {
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
    v22(v18, a4);
    (*(v15 + 8))(v18, AssociatedTypeWitness);
    v19 = 0;
  }

  return (*(v15 + 56))(a5, v19, 1, AssociatedTypeWitness);
}

uint64_t sub_21B34294C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v20 = 0;
  v21 = 0xE000000000000000;
  v14 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v14);

  MEMORY[0x21CEED5E0](a5, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, a6, v16, a2, a3, a7, a4);
}

uint64_t sub_21B342AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v20 = 0;
  v21 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](a5, 0xE100000000000000);
  v14 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v14);

  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, a6, v16, a2, a3, a7, a4);
}

uint64_t static OptionalColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v16 = 0;
  v17 = 0xE000000000000000;
  v10 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v10);

  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B3434AC, v12, a2, a3, a5, *(a4 + 8));
}

uint64_t static OptionalColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v10 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v10);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  v11 = *(a4 + 8);
  sub_21B34B9D4();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B342F88, v13, a2, a3, a5, *(*(a4 + 24) + 8));
}

{
  v16 = 0;
  v17 = 0xE000000000000000;
  v10 = (*(*(a3 + 8) + 16))(a2);
  MEMORY[0x21CEED5E0](v10);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_21B342568(a1, 0, 0xE000000000000000, sub_21B343224, v12, a2, a3, a5, *(*(*(a4 + 16) + 8) + 8));
}

uint64_t sub_21B34323C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  swift_getAssociatedTypeWitness();
  return a3(a1, a2);
}

uint64_t sub_21B343404(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  swift_getAssociatedTypeWitness();
  return a3(a2, a1);
}

uint64_t sub_21B343480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_21B3426A0(a1, *(v2 + 40), *(v2 + 48), *(v2 + 56), a2);
}

uint64_t sub_21B3434C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B34351C(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  if (a4 <= 0.0 || a4 >= 1.0)
  {
    goto LABEL_70;
  }

  v72 = *v4;
  v8 = *(v4 + 2);
  v73 = v8;
  v70 = *(v4 + 24);
  v71 = *(v4 + 40);
  v9 = v71;
  v63 = v72;
  sub_21B2A62E0(&v72, &v74);
  v10 = v70;
  if (v71)
  {
    if (v71 == 1 && *(v70 + 16))
    {
      v10 = *(v70 + 32);
    }

    else
    {
      sub_21B2A6400(v70, *(&v70 + 1), v71);
      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = v11;
      }
    }
  }

  sub_21B2A6400(v70, *(&v70 + 1), v71);
  v74 = v63;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v75 = v8;
  v76 = v70;
  v77 = v71;
  v78 = v10;
  v79 = v15;
  sub_21B2A62E0(&v72, &v65);
  sub_21B2A62E0(&v72, &v65);
  sub_21B2A633C(&v70, &v65);
  v16 = sub_21B2640C4(&v74);
  sub_21B2803D4(&v74);
  v62 = v16;
  v17 = *(v16 + 16);
  v18 = v17 * a4;
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v19 = v18;
  v20 = MEMORY[0x277D84FA0];
  v69 = MEMORY[0x277D84FA0];
  v9 = v62;

  v22 = sub_21B25EF30(v21);

  v68 = v22;
  if (v19 < 1)
  {
LABEL_40:

    v66 = 0uLL;
    v67 = 2;
    v40 = *(v20 + 16);
    if (v40)
    {
      v41 = sub_21B2642A8(*(v20 + 16), 0);
      v42 = sub_21B26566C(&v65, v41 + 4, v40, v20);

      sub_21B26139C();
      if (v42 == v40)
      {
        goto LABEL_44;
      }

      __break(1u);
    }

    v41 = MEMORY[0x277D84F90];
LABEL_44:
    v65 = v41;
    v9 = 0;
    sub_21B264924(&v65);

    v43 = *(v65 + 2);
    if (v43)
    {
      v44 = v65 + 32;
      while (1)
      {
        v46 = *v44;
        v44 += 8;
        v45 = v46;
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v47 < v45)
        {
          goto LABEL_63;
        }

        sub_21B248A60(v45, v47);
        if (!--v43)
        {
          goto LABEL_49;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_49:

    v48 = v68;
    v49 = *(v68 + 16);
    if (v49)
    {
      v50 = sub_21B2642A8(*(v68 + 16), 0);
      v51 = sub_21B26566C(&v65, v50 + 4, v49, v48);

      sub_21B26139C();
      if (v51 == v49)
      {
LABEL_53:
        v65 = v50;
        sub_21B264924(&v65);

        v9 = v65;
        v52 = *(v65 + 2);
        if (!v52)
        {
LABEL_58:

          v57 = v67;
          v58 = v72;
          *a1 = v72;
          v59 = v73;
          *(a1 + 16) = v73;
          *(a1 + 24) = v66;
          *(a1 + 40) = v57;
          *a2 = v58;
          *(a2 + 16) = v59;
          *(a2 + 24) = 0uLL;
          *(a2 + 40) = 2;
          return result;
        }

        v53 = 32;
        while (1)
        {
          v54 = *(v9 + v53);
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_64;
          }

          if (v55 < v54)
          {
            goto LABEL_65;
          }

          sub_21B248A60(v54, v55);
          v53 += 8;
          if (!--v52)
          {
            goto LABEL_58;
          }
        }
      }

      __break(1u);
    }

    v50 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  if (v17)
  {
    v23 = *a3;
    v64 = v62 + 32;
    v24 = -v17 % v17;
LABEL_23:
    v9 = v20 + 56;
    while (1)
    {
      sub_21B262EB0();
      v26 = (v25 * v17) >> 64;
      if (v17 > v25 * v17 && v24 > v25 * v17)
      {
        break;
      }

LABEL_33:
      if (v26 >= *(v62 + 16))
      {
        goto LABEL_61;
      }

      v33 = *(v64 + 8 * v26);
      if (!*(v20 + 16) || (v34 = *(v20 + 40), v35 = *(v64 + 8 * v26), v36 = sub_21B34BBB4(), v37 = -1 << *(v20 + 32), v38 = v36 & ~v37, ((*(v9 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0))
      {
LABEL_22:
        sub_21B254588(&v65, v33);
        sub_21B2644EC(*(v64 + 8 * v26));
        v20 = v69;
        if (*(v69 + 16) >= v19)
        {
          goto LABEL_40;
        }

        goto LABEL_23;
      }

      v39 = ~v37;
      while (*(*(v20 + 48) + 8 * v38) != v33)
      {
        v38 = (v38 + 1) & v39;
        if (((*(v9 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v27 = *(v23 + 128);
    while (1)
    {
      if (v27 == 624)
      {
        sub_21B262BA0();
        v27 = *(v23 + 128);
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        break;
      }

      v28 = *(v23 + 120);
      if (v27 >= *(v28 + 16))
      {
        goto LABEL_60;
      }

      v29 = v28 + 8 * v27++;
      v30 = (*(v29 + 32) >> 29) & 0x5555555555555555 ^ *(v29 + 32);
      v31 = (((v30 << 17) & 0x71D67FFFEDA60000 ^ v30) << 37) & 0xFFF7EEE000000000 ^ (v30 << 17) & 0x71D67FFFEDA60000 ^ v30;
      v32 = v31 ^ (v31 >> 43);
      *(v23 + 128) = v27;
      if (v24 <= v32 * v17)
      {
        v26 = (v32 * v17) >> 64;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_69:
  __break(1u);
  MEMORY[0x21CEEE840](v9);

  __break(1u);
LABEL_70:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B343AF4(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0 || a3 >= 1.0)
  {
    goto LABEL_63;
  }

  v62 = *v3;
  v6 = *(v3 + 2);
  v63 = v6;
  v60 = *(v3 + 24);
  v7 = *(v3 + 40);
  v61 = v7;
  v54 = v62;
  sub_21B2A62E0(&v62, &v64);
  v8 = v60;
  if (v7)
  {
    if (v7 == 1 && *(v60 + 16))
    {
      v8 = *(v60 + 32);
    }

    else
    {
      sub_21B2A6400(v60, *(&v60 + 1), v7);
      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9;
      }
    }
  }

  sub_21B2A6400(v60, *(&v60 + 1), v7);
  v64 = v54;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v65 = v6;
  v66 = v60;
  v67 = v7;
  v68 = v8;
  v69 = v13;
  sub_21B2A62E0(&v62, &v55);
  sub_21B2A62E0(&v62, &v55);
  sub_21B2A633C(&v60, &v55);
  v14 = sub_21B2640C4(&v64);
  sub_21B2803D4(&v64);
  v15 = *(v14 + 16);
  v16 = v15 * a3;
  if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v17 = v16;
  v18 = MEMORY[0x277D84FA0];
  v59 = MEMORY[0x277D84FA0];

  v20 = sub_21B25EF30(v19);

  v58 = v20;
  if (v17 < 1)
  {
LABEL_35:

    v56 = 0uLL;
    v57 = 2;
    v32 = *(v18 + 16);
    if (v32)
    {
      v33 = sub_21B2642A8(*(v18 + 16), 0);
      v34 = sub_21B26566C(&v55, v33 + 4, v32, v18);

      sub_21B26139C();
      if (v34 == v32)
      {
        goto LABEL_39;
      }

      __break(1u);
    }

    v33 = MEMORY[0x277D84F90];
LABEL_39:
    v55 = v33;
    v14 = 0;
    sub_21B264924(&v55);

    v35 = *(v55 + 16);
    if (v35)
    {
      v36 = (v55 + 32);
      while (1)
      {
        v38 = *v36;
        v36 += 8;
        v37 = v38;
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 < v37)
        {
          goto LABEL_56;
        }

        sub_21B248A60(v37, v39);
        if (!--v35)
        {
          goto LABEL_44;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_44:

    v40 = v58;
    v41 = *(v58 + 16);
    if (v41)
    {
      v42 = sub_21B2642A8(*(v58 + 16), 0);
      v43 = sub_21B26566C(&v55, v42 + 4, v41, v40);

      sub_21B26139C();
      if (v43 == v41)
      {
LABEL_48:
        v55 = v42;
        sub_21B264924(&v55);

        v14 = v55;
        v44 = *(v55 + 16);
        if (!v44)
        {
LABEL_53:

          v49 = v57;
          v50 = v62;
          *a1 = v62;
          v51 = v63;
          *(a1 + 16) = v63;
          *(a1 + 24) = v56;
          *(a1 + 40) = v49;
          *a2 = v50;
          *(a2 + 16) = v51;
          *(a2 + 24) = 0uLL;
          *(a2 + 40) = 2;
          return result;
        }

        v45 = 32;
        while (1)
        {
          v46 = *(v14 + v45);
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_57;
          }

          if (v47 < v46)
          {
            goto LABEL_58;
          }

          sub_21B248A60(v46, v47);
          v45 += 8;
          if (!--v44)
          {
            goto LABEL_53;
          }
        }
      }

      __break(1u);
    }

    v42 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  if (v15)
  {
    v21 = v14 + 32;
    v22 = -v15 % v15;
LABEL_23:
    v23 = v18 + 56;
    while (1)
    {
      v55 = 0;
      MEMORY[0x21CEEEA50](&v55, 8);
      v24 = (v55 * v15) >> 64;
      if (v15 > v55 * v15 && v22 > v55 * v15)
      {
        do
        {
          v55 = 0;
          MEMORY[0x21CEEEA50](&v55, 8);
        }

        while (v22 > v55 * v15);
        v24 = (v55 * v15) >> 64;
      }

      if (v24 >= *(v14 + 16))
      {
        break;
      }

      v25 = *(v21 + 8 * v24);
      if (!*(v18 + 16) || (v26 = *(v18 + 40), v27 = *(v21 + 8 * v24), v28 = sub_21B34BBB4(), v29 = -1 << *(v18 + 32), v30 = v28 & ~v29, ((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
      {
LABEL_22:
        sub_21B254588(&v55, v25);
        sub_21B2644EC(*(v21 + 8 * v24));
        v18 = v59;
        if (*(v59 + 16) >= v17)
        {
          goto LABEL_35;
        }

        goto LABEL_23;
      }

      v31 = ~v29;
      while (*(*(v18 + 48) + 8 * v30) != v25)
      {
        v30 = (v30 + 1) & v31;
        if (((*(v23 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_62:
  __break(1u);
  MEMORY[0x21CEEE840](v14);

  __break(1u);
LABEL_63:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B344048(uint64_t a1)
{
  sub_21B3440E4(a1, v6);
  v1 = v6[3];
  v2 = v6[4];
  v3 = v7;
  v4 = DataFrame.Slice.columns.getter();

  sub_21B23A9F4(v1, v2, v3);
  return v4;
}

double sub_21B3440E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v15 - v7;
  v17 = *v2;
  sub_21B34B054();
  swift_getWitnessTable();
  if (sub_21B34B2B4())
  {
    v16 = vdupq_n_s64(MEMORY[0x277D84F90]);
    v9 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    v10 = 0uLL;
    v11 = 2;
  }

  else
  {
    sub_21B34B094();
    v12 = &v8[*(TupleTypeMetadata2 + 48)];
    v13 = *v12;
    v9 = *(v12 + 2);
    v15 = *(v12 + 24);
    v16 = v13;
    v11 = v12[40];
    (*(*(v4 - 8) + 8))(v8, v4);
    v10 = v15;
  }

  result = *v16.i64;
  *a2 = v16;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 40) = v11;
  return result;
}

uint64_t sub_21B34426C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B3440E4(a3, &v7);
  sub_21B23A9F4(v8, v9, v10);
  v5 = sub_21B23AC94(a1, a2);

  return v5;
}

uint64_t sub_21B3442FC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormattingOptions();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1[2] - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_21B34B474();
  v88 = *(v84 - 8);
  v13 = *(v88 + 64);
  v14 = MEMORY[0x28223BE20](v84);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v82 = &v70 - v18;
  v19 = a1[3];
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1[1];
  v25 = v1[2];
  v24(v21);
  v26 = *v2;
  v27 = sub_21B34B004();
  v28 = a1[5];
  v29 = *(v28 + 24);
  v85 = v23;
  v86 = v19;
  v29(v27, v19, v28);
  v98 = 1937207154;
  v99 = 0xE400000000000000;
  sub_21B234EF8(MEMORY[0x277D84F90]);
  v100 = v30;
  sub_21B2351E8(v27);
  v31 = 0;
  v87 = TupleTypeMetadata2 - 8;
  v83 = (v88 + 32);
  v75 = (v8 + 32);
  v81 = v28;
  v74 = v28 + 32;
  v73 = (v8 + 8);
  v78 = TupleTypeMetadata2;
  v77 = v16;
  v76 = v26;
  while (1)
  {
    if (v31 == sub_21B34B004())
    {
      v32 = *(TupleTypeMetadata2 - 8);
      (*(v32 + 56))(v16, 1, 1, TupleTypeMetadata2);
      goto LABEL_7;
    }

    v33 = sub_21B34AFF4();
    sub_21B34AFA4();
    if (v33)
    {
      v34 = *(TupleTypeMetadata2 - 8);
      (*(v34 + 16))(v16, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, TupleTypeMetadata2);
      v35 = __OFADD__(v31++, 1);
      if (v35)
      {
        break;
      }

      goto LABEL_6;
    }

    result = sub_21B34B684();
    v34 = *(TupleTypeMetadata2 - 8);
    if (*(v34 + 64) != 8)
    {
      goto LABEL_27;
    }

    v89 = result;
    (*(v34 + 16))(v16, &v89, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v35 = __OFADD__(v31++, 1);
    if (v35)
    {
      break;
    }

LABEL_6:
    v32 = v34;
    (*(v34 + 56))(v16, 0, 1, TupleTypeMetadata2);
LABEL_7:
    v36 = v82;
    (*v83)(v82, v16, v84);
    if ((*(v32 + 48))(v36, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_13;
    }

    v37 = &v36[*(TupleTypeMetadata2 + 48)];
    v39 = *v37;
    v38 = *(v37 + 1);
    v40 = *(v37 + 2);
    v41 = *(v37 + 3);
    v42 = *(v37 + 4);
    v43 = *v75;
    v44 = v37[40];
    v88 = v31;
    v45 = v79;
    v46 = v80;
    v43(v79, v36, v80);
    (*(v81 + 32))(v45, v86);
    v47 = sub_21B2FB1D4(v41, v42, v44);
    v89 = v39;
    v90 = v38;
    v91 = v40;
    v92 = v41;
    v93 = v42;
    v94 = v44;
    DataFrame.Slice.columns.getter();

    v48 = v41;
    v16 = v77;
    v49 = v44;
    v26 = v76;
    sub_21B23A9F4(v48, v42, v49);

    sub_21B235528(v47, 0);
    v50 = v45;
    v31 = v88;
    v51 = v46;
    TupleTypeMetadata2 = v78;
    (*v73)(v50, v51);
  }

  __break(1u);
LABEL_13:
  v95 = MEMORY[0x277D84F90];
  v96 = MEMORY[0x277D84F90];
  v97 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  result = (*(v81 + 40))(&v95, 1, v86);
  v53 = v95;
  v54 = v95 + 32;
  v55 = -*(v95 + 16);
  v56 = -1;
  while (1)
  {
    if (v55 + v56 == -1)
    {
      v63 = v98;
      v62 = v99;
      goto LABEL_25;
    }

    if (++v56 >= *(v53 + 16))
    {
      break;
    }

    sub_21B233A74(v54, &v89);
    v58 = v92;
    v57 = v93;
    __swift_project_boxed_opaque_existential_1(&v89, v92);
    if ((*(v57[1] + 1))(v58) == 1937207154 && v59 == 0xE400000000000000)
    {

      sub_21B233960(&v89);
LABEL_24:
      v63 = 0x73776F725FLL;
      v62 = 0xE500000000000000;
LABEL_25:
      v64 = v100;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
      v93 = &off_282CAA128;
      v89 = v63;
      v90 = v62;
      v91 = v64;

      DataFrame.append(column:)(&v89);
      sub_21B233960(&v89);
      v65 = v95;
      v66 = v96;
      v67 = v97;
      v68 = v72;
      FormattingOptions.init()(v72);
      v69 = sub_21B2C6E78(v68, v65, v66, v67);

      sub_21B2B42B0(v68);
      (*(v71 + 8))(v85, v86);

      return v69;
    }

    v54 += 40;
    v61 = sub_21B34B9F4();

    result = sub_21B233960(&v89);
    if (v61)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21B344B58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a8 - 8) + 16))(a1, a3, a8);
  (*(a13 + 24))(v34, a10, a13);
  v17 = v34[0];
  v18 = v34[1];
  v19 = v34[2];
  if (!*(v34[0] + 16))
  {

    goto LABEL_6;
  }

  v30 = a4;
  v20 = a6;
  sub_21B233A74(v34[0] + 32, v31);
  v21 = v32;
  v22 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v23 = *(v22 + 8);
  v24 = *(v23 + 48);

  v25 = v24(v21, v23);
  result = sub_21B233960(v31);
  if ((v25 & 0x8000000000000000) == 0)
  {
    a6 = v20;
    a4 = v30;
    if (v25)
    {
      v27 = 0;
LABEL_7:
      sub_21B254074(0, v25, v27);

      sub_21B23A9F4(0, v25, v27);
      result = sub_21B248CCC(a4, a5, a6, 0, v25, v27);
      *a2 = v17;
      *(a2 + 8) = v18;
      *(a2 + 16) = v19;
      *(a2 + 24) = result;
      *(a2 + 32) = v28;
      *(a2 + 40) = v29;
      return result;
    }

LABEL_6:
    v25 = 0;
    v27 = 2;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B344D24@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  v6 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, v7, v8, v9);
}

double sub_21B344E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*(a5 - 8) + 16))(a1, a3, a5);
  (*(a10 + 24))(&v22, a7, a10);
  v13 = v23;
  (*(a10 + 32))(&v18, a7, a10);
  v14 = v19;
  v15 = v20;
  v16 = v21;
  sub_21B254074(v19, v20, v21);

  sub_21B23A9F4(v14, v15, v16);
  result = *&v22;
  *a2 = v22;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

Swift::Int sub_21B344F20@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v67 = a3;
  v84 = *(a2[2] - 8);
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](a1);
  v74 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = sub_21B34B474();
  v78 = *(v79 - 8);
  v10 = *(v78 + 64);
  v11 = MEMORY[0x28223BE20](v79);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v77 = &v64[-v15];
  v16 = a2[3];
  v66 = *(v16 - 8);
  v17 = *(v66 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = *a1;
  v80 = *v3;
  v20 = sub_21B34B004();
  v21 = v3[1];
  v22 = v3[2];
  v21();
  v23 = a2[5];
  v24 = *(v23 + 24);
  v81 = v19;
  v82 = v16;
  v24(v20, v16, v23);
  v91 = 0x746E756F63;
  v92 = 0xE500000000000000;
  *v86 = 0x746E756F63;
  *&v86[8] = 0xE500000000000000;
  v25 = MEMORY[0x277D84F90];
  sub_21B234EF8(MEMORY[0x277D84F90]);
  *&v86[16] = v26;
  sub_21B2351E8(0);
  *v86 = 0x746E756F63;
  *&v86[8] = 0xE500000000000000;
  sub_21B234EF8(v25);
  *&v86[16] = v27;
  sub_21B2351E8(v20);
  v28 = *v86;

  v29 = 0;
  v93 = v28;
  v83 = TupleTypeMetadata2 - 8;
  v68 = *&v86[8];
  v94 = *&v86[8];
  v78 += 32;
  v71 = (v84 + 32);
  v76 = v23;
  v70 = v23 + 32;
  v69 = (v84 + 8);
  v73 = TupleTypeMetadata2;
  v72 = v13;
  while (1)
  {
    v30 = v80;
    if (v29 == sub_21B34B004())
    {
      v31 = *(TupleTypeMetadata2 - 8);
      (*(v31 + 56))(v13, 1, 1, TupleTypeMetadata2);
      goto LABEL_7;
    }

    v32 = sub_21B34AFF4();
    sub_21B34AFA4();
    if ((v32 & 1) == 0)
    {
      break;
    }

    v33 = *(TupleTypeMetadata2 - 8);
    (*(v33 + 16))(v13, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, TupleTypeMetadata2);
    v34 = __OFADD__(v29++, 1);
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_6:
    v31 = v33;
    (*(v33 + 56))(v13, 0, 1, TupleTypeMetadata2);
LABEL_7:
    v35 = v77;
    (*v78)(v77, v13, v79);
    if ((*(v31 + 48))(v35, 1, TupleTypeMetadata2) == 1)
    {
      goto LABEL_13;
    }

    v36 = &v35[*(TupleTypeMetadata2 + 48)];
    v37 = *v36;
    v38 = *(v36 + 1);
    v84 = v29;
    v39 = *(v36 + 2);
    v40 = *(v36 + 3);
    v41 = *(v36 + 4);
    v42 = v36[40];
    v43 = v74;
    v44 = v75;
    (*v71)(v74, v35, v75);
    (*(v76 + 32))(v43, v82);

    sub_21B254074(v40, v41, v42);

    sub_21B23A9F4(v40, v41, v42);
    v45 = sub_21B2FB1D4(v40, v41, v42);
    v29 = v84;

    v46 = v40;
    v13 = v72;
    sub_21B23A9F4(v46, v41, v42);
    sub_21B235528(v45, 0);
    v47 = v44;
    TupleTypeMetadata2 = v73;
    (*v69)(v43, v47);
  }

  v48.value = sub_21B34B684();
  v33 = *(TupleTypeMetadata2 - 8);
  if (*(v33 + 64) != 8)
  {
    goto LABEL_25;
  }

  *v86 = v48.value;
  (*(v33 + 16))(v13, v86, TupleTypeMetadata2);
  swift_unknownObjectRelease();
  v34 = __OFADD__(v29++, 1);
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  *&v89 = MEMORY[0x277D84F90];
  *(&v89 + 1) = MEMORY[0x277D84F90];
  v90 = sub_21B25DC2C(MEMORY[0x277D84F90]);
  (*(v76 + 40))(&v89, 0, v82);

  v49 = 0x746E756F63;
  v93 = 0x746E756F63;
  *&v94 = 0xE500000000000000;
  v50 = v89;
  v51 = v90;
  *v86 = v89;
  *&v86[16] = v90;

  v52._countAndFlagsBits = 0x746E756F63;
  v52._object = 0xE500000000000000;
  v95 = DataFrame.indexOfColumn(_:)(v52);
  is_nil = v95.is_nil;

  v54 = 0xE500000000000000;
  if (!is_nil)
  {
    v55 = 0;
    while (!__OFADD__(v55, 1))
    {
      *v86 = 0x746E756F63;
      *&v86[8] = 0xE500000000000000;
      MEMORY[0x21CEED5E0](46, 0xE100000000000000);
      v85 = v55 + 1;
      v56 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v56);

      v49 = *v86;
      v54 = *&v86[8];
      *v86 = v50;
      *&v86[16] = v51;
      v57._countAndFlagsBits = v49;
      v57._object = v54;
      v48 = DataFrame.indexOfColumn(_:)(v57);
      ++v55;
      if (v48.is_nil)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return v48.value;
  }

LABEL_17:
  v58 = *(&v94 + 1);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
  v88 = &off_282CAA128;
  *v86 = v49;
  *&v86[8] = v54;
  *&v86[16] = v58;

  DataFrame.append(column:)(v86);
  sub_21B233960(v86);
  if (v65 == 2)
  {
    (*(v66 + 8))(v81, v82);

    v59 = v90;
    v60 = v67;
    *v67 = v89;
    *(v60 + 2) = v59;
  }

  else
  {
    v61 = (v66 + 8);
    if (v65)
    {
      v62 = sub_21B301618;
    }

    else
    {
      v62 = sub_21B301604;
    }

    sub_21B2FEAB0(0x746E756F63, 0xE500000000000000, v62, 0, v89, *(&v89 + 1), v90, v67);
    (*v61)(v81, v82);
  }

  return v48.value;
}

uint64_t sub_21B3458C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *)@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v111 = a7;
  v109 = a5;
  v108 = a4;
  v121 = a3;
  v120 = a2;
  v87 = a9;
  v106 = sub_21B34B474();
  v119 = *(v106 - 8);
  v13 = *(v119 + 64);
  v14 = MEMORY[0x28223BE20](v106);
  v110 = &v86 - v15;
  v16 = a6[2];
  v118 = *(v16 - 8);
  v17 = *(v118 + 64);
  MEMORY[0x28223BE20](v14);
  v104 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_21B34B474();
  v117 = *(v94 - 8);
  v20 = *(v117 + 64);
  v21 = MEMORY[0x28223BE20](v94);
  v96 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v86 - v24;
  v25 = a6[3];
  v88 = *(v25 - 8);
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v23);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *v9;
  v97 = TupleTypeMetadata2;
  v29 = sub_21B34B004();
  v30 = v9[1];
  v31 = v9[2];
  v30();
  v32 = a6[5];
  v33 = *(v32 + 24);
  v100 = v28;
  v33(v29, v25, v32);
  v112 = a1;
  *&v139 = a1;
  v98 = v16;
  v123 = v16;
  v101 = v25;
  v124 = v25;
  v125 = v111;
  v126 = a8;
  v127 = a6[4];
  v102 = v32;
  v128 = v32;
  v129 = v120;
  v130 = v121;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  v35 = type metadata accessor for SingleColumnBuilder();
  v36 = sub_21B305404();
  v37 = v145;
  v144 = sub_21B2FCC28(sub_21B349F70, v122, v34, v35, MEMORY[0x277D84A98], v36, MEMORY[0x277D84AC0], v38);

  v115 = v35;
  v39 = sub_21B34B004();

  if (v39 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v145 = v37;
    v41 = v115;
    if (v39)
    {
      v42 = sub_21B34B054();
      sub_21B34AFC4();
      nullsub_14(v42);
      sub_21B34AFC4();
      nullsub_14(v42);
      v43 = 0;
      v44 = 32;
      do
      {
        sub_21B34AFC4();
        sub_21B305254(v43, v144);
        sub_21B265F40(v29, v41);
        nullsub_14(v42);
        v44 += 40;
        ++v43;
      }

      while (v39 != v43);
    }

    v45 = sub_21B34B054();
    sub_21B34AFC4();
    nullsub_14(v45);
    sub_21B34AFC4();
    v114 = v45;
    nullsub_14(v45);
    v46 = 0;
    v47 = v97;
    v103 = v97 - 8;
    v93 = (v117 + 32);
    v92 = (v118 + 32);
    v91 = v102 + 32;
    v105 = (v119 + 8);
    v90 = (v118 + 8);
    v89 = (v112 + 40);
    v48 = v145;
    v49 = v113;
    v50 = v98;
    while (1)
    {
      v51 = sub_21B34B004();
      v52 = v96;
      v53 = v95;
      if (v46 == v51)
      {
        v99 = v46;
        v54 = *(v47 - 8);
        (*(v54 + 56))(v96, 1, 1, v47);
      }

      else
      {
        v55 = sub_21B34AFF4();
        sub_21B34AFA4();
        if (v55)
        {
          v56 = *(v47 - 8);
          (*(v56 + 16))(v52, v49 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46, v47);
          v57 = __OFADD__(v46, 1);
          v58 = v46 + 1;
          if (v57)
          {
            goto LABEL_24;
          }
        }

        else
        {
          result = sub_21B34B684();
          v56 = *(v47 - 8);
          if (*(v56 + 64) != 8)
          {
            goto LABEL_35;
          }

          *&v139 = result;
          (*(v56 + 16))(v52, &v139, v47);
          swift_unknownObjectRelease();
          v50 = v98;
          v57 = __OFADD__(v46, 1);
          v58 = v46 + 1;
          if (v57)
          {
LABEL_24:
            __break(1u);
LABEL_25:

            sub_21B23A9F4(v119, v120, v121);
            v78 = v133;
            v79 = v134;

            sub_21B23A9F4(v78, *(&v78 + 1), v79);
            (*v90)(v104, v98);
            (*(v88 + 8))(v100, v101);
          }
        }

        v99 = v58;
        v54 = v56;
        (*(v56 + 56))(v52, 0, 1, v47);
      }

      (*v93)(v53, v52, v94);
      v59 = (*(v54 + 48))(v53, 1, v47);
      v60 = v115;
      if (v59 == 1)
      {
        break;
      }

      v61 = &v53[*(v47 + 48)];
      v62 = *(v61 + 1);
      v118 = *v61;
      v117 = v62;
      v63 = *(v61 + 3);
      v116 = *(v61 + 2);
      v119 = v63;
      v120 = *(v61 + 4);
      LODWORD(v121) = v61[40];
      v64 = v104;
      (*v92)(v104, v53, v50);
      (*(v102 + 32))(v64, v101);
      result = sub_21B34B004();
      if (result < 0)
      {
        goto LABEL_32;
      }

      v65 = result;
      v66 = v114;
      sub_21B34AFC4();
      nullsub_14(v66);
      sub_21B34AFC4();
      result = nullsub_14(v66);
      if (v65)
      {
        v107 = v65;
        v67 = 0;
        v68 = v89;
        v69 = 32;
        while (v67 < *(v112 + 16))
        {
          v70 = *(v68 - 1);
          v71 = *v68;
          *&v139 = v118;
          *(&v139 + 1) = v117;
          v140 = v116;
          v141 = v119;
          v142 = v120;
          v143 = v121;

          DataFrame.Slice.subscript.getter(v70, v71, &v135);

          v131 = v135;
          v132 = v136;
          v133 = v137;
          v134 = v138;
          v108(&v131);
          if (v48)
          {
            goto LABEL_25;
          }

          v145 = v67 + 1;
          v72 = v133;
          v73 = v134;

          v74 = v73;
          v48 = 0;
          v75 = v110;
          sub_21B23A9F4(v72, *(&v72 + 1), v74);
          v76 = v114;
          sub_21B34AFC4();
          v77 = v115;
          sub_21B305254(v67, v144);
          sub_21B265FC0(v75, v77);
          (*v105)(v75, v106);
          result = nullsub_14(v76);
          v69 += 40;
          v68 += 2;
          v67 = v145;
          v49 = v113;
          if (v107 == v145)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v49 = v113;
LABEL_20:
      v50 = v98;
      (*v90)(v104, v98);

      sub_21B23A9F4(v119, v120, v121);
      v47 = v97;
      v46 = v99;
    }

    *&v139 = MEMORY[0x277D84F90];
    *(&v139 + 1) = MEMORY[0x277D84F90];
    v140 = sub_21B25DC2C(MEMORY[0x277D84F90]);
    (*(v102 + 40))(&v139, 0, v101);
    result = sub_21B34B004();
    if (result < 0)
    {
      goto LABEL_34;
    }

    v80 = result;
    v81 = v114;
    if (result)
    {
      sub_21B34AFC4();
      nullsub_14(v81);
      sub_21B34AFC4();
      nullsub_14(v81);
      v82 = 0;
      v83 = 32;
      do
      {
        sub_21B34AFC4();
        sub_21B305254(v82, v144);
        sub_21B265FFC(&v139, 0, v60);
        nullsub_14(v81);
        v83 += 40;
        ++v82;
      }

      while (v80 != v82);
    }

    (*(v88 + 8))(v100, v101);

    v84 = v140;
    v85 = v87;
    *v87 = v139;
    *(v85 + 2) = v84;
  }

  return result;
}

unint64_t sub_21B34663C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *v2;
  *&v33 = v35;
  v4 = a1[3];
  v27 = a1[2];
  v28 = v4;
  v5 = a1[5];
  v29 = a1[4];
  v30 = v5;
  v20 = v27;
  v21 = v4;
  v22 = v29;
  v23 = v5;
  v24 = sub_21B34A034;
  v25 = &v26;

  swift_getTupleTypeMetadata2();
  v6 = sub_21B34B054();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_21B2FCC28(sub_21B34A044, v19, v6, &type metadata for DataFrame, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  (*(*(v6 - 8) + 8))(&v35, v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v9 + 48);
    v18 = *(v9 + 32);
    v33 = v18;
    v34 = v11;

    v13 = v10 - 1;
    if (v13)
    {
      v14 = (v9 + 72);
      do
      {
        v15 = *v14;
        v31 = *(v14 - 1);
        v32 = v15;
        v12.columns._rawValue = &v31;
        DataFrame.append(rowsOf:)(v12);
        v14 += 3;
        --v13;
      }

      while (v13);
      v18 = v33;
      v11 = v34;
    }

    *a2 = v18;
    *(a2 + 16) = v11;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    *a2 = MEMORY[0x277D84F90];
    *(a2 + 8) = v17;
    result = sub_21B25DC2C(v17);
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_21B34682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, void *a5@<X8>)
{
  v30 = a2;
  v27 = a5;
  v28 = *(a3 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 8);
  v31 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v29 = *(v11 + 32);
  v15 = *(v11 + 40);
  v16 = sub_21B2FB1D4(v14, v29, v15);

  v17 = v29;
  sub_21B254074(v14, v29, v15);
  v25 = v13;

  v24 = v12;

  v26 = v14;
  v18 = sub_21B23A9F4(v14, v17, v15);
  v19 = *(v30 + 16);
  (*(v30 + 8))(v18);
  result = (*(a4 + 24))(v16, a3, a4);
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v16)
    {
      v21 = *(a4 + 32);
      do
      {
        v21(a1, a3, a4);
        --v16;
      }

      while (v16);
    }

    v32[0] = v31;
    v32[1] = v24;
    v22 = v26;
    v32[2] = v25;
    v32[3] = v26;
    v32[4] = v17;
    v33 = v15;

    sub_21B254074(v22, v17, v15);
    v23 = v27;
    DataFrame.init(_:)(v32, v27);
    (*(a4 + 40))(v23, 1, a3, a4);
    return (*(v28 + 8))(v10, a3);
  }

  return result;
}

uint64_t sub_21B346A80@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2;
  v11 = *v2;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);

  swift_getTupleTypeMetadata2();
  sub_21B34B054();
  swift_getWitnessTable();
  result = sub_21B34B704();
  if (!v3)
  {
    v7 = v2[1];
    v8 = v2[4];
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = *(v4 + 1);
    *(a2 + 32) = v8;
  }

  return result;
}

double sub_21B346B88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v42 = *v4;
  v39[1] = v42;
  v8 = a3[2];
  v7 = a3[3];
  v33 = v8;
  v34 = v7;
  v9 = a3[4];
  v10 = a3[5];
  v35 = v9;
  v36 = v10;
  v37 = a1;
  v38 = a2;
  v26 = v8;
  v27 = v7;
  v23 = v7;
  v28 = v9;
  v29 = v10;
  v30 = sub_21B349270;
  v31 = &v32;

  swift_getTupleTypeMetadata2();
  v11 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B2FCC28(sub_21B3492A0, v25, v11, TupleTypeMetadata2, v13, WitnessTable, MEMORY[0x277D84950], v39);
  if (v5)
  {
    (*(*(v11 - 8) + 8))(&v42, v11);
  }

  else
  {
    v17 = v15;
    (*(*(v11 - 8) + 8))(&v42, v11);
    v18 = v6[1];
    v19 = v6[2];
    v21 = v6[3];
    v20 = v6[4];

    sub_21B349CBC(v17, v18, v19, v21, v20, v8, v23, &type metadata for DataFrame, v40, v9, v10, &protocol witness table for DataFrame);

    result = *v40;
    v22 = v40[1];
    *a4 = v40[0];
    *(a4 + 16) = v22;
    *(a4 + 32) = v41;
  }

  return result;
}

uint64_t sub_21B346DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *), uint64_t a6, uint64_t a7)
{
  v16 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = *(a4 + 40);
  v13 = *(a7 - 8);
  (*(v13 + 16))(a1, a3, a7);
  v17[0] = *a4;
  v17[1] = v16;
  v18 = v11;
  v19 = v12;
  v14 = v20;
  result = a5(v17);
  if (v14)
  {
    return (*(v13 + 8))(a1, a7);
  }

  return result;
}

uint64_t sub_21B346EE0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X7>, uint64_t a4@<X8>)
{
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, a1 + v9);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_21B346FA0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a2;
  v7 = *(a2 + 2);
  *&v41 = swift_getTupleTypeMetadata2();
  v8 = sub_21B34B474();
  v37 = *(v8 - 8);
  *&v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v10;
  v11 = sub_21B34B474();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  v17 = *(v7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[3];
  v22 = v3[4];
  v21(a1);
  if ((*(v17 + 48))(v16, 1, v7) == 1)
  {
    result = (*(v12 + 8))(v16, v11);
    *(a3 + 25) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v24 = (*(v17 + 32))(v20, v16, v7);
    v42 = *v4;
    v43 = v42;
    MEMORY[0x28223BE20](v24);
    *(&v36 - 6) = v7;
    v25 = v39;
    *(&v36 - 5) = *(v39 + 24);
    *(&v36 - 3) = *(v25 + 5);
    *(&v36 - 2) = v20;
    v39 = v20;
    v26 = v41;
    v27 = sub_21B34B054();

    swift_getWitnessTable();
    v28 = v40;
    sub_21B34AF14();
    (*(*(v27 - 8) + 8))(&v43, v27);
    if ((*(*(v26 - 8) + 48))(v28, 1, v26) == 1)
    {
      (*(v37 + 8))(v28, v38);
      v29 = 0;
      v30 = 0;
      v31 = *(v17 + 8);
      v32 = 0uLL;
      v33 = 0uLL;
    }

    else
    {
      v34 = &v28[*(v26 + 48)];
      v41 = *v34;
      v35 = v28;
      v29 = *(v34 + 2);
      v38 = *(v34 + 24);
      v30 = v34[40];
      v31 = *(v17 + 8);
      v31(v35, v7);
      v33 = v38;
      v32 = v41;
    }

    *a3 = v32;
    *(a3 + 16) = v29;
    *(a3 + 24) = v33;
    *(a3 + 40) = v30;
    return (v31)(v39, v7);
  }

  return result;
}

unint64_t sub_21B3473BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_21B34663C(a1, a2);
}

double sub_21B34747C@<D0>(void (*a1)(_OWORD *__return_ptr)@<X4>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_21B3474C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  sub_21B347534(a3, a4 & 1, a5, v14, a6);
  v8 = v15;
  v9 = v18;
  result = *v14;
  v11 = v14[1];
  v12 = v16;
  v13 = v17;
  *a1 = v14[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v8;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v9;
  return result;
}

double sub_21B347534@<D0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v65 = *v5;
  *&v63[0] = v65;
  v6 = a3[2];
  v7 = a3[3];
  v54 = v6;
  v55 = v7;
  v8 = a3[5];
  v32 = a3[4];
  v56 = v32;
  v57 = v8;
  v58 = a5;
  v59 = a1;
  v60 = a2 & 1;
  v47 = v6;
  v48 = v7;
  v49 = v32;
  v50 = v8;
  v29 = v8;
  v51 = sub_21B34A0BC;
  v52 = &v53;

  swift_getTupleTypeMetadata2();
  v9 = sub_21B34B054();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21B2FCC28(sub_21B34A0FC, v46, v9, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  (*(*(v9 - 8) + 8))(&v65, v9);
  *&v63[0] = v13;
  v42 = v6;
  v43 = v7;
  v31 = v7;
  v44 = v32;
  v45 = v8;
  v14 = sub_21B34B054();
  v15 = swift_getTupleTypeMetadata2();
  v16 = swift_getWitnessTable();
  v30 = sub_21B2FCC28(sub_21B34A158, v41, v14, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v17);
  *&v63[0] = v13;
  v37 = v6;
  v38 = v7;
  v39 = v32;
  v40 = v29;
  v19 = sub_21B2FCC28(sub_21B34A17C, v36, v14, v15, MEMORY[0x277D84A98], v16, MEMORY[0x277D84AC0], v18);

  v20 = v33[1];
  v21 = v33[2];
  v23 = v33[3];
  v22 = v33[4];
  swift_retain_n();
  swift_retain_n();
  sub_21B349CBC(v30, v20, v21, v23, v22, v6, v31, &type metadata for DataFrame.Slice, v61, v32, v29, &protocol witness table for DataFrame.Slice);
  v34 = v62;

  sub_21B349CBC(v19, v20, v21, v23, v22, v6, v31, &type metadata for DataFrame.Slice, v63, v32, v29, &protocol witness table for DataFrame.Slice);
  v24 = v64;

  result = *v61;
  v26 = v61[1];
  v27 = v63[0];
  v28 = v63[1];
  *a4 = v61[0];
  *(a4 + 16) = v26;
  *(a4 + 32) = v34;
  *(a4 + 40) = v27;
  *(a4 + 56) = v28;
  *(a4 + 72) = v24;
  return result;
}

uint64_t sub_21B347898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_21B3478D4(a1, a2);
}

uint64_t sub_21B3478D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v4 = a1[3];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v10(v7);
  v44 = v4;
  v45 = a1;
  v12 = a1[5];
  v13 = *(v12 + 16);
  v42 = v9;
  v14 = v13(v4, v12);
  v15 = *(v14 + 16);
  if (v15)
  {
    v41 = v5;
    v47 = MEMORY[0x277D84F90];
    result = sub_21B254034(0, v15, 0);
    v17 = 0;
    v18 = v47;
    v19 = (v14 + 40);
    while (v17 < *(v14 + 16))
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      v22 = v45[4];
      v48 = v45[2];
      v49 = v44;
      v50 = v22;
      v51 = v12;
      v23 = type metadata accessor for CustomGrouping();
      v24 = sub_21B34426C(v20, v21, v23);

      v47 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_21B254034((v25 > 1), v26 + 1, 1);
        v18 = v47;
      }

      ++v17;
      *(v18 + 16) = v26 + 1;
      *(v18 + 8 * v26 + 32) = v24;
      v19 += 2;
      if (v15 == v17)
      {

        v5 = v41;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_9:
    v27 = sub_21B25EF30(v18);

    v28 = *(sub_21B344048(v45) + 16);

    if (v28)
    {
      v29 = 0;
      v30 = v27 + 56;
      v31 = MEMORY[0x277D84F90];
      do
      {
        if (*(v27 + 16) && (v34 = *(v27 + 40), v35 = sub_21B34BBB4(), v36 = -1 << *(v27 + 32), v37 = v35 & ~v36, ((*(v30 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0))
        {
          v38 = ~v36;
          while (*(*(v27 + 48) + 8 * v37) != v29)
          {
            v37 = (v37 + 1) & v38;
            if (((*(v30 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21B254034(0, *(v31 + 16) + 1, 1);
            v31 = v48;
          }

          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_21B254034((v32 > 1), v33 + 1, 1);
            v31 = v48;
          }

          *(v31 + 16) = v33 + 1;
          *(v31 + 8 * v33 + 32) = v29;
        }

        ++v29;
      }

      while (v29 != v28);
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    sub_21B348734(v31, v45, v43);

    return (*(v5 + 8))(v42, v44);
  }

  return result;
}

uint64_t sub_21B347C48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return sub_21B347C84(a1, a2, a3);
}

uint64_t sub_21B347C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  v41 = a3;
  if (v4)
  {
    v45 = MEMORY[0x277D84F90];
    sub_21B254034(0, v4, 0);
    v6 = v45;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = a2[2];
      v11 = a2[4];
      v12 = a2[5];
      v42 = a2[3];
      v43 = v10;
      *&v49 = v10;
      *(&v49 + 1) = v42;
      v13 = v11;
      *&v50 = v11;
      *(&v50 + 1) = v12;
      v14 = v12;
      v15 = type metadata accessor for CustomGrouping();
      v16 = sub_21B34426C(v8, v9, v15);

      v45 = v6;
      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        sub_21B254034((v17 > 1), v18 + 1, 1);
        v6 = v45;
      }

      v6[2] = v18 + 1;
      v6[v18 + 4] = v16;
      v7 += 2;
      --v4;
    }

    while (v4);
    v19 = v42;
    v20 = v43;
  }

  else
  {
    v20 = a2[2];
    v19 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    v6 = MEMORY[0x277D84F90];
  }

  v43 = &v40;
  v21 = v44;
  v52 = *v44;
  *&v49 = v52;
  v22 = MEMORY[0x28223BE20](v52);
  v38[10] = v20;
  v38[11] = v19;
  v38[12] = v13;
  v38[13] = v14;
  v39 = v6;
  MEMORY[0x28223BE20](v22);
  v38[2] = v20;
  v38[3] = v19;
  v38[4] = v13;
  v38[5] = v14;
  v38[6] = sub_21B34917C;
  v38[7] = v23;

  swift_getTupleTypeMetadata2();
  v24 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_21B2FCC28(sub_21B349180, v38, v24, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v27);

  (*(*(v24 - 8) + 8))(&v52, v24);
  v29 = v21[1];
  v30 = v21[2];
  v31 = v21[3];
  v32 = v21[4];
  v39 = v14;
  sub_21B2B1CC4(v29, v30, v31, v32, v28, &v49);
  v45 = v20;
  v46 = v19;
  v47 = v13;
  v48 = v14;
  v33 = type metadata accessor for _GroupSummaries();
  v34 = v41;
  v41[3] = v33;
  v34[4] = swift_getWitnessTable();
  v35 = swift_allocObject();
  *v34 = v35;
  v36 = v50;
  *(v35 + 16) = v49;
  *(v35 + 32) = v36;
  *(v35 + 48) = v51;
}

uint64_t sub_21B347FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  v14 = a5[1];
  v17 = *a5;
  v18[0] = v14;
  *(v18 + 9) = *(a5 + 25);
  result = (*(*(a8 - 8) + 16))(a1, a4, a8);
  if (a7)
  {
    return sub_21B343AF4(a2, a3, a9);
  }

  if (a6 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject();
    v16 = sub_21B262CF4(a6);
    sub_21B34351C(a2, a3, &v16, a9);
  }

  return result;
}

uint64_t sub_21B3480DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a3, a3 + *(TupleTypeMetadata2 + 48), a3 + *(TupleTypeMetadata2 + 48) + 48, a1, a1 + v6);
}

uint64_t sub_21B3481A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v46 = a1;
  v44 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v50 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v48 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v39[-v11];
  v49 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  v13 = *(v7 + 16);
  v45 = v7 + 16;
  *&v47 = v13;
  v13(v12, a1, TupleTypeMetadata2);
  v14 = &v12[*(TupleTypeMetadata2 + 48)];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  v18 = *(v14 + 3);
  v19 = *(v14 + 4);
  v20 = *(v14 + 6);
  v21 = *(v14 + 7);
  v22 = *(v14 + 8);
  v43 = *(v14 + 9);
  v23 = *(v14 + 10);
  v41 = v20;
  v42 = v23;
  v24 = v14[40];
  v40 = v14[88];

  sub_21B23A9F4(v18, v19, v24);

  sub_21B23A9F4(v43, v42, v40);
  v25 = *(v50 - 8);
  (*(v25 + 32))(v44, v12);
  v26 = v48;
  (v47)(v48, v46, TupleTypeMetadata2);
  v27 = &v26[*(TupleTypeMetadata2 + 48)];
  v28 = *(v27 + 4);
  LOBYTE(v12) = v27[40];
  v29 = *(v27 + 6);
  v30 = *(v27 + 7);
  v31 = *(v27 + 8);
  v32 = *(v27 + 9);
  v33 = *(v27 + 10);
  v34 = *(v27 + 1);
  v46 = *v27;
  v47 = v34;
  v35 = v27[88];

  sub_21B23A9F4(v32, v33, v35);
  v36 = v49;
  v37 = v47;
  *v49 = v46;
  v36[1] = v37;
  *(v36 + 4) = v28;
  *(v36 + 40) = v12;
  return (*(v25 + 8))(v26, v50);
}

uint64_t sub_21B34846C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v46 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7F350, &qword_21B356918);
  v45 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v50 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v40[-v11];
  v51 = (a3 + *(swift_getTupleTypeMetadata2() + 48));
  v13 = *(v7 + 16);
  v47 = v7 + 16;
  v49 = v13;
  v13(v12, a1, TupleTypeMetadata2);
  v14 = &v12[*(TupleTypeMetadata2 + 48)];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  v18 = *(v14 + 3);
  v19 = *(v14 + 4);
  v20 = *(v14 + 6);
  v21 = *(v14 + 7);
  v22 = *(v14 + 8);
  v44 = *(v14 + 9);
  v23 = *(v14 + 10);
  v42 = v20;
  v43 = v23;
  v24 = v14[40];
  v41 = v14[88];

  sub_21B23A9F4(v18, v19, v24);

  sub_21B23A9F4(v44, v43, v41);
  v25 = *(v45 - 8);
  v26 = v12;
  v27 = v45;
  (*(v25 + 32))(v46, v26);
  v28 = v50;
  v49(v50, v48, TupleTypeMetadata2);
  v29 = &v28[*(TupleTypeMetadata2 + 48)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = *(v29 + 2);
  v33 = *(v29 + 3);
  v34 = *(v29 + 4);
  v35 = v29[40];

  sub_21B23A9F4(v33, v34, v35);
  v36 = *(v29 + 8);
  v37 = v29[88];
  v38 = v51;
  *v51 = *(v29 + 3);
  *(v38 + 2) = v36;
  *(v38 + 24) = *(v29 + 72);
  *(v38 + 40) = v37;
  return (*(v25 + 8))(v28, v27);
}

uint64_t sub_21B348734@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = *v3;
  *&v34[0] = v36;
  v5 = a2[2];
  v6 = a2[3];
  v25 = v5;
  v26 = v6;
  v7 = a2[4];
  v8 = a2[5];
  v27 = v7;
  v28 = v8;
  v29 = a1;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = sub_21B34A1A0;
  v23 = &v24;

  swift_getTupleTypeMetadata2();
  v9 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21B2FCC28(sub_21B34A1A4, v17, v9, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  (*(*(v9 - 8) + 8))(&v36, v9);
  sub_21B2B1CC4(v3[1], v3[2], v3[3], v3[4], v13, v34);
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  a3[3] = type metadata accessor for _GroupSummaries();
  a3[4] = swift_getWitnessTable();
  v14 = swift_allocObject();
  *a3 = v14;
  v15 = v34[1];
  *(v14 + 16) = v34[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v35;
}

uint64_t sub_21B348948(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4[1];
  v9 = *(a4 + 4);
  v10 = *(a4 + 40);
  (*(*(a6 - 8) + 16))(a1, a3, a6);
  v13 = *a4;
  return sub_21B29C30C(a5, a2);
}

uint64_t sub_21B3489EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  v4 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return a2(v3, TupleTypeMetadata2);
}

__n128 sub_21B348A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - v10;
  v12 = *v4;
  sub_21B34B094();
  v13 = &v11[*(TupleTypeMetadata2 + 48)];
  v14 = *v13;
  v20 = *(v13 + 1);
  v15 = *(v13 + 4);
  v16 = v13[40];
  v17 = *(*(v7 - 8) + 32);
  v19 = v14;
  v17(a1, v11, v7);
  result = v20;
  *a2 = v19;
  *(a2 + 16) = result;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_21B348B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B3489EC(a1, MEMORY[0x277D83928]);
  *a2 = result;
  return result;
}

void (*sub_21B348BB4(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 72) = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  *(v9 + 80) = v12;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  *(v9 + 88) = v13;
  v15 = *a2;
  v16 = *(v3 + 16);
  *v9 = *v3;
  *(v9 + 16) = v16;
  *(v9 + 32) = *(v3 + 32);
  v17 = sub_21B348DE8((v9 + 40), v15, a3);
  v19 = v18;
  *(v9 + 96) = v17;
  (*(*(v10 - 8) + 16))(v14);
  v20 = v14 + *(TupleTypeMetadata2 + 48);
  v21 = *v19;
  v22 = v19[1];
  v23 = v19[2];
  v24 = v19[3];
  v25 = v19[4];
  LOBYTE(v19) = *(v19 + 40);
  *v20 = v21;
  *(v20 + 8) = v22;
  *(v20 + 16) = v23;
  *(v20 + 24) = v24;
  *(v20 + 32) = v25;
  *(v20 + 40) = v19;

  sub_21B254074(v24, v25, v19);
  return sub_21B348D6C;
}

void sub_21B348D6C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 40;
  (*(*(*a1 + 80) + 8))(*(*a1 + 88), *(*a1 + 72));
  v5 = *(v3 + 88);
  (*(v3 + 96))(v4, a2);
  free(v5);

  free(v3);
}

void (*sub_21B348DE8(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v8 = *(TupleTypeMetadata2 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  sub_21B348A58(v9, v9 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_21B2854A4;
}

uint64_t sub_21B348EE4()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

__n128 sub_21B348F50@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_21B348F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B348FB8()
{
  swift_getWitnessTable();
  v1 = sub_21B2DBAB0();
  v2 = *v0;

  v3 = v0[2];

  v4 = v0[4];

  return v1;
}

uint64_t sub_21B349140(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B349198(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v5 = v4[3];
  v6 = v4[4];
  v8 = v4[5];
  return sub_21B348948(a1, a2, a3, a4, v4[6], v4[2]);
}

uint64_t sub_21B3491C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v7 = v2[6];
  v6 = v2[7];
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v7(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v8);
}

uint64_t sub_21B349270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  return sub_21B346DCC(a1, a2, a3, a4, *(v4 + 48), *(v4 + 56), *(v4 + 16));
}

uint64_t sub_21B3492CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v104 = a6;
  v105 = a7;
  v107 = a4;
  v108 = a5;
  v90 = a3;
  v88 = a2;
  v89 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CD7EAC0, &unk_21B3547A0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v91 = &v81 - v20;
  v82 = sub_21B34B474();
  v81 = *(v82 - 8);
  v21 = *(v81 + 64);
  v22 = MEMORY[0x28223BE20](v82);
  v103 = &v81 - v23;
  v24 = *(a8 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v93 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v109 = &v81 - v28;
  v111 = TupleTypeMetadata2;
  v122 = sub_21B34AFD4();
  v29 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v30 = sub_21B34AFD4();
  v112 = a8;
  v106 = a12;
  v31 = sub_21B2E97E8(v30, a8, v29, a12);

  v121 = v31;
  v32 = *(a14 + 32);
  v85 = a1;
  v86 = a11;
  v87 = a14;
  v32(&v115, a11, a14);
  v33 = v115;
  v34 = v116;
  v35 = v118;
  v94 = v117;
  v113 = v119;
  v36 = v120;
  v37 = v118;
  if (v120)
  {
    if (v120 == 1 && *(v118 + 16))
    {
      v37 = *(v118 + 32);
    }

    else
    {
      sub_21B2A6400(v118, v113, v120);
      if (v39)
      {
        v37 = 0;
      }

      else
      {
        v37 = v38;
      }
    }
  }

  v84 = a13;
  v83 = a10;
  v101 = (v24 + 32);
  v102 = (v24 + 48);
  v95 = (v24 + 8);
  v100 = (v24 + 16);
  v99 = v33;
  v40 = v112;
  v41 = v94;
  v98 = v34;
  v97 = v36;
  for (i = v35; ; v35 = i)
  {
    sub_21B2A6400(v35, v113, v36);
    if (v43)
    {
      if (!v37)
      {
        goto LABEL_23;
      }
    }

    else if (v37 == v42)
    {
LABEL_23:

      v58 = sub_21B23A9F4(v35, v113, v36);
      v115 = v122;
      MEMORY[0x28223BE20](v58);
      v59 = v83;
      *(&v81 - 8) = v40;
      *(&v81 - 7) = v59;
      v60 = v106;
      *(&v81 - 6) = v86;
      *(&v81 - 5) = v60;
      v61 = v84;
      v62 = v87;
      *(&v81 - 4) = v84;
      *(&v81 - 3) = v62;
      v63 = MEMORY[0x28223BE20](v59);
      *(&v81 - 8) = v40;
      *(&v81 - 7) = v63;
      *(&v81 - 6) = v64;
      *(&v81 - 5) = v65;
      *(&v81 - 4) = v61;
      *(&v81 - 3) = v66;
      v79 = sub_21B349FC4;
      v80 = v67;
      v68 = sub_21B34B054();

      v69 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v72 = sub_21B2FCC28(sub_21B349FFC, (&v81 - 10), v68, v69, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v71);
      swift_bridgeObjectRelease_n();

      v74 = v89;
      v75 = v88;
      *v89 = v72;
      v74[1] = v75;
      v77 = v107;
      v76 = v108;
      v74[2] = v90;
      v74[3] = v77;
      v74[4] = v76;
      return result;
    }

    v115 = v33;
    v116 = v34;
    v117 = v41;
    v118 = v35;
    v119 = v113;
    v120 = v36;
    v44 = DataFrame.Rows.index(after:)(v37);
    v115 = v33;
    v116 = v34;
    v117 = v41;
    v118 = v37;
    v104(&v115);
    if (v15)
    {

      sub_21B23A9F4(v35, v113, v36);
    }

    v110 = v44;
    v45 = v103;
    v107();

    v46 = v112;
    if ((*v102)(v45, 1, v112) == 1)
    {
      break;
    }

    v47 = v109;
    (*v101)(v109, v45, v46);
    v45 = MEMORY[0x277D83B88];
    sub_21B34AA14();
    if (v116 == 1)
    {
      v48 = *v100;
      (*v100)(v93, v47, v46);
      v115 = sub_21B34B004();
      LOBYTE(v116) = 0;
      sub_21B34AA04();
      sub_21B34AA24();
      v49 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_26;
      }

      if (v49 < v37)
      {
        goto LABEL_27;
      }

      v50 = v112;
      v51 = &v91[*(v111 + 48)];
      v48(v91, v47, v112);
      *v51 = v37;
      *(v51 + 1) = v49;
      v51[16] = 0;
      sub_21B34B054();
      sub_21B34B024();
      v40 = v50;
      v41 = v94;
      (*v95)(v47, v40);
    }

    else
    {
      v52 = v115;
      v53 = sub_21B34B054();
      sub_21B34AFC4();
      v54 = v122;
      sub_21B305254(v52, v122);
      v55 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        break;
      }

      if (v55 < v37)
      {
        goto LABEL_28;
      }

      v56 = v54 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v52 + *(v111 + 48);
      sub_21B28DFBC(v37, v55);
      v57 = v112;
      (*v95)(v109, v112);
      nullsub_14(v53);
      v40 = v57;
    }

    v34 = v98;

    v33 = v99;

    v37 = v110;
    v15 = 0;
    v36 = v97;
  }

  (*(v81 + 8))(v45, v82);
  v115 = 0;
  v116 = 0xE000000000000000;

  sub_21B34B634();

  v115 = 0xD00000000000002BLL;
  v116 = 0x800000021B34DBA0;
  v114 = v37;
  v78 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v78);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B349CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a1;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v22[5] = a10;
  v22[6] = a11;
  v22[7] = a12;
  v22[8] = sub_21B349E08;
  v22[9] = &v23;
  swift_getTupleTypeMetadata2();
  v17 = sub_21B34B054();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  result = sub_21B2FCC28(sub_21B349E38, v22, v17, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  return result;
}

uint64_t sub_21B349E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v8 = v2[8];
  v7 = v2[9];
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v8(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v9);
}

uint64_t sub_21B349EDC(uint64_t a1)
{
  v2 = v1[2];
  v4 = v1[6];
  v3 = v1[7];
  v5 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v6 = *(v5 + 2);
  v7 = *(v5 + 40);
  v9 = *v5;
  v10 = v6;
  v11 = *(v5 + 24);
  v12 = v7;
  return v4(&v9) & 1;
}

double sub_21B349F70@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[5];
  v5 = v2[8];
  v6 = v2[9];
  v7 = v5(*a1, a1[1]);
  return sub_21B265ED0(v7, v8, v4, a2);
}

uint64_t sub_21B349FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 72);
  v10 = *(v2 + 56);
  return sub_21B344D24(a1, *(v2 + 64), a2);
}

uint64_t sub_21B34A034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_21B34682C(a1, v2[6], v2[3], v2[5], a2);
}

uint64_t sub_21B34A044(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[6];
  v4 = v1[7];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B34A0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = *(v5 + 40);
  v7 = *(v5 + 24);
  return sub_21B347FE4(a1, a2, a3, a4, a5, *(v5 + 56), *(v5 + 64), *(v5 + 16), *(v5 + 48));
}

uint64_t sub_21B34A158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_21B3481A0(a1, v2[2], a2);
}

uint64_t sub_21B34A17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_21B34846C(a1, v2[2], a2);
}

uint64_t sub_21B34A1DC(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_21B270BB0(a1, a2);
  if (!v3)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = MEMORY[0x277D84F90];
      v6 = v4;
      sub_21B2542A8(0, v5, 0);
      v7 = v6;
      v2 = v13;
      v8 = *(v13 + 16);
      v9 = 32;
      do
      {
        v10 = *(v7 + v9);
        v11 = *(v13 + 24);
        if (v8 >= v11 >> 1)
        {
          sub_21B2542A8((v11 > 1), v8 + 1, 1);
          v7 = v6;
        }

        *(v13 + 16) = v8 + 1;
        *(v13 + 8 * v8 + 32) = __ROR8__(v10, 1);
        v9 += 8;
        ++v8;
        --v5;
      }

      while (v5);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t sub_21B34A2DC(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_21B270D34(a1, a2);
  if (!v3)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v13 = MEMORY[0x277D84F90];
      v6 = v4;
      sub_21B2542A8(0, v5, 0);
      v7 = v6;
      v2 = v13;
      v8 = *(v13 + 16);
      v9 = 32;
      do
      {
        v10 = *(v7 + v9);
        v11 = *(v13 + 24);
        if (v8 >= v11 >> 1)
        {
          sub_21B2542A8((v11 > 1), v8 + 1, 1);
          v7 = v6;
        }

        *(v13 + 16) = v8 + 1;
        *(v13 + 8 * v8 + 32) = v10;
        v9 += 8;
        ++v8;
        --v5;
      }

      while (v5);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v2;
}

uint64_t sub_21B34A3DC(unsigned __int8 **a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_21B24A18C(0, a3 & ~(a3 >> 63), 0, MEMORY[0x277D84F90]);

  if ((a4 & 8) == 0)
  {
    return sub_21B34A1DC(a1, a2);
  }

  v7 = *(*a1)++;
  if (v7 == 1)
  {
    return sub_21B34A2DC(a1, a2);
  }

  if (!v7)
  {
    return sub_21B34A1DC(a1, a2);
  }

  sub_21B34B634();

  v9 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v9);

  MEMORY[0x21CEED5E0](46, 0xE100000000000000);
  sub_21B239564();
  swift_allocError();
  *v10 = 0xD000000000000024;
  *(v10 + 8) = 0x800000021B34D1D0;
  *(v10 + 16) = 3;
  return swift_willThrow();
}