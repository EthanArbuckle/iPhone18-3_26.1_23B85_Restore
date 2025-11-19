void sub_237C6B444(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237C6B6EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 8) = sub_237C69C34;
  *(v15 + 16) = v14;
  return a13 + a10;
}

uint64_t OUTLINED_FUNCTION_9_0()
{
  *(v0 + 8) = sub_237C688E0;
  result = *(v1 + 144);
  *(v2 + 16) = *(v1 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{
}

void OUTLINED_FUNCTION_16_0()
{
  v1 = v0[6];
  v0[36] = v1;
  v0[7] = v1;
}

uint64_t OUTLINED_FUNCTION_22_0()
{
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1)
{
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v2;
  v1[5] = a1;

  return type metadata accessor for ComposedTemporalTransformer();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_237EF86F0();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_50()
{
}

uint64_t OUTLINED_FUNCTION_51()
{
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{
  *(v1 + 336) = a1;

  return sub_237EF8A60();
}

uint64_t type metadata accessor for FullyConnectedNetwork()
{
  result = qword_27DEAD5C0;
  if (!qword_27DEAD5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237C6BCBC()
{
  sub_237C6BD60();
  if (v0 <= 0x3F)
  {
    sub_237EF6820();
    if (v1 <= 0x3F)
    {
      sub_237EF64B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237C6BD60()
{
  if (!qword_27DEAD5D0)
  {
    _s10DenseBlockVMa();
    v0 = sub_237EF8A60();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEAD5D0);
    }
  }
}

void sub_237C6BDB8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = _s10DenseBlockVMa();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_1_3();
  v24 = v3;
  OUTLINED_FUNCTION_12_1();
  v4 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *v0;
  v12 = *(*v0 + 16);
  if (v12)
  {
    v26 = v10;
    v27 = MEMORY[0x277D84F90];
    sub_237C630C4(0, v12, 0);
    v13 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = (v6 + 16);
    v25 = v6;
    v23 = *(v2 + 72);
    do
    {
      sub_237C6FE60(v13, v24, _s10DenseBlockVMa);
      (*v14)(v26, v24, v4);
      sub_237C6FEC0(v24, _s10DenseBlockVMa);
      v15 = v4;
      v17 = *(v27 + 16);
      v16 = *(v27 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = OUTLINED_FUNCTION_17_0(v16);
        sub_237C630C4(v19, v17 + 1, 1);
      }

      *(v27 + 16) = v17 + 1;
      v18 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      (*(v25 + 32))(v27 + v18 + *(v25 + 72) * v17, v26, v15);
      v13 += v23;
      --v12;
      v4 = v15;
    }

    while (v12);
    v20 = v25;
  }

  else
  {
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD318);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237F03530;
  v22 = type metadata accessor for FullyConnectedNetwork();
  (*(v20 + 16))(v21 + v18, v0 + *(v22 + 20), v4);
  sub_237E48430(v21);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237C6C074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a3;
  _s10DenseBlockVMa();
  OUTLINED_FUNCTION_1();
  v62 = v8;
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v57 = v13;
  v58 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  v56 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v64 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v55 = type metadata accessor for FullyConnectedNetwork();
  v21 = *(v55 + 28);
  sub_237EF64A0();
  v22 = sub_237EF64B0();
  OUTLINED_FUNCTION_28_1(v20, 1, v22);
  if (v23)
  {
    sub_237EF6480();
    OUTLINED_FUNCTION_28_1(v20, 1, v22);
    if (!v23)
    {
      sub_237C65484(v20, &qword_27DEAD5F0);
    }
  }

  else
  {
    (*(*(v22 - 8) + 32))(&a4[v21], v20, v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a2;
  v66 = a1;
  v59 = a1;
  sub_237EF8260();
  sub_237E481CC(inited);
  v25 = v66;
  if (!*(v66 + 16))
  {
    goto LABEL_26;
  }

  sub_237EF8260();
  v26 = sub_237C6C60C(1, v25, sub_237D6A768);
  v61 = v28;
  v30 = v29 >> 1;
  v31 = (v29 >> 1) - v27;
  if (__OFSUB__(v29 >> 1, v27))
  {
    goto LABEL_21;
  }

  if (!v31)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
LABEL_17:
    *a4 = v33;
    sub_237ED81A4(v25);
    v45 = v65;
    if (v46)
    {
      goto LABEL_25;
    }

    sub_237EF65F0();
    if ((v45 & 0x8000000000000000) == 0)
    {
      v47 = v64;
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v22);
      sub_237EF6590();
      sub_237C65484(v47, &qword_27DEAD5F0);
      sub_237EF65C0();
      v48 = v56;
      sub_237EF6800();
      v49 = v55;
      result = (*(v57 + 32))(&a4[*(v55 + 20)], v48, v58);
      *&a4[*(v49 + 24)] = v45;
      return result;
    }

    goto LABEL_22;
  }

  v32 = v27;
  v53 = v26;
  v54 = v25;
  v66 = MEMORY[0x277D84F90];
  sub_237C6306C(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v52 = a4;
  v60 = sub_237EF65F0();
  if ((v65 & 0x8000000000000000) == 0)
  {
    v34 = v65;
    v33 = v66;
    while (v32 < v30)
    {
      v35 = v11;
      v36 = v64;
      v37 = v22;
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v22);
      sub_237EF6590();
      v38 = v36;
      v11 = v35;
      sub_237C65484(v38, &qword_27DEAD5F0);
      sub_237EF65C0();
      sub_237EF6800();
      v39 = v63;
      sub_237EF6B80();
      *(v35 + *(v39 + 24)) = v34;
      v66 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        v44 = OUTLINED_FUNCTION_17_0(v40);
        sub_237C6306C(v44, v41 + 1, 1);
        v33 = v66;
      }

      *(v33 + 16) = v41 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_4_2();
      sub_237C6FE00(v35, v42, v43);
      ++v32;
      v22 = v37;
      if (v30 == v32)
      {
        swift_unknownObjectRelease();
        a4 = v52;
        v25 = v54;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t sub_237C6C60C(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_237C6FF60(0, (v4 - result) & ~((v4 - result) >> 63), v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3(0);

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237C6C6AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  v7 = *(type metadata accessor for FullyConnectedNetwork() + 28);
  v8 = sub_237EF64B0();
  OUTLINED_FUNCTION_4();
  (*(v9 + 16))(v6, v1 + v7, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  v12 = v1;
  v13 = a1;
  sub_237EF6B10();
  sub_237EF6520();
  return sub_237C65484(v6, &qword_27DEAD5F0);
}

uint64_t sub_237C6C7DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v43 = a2;
  v44 = _s10DenseBlockVMa();
  v36 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237EF6B10();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v11);
  v40 = &v35 - v14;
  v15 = sub_237EF6820();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for FullyConnectedNetwork() + 20);
  v37 = v18;
  v38 = v16;
  v20 = *(v16 + 16);
  v39 = v15;
  v20(v18, a1 + v19, v15);
  v21 = *a1;
  v22 = *(v7 + 16);
  v42 = v6;
  v22(v13, v43, v6);
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v21 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v43 = *(v36 + 72);
    v25 = (v7 + 8);
    v36 = v7;
    v26 = (v7 + 32);
    v27 = v42;
    do
    {
      sub_237C6FE60(v24, v5, _s10DenseBlockVMa);
      sub_237C6FF18(&qword_27DEAD5F8, _s10DenseBlockVMa);
      sub_237EF6850();
      sub_237C6FEC0(v5, _s10DenseBlockVMa);
      (*v25)(v13, v27);
      v28 = *v26;
      (*v26)(v13, v10, v27);
      v24 += v43;
      --v23;
    }

    while (v23);
    v29 = v36;
  }

  else
  {
    v29 = v7;
    v28 = *(v7 + 32);
  }

  v30 = v40;
  v31 = v42;
  v28(v40, v13, v42);
  v32 = v39;
  v33 = v37;
  sub_237EF6850();
  (*(v29 + 8))(v30, v31);
  return (*(v38 + 8))(v33, v32);
}

uint64_t sub_237C6CBB4()
{
  v1 = OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_1();
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_15_1();
  sub_237C6FF18(v5, v6);
  OUTLINED_FUNCTION_27_1();
  sub_237EF6830();
  sub_237EF6BC0();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_237C6CCB4()
{
  v1 = OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_1();
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_15_1();
  sub_237C6FF18(v5, v6);
  OUTLINED_FUNCTION_27_1();
  sub_237EF6830();
  sub_237EF6BB0();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_237C6CDB4()
{
  sub_237C6FF18(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork);

  return sub_237EF6890();
}

uint64_t sub_237C6CE30(uint64_t a1, uint64_t a2)
{
  v4 = sub_237C6FF18(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

void sub_237C6CEB4()
{
  OUTLINED_FUNCTION_37_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD658);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_26_1();
  v3 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_20_0();
  sub_237C6D0D4();
  v11 = v10;
  sub_237ED8290(v10, v0);
  OUTLINED_FUNCTION_28_1(v0, 1, v3);
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = sub_237EF6FE0();
  (*(v5 + 8))(v0, v3);
  if (!*(v13 + 16))
  {
LABEL_9:

    __break(1u);
    return;
  }

  sub_237EF8260();

  sub_237EF7070();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = OUTLINED_FUNCTION_8_1();
    sub_237D0BC38(v16, v17, v18, v11);
    v11 = v19;
  }

  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v15 >= v14 >> 1)
  {
    v20 = OUTLINED_FUNCTION_5_2(v14);
    sub_237D0BC38(v20, v21, v22, v11);
    v11 = v23;
  }

  *(v11 + 16) = v15 + 1;
  (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v9, v3);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C6D0D4()
{
  OUTLINED_FUNCTION_37_0();
  v119 = v1;
  v117 = v2;
  v121 = v3;
  v120 = v4;
  v135 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  v134 = v8;
  OUTLINED_FUNCTION_12_1();
  v133 = sub_237EF7030();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v131 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD658);
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_1();
  v122 = v17;
  OUTLINED_FUNCTION_12_1();
  v18 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = v116 - v23;
  MEMORY[0x28223BE20](v25);
  v139 = v116 - v26;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_1();
  v137 = v28;
  OUTLINED_FUNCTION_12_1();
  v29 = _s10DenseBlockVMa();
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_3();
  v143 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD660);
  OUTLINED_FUNCTION_18(v32);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  v35 = (v116 - v34);
  v118 = v0;
  v36 = *v0;
  v147 = 0;
  v148 = v36;
  v149 = 0;
  v150 = 0;
  v142 = (v20 + 8);
  v126 = 0x8000000237EFB4B0;
  v128 = (v6 + 16);
  v130 = *MEMORY[0x277D251A0];
  v129 = v10 + 104;
  v125 = v20 + 16;
  v132 = v20;
  v140 = v20 + 32;
  sub_237EF8260();
  v37 = MEMORY[0x277D84F90];
  v141 = xmmword_237F03530;
  v138 = v18;
  v124 = v24;
  for (i = v35; ; v35 = i)
  {
    sub_237E47794(v35);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD668);
    OUTLINED_FUNCTION_28_1(v35, 1, v38);
    if (v39)
    {
      break;
    }

    v40 = *v35;
    OUTLINED_FUNCTION_4_2();
    sub_237C6FE00(v35 + v41, v143, v42);
    v144 = v40;
    v145 = 0x79614C65736E6544;
    v146 = 0xEA00000000007265;
    v43 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
    v44 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_33_1(v44);
    if (v40)
    {
      v45 = v122;
      sub_237ED8290(v37, v122);
      v46 = OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_28_1(v46, v47, v18);
      if (v39)
      {
        goto LABEL_33;
      }

      v48 = v18;
      v49 = sub_237EF6FE0();
      (*v142)(v45, v48);
      if (!v49[2])
      {
        goto LABEL_34;
      }

      v51 = v49[4];
      v50 = v49[5];
      sub_237EF8260();
    }

    else
    {
      v50 = v121;
      sub_237EF8260();
      v51 = v120;
    }

    v44[2].n128_u64[0] = v51;
    v44[2].n128_u64[1] = v50;
    v52 = OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_33_1(v52);
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_237EF9330();

    v144 = v40;
    v145 = 0xD000000000000010;
    v146 = v126;
    v53 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v53);

    v54 = v146;
    v52[2].n128_u64[0] = v145;
    v52[2].n128_u64[1] = v54;
    OUTLINED_FUNCTION_19_1();
    v55 = v134;
    v56(v134, v143, v135);
    v57 = v131;
    sub_237DE2280(v55, v131);
    OUTLINED_FUNCTION_19_1();
    v58(v57, v130, v133);
    v59 = v137;
    sub_237EF7040();
    OUTLINED_FUNCTION_19_1();
    v60 = v138;
    v61(v139, v59, v138);
    v62 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = OUTLINED_FUNCTION_8_1();
      sub_237D0BC38(v76, v77, v78, v37);
      v62 = v79;
    }

    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    if (v64 >= v63 >> 1)
    {
      v80 = OUTLINED_FUNCTION_5_2(v63);
      sub_237D0BC38(v80, v81, v82, v62);
      v62 = v83;
    }

    *(v62 + 16) = v64 + 1;
    v65 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v66 = *(v132 + 72);
    v136 = *(v132 + 32);
    v136(v62 + v65 + v66 * v64, v139, v60);
    v144 = v40;
    v145 = 1431070034;
    v146 = 0xE400000000000000;
    v67 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v67);

    v68 = v127;
    sub_237ED8290(v62, v127);
    OUTLINED_FUNCTION_28_1(v68, 1, v60);
    if (v39)
    {
      __break(1u);
LABEL_32:

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:

      __break(1u);
      return;
    }

    v69 = sub_237EF6FE0();
    v70 = *v142;
    (*v142)(v68, v60);
    if (!*(v69 + 16))
    {
      goto LABEL_32;
    }

    sub_237EF8260();

    v145 = 0x7074754F554C6552;
    v146 = 0xEA00000000007475;
    v144 = v40;
    v71 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v71);

    v72 = v124;
    sub_237EF7050();

    v37 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = OUTLINED_FUNCTION_8_1();
      sub_237D0BC38(v84, v85, v86, v62);
      v37 = v87;
    }

    v74 = *(v37 + 16);
    v73 = *(v37 + 24);
    v18 = v138;
    if (v74 >= v73 >> 1)
    {
      v88 = OUTLINED_FUNCTION_5_2(v73);
      sub_237D0BC38(v88, v89, v90, v37);
      v37 = v91;
    }

    v70(v137, v18);
    OUTLINED_FUNCTION_13_0();
    sub_237C6FEC0(v143, v75);
    *(v37 + 16) = v74 + 1;
    v136(v37 + v65 + v74 * v66, v72, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400);
  v92 = OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_33_1(v92);
  v93 = v116[0];
  sub_237ED8290(v37, v116[0]);
  OUTLINED_FUNCTION_28_1(v93, 1, v18);
  if (v39)
  {
    sub_237C65484(v93, &qword_27DEAD658);
LABEL_25:
    v97 = v121;
    v92[2].n128_u64[0] = v120;
    v92[2].n128_u64[1] = v97;
    sub_237EF8260();
    goto LABEL_26;
  }

  v94 = sub_237EF6FE0();
  (*v142)(v93, v18);
  if (!v94[2])
  {

    goto LABEL_25;
  }

  v95 = v94[4];
  v96 = v94[5];
  sub_237EF8260();

  v92[2].n128_u64[0] = v95;
  v92[2].n128_u64[1] = v96;
LABEL_26:
  v98 = v117;
  v99 = OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_33_1(v99);
  *(v100 + 32) = v98;
  *(v100 + 40) = v119;
  v101 = type metadata accessor for FullyConnectedNetwork();
  v102 = v134;
  (*v128)(v134, &v118[*(v101 + 20)], v135);
  sub_237EF8260();
  v103 = v131;
  sub_237DE2280(v102, v131);
  OUTLINED_FUNCTION_19_1();
  v104(v103, v130, v133);
  v105 = v116[1];
  sub_237EF7040();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v110 = OUTLINED_FUNCTION_8_1();
    sub_237D0BC38(v110, v111, v112, v37);
    v37 = v113;
  }

  v107 = *(v37 + 16);
  v106 = *(v37 + 24);
  if (v107 >= v106 >> 1)
  {
    v114 = OUTLINED_FUNCTION_17_0(v106);
    sub_237D0BC38(v114, v107 + 1, 1, v37);
    v37 = v115;
  }

  *(v37 + 16) = v107 + 1;
  OUTLINED_FUNCTION_10_2();
  (*(v109 + 32))(v37 + v108 + *(v109 + 72) * v107, v105, v18);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C6DB78()
{
  OUTLINED_FUNCTION_37_0();
  v52 = v0;
  v53 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD658);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v51 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  OUTLINED_FUNCTION_20_0();
  sub_237C6D0D4();
  v18 = v17;
  sub_237ED8290(v17, v8);
  OUTLINED_FUNCTION_28_1(v8, 1, v9);
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = sub_237EF6FE0();
  v50 = *(v11 + 8);
  v50(v8, v9);
  if (!*(v20 + 16))
  {
LABEL_15:

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_237EF8260();

  sub_237EF7060();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = OUTLINED_FUNCTION_8_1();
    sub_237D0BC38(v34, v35, v36, v18);
    v18 = v37;
  }

  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  if (v22 >= v21 >> 1)
  {
    v38 = OUTLINED_FUNCTION_5_2(v21);
    sub_237D0BC38(v38, v39, v40, v18);
    v18 = v41;
  }

  *(v18 + 16) = v22 + 1;
  v24 = *(v11 + 32);
  v23 = v11 + 32;
  v25 = (*(v23 + 48) + 32) & ~*(v23 + 48);
  v26 = *(v23 + 40);
  v27 = v16;
  v28 = v24;
  v24(v18 + v25 + v26 * v22, v27, v9);
  sub_237ED8290(v18, v5);
  OUTLINED_FUNCTION_28_1(v5, 1, v9);
  if (v19)
  {
    goto LABEL_16;
  }

  v29 = sub_237EF6FE0();
  v50(v5, v9);
  if (!*(v29 + 16))
  {
LABEL_17:

    __break(1u);
    return;
  }

  sub_237EF8260();

  v54 = 0x64657A6565757153;
  v55 = 0xE800000000000000;
  MEMORY[0x2383E0710](v52, v53);
  v30 = v51;
  sub_237EF6FD0();

  v31 = v25;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = OUTLINED_FUNCTION_8_1();
    sub_237D0BC38(v42, v43, v44, v18);
    v18 = v45;
  }

  v33 = *(v18 + 16);
  v32 = *(v18 + 24);
  if (v33 >= v32 >> 1)
  {
    v46 = OUTLINED_FUNCTION_5_2(v32);
    sub_237D0BC38(v46, v47, v48, v18);
    v18 = v49;
  }

  *(v18 + 16) = v33 + 1;
  v28(v18 + v31 + v33 * v26, v30, v9);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237C6DF6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C535FC();
  *a1 = result;
  return result;
}

uint64_t sub_237C6DF9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237C53648(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237C6DFD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C535FC();
  *a1 = result;
  return result;
}

uint64_t sub_237C6E018@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C6DF34();
  *a1 = result;
  return result;
}

uint64_t sub_237C6E040(uint64_t a1)
{
  v2 = sub_237C6FC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237C6E07C(uint64_t a1)
{
  v2 = sub_237C6FC24();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237C6E0B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v130 = _s10DenseBlockVMa();
  OUTLINED_FUNCTION_1();
  v129 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD638);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_1();
  v153 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  v15 = OUTLINED_FUNCTION_18(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v148 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_1();
  v152 = v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v161 = *(v149 - 8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v151 = v20;
  OUTLINED_FUNCTION_12_1();
  v155 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v158 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v147 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_1();
  v162 = v25;
  OUTLINED_FUNCTION_12_1();
  v150 = type metadata accessor for DenseLayerStorage();
  OUTLINED_FUNCTION_1();
  v156 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_3();
  v154 = v28;
  OUTLINED_FUNCTION_12_1();
  v29 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v160 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v123 - v33;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD640);
  OUTLINED_FUNCTION_1();
  v127 = v35;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0);
  OUTLINED_FUNCTION_18(v38);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  v41 = &v123 - v40;
  type metadata accessor for FullyConnectedNetwork();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5();
  v45 = (v44 - v43);
  v124 = v46;
  v47 = *(v46 + 28);
  sub_237EF64A0();
  v48 = sub_237EF64B0();
  v49 = OUTLINED_FUNCTION_23_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, v50, v48);
  v133 = v45;
  v135 = v48;
  if (EnumTagSinglePayload == 1)
  {
    sub_237EF6480();
    v52 = OUTLINED_FUNCTION_23_0();
    if (__swift_getEnumTagSinglePayload(v52, v53, v48) != 1)
    {
      sub_237C65484(v41, &qword_27DEAD5F0);
    }
  }

  else
  {
    (*(*(v48 - 8) + 32))(v45 + v47, v41, v48);
  }

  v54 = a1[3];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_237C6FC24();
  v55 = v136;
  sub_237EFA190();
  if (v2)
  {
    v163 = v2;
    v56 = OUTLINED_FUNCTION_30_1();
    v57 = v135;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v56);
    (*(*(v57 - 8) + 8))(a1 + v47, v57);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD620);
  v164 = 0;
  sub_237C6FD04(&qword_27DEAD648, &qword_27DEAD650);
  a1 = v132;
  sub_237EF9970();
  v163 = 0;
  v123 = v47;
  v58 = v165;
  v59 = *(v165 + 16);
  v146 = v29;
  if (v59)
  {
    v142 = v34;
    v165 = MEMORY[0x277D84F90];
    sub_237C630C4(0, v59, 0);
    v60 = 0;
    v144 = v58 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    v61 = v165;
    v143 = v161 + 16;
    v159 = v161 + 8;
    v140 = v158 + 16;
    v139 = v158 + 8;
    v138 = v160 + 32;
    v62 = v163;
    v63 = v154;
    v145 = v58;
    v141 = v59;
    while (v60 < *(v58 + 16))
    {
      v161 = v61;
      sub_237C6FE60(v144 + *(v156 + 72) * v60, v63, type metadata accessor for DenseLayerStorage);
      OUTLINED_FUNCTION_19_1();
      v64 = v149;
      v65(v151, v63, v149);
      sub_237C651A0();
      OUTLINED_FUNCTION_10();
      v158 = v66;
      sub_237EF7F00();
      v163 = v62;
      v67 = OUTLINED_FUNCTION_27_1();
      v157 = v68;
      v68(v67);
      v69 = *(v150 + 20);
      v70 = v153;
      sub_237C6FDA0(v63 + v69, v153, &qword_27DEAD600);
      v71 = 1;
      v72 = __swift_getEnumTagSinglePayload(v70, 1, v64);
      sub_237C65484(v70, &qword_27DEAD600);
      if (v72 == 1)
      {
        v73 = v152;
        v74 = v155;
      }

      else
      {
        sub_237C6FDA0(v63 + v69, v137, &qword_27DEAD600);
        v75 = OUTLINED_FUNCTION_23_0();
        v77 = __swift_getEnumTagSinglePayload(v75, v76, v64);
        v73 = v152;
        if (v77 == 1)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_10();
        v74 = v155;
        v78 = v163;
        sub_237EF7F00();
        v163 = v78;
        v79 = OUTLINED_FUNCTION_27_1();
        v157(v79);
        v71 = 0;
      }

      __swift_storeEnumTagSinglePayload(v73, v71, 1, v74);
      OUTLINED_FUNCTION_19_1();
      v80 = v162;
      v81(v147, v162, v74);
      sub_237C6FDA0(v73, v148, &qword_27DEAD2C0);
      v82 = v142;
      sub_237EF67D0();
      sub_237C65484(v73, &qword_27DEAD2C0);
      OUTLINED_FUNCTION_19_1();
      v83(v80, v74);
      v63 = v154;
      sub_237C6FEC0(v154, type metadata accessor for DenseLayerStorage);
      v61 = v161;
      v165 = v161;
      v85 = *(v161 + 16);
      v84 = *(v161 + 24);
      v58 = v145;
      if (v85 >= v84 >> 1)
      {
        v88 = OUTLINED_FUNCTION_17_0(v84);
        sub_237C630C4(v88, v85 + 1, 1);
        v61 = v165;
      }

      ++v60;
      *(v61 + 16) = v85 + 1;
      OUTLINED_FUNCTION_10_2();
      (*(v87 + 32))(v61 + v86 + *(v87 + 72) * v85, v82, v146);
      v62 = v163;
      if (v141 == v60)
      {
        a1 = v132;
        v55 = v136;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_21:
  v57 = v135;
  OUTLINED_FUNCTION_31_1(1);
  v89 = v163;
  sub_237EF98E0();
  if (v89)
  {
    v163 = v89;
    OUTLINED_FUNCTION_25_1();
    v91(v55, a1);

    v56 = OUTLINED_FUNCTION_30_1();
    v47 = v123;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_31_1(2);
  v90 = sub_237EF98F0();
  v163 = 0;
  v145 = v58;
  if (v92)
  {
    v93 = 0;
  }

  else
  {
    v93 = v90;
  }

  v162 = v93;
  sub_237EF8260();
  v94 = sub_237C6C60C(1, v61, sub_237D69A28);
  v159 = v96;
  v98 = v97 >> 1;
  v99 = (v97 >> 1) - v95;
  if (__OFSUB__(v97 >> 1, v95))
  {
    goto LABEL_40;
  }

  if (v99)
  {
    v100 = v95;
    v156 = v94;
    v161 = v61;
    v165 = MEMORY[0x277D84F90];
    sub_237C6306C(0, v99 & ~(v99 >> 63), 0);
    if (v99 < 0)
    {
      goto LABEL_41;
    }

    v101 = v165;
    v157 = (v160 + 8);
    v158 = v160 + 16;
    while (v100 < v98)
    {
      v102 = v98;
      v103 = v160;
      v104 = *(v160 + 16);
      v105 = v128;
      v106 = v146;
      v104(v128, v159 + *(v160 + 72) * v100, v146);
      v107 = v131;
      v104(v131, v105, v106);
      v108 = v130;
      v109 = v162;
      sub_237EF6B80();
      (*(v103 + 8))(v105, v106);
      *(v107 + *(v108 + 24)) = v109;
      v165 = v101;
      v111 = *(v101 + 16);
      v110 = *(v101 + 24);
      if (v111 >= v110 >> 1)
      {
        v115 = OUTLINED_FUNCTION_17_0(v110);
        sub_237C6306C(v115, v111 + 1, 1);
        v101 = v165;
      }

      *(v101 + 16) = v111 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_4_2();
      sub_237C6FE00(v112, v113, v114);
      ++v100;
      v98 = v102;
      if (v102 == v100)
      {
        swift_unknownObjectRelease();
        v61 = v161;
        goto LABEL_36;
      }
    }

    goto LABEL_39;
  }

  swift_unknownObjectRelease();
  v101 = MEMORY[0x277D84F90];
LABEL_36:
  v116 = v133;
  *v133 = v101;
  v117 = v125;
  sub_237ED81E8(v61, v125);
  v118 = OUTLINED_FUNCTION_23_0();
  v119 = v146;
  if (__swift_getEnumTagSinglePayload(v118, v120, v146) != 1)
  {
    OUTLINED_FUNCTION_25_1();
    v121(v136, v132);

    v122 = v124;
    (*(v160 + 32))(v116 + *(v124 + 20), v117, v119);
    *(v116 + *(v122 + 24)) = v162;
    sub_237C6FE60(v116, v126, type metadata accessor for FullyConnectedNetwork);
    __swift_destroy_boxed_opaque_existential_1(v134);
    sub_237C6FEC0(v116, type metadata accessor for FullyConnectedNetwork);
    return;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_237C6EE40(void *a1)
{
  v2 = v1;
  v4 = sub_237EF6BA0();
  OUTLINED_FUNCTION_1();
  v107 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v114 = v10;
  OUTLINED_FUNCTION_12_1();
  v135 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v133 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  v129 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B0);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v142 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  v18 = OUTLINED_FUNCTION_18(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v141 = v20;
  OUTLINED_FUNCTION_12_1();
  v136 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v132 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  v128 = &v103 - v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  v144 = v26;
  OUTLINED_FUNCTION_12_1();
  v127 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v134 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_3();
  v125 = v29;
  OUTLINED_FUNCTION_12_1();
  v140 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_3();
  v139 = v33;
  OUTLINED_FUNCTION_12_1();
  v124 = type metadata accessor for DenseLayerStorage();
  OUTLINED_FUNCTION_1();
  v123 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  v138 = v36;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v103 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD608);
  OUTLINED_FUNCTION_18(v40);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v42);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD610);
  OUTLINED_FUNCTION_1();
  v110 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v103 - v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C6FC24();
  v109 = v46;
  sub_237EFA1B0();
  sub_237C6BDB8();
  v48 = v47;
  v49 = *(v47 + 16);
  if (v49)
  {
    v104 = v4;
    v105 = v2;
    v147 = MEMORY[0x277D84F90];
    v137 = v49;
    sub_237C6313C(0, v49, 0);
    v51 = *(v31 + 16);
    v50 = v31 + 16;
    v120 = v51;
    v52 = (*(v50 + 64) + 32) & ~*(v50 + 64);
    v103 = v48;
    v53 = v48 + v52;
    v143 = v147;
    v119 = *(v50 + 56);
    v118 = (v134 + 1);
    v117 = (v133 + 8);
    v116 = (v132 + 8);
    v112 = v132 + 32;
    v115 = v50 - 8;
    v55 = v128;
    v54 = v129;
    v56 = v136;
    v57 = v127;
    v122 = v50;
    v121 = v39;
    v134 = (v132 + 16);
    do
    {
      v136 = v53;
      v120(v139);
      v58 = v125;
      v59 = sub_237EF67F0();
      MEMORY[0x2383DED30](v59);
      v60 = *v118;
      (*v118)(v58, v57);
      v61 = v142;
      sub_237EF67C0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v57);
      if (EnumTagSinglePayload == 1)
      {
        sub_237C65484(v142, &qword_27DEAD2B0);
        v63 = 1;
      }

      else
      {
        v64 = v142;
        MEMORY[0x2383DED30](EnumTagSinglePayload);
        v60(v64, v57);
        v63 = 0;
      }

      v65 = v141;
      __swift_storeEnumTagSinglePayload(v141, v63, 1, v56);
      v66 = *(v124 + 20);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
      v133 = v66;
      __swift_storeEnumTagSinglePayload(v138 + v66, 1, 1, v132);
      v131 = *v134;
      v131(v55, v144, v56);
      sub_237EF6A30();
      sub_237EF6440();
      v130 = *v117;
      v67 = v130(v54, v135);
      v68 = v55;
      MEMORY[0x28223BE20](v67);
      OUTLINED_FUNCTION_32_1();
      v69 = v145;
      sub_237EF7DE0();
      v145 = v69;
      v70 = *v116;
      (*v116)(v68, v56);
      v71 = v126;
      sub_237C6FDA0(v65, v126, &qword_27DEAD2C0);
      v72 = OUTLINED_FUNCTION_23_0();
      if (__swift_getEnumTagSinglePayload(v72, v73, v56) == 1)
      {
        sub_237C65484(v65, &qword_27DEAD2C0);
        v70(v144, v56);
        OUTLINED_FUNCTION_19_1();
        v74(v139, v140);
        sub_237C65484(v71, &qword_27DEAD2C0);
      }

      else
      {
        OUTLINED_FUNCTION_19_1();
        v75 = v113;
        v76(v113, v71, v56);
        v131(v68, v75, v56);
        sub_237EF6A30();
        sub_237EF6440();
        v77 = v130(v54, v135);
        MEMORY[0x28223BE20](v77);
        OUTLINED_FUNCTION_32_1();
        v78 = v114;
        v79 = v145;
        sub_237EF7DE0();
        v145 = v79;
        v70(v75, v56);
        sub_237C65484(v141, &qword_27DEAD2C0);
        v70(v144, v56);
        OUTLINED_FUNCTION_19_1();
        v80(v139, v140);
        v70(v68, v56);
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v132);
        sub_237C6FC94(v78, v138 + v133);
      }

      OUTLINED_FUNCTION_16_1();
      v81 = v121;
      sub_237C6FE00(v82, v121, v83);
      v84 = v143;
      v147 = v143;
      v86 = *(v143 + 16);
      v85 = *(v143 + 24);
      v57 = v127;
      if (v86 >= v85 >> 1)
      {
        v91 = OUTLINED_FUNCTION_17_0(v85);
        sub_237C6313C(v91, v86 + 1, 1);
        v84 = v147;
      }

      *(v84 + 16) = v86 + 1;
      OUTLINED_FUNCTION_10_2();
      v143 = v87;
      OUTLINED_FUNCTION_16_1();
      sub_237C6FE00(v81, v88, v89);
      v53 = v136 + v119;
      v90 = v137-- == 1;
      v55 = v128;
      v54 = v129;
    }

    while (!v90);

    v2 = v105;
    v92 = v145;
    v4 = v104;
  }

  else
  {

    v143 = MEMORY[0x277D84F90];
    v92 = v145;
  }

  v93 = v108;
  sub_237CA3408(*v2, v108);
  v94 = _s10DenseBlockVMa();
  v95 = __swift_getEnumTagSinglePayload(v93, 1, v94);
  if (v95 == 1)
  {
    sub_237C65484(v93, &qword_27DEAD608);
  }

  else
  {
    (*(v107 + 16))(v106, v93 + *(v94 + 20), v4);
    OUTLINED_FUNCTION_13_0();
    sub_237C6FEC0(v93, v96);
    sub_237EF6B90();
    v97 = OUTLINED_FUNCTION_27_1();
    v98(v97);
  }

  v99 = v110;
  v147 = v143;
  v146 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD620);
  sub_237C6FD04(&qword_27DEAD628, &qword_27DEAD630);
  v100 = v111;
  v101 = v109;
  sub_237EF9A70();
  if (v92)
  {
    (*(v99 + 8))(v101, v100);
  }

  else
  {

    LOBYTE(v147) = 1;
    v146 = v95 == 1;
    sub_237EF99E0();
    type metadata accessor for FullyConnectedNetwork();
    LOBYTE(v147) = 2;
    sub_237EF99F0();
    return (*(v99 + 8))(v101, v100);
  }
}

unint64_t sub_237C6FC24()
{
  result = qword_27DEAD618;
  if (!qword_27DEAD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD618);
  }

  return result;
}

uint64_t sub_237C6FC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237C6FD04(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD620);
    sub_237C6FF18(a2, type metadata accessor for DenseLayerStorage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237C6FDA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237C6FE00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237C6FE60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237C6FEC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237C6FF18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_237C6FF60(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for FullyConnectedNetwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FullyConnectedNetwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237C70124()
{
  result = qword_27DEAD670;
  if (!qword_27DEAD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD670);
  }

  return result;
}

unint64_t sub_237C7017C()
{
  result = qword_27DEAD678;
  if (!qword_27DEAD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD678);
  }

  return result;
}

unint64_t sub_237C701D4()
{
  result = qword_27DEAD680;
  if (!qword_27DEAD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD680);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_237EF6B10();
}

__n128 OUTLINED_FUNCTION_33_1(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return swift_allocObject();
}

uint64_t AudioFeaturePrint.init(windowDuration:overlapFactor:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  type metadata accessor for AudioStreamAnalyzerPool();
  v6 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v8 = MEMORY[0x277D84F98];
  *(v6 + 112) = MEMORY[0x277D84F98];
  *(v6 + 120) = v8;
  *(a1 + 16) = v6;
  *a1 = a2;
  *(a1 + 8) = a3;
  return result;
}

uint64_t AudioFeaturePrint.applied<A>(to:eventHandler:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[2];
  (*(v18 + 16))(v13 - v12);
  v19 = sub_237C75918(0, &qword_27DEAD690);

  AnyTemporalSequence.init<A>(_:)(v14, v19, a3, a4, (a5 + 2));
  *a5 = v15;
  a5[1] = v16;
  a5[10] = a1;
  a5[11] = a2;
  a5[12] = v17;
  return sub_237C70604(a1);
}

uint64_t sub_237C70604(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_237C70614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AudioFeaturePrint.applied<A>(to:eventHandler:)(a3, a4, a5, a6, a1);
  v7 = *(v6 + 8);

  return v7();
}

uint64_t AudioFeaturePrint.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000022, 0x8000000237EFB540);
  sub_237EF8C10();
  MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFB570);
  sub_237EF8C10();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

double AudioFeaturePrint.FeatureSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_237C6FDA0((v1 + 2), v13, &qword_27DEAD698);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = type metadata accessor for AudioFeaturePrint.Observer();
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v9 = objc_allocWithZone(v8);
  sub_237C70604(v5);

  *(a1 + 112) = [v9 init];
  *(a1 + 144) = 0;
  *a1 = v3;
  *(a1 + 8) = v4;
  v10 = sub_237C6FDA0(v13, a1 + 16, &qword_27DEAD698);
  v14(&v12, v10);
  sub_237C65484(v13, &qword_27DEAD698);
  result = *&v12;
  *(a1 + 80) = v12;
  *(a1 + 120) = v5;
  *(a1 + 128) = v6;
  *(a1 + 136) = v7;
  return result;
}

uint64_t sub_237C708A8@<X0>(uint64_t a1@<X8>)
{
  AudioFeaturePrint.FeatureSequence.makeAsyncIterator()(a1);

  return sub_237C75850(v1);
}

uint64_t sub_237C708D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v8 = result;
    sub_237EF8B60();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_32_2();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v1;
    v13[5] = a1;
    v13[6] = v8;
    swift_unknownObjectRetain();
    v14 = v1;
    swift_unknownObjectRetain();
    v15 = OUTLINED_FUNCTION_23_1();
    sub_237C70BC8(v15, v16, v6, v17, v13);
  }

  return result;
}

uint64_t sub_237C709E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_237C70A04, 0, 0);
}

uint64_t sub_237C70A04()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCV18CreateMLComponents17AudioFeaturePrint8Observer_buffer);
  *(v0 + 40) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237C70A2C, v1);
}

uint64_t sub_237C70A2C()
{
  OUTLINED_FUNCTION_2_0();
  sub_237C70A8C(*(v0 + 24), *(v0 + 32), 0);
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C70A8C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = sub_237D2FCC4(a1);
  if ((v10 & 1) == 0)
  {
    return swift_endAccess();
  }

  v11 = (*(v8 + 56) + 32 * v9);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  swift_endAccess();
  if (a3 == 2 && !a2)
  {
    return sub_237C73F94(a1);
  }

  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  sub_237C751FC(a2, a3);
  sub_237D86CBC();
  v16 = *(*(v4 + 120) + 16);
  sub_237D86D90(v16);
  v17 = *(v4 + 120);
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 40 * v16;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = v13;
  *(v18 + 56) = v12;
  *(v18 + 64) = v14;
  *(v4 + 120) = v17;
  swift_endAccess();
}

uint64_t sub_237C70BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_237C6FDA0(a3, v24 - v10, &qword_27DEAD740);
  v12 = sub_237EF8B60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_237C65484(v11, &qword_27DEAD740);
  }

  else
  {
    sub_237EF8B50();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_237EF8AD0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_237EF85E0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_237C65484(a3, &qword_27DEAD740);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_237C65484(a3, &qword_27DEAD740);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_237C70F34(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  sub_237EF8B60();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_32_2();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v2;
  swift_unknownObjectRetain();
  v15 = a2;
  v16 = OUTLINED_FUNCTION_23_1();
  sub_237C70BC8(v16, v17, v8, v18, v13);
}

uint64_t sub_237C71020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_237C71044, 0, 0);
}

uint64_t sub_237C71044()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCV18CreateMLComponents17AudioFeaturePrint8Observer_buffer);
  *(v0 + 40) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237C7106C, v1);
}

uint64_t sub_237C7106C()
{
  OUTLINED_FUNCTION_2_0();
  sub_237C70A8C(*(v0 + 24), *(v0 + 32), 1u);
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C71148(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD740);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  sub_237EF8B60();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;
  v12 = v1;
  swift_unknownObjectRetain();
  v13 = OUTLINED_FUNCTION_23_1();
  sub_237C70BC8(v13, v14, v6, v15, v11);
}

uint64_t sub_237C71220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_237C71240, 0, 0);
}

uint64_t sub_237C71240()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCV18CreateMLComponents17AudioFeaturePrint8Observer_buffer);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_0_3(sub_237C71268, v1);
}

uint64_t sub_237C71268()
{
  OUTLINED_FUNCTION_2_0();
  sub_237C70A8C(*(v0 + 24), 0, 2u);
  OUTLINED_FUNCTION_3_0();

  return v1();
}

id sub_237C71330()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCV18CreateMLComponents17AudioFeaturePrint8Observer_buffer;
  type metadata accessor for AudioFeatureEventBuffer();
  swift_allocObject();
  *&v0[v2] = sub_237C74044();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_237C713CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AudioFeaturePrint.FeatureSequence.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v0[13] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v0[14] = v2;
  OUTLINED_FUNCTION_6_1(v2);
  v0[15] = v3;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_237C71514;

  return sub_237C718C0((v0 + 2));
}

uint64_t sub_237C71514()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_24_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237C71648()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *(v0 + 32);
  if (!*(v0 + 24))
  {
    v5 = v1;
    [v5 timeRange];
    *(v0 + 164) = v23;
    *(v0 + 180) = v24;
    *(v0 + 196) = v25;
    *(v0 + 152) = v21;
    *(v0 + 160) = v22;
    result = sub_237EF8F30();
    if (v22 == v7)
    {
      v19 = v5;
      *(v0 + 88) = v3;
      *(v0 + 96) = v2;
      sub_237EF8260();
      result = sub_237EF8F30();
      v20 = result;
      if (result >= v21)
      {
        v8 = *(v0 + 128);
        v9 = *(v0 + 136);
        v10 = *(v0 + 112);
        v11 = *(v0 + 120);
        v12 = *(v0 + 104);
        v13 = [v19 featureVector];
        sub_237EF7EB0();
        sub_237EF7DD0();
        sub_237C7265C(v1, 0);
        sub_237C7265C(v1, 0);
        sub_237C72678(v0 + 88);
        (*(v11 + 8))(v8, v10);
        *v12 = v3;
        *(v12 + 1) = v2;
        *(v12 + 2) = v21;
        *(v12 + 3) = v20;
        *(v12 + 4) = v22;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A8);
        (*(v11 + 32))(&v12[*(v14 + 28)], v9, v10);
        v15 = v12;
        v16 = 0;
        v17 = 1;
        v18 = v14;
LABEL_11:
        __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);

        OUTLINED_FUNCTION_10_3();
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (*(v0 + 24) != 1)
  {
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;
    sub_237C72678(v0 + 72);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A8);
    OUTLINED_FUNCTION_37_1();
    goto LABEL_11;
  }

  swift_willThrow();
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  sub_237C72678(v0 + 56);

  OUTLINED_FUNCTION_3_0();
LABEL_12:

  return v4();
}

uint64_t sub_237C718C0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_237C718E0, 0, 0);
}

uint64_t sub_237C718E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_16_2(*(*(v0 + 296) + 112));
  v1 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237C7193C()
{
  OUTLINED_FUNCTION_2_0();
  sub_237C72804((v0 + 248));
  *(v0 + 328) = *(v0 + 248);
  *(v0 + 344) = *(v0 + 264);
  *(v0 + 352) = *(v0 + 272);

  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237C719C0()
{
  OUTLINED_FUNCTION_2_0();
  if (*(v0 + 272))
  {
    v1 = *(v0 + 360);
    v2 = *(v0 + 288);
    v3 = *(v0 + 344);
    *v2 = *(v0 + 328);
    *(v2 + 16) = v3;
    *(v2 + 32) = v1;
    OUTLINED_FUNCTION_10_3();

    return v4();
  }

  else
  {
    v7 = (*(*(v0 + 296) + 80) + **(*(v0 + 296) + 80));
    v6 = swift_task_alloc();
    *(v0 + 368) = v6;
    *v6 = v0;
    v6[1] = sub_237C71AFC;

    return v7(v0 + 16);
  }
}

uint64_t sub_237C71AFC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C71BF8()
{
  OUTLINED_FUNCTION_2_0();
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v0[48] = v4;
  v0[49] = v5;
  v8 = v0[6];
  v9 = v0[7];
  v0[50] = v6;
  v0[51] = v7;
  v0[52] = v8;
  v0[53] = v9;
  if (!v5)
  {
    v12 = v0[38];
    v13 = v0[39];
    [*(v0[37] + 96) completeAnalysis];
    v0[64] = *(v12 + v13);
    goto LABEL_6;
  }

  v10 = v0[37];
  if (v10[12])
  {
    v11 = v10[13];
    v0[56] = v11;
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    OUTLINED_FUNCTION_15_2(v10[14]);
LABEL_6:

    v1 = OUTLINED_FUNCTION_2_3();

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v0[8] = v4;
  v0[9] = v5;
  v0[10] = v6;
  v0[11] = v7;
  v0[12] = v8;
  v0[13] = v9;
  v14 = swift_task_alloc();
  v0[54] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_20_1(v14);

  return sub_237C729BC();
}

uint64_t sub_237C71D60()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C71E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 296) + 104);
  *(v3 + 448) = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_15_2(*(v5 + 112));
    OUTLINED_FUNCTION_28_2();
    a1 = OUTLINED_FUNCTION_2_3();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_237C71ECC()
{
  OUTLINED_FUNCTION_12_2();
  v1 = sub_237C73530(v0[56]);
  v3 = v2;

  v0[58] = v1;
  v0[59] = v3;
  v4 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237C71F44()
{
  v1 = *(v0 + 472);
  if (!v1)
  {
LABEL_7:
    v5 = *(v0 + 416);
    v4 = *(v0 + 424);
    [*(*(v0 + 296) + 96) completeAnalysis];
    *(v0 + 112) = v12;
    *(v0 + 128) = v13;
    *(v0 + 144) = v5;
    *(v0 + 152) = v4;
    v6 = swift_task_alloc();
    *(v0 + 480) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_20_1(v6);

    return sub_237C729BC();
  }

  if (*(v0 + 464) == *(v0 + 384) && v1 == *(v0 + 392))
  {
  }

  else
  {
    v3 = sub_237EF9D40();

    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v0 + 416);
  v8 = *(v0 + 424);
  v10 = *(v0 + 392);
  *(v0 + 160) = *(v0 + 384);
  *(v0 + 168) = v10;
  *(v0 + 176) = *(v0 + 400);
  *(v0 + 192) = v9;
  *(v0 + 200) = v8;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_14_1(v11);

  return sub_237C735C8(v0 + 160);
}

uint64_t sub_237C720C0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[61] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v3[20] = v3[48];
    v10 = (v3 + 20);
    v12 = *(v10 + 256);
    v11 = *(v10 + 264);
    *(v10 + 8) = *(v10 + 232);
    *(v10 + 16) = *(v10 + 240);
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    v13 = swift_task_alloc();
    *(v10 + 336) = v13;
    *v13 = v5;
    OUTLINED_FUNCTION_14_1(v13);

    return sub_237C735C8(v10);
  }
}

uint64_t sub_237C72220()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C72304()
{
  OUTLINED_FUNCTION_2_0();
  v1 = OUTLINED_FUNCTION_27_2();
  v2 = *(v0 + 296);
  sub_237C75880(v1, v3, v4, v5, v6, v7);
  *(v0 + 504) = *(*(v2 + 112) + OBJC_IVAR____TtCV18CreateMLComponents17AudioFeaturePrint8Observer_buffer);
  OUTLINED_FUNCTION_28_2();
  v8 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237C7237C()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 560) = sub_237C73AB0() & 1;

  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237C723E8()
{
  OUTLINED_FUNCTION_2_0();
  if (*(v0 + 560))
  {
    v1 = *(v0 + 296);

    *(v1 + 96) = 0;
    *(v1 + 104) = 0;
    v2 = *(v0 + 288);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    OUTLINED_FUNCTION_10_3();

    return v3();
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
    v5 = OUTLINED_FUNCTION_2_3();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_237C72498()
{
  OUTLINED_FUNCTION_2_0();
  sub_237C72804((v0 + 208));
  v1 = *(v0 + 224);
  *(v0 + 520) = *(v0 + 208);
  *(v0 + 536) = v1;
  *(v0 + 552) = *(v0 + 240);

  v2 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_237C72514()
{
  OUTLINED_FUNCTION_2_0();
  if (*(v0 + 232))
  {
    v1 = *(v0 + 552);
    v2 = *(v0 + 520);
    v3 = *(v0 + 536);
  }

  else
  {
    v4 = *(v0 + 296);

    v1 = 0;
    v2 = 0uLL;
    *(v4 + 96) = 0u;
    v3 = 0uLL;
  }

  v5 = *(v0 + 288);
  *v5 = v2;
  *(v5 + 16) = v3;
  *(v5 + 32) = v1;
  OUTLINED_FUNCTION_10_3();

  return v6();
}

uint64_t sub_237C725A4()
{
  OUTLINED_FUNCTION_2_0();
  v0 = OUTLINED_FUNCTION_27_2();
  sub_237C75880(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237C72600()
{
  OUTLINED_FUNCTION_2_0();
  v0 = OUTLINED_FUNCTION_27_2();
  sub_237C75880(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_3_0();

  return v6();
}

void sub_237C7265C(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

unint64_t sub_237C726D0()
{
  result = qword_27DEAD6B0;
  if (!qword_27DEAD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD6B0);
  }

  return result;
}

unint64_t sub_237C72724(uint64_t a1)
{
  result = sub_237C7274C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237C7274C()
{
  result = qword_27DEAD6B8;
  if (!qword_27DEAD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD6B8);
  }

  return result;
}

unint64_t sub_237C727A4()
{
  result = qword_27DEAD6C0;
  if (!qword_27DEAD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD6C0);
  }

  return result;
}

uint64_t sub_237C72804@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 120);
  v5 = *(v2 + 128);
  sub_237EF8260();
  result = sub_237C60B7C(v5, v4);
  if (v8 == v9 >> 1)
  {
    result = swift_unknownObjectRelease();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_12:
    *a1 = v10;
    a1[1] = v11;
    a1[2] = v12;
    a1[3] = v13;
    a1[4] = v14;
    return result;
  }

  if (v8 >= (v9 >> 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v7 + 40 * v8;
    v10 = *v15;
    LOBYTE(v11) = *(v15 + 8);
    v12 = *(v15 + 16);
    v13 = *(v15 + 24);
    v14 = *(v15 + 32);
    sub_237C751FC(*v15, v11);
    sub_237EF8260();
    result = swift_unknownObjectRelease();
    v16 = *(v2 + 128);
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      v11 = v11;
      *(v2 + 128) = v17;
      if (*(*(v2 + 120) + 16) == v17)
      {
        swift_beginAccess();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_237CBB320(0, *(*(v2 + 120) + 16));
        }

        else
        {
          *(v2 + 120) = sub_237E98424();
        }
      }

      else
      {
        if (v17 < 16)
        {
          goto LABEL_12;
        }

        swift_beginAccess();
        sub_237CBB280(0, v17, MEMORY[0x277D84F90]);
      }

      result = swift_endAccess();
      *(v2 + 128) = 0;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237C729BC()
{
  OUTLINED_FUNCTION_2_0();
  *(v1 + 40) = v0;
  *(v1 + 48) = *v2;
  *(v1 + 64) = *(v2 + 40);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C72A54()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 40);
  *(v0 + 72) = [*(v0 + 64) format];
  v2 = *(v1 + 136);
  *(v0 + 80) = v2;

  return MEMORY[0x2822009F8](sub_237C72B00, v2, 0);
}

uint64_t sub_237C72B00()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[9];
  v1 = v0[10];
  swift_beginAccess();
  v0[11] = sub_237DD71A0(v2, *(v1 + 120));
  swift_endAccess();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C72BBC()
{
  OUTLINED_FUNCTION_39_0();
  v3 = *(v2 + 88);
  if (v3)
  {
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_18_1(v4);
    v5 = v3;
    v6 = v0;
    v7 = v1;
    goto LABEL_8;
  }

  v8 = *(v2 + 72);
  v9 = *(v2 + 40);
  v10 = [objc_allocWithZone(MEMORY[0x277CDC908]) initWithFeaturePrintType_];
  *(v2 + 96) = v10;
  v11 = *(v9 + 8);
  v12 = v10;
  *&v13 = v11;
  [v12 setOverlapFactor_];
  [v8 sampleRate];
  OUTLINED_FUNCTION_36_2();
  if (!(v16 ^ v17 | v15))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v14 <= -2147483650.0)
  {
    goto LABEL_11;
  }

  if (v14 >= 2147483650.0)
  {
    goto LABEL_12;
  }

  v18 = *(v2 + 80);
  *(v2 + 16) = sub_237EF9000();
  *(v2 + 24) = v19;
  *(v2 + 28) = v20;
  *(v2 + 32) = v21;
  [v12 setWindowDuration_];
  v6 = sub_237C72D64;
  v7 = v18;
LABEL_8:

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_237C72D64()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_29_1();
  sub_237C757A0(v1, v2, sub_237C90DFC, sub_237C75350);
  swift_endAccess();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C72E40()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_18_1(v2);
  v3 = v1;
  v4 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237C72ED4()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[6];
  v3 = v0[7];
  OUTLINED_FUNCTION_29_1();
  sub_237EF8260();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 112);
  sub_237C90E24(v4, v3, 0, 0, v2);
  *(v1 + 112) = v9;
  swift_endAccess();

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237C72FD0()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[5];

  *(v3 + 104) = v1;

  return MEMORY[0x2822009F8](sub_237C73074, v2, 0);
}

uint64_t sub_237C73074()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[9];
  v1 = v0[10];
  swift_beginAccess();
  v0[16] = sub_237DD71B4(v2, *(v1 + 112));
  swift_endAccess();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C73130()
{
  v1 = v0[16];
  if (v1)
  {
    v0[2] = 0;
    v3 = v0[13];
    v2 = v0[14];
    v4 = v1;
    v5 = [v4 addRequest:v3 withObserver:v2 error:v0 + 2];

    v6 = v0[2];
    v7 = v0[13];
    v8 = v0[9];
    if (v5)
    {
      v9 = v0[5];
      v10 = v6;

      *(v9 + 96) = v1;
    }

    else
    {
      v17 = v6;
      sub_237EF5DC0();

      swift_willThrow();
    }

    OUTLINED_FUNCTION_3_0();

    return v11();
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CDC8F0]) initWithFormat_];
    v0[17] = v12;
    v13 = v12;
    v14 = OUTLINED_FUNCTION_2_3();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_237C73308()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_29_1();
  sub_237C757A0(v1, v2, sub_237C90F60, sub_237C75578);
  swift_endAccess();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C733E4()
{
  v0[2] = 0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = [v1 addRequest:v2 withObserver:v0[14] error:v0 + 2];

  v4 = v0[2];
  v5 = v0[13];
  v6 = v0[9];
  if (v3)
  {
    v7 = v0[5];
    v8 = v4;

    *(v7 + 96) = v1;
  }

  else
  {
    v10 = v4;
    sub_237EF5DC0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237C73530(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (*(v3 + 16) && (v4 = sub_237D2FCC4(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 32 * v4);
    swift_bridgeObjectRetain_n();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v6;
}

uint64_t sub_237C735C8(uint64_t a1)
{
  v3 = *(a1 + 40);
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  return OUTLINED_FUNCTION_0_3(sub_237C735E8, 0);
}

uint64_t sub_237C735E8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[12];
  v2 = v1[12];
  v0[14] = v2;
  if (v2 && (v3 = v1[13], (v0[15] = v3) != 0))
  {
    v4 = v1[14];
    v5 = OBJC_IVAR____TtCV18CreateMLComponents17AudioFeaturePrint8Observer_buffer;
    v0[16] = v4;
    v0[17] = v5;
    v0[18] = *(v4 + v5);
    OUTLINED_FUNCTION_28_2();
    v6 = v2;
    v7 = OUTLINED_FUNCTION_2_3();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237C736B0()
{
  OUTLINED_FUNCTION_12_2();
  v1 = sub_237C73530(v0[15]);
  v3 = v2;

  v0[19] = v1;
  v0[20] = v3;
  v4 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_237C7372C()
{
  OUTLINED_FUNCTION_2_0();
  v0[21] = *(v0[16] + v0[17]);
  OUTLINED_FUNCTION_28_2();
  v1 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237C73790()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 176) = sub_237C73B7C(*(v0 + 120));

  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_237C737FC()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  [*(v0 + 112) analyzeAudioBuffer:v3 atAudioFramePosition:*(v0 + 176)];
  v4 = *(v2 + v1);
  *(v0 + 184) = v4;

  *(v0 + 192) = [v3 frameLength];

  return MEMORY[0x2822009F8](sub_237C738A0, v4, 0);
}

uint64_t sub_237C738A0()
{
  OUTLINED_FUNCTION_2_0();
  sub_237C73C08(*(v0 + 192), *(v0 + 120));

  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_237C7390C()
{
  v16 = v0;
  v1 = *(v0 + 96);
  v2 = *(v1 + 144);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 144) = v3;
    v4 = *(v1 + 120);
    v5 = *(v0 + 160);
    if (v4)
    {
      v6 = *(v0 + 152);
      v12 = *(v0 + 112);
      v7 = *(v0 + 96);
      v8 = *(v7 + 48);
      v9 = *(v7 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237F03530;
      *(inited + 32) = 0x656372756F73;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD480);
      *(inited + 48) = v6;
      *(inited + 56) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
      sub_237C758C4();
      v13[0] = 0xD000000000000011;
      v13[1] = 0x8000000237F039C0;
      v13[2] = v3;
      v13[3] = v8;
      v14 = v9;
      v15 = sub_237EF8230();
      v4(v13);
    }

    else
    {
    }

    OUTLINED_FUNCTION_3_0();

    v11();
  }
}

uint64_t sub_237C73AB0()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 112);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if ((*(*(v3 + 56) + ((v8 << 11) | (32 * v9)) + 24) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 1;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237C73B7C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (*(v3 + 16) && (v4 = sub_237D2FCC4(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 32 * v4 + 16);
    sub_237EF8260();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v6;
}

uint64_t (*sub_237C73C08(uint64_t a1, uint64_t a2))()
{
  swift_beginAccess();
  result = sub_237D82054(v9, a2);
  if (!*(v5 + 8))
  {
    (result)(v9, 0);
    return swift_endAccess();
  }

  v6 = *(v5 + 16);
  v7 = __OFADD__(v6, a1);
  v8 = v6 + a1;
  if (!v7)
  {
    *(v5 + 16) = v8;
    (result)(v9, 0);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_237C73CBC()
{
  OUTLINED_FUNCTION_2_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v1[1] = sub_237C6A904;

  return AudioFeaturePrint.FeatureSequence.Iterator.next()();
}

uint64_t sub_237C73D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237C73E14;

  return (sub_237DB53E0)(a1, a2, a3);
}

uint64_t sub_237C73E14()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_24_0();

  return v7();
}

uint64_t sub_237C73F10()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_237C73F40()
{
  sub_237C73F10();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_237C73F94(uint64_t a1)
{
  swift_beginAccess();
  v3 = sub_237D82054(v5, a1);
  if (*(v2 + 8))
  {
    *(v2 + 24) = 1;
  }

  (v3)(v5, 0);
  return swift_endAccess();
}

uint64_t sub_237C7401C()
{
  v0 = sub_237C73F10();

  return MEMORY[0x282200960](v0);
}

void *sub_237C74044()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = MEMORY[0x277D84F98];
  v0[15] = v1;
  v0[16] = 0;
  return v0;
}

void sub_237C74080(uint64_t a1@<X8>)
{
  v2 = sub_237EF6E60();
  v3 = OUTLINED_FUNCTION_3_2(v2, &v105);
  v89 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v6 - v5);
  v7 = sub_237EF7D20();
  v8 = OUTLINED_FUNCTION_3_2(v7, &__dst[64]);
  v84 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v83 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_2(&v81 - v14);
  v15 = sub_237EF6DC0();
  v16 = OUTLINED_FUNCTION_3_2(v15, &v104);
  *&v98 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v19 - v18);
  v20 = sub_237EF6E30();
  v21 = OUTLINED_FUNCTION_3_2(v20, &__dst[80]);
  v86 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v99 = &v81 - v25;
  v26 = sub_237EF7820();
  v91 = v26;
  OUTLINED_FUNCTION_1_1();
  v28 = v27;
  v92 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v33 = sub_237EF7730();
  v93 = v33;
  OUTLINED_FUNCTION_1_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5();
  v39 = v38 - v37;
  sub_237EF7720();
  v90 = v32;
  sub_237EF7810();
  v40 = type metadata accessor for CoreMLPackage();
  v41 = a1 + *(v40 + 24);
  *(v41 + 80) = 0;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *v41 = 0u;
  (*(v35 + 16))(a1, v39, v33);
  memcpy(__dst, v41, sizeof(__dst));
  sub_237C65484(__dst, &unk_27DEAD7B0);
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v41 + 32) = 0u;
  *(v41 + 48) = 0u;
  *(v41 + 64) = 0u;
  *(v41 + 80) = 0;
  v42 = *(v40 + 20);
  v43 = *(v28 + 16);
  v100 = a1;
  v43(a1 + v42, v32, v26);
  v44 = sub_237E34060();
  v46 = v45;
  v47 = sub_237EF7780();
  v49 = v48;
  swift_isUniquelyReferenced_nonNull_native();
  v101 = *v49;
  v50 = v46;
  v51 = v94;
  sub_237C91098(v44, v50, 0xD00000000000001ALL, 0x8000000237EFB6D0);
  *v49 = v101;
  v47(v102, 0);
  (*(v92 + 8))(v90, v91);
  (*(v35 + 8))(v39, v93);
  v102[0] = 16000;
  v52 = sub_237EF9AB0();
  v54 = v53;
  v55 = sub_237EF7780();
  v57 = v56;
  swift_isUniquelyReferenced_nonNull_native();
  v101 = *v57;
  sub_237C91098(v52, v54, 0x6152656C706D6173, 0xEA00000000006574);
  *v57 = v101;
  v58 = v95;
  v55(v102, 0);
  v59 = *MEMORY[0x277D25100];
  v60 = *(v98 + 104);
  v60(v51, v59, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  *(swift_allocObject() + 16) = xmmword_237F03530;
  OUTLINED_FUNCTION_36_2();
  if (!(v65 ^ v66 | v64))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v62 <= -9.22337204e18)
  {
    goto LABEL_6;
  }

  if (v62 < 9.22337204e18)
  {
    *(v61 + 32) = v62;
    v98 = v63;
    sub_237EF6DD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7C0);
    v67 = sub_237EF7D30();
    OUTLINED_FUNCTION_6_1(v67);
    v68 = swift_allocObject();
    *(v68 + 16) = v98;
    sub_237EF7D40();
    v69 = v82;
    *v82 = v68;
    v70 = *MEMORY[0x277D25110];
    v71 = sub_237EF6DF0();
    OUTLINED_FUNCTION_4();
    (*(v72 + 104))(v69, v70, v71);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v71);
    sub_237EF6E00();
    v60(v51, v59, v58);
    sub_237EF6DD0();
    sub_237EF7620();
    v73 = v83;
    sub_237EF7180();
    (*(v84 + 104))(v73, *MEMORY[0x277D25340], v85);
    sub_237EF7660();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358);
    v74 = sub_237EF70E0();
    OUTLINED_FUNCTION_6_1(v74);
    v94 = *(v75 + 72);
    *(swift_allocObject() + 16) = v98;
    v76 = v86;
    v93 = *(v86 + 16);
    v77 = v88;
    v78 = v87;
    v93(v88, v99, v87);
    LODWORD(v92) = *MEMORY[0x277D250A0];
    v91 = *(v89 + 104);
    v91(v77);
    sub_237EF7090();
    sub_237EF76B0();
    *(swift_allocObject() + 16) = v98;
    v79 = v96;
    v93(v77, v96, v78);
    (v91)(v77, v92, v97);
    sub_237EF7090();
    sub_237EF7700();
    v80 = *(v76 + 8);
    v80(v79, v78);
    v80(v99, v78);
    return;
  }

LABEL_7:
  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_237C74AB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237C74AF4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents5EventVIeghn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237C74B64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_237C74BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237C74C14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_237C74C54(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents23AudioFeatureEventBuffer33_D3AF87384C0F06E6ACC07135214D1FE4LLC0E4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237C74D1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_237C74D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_237C74DC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_237C74E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237C74E5C()
{
  OUTLINED_FUNCTION_39_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_2(v3);

  return sub_237C71220(v5, v6, v7, v8, v1);
}

uint64_t sub_237C74EFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_237C74FF4;

  return v6(a1);
}

uint64_t sub_237C74FF4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_10_3();

  return v3();
}

uint64_t sub_237C750D4()
{
  OUTLINED_FUNCTION_12_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_1(v1);

  return v4(v3);
}

uint64_t sub_237C75168()
{
  OUTLINED_FUNCTION_12_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_1(v1);

  return v4(v3);
}

id sub_237C751FC(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_237C75218()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_35_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_2(v3);

  return sub_237C71020(v5, v6, v7, v8, v1, v0);
}

uint64_t sub_237C752B4()
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_35_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_2(v3);

  return sub_237C709E0(v5, v6, v7, v8, v1, v0);
}

uint64_t sub_237C75350(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD808);
    v2 = sub_237EF9820();
    v17 = v2;
    sub_237EF9700();
    while (1)
    {
      v3 = sub_237EF9730();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_237C75918(0, &qword_27DEAD7F8);
      swift_dynamicCast();
      sub_237C75918(0, &unk_27DEAD810);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_237D28274(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_237EF9040();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_237C75578(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7F0);
    v2 = sub_237EF9820();
    v17 = v2;
    sub_237EF9700();
    while (1)
    {
      v3 = sub_237EF9730();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_237C75918(0, &qword_27DEAD7F8);
      swift_dynamicCast();
      sub_237C75918(0, &qword_27DEAD800);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_237D28288(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_237EF9040();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_237C757A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v9 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v9 < 0)
  {
    v11 = *v4;
  }

  else
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_237EF9710();
  if (!__OFADD__(result, 1))
  {
    *v6 = a4(v11, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v14;
    return result;
  }

  __break(1u);
  return result;
}

void sub_237C75880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

unint64_t sub_237C758C4()
{
  result = qword_27DEAD7E8;
  if (!qword_27DEAD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD7E8);
  }

  return result;
}

uint64_t sub_237C75918(uint64_t a1, unint64_t *a2)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_237C7596C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_237C759AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_237C759F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_2@<X0>(uint64_t a1@<X8>)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = *(a1 + v1);
}

uint64_t OUTLINED_FUNCTION_18_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 120) = *(a1 + v1);
}

uint64_t OUTLINED_FUNCTION_28_2()
{
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return swift_beginAccess();
}

void TemporalEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v1);
  type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C18);
    v7 = OUTLINED_FUNCTION_2_4();
    v8(v7);
    sub_237C66728(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880);
    OUTLINED_FUNCTION_8_3();
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void TemporalEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v0);
  type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C00);
    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedTemporalEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v1);
  type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C18);
    v7 = OUTLINED_FUNCTION_2_4();
    v8(v7);
    sub_237C66728(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880);
    OUTLINED_FUNCTION_8_3();
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedTemporalEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v0);
  type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C00);
    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedTemporalEstimator.writeWithOptimizer(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v1);
  type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C18);
    v7 = OUTLINED_FUNCTION_2_4();
    v8(v7);
    sub_237C66728(v11, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880);
    OUTLINED_FUNCTION_8_3();
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedTemporalEstimator.readWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v9);
  v5(v4, v0);
  type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v6, &off_284AD6C00);
    v7 = OUTLINED_FUNCTION_4_3();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_237EF5EF0();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return sub_237EF5EF0();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_7_1()
{

  sub_237D84AC4();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 80) = v2;
  *(v3 - 72) = a2;
  *(v3 - 104) = result;
  return result;
}

void OUTLINED_FUNCTION_10_4()
{

  sub_237D857C0();
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.decode(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v59 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *v3;
  v12 = a2[2];
  v60 = a2[1];
  v61 = v12;
  v13 = a2[5];
  v62 = a2[4];
  v63 = v13;
  v14 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(v16 + 8);
  WitnessTable = swift_getWitnessTable();
  v19 = v64;
  result = v17(v14, v14, WitnessTable, v15, v16);
  if (!v19)
  {
    v21 = v59;
    v64 = v7;
    v54 = a3;
    v55 = v14;
    sub_237C6BDB8();
    v23 = v22;
    v24 = *(v22 + 16);
    if (v24)
    {
      v53[1] = 0;
      *&v60 = MEMORY[0x277D84F90];
      sub_237C62DB0();
      v25 = v60;
      v26 = (v21 + 2);
      v27 = v21[2];
      v28 = *(v21 + 80);
      v53[0] = v23;
      v29 = v23 + ((v28 + 32) & ~v28);
      v58 = *(v26 + 7);
      v59 = v27;
      v57 = (v26 - 8);
      v30 = v64;
      do
      {
        v31 = v26;
        (v59)(v11, v29, v30);
        v32 = sub_237EF6810();
        v30 = v64;
        v33 = v32;
        (*v57)(v11, v64);
        *&v60 = v25;
        v34 = *(v25 + 16);
        if (v34 >= *(v25 + 24) >> 1)
        {
          sub_237C62DB0();
          v30 = v64;
          v25 = v60;
        }

        *(v25 + 16) = v34 + 1;
        *(v25 + 8 * v34 + 32) = v33;
        v29 += v58;
        --v24;
        v26 = v31;
      }

      while (v24);
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v35 = sub_237C60B7C(1, v25);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v55;
    if (v40)
    {
      sub_237EF9DE0();
      swift_unknownObjectRetain_n();
      v47 = swift_dynamicCastClass();
      if (!v47)
      {
        swift_unknownObjectRelease();
        v47 = MEMORY[0x277D84F90];
      }

      v48 = *(v47 + 16);

      if (__OFSUB__(v41 >> 1, v39))
      {
        __break(1u);
      }

      else if (v48 == (v41 >> 1) - v39)
      {
        v44 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v45 = v54;
        v46 = v56;
        if (v44)
        {
          goto LABEL_18;
        }

        v44 = MEMORY[0x277D84F90];
LABEL_17:
        swift_unknownObjectRelease();
LABEL_18:
        v49 = sub_237C60C7C(v44, v46);

        if ((v49 & 1) == 0)
        {
          v50 = sub_237EF93E0();
          swift_allocError();
          v52 = v51;
          sub_237EF93D0();
          (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84168], v50);
          swift_willThrow();
          return (*(*(v42 - 8) + 8))(v45, v42);
        }

        return result;
      }

      swift_unknownObjectRelease();
    }

    sub_237C62A88(v35, v37, v39, v41);
    v44 = v43;
    v45 = v54;
    v46 = v56;
    goto LABEL_17;
  }

  return result;
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v44 = a1;
  v5 = type metadata accessor for FullyConnectedNetwork();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v41 = v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(v17 + 8);
  v19 = a3[2];
  v43[0] = a3[1];
  v43[1] = v19;
  v20 = a3[5];
  v43[2] = a3[4];
  v43[3] = v20;
  v21 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
  WitnessTable = swift_getWitnessTable();
  v23 = v42;
  result = v18(v44, v21, WitnessTable, v16, v17);
  if (!v23)
  {
    v25 = v38;
    v26 = v40;
    v27 = v41;
    sub_237C653E0(v44 + *(v21 + 84), v41, &qword_27DEAD298);
    if (__swift_getEnumTagSinglePayload(v27, 1, v39) == 1)
    {
      return sub_237C65484(v27, &qword_27DEAD298);
    }

    else
    {
      v28 = v15;
      sub_237C62E2C(v27, v15);
      sub_237C653E0(v15, v25, &qword_27DEAD2A0);
      v29 = OUTLINED_FUNCTION_36();
      sub_237C62F44(v29, v30, v31);
      *&v43[0] = sub_237D977AC(v25, v26);
      *(&v43[0] + 1) = v32;
      v33 = *(a2 + 24);
      v34 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v33);
      v35 = *(v34 + 16);
      v36 = sub_237C62E9C();
      v35(v43, &type metadata for AdamStorage, v36, v33, v34);
      sub_237C65484(v28, &qword_27DEAD2A0);
    }
  }

  return result;
}

void FullyConnectedNetworkMultiLabelClassifier.decodeWithOptimizer(from:)(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B0);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v10);
  v192 = type metadata accessor for Moment(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v12);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v188 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v18);
  v185 = sub_237EF6C60();
  OUTLINED_FUNCTION_1();
  v189 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v21);
  v175 = type metadata accessor for AdamDenseLayer(0);
  OUTLINED_FUNCTION_1();
  v181 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_3();
  v195 = v24;
  v186 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v180 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v193 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17(&v153 - v29);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0);
  OUTLINED_FUNCTION_18(v32);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  v187 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v153 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v42 = &v153 - v41;
  v43 = a2[2];
  v197[0] = a2[1];
  v197[1] = v43;
  v44 = a2[5];
  v197[2] = a2[4];
  v197[3] = v44;
  v45 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel();
  OUTLINED_FUNCTION_1();
  v47 = v46;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  v50 = (&v153 - v49);
  v51 = v196;
  FullyConnectedNetworkMultiLabelClassifier.decode(from:)(a1, a2, &v153 - v49);
  if (v51)
  {
    return;
  }

  v196 = v38;
  v170 = v39;
  v183 = v50;
  v190 = v42;
  v154 = v47;
  v174 = v45;
  v52 = *(a1 + 24);
  v53 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v52);
  v54 = *(v53 + 16);
  v55 = sub_237C62EF0();
  v54(v197, &type metadata for AdamStorage, &type metadata for AdamStorage, v55, v52, v53);
  v191 = 0;
  v167 = *(&v197[0] + 1);
  v56 = sub_237EF6580();
  v57 = v196;
  __swift_storeEnumTagSinglePayload(v196, 1, 1, v56);
  v58 = sub_237EF6530();
  __swift_storeEnumTagSinglePayload(v187, 1, 1, v58);
  v59 = type metadata accessor for FullyConnectedNetwork();
  v60 = sub_237C77B74();
  v61 = v183;
  v173 = v59;
  v172 = v60;
  sub_237EF6680();
  sub_237C6BDB8();
  v164 = *(v62 + 16);
  v163 = v180 + 16;
  v157 = (v180 + 32);
  v171 = (v189 + 1);
  v189 = (v188 + 2);
  ++v188;
  v161 = v180 + 8;
  v63 = v185;
  v64 = v186;
  v65 = v195;
  OUTLINED_FUNCTION_15();
  v69 = v174;
  v70 = v179;
  for (i = v66; ; v66 = i)
  {
    if (v164 == v68)
    {

LABEL_20:
      v144 = *(v69 + 84);
      v145 = v183;
      sub_237C65484(v183 + v144, &qword_27DEAD298);
      sub_237C62E2C(v190, v145 + v144);
      OUTLINED_FUNCTION_29();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v170);
      v149 = v154;
      (*(v154 + 16))(v156, v145, v69);
      (*(v149 + 8))(v145, v69);
      return;
    }

    if (v68 >= *(v66 + 16))
    {
      break;
    }

    v71 = v66 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v68;
    v72 = *(v67 + 16);
    v194 = v68;
    v72(v70, v71, v64);
    v73 = *(v167 + 16);
    if (v194 == v73)
    {

      OUTLINED_FUNCTION_8();
      v143(v70, v64);
      goto LABEL_20;
    }

    if (v194 >= v73)
    {
      goto LABEL_24;
    }

    v74 = v167 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + v61[9] * v194;
    v75 = v70;
    v76 = *(v178 + 48);
    v77 = *v157;
    v78 = v177;
    (*v157)(v177, v75, v64);
    sub_237C62F44(v74, v78 + v76, type metadata accessor for AdamDenseLayer);
    v77(v193, v78, v64);
    sub_237C6524C(v78 + v76, v65, type metadata accessor for AdamDenseLayer);
    sub_237EF67F0();
    v79 = v57;
    LODWORD(v77) = sub_237EF6C40();
    v80 = *v171;
    (*v171)(v57, v63);
    v81 = OUTLINED_FUNCTION_24();
    MEMORY[0x28223BE20](v81);
    OUTLINED_FUNCTION_17_1();
    *(v82 - 8) = v77;
    v83 = v191;
    sub_237C62804(sub_237C77BCC, v84, v81);
    v86 = v85;
    v87 = v65;
    v89 = v88;

    if (!v86)
    {

      sub_237C6514C();
      swift_allocError();
      *v150 = 0xD000000000000025;
      v150[1] = 0x8000000237EFB480;
      swift_willThrow();
      OUTLINED_FUNCTION_0_0();
      sub_237C652A8(v87, v151);
      OUTLINED_FUNCTION_8();
      v152(v193, v64);
      sub_237C65484(v190, &qword_27DEAD2A0);
      (*(v154 + 8))(v79, v174);
      return;
    }

    v168 = v80;

    v90 = *v189;
    v91 = v182;
    (*v189)(v182, v87, v198);
    v187 = sub_237C651A0();
    v92 = sub_237EF6B10();

    OUTLINED_FUNCTION_10();
    v191 = v93;
    sub_237EF7F00();
    v184 = v83;
    v196 = v89;
    v94 = *v188;
    (*v188)(v91, v198);
    OUTLINED_FUNCTION_29();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v92);
    v98 = v170;
    v99 = *(v170 + 64);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300);
    v159 = v99;
    sub_237EF6650();
    v101 = v195 + *(v192 + 20);
    v169 = v90;
    v90(v91, v101, v198);

    v102 = v184;
    v103 = v198;
    v104 = v176;
    sub_237EF7F00();
    v191 = v102;
    v105 = v91;
    v106 = v104;
    v160 = v94;
    v94(v105, v103);
    OUTLINED_FUNCTION_29();
    v184 = v92;
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v92);
    v110 = *(v98 + 68);
    v158 = v100;
    sub_237EF6650();
    v111 = v195;
    v61 = &qword_27DEAD2B8;
    v57 = &unk_237F13410;
    sub_237C653E0(v195 + *(v175 + 20), v104, &qword_27DEAD2B8);
    if (__swift_getEnumTagSinglePayload(v104, 1, v192) == 1)
    {

      OUTLINED_FUNCTION_0_0();
      v65 = v111;
      sub_237C652A8(v111, v112);
      OUTLINED_FUNCTION_8();
      v64 = v186;
      v113(v193, v186);
      sub_237C65484(v106, &qword_27DEAD2B8);
LABEL_14:
      v63 = v185;
      OUTLINED_FUNCTION_15();
      goto LABEL_17;
    }

    v155 = v110;
    sub_237C6524C(v104, v165, type metadata accessor for Moment);
    v114 = v166;
    v115 = v193;
    v61 = v193;
    sub_237EF67C0();
    v63 = v185;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v114, 1, v185);
    v64 = v186;
    if (EnumTagSinglePayload == 1)
    {

      sub_237C65484(v114, &qword_27DEAD2B0);
    }

    else
    {
      v117 = sub_237EF6C40();
      v168(v114, v63);
      v118 = OUTLINED_FUNCTION_24();
      MEMORY[0x28223BE20](v118);
      OUTLINED_FUNCTION_17_1();
      *(v119 - 8) = v117;
      v120 = v191;
      sub_237C62804(sub_237C77BCC, v121, v118);
      v61 = v122;
      v124 = v123;
      v57 = v120;

      if (v61)
      {

        v125 = v182;
        v126 = v198;
        OUTLINED_FUNCTION_37();
        v127();

        OUTLINED_FUNCTION_10();
        v191 = v128;
        v168 = v124;
        v129 = v184;
        sub_237EF7F00();
        v153 = v120;
        v130 = v160;
        v160(v125, v126);
        OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v131, v132, v133, v129);
        v57 = v190;
        sub_237EF6650();
        OUTLINED_FUNCTION_37();
        v134();
        v135 = v153;
        sub_237EF7F00();
        v191 = v135;
        v130(v125, v126);
        OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v136, v137, v138, v129);
        v61 = &v57[v155];
        sub_237EF6650();

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0_0();
        v65 = v195;
        sub_237C652A8(v195, v139);
        OUTLINED_FUNCTION_8();
        v64 = v186;
        v140(v193, v186);
        goto LABEL_14;
      }

      v191 = v120;

      v63 = v185;
      v64 = v186;
    }

    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0_0();
    v65 = v195;
    sub_237C652A8(v195, v141);
    OUTLINED_FUNCTION_8();
    v142(v115, v64);
LABEL_17:
    v68 = v194 + 1;
    v69 = v174;
    v67 = v180;
    v70 = v179;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

unint64_t sub_237C77B74()
{
  result = qword_27DEAD2E8;
  if (!qword_27DEAD2E8)
  {
    type metadata accessor for FullyConnectedNetwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD2E8);
  }

  return result;
}

uint64_t ComposedTemporalTransformer.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedTemporalTransformer();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ComposedTemporalTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = a5[3];
  OUTLINED_FUNCTION_1_1();
  v8[11] = v10;
  v8[12] = swift_task_alloc();
  v8[13] = a5[2];
  OUTLINED_FUNCTION_1_1();
  v8[14] = v11;
  v8[15] = swift_task_alloc();
  v8[16] = a5[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[17] = AssociatedTypeWitness;
  v8[18] = *(AssociatedTypeWitness - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237C77F68, 0, 0);
}

uint64_t sub_237C77F68()
{
  OUTLINED_FUNCTION_12_2();
  v12 = v0[16];
  ComposedTemporalTransformer.inner.getter(v0[6], v0[15]);
  v11 = (*(v12 + 40) + **(v12 + 40));
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_237C78094;
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v2, v9, v7, v8, v5, v6, v4, v3);
}

uint64_t sub_237C78094()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237C785EC;
  }

  else
  {
    v8 = sub_237C781F8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237C781F8()
{
  v1 = v0[21];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[6];
    ComposedTemporalTransformer.outer.getter(v4, v0[12]);
    v5 = *(v4 + 40);
    v14 = (*(v5 + 40) + **(v5 + 40));
    v6 = swift_task_alloc();
    v0[22] = v6;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v6 = v0;
    v6[1] = sub_237C783F0;
    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[2];

    return v14(v13, v8, v11, v12, v9, AssociatedConformanceWitness, v10, v5);
  }
}

uint64_t sub_237C783F0()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237C78668;
  }

  else
  {
    v8 = sub_237C78554;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237C78554()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C785EC()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C78668()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C786FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726574756FLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t _s18CreateMLComponents12MatrixLayoutO9hashValueSivg_0(char a1)
{
  sub_237EFA120();
  MEMORY[0x2383E2210](a1 & 1);
  return sub_237EFA170();
}

uint64_t sub_237C78814(char a1)
{
  if (a1)
  {
    return 0x726574756FLL;
  }

  else
  {
    return 0x72656E6E69;
  }
}

uint64_t sub_237C7887C()
{
  sub_237EFA120();
  sub_237C5ED64(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237C788DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C786FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C7893C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237C78970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C789C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237C78A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C78AF8;

  return ComposedTemporalTransformer.applied<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237C78AF8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t ComposedTemporalTransformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001CLL, 0x8000000237EFB6F0);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](8236, 0xE200000000000000);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t static ComposedTemporalTransformer<>.== infix(_:_:)()
{
  if (sub_237EF8520())
  {
    type metadata accessor for ComposedTemporalTransformer();
    v0 = sub_237EF8520();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t ComposedTemporalTransformer<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = *(a2 + 16);
  v17 = a3;
  v5 = *(a2 + 40);
  v18 = v16;
  v14 = *(a2 + 24);
  v19 = v14;
  v20 = v5;
  type metadata accessor for ComposedTemporalTransformer.CodingKeys();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v18) = 0;
  v12 = v21;
  sub_237EF9A70();
  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t ComposedTemporalTransformer<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a8;
  v43 = a7;
  v49 = a5;
  OUTLINED_FUNCTION_1_1();
  v41 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v46 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  v45 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v50 = v20 - v19;
  type metadata accessor for ComposedTemporalTransformer.CodingKeys();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  v52 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v44 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v51 = a2;
  v53 = a2;
  v54 = a3;
  v47 = a3;
  v55 = a4;
  v56 = a6;
  v25 = type metadata accessor for ComposedTemporalTransformer();
  OUTLINED_FUNCTION_1_1();
  v40 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v39 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v24;
  v30 = v57;
  sub_237EFA190();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v25;
  v31 = v45;
  v33 = v46;
  v32 = v47;
  LOBYTE(v53) = 0;
  sub_237EF9970();
  (*(v31 + 32))(v29, v50, v51);
  LOBYTE(v53) = 1;
  sub_237EF9970();
  v34 = OUTLINED_FUNCTION_7_2();
  v35(v34);
  v36 = v57;
  (*(v41 + 32))(&v29[*(v57 + 52)], v33, v32);
  v37 = v40;
  (*(v40 + 16))(v42, v29, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v37 + 8))(v29, v36);
}

uint64_t Transformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return sub_237C793E8(a1, a2, a3, a4, a5, TransformerToTemporalAdaptor.init(_:), &protocol conformance descriptor for TransformerToTemporalAdaptor<A>, a6);
}

{
  return sub_237C793E8(a1, a2, a3, a4, a5, TemporalAdaptor.init(_:), &protocol conformance descriptor for TemporalAdaptor<A>, a6);
}

uint64_t sub_237C793E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a5;
  v32 = a1;
  v33 = a6;
  v9 = v8;
  v34 = a8;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_1_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v26 = v25(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v31 - v28;
  (*(v20 + 16))(v24, v9, a2);
  v33(v24, a2, a4);
  (*(v14 + 16))(v18, v32, a3);
  swift_getWitnessTable();
  return ComposedTemporalTransformer.init(_:_:)(v29, v18, v26, a3, v34);
}

uint64_t TemporalTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return sub_237C7964C(a1, a2, a3, a4, a5, TransformerToTemporalAdaptor.init(_:), &protocol conformance descriptor for TransformerToTemporalAdaptor<A>, a6);
}

{
  return sub_237C7964C(a1, a2, a3, a4, a5, TemporalAdaptor.init(_:), &protocol conformance descriptor for TemporalAdaptor<A>, a6);
}

{
  v7 = v6;
  v27[0] = a6;
  v27[1] = a4;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for SupervisedEstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v19);
  v21 = (v27 - v20);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  (*(v25 + 16))(v24 - v23, v7, a2);
  (*(v13 + 16))(v17, a1, a3);
  SupervisedEstimatorToTemporalAdaptor.init(_:)(v21, v17, a3, a5);
  swift_getWitnessTable();
  return PreprocessingSupervisedTemporalEstimator.init(_:_:)(v21, v18, v27[0]);
}

{
  v7 = v6;
  v27[0] = a6;
  v27[1] = a4;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = type metadata accessor for EstimatorToTemporalAdaptor();
  OUTLINED_FUNCTION_22_3();
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  (*(v25 + 16))(v24 - v23, v7, a2);
  (*(v13 + 16))(v17, a1, a3);
  EstimatorToTemporalAdaptor.init(_:)(v17, a3, a5);
  swift_getWitnessTable();
  return PreprocessingTemporalEstimator.init(_:_:)(v21, v18, v27[0]);
}

uint64_t sub_237C7964C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a4;
  v33 = a6;
  v34 = a8;
  v9 = v8;
  OUTLINED_FUNCTION_1_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v23 = v22(0, v20, v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v33 - v25;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  (*(v31 + 16))(v29 - v28, v9, a2);
  (*(v15 + 16))(v19, a1, a3);
  v33(v19, a3, a5);
  swift_getWitnessTable();
  return ComposedTemporalTransformer.init(_:_:)(v30, v26, a2, v23, v34);
}

uint64_t TemporalTransformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return ComposedTemporalTransformer.init(_:_:)(v17, v13, a2, a3, a4);
}

{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingSupervisedTemporalEstimator.init(_:_:)(v13, a3, a4);
}

{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v18, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingTemporalEstimator.init(_:_:)(v13, a3, a4);
}

uint64_t sub_237C799C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237C79B88(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for DenseLayerStorage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_237C79E9C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void DetectedObject.boundingBox.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t DetectedObject.init(boundingBox:label:probability:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, float a8@<S4>)
{
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  v12 = type metadata accessor for DetectedObject();
  result = (*(*(a2 - 8) + 32))(a3 + *(v12 + 44), a1, a2);
  *(a3 + *(v12 + 48)) = a8;
  return result;
}

BOOL static DetectedObject.== infix(_:_:)(CGRect *a1, CGRect *a2)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v5 = type metadata accessor for DetectedObject();
    return (sub_237EF8520() & 1) != 0 && *(&a1->origin.x + *(v5 + 48)) == *(&a2->origin.x + *(v5 + 48));
  }

  return result;
}

uint64_t sub_237C7A250(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237C7A368(unsigned __int8 a1)
{
  sub_237EFA120();
  MEMORY[0x2383E2210](a1);
  return sub_237EFA170();
}

uint64_t sub_237C7A3B0(char a1)
{
  if (!a1)
  {
    return 0x676E69646E756F62;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x6E656469666E6F63;
}

uint64_t sub_237C7A448()
{
  sub_237EFA120();
  sub_237C5EDA8(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237C7A4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C7A250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C7A500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C6DF34();
  *a1 = result;
  return result;
}

uint64_t sub_237C7A534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C7A588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DetectedObject<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v14[0] = *(a2 + 16);
  type metadata accessor for DetectedObject.CodingKeys();
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v14[2];
  sub_237EFA1B0();
  v11 = v10[1];
  v15 = *v10;
  v16 = v11;
  v17 = 0;
  type metadata accessor for CGRect(0);
  sub_237C7AC1C(&qword_27DEAD988);
  v12 = v14[3];
  sub_237EF9A70();
  if (!v12)
  {
    LOBYTE(v15) = 1;
    sub_237EF9A70();
    LOBYTE(v15) = 2;
    sub_237EF9A40();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t DetectedObject<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = a3;
  v34 = a4;
  OUTLINED_FUNCTION_1_1();
  v35 = v6;
  MEMORY[0x28223BE20](v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetectedObject.CodingKeys();
  OUTLINED_FUNCTION_0_5();
  swift_getWitnessTable();
  v40 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v36 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v38 = a2;
  v13 = type metadata accessor for DetectedObject();
  OUTLINED_FUNCTION_1_1();
  v33 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = v12;
  v18 = v42;
  sub_237EFA190();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v17;
  v32 = v13;
  v21 = v37;
  v20 = v38;
  v42 = a1;
  type metadata accessor for CGRect(0);
  v43 = 0;
  sub_237C7AC1C(qword_27DEAD990);
  sub_237EF9970();
  v22 = v45;
  *v19 = v44;
  *(v19 + 1) = v22;
  LOBYTE(v44) = 1;
  v23 = v20;
  sub_237EF9970();
  v24 = v32;
  v25 = *(v35 + 32);
  v39 = *(v32 + 44);
  v25(&v19[v39], v21, v23);
  LOBYTE(v44) = 2;
  sub_237EF9940();
  v27 = v26;
  v28 = OUTLINED_FUNCTION_2_6();
  v29(v28);
  *&v19[*(v24 + 48)] = v27;
  v30 = v33;
  (*(v33 + 16))(v34, v19, v24);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v30 + 8))(v19, v24);
}

uint64_t sub_237C7AC1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_237C7AC88()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_DWORD *sub_237C7AD18(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v8 = ((*(*(v4 - 8) + 64) + ((v7 + 32) & ~v7) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v9 = a2 - v6;
    v10 = v8 & 0xFFFFFFFC;
    if ((v8 & 0xFFFFFFFC) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_18:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        return (v6 + (v10 | v15) + 1);
      default:
LABEL_22:
        if (v6)
        {
          return __swift_getEnumTagSinglePayload((result + v7 + 32) & ~v7, v6, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload((result + v7 + 32) & ~v7, v6, v4);
}

void sub_237C7AE3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = ((*(v7 + 64) + ((v10 + 32) & ~v10) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(v7 + 64) + ((v10 + 32) & ~v10) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v18 = &a1[v10 + 32] & ~v10;

          __swift_storeEnumTagSinglePayload(v18, a2, v9, v6);
        }

        break;
    }
  }

  else
  {
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2 - v9;
    }

    if (v11)
    {
      v17 = ~v9 + a2;
      bzero(a1, ((*(v8 + 64) + ((v10 + 32) & ~v10) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237C7AFF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t EstimatorToSupervisedAdaptor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  OUTLINED_FUNCTION_4_5(v5, v6, v7, v8, v2, v9);
  v10 = sub_237EF9340();
  v1[10] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v1[11] = v11;
  v1[12] = OUTLINED_FUNCTION_27_0();
  v1[13] = *(v3 + 32);
  v1[14] = *(v3 + 16);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_24_1();
  v1[15] = OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_43_0();
  v12 = sub_237EF9640();
  v1[16] = v12;
  OUTLINED_FUNCTION_6_1(v12);
  v1[17] = v13;
  v1[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_84();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_237C7B2B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_34_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_1(v6);
  OUTLINED_FUNCTION_72(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25, v26);
  swift_getKeyPath();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_71();
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = v4;
  v15[4] = v27;
  v15[5] = v1;
  v15[6] = v3;
  v15[7] = v5;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_63();

  v16 = OUTLINED_FUNCTION_80();
  v17(v16);
  OUTLINED_FUNCTION_15_0();
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_2();
  *v18 = v19;
  v18[1] = sub_237C7B464;
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C7B464()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7B5E4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t EstimatorToSupervisedAdaptor.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_52_0();
  v19[10] = a18;
  v19[11] = v18;
  v19[8] = v21;
  v19[9] = a17;
  OUTLINED_FUNCTION_3_6(v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_237EF9340();
  v19[12] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v19[13] = v30;
  v19[14] = OUTLINED_FUNCTION_27_0();
  v19[15] = *(v20 + 32);
  v19[16] = *(v20 + 16);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_24_1();
  v31 = OUTLINED_FUNCTION_67();
  v32 = OUTLINED_FUNCTION_66(v31);
  v19[18] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v19[19] = v33;
  v19[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_84();
  return OUTLINED_FUNCTION_23_2(v34, v35, v36);
}

uint64_t sub_237C7B958()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 176) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7BAD8()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C7BB98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return EstimatorToSupervisedAdaptor.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237C7BC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v27 = swift_task_alloc();
  *(v18 + 16) = v27;
  *v27 = v18;
  v27[1] = sub_237C6A904;

  return EstimatorToSupervisedAdaptor.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, v26, a4, a5, v31, a6, a7, a8, v30, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t UpdatableEstimatorToSupervisedAdaptor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  OUTLINED_FUNCTION_4_5(v5, v6, v7, v8, v2, v9);
  v10 = sub_237EF9340();
  v1[10] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v1[11] = v11;
  v12 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_76(v12);
  v1[14] = v0;
  v1[15] = *(v3 + 16);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_24_1();
  v13 = OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_39_1(v13);
  v14 = sub_237EF9640();
  v1[17] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v1[18] = v15;
  v1[19] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_84();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237C7BF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_73();
  v45 = v19[19];
  v46 = v19[16];
  v21 = v19[15];
  v49 = v19[17];
  v50 = v19[14];
  v22 = v19[13];
  v44 = v19[12];
  v23 = v19[10];
  v47 = v19[11];
  v25 = v19[7];
  v24 = v19[8];
  OUTLINED_FUNCTION_36_3();
  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_38_1(v26);
  v27[3] = v22;
  v28 = *(v18 + 40);
  v27[4] = v28;
  v27[5] = v24;
  swift_getKeyPath();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_71();
  v29 = swift_allocObject();
  v29[2] = v21;
  v29[3] = v25;
  v29[4] = v22;
  v29[5] = v28;
  v29[6] = v24;
  v29[7] = v20;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55();
  sub_237EF9860();

  (*(v47 + 8))(v44, v23);
  v51 = v50 + 24;
  OUTLINED_FUNCTION_15_0();
  v48 = v30 + *v30;
  v31 = swift_task_alloc();
  v19[20] = v31;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_2();
  *v31 = v32;
  v31[1] = sub_237C7C104;
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_58();

  return v41(v33, v34, v35, v36, v37, v38, v39, v40, a9, v44, v45, v46, v48, v49, v51, a16, a17, a18);
}

uint64_t sub_237C7C104()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 168) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7C284()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t UpdatableEstimatorToSupervisedAdaptor.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_52_0();
  v19[10] = a18;
  v19[11] = v18;
  v19[8] = v21;
  v19[9] = a17;
  OUTLINED_FUNCTION_3_6(v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_237EF9340();
  v19[12] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v19[13] = v30;
  v31 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_74(v31);
  v19[16] = v18;
  v19[17] = *(v20 + 16);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_24_1();
  v19[18] = OUTLINED_FUNCTION_67();
  v32 = sub_237EF9640();
  v19[19] = v32;
  OUTLINED_FUNCTION_6_1(v32);
  v19[20] = v33;
  v19[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_84();
  return OUTLINED_FUNCTION_23_2(v34, v35, v36);
}

void sub_237C7C440()
{
  v3 = v1[17];
  v4 = v1[15];
  v19 = v3;
  v6 = v1[9];
  v5 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  OUTLINED_FUNCTION_36_3();
  v9 = swift_task_alloc();
  *v9 = v3;
  v9[1] = *(v0 + 24);
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v4;
  v10 = v4;
  v11 = *(v0 + 40);
  v9[5] = v11;
  v9[6] = v6;
  v9[7] = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_70();
  v12 = swift_allocObject();
  v12[2] = v19;
  v12[3] = v8;
  v12[4] = v7;
  v12[5] = v10;
  v12[6] = v11;
  v12[7] = v6;
  v12[8] = v5;
  v12[9] = v2;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v13 = OUTLINED_FUNCTION_13_1();
  v14(v13);
  OUTLINED_FUNCTION_15_0();
  v15 = swift_task_alloc();
  v1[22] = v15;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_2();
  *v15 = v16;
  v15[1] = sub_237C7C664;
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_81();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C7C664()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 184) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7C7E4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t UpdatableEstimatorToSupervisedAdaptor.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_39_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  OUTLINED_FUNCTION_4_5(v5, v6, v7, v8, v2, v9);
  v10 = sub_237EF9340();
  v1[10] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v1[11] = v11;
  v12 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_76(v12);
  v1[14] = *(v3 + 16);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_24_1();
  v1[15] = OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_43_0();
  v13 = sub_237EF9640();
  v1[16] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v1[17] = v14;
  v1[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_84();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_237C7C9A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_34_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38_1(v6);
  OUTLINED_FUNCTION_72(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25, v26);
  swift_getKeyPath();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_71();
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = v4;
  v15[4] = v27;
  v15[5] = v1;
  v15[6] = v3;
  v15[7] = v5;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_63();

  v16 = OUTLINED_FUNCTION_80();
  v17(v16);
  OUTLINED_FUNCTION_15_0();
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_21_2();
  *v18 = v19;
  v18[1] = sub_237C7CB58;
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_49_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C7CB58()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t UpdatableEstimatorToSupervisedAdaptor.update<A, B>(_:with:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_52_0();
  v19[10] = a18;
  v19[11] = v18;
  v19[8] = v21;
  v19[9] = a17;
  OUTLINED_FUNCTION_3_6(v22, v23, v24, v25, v26, v27, v28);
  v29 = sub_237EF9340();
  v19[12] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v19[13] = v30;
  v31 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_74(v31);
  v19[16] = *(v20 + 16);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_24_1();
  v32 = OUTLINED_FUNCTION_67();
  v33 = OUTLINED_FUNCTION_66(v32);
  v19[18] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v19[19] = v34;
  v19[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_84();
  return OUTLINED_FUNCTION_23_2(v35, v36, v37);
}

uint64_t sub_237C7CFD4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 176) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7D200()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableEstimatorToSupervisedAdaptor.update<A>(_:with:eventHandler:)();
}

uint64_t sub_237C7D30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableEstimatorToSupervisedAdaptor.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237C7D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v27 = swift_task_alloc();
  *(v18 + 16) = v27;
  *v27 = v18;
  v27[1] = sub_237C6B728;

  return UpdatableEstimatorToSupervisedAdaptor.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, v26, a4, a5, v31, a6, a7, a8, v30, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t TemporalEstimatorToSupervisedAdaptor.fitted<A, B>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_52_0();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  OUTLINED_FUNCTION_4_5(v13, v14, v15, v16, v17, v18);
  v19 = sub_237EF9340();
  v10[12] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v10[13] = v20;
  v10[14] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_30_3();
  v21 = sub_237EF9640();
  v10[15] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v10[16] = v22;
  v10[17] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237C7D61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_4();
  v21 = v17[9];
  v20 = v17[10];
  v23 = v17[7];
  v22 = v17[8];
  OUTLINED_FUNCTION_51_0();
  v24 = OUTLINED_FUNCTION_46_0();
  MEMORY[0x2383E08A0](v24);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_29_2(v25);
  OUTLINED_FUNCTION_50_0(v26);
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_75();
  v27 = swift_allocObject();
  v27[2] = v19;
  v27[3] = v23;
  v27[4] = v22;
  v27[5] = v18;
  v27[6] = v21;
  v27[7] = v20;
  v27[8] = v16;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_54();
  sub_237EF9860();

  v28 = OUTLINED_FUNCTION_13_1();
  v29(v28);
  v44 = OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_15_0();
  v45 = v30 + *v30;
  v31 = swift_task_alloc();
  v17[18] = v31;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v31 = v32;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_49_0();

  return v41(v33, v34, v35, v36, v37, v38, v39, v40, v22, a10, a11, v44, v45, a14, a15, a16);
}

uint64_t sub_237C7D7D4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 152) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7D954()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t TemporalEstimatorToSupervisedAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12_2();
  v13[12] = a12;
  v13[13] = v12;
  v13[10] = a10;
  v13[11] = a11;
  v13[8] = v14;
  v13[9] = a9;
  OUTLINED_FUNCTION_3_6(v15, v16, v17, v18, v19, v20, v21);
  v22 = sub_237EF9340();
  v13[14] = v22;
  OUTLINED_FUNCTION_6_1(v22);
  v13[15] = v23;
  v24 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_39_1(v24);
  v25 = sub_237EF9640();
  v13[17] = v25;
  OUTLINED_FUNCTION_6_1(v25);
  v13[18] = v26;
  v13[19] = OUTLINED_FUNCTION_27_0();
  v27 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_48_0(v27, v28, v29);
}

void sub_237C7DACC()
{
  OUTLINED_FUNCTION_32_3();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_28_3(v8);
  OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v27, v29);
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_79();
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = v7;
  v17[4] = v4;
  v17[5] = v28;
  v17[6] = v5;
  v17[7] = v6;
  v17[8] = v0;
  v17[9] = v26;
  v17[10] = v1;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();

  v18 = OUTLINED_FUNCTION_13_1();
  v19(v18);
  OUTLINED_FUNCTION_15_0();
  v20 = swift_task_alloc();
  *(v2 + 160) = v20;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v20 = v21;
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_81();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C7DC80()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 168) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7DE00()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C7DEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return TemporalEstimatorToSupervisedAdaptor.fitted<A, B>(to:eventHandler:)(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237C7DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_237C6B728;

  return TemporalEstimatorToSupervisedAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, v16, a4, a5, a10, a6, a7, a8, v22, v23, a9);
}

uint64_t UpdatableTemporalEstimatorToSupervisedAdaptor.fitted<A, B>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_52_0();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  OUTLINED_FUNCTION_4_5(v13, v14, v15, v16, v17, v18);
  v19 = sub_237EF9340();
  v10[12] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v10[13] = v20;
  v10[14] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_30_3();
  v21 = sub_237EF9640();
  v10[15] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v10[16] = v22;
  v10[17] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237C7E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_4();
  v21 = v18[9];
  v20 = v18[10];
  v23 = v18[7];
  v22 = v18[8];
  v44 = v22;
  OUTLINED_FUNCTION_51_0();
  v24 = OUTLINED_FUNCTION_46_0();
  MEMORY[0x2383E08A0](v24);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_29_2(v25);
  v26[3] = v22;
  v27 = *(v17 + 32);
  v26[4] = v27;
  v28 = *(v17 + 40);
  v26[5] = v28;
  v26[6] = v21;
  v26[7] = v20;
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_75();
  v29 = swift_allocObject();
  v29[2] = v19;
  v29[3] = v23;
  v29[4] = v27;
  v29[5] = v28;
  v29[6] = v21;
  v29[7] = v20;
  v29[8] = v17;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_54();
  sub_237EF9860();

  (*(a13 + 8))(v16, a10);
  v45 = OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_15_0();
  v46 = v30 + *v30;
  v31 = swift_task_alloc();
  v18[18] = v31;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v31 = v32;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_49_0();

  return v41(v33, v34, v35, v36, v37, v38, v39, v40, v44, a10, a11, v45, v46, a14, a15, a16);
}

uint64_t sub_237C7E414()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 152) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t UpdatableTemporalEstimatorToSupervisedAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12_2();
  v13[12] = a12;
  v13[13] = v12;
  v13[10] = a10;
  v13[11] = a11;
  v13[8] = v14;
  v13[9] = a9;
  OUTLINED_FUNCTION_3_6(v15, v16, v17, v18, v19, v20, v21);
  v22 = sub_237EF9340();
  v13[14] = v22;
  OUTLINED_FUNCTION_6_1(v22);
  v13[15] = v23;
  v24 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_39_1(v24);
  v25 = sub_237EF9640();
  v13[17] = v25;
  OUTLINED_FUNCTION_6_1(v25);
  v13[18] = v26;
  v13[19] = OUTLINED_FUNCTION_27_0();
  v27 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_48_0(v27, v28, v29);
}

void sub_237C7E69C()
{
  OUTLINED_FUNCTION_73();
  v22 = v1[15];
  v20 = v1[14];
  v21 = v1[16];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[9];
  v6 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  v19 = v7;
  OUTLINED_FUNCTION_51_0();
  v9 = OUTLINED_FUNCTION_46_0();
  MEMORY[0x2383E08A0](v9);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_28_3(v10);
  v11[3] = v7;
  v11[4] = v5;
  v12 = *(v0 + 32);
  v11[5] = v12;
  v13 = *(v0 + 40);
  v11[6] = v13;
  v11[7] = v6;
  v11[8] = v3;
  v11[9] = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_79();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = v8;
  v14[4] = v19;
  v14[5] = v12;
  v14[6] = v13;
  v14[7] = v6;
  v14[8] = v3;
  v14[9] = v4;
  v14[10] = v0;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v22 + 8))(v21, v20);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_15_0();
  v15 = swift_task_alloc();
  v1[20] = v15;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v15 = v16;
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C7E8C4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 168) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t UpdatableTemporalEstimatorToSupervisedAdaptor.update<A, B>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_52_0();
  v10[10] = a9;
  v10[11] = v9;
  v10[8] = v11;
  v10[9] = v12;
  OUTLINED_FUNCTION_4_5(v13, v14, v15, v16, v17, v18);
  v19 = sub_237EF9340();
  v10[12] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v10[13] = v20;
  v10[14] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_30_3();
  v21 = sub_237EF9640();
  v10[15] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v10[16] = v22;
  v10[17] = OUTLINED_FUNCTION_27_0();
  v23 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v23, v24, v25);
}

uint64_t sub_237C7EB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_4();
  v21 = v17[9];
  v20 = v17[10];
  v23 = v17[7];
  v22 = v17[8];
  OUTLINED_FUNCTION_51_0();
  v24 = OUTLINED_FUNCTION_46_0();
  MEMORY[0x2383E08A0](v24);
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_29_2(v25);
  OUTLINED_FUNCTION_50_0(v26);
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_75();
  v27 = swift_allocObject();
  v27[2] = v19;
  v27[3] = v23;
  v27[4] = v22;
  v27[5] = v18;
  v27[6] = v21;
  v27[7] = v20;
  v27[8] = v16;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_54();
  sub_237EF9860();

  v28 = OUTLINED_FUNCTION_13_1();
  v29(v28);
  v44 = OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_15_0();
  v45 = v30 + *v30;
  v31 = swift_task_alloc();
  v17[18] = v31;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v31 = v32;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_49_0();

  return v41(v33, v34, v35, v36, v37, v38, v39, v40, v22, a10, a11, v44, v45, a14, a15, a16);
}

uint64_t UpdatableTemporalEstimatorToSupervisedAdaptor.update<A, B, C>(_:with:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12_2();
  v13[12] = a12;
  v13[13] = v12;
  v13[10] = a10;
  v13[11] = a11;
  v13[8] = v14;
  v13[9] = a9;
  OUTLINED_FUNCTION_3_6(v15, v16, v17, v18, v19, v20, v21);
  v22 = sub_237EF9340();
  v13[14] = v22;
  OUTLINED_FUNCTION_6_1(v22);
  v13[15] = v23;
  v24 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_39_1(v24);
  v25 = sub_237EF9640();
  v13[17] = v25;
  OUTLINED_FUNCTION_6_1(v25);
  v13[18] = v26;
  v13[19] = OUTLINED_FUNCTION_27_0();
  v27 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_48_0(v27, v28, v29);
}

void sub_237C7EE08()
{
  OUTLINED_FUNCTION_32_3();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_28_3(v8);
  OUTLINED_FUNCTION_44_0(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v27, v29);
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_79();
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = v7;
  v17[4] = v4;
  v17[5] = v28;
  v17[6] = v5;
  v17[7] = v6;
  v17[8] = v0;
  v17[9] = v26;
  v17[10] = v1;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_64();

  v18 = OUTLINED_FUNCTION_13_1();
  v19(v18);
  OUTLINED_FUNCTION_15_0();
  v20 = swift_task_alloc();
  *(v2 + 160) = v20;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_2();
  *v20 = v21;
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_81();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237C7F068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return UpdatableTemporalEstimatorToSupervisedAdaptor.update<A, B>(_:with:eventHandler:)(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237C7F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return UpdatableTemporalEstimatorToSupervisedAdaptor.fitted<A, B>(to:eventHandler:)(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237C7F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_237C6B728;

  return UpdatableTemporalEstimatorToSupervisedAdaptor.fitted<A, B, C>(to:validateOn:eventHandler:)(a1, a2, v16, a4, a5, a10, a6, a7, a8, v22, v23, a9);
}

uint64_t _s18CreateMLComponents17TemporalEstimatorPAAE19adaptedAsSupervised14annotationTypeAA0cd2ToG7AdaptorVyxqd__Gqd__m_tSQRd__s8SendableRd__lF_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v2, a1);
  return (*(v6 + 32))(a2, v10, a1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t TabularEstimatorToSupervisedAdaptor.init(_:annotationColumnID:)()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for TabularEstimatorToSupervisedAdaptor();
  (*(*(v0 - 8) + 32))(v5 + *(v6 + 44), v3, v0);
  OUTLINED_FUNCTION_43_0();
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 32);

  return v9(v5, v1, v7);
}

uint64_t TabularEstimatorToSupervisedAdaptor.fitted(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *(v2 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_27_0();
  v8 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237C7F6A0()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  TabularEstimatorToSupervisedAdaptor.estimator.getter(v1, v0[10]);
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_15_0();
  v11 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_237C7F7C8;
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return v11(v8, v9, v6, v7, v5, v2);
}

uint64_t sub_237C7F7C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_59();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_59();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_237C7F93C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t (*sub_237C7FA00(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = TabularEstimatorToSupervisedAdaptor.annotationColumnID.modify();
  return sub_237C7FA5C;
}

uint64_t sub_237C7FA60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return TabularEstimatorToSupervisedAdaptor.fitted(to:validateOn:eventHandler:)();
}

uint64_t TabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v4 = sub_237EF62C0();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v0, v1);
  (*(v6 + 16))(v9, v3, v4);
  return TabularEstimatorToSupervisedAdaptor.init(_:annotationColumnID:)();
}

uint64_t _s18CreateMLComponents35TabularEstimatorToSupervisedAdaptorV18annotationColumnID0C4Data0iJ0Vyq_Gvg_0@<X0>(uint64_t a1@<X8>)
{
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t _s18CreateMLComponents35TabularEstimatorToSupervisedAdaptorV18annotationColumnID0C4Data0iJ0Vyq_Gvs_0(uint64_t a1)
{
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t UpdatableTabularEstimatorToSupervisedAdaptor.init(_:annotationColumnID:)()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  (*(*(v0 - 8) + 32))(v5 + *(v6 + 52), v3, v0);
  OUTLINED_FUNCTION_43_0();
  sub_237EF62C0();
  OUTLINED_FUNCTION_4();
  return (*(v7 + 32))(v5, v1);
}

uint64_t UpdatableTabularEstimatorToSupervisedAdaptor.fitted(to:validateOn:eventHandler:)()
{
  OUTLINED_FUNCTION_15_0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_237C6B728;
  OUTLINED_FUNCTION_30_3();

  return v4();
}

uint64_t UpdatableTabularEstimatorToSupervisedAdaptor.update(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_15_0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_237C6B728;
  OUTLINED_FUNCTION_30_3();

  return v4();
}

uint64_t sub_237C80270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableTabularEstimatorToSupervisedAdaptor.update(_:with:eventHandler:)();
}

uint64_t (*sub_237C80364(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = UpdatableTabularEstimatorToSupervisedAdaptor.annotationColumnID.modify();
  return sub_237C80DB8;
}

void sub_237C803C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_237C80408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return UpdatableTabularEstimatorToSupervisedAdaptor.fitted(to:validateOn:eventHandler:)();
}

uint64_t UpdatableTabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a5;
  v8 = sub_237EF62C0();
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  (*(v17 + 16))(v16 - v15, v5, a2);
  (*(v10 + 16))(v13, a1, v8);
  OUTLINED_FUNCTION_46_0();
  return UpdatableTabularEstimatorToSupervisedAdaptor.init(_:annotationColumnID:)();
}

uint64_t sub_237C806A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237C80720(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237C807A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237C80848()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237C808B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237C809F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_237C80C10()
{
  result = sub_237EF62C0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237C80CC4()
{
  result = sub_237EF62C0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_10_5()
{
  *(v2 + 8) = v0;
  result = *(v3 + 16);
  *(v4 + 16) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_getAssociatedTypeWitness();
}

void *OUTLINED_FUNCTION_28_3(void *result)
{
  *result = *(v1 + 16);
  result[1] = *(v1 + 24);
  result[2] = v2;
  return result;
}

void *OUTLINED_FUNCTION_29_2(void *result)
{
  *result = *(v1 + 16);
  result[1] = *(v1 + 24);
  result[2] = v2;
  return result;
}

void OUTLINED_FUNCTION_32_3()
{
  *(v1 + 24) = *(v0 + 136);

  JUMPOUT(0x2383E08A0);
}

void OUTLINED_FUNCTION_33_2()
{

  JUMPOUT(0x2383E08A0);
}

void OUTLINED_FUNCTION_34_1()
{

  JUMPOUT(0x2383E08A0);
}

uint64_t OUTLINED_FUNCTION_35_2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a1 = v17;
  a1[1] = *(v15 + 24);
  a1[2] = v20;
  a1[3] = v16;
  result = a15;
  a1[4] = a15;
  a1[5] = *(v15 + 40);
  a1[6] = v19;
  a1[7] = v18;
  return result;
}

void OUTLINED_FUNCTION_36_3()
{

  JUMPOUT(0x2383E08A0);
}

void *OUTLINED_FUNCTION_38_1(void *result)
{
  *result = v2;
  result[1] = *(v1 + 24);
  result[2] = v3;
  return result;
}

void *OUTLINED_FUNCTION_44_0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result[3] = v14;
  result[4] = v12;
  result[5] = *(v13 + 32);
  result[6] = *(v13 + 40);
  result[7] = v16;
  result[8] = a12;
  result[9] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void *OUTLINED_FUNCTION_50_0(void *result)
{
  result[3] = v1;
  result[4] = *(v2 + 32);
  result[5] = *(v2 + 40);
  result[6] = v4;
  result[7] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_237EF62C0();
}

uint64_t OUTLINED_FUNCTION_62()
{
}

uint64_t OUTLINED_FUNCTION_63()
{

  return sub_237EF9860();
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_237EF9860();
}

uint64_t OUTLINED_FUNCTION_65()
{
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{
  *(v1 + 136) = a1;

  return sub_237EF9640();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_68()
{

  return sub_237EF62C0();
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = a13;
  v14[3] = a13;
  v14[4] = *(v13 + 40);
  v14[5] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_74(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 120) = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_76(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 104) = *(v2 + 32);
  return result;
}

uint64_t sub_237C81484()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  (*(*(v4 - 8) + 32))(v2, v5);
  v6 = type metadata accessor for ComposedUpdatableEstimator();
  return (*(*(v0 - 8) + 32))(v3 + *(v6 + 52), v1, v0);
}

uint64_t sub_237C81540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for TransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  TransformerToUpdatableEstimatorAdaptor.init(_:)(v7, v6, a6);
  OUTLINED_FUNCTION_5_4();
  swift_getWitnessTable();
  return sub_237C81484();
}

uint64_t sub_237C81618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v17 = *(v3 + 8);
  v18 = a2;
  v16 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = a1[4];
  v9 = a1[2];
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  (*(v8 + 16))(v9, v8);
  (*(v3 + 16))(v16, v3);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return ComposedTransformer.init(_:_:)(v13, v7, v10, AssociatedTypeWitness, v18);
}

uint64_t sub_237C817D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v17 = v16;
  v15[9] = v18;
  v15[10] = v14;
  v15[7] = v16;
  v15[8] = v19;
  v15[5] = v20;
  v15[6] = v21;
  v15[3] = v22;
  v15[4] = v23;
  v15[11] = *(*(v16 + 40) + 8);
  v15[12] = *(v16 + 24);
  v15[13] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[14] = v24;
  v15[15] = swift_task_alloc();
  v15[16] = swift_task_alloc();
  v25 = *(*(v17 + 32) + 8);
  v15[17] = v25;
  v15[18] = *(v17 + 16);
  v15[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[20] = v26;
  v15[21] = swift_task_alloc();
  v15[22] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v40 = v27 + *v27;
  v28 = swift_task_alloc();
  v15[23] = v28;
  *v28 = v15;
  v28[1] = sub_237C81A40;
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_18_3();

  return v37(v29, v30, v31, v32, v33, v34, v35, v36, v25 + 24, v40, v14, a12, a13, a14);
}

uint64_t sub_237C81A40()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C81B3C()
{
  v1 = v0[24];
  sub_237EF8B90();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_7_4();
    v3(v2);

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[25] = v6;
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_17_3();
    v0[26] = v8;
    *v6 = v9;
    v6[1] = sub_237C81C98;
    v10 = v0[19];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[4];

    return Transformer.applied<A>(to:eventHandler:)(v15, v13, v14, v10, v11, v7, v12);
  }
}

uint64_t sub_237C81C98()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237C81D9C()
{
  v1 = v0[28];
  sub_237EF8B90();
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_7_4();
    v3(v2);

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  else
  {
    v0[2] = v0[27];
    OUTLINED_FUNCTION_15_0();
    v13 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[29] = v7;
    swift_getAssociatedTypeWitness();
    v8 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_17_3();
    *v7 = v9;
    v7[1] = sub_237C81FA8;
    v10 = v0[16];
    v11 = v0[5];
    v12 = v0[6];

    return (v13)(v10, v0 + 2, v11, v12, v8);
  }
}

uint64_t sub_237C81FA8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C820AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v15 = v14[21];
  v16 = v14[19];
  v18 = v14[15];
  v17 = v14[16];
  v20 = v14[13];
  v19 = v14[14];
  v30 = v14[3];
  v31 = v14[26];
  (*(v14[20] + 32))(v15, v14[22], v16);
  (*(v19 + 32))(v18, v17, v20);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v15, v18, v16, v20, v30);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_237C821C0()
{

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C82244()
{
  v0 = OUTLINED_FUNCTION_7_4();
  v1(v0);

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237C822D8()
{
  v0 = OUTLINED_FUNCTION_7_4();
  v1(v0);

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_237C82378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v15[13] = v16;
  v15[14] = v14;
  v15[11] = v17;
  v15[12] = v18;
  v15[9] = v19;
  v15[10] = v20;
  v15[7] = v21;
  v15[8] = v22;
  v23 = *(v17 + 32);
  v15[15] = v23;
  v15[16] = *(v17 + 16);
  OUTLINED_FUNCTION_15_0();
  v37 = v24 + *v24;
  v25 = swift_task_alloc();
  v15[17] = v25;
  *v25 = v15;
  v25[1] = sub_237C824C8;
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_18_3();

  return v34(v26, v27, v28, v29, v30, v31, v32, v33, a9, v23 + 24, v37, a12, a13, a14);
}

uint64_t sub_237C824C8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237C825E0()
{
  v1 = v0[18];
  sub_237EF8B90();
  if (v1)
  {
    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[19] = v4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v0[20] = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_17_3();
    v0[21] = v7;
    *v4 = v8;
    v4[1] = sub_237C8272C;
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];

    return Transformer.applied<A>(to:eventHandler:)(v13, v11, v12, AssociatedTypeWitness, v9, v6, v10);
  }
}

uint64_t sub_237C8272C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_237C8284C()
{
  v1 = v0[23];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[21];
    v5 = v0[20];
    v6 = v0[7];
    v0[6] = v0[22];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[2] = v5;
    v0[3] = AssociatedTypeWitness;
    v0[4] = v4;
    v0[5] = AssociatedConformanceWitness;
    v9 = *(type metadata accessor for ComposedTransformer() + 52);
    OUTLINED_FUNCTION_15_0();
    v16 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[24] = v11;
    swift_getAssociatedTypeWitness();
    v12 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_17_3();
    *v11 = v13;
    v11[1] = sub_237C82AAC;
    v14 = v0[9];
    v15 = v0[10];

    return (v16)(v6 + v9, v0 + 6, v14, v15, v12);
  }
}

uint64_t sub_237C82AAC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237C82BCC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C82C28(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*(a3[4] + 8) + 32))(a1, a2, a3[2], *(a3[4] + 8));
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = *(a3[5] + 8);
    v10 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTransformer();
    return (*(v8 + 32))(a1 + *(v9 + 52), a2, v10, v8);
  }

  return result;
}

uint64_t sub_237C82D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = a2[3];
  v37 = *(a2[5] + 8);
  v39 = v5;
  OUTLINED_FUNCTION_40_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v32 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v38 = &v30 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  OUTLINED_FUNCTION_40_0();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v35 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  v24 = *(v13 + 40);
  v36 = a1;
  v25 = v40;
  result = v24(a1, v14, v13);
  if (!v25)
  {
    v30 = v14;
    v31 = v20;
    v40 = v15;
    v27 = AssociatedTypeWitness;
    (*(v37 + 40))(v36, v39, v37);
    v28 = v31;
    v29 = v40;
    (*(v35 + 32))(v31, v23, v40);
    (*(v32 + 32))(v10, v38, v27);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v28, v10, v29, v27, v33);
  }

  return result;
}