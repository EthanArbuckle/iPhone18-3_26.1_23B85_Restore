uint64_t sub_1A35FB31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A362288C();
  result = sub_1A362288C();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
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

uint64_t sub_1A35FB3C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A35FB404(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A35FB538(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A35F36D0;

  return sub_1A35FB164(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A35FB5E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A35FB650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A35FB6B8()
{
  result = qword_1ED81DDE0;
  if (!qword_1ED81DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1F0);
    sub_1A35FB744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDE0);
  }

  return result;
}

unint64_t sub_1A35FB744()
{
  result = qword_1ED81DD60;
  if (!qword_1ED81DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DD60);
  }

  return result;
}

_DWORD *sub_1A35FB7A8(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
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
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_1A35FB8EC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[1] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1A35FBB08(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v4 + 16);
  v9(v12 - v10, v2, a1, v8);
  if (swift_dynamicCast())
  {
    return v12[1];
  }

  (v9)(v6, v2, a1);
  return sub_1A362295C();
}

uint64_t sub_1A35FBC48()
{
  v1 = v0;
  v2 = sub_1A362178C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E697DBB8])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x1E697DBA8])
  {
    return 2;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1A35FBD7C(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 4;
  }

  else
  {
    return (0x304040401040200uLL >> (8 * (a1 - 1)));
  }
}

uint64_t sub_1A35FBDA8()
{
  sub_1A35D274C();
  sub_1A35D27A0();
  v0 = sub_1A36235EC();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 == sub_1A362221C())
      {
        break;
      }

      if (v4 == sub_1A362223C())
      {
        v6 = 4;
        goto LABEL_11;
      }

      if (v4 == sub_1A362222C())
      {
        v6 = 2;
        goto LABEL_11;
      }

      if (v4 == sub_1A362225C())
      {
        v6 = 8;
        goto LABEL_11;
      }

LABEL_16:
      if (!--v1)
      {
        goto LABEL_19;
      }
    }

    v6 = 1;
LABEL_11:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1A35E1D04(0, *(v3 + 16) + 1, 1, v3);
      v3 = v9;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1A35E1D04(v7 > 1, v8 + 1, 1, v3);
      v3 = v10;
    }

    *(v3 + 16) = v8 + 1;
    *(v3 + 8 * v8 + 32) = v6;
    goto LABEL_16;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v11 = *(v3 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v3 + 32);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if ((v15 & ~v12) == 0)
      {
        v14 = 0;
      }

      v12 |= v14;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

BOOL sub_1A35FBF3C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1A35FBF88(uint64_t a1)
{
  *&v12 = a1;
  MEMORY[0x1A58F3B80](&v10, &v12, &unk_1F1648D38, MEMORY[0x1E6981748]);
  if (v11)
  {
    sub_1A35A270C(&v10, &v12);
    sub_1A35AB75C(&v12, &v10);
    sub_1A35FC16C();
    if (OUTLINED_FUNCTION_0_30())
    {
      v1 = [v9 isSymbolImage];

LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(&v12);
      return v1 & 1;
    }

    __swift_project_boxed_opaque_existential_1(&v12, v13);
    v2 = sub_1A362351C();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = v2 == 0xD00000000000001DLL && v3 == 0x80000001A36397D0;
      if (v6 || (sub_1A362345C() & 1) != 0 || (v4 == 0xD000000000000024 ? (v7 = v5 == 0x80000001A36397F0) : (v7 = 0), v7))
      {
        v1 = 1;
      }

      else
      {
        v1 = sub_1A362345C();
      }

      goto LABEL_19;
    }

    __swift_project_boxed_opaque_existential_1(&v12, v13);
    sub_1A362350C();
    if (v11)
    {
      if (OUTLINED_FUNCTION_0_30())
      {
        v1 = (sub_1A35FBF88)();

        goto LABEL_19;
      }
    }

    else
    {
      sub_1A35B1500(&v10);
    }

    __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    sub_1A35B1500(&v10);
  }

  v1 = 0;
  return v1 & 1;
}

unint64_t sub_1A35FC16C()
{
  result = qword_1ED81D998;
  if (!qword_1ED81D998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED81D998);
  }

  return result;
}

void sub_1A35FC1D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A36217AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A35FC42C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v60 = sub_1A36220FC();
  OUTLINED_FUNCTION_3();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_0();
  v57 = v6 - v5;
  v7 = type metadata accessor for TipViewEnvironment();
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  v56 = v10 - v9;
  v11 = type metadata accessor for TipViewStyleConfiguration();
  v12 = OUTLINED_FUNCTION_14(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v55 = sub_1A3621FCC();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF210);
  v23 = OUTLINED_FUNCTION_14(v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v55 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF218);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF220);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v55 - v32;
  v34 = sub_1A3621E0C();
  v35 = sub_1A3621D1C();
  *v25 = v34;
  v25[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF228);
  sub_1A35FC83C(v2, v25 + *(v36 + 44));
  sub_1A35B2260(v2 + 72, &v64);
  LODWORD(v34) = v64;
  sub_1A35B22BC(&v64);
  sub_1A360354C(v34 != 4, sub_1A35FE528, &v61, v37, v38, v39, v40, v41, v55, v56, v57, v58, v59, v60, v61, v62, v2, v64, v65, v66);
  sub_1A3602FAC(v25, &qword_1EB0EF210);
  v42 = sub_1A362226C();
  sub_1A3621FBC();
  v43 = sub_1A35FE530();
  MEMORY[0x1A58F2B40](v42, 0x4020000000000000, 0, v21, v26, v43);
  (*(v17 + 8))(v21, v55);
  sub_1A3602FAC(v29, &qword_1EB0EF218);
  sub_1A3601B24(v2, v15);
  v44 = type metadata accessor for MiniTipView(0);
  v45 = v56;
  sub_1A35B83D0(v44, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  sub_1A35B8E64(v15, v45, &v33[*(v30 + 36)]);
  v53 = v57;
  sub_1A36220EC();
  sub_1A3601A5C();
  sub_1A362256C();
  (*(v58 + 8))(v53, v60);
  return sub_1A3602FAC(v33, &qword_1EB0EF220);
}

uint64_t sub_1A35FC83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v60 = a2;
  v58 = sub_1A362231C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TipViewStyleConfiguration();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = v4;
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for MiniTipView.CloseButton(0);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v49 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF268);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF270);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF278);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF280);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  sub_1A3622E3C();
  v50 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v11 = sub_1A3621D1C();
  *(v11 + 1) = 0x4026000000000000;
  v11[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF288);
  v25 = v55;
  sub_1A35FCFAC(v55, &v11[*(v24 + 44)]);
  v47 = sub_1A3622A3C();
  v48 = v26;
  v46 = 1;
  v45 = 0;
  sub_1A3621AFC();
  sub_1A3602808(v11, v14, &qword_1EB0EF268);
  memcpy(&v14[*(v12 + 36)], __src, 0x70uLL);
  v27 = sub_1A362220C();
  sub_1A3602808(v14, v17, &qword_1EB0EF270);
  v28 = &v17[*(v15 + 36)];
  *v28 = v27;
  *(v28 + 8) = xmmword_1A3629520;
  *(v28 + 24) = xmmword_1A3629530;
  v28[40] = 0;
  if ((sub_1A3622DBC() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1A35B2260(v25 + 72, v61);
  v29 = v61[0];
  sub_1A35B22BC(v61);
  if (v29 != 4)
  {
    goto LABEL_9;
  }

  sub_1A35B2260(v25 + 72, v61);
  if (v61[0] != 4 || v62 != 1)
  {
    sub_1A35B22BC(v61);
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1A35B22BC(v61);
  if (!Strong)
  {
LABEL_11:
    v31 = 1;
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
LABEL_9:
  v31 = 0;
LABEL_12:
  MEMORY[0x1EEE9AC00](v31);
  v47 = v25;
  sub_1A3603724(v32, sub_1A3601C50, &v45, v33, v34, v35, v36, v37, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  sub_1A3602FAC(v17, &qword_1EB0EF278);
  v38 = v53;
  sub_1A3601B24(v25, v53);
  v39 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v40 = swift_allocObject();
  sub_1A3601C58(v38, v40 + v39);
  *v8 = sub_1A35F751C;
  v8[1] = v40;
  *v61 = 0x4008000000000000;
  (*(v56 + 104))(v57, *MEMORY[0x1E6980EF8], v58);
  sub_1A3601CB0();
  sub_1A36217FC();
  sub_1A35B567C(v23, v20, &qword_1EB0EF280);
  v41 = v59;
  sub_1A3601B24(v8, v59);
  v42 = v60;
  sub_1A35B567C(v20, v60, &qword_1EB0EF280);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF290);
  sub_1A3601B24(v41, v42 + *(v43 + 48));
  sub_1A3601D24(v8, type metadata accessor for MiniTipView.CloseButton);
  sub_1A3602FAC(v23, &qword_1EB0EF280);
  sub_1A3601D24(v41, type metadata accessor for MiniTipView.CloseButton);
  sub_1A3602FAC(v20, &qword_1EB0EF280);
}

uint64_t sub_1A35FCFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v77 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2A8);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v77 - v11;
  v81 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - v15;
  v17 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for MiniTipView.ImageView(0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2B0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v77 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2B8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2C0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v77 - v26;
  sub_1A3622E3C();
  v28 = sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v30 = v92;
  v31 = sub_1A35FC2A4(isCurrentExecutor);
  v32 = 1;
  if ((v31 & 1) == 0)
  {
    v80 = v28;
    v33 = v30 + *(type metadata accessor for MiniTipView(0) + 28);
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(__src[0]) = v34;
    *(&__src[0] + 1) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
    sub_1A362289C();
    if (v93)
    {
      v32 = 1;
    }

    else
    {
      v78 = v9;
      v79 = a2;
      v36 = sub_1A3601B24(v30, v87);
      sub_1A35B83D0(v36, v37, v38, v39, v40, v41, v42, v43, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      v44 = v81;
      v45 = &v16[*(v81 + 40)];
      v46 = *v45;
      v47 = *(v45 + 1);
      HIDWORD(v77) = v45[16];
      v48 = sub_1A3601D24(v16, type metadata accessor for TipViewEnvironment);
      sub_1A35B83D0(v48, v49, v50, v51, v52, v53, v54, v55, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
      sub_1A35B567C(&v13[*(v44 + 44)], &v93, &unk_1EB0EF950);
      sub_1A3601D24(v13, type metadata accessor for TipViewEnvironment);
      if (v94)
      {
        sub_1A35A63BC(&v93, __src);
        a2 = v79;
        v9 = v78;
      }

      else
      {
        *(&__src[1] + 1) = sub_1A36219EC();
        *&__src[2] = MEMORY[0x1E697E558];
        __swift_allocate_boxed_opaque_existential_0(__src);
        sub_1A36219DC();
        a2 = v79;
        v9 = v78;
        if (v94)
        {
          sub_1A3602FAC(&v93, &unk_1EB0EF950);
        }
      }

      v56 = v84;
      sub_1A3601C58(v87, v84);
      v57 = v82;
      v58 = v56 + *(v82 + 20);
      *v58 = v46;
      *(v58 + 8) = v47;
      *(v58 + 16) = BYTE4(v77);
      sub_1A35A63BC(__src, v56 + *(v57 + 24));
      v59 = sub_1A362222C();
      sub_1A36216DC();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v68 = v85;
      sub_1A3601C58(v56, v85);
      v69 = v68 + *(v86 + 36);
      *v69 = v59;
      *(v69 + 8) = v61;
      *(v69 + 16) = v63;
      *(v69 + 24) = v65;
      *(v69 + 32) = v67;
      *(v69 + 40) = 0;
      sub_1A3601D7C();
      v70 = v83;
      sub_1A362255C();
      sub_1A3602FAC(v68, &qword_1EB0EF2B0);
      sub_1A3602808(v70, v27, &qword_1EB0EF2B8);
      v32 = 0;
      v30 = v92;
    }
  }

  __swift_storeEnumTagSinglePayload(v27, v32, 1, v88);
  *v5 = sub_1A3621DFC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2D0);
  sub_1A35FD858(v30, &v5[*(v71 + 44)]);
  sub_1A36229FC();
  sub_1A3621AFC();
  sub_1A3602808(v5, v9, &qword_1EB0EF2A0);
  memcpy(&v9[*(v89 + 36)], __src, 0x70uLL);
  v72 = v9;
  v73 = v90;
  sub_1A3602808(v72, v90, &qword_1EB0EF2A8);
  sub_1A35B567C(v27, v24, &qword_1EB0EF2C0);
  v74 = v91;
  sub_1A35B567C(v73, v91, &qword_1EB0EF2A8);
  sub_1A35B567C(v24, a2, &qword_1EB0EF2C0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2D8);
  sub_1A35B567C(v74, a2 + *(v75 + 48), &qword_1EB0EF2A8);
  sub_1A3602FAC(v73, &qword_1EB0EF2A8);
  sub_1A3602FAC(v27, &qword_1EB0EF2C0);
  sub_1A3602FAC(v74, &qword_1EB0EF2A8);
  sub_1A3602FAC(v24, &qword_1EB0EF2C0);
}

uint64_t sub_1A35FD858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v116 - v7;
  v125 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v125);
  *&v121 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v118 = type metadata accessor for MiniTipView.ImageView(0);
  MEMORY[0x1EEE9AC00](v118);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2B0);
  MEMORY[0x1EEE9AC00](v120);
  v13 = &v116 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2B8);
  MEMORY[0x1EEE9AC00](v14);
  *&v119 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v123 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v116 - v19;
  sub_1A3622E3C();
  v122 = sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (sub_1A35FC2A4(isCurrentExecutor))
  {
    v117 = v14;
    sub_1A3601B24(a1, v121);
    v21 = type metadata accessor for MiniTipView(0);
    sub_1A35B83D0(v21, v22, v23, v24, v25, v26, v27, v28, v116, v117, v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), v122, v123);
    v29 = &v8[*(v3 + 40)];
    v30 = *v29;
    v31 = *(v29 + 1);
    HIDWORD(v116) = v29[16];
    v32 = sub_1A3601D24(v8, type metadata accessor for TipViewEnvironment);
    sub_1A35B83D0(v32, v33, v34, v35, v36, v37, v38, v39, v116, v117, v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), v122, v123);
    sub_1A35B567C(&v5[*(v3 + 44)], v133, &unk_1EB0EF950);
    sub_1A3601D24(v5, type metadata accessor for TipViewEnvironment);
    if (*(&v133[1] + 1))
    {
      sub_1A35A63BC(v133, v134);
      v40 = v125;
      v41 = v126;
      v14 = v117;
    }

    else
    {
      *(&v134[1] + 1) = sub_1A36219EC();
      *&v134[2] = MEMORY[0x1E697E558];
      __swift_allocate_boxed_opaque_existential_0(v134);
      sub_1A36219DC();
      v40 = v125;
      v41 = v126;
      v14 = v117;
      if (*(&v133[1] + 1))
      {
        sub_1A3602FAC(v133, &unk_1EB0EF950);
      }
    }

    sub_1A3601C58(v121, v11);
    v43 = v118;
    v44 = &v11[*(v118 + 20)];
    *v44 = v30;
    *(v44 + 1) = v31;
    v44[16] = BYTE4(v116);
    sub_1A35A63BC(v134, &v11[*(v43 + 24)]);
    v45 = sub_1A362222C();
    sub_1A36216DC();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_1A3601C58(v11, v13);
    v54 = &v13[*(v120 + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    sub_1A3601D7C();
    v55 = v119;
    sub_1A362255C();
    sub_1A3602FAC(v13, &qword_1EB0EF2B0);
    sub_1A3602808(v55, v41, &qword_1EB0EF2B8);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v40 = v125;
    v41 = v126;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v14);
  TipViewStyleConfiguration.title.getter();
  if (v59)
  {
    v60 = v56;
    v61 = v57;
    v62 = v59;
    v63 = v58 & 1;
    sub_1A35F81DC(v56, v57, v58 & 1);
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    v64 = sub_1A362225C();
    sub_1A36216DC();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v131[0] = v63;
    v130[0] = 0;
    v73 = sub_1A362222C();
    v74 = *(a1 + *(v40 + 40) + 1);
    if (v74)
    {
      sub_1A36216DC();
      v119 = v75;
      v120 = v76;
      v118 = v77;
      v121 = v78;
      sub_1A35B72C8(v60, v61, v63);

      *&v80 = v118;
      *&v79 = v119;
      *(&v79 + 1) = v120;
      *(&v80 + 1) = v121;
    }

    else
    {
      sub_1A35B72C8(v60, v61, v63);

      v79 = 0uLL;
      v80 = 0uLL;
    }

    LOBYTE(v132[0]) = v74 ^ 1;
    *&v133[0] = v60;
    *(&v133[0] + 1) = v61;
    LOBYTE(v133[1]) = v63;
    *(&v133[1] + 1) = v62;
    LOBYTE(v133[2]) = v64;
    *(&v133[2] + 1) = v66;
    *&v133[3] = v68;
    *(&v133[3] + 1) = v70;
    *&v133[4] = v72;
    BYTE8(v133[4]) = 0;
    LOBYTE(v133[5]) = v73;
    *(&v133[5] + 8) = v79;
    *(&v133[6] + 8) = v80;
    BYTE8(v133[7]) = v74 ^ 1;
    nullsub_1(*&v79, *&v80);
    memcpy(v134, v133, 0x79uLL);
    v40 = v125;
    v41 = v126;
  }

  else
  {
    sub_1A35C8B0C(v134);
  }

  TipViewStyleConfiguration.message.getter();
  if (v84)
  {
    v85 = v81;
    v86 = v82;
    v87 = v84;
    v88 = v83 & 1;
    sub_1A35F81DC(v81, v82, v83 & 1);
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    v89 = sub_1A362225C();
    sub_1A36216DC();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v130[0] = v88;
    v129[0] = 0;
    v98 = sub_1A362222C();
    sub_1A36216DC();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v106 = v105;
    sub_1A35B72C8(v85, v86, v88);

    v131[0] = 0;
    v132[0] = v85;
    v132[1] = v86;
    LOBYTE(v132[2]) = v88;
    v132[3] = v87;
    LOBYTE(v132[4]) = v89;
    v132[5] = v91;
    v132[6] = v93;
    v132[7] = v95;
    v132[8] = v97;
    LOBYTE(v132[9]) = 0;
    LOBYTE(v132[10]) = v98;
    v132[11] = v100;
    v132[12] = v102;
    v132[13] = v104;
    v132[14] = v106;
    LOBYTE(v132[15]) = 0;
    nullsub_1(v107, v108);
    memcpy(v133, v132, 0x79uLL);
  }

  else
  {
    sub_1A35C8B0C(v133);
  }

  if (*(a1 + *(v40 + 40) + 4) == 1)
  {
    v109 = TipViewStyleConfiguration.actions.getter();
  }

  else
  {
    v109 = 0;
  }

  v110 = v123;
  sub_1A35B567C(v41, v123, &qword_1EB0EF2C0);
  memcpy(v128, v134, sizeof(v128));
  memcpy(v127, v133, sizeof(v127));
  v111 = v124;
  sub_1A35B567C(v110, v124, &qword_1EB0EF2C0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2E0);
  v113 = v112[12];
  memcpy(v129, v128, 0x79uLL);
  memcpy((v111 + v113), v128, 0x79uLL);
  v114 = v112[16];
  memcpy(v130, v127, 0x79uLL);
  memcpy((v111 + v114), v127, 0x79uLL);
  *(v111 + v112[20]) = v109;
  sub_1A35B567C(v129, v132, &qword_1EB0EF2E8);
  sub_1A35B567C(v130, v132, &qword_1EB0EF2F0);
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A3602FAC(v41, &qword_1EB0EF2C0);

  memcpy(v131, v127, 0x79uLL);
  sub_1A3602FAC(v131, &qword_1EB0EF2F0);
  memcpy(v132, v128, 0x79uLL);
  sub_1A3602FAC(v132, &qword_1EB0EF2E8);
  sub_1A3602FAC(v110, &qword_1EB0EF2C0);
}

uint64_t sub_1A35FE184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A35B2260(a2 + 72, v7);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF298);
  sub_1A35F49B0(v7, a3 + *(v5 + 36));
  return sub_1A35B567C(a1, a3, &qword_1EB0EF278);
}

uint64_t sub_1A35FE1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MiniTipView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3601B24(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1A3601C58(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1A35B567C(a1, a3, &qword_1EB0EF210);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF240);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1A35FE36C;
  v12[1] = 0;
  v12[2] = sub_1A3601B7C;
  v12[3] = v10;
  return result;
}

uint64_t sub_1A35FE36C@<X0>(BOOL *a1@<X8>)
{
  result = sub_1A362188C();
  *a1 = v3 < 200.0;
  return result;
}

uint64_t sub_1A35FE3A8()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MiniTipView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  v0 = sub_1A36228BC();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A3622A4C();
  sub_1A362193C();
}

unint64_t sub_1A35FE530()
{
  result = qword_1EB0EF230;
  if (!qword_1EB0EF230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF218);
    sub_1A35FE5E8();
    sub_1A3602E28(&unk_1EB0EF248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF230);
  }

  return result;
}

unint64_t sub_1A35FE5E8()
{
  result = qword_1EB0EF238;
  if (!qword_1EB0EF238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF240);
    sub_1A3602E28(&unk_1EB0EF248);
    sub_1A3602E28(&unk_1EB0EF250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF238);
  }

  return result;
}

void sub_1A35FE6CC(_BYTE *a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF300);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1A362231C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A36227EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TipViewStyleConfiguration.imageView.getter();
  if (v13)
  {
    v14 = v13;
    type metadata accessor for MiniTipView.ImageView(0);
    sub_1A3622A1C();
    sub_1A362186C();
    LOBYTE(v53) = v40;
    v32 = v42;
    v31 = 1;
    *&v33 = v14;
    *(&v33 + 1) = v39;
    LOBYTE(v34) = v40;
    *(&v34 + 1) = v41;
    LOBYTE(v35[0]) = v42;
    *(v35 + 8) = v43;
    BYTE8(v35[1]) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF340);
    sub_1A3602158();
    sub_1A3621F1C();
    v33 = v44[0];
    v34 = v44[1];
    v35[0] = v45[0];
    *(v35 + 9) = *(v45 + 9);
    v37 = 0;
    sub_1A35B567C(v44, v38, &qword_1EB0EF360);
    v15 = &qword_1EB0EF338;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF330);
    sub_1A3602320(&unk_1ED81DD70);
    sub_1A36021DC();
    sub_1A3621F1C();
  }

  else
  {
    v16 = TipViewStyleConfiguration.image.getter();
    if (!v16)
    {
      v28 = v30;
      bzero(v30, 0xB0uLL);
      v28[178] = -1;
      *(v28 + 88) = 0;
      return;
    }

    v17 = v16;
    (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
    v18 = sub_1A362280C();
    v29 = v17;
    v19 = v18;
    (*(v10 + 8))(v12, v9);
    (*(v6 + 104))(v8, *MEMORY[0x1E6980EE8], v5);
    v20 = sub_1A36222AC();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
    sub_1A36222BC();
    v21 = sub_1A36222EC();
    sub_1A3602FAC(v4, &qword_1EB0EF300);
    (*(v6 + 8))(v8, v5);
    KeyPath = swift_getKeyPath();
    v23 = type metadata accessor for MiniTipView.ImageView(0);
    sub_1A35A6350(v1 + *(v23 + 24), &v43 + 8);
    v39 = v19;
    v40 = 0;
    LOWORD(v41) = 1;
    v42 = KeyPath;
    *&v43 = v21;
    sub_1A3622A1C();
    sub_1A362186C();
    sub_1A35B567C(&v39, v38, &qword_1EB0EF308);
    v38[5] = v53;
    v38[6] = v54;
    v38[7] = v55;
    sub_1A35B567C(v38, &v33, &qword_1EB0EF310);
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF310);
    sub_1A35C53B0();
    sub_1A3621F1C();
    sub_1A3602FAC(v38, &qword_1EB0EF310);
    sub_1A3602FAC(&v39, &qword_1EB0EF308);
    LOBYTE(KeyPath) = sub_1A362221C();
    sub_1A36216DC();
    v46 = KeyPath;
    v47 = v24;
    v48 = v25;
    v49 = v26;
    v50 = v27;
    v51 = 0;
    v52 = (*(v1 + *(type metadata accessor for TipViewStyleConfiguration() + 40) + 3) & 1) == 0;
    v15 = &qword_1EB0EF330;
    sub_1A35B567C(v44, &v33, &qword_1EB0EF330);
    v37 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF338);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF330);
    sub_1A3602320(&unk_1ED81DD70);
    sub_1A36021DC();
    sub_1A3621F1C();
  }

  sub_1A3602FAC(v44, v15);
}

uint64_t sub_1A35FED20@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_1A3621DCC();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - v4;
  v5 = sub_1A3621A2C();
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF470);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v40 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF490);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v40 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF498);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v40 - v14;
  __src[0] = sub_1A36227AC();
  v15 = sub_1A36223AC();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  KeyPath = swift_getKeyPath();
  v23 = v19 & 1;
  LOBYTE(__src[0]) = v19 & 1;
  __dst[0] = 1;
  v24 = sub_1A362230C();
  v25 = swift_getKeyPath();
  __src[0] = v15;
  __src[1] = v17;
  LOBYTE(__src[2]) = v23;
  __src[3] = v21;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  *(&__src[6] + 1) = 256;
  __src[7] = v25;
  __src[8] = v24;
  v26 = v56;
  v27 = *(v56 + 104);
  v27(v10, *MEMORY[0x1E697E6F8], v5);
  v27(v7, *MEMORY[0x1E697E6D0], v5);
  sub_1A3601E38(&qword_1ED81E6E8);
  result = sub_1A3622B3C();
  if (result)
  {
    v29 = *(v26 + 32);
    v30 = v40;
    v29(v40, v10, v5);
    v31 = v44;
    v29((v30 + *(v44 + 48)), v7, v5);
    v32 = v41;
    sub_1A35B567C(v30, v41, &qword_1EB0EF3B0);
    v33 = *(v31 + 48);
    v34 = v42;
    v29(v42, v32, v5);
    v35 = *(v26 + 8);
    v35(v32 + v33, v5);
    sub_1A3602808(v30, v32, &qword_1EB0EF3B0);
    v29((v34 + *(v43 + 36)), (v32 + *(v31 + 48)), v5);
    v35(v32, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF478);
    sub_1A35BF15C();
    sub_1A3602E28(&qword_1ED81E678);
    v36 = v45;
    sub_1A36224DC();
    sub_1A3602FAC(v34, &qword_1EB0EF398);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1A3602FAC(__dst, &qword_1EB0EF478);
    sub_1A36229FC();
    sub_1A3621AFC();
    v37 = v51;
    (*(v46 + 32))(v51, v36, v50);
    memcpy((v37 + *(v48 + 36)), __src, 0x70uLL);
    v38 = v52;
    sub_1A3621DBC();
    sub_1A3603000();
    v39 = v47;
    sub_1A36225BC();
    (*(v53 + 8))(v38, v54);
    sub_1A3602FAC(v37, &qword_1EB0EF490);
    sub_1A3621A5C();
    return sub_1A3602FAC(v39, &qword_1EB0EF498);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A35FF53C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v43 - v3;
  v4 = sub_1A3621A2C();
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v43 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF300);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = sub_1A362231C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF470);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v43 - v16;
  __src[0] = sub_1A36227BC();
  v54 = sub_1A36223AC();
  v53 = v17;
  v19 = v18;
  v21 = v20;

  KeyPath = swift_getKeyPath();
  v23 = v19 & 1;
  LOBYTE(__src[0]) = v19 & 1;
  __dst[0] = 1;
  (*(v13 + 104))(v15, *MEMORY[0x1E6980EF0], v12);
  v24 = sub_1A36222AC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v24);
  sub_1A36222BC();
  v25 = sub_1A36222EC();
  sub_1A3602FAC(v11, &qword_1EB0EF300);
  v26 = v12;
  v27 = v55;
  (*(v13 + 8))(v15, v26);
  v28 = swift_getKeyPath();
  __src[0] = v54;
  __src[1] = v53;
  LOBYTE(__src[2]) = v23;
  __src[3] = v21;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  *(&__src[6] + 1) = 256;
  __src[7] = v28;
  __src[8] = v25;
  v29 = v57;
  v30 = *(v57 + 104);
  v30(v27, *MEMORY[0x1E697E6F8], v4);
  v31 = v56;
  v30(v56, *MEMORY[0x1E697E6D0], v4);
  sub_1A3601E38(&qword_1ED81E6E8);
  result = sub_1A3622B3C();
  if (result)
  {
    v33 = *(v29 + 32);
    v34 = v45;
    v33(v45, v27, v4);
    v35 = v51;
    v33((v34 + *(v51 + 48)), v31, v4);
    v36 = v46;
    sub_1A35B567C(v34, v46, &qword_1EB0EF3B0);
    v37 = *(v35 + 48);
    v38 = v49;
    v33(v49, v36, v4);
    v39 = *(v29 + 8);
    v39(v36 + v37, v4);
    sub_1A3602808(v34, v36, &qword_1EB0EF3B0);
    v33((v38 + *(v50 + 36)), (v36 + *(v35 + 48)), v4);
    v39(v36, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF478);
    sub_1A35BF15C();
    sub_1A3602E28(&qword_1ED81E678);
    v40 = v44;
    sub_1A36224DC();
    sub_1A3602FAC(v38, &qword_1EB0EF398);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1A3602FAC(__dst, &qword_1EB0EF478);
    sub_1A36229FC();
    sub_1A3621AFC();
    v41 = v52;
    (*(v47 + 32))(v52, v40, v48);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF490);
    return memcpy((v41 + *(v42 + 36)), __src, 0x70uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A35FFD24(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B8);
  sub_1A3602E28(&qword_1ED81DD20);
  sub_1A3602E28(&unk_1EB0EF3C0);
  sub_1A35BBD14();
  return sub_1A36229AC();
}

uint64_t sub_1A35FFE70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v109 = a2;
  v110 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v85 - v5;
  v6 = sub_1A3621F7C();
  v89 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3D0);
  v87 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v85 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3D8);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v13 = &v85 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3E0);
  v93 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v85 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3E8);
  MEMORY[0x1EEE9AC00](v88);
  v92 = &v85 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3F0);
  MEMORY[0x1EEE9AC00](v90);
  v98 = &v85 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3F8);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v85 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF400);
  MEMORY[0x1EEE9AC00](v102);
  v94 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF408);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v108 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v106 = &v85 - v22;
  v107 = sub_1A362299C();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  v27 = a1[1];
  v116 = *a1;
  v117 = v27;
  v28 = a1[3];
  v118 = a1[2];
  v119 = v28;
  sub_1A3622E3C();
  v101 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v103 = v26;
  v29 = sub_1A362298C();
  v30 = v119;
  MEMORY[0x1EEE9AC00](v29);
  *(&v85 - 2) = &v116;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF410);
  sub_1A3602864();
  v86 = v30;
  sub_1A36228FC();
  sub_1A3621F6C();
  v31 = sub_1A3602E28(&unk_1ED81D660);
  v32 = sub_1A3601E38(&unk_1ED81D670);
  v33 = v13;
  sub_1A362245C();
  (*(v89 + 8))(v8, v6);
  v34 = v9;
  (*(v87 + 8))(v11, v9);
  if (BYTE8(v117))
  {
    v35 = 1;
  }

  else
  {
    v35 = 1;
    if (!v117)
    {
      sub_1A3621A8C();
      v35 = 0;
    }
  }

  v36 = sub_1A3621A9C();
  v37 = v111;
  __swift_storeEnumTagSinglePayload(v111, v35, 1, v36);
  v112 = v34;
  v113 = v6;
  v114 = v31;
  v115 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v91;
  v39 = v100;
  sub_1A36224FC();
  sub_1A3602FAC(v37, &qword_1EB0EF3C8);
  (*(v99 + 8))(v33, v39);
  KeyPath = swift_getKeyPath();
  v41 = v92;
  (*(v93 + 32))(v92, v38, v96);
  v42 = &v41[*(v88 + 36)];
  *v42 = KeyPath;
  *(v42 + 1) = 0;
  v42[16] = 1;
  LOBYTE(KeyPath) = sub_1A362221C();
  sub_1A36216DC();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v41;
  v52 = v98;
  sub_1A3602808(v51, v98, &qword_1EB0EF3E8);
  v53 = v52 + *(v90 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  LOBYTE(KeyPath) = sub_1A362222C();
  sub_1A36216DC();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v52;
  v63 = v97;
  sub_1A3602808(v62, v97, &qword_1EB0EF3F0);
  v64 = v63 + *(v95 + 36);
  *v64 = KeyPath;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61;
  *(v64 + 40) = 0;
  LOBYTE(KeyPath) = sub_1A362225C();
  v65 = v94;
  v66 = sub_1A3602808(v63, v94, &qword_1EB0EF3F8);
  v67 = v65 + *(v102 + 36);
  *v67 = KeyPath;
  *(v67 + 8) = 0u;
  *(v67 + 24) = 0u;
  *(v67 + 40) = 1;
  v68 = (v118)(v66);
  v70 = v69;
  v72 = v71;
  v73 = swift_allocObject();
  *(v73 + 16) = v86;
  *(v73 + 24) = *(&v30 + 1);
  sub_1A3602AD0();
  v74 = v106;
  sub_1A362253C();

  sub_1A35B72C8(v68, v70, v72 & 1);

  sub_1A3602FAC(v65, &qword_1EB0EF400);
  v75 = v104;
  v76 = *(v104 + 16);
  v77 = v105;
  v78 = v103;
  v79 = v107;
  v76(v105, v103, v107);
  v80 = v108;
  sub_1A35C8E74(v74, v108);
  v81 = v110;
  v76(v110, v77, v79);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF468);
  sub_1A35C8E74(v80, &v81[*(v82 + 48)]);
  sub_1A3602FAC(v74, &qword_1EB0EF408);
  v83 = *(v75 + 8);
  v83(v78, v79);
  sub_1A3602FAC(v80, &qword_1EB0EF408);
  v83(v77, v79);
}

uint64_t sub_1A3600A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v37 - v5;
  v6 = sub_1A3621A2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF418);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v37 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF410);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v37 - v17;
  sub_1A3622E3C();
  v43 = sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v19 = (*(a1 + 32))(isCurrentExecutor);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v48 = v23 & 1;
  *&__src[0] = v19;
  *(&__src[0] + 1) = v21;
  LOBYTE(__src[1]) = v23 & 1;
  *(&__src[1] + 1) = v25;
  LOWORD(__src[2]) = 256;
  *(&__src[2] + 1) = KeyPath;
  LOBYTE(__src[3]) = 0;
  v27 = v7[13];
  v27(v12, *MEMORY[0x1E697E6F8], v6);
  v27(v9, *MEMORY[0x1E697E6D0], v6);
  sub_1A3601E38(&qword_1ED81E6E8);
  result = sub_1A3622B3C();
  if (result)
  {
    v29 = v7[4];
    v30 = v39;
    v29(v39, v12, v6);
    v38 = v15;
    v31 = v42;
    v29((v30 + *(v42 + 48)), v9, v6);
    v32 = v40;
    sub_1A35B567C(v30, v40, &qword_1EB0EF3B0);
    v33 = *(v31 + 48);
    v29(v14, v32, v6);
    v34 = v7[1];
    v34(v32 + v33, v6);
    sub_1A3602808(v30, v32, &qword_1EB0EF3B0);
    v29(&v14[*(v41 + 36)], (v32 + *(v31 + 48)), v6);
    v34(v32, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF420);
    sub_1A35B97E8();
    sub_1A3602E28(&qword_1ED81E678);
    v35 = v46;
    sub_1A36224DC();
    sub_1A3602FAC(v14, &qword_1EB0EF398);
    v49[0] = __src[0];
    v49[1] = __src[1];
    v49[2] = __src[2];
    v50 = __src[3];
    sub_1A3602FAC(v49, &qword_1EB0EF420);
    *(v35 + *(v38 + 36)) = sub_1A362269C();
    sub_1A3622A3C();
    sub_1A3621AFC();
    v36 = v45;
    sub_1A3602808(v35, v45, &qword_1EB0EF418);
    memcpy((v36 + *(v44 + 36)), __src, 0x70uLL);
    sub_1A3602808(v36, v47, &qword_1EB0EF410);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3601080@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = sub_1A362206C();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A3621ABC();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF368);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF370);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v21 - v10;
  v12 = *v1;
  v22 = v1;
  v23 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF378);
  sub_1A36023E8();
  sub_1A36228FC();
  sub_1A3621AAC();
  sub_1A3602E28(&unk_1ED81DD30);
  sub_1A3601E38(&qword_1ED81E6B8);
  v13 = v24;
  sub_1A362245C();
  (*(v3 + 8))(v5, v13);
  (*(v7 + 8))(v9, v6);
  LOBYTE(v6) = sub_1A362221C();
  type metadata accessor for MiniTipView.CloseButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF2F8);
  sub_1A362180C();
  sub_1A36216DC();
  v14 = &v11[*(v25 + 36)];
  *v14 = v6;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v19 = v26;
  sub_1A362205C();
  sub_1A36026BC();
  sub_1A362254C();
  (*(v27 + 8))(v19, v29);
  return sub_1A3602FAC(v11, &qword_1EB0EF370);
}

uint64_t sub_1A3601470@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v39);
  v2 = v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = v31 - v4;
  v5 = sub_1A3621A2C();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v31 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF390);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v13 = v31 - v12;
  sub_1A3622E3C();
  v14 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = sub_1A36227DC();
  LOWORD(v43) = 1;
  sub_1A36222CC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF320);
  v32 = sub_1A36020D4();
  v33 = v15;
  sub_1A362244C();

  v16 = v41;
  v17 = *(v41 + 104);
  v17(v10, *MEMORY[0x1E697E6F8], v5);
  v17(v7, *MEMORY[0x1E697E720], v5);
  sub_1A3601E38(&qword_1ED81E6E8);
  result = sub_1A3622B3C();
  if (result)
  {
    v19 = *(v16 + 32);
    v20 = v35;
    v19(v35, v10, v5);
    v31[1] = v14;
    v21 = v39;
    v19((v20 + *(v39 + 48)), v7, v5);
    sub_1A35B567C(v20, v2, &qword_1EB0EF3B0);
    v22 = *(v21 + 48);
    v31[0] = v13;
    v23 = v36;
    v19(v36, v2, v5);
    v24 = *(v16 + 8);
    v24(&v2[v22], v5);
    sub_1A3602808(v20, v2, &qword_1EB0EF3B0);
    v19((v23 + *(v38 + 36)), &v2[*(v21 + 48)], v5);
    v24(v2, v5);
    *&v42 = v33;
    *(&v42 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    sub_1A3602E28(&qword_1ED81E678);
    v25 = v40;
    v26 = v37;
    v27 = v31[0];
    sub_1A36224DC();
    sub_1A3602FAC(v23, &qword_1EB0EF398);
    (*(v34 + 8))(v27, v26);
    v28 = sub_1A3621FEC();
    *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF388) + 36)) = v28;
    sub_1A3622A2C();
    sub_1A362186C();

    v29 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF380) + 36));
    v30 = v43;
    *v29 = v42;
    v29[1] = v30;
    v29[2] = v44;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF378);
    *(v25 + *(result + 36)) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3601A5C()
{
  result = qword_1EB0EF260;
  if (!qword_1EB0EF260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF218);
    sub_1A35FE530();
    swift_getOpaqueTypeConformance2();
    sub_1A35BB130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF260);
  }

  return result;
}

uint64_t sub_1A3601B24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_12();
  v4(v3);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_11_2();
  v6(v5);
  return a2;
}

uint64_t sub_1A3601B7C()
{
  v0 = type metadata accessor for MiniTipView(0);
  OUTLINED_FUNCTION_14(v0);

  return sub_1A35FE3A8();
}

uint64_t sub_1A3601C58(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_8_12();
  v4(v3);
  OUTLINED_FUNCTION_0_0();
  v5 = OUTLINED_FUNCTION_11_2();
  v6(v5);
  return a2;
}

unint64_t sub_1A3601CB0()
{
  result = qword_1ED81DFF8;
  if (!qword_1ED81DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DFF8);
  }

  return result;
}

uint64_t sub_1A3601D24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1A3601D7C()
{
  result = qword_1EB0EF2C8;
  if (!qword_1EB0EF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF2B0);
    sub_1A3601E38(&unk_1EB0EE200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF2C8);
  }

  return result;
}

unint64_t sub_1A3601E38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_9(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1A3601EA4()
{
  sub_1A35A9760();
  if (v0 <= 0x3F)
  {
    sub_1A3601F28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3601F28()
{
  if (!qword_1ED81DDE8)
  {
    sub_1A3601CB0();
    v0 = sub_1A362181C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED81DDE8);
    }
  }
}

uint64_t sub_1A3601FA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      OUTLINED_FUNCTION_10_9();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3601FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A36020D4()
{
  result = qword_1ED81E620;
  if (!qword_1ED81E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E620);
  }

  return result;
}

unint64_t sub_1A3602158()
{
  result = qword_1ED81E618;
  if (!qword_1ED81E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E618);
  }

  return result;
}

unint64_t sub_1A36021DC()
{
  result = qword_1EB0EF348;
  if (!qword_1EB0EF348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF330);
    sub_1A3602268();
    sub_1A3602394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF348);
  }

  return result;
}

unint64_t sub_1A3602268()
{
  result = qword_1ED81D690;
  if (!qword_1ED81D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF350);
    sub_1A3602320(&unk_1ED81D678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D690);
  }

  return result;
}

unint64_t sub_1A3602320(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_9(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_11_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1A3602394()
{
  result = qword_1ED81E0C0;
  if (!qword_1ED81E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E0C0);
  }

  return result;
}

unint64_t sub_1A36023E8()
{
  result = qword_1ED81DD90;
  if (!qword_1ED81DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF378);
    sub_1A36024A0();
    sub_1A3602E28(&unk_1ED81DD68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DD90);
  }

  return result;
}

unint64_t sub_1A36024A0()
{
  result = qword_1ED81DDA8;
  if (!qword_1ED81DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF380);
    sub_1A360252C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDA8);
  }

  return result;
}

unint64_t sub_1A360252C()
{
  result = qword_1ED81DDC8;
  if (!qword_1ED81DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF320);
    sub_1A36020D4();
    swift_getOpaqueTypeConformance2();
    sub_1A3602E28(&qword_1ED81E678);
    swift_getOpaqueTypeConformance2();
    sub_1A3602E28(&unk_1ED81E2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDC8);
  }

  return result;
}

unint64_t sub_1A36026BC()
{
  result = qword_1ED81DDD0;
  if (!qword_1ED81DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF368);
    sub_1A3621ABC();
    sub_1A3602E28(&unk_1ED81DD30);
    sub_1A3601E38(&qword_1ED81E6B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDD0);
  }

  return result;
}

uint64_t sub_1A3602808(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_31(a1, a2, a3);
  OUTLINED_FUNCTION_0_0();
  v4 = OUTLINED_FUNCTION_11_2();
  v5(v4);
  return v3;
}

unint64_t sub_1A3602864()
{
  result = qword_1ED81D680;
  if (!qword_1ED81D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF410);
    sub_1A36028F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D680);
  }

  return result;
}

unint64_t sub_1A36028F0()
{
  result = qword_1ED81D688;
  if (!qword_1ED81D688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF398);
    sub_1A35B97E8();
    sub_1A3602E28(&qword_1ED81E678);
    swift_getOpaqueTypeConformance2();
    sub_1A3602E28(&unk_1ED81D9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D688);
  }

  return result;
}

unint64_t sub_1A3602A44()
{
  result = qword_1ED81DDD8;
  if (!qword_1ED81DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DDD8);
  }

  return result;
}

unint64_t sub_1A3602AD0()
{
  result = qword_1EB0EF440;
  if (!qword_1EB0EF440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF400);
    sub_1A3602B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF440);
  }

  return result;
}

unint64_t sub_1A3602B5C()
{
  result = qword_1EB0EF448;
  if (!qword_1EB0EF448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF3F8);
    sub_1A3602BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF448);
  }

  return result;
}

unint64_t sub_1A3602BE8()
{
  result = qword_1EB0EF450;
  if (!qword_1EB0EF450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF3F0);
    sub_1A3602C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF450);
  }

  return result;
}

unint64_t sub_1A3602C74()
{
  result = qword_1EB0EF458;
  if (!qword_1EB0EF458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF3D0);
    sub_1A3621F7C();
    sub_1A3602E28(&unk_1ED81D660);
    sub_1A3601E38(&unk_1ED81D670);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3602E28(&unk_1ED81E698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF458);
  }

  return result;
}

unint64_t sub_1A3602E28(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_9(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_11_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1A3602E68()
{
  result = qword_1ED81E6C8;
  if (!qword_1ED81E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF480);
    sub_1A3602EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6C8);
  }

  return result;
}

unint64_t sub_1A3602EF4()
{
  result = qword_1ED81E6D8;
  if (!qword_1ED81E6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF488);
    sub_1A3602E28(&unk_1ED81E698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E6D8);
  }

  return result;
}

uint64_t sub_1A3602FAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1A3603000()
{
  result = qword_1ED81E308;
  if (!qword_1ED81E308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF398);
    sub_1A35BF15C();
    sub_1A3602E28(&qword_1ED81E678);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E308);
  }

  return result;
}

unint64_t sub_1A3603128()
{
  result = qword_1EB0EF4A0;
  if (!qword_1EB0EF4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4A8);
    sub_1A36031AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF4A0);
  }

  return result;
}

unint64_t sub_1A36031AC()
{
  result = qword_1EB0EF4B0;
  if (!qword_1EB0EF4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4B8);
    sub_1A3602320(&unk_1ED81DD70);
    sub_1A36021DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF4B0);
  }

  return result;
}

unint64_t sub_1A3603264(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_9(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_11_1(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1A3601E38(&qword_1ED81E690);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1A3603310()
{
  result = qword_1EB0EF4D0;
  if (!qword_1EB0EF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4D8);
    sub_1A3602E28(&unk_1EB0EF3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF4D0);
  }

  return result;
}

void sub_1A36033F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A36217AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A360344C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MiniTipSolariumView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA70);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5B0);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  swift_storeEnumTagMultiPayload();
  return sub_1A3608138(a1, a2, type metadata accessor for TipViewStyleConfiguration);
}

void sub_1A360354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5B8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF240);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &a9 - v31;
  if (v27)
  {
    v25(v20, v30);
    sub_1A35B567C(v32, v21, &qword_1EB0EF240);
    OUTLINED_FUNCTION_16_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF210);
    sub_1A35FE5E8();
    OUTLINED_FUNCTION_1_23();
    sub_1A35A9B78(v33, &qword_1EB0EF210);
    OUTLINED_FUNCTION_4_15();
    sub_1A3621F1C();
    sub_1A3602FAC(v32, &qword_1EB0EF240);
  }

  else
  {
    OUTLINED_FUNCTION_17_4();
    OUTLINED_FUNCTION_16_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF210);
    sub_1A35FE5E8();
    OUTLINED_FUNCTION_1_23();
    sub_1A35A9B78(v34, &qword_1EB0EF210);
    OUTLINED_FUNCTION_4_15();
    sub_1A3621F1C();
  }

  OUTLINED_FUNCTION_24();
}

void sub_1A3603724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF5C0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF298);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &a9 - v31;
  if (v27)
  {
    v25(v20, v30);
    sub_1A35B567C(v32, v21, &qword_1EB0EF298);
    OUTLINED_FUNCTION_16_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF278);
    sub_1A3608710();
    sub_1A360879C();
    OUTLINED_FUNCTION_4_15();
    sub_1A3621F1C();
    sub_1A3602FAC(v32, &qword_1EB0EF298);
  }

  else
  {
    OUTLINED_FUNCTION_17_4();
    OUTLINED_FUNCTION_16_2();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF278);
    sub_1A3608710();
    sub_1A360879C();
    OUTLINED_FUNCTION_4_15();
    sub_1A3621F1C();
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1A36038CC(char a1, void (*a2)(uint64_t, double))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF528);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF530);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  if (a1)
  {
    a2(v2, v9);
    sub_1A35B567C(v11, v7, &qword_1EB0EF530);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF508);
    sub_1A36081F4();
    sub_1A3608280();
    sub_1A3621F1C();
    return sub_1A3602FAC(v11, &qword_1EB0EF530);
  }

  else
  {
    sub_1A35B567C(v2, v7, &qword_1EB0EF508);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF508);
    sub_1A36081F4();
    sub_1A3608280();
    return sub_1A3621F1C();
  }
}

uint64_t sub_1A3603AD0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_1A3621DEC();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF768);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v29 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF770);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v29 - v7;
  v9 = sub_1A362211C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF778);
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v29 - v14;
  if (a1)
  {
    sub_1A362210C();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF730);
    v17 = sub_1A35A9B78(&qword_1ED81D9D0, &qword_1EB0EF730);
    v18 = sub_1A35BB23C(&qword_1ED81D9D8, MEMORY[0x1E697CB70]);
    sub_1A362245C();
    (*(v10 + 8))(v12, v9);
    v19 = v33;
    (*(v13 + 16))(v8, v15, v33);
    swift_storeEnumTagMultiPayload();
    v37 = v16;
    v38 = v9;
    v39 = v17;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    v20 = sub_1A35BB23C(&qword_1ED81DD78, MEMORY[0x1E697C540]);
    v37 = v16;
    v38 = v34;
    v39 = v17;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1A3621F1C();
    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    sub_1A3621DDC();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF730);
    v23 = sub_1A35A9B78(&qword_1ED81D9D0, &qword_1EB0EF730);
    v24 = sub_1A35BB23C(&qword_1ED81DD78, MEMORY[0x1E697C540]);
    v25 = v34;
    sub_1A362245C();
    (*(v30 + 8))(v4, v25);
    v26 = v31;
    v27 = v35;
    (*(v31 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1A35BB23C(&qword_1ED81D9D8, MEMORY[0x1E697CB70]);
    v37 = v22;
    v38 = v9;
    v39 = v23;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    v37 = v22;
    v38 = v25;
    v39 = v23;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1A3621F1C();
    return (*(v26 + 8))(v6, v27);
  }
}

uint64_t sub_1A36040BC@<X0>(char a1@<W2>, uint64_t a2@<X5>, void *a3@<X8>)
{
  if (a1)
  {
    sub_1A362186C();
    __src[0] = a2;
    __src[1] = *v9;
    LOBYTE(__src[2]) = v9[8];
    __src[3] = *&v9[16];
    LOBYTE(__src[4]) = v9[24];
    *&__src[5] = *&v9[32];
    sub_1A36092BC(__src);
    memcpy(__dst, __src, 0x79uLL);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF658);
    sub_1A35C5344(&qword_1ED81E618, &qword_1EB0EF340);
    sub_1A35C5344(&unk_1ED81D7F0, &qword_1EB0EF658);
  }

  else
  {
    sub_1A3621AFC();
    *v9 = a2;
    memcpy(&v9[8], v11, 0x70uLL);
    v6 = a2;
    memcpy(v7, v11, sizeof(v7));

    sub_1A35B567C(v9, v12, &qword_1EB0EF658);
    sub_1A3602FAC(&v6, &qword_1EB0EF658);
    memcpy(__src, v9, 0x78uLL);
    sub_1A36092B0(__src);
    memcpy(__dst, __src, 0x79uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF658);
    sub_1A35C5344(&qword_1ED81E618, &qword_1EB0EF340);
    sub_1A35C5344(&unk_1ED81D7F0, &qword_1EB0EF658);
  }

  sub_1A3621F1C();
  memcpy(__dst, v12, 0x79uLL);
  memcpy(a3, v12, 0x79uLL);
  memcpy(__src, v12, 0x79uLL);
  sub_1A35B567C(__dst, &v6, &qword_1EB0EF650);
  return sub_1A3602FAC(__src, &qword_1EB0EF650);
}

uint64_t sub_1A3604438@<X0>(char a1@<W2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v28 = a2;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF670);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF698);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF660);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  if (a1)
  {
    v17 = v14;
    sub_1A362186C();
    sub_1A35B567C(v29, v16, &qword_1EB0EF608);
    v18 = &v16[*(v17 + 36)];
    v19 = __src[1];
    *v18 = __src[0];
    *(v18 + 1) = v19;
    *(v18 + 2) = __src[2];
    sub_1A35B567C(v16, v12, &qword_1EB0EF660);
    swift_storeEnumTagMultiPayload();
    sub_1A3608D34();
    sub_1A3608F14();
    sub_1A3621F1C();
    v20 = v16;
    v21 = &qword_1EB0EF660;
  }

  else
  {
    v26 = v14;
    v27 = v10;
    v25 = v4;
    v22 = v29;
    sub_1A3621AFC();
    sub_1A35B567C(v22, v6, &qword_1EB0EF608);
    memcpy(&v6[*(v25 + 36)], __src, 0x70uLL);
    sub_1A3602808(v6, v9, &qword_1EB0EF670);
    sub_1A35B567C(v9, v12, &qword_1EB0EF670);
    swift_storeEnumTagMultiPayload();
    sub_1A3608D34();
    sub_1A3608F14();
    sub_1A3621F1C();
    v20 = v9;
    v21 = &qword_1EB0EF670;
  }

  return sub_1A3602FAC(v20, v21);
}

uint64_t sub_1A36047DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1A362186C();
    sub_1A35B567C(v3, __dst, &qword_1EB0EF640);
    __dst[4] = __src[0];
    __dst[5] = __src[1];
    __dst[6] = __src[2];
    v4 = &qword_1EB0EF688;
    sub_1A35B567C(__dst, v6, &qword_1EB0EF688);
    v7 = 0;
  }

  else
  {
    sub_1A3621AFC();
    sub_1A35B567C(v3, v6, &qword_1EB0EF640);
    memcpy(&v6[64], __src, 0x70uLL);
    memcpy(__dst, v6, sizeof(__dst));
    v4 = &qword_1EB0EF690;
    sub_1A35B567C(__dst, v6, &qword_1EB0EF690);
    v7 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF690);
  sub_1A36090B8();
  sub_1A36091D0();
  sub_1A3621F1C();
  return sub_1A3602FAC(__dst, v4);
}

uint64_t sub_1A3604A30(void (*a1)(uint64_t))
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_1A3604AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for TipViewStyleConfiguration();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF508);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF510);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_1A3621DFC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF518);
  sub_1A3604F14(a1, &v7[*(v14 + 44)]);
  v15 = sub_1A362220C();
  v16 = &v7[*(v5 + 36)];
  *v16 = v15;
  *(v16 + 8) = xmmword_1A3629AA0;
  __asm { FMOV            V0.2D, #16.0 }

  *(v16 + 24) = _Q0;
  v16[40] = 0;
  sub_1A35B2260(a1 + 72, v35);
  v22 = v35[0];
  sub_1A35B22BC(v35);
  v23 = 0;
  if (v22 == 4)
  {
    sub_1A35B2260(a1 + 72, v34);
    if (v34[0] == 4 && v34[24] == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1A35B22BC(v34);
      if (Strong)
      {
        swift_unknownObjectRelease();
        v23 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      sub_1A35B22BC(v34);
    }

    v23 = 1;
  }

LABEL_10:
  MEMORY[0x1EEE9AC00](v23);
  *(&v32 - 2) = a1;
  sub_1A36038CC(v25, sub_1A3608130);
  sub_1A3602FAC(v7, &qword_1EB0EF508);
  sub_1A35B63C8(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_1A3608138(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for TipViewStyleConfiguration);
  LOBYTE(v26) = sub_1A362220C();
  v34[0] = 0;
  sub_1A35B567C(v13, v10, &qword_1EB0EF510);
  v28 = v34[0];
  v29 = v33;
  sub_1A35B567C(v10, v33, &qword_1EB0EF510);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF520) + 48);
  *v30 = sub_1A3608194;
  *(v30 + 8) = v27;
  *(v30 + 16) = v26;
  *(v30 + 24) = 0x4028000000000000;
  *(v30 + 32) = 0;
  *(v30 + 40) = 0;
  *(v30 + 48) = 0x4028000000000000;
  *(v30 + 56) = v28;

  sub_1A3602FAC(v13, &qword_1EB0EF510);

  sub_1A3602FAC(v10, &qword_1EB0EF510);
}

uint64_t sub_1A3604F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v110 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF540);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v92 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF548);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v92 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF550);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v92 - v10;
  v94 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  v15 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MiniTipSolariumView.ImageView(0);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF558);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v98 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF560);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v92 - v23;
  v24 = sub_1A3621A2C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF568);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v102 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  sub_1A3622E3C();
  v103 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(v15 + 40);
  v34 = v108;
  v35 = (v108 + v33);
  if (*(v108 + v33 + 2) != 1)
  {
    v65 = 1;
LABEL_9:
    v64 = &unk_1A3629000;
    goto LABEL_13;
  }

  v93 = v20;
  v36 = v32;
  type metadata accessor for MiniTipSolariumView(0);
  sub_1A360855C(&unk_1EB0EEA70, &unk_1A3626750, MEMORY[0x1E697E730], v37, v38, v39, v40, v41, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v42 = sub_1A3621A1C();
  (*(v25 + 8))(v27, v24);
  if ((v42 & 1) == 0)
  {
    v65 = 1;
    v20 = v93;
    goto LABEL_9;
  }

  v43 = sub_1A35B63C8(v34, v101);
  sub_1A35B83D0(v43, v44, v45, v46, v47, v48, v49, v50, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v51 = v94;
  v52 = &v14[*(v94 + 40)];
  v53 = *v52;
  v54 = *(v52 + 1);
  HIDWORD(v92) = v52[16];
  v55 = sub_1A36084FC(v14, type metadata accessor for TipViewEnvironment);
  v56 = v95;
  sub_1A35B83D0(v55, v57, v58, v59, v60, v61, v62, v63, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  sub_1A35B567C(v56 + *(v51 + 44), __src, &unk_1EB0EF950);
  sub_1A36084FC(v56, type metadata accessor for TipViewEnvironment);
  if (*(&__src[1] + 1))
  {
    sub_1A35A63BC(__src, &v112);
    v32 = v36;
    v64 = &unk_1A3629000;
  }

  else
  {
    v113 = sub_1A36219EC();
    v114 = MEMORY[0x1E697E558];
    __swift_allocate_boxed_opaque_existential_0(&v112);
    sub_1A36219DC();
    v32 = v36;
    v64 = &unk_1A3629000;
    if (*(&__src[1] + 1))
    {
      sub_1A3602FAC(__src, &unk_1EB0EF950);
    }
  }

  sub_1A35B2260(v34 + 72, __src);
  v66 = LOBYTE(__src[0]);
  sub_1A35B22BC(__src);
  v67 = v99;
  sub_1A3608138(v101, v99, type metadata accessor for TipViewStyleConfiguration);
  v68 = v100;
  v69 = v67 + *(v100 + 20);
  *v69 = v53;
  *(v69 + 8) = v54;
  *(v69 + 16) = BYTE4(v92);
  sub_1A35A63BC(&v112, v67 + *(v68 + 24));
  *(v67 + *(v68 + 28)) = v66 != 4;
  sub_1A35BB23C(&qword_1ED81E290, type metadata accessor for MiniTipSolariumView.ImageView);
  v70 = v98;
  sub_1A362255C();
  sub_1A36084FC(v67, type metadata accessor for MiniTipSolariumView.ImageView);
  LOBYTE(v66) = sub_1A362220C();
  v71 = v70;
  v72 = v97;
  sub_1A3602808(v71, v97, &qword_1EB0EF558);
  v20 = v93;
  v73 = v72 + *(v93 + 36);
  *v73 = v66;
  *(v73 + 8) = v64[171];
  *(v73 + 24) = xmmword_1A3629AC0;
  *(v73 + 40) = 0;
  v74 = v72;
  v75 = v96;
  sub_1A3602808(v74, v96, &qword_1EB0EF560);
  sub_1A3602808(v75, v32, &qword_1EB0EF560);
  v65 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v32, v65, 1, v20);
  if (*v35 == 1 && (v35[1] & 1) != 0)
  {
    v76 = v32;
    v77 = sub_1A3621D1C();
  }

  else
  {
    v76 = v32;
    v77 = sub_1A3621D2C();
  }

  *v4 = v77;
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF570);
  sub_1A3605A10(v34, &v4[*(v78 + 44)]);
  v79 = v35[4];
  if (v35[4])
  {
    v80 = 0x4036000000000000;
  }

  else
  {
    v80 = 0x4018000000000000;
  }

  v81 = sub_1A362220C();
  v82 = v107;
  sub_1A3602808(v4, v107, &qword_1EB0EF540);
  v83 = v82 + *(v104 + 36);
  *v83 = v81;
  *(v83 + 8) = v64[171];
  *(v83 + 24) = v80;
  *(v83 + 32) = 0x4018000000000000;
  *(v83 + 40) = 0;
  sub_1A36229FC();
  sub_1A3621AFC();
  v84 = v105;
  sub_1A3602808(v82, v105, &qword_1EB0EF548);
  memcpy((v84 + *(v106 + 36)), __src, 0x70uLL);
  sub_1A3602808(v84, v111, &qword_1EB0EF550);
  v85 = 0;
  if (v79)
  {
    v85 = TipViewStyleConfiguration.actions.getter();
  }

  v86 = v102;
  sub_1A35B567C(v76, v102, &qword_1EB0EF568);
  v87 = v111;
  v88 = v109;
  sub_1A35B567C(v111, v109, &qword_1EB0EF550);
  v89 = v110;
  sub_1A35B567C(v86, v110, &qword_1EB0EF568);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF578);
  sub_1A35B567C(v88, v89 + *(v90 + 48), &qword_1EB0EF550);
  *(v89 + *(v90 + 64)) = v85;
  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  sub_1A3602FAC(v87, &qword_1EB0EF550);
  sub_1A3602FAC(v76, &qword_1EB0EF568);

  sub_1A3602FAC(v88, &qword_1EB0EF550);
  sub_1A3602FAC(v86, &qword_1EB0EF568);
}

uint64_t sub_1A3605A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v63 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  v7 = type metadata accessor for TipViewStyleConfiguration();
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for MiniTipSolariumView.ImageView(0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF558);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v62 - v10;
  v11 = sub_1A3621A2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF580);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  sub_1A3622E3C();
  v72 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = 1;
  if (*(a1 + *(v7 + 40) + 2) == 1)
  {
    type metadata accessor for MiniTipSolariumView(0);
    sub_1A360855C(&unk_1EB0EEA70, &unk_1A3626750, MEMORY[0x1E697E730], v21, v22, v23, v24, v25, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *v73);
    v26 = sub_1A3621A1C();
    (*(v12 + 8))(v14, v11);
    if (v26)
    {
      v20 = 1;
    }

    else
    {
      v27 = sub_1A35B63C8(a1, v68);
      sub_1A35B83D0(v27, v28, v29, v30, v31, v32, v33, v34, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *v73);
      v35 = v63;
      v36 = &v6[*(v63 + 40)];
      v37 = *v36;
      v38 = *(v36 + 1);
      v39 = v36[16];
      v40 = sub_1A36084FC(v6, type metadata accessor for TipViewEnvironment);
      v41 = v64;
      sub_1A35B83D0(v40, v42, v43, v44, v45, v46, v47, v48, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, *v73);
      sub_1A35B567C(v41 + *(v35 + 44), v74, &unk_1EB0EF950);
      sub_1A36084FC(v41, type metadata accessor for TipViewEnvironment);
      if (*&v74[24])
      {
        sub_1A35A63BC(v74, v73);
      }

      else
      {
        *&v73[24] = sub_1A36219EC();
        *&v73[32] = MEMORY[0x1E697E558];
        __swift_allocate_boxed_opaque_existential_0(v73);
        sub_1A36219DC();
        if (*&v74[24])
        {
          sub_1A3602FAC(v74, &unk_1EB0EF950);
        }
      }

      sub_1A35B2260(a1 + 72, v74);
      v49 = v74[0];
      sub_1A35B22BC(v74);
      v50 = v66;
      sub_1A3608138(v68, v66, type metadata accessor for TipViewStyleConfiguration);
      v51 = v67;
      v52 = v50 + *(v67 + 20);
      *v52 = v37;
      *(v52 + 8) = v38;
      *(v52 + 16) = v39;
      sub_1A35A63BC(v73, v50 + *(v51 + 24));
      *(v50 + *(v51 + 28)) = v49 != 4;
      sub_1A35BB23C(&qword_1ED81E290, type metadata accessor for MiniTipSolariumView.ImageView);
      v53 = v65;
      sub_1A362255C();
      sub_1A36084FC(v50, type metadata accessor for MiniTipSolariumView.ImageView);
      sub_1A3602808(v53, v19, &qword_1EB0EF558);
      v20 = 0;
    }
  }

  v54 = v19;
  __swift_storeEnumTagSinglePayload(v19, v20, 1, v69);
  v55 = sub_1A3621DFC();
  v77 = 0;
  sub_1A36061A4(a1, v74);
  memcpy(v79, v74, 0xD9uLL);
  memcpy(v80, v74, 0xD9uLL);
  sub_1A35B567C(v79, v73, &qword_1EB0EF588);
  sub_1A3602FAC(v80, &qword_1EB0EF588);
  memcpy(&v76[7], v79, 0xD9uLL);
  v56 = v77;
  sub_1A36229FC();
  sub_1A3621AFC();
  memcpy(&v78[7], __src, 0x70uLL);
  v57 = v19;
  v58 = v71;
  sub_1A35B567C(v57, v71, &qword_1EB0EF580);
  v59 = v70;
  sub_1A35B567C(v58, v70, &qword_1EB0EF580);
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF590) + 48);
  *v73 = v55;
  *&v73[8] = 0x4010000000000000;
  v73[16] = v56;
  memcpy(&v73[17], v76, 0xE0uLL);
  memcpy(&v73[241], v78, 0x77uLL);
  memcpy((v59 + v60), v73, 0x168uLL);
  sub_1A35B567C(v73, v74, &qword_1EB0EF598);
  sub_1A3602FAC(v54, &qword_1EB0EF580);
  *v74 = v55;
  *&v74[8] = 0x4010000000000000;
  v74[16] = v56;
  memcpy(&v74[17], v76, 0xE0uLL);
  memcpy(v75, v78, sizeof(v75));
  sub_1A3602FAC(v74, &qword_1EB0EF598);
  sub_1A3602FAC(v58, &qword_1EB0EF580);
}

uint64_t sub_1A36061A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF300);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v79 - v4;
  v93 = sub_1A362231C();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3621A2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1A362234C();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A36222FC();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3622E3C();
  v95 = sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  TipViewStyleConfiguration.title.getter();
  if (v16)
  {
    v17 = v14;
    v18 = v16;
    v79 = v7;
    v82 = v15;
    v84 = v13;
    HIDWORD(v83) = v15 & 1;
    sub_1A35F81DC(v13, v14, v15 & 1);
    _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
    v81 = sub_1A362230C();
    HIDWORD(v80) = sub_1A362221C();
    v19 = a1 + *(type metadata accessor for TipViewStyleConfiguration() + 40);
    if (*(v19 + 1))
    {
      type metadata accessor for MiniTipSolariumView(0);
      sub_1A360855C(&unk_1EB0EF5B0, &unk_1A3629C38, MEMORY[0x1E6980E88], v20, v21, v22, v23, v24, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
      sub_1A362230C();
      sub_1A362232C();
      v25 = sub_1A362233C();
      (*(v86 + 8))(v10, v88);
      sub_1A35CDF10();

      (*(v85 + 8))(v12, v87);
    }

    sub_1A36216DC();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = BYTE4(v83);
    v97[0] = BYTE4(v83);
    LOBYTE(v100[0]) = 0;
    v35 = sub_1A362225C();
    if (*(v19 + 2) == 1)
    {
      type metadata accessor for MiniTipSolariumView(0);
      v36 = v89;
      sub_1A360855C(&unk_1EB0EEA70, &unk_1A3626750, MEMORY[0x1E697E730], v37, v38, v39, v40, v41, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
      sub_1A3621A1C();
      (*(v79 + 8))(v36, v6);
    }

    sub_1A36216DC();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v84;
    sub_1A35B72C8(v84, v17, v82 & 1);

    v98[0] = 0;
    v102[0] = v50;
    v102[1] = v17;
    LOBYTE(v102[2]) = v34;
    v102[3] = v18;
    v102[4] = v81;
    LOBYTE(v102[5]) = BYTE4(v80);
    v102[6] = v27;
    v102[7] = v29;
    v102[8] = v31;
    v102[9] = v33;
    LOBYTE(v102[10]) = 0;
    LOBYTE(v102[11]) = v35;
    v102[12] = v43;
    v102[13] = v45;
    v102[14] = v47;
    v102[15] = v49;
    LOBYTE(v102[16]) = 0;
    nullsub_1(v51, v52);
    memcpy(v103, v102, 0x81uLL);
  }

  else
  {
    sub_1A3608554(v103);
  }

  TipViewStyleConfiguration.message.getter();
  v57 = v56;
  if (v56)
  {
    v58 = v53;
    v59 = v54;
    v60 = *MEMORY[0x1E6980EF0];
    v61 = v90;
    v62 = v91;
    v63 = *(v91 + 104);
    v64 = v93;
    v89 = v55;
    v63(v90, v60, v93);
    v65 = sub_1A36222AC();
    v66 = v92;
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v65);
    sub_1A36222BC();
    v67 = sub_1A36222EC();
    sub_1A3602FAC(v66, &qword_1EB0EF300);
    (*(v62 + 8))(v61, v64);
    LOBYTE(v77) = sub_1A362225C();
    type metadata accessor for TipViewStyleConfiguration();
    sub_1A36216DC();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v89 & 1;
    LOBYTE(v102[0]) = v89 & 1;
    v98[0] = 0;
    v77 = v77;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v67 = 0;
    v77 = 0;
    v76 = 0;
    v69 = 0;
    v71 = 0;
    v73 = 0;
    v75 = 0;
  }

  memcpy(v97, v103, sizeof(v97));
  memcpy(v98, v103, 0x81uLL);
  memcpy(v96, v103, 0x81uLL);
  v99[0] = v58;
  v99[1] = v59;
  v99[2] = v76;
  v99[3] = v57;
  v99[4] = v67;
  v99[5] = v77;
  v99[6] = v69;
  v99[7] = v71;
  v99[8] = v73;
  v99[9] = v75;
  LOBYTE(v99[10]) = 0;
  memcpy(&v96[136], v99, 0x51uLL);
  memcpy(v94, v96, 0xD9uLL);
  v100[0] = v58;
  v100[1] = v59;
  v100[2] = v76;
  v100[3] = v57;
  v100[4] = v67;
  v100[5] = v77;
  v100[6] = v69;
  v100[7] = v71;
  v100[8] = v73;
  v100[9] = v75;
  v101 = 0;
  sub_1A35B567C(v98, v102, &qword_1EB0EF5A0);
  sub_1A35B567C(v99, v102, &qword_1EB0EF5A8);
  sub_1A3602FAC(v100, &qword_1EB0EF5A8);
  memcpy(v102, v97, 0x81uLL);
  sub_1A3602FAC(v102, &qword_1EB0EF5A0);
}

uint64_t sub_1A360697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A35B2260(a2 + 72, v7);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF530);
  sub_1A35F49B0(v7, a3 + *(v5 + 36));
  return sub_1A35B567C(a1, a3, &qword_1EB0EF508);
}

uint64_t sub_1A36069F4()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _s6TipKit4TipsO11RuleBuilderV11buildEither5firstSayAC0D0VGAJ_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF708);
  sub_1A35A9B78(&qword_1ED81DD20, &qword_1EB0EF148);
  sub_1A36097F0();
  sub_1A35BBD14();
  sub_1A36229AC();
}

uint64_t sub_1A3606B4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v52 - v4;
  v66 = sub_1A3621F3C();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF730);
  v6 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF720);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v52 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF718);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v52 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF710);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF748);
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v52 - v18;
  v19 = a1[1];
  v73 = *a1;
  v74 = v19;
  v20 = a1[3];
  v75 = a1[2];
  v76 = v20;
  sub_1A3622E3C();
  v59 = sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v22 = v76;
  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  *(&v52 - 2) = &v73;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF750);
  sub_1A3609C98();
  v55 = *(&v22 + 1);
  v57 = v22;
  sub_1A36228FC();
  v23 = v74 == 0;
  v24 = v23 & ~BYTE8(v74);
  sub_1A3603AD0(v23 & ~BYTE8(v74), v11);
  (*(v6 + 8))(v8, v53);
  v25 = &v13[*(v52 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF738);
  sub_1A3621B0C();
  *v25 = swift_getKeyPath();
  sub_1A3602808(v11, v13, &qword_1EB0EF728);
  v26 = v56;
  v27 = &v15[*(v56 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF740) + 28);
  v29 = *MEMORY[0x1E697DC10];
  v30 = sub_1A362179C();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  sub_1A3602808(v13, v15, &qword_1EB0EF720);
  v31 = v61;
  sub_1A3621B3C();
  v32 = sub_1A360997C();
  v33 = sub_1A35BB23C(&qword_1ED81E110, MEMORY[0x1E697C658]);
  v34 = 1;
  v35 = v54;
  v36 = v66;
  sub_1A362247C();
  (*(v63 + 8))(v31, v36);
  sub_1A3602FAC(v15, &qword_1EB0EF718);
  v37 = v67;
  if (v24 == 1)
  {
    sub_1A3621A8C();
    v34 = 0;
  }

  v38 = sub_1A3621A9C();
  __swift_storeEnumTagSinglePayload(v37, v34, 1, v38);
  v69 = v26;
  v70 = v36;
  v71 = v32;
  v72 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v62;
  v41 = v60;
  sub_1A36224FC();
  sub_1A3602FAC(v37, &qword_1EB0EF3C8);
  v42 = (*(v58 + 8))(v35, v41);
  v43 = (v75)(v42);
  v45 = v44;
  v47 = v46;
  v48 = swift_allocObject();
  v49 = v55;
  *(v48 + 16) = v57;
  *(v48 + 24) = v49;
  v69 = v41;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v50 = v65;
  sub_1A362253C();

  sub_1A35B72C8(v43, v45, v47 & 1);

  (*(v64 + 8))(v40, v50);
}

uint64_t sub_1A36073A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF780);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v58 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF788);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v58 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF3B0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v58 - v7;
  v73 = sub_1A3621A2C();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF398);
  MEMORY[0x1EEE9AC00](v65);
  v76 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF300);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_1A362231C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF758);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v66 = &v58 - v22;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF750);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58 - v23;
  sub_1A3622E3C();
  v62 = sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v25 = (*(a1 + 32))(isCurrentExecutor);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v77 = v29 & 1;
  *&v78 = v25;
  *(&v78 + 1) = v27;
  LOBYTE(v79) = v29 & 1;
  *(&v79 + 1) = v31;
  LOWORD(v80) = 256;
  *(&v80 + 1) = KeyPath;
  v81 = 1;
  (*(v18 + 104))(v20, *MEMORY[0x1E6980EF8], v17);
  v33 = sub_1A36222AC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v33);
  sub_1A36222CC();
  v34 = sub_1A36222EC();
  sub_1A3602FAC(v16, &qword_1EB0EF300);
  (*(v18 + 8))(v20, v17);
  v35 = v74;
  v36 = *(v74 + 104);
  v37 = v12;
  v38 = v73;
  v36(v12, *MEMORY[0x1E697E6F8], v73);
  v36(v9, *MEMORY[0x1E697E6D0], v38);
  sub_1A35BB23C(&qword_1ED81E6E8, MEMORY[0x1E697E730]);
  result = sub_1A3622B3C();
  if (result)
  {
    v75 = v34;
    v40 = *(v35 + 32);
    v41 = v59;
    v40(v59, v37, v38);
    v42 = v61;
    v40((v41 + *(v61 + 48)), v9, v38);
    v43 = v60;
    sub_1A35B567C(v41, v60, &qword_1EB0EF3B0);
    v44 = *(v42 + 48);
    v45 = v76;
    v40(v76, v43, v38);
    v46 = *(v35 + 8);
    v46(v43 + v44, v38);
    sub_1A3602808(v41, v43, &qword_1EB0EF3B0);
    v47 = v65;
    v40(&v45[*(v65 + 36)], (v43 + *(v42 + 48)), v38);
    v46(v43, v38);
    v48 = swift_getKeyPath();
    __src[0] = v78;
    __src[1] = v79;
    __src[2] = v80;
    LOBYTE(__src[3]) = v81;
    *(&__src[3] + 1) = v48;
    *&__src[4] = v75;
    sub_1A35B567C(&v78, __dst, &qword_1EB0EF420);

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF760);
    v50 = sub_1A3609E4C();
    v51 = sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398);
    v52 = v68;
    v53 = v76;
    sub_1A36224DC();
    memcpy(__dst, __src, sizeof(__dst));
    sub_1A3602FAC(__dst, &qword_1EB0EF760);
    v54 = v70;
    v55 = v71;
    (*(v70 + 16))(v69, v52, v71);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF420);
    *&__src[0] = v49;
    *(&__src[0] + 1) = v47;
    *&__src[1] = v50;
    *(&__src[1] + 1) = v51;
    swift_getOpaqueTypeConformance2();
    sub_1A35B97E8();
    v56 = v66;
    sub_1A3621F1C();
    sub_1A3602FAC(&v78, &qword_1EB0EF420);

    (*(v54 + 8))(v52, v55);
    sub_1A3602FAC(v53, &qword_1EB0EF398);
    sub_1A3622A2C();
    sub_1A3621AFC();
    v57 = v64;
    sub_1A3602808(v56, v64, &qword_1EB0EF758);
    memcpy((v57 + *(v63 + 36)), __src, 0x70uLL);
    sub_1A3602808(v57, v72, &qword_1EB0EF750);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3607DEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF300);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1A36227DC();
  sub_1A36222BC();
  v6 = *MEMORY[0x1E6980E20];
  v7 = sub_1A36222AC();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  v8 = sub_1A36222DC();
  sub_1A3602FAC(v4, &qword_1EB0EF300);
  KeyPath = swift_getKeyPath();
  v10 = sub_1A36227BC();
  v11 = swift_getKeyPath();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6B8) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6D8) + 28);
  sub_1A3621E1C();
  v14 = sub_1A3621E2C();
  __swift_storeEnumTagSinglePayload(v12 + v13, 0, 1, v14);
  v15 = swift_getKeyPath();

  *v12 = v15;
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v8;
  a1[3] = v11;
  a1[4] = v10;
  return result;
}

unint64_t sub_1A3608034()
{
  result = qword_1ED81E178;
  if (!qword_1ED81E178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF4F0);
    sub_1A35A9B78(&qword_1ED81E0A8, &qword_1EB0EF4F0);
    swift_getOpaqueTypeConformance2();
    sub_1A35BB130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E178);
  }

  return result;
}

uint64_t sub_1A3608138(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  v4 = OUTLINED_FUNCTION_11_2();
  v5(v4);
  return a2;
}

void sub_1A3608194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = *(type metadata accessor for TipViewStyleConfiguration() - 8);
  v27 = v18 + ((*(v26 + 80) + 16) & ~*(v26 + 80));

  sub_1A35F7054(v27, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_1A36081F4()
{
  result = qword_1ED81E158;
  if (!qword_1ED81E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF530);
    sub_1A3608280();
    sub_1A3608338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E158);
  }

  return result;
}

unint64_t sub_1A3608280()
{
  result = qword_1ED81E170;
  if (!qword_1ED81E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF508);
    sub_1A35A9B78(&qword_1ED81E0B0, &unk_1EB0EF538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E170);
  }

  return result;
}

unint64_t sub_1A3608338()
{
  result = qword_1ED81E288;
  if (!qword_1ED81E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E288);
  }

  return result;
}

uint64_t sub_1A360838C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1A3621CEC();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_10_10();
  sub_1A35B567C(v3, v11, &qword_1EB0EEDD8);
  if (v12 == 1)
  {
    return sub_1A35A63BC(v11, a1);
  }

  sub_1A362303C();
  v10 = sub_1A36221DC();
  OUTLINED_FUNCTION_9_7();

  sub_1A3621CDC();
  swift_getAtKeyPath();

  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_1A36084FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1A360855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = v20;
  v30 = v29;
  v31 = sub_1A3621CEC();
  OUTLINED_FUNCTION_3();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_10_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v27);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_1A35B567C(v28, &a9 - v36, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(0);
    OUTLINED_FUNCTION_0_0();
    (*(v38 + 32))(v30, v37);
  }

  else
  {
    sub_1A362303C();
    v39 = sub_1A36221DC();
    OUTLINED_FUNCTION_9_7();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v33 + 8))(v21, v31);
  }

  OUTLINED_FUNCTION_24();
}

unint64_t sub_1A3608710()
{
  result = qword_1EB0EF5C8;
  if (!qword_1EB0EF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF298);
    sub_1A360879C();
    sub_1A3608338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF5C8);
  }

  return result;
}

unint64_t sub_1A360879C()
{
  result = qword_1EB0EF5D0;
  if (!qword_1EB0EF5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF278);
    sub_1A3608828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF5D0);
  }

  return result;
}

unint64_t sub_1A3608828()
{
  result = qword_1EB0EF5D8;
  if (!qword_1EB0EF5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF270);
    sub_1A35A9B78(&qword_1EB0EF5E0, &unk_1EB0EF268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF5D8);
  }

  return result;
}

void sub_1A3608930()
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

unint64_t sub_1A3608A0C()
{
  result = qword_1ED81D768;
  if (!qword_1ED81D768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF630);
    sub_1A3608A98();
    sub_1A3608B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D768);
  }

  return result;
}

unint64_t sub_1A3608A98()
{
  result = qword_1ED81D7A0;
  if (!qword_1ED81D7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF650);
    sub_1A35C5344(&qword_1ED81E618, &qword_1EB0EF340);
    sub_1A35C5344(&unk_1ED81D7F0, &qword_1EB0EF658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D7A0);
  }

  return result;
}

unint64_t sub_1A3608B64()
{
  result = qword_1ED81D798;
  if (!qword_1ED81D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF618);
    sub_1A3608BF0();
    sub_1A3608CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D798);
  }

  return result;
}

unint64_t sub_1A3608BF0()
{
  result = qword_1ED81D828;
  if (!qword_1ED81D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF5F0);
    sub_1A3608CA8();
    sub_1A35A9B78(qword_1ED81E200, &unk_1EB0EF678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D828);
  }

  return result;
}

unint64_t sub_1A3608CA8()
{
  result = qword_1ED81D788;
  if (!qword_1ED81D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF610);
    sub_1A3608D34();
    sub_1A3608F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D788);
  }

  return result;
}

unint64_t sub_1A3608D34()
{
  result = qword_1ED81D7E0;
  if (!qword_1ED81D7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF660);
    sub_1A3608DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D7E0);
  }

  return result;
}

unint64_t sub_1A3608DC0()
{
  result = qword_1ED81D838;
  if (!qword_1ED81D838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF608);
    sub_1A3608E4C();
    sub_1A35C5580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D838);
  }

  return result;
}

unint64_t sub_1A3608E4C()
{
  result = qword_1ED81D778;
  if (!qword_1ED81D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF318);
    sub_1A35C54C8();
    swift_getOpaqueTypeConformance2();
    sub_1A36020D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D778);
  }

  return result;
}

unint64_t sub_1A3608F14()
{
  result = qword_1ED81D7E8;
  if (!qword_1ED81D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF670);
    sub_1A3608DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D7E8);
  }

  return result;
}

unint64_t sub_1A3608FA0()
{
  result = qword_1ED81D830;
  if (!qword_1ED81D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF648);
    sub_1A360902C();
    sub_1A3602394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D830);
  }

  return result;
}

unint64_t sub_1A360902C()
{
  result = qword_1ED81D780;
  if (!qword_1ED81D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF680);
    sub_1A36090B8();
    sub_1A36091D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D780);
  }

  return result;
}

unint64_t sub_1A36090B8()
{
  result = qword_1ED81DA00;
  if (!qword_1ED81DA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF688);
    sub_1A3609144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA00);
  }

  return result;
}

unint64_t sub_1A3609144()
{
  result = qword_1ED81DA10;
  if (!qword_1ED81DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF640);
    sub_1A36020D4();
    sub_1A35C5580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA10);
  }

  return result;
}

unint64_t sub_1A36091D0()
{
  result = qword_1ED81D7B8;
  if (!qword_1ED81D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF690);
    sub_1A3609144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D7B8);
  }

  return result;
}

uint64_t sub_1A360925C()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621C7C();
  *v0 = result;
  return result;
}

unint64_t sub_1A36092C4()
{
  result = qword_1ED81E150;
  if (!qword_1ED81E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6B8);
    sub_1A360937C();
    sub_1A35A9B78(&qword_1ED81E0D8, &qword_1EB0EF6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E150);
  }

  return result;
}

unint64_t sub_1A360937C()
{
  result = qword_1ED81E160;
  if (!qword_1ED81E160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6C0);
    sub_1A35B96AC();
    sub_1A35A9B78(&qword_1ED81E0D0, &unk_1EB0EF6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E160);
  }

  return result;
}

unint64_t sub_1A3609434()
{
  result = qword_1ED81E188;
  if (!qword_1ED81E188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6A0);
    sub_1A3621ABC();
    sub_1A35A9B78(&qword_1ED81E0B8, &qword_1EB0EF6A0);
    sub_1A35BB23C(&qword_1ED81E6B8, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A35A9B78(&qword_1ED81E0F8, &unk_1EB0EF6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E188);
  }

  return result;
}

uint64_t sub_1A36095AC()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621CBC();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1A360960C()
{
  OUTLINED_FUNCTION_8_13();
  result = sub_1A3621C5C();
  *v0 = result;
  return result;
}

uint64_t sub_1A360965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1A3609748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF6F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A35B567C(a1, &v5 - v3, &qword_1EB0EF6F8);
  return sub_1A3621C3C();
}

unint64_t sub_1A36097F0()
{
  result = qword_1ED81DA20;
  if (!qword_1ED81DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF718);
    sub_1A3621F3C();
    sub_1A360997C();
    sub_1A35BB23C(&qword_1ED81E110, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A35BB23C(&qword_1ED81E690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA20);
  }

  return result;
}

unint64_t sub_1A360997C()
{
  result = qword_1ED81DA18;
  if (!qword_1ED81DA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF718);
    sub_1A3609A34();
    sub_1A35A9B78(&qword_1ED81DD58, &unk_1EB0EF740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA18);
  }

  return result;
}

unint64_t sub_1A3609A34()
{
  result = qword_1ED81DA30;
  if (!qword_1ED81DA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF720);
    sub_1A3609AEC();
    sub_1A35A9B78(&qword_1ED81DD48, &unk_1EB0EF738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA30);
  }

  return result;
}

unint64_t sub_1A3609AEC()
{
  result = qword_1ED81D9F8;
  if (!qword_1ED81D9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF730);
    sub_1A362211C();
    sub_1A35A9B78(&qword_1ED81D9D0, &qword_1EB0EF730);
    sub_1A35BB23C(&qword_1ED81D9D8, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1A3621DEC();
    sub_1A35BB23C(&qword_1ED81DD78, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D9F8);
  }

  return result;
}

unint64_t sub_1A3609C98()
{
  result = qword_1ED81DA28;
  if (!qword_1ED81DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF750);
    sub_1A3609D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA28);
  }

  return result;
}

unint64_t sub_1A3609D24()
{
  result = qword_1ED81D9F0;
  if (!qword_1ED81D9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF398);
    sub_1A3609E4C();
    sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398);
    swift_getOpaqueTypeConformance2();
    sub_1A35B97E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D9F0);
  }

  return result;
}

unint64_t sub_1A3609E4C()
{
  result = qword_1ED81DA08;
  if (!qword_1ED81DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF760);
    sub_1A35B97E8();
    sub_1A35A9B78(&qword_1ED81E6A0, &unk_1EB0EF328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA08);
  }

  return result;
}

unint64_t sub_1A3609F04()
{
  result = qword_1ED81E1B0;
  if (!qword_1ED81E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7A0);
    sub_1A3609F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E1B0);
  }

  return result;
}

unint64_t sub_1A3609F90()
{
  result = qword_1ED81E120;
  if (!qword_1ED81E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF398);
    sub_1A35BF15C();
    sub_1A35A9B78(&qword_1ED81E678, &qword_1EB0EF398);
    swift_getOpaqueTypeConformance2();
    sub_1A3602E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E120);
  }

  return result;
}

unint64_t sub_1A360A0B8()
{
  result = qword_1ED81D758;
  if (!qword_1ED81D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7B0);
    sub_1A360A13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D758);
  }

  return result;
}

unint64_t sub_1A360A13C()
{
  result = qword_1ED81D760;
  if (!qword_1ED81D760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF638);
    sub_1A3608A0C();
    sub_1A3608FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D760);
  }

  return result;
}

unint64_t sub_1A360A1C8()
{
  result = qword_1ED81E180;
  if (!qword_1ED81E180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF6A8);
    sub_1A3621F3C();
    sub_1A3609434();
    sub_1A35BB23C(&qword_1ED81E110, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    sub_1A35BB23C(&qword_1ED81E690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E180);
  }

  return result;
}

unint64_t sub_1A360A310()
{
  result = qword_1ED81DA48;
  if (!qword_1ED81DA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF700);
    sub_1A35A9B78(&qword_1ED81DA50, &unk_1EB0EF7C0);
    sub_1A360A3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81DA48);
  }

  return result;
}

unint64_t sub_1A360A3C8()
{
  result = qword_1ED81D9C8;
  if (!qword_1ED81D9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7C8);
    sub_1A36097F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D9C8);
  }

  return result;
}

unint64_t sub_1A360A44C()
{
  result = qword_1ED81E038;
  if (!qword_1ED81E038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7A8);
    sub_1A3609F04();
    sub_1A35BB23C(&qword_1ED81E690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81E038);
  }

  return result;
}

void sub_1A360A534(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A360A598()
{
  v25 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1A36221CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for PopoverTip() + 40);
  v24 = v7;
  v23 = *(v7 + 16);
  v23(v9, v0 + v10, v6);
  sub_1A3622BDC();
  v11 = sub_1A35B73A4();

  if (v11)
  {
    v20 = 1;
  }

  else
  {
    sub_1A35B83D0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    sub_1A35B567C(&v2[*(v25 + 28)], v5, &qword_1EB0EEE50);
    sub_1A360DBB4(v2, type metadata accessor for TipViewEnvironment);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1A360DA00(v5, &qword_1EB0EEE50);
      v20 = 0;
    }

    else
    {
      v23(v9, v5, v6);
      sub_1A3622BDC();
      v20 = sub_1A35B73A4();

      (*(v24 + 8))(v5, v6);
    }
  }

  return v20 & 1;
}

uint64_t sub_1A360A864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - v5;
  v71 = type metadata accessor for TipViewEnvironment();
  v7 = MEMORY[0x1EEE9AC00](v71);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - v9;
  v11 = sub_1A36221CC();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PopoverTip();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v79 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v77 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v71 - v19;
  sub_1A35AFB18(v2, &v71 - v19);
  sub_1A35A6350(v2, v87);
  v21 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v74 = v21 + v15;
  v22 = (v21 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v76 = v21;
  sub_1A360DC38(v20, v23 + v21, type metadata accessor for PopoverTip);
  v78 = v23;
  v24 = sub_1A35A63BC(v87, v23 + v22);
  v32 = (v2 + v13[9]);
  if (v32[1] == 1)
  {
    v24 = sub_1A362220C();
    HIDWORD(v75) = v24;
  }

  else
  {
    HIDWORD(v75) = *v32;
  }

  v33 = v13[14];
  sub_1A35B83D0(v24, v25, v26, v27, v28, v29, v30, v31, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  sub_1A35B567C(&v10[*(v71 + 28)], v6, &qword_1EB0EEE50);
  sub_1A360DBB4(v10, type metadata accessor for TipViewEnvironment);
  v34 = v82;
  if (__swift_getEnumTagSinglePayload(v6, 1, v82) == 1)
  {
    (*(v81 + 16))(v80, v2 + v13[10], v34);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v34);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1A360DA00(v6, &qword_1EB0EEE50);
    }
  }

  else
  {
    EnumTagSinglePayload = (*(v81 + 32))(v80, v6, v34);
  }

  v43 = v73;
  sub_1A35B83D0(EnumTagSinglePayload, v36, v37, v38, v39, v40, v41, v42, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  sub_1A35F1E6C(&v84);
  sub_1A360DBB4(v43, type metadata accessor for TipViewEnvironment);
  v44 = v85;
  v72 = v33;
  if (!v85)
  {
    sub_1A360DA00(&v84, &unk_1EB0EF950);
    v85 = MEMORY[0x1E697E0B8];
    v86 = MEMORY[0x1E697E0A8];
LABEL_12:
    v83 = *(v2 + v13[12]);

    v45 = sub_1A362187C();
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(&v84, v85);
  v45 = sub_1A35BDBDC(v44);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  v85 = MEMORY[0x1E697E0B8];
  v86 = MEMORY[0x1E697E0A8];
  if (!v45)
  {
    goto LABEL_12;
  }

LABEL_13:
  *&v84 = v45;
  v46 = v77;
  sub_1A35AFB18(v2, v77);
  v47 = swift_allocObject();
  v48 = v76;
  sub_1A360DC38(v46, v47 + v76, type metadata accessor for PopoverTip);
  v49 = v79;
  sub_1A35AFB18(v2, v79);
  v50 = swift_allocObject();
  sub_1A360DC38(v49, v50 + v48, type metadata accessor for PopoverTip);
  v51 = _s17PopoverAttributesVMa();
  sub_1A36088E0(v51, v52, v53, v54, v55, v56, v57, v58, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  sub_1A35B83D0(v59, v60, v61, v62, v63, v64, v65, v66, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  sub_1A360838C(a1 + v51[12]);
  v67 = v78;
  *a1 = sub_1A360DB18;
  *(a1 + 8) = v67;
  *(a1 + 16) = BYTE4(v75);
  (*(v81 + 32))(a1 + v51[6], v80, v82);
  result = sub_1A35A63BC(&v84, a1 + v51[7]);
  v69 = (a1 + v51[8]);
  *v69 = sub_1A360DC08;
  v69[1] = v47;
  v70 = (a1 + v51[9]);
  *v70 = sub_1A360DC20;
  v70[1] = v50;
  return result;
}

uint64_t sub_1A360AE80(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = sub_1A3621CEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE3C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for TipViewEnvironment();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v32 = *a1;
  v33 = v15;
  v16 = a1[3];
  v34 = a1[2];
  v35 = v16;
  v17 = *(a2 + 64);
  if (v17)
  {
    v18 = a1[1];
    v28 = *a1;
    v29 = v18;
    v19 = a1[3];
    v30 = a1[2];
    v31 = v19;
    v17(&v28);
  }

  v20 = type metadata accessor for PopoverTip();
  sub_1A35B567C(a2 + *(v20 + 56), v11, &qword_1EB0EE3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A360DC38(v11, v14, type metadata accessor for TipViewEnvironment);
  }

  else
  {
    sub_1A362303C();
    v21 = sub_1A36221DC();
    sub_1A362166C();

    sub_1A3621CDC();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v22 = &v14[*(v12 + 48)];
  v24 = *v22;
  v23 = v22[1];
  sub_1A35B5EA0(*v22);
  result = sub_1A360DBB4(v14, type metadata accessor for TipViewEnvironment);
  if (v24)
  {
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v24(v27, &v28);
    return sub_1A35F8294(v24, v23);
  }

  return result;
}

uint64_t sub_1A360B160(uint64_t a1)
{
  v2 = type metadata accessor for PopoverTip();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  result = sub_1A36228AC();
  if (*(a1 + *(v2 + 44) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
    sub_1A362297C();
  }

  return result;
}

uint64_t sub_1A360B24C()
{
  v1 = type metadata accessor for PopoverTip();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  result = sub_1A36228AC();
  if (*(v0 + *(v1 + 44) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
    sub_1A362297C();
  }

  return result;
}

uint64_t sub_1A360B338(uint64_t a1)
{
  result = type metadata accessor for PopoverTip();
  if (*(a1 + *(result + 44) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
    sub_1A362297C();
  }

  return result;
}

uint64_t sub_1A360B3DC()
{
  result = type metadata accessor for PopoverTip();
  if (*(v0 + *(result + 44) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
    sub_1A362297C();
  }

  return result;
}

void sub_1A360B47C()
{
  if ((sub_1A360A598() & 1) == 0)
  {
    sub_1A35CDC10(0, &unk_1ED81E078);
    v0 = sub_1A361D434();
    if (v0)
    {
      v1 = v0;
      MEMORY[0x1EEE9AC00](v0);
      sub_1A35CDC10(0, &qword_1EB0EE1D8);
      sub_1A360DC9C();
      v2 = sub_1A3622D3C();

      v3 = sub_1A36208D0(v2);
      v4 = 0;
      while (1)
      {
        if (v3 == v4)
        {
LABEL_12:

          return;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1A58F3850](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        if (__OFADD__(v4, 1))
        {
          break;
        }

        v6 = v5;
        v7 = sub_1A361EF70();

        ++v4;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_1A360B600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF818);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF810);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v64 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF830);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v64 - v9;
  v11 = type metadata accessor for PopoverTip();
  v70 = *(v11 - 8);
  v12 = *(v70 + 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF800);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v64 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF7F8);
  v19 = MEMORY[0x1EEE9AC00](v73);
  v65 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v64 - v21;
  v22 = sub_1A360A598();
  v71 = v11;
  v23 = v2;
  v24 = (v2 + *(v11 + 64));
  v26 = *v24;
  v25 = v24[1];
  if (v22)
  {
    v68 = v10;
    v69 = v5;
    v76 = v26;
    v77 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
    sub_1A362289C();
    v27 = v79;
    sub_1A35AFB18(v2, v16);
    v28 = (v70[80] + 16) & ~v70[80];
    v29 = swift_allocObject();
    v70 = v16;
    sub_1A360DC38(v16, v29 + v28, type metadata accessor for PopoverTip);
    sub_1A35AFB18(v23, v14);
    v66 = v12;
    v30 = swift_allocObject();
    sub_1A360DC38(v14, v30 + v28, type metadata accessor for PopoverTip);
    v31 = &v18[*(v64 + 36)];
    swift_unknownObjectWeakInit();
    type metadata accessor for UIAppearanceMonitor();
    *v31 = sub_1A361CD48(0, 0, sub_1A360DA80, v29, sub_1A360DB00, v30, 0, 0);
    swift_unknownObjectWeakAssign();

    v31[2] = sub_1A3622A2C();
    v31[3] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE250);
    (*(*(v33 - 8) + 16))(v18, v72, v33);
    v34 = v23 + *(v71 + 44);
    v35 = *(v34 + 8);
    if (v35)
    {
      v36 = *(v34 + 16);
      v76 = *v34;
      v77 = v35;
      v78 = v36 & 1;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
      MEMORY[0x1A58F2FF0](&v79, v37);
      v38 = v79;
    }

    else
    {
      v38 = 2;
    }

    v52 = v70;
    sub_1A35AFB18(v23, v70);
    v53 = swift_allocObject();
    sub_1A360DC38(v52, v53 + v28, type metadata accessor for PopoverTip);
    v54 = v65;
    sub_1A3602808(v18, v65, &qword_1EB0EF800);
    v55 = v54 + *(v73 + 36);
    *v55 = v38;
    *(v55 + 1) = 0;
    *(v55 + 8) = sub_1A360DA68;
    *(v55 + 16) = v53;
    v56 = v67;
    sub_1A3602808(v54, v67, &qword_1EB0EF7F8);
    sub_1A35B567C(v56, v68, &qword_1EB0EF7F8);
    swift_storeEnumTagMultiPayload();
    sub_1A360D668(&qword_1ED81D7D0, &qword_1EB0EF7F8, &unk_1A362A408, sub_1A360D714);
    sub_1A360D668(&qword_1ED81D7D8, &qword_1EB0EF810, &unk_1A362A420, sub_1A360D7F8);
    sub_1A3621F1C();
    v57 = v56;
    v58 = &qword_1EB0EF7F8;
  }

  else
  {
    v39 = v5;
    v76 = v26;
    v77 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
    sub_1A362289C();
    v40 = v79;
    v41 = v66;
    v42 = &v66[*(v3 + 36)];
    swift_unknownObjectWeakInit();
    *v42 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    swift_unknownObjectWeakAssign();

    sub_1A35AFB18(v23, v16);
    v43 = (v70[80] + 16) & ~v70[80];
    v44 = swift_allocObject();
    sub_1A360DC38(v16, v44 + v43, type metadata accessor for PopoverTip);
    *(v42 + 2) = sub_1A360DA50;
    *(v42 + 3) = v44;
    *(v42 + 4) = 0;
    *(v42 + 5) = 0;
    *(v42 + 6) = sub_1A3622A2C();
    *(v42 + 7) = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EE250);
    (*(*(v46 - 8) + 16))(v41, v72, v46);
    v47 = v23 + *(v71 + 44);
    v48 = *(v47 + 8);
    if (v48)
    {
      v49 = *(v47 + 16);
      v76 = *v47;
      v77 = v48;
      v78 = v49 & 1;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED90);
      MEMORY[0x1A58F2FF0](&v79, v50);
      v51 = v79;
    }

    else
    {
      v51 = 2;
    }

    sub_1A35AFB18(v23, v16);
    v59 = swift_allocObject();
    sub_1A360DC38(v16, v59 + v43, type metadata accessor for PopoverTip);
    v60 = v68;
    sub_1A3602808(v41, v68, &qword_1EB0EF818);
    v61 = v60 + *(v39 + 36);
    *v61 = v51;
    *(v61 + 1) = 0;
    *(v61 + 8) = sub_1A360DA68;
    *(v61 + 16) = v59;
    v62 = v69;
    sub_1A3602808(v60, v69, &qword_1EB0EF810);
    sub_1A35B567C(v62, v10, &qword_1EB0EF810);
    swift_storeEnumTagMultiPayload();
    sub_1A360D668(&qword_1ED81D7D0, &qword_1EB0EF7F8, &unk_1A362A408, sub_1A360D714);
    sub_1A360D668(&qword_1ED81D7D8, &qword_1EB0EF810, &unk_1A362A420, sub_1A360D7F8);
    sub_1A3621F1C();
    v57 = v62;
    v58 = &qword_1EB0EF810;
  }

  return sub_1A360DA00(v57, v58);
}

uint64_t sub_1A360BF38()
{
  OUTLINED_FUNCTION_2_4();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v1 + 200);
  v5 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A360C04C, v5, v4);
}

uint64_t sub_1A360C04C()
{
  v1 = *(v0 + 232);

  if (sub_1A3622DBC())
  {
    v2 = (*(v0 + 176) + *(*(v0 + 208) + 76));
    v3 = *v2;
    v4 = *(v2 + 1);
    *(v0 + 144) = *v2;
    *(v0 + 152) = v4;
    sub_1A362289C();
    if ((*(v0 + 256) & 1) == 0)
    {
      sub_1A360B47C();
      *(v0 + 160) = v3;
      *(v0 + 168) = v4;
      *(v0 + 257) = v5 & 1;
      sub_1A36228AC();
    }
  }

  v6 = *(v0 + 224);
  *(v0 + 128) = *(v0 + 259);
  *(v0 + 136) = v6;
  *(v0 + 255) = 1;
  sub_1A36228AC();
  sub_1A360D3E8();
  OUTLINED_FUNCTION_5_1();

  return v7();
}

void sub_1A360C154()
{
  type metadata accessor for PopoverTip();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
  sub_1A362289C();
  v0[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_sourceAppeared] = 1;

  sub_1A360D3E8();
}

void sub_1A360C1D8()
{
  type metadata accessor for PopoverTip();
  LOBYTE(v0) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  sub_1A36228AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
  sub_1A362289C();
  v0[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_sourceAppeared] = 0;

  sub_1A360D3E8();
}

void sub_1A360C2A4(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(v2 + 40) != &type metadata for EmptyTip)
  {
    v5 = v3 + *(type metadata accessor for PopoverTip() + 72);
    v6 = *v5;
    v7 = *(v5 + 1);
    if ((a2 & 1) == 0)
    {
      v11[0] = *v5;
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
      sub_1A362289C();
      if (v10 != 1)
      {
        return;
      }

      v11[0] = v6;
      v12 = v7;
      goto LABEL_8;
    }

    v11[0] = *v5;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
    sub_1A362289C();
    if ((v10 & 1) == 0)
    {
      v8 = v3[3];
      v9 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v8);
      Tip.status.getter(v8, v9, v11);
      if (v11[0] == 8)
      {
        v11[0] = v6;
        v12 = v7;
LABEL_8:
        sub_1A36228AC();
        sub_1A360D3E8();
      }
    }
  }
}

uint64_t sub_1A360C3E8()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PopoverTip();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
  sub_1A362289C();
  v1[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_sourceAppeared] = 1;

  sub_1A360D3E8();
}

uint64_t sub_1A360C4D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v85 = type metadata accessor for PopoverTip();
  v110 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v111 = v3;
  v112 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1A362201C();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1A3621ADC();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEE50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v84 - v7;
  v103 = sub_1A36221CC();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TipViewEnvironment();
  v9 = MEMORY[0x1EEE9AC00](v88);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v84 - v11;
  v84 = sub_1A3621F9C();
  v13 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE288);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v84 - v17;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE280);
  v87 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v20 = &v84 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE278);
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v22 = &v84 - v21;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE270);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v91 = &v84 - v23;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF858);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v84 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE268);
  MEMORY[0x1EEE9AC00](v92);
  v98 = &v84 - v25;
  v26 = v1[3];
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v26);
  sub_1A35E5FC8(v26, v27, &v123);
  v122 = 0;
  memset(v121, 0, sizeof(v121));
  LOBYTE(v115) = 4;
  v116 = 0;
  v117 = 0;
  LOBYTE(v118) = 1;
  v28 = sub_1A35B37E0();
  v119 = &type metadata for AnyTip;
  v120 = v28;
  swift_unknownObjectWeakInit();
  v29 = v2[8];
  v30 = v2[9];
  sub_1A35B5EA0(v29);
  sub_1A35EB218(&v123, 0, 0, 0, v121, 4, &v115, v29, v30, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  KeyPath = swift_getKeyPath();
  v32 = &v18[*(v16 + 36)];
  *v32 = KeyPath;
  v32[1] = sub_1A360D25C;
  v32[2] = 0;
  sub_1A3621F8C();
  v33 = sub_1A35AFC60();
  v86 = v20;
  sub_1A362259C();
  (*(v13 + 8))(v15, v84);
  v34 = v18;
  v35 = v85;
  v36 = sub_1A360DA00(v34, &qword_1EB0EE288);
  sub_1A35B83D0(v36, v37, v38, v39, v40, v41, v42, v43, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  sub_1A35F1E6C(&v115);
  sub_1A360DBB4(v12, type metadata accessor for TipViewEnvironment);
  v44 = v118;
  if (v118)
  {
    __swift_project_boxed_opaque_existential_1(&v115, v118);
    v45 = sub_1A35BDBDC(v44);
    __swift_destroy_boxed_opaque_existential_1(&v115);
  }

  else
  {
    sub_1A360DA00(&v115, &unk_1EB0EF950);
    v115 = *(v2 + *(v35 + 48));

    v45 = sub_1A362187C();
  }

  v123 = v45;
  v115 = v16;
  v116 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = MEMORY[0x1E697E0B8];
  v48 = MEMORY[0x1E697E0A8];
  v49 = v22;
  v50 = v114;
  v51 = v86;
  sub_1A36225DC();

  v52 = (*(v87 + 8))(v51, v50);
  v53 = v89;
  sub_1A35B83D0(v52, v54, v55, v56, v57, v58, v59, v60, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v61 = v100;
  sub_1A35B567C(v53 + *(v88 + 28), v100, &qword_1EB0EEE50);
  sub_1A360DBB4(v53, type metadata accessor for TipViewEnvironment);
  v62 = v103;
  v63 = v2;
  if (__swift_getEnumTagSinglePayload(v61, 1, v103) == 1)
  {
    v64 = v102;
    v65 = v63 + *(v35 + 40);
    v66 = v101;
    (*(v102 + 16))(v101, v65, v62);
    if (__swift_getEnumTagSinglePayload(v61, 1, v62) != 1)
    {
      sub_1A360DA00(v61, &qword_1EB0EEE50);
    }
  }

  else
  {
    v64 = v102;
    v66 = v101;
    (*(v102 + 32))(v101, v61, v62);
  }

  v67 = v104;
  sub_1A3621ACC();
  v115 = v114;
  v116 = v47;
  v117 = OpaqueTypeConformance2;
  v118 = v48;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v91;
  v70 = v94;
  sub_1A362260C();
  (*(v105 + 8))(v67, v106);
  (*(v64 + 8))(v66, v62);
  (*(v90 + 8))(v49, v70);
  v71 = v107;
  sub_1A362200C();
  v115 = v70;
  v116 = v68;
  swift_getOpaqueTypeConformance2();
  v72 = v93;
  v73 = v96;
  sub_1A36225FC();
  (*(v108 + 8))(v71, v109);
  (*(v95 + 8))(v69, v73);
  v74 = v112;
  sub_1A35AFB18(v63, v112);
  v75 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v76 = swift_allocObject();
  sub_1A360DC38(v74, v76 + v75, type metadata accessor for PopoverTip);
  v77 = v98;
  (*(v97 + 32))(v98, v72, v99);
  v78 = (v77 + *(v92 + 36));
  *v78 = sub_1A360DE0C;
  v78[1] = v76;
  v78[2] = 0;
  v78[3] = 0;
  sub_1A35AFB18(v63, v74);
  v79 = swift_allocObject();
  sub_1A360DC38(v74, v79 + v75, type metadata accessor for PopoverTip);
  v80 = v113;
  sub_1A35C9CC0(v77, v113);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EE248);
  v82 = (v80 + *(result + 36));
  *v82 = 0;
  v82[1] = 0;
  v82[2] = sub_1A360E188;
  v82[3] = v79;
  return result;
}

uint64_t sub_1A360D1BC@<X0>(uint64_t a1@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    OUTLINED_FUNCTION_12_7();
  }

  sub_1A360C4D8(a1);
}

uint64_t sub_1A360D25C(uint64_t a1)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1A362274C();
  v8 = MEMORY[0x1E69815C0];
  v9 = MEMORY[0x1E6981568];
  *&v7 = v2;
  v3 = type metadata accessor for TipViewEnvironment();
  v4 = a1 + *(v3 + 32);
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1A35A63BC(&v7, v4);

  *(v4 + 40) = 1;
  v6 = a1 + *(v3 + 36);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1A360D348(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = OUTLINED_FUNCTION_12_7();
  }

  a3(isCurrentExecutor);
}

void sub_1A360D3E8()
{
  v1 = _s17PopoverAttributesVMa();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PopoverTip();
  v5 = v0 + v4[19];
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v18) = v6;
  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA38);
  sub_1A362289C();
  if (v17 == 1)
  {
    v8 = v0 + v4[18];
    v9 = *v8;
    v10 = *(v8 + 1);
    LOBYTE(v18) = v9;
    v19 = v10;
    sub_1A362289C();
    v11 = (v0 + v4[16]);
    v13 = *v11;
    v12 = v11[1];
    v18 = v13;
    v19 = v12;
    if (v17 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
      sub_1A362289C();
      v14 = v17;
      sub_1A360A864(v3);
      sub_1A360E1A8(v0, v3);

      sub_1A360DBB4(v3, _s17PopoverAttributesVMa);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF838);
      sub_1A362289C();
      v15 = v17;
      sub_1A360E698();
    }
  }
}

unint64_t sub_1A360D584()
{
  result = qword_1ED81D790;
  if (!qword_1ED81D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7E8);
    sub_1A360D668(&qword_1ED81D7D0, &qword_1EB0EF7F8, &unk_1A362A408, sub_1A360D714);
    sub_1A360D668(&qword_1ED81D7D8, &qword_1EB0EF810, &unk_1A362A420, sub_1A360D7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D790);
  }

  return result;
}

uint64_t sub_1A360D668(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_11_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_1A35A9B78(qword_1ED81D848, &qword_1EB0EE260);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A360D714()
{
  result = qword_1ED81D818;
  if (!qword_1ED81D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF800);
    sub_1A35A9B78(&qword_1ED81D9E8, &unk_1EB0EE250);
    sub_1A35A9B78(&qword_1ED81D7B0, &unk_1EB0EF808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D818);
  }

  return result;
}

unint64_t sub_1A360D7F8()
{
  result = qword_1ED81D820;
  if (!qword_1ED81D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF818);
    sub_1A35A9B78(&qword_1ED81D9E8, &unk_1EB0EE250);
    sub_1A35A9B78(&qword_1ED81D7A8, &unk_1EB0EF820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D820);
  }

  return result;
}

unint64_t sub_1A360D8DC()
{
  result = qword_1ED81D770;
  if (!qword_1ED81D770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EE248);
    sub_1A35AFB7C();
    sub_1A35CA908();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D770);
  }

  return result;
}

uint64_t sub_1A360DA00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0_19();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1A360DA98(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_14(v1);
  v3 = OUTLINED_FUNCTION_8_14(*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A360DB18(__int128 *a1)
{
  v3 = *(type metadata accessor for PopoverTip() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1A360AE80(a1, v1 + v4, v5);
}

uint64_t sub_1A360DBB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_19();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1A360DC38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_0();
  v4 = OUTLINED_FUNCTION_11_2();
  v5(v4);
  return a2;
}

unint64_t sub_1A360DC9C()
{
  result = qword_1EB0EE1D0;
  if (!qword_1EB0EE1D0)
  {
    sub_1A35CDC10(255, &qword_1EB0EE1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE1D0);
  }

  return result;
}

uint64_t sub_1A360DD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_14(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

uint64_t sub_1A360DDA4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_8_14(*(v3 + 80));
  return sub_1A360D1BC(a1);
}

uint64_t sub_1A360DE28(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_14(v4);
  v6 = OUTLINED_FUNCTION_8_14(*(v5 + 80));
  return sub_1A360D348(v6, a1, a2);
}

uint64_t objectdestroy_10Tm()
{
  v2 = v1;
  type metadata accessor for PopoverTip();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v25 = *(v6 + 64);
  v7 = v1 + v5;
  __swift_destroy_boxed_opaque_existential_1(v1 + v5);

  if (*(v1 + v5 + 64))
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

  v17 = v2;
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
  if (v21)
  {
  }

  OUTLINED_FUNCTION_13_4();
  v2 = v17;
  v5 = (v4 + 16) & ~v4;
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

  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_11_10();

  return MEMORY[0x1EEE6BDD0](v2, v5 + v25, v4 | 7);
}

void sub_1A360E1A8(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF890);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v41 - v7);
  v9 = sub_1A36221CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_sourceAppeared] != 1)
  {
    return;
  }

  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (sub_1A35ADF54(v13, v14) == &type metadata for EmptyTip)
  {
    return;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  Tip.status.getter(v15, v16, v49);
  if (v49[0] != 8)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v48 = Strong;
  v47 = sub_1A361E944();

  if (v47)
  {
    if (sub_1A361EFF4())
    {
      v44 = OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_allowsBackgroundInteraction;
      LODWORD(v45) = v3[OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_allowsBackgroundInteraction];
      v46 = _s17PopoverAttributesVMa();
      v18 = *(v10 + 16);
      v42 = *(v46 + 24);
      v43 = v18;
      v18(v12, a2 + v42, v9);
      sub_1A3622BDC();
      v19 = OUTLINED_FUNCTION_1_24() & 1;

      if (v45 != v19)
      {
        v43(v12, a2 + v42, v9);
        sub_1A3622BDC();
        v20 = OUTLINED_FUNCTION_1_24();

        *(v44 + v3) = v20 & 1;
      }

      v21 = a1[3];
      v45 = a1[4];
      v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
      v43 = type metadata accessor for TipUIPopoverViewController();
      v44 = &v41;
      MEMORY[0x1EEE9AC00](v43);
      v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v24, v22, v21);
      sub_1A360EF7C(a2, v8);
      v26 = v46;
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v46);
      v27 = *a2;
      v28 = a2[1];
      v29 = v48;

      v30 = v3;
      v31 = sub_1A3614684(v24, v3, v29, v8, v27, v28, v21, v45);
      v32 = (a2 + *(v26 + 32));
      v33 = *v32;
      v34 = v32[1];
      v35 = v47;
      sub_1A361F0A8(v47, 1, v33, v34);

      v37 = MEMORY[0x1EEE9AC00](v36);
      *(&v41 - 2) = a1;
      MEMORY[0x1EEE9AC00](v37);
      *(&v41 - 2) = sub_1A360EFE0;
      *(&v41 - 1) = v38;
      v39 = sub_1A362159C();
      sub_1A36215AC();
      v39(v49, 0);

      return;
    }

    v40 = v47;
  }

  else
  {
    v40 = v48;
  }
}

uint64_t sub_1A360E698()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1A3614D18(&v10);
    if (!v11)
    {

      return sub_1A360EFE8(&v10);
    }

    sub_1A35A63BC(&v10, v12);
    v2 = v1;
    v3 = [v2 presentingViewController];
    v4 = v2;
    if (v3)
    {
      v5 = v3;
      v6 = [v2 isBeingDismissed];

      if ((v6 & 1) == 0)
      {
        v7 = [v5 dismissViewControllerAnimated:1 completion:0];
        v8 = MEMORY[0x1EEE9AC00](v7);
        MEMORY[0x1EEE9AC00](v8);
        v9 = sub_1A362159C();
        sub_1A36215AC();
        v9(&v10, 0);

        return __swift_destroy_boxed_opaque_existential_1(v12);
      }

      v4 = v5;
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

void sub_1A360E844(void *a1)
{
  v3 = [a1 presentedViewController];
  type metadata accessor for TipUIPopoverViewController();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
  }

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v1 + OBJC_IVAR____TtCV6TipKit10PopoverTip13PopoverBridge_allowsBackgroundInteraction) == 1)
    {
      v9 = Strong;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8A0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1A362A4C0;
      v7 = [a1 presentingViewController];
      v8 = [v7 view];

      if (!v8)
      {
        __break(1u);
        return;
      }

      *(v6 + 32) = v8;
      sub_1A361460C(v6);
      Strong = v9;
    }
  }
}

uint64_t sub_1A360EA68(void *a1)
{
  sub_1A36231BC();

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x1A58F3290](v4);

  MEMORY[0x1A58F3290](0xD000000000000020, 0x80000001A36399D0);
  return 0x203A646928706954;
}

uint64_t sub_1A360EB34(void *a1)
{
  sub_1A36231BC();

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x1A58F3290](v4);

  MEMORY[0x1A58F3290](0xD00000000000001FLL, 0x80000001A3639A00);
  return 0x203A646928706954;
}

void sub_1A360EC00(uint64_t a1)
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = TipUIPopoverViewController.popoverPresentationController.getter();
    v5 = [v4 sourceItem];

    if (v5)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() && (sub_1A360F4F0(), (sub_1A36230AC() & 1) == 0) && (v6 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v7 = v6;
        v8 = TipUIPopoverViewController.popoverPresentationController.getter();
        [v8 setSourceItem_];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

id _s6TipKit0A23UIPopoverViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s17PopoverAttributesVMa()
{
  result = qword_1ED81DEC0;
  if (!qword_1ED81DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A360EE58()
{
  sub_1A35A9760();
  if (v0 <= 0x3F)
  {
    sub_1A36221CC();
    if (v1 <= 0x3F)
    {
      sub_1A35E7CFC(319, &qword_1ED81E700);
      if (v2 <= 0x3F)
      {
        sub_1A35A8A5C();
        if (v3 <= 0x3F)
        {
          sub_1A3621A4C();
          if (v4 <= 0x3F)
          {
            type metadata accessor for TipViewEnvironment();
            if (v5 <= 0x3F)
            {
              sub_1A35E7CFC(319, qword_1ED81E7B0);
              if (v6 <= 0x3F)
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

uint64_t sub_1A360EF7C(uint64_t a1, uint64_t a2)
{
  v4 = _s17PopoverAttributesVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A360EFE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEAF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A360F084(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      sub_1A360EC00(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A360F158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A360F588();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A360F1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A360F588();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A360F220()
{
  sub_1A360F588();
  sub_1A362217C();
  __break(1u);
}

unint64_t sub_1A360F24C()
{
  result = qword_1EB0EF8A8;
  if (!qword_1EB0EF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF8A8);
  }

  return result;
}

void sub_1A360F2A8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A360EC00(a1);
  }
}

uint64_t sub_1A360F3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A360F534();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A360F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A360F534();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A360F470()
{
  sub_1A360F534();
  sub_1A3621EDC();
  __break(1u);
}

unint64_t sub_1A360F49C()
{
  result = qword_1ED81D950;
  if (!qword_1ED81D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D950);
  }

  return result;
}

unint64_t sub_1A360F4F0()
{
  result = qword_1ED81D9A8;
  if (!qword_1ED81D9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED81D9A8);
  }

  return result;
}

unint64_t sub_1A360F534()
{
  result = qword_1ED81D940;
  if (!qword_1ED81D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED81D940);
  }

  return result;
}

unint64_t sub_1A360F588()
{
  result = qword_1EB0EF8B8;
  if (!qword_1EB0EF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EF8B8);
  }

  return result;
}

uint64_t sub_1A360F5E8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A3622E2C();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_1A3612410(&v12);
    if (v3)
    {
      v8 = OUTLINED_FUNCTION_13_5(v7, "");

      if ((v8 & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12;
    v9 = OUTLINED_FUNCTION_13_5(v7, "");

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_19_2();
  v11 = sub_1A36235FC();
  MEMORY[0x1A58F3290](v11);

  MEMORY[0x1A58F3290](46, 0xE100000000000000);
  OUTLINED_FUNCTION_22_2();
  result = sub_1A362332C();
  __break(1u);
  return result;
}

uint64_t sub_1A360F750(uint64_t a1, uint64_t a2)
{
  sub_1A3622E2C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1A3612390();
  v6 = OUTLINED_FUNCTION_13_5(v5, "");

  if (v2)
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (v6)
  {
    __break(1u);
LABEL_8:
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_19_2();
    v8 = sub_1A36235FC();
    MEMORY[0x1A58F3290](v8);

    MEMORY[0x1A58F3290](46, 0xE100000000000000);
    OUTLINED_FUNCTION_22_2();
    result = sub_1A362332C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A360F89C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    sub_1A3621A0C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for TipUIWrapperView();
  return __swift_storeEnumTagSinglePayload(a1, v6, 1, v7);
}

uint64_t sub_1A360F92C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-v5];
  v7 = type metadata accessor for TipUIWrapperView();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  sub_1A35ABFF4(a1, v6, &qword_1EB0EF8C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1A35A6588(v6, &qword_1EB0EF8C0);
  }

  sub_1A35B46E8(v6, v12);
  v14 = OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView;
  swift_beginAccess();
  if (*(v2 + v14))
  {
    sub_1A3611E9C();
  }

  sub_1A35B4270(v12, v9);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8D0));
  v16 = sub_1A36219FC();
  v17 = *(v2 + v14);
  *(v2 + v14) = v16;

  v18 = *(v2 + v14);
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    [v20 setBackgroundColor_];

    v22 = *(v2 + v14);
    if (v22)
    {
      [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    }
  }

  swift_beginAccess();
  v23 = *(v2 + v14);
  if (v23)
  {
    swift_endAccess();
    v24 = v23;
    sub_1A35B474C(v23);

    return sub_1A36123B8(v12, type metadata accessor for TipUIWrapperView);
  }

  else
  {
    sub_1A36123B8(v12, type metadata accessor for TipUIWrapperView);
    return swift_endAccess();
  }
}

uint64_t TipUICollectionReusableView.backgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1A360F89C(v13 - v9);
  v11 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    sub_1A35A6588(v10, &qword_1EB0EF8C0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    sub_1A35ADD70(v6);
    sub_1A35ABFF4(v6 + *(v2 + 32), v13, &qword_1EB0EED38);
    sub_1A36123B8(v6, type metadata accessor for TipViewEnvironment);
    result = sub_1A35A63BC(v13, a1);
    if (*(&v15 + 1))
    {
      return sub_1A35A6588(&v14, &unk_1EB0EF950);
    }
  }

  else
  {
    sub_1A35A6350((v10 + 112), &v14);
    sub_1A35A6588(v10, &qword_1EB0EF8C0);
    return sub_1A35A63BC(&v14, a1);
  }

  return result;
}

uint64_t TipUICollectionReusableView.backgroundStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_11(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  type metadata accessor for TipUIWrapperView();
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A360F92C(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + 112), a1);
    *(v1 + 152) = 1;
    sub_1A360F92C(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;

        *v3 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v13, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v13, v4);
      }
    }
  }

  return result;
}

void (*TipUICollectionReusableView.backgroundStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUICollectionReusableView.backgroundStyle.getter(v1);
  return sub_1A361010C;
}

double TipUICollectionReusableView.cornerRadius.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_10(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 160);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t TipUICollectionReusableView.cornerRadius.setter(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_4();
  sub_1A360F89C(v1);
  type metadata accessor for TipUIWrapperView();
  v9 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11))
  {
    v12 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v12, v13, v14);
    sub_1A360F92C(v7);
    v15 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v15, v16);
  }

  else
  {
    *(v1 + 160) = a1;
    sub_1A360F92C(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t TipUICollectionReusableView.cornerRadius.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = TipUICollectionReusableView.cornerRadius.getter();
  return OUTLINED_FUNCTION_18();
}

double TipUICollectionReusableView.imageSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_10(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 224);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t TipUICollectionReusableView.imageSize.setter(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_4();
  sub_1A360F89C(v2);
  type metadata accessor for TipUIWrapperView();
  v11 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13))
  {
    v14 = OUTLINED_FUNCTION_17();
    sub_1A35ABFF4(v14, v15, v16);
    sub_1A360F92C(v9);
    v17 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v17, v18);
  }

  else
  {
    *(v2 + 224) = a1;
    *(v2 + 232) = a2;
    *(v2 + 240) = 1;
    sub_1A360F92C(v2);
  }

  return sub_1A35A6588(v2, &qword_1EB0EF8C0);
}

uint64_t TipUICollectionReusableView.imageSize.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = TipUICollectionReusableView.imageSize.getter();
  *(a1 + 8) = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t TipUICollectionReusableView.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_2(v5, v10);
  type metadata accessor for TipUIWrapperView();
  v6 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v6, v7, v8))
  {
    result = sub_1A35A6588(v1, &qword_1EB0EF8C0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_1A35ABFF4(v1 + 248, a1, &unk_1EB0EF950);
    return sub_1A35A6588(v1, &qword_1EB0EF8C0);
  }

  return result;
}

uint64_t TipUICollectionReusableView.imageStyle.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_11(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  type metadata accessor for TipUIWrapperView();
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A360F92C(v2);
    sub_1A35A6588(a1, &unk_1EB0EF950);
    v21 = OUTLINED_FUNCTION_4_16();
  }

  else
  {
    sub_1A36107DC(a1, v1 + 248);
    sub_1A360F92C(v1);
    v22 = &unk_1EB0EF950;
    v21 = a1;
  }

  sub_1A35A6588(v21, v22);
  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t sub_1A36107DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF950);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*TipUICollectionReusableView.imageStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUICollectionReusableView.imageStyle.getter(v1);
  return sub_1A36108A4;
}

void sub_1A36108A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A35ABFF4(*a1, v2 + 40, &unk_1EB0EF950);
    TipUICollectionReusableView.imageStyle.setter(v2 + 40);
    v3 = OUTLINED_FUNCTION_17();
    sub_1A35A6588(v3, v4);
  }

  else
  {
    TipUICollectionReusableView.imageStyle.setter(*a1);
  }

  free(v2);
}

uint64_t TipUICollectionReusableView.viewStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_2(v5, v13);
  v6 = type metadata accessor for TipUIWrapperView();
  v7 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v7, v8, v6))
  {
    sub_1A35A6588(v1, &qword_1EB0EF8C0);
    a1[3] = type metadata accessor for MiniTipViewStyle();
    a1[4] = sub_1A35ADEFC();
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_1A362178C();
    v9 = OUTLINED_FUNCTION_10();
    return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  }

  else
  {
    sub_1A35A6350(v1 + *(v6 + 68), v14);
    sub_1A35A6588(v1, &qword_1EB0EF8C0);
    return sub_1A35A63BC(v14, a1);
  }
}

uint64_t TipUICollectionReusableView.viewStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_11(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  v15 = type metadata accessor for TipUIWrapperView();
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A360F92C(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + *(v15 + 68)), a1);
    sub_1A360F92C(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUICollectionReusableView.viewStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUICollectionReusableView.viewStyle.getter(v1);
  return sub_1A3610BE8;
}

void sub_1A3610C00(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1A35A6350(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t sub_1A3610C7C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUICollectionReusableView.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A35EEDFC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A3610CEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361245C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUICollectionReusableView.closeHandler.setter(v4, v3);
}

uint64_t TipUICollectionReusableView.dismissalHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUICollectionReusableView.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A3610DDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_10(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 72);
    sub_1A35B5EA0(v7);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t sub_1A3610E90@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = TipUICollectionReusableView.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A35EED9C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A3610F00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A35EEDA4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUICollectionReusableView.closeHandler.setter(v4, v3);
}

uint64_t sub_1A3610F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1A360F89C(&v18 - v10);
  v12 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    v13 = OUTLINED_FUNCTION_4_16();
    sub_1A35ABFF4(v13, v14, v15);
    sub_1A360F92C(v8);
    sub_1A35BBDF4(a1);
    sub_1A35A6588(v8, &qword_1EB0EF8C0);
  }

  else
  {
    v16 = *(v11 + 9);
    *(v11 + 9) = a1;
    *(v11 + 10) = a2;
    sub_1A35B5EA0(a1);
    sub_1A35BBDF4(v16);
    sub_1A360F92C(v11);
    sub_1A35BBDF4(a1);
  }

  return sub_1A35A6588(v11, &qword_1EB0EF8C0);
}

uint64_t TipUICollectionReusableView.closeHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUICollectionReusableView.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A3611148(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_8_15();
    sub_1A35B5EA0(v4);
    v5 = OUTLINED_FUNCTION_8_15();
    a3(v5);
    v6 = OUTLINED_FUNCTION_8_15();

    return sub_1A35BBDF4(v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_15();
    return (a3)(v8);
  }
}

uint64_t TipUICollectionReusableView.backgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_10(v3, v8);
  v4 = type metadata accessor for TipUIWrapperView();
  v5 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) || !*(v0 + *(v4 + 72)))
  {
    sub_1A35A6588(v0, &qword_1EB0EF8C0);
    return 0;
  }

  else
  {

    sub_1A35A6588(v0, &qword_1EB0EF8C0);
    sub_1A3611350();
    return sub_1A362309C();
  }
}

unint64_t sub_1A3611350()
{
  result = qword_1ED81F4C0;
  if (!qword_1ED81F4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED81F4C0);
  }

  return result;
}

uint64_t TipUICollectionReusableView.backgroundColor.setter(id a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_11(v7, v8, v9, v10, v11, v12, v13, v14, v25);
  v15 = type metadata accessor for TipUIWrapperView();
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A360F92C(v2);

    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    if (a1)
    {
      a1 = a1;
      v23 = sub_1A362268C();
      *(v1 + *(v15 + 72)) = v23;

      v27 = MEMORY[0x1E69815C0];
      v28 = MEMORY[0x1E6981568];
      *&v26 = v23;
      __swift_destroy_boxed_opaque_existential_1(v1 + 112);
      sub_1A35A63BC(&v26, v1 + 112);
      *(v1 + 152) = 1;
    }

    else
    {
      *(v1 + *(v15 + 72)) = 0;
    }

    sub_1A360F92C(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t TipUICollectionReusableView.backgroundColor.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TipUICollectionReusableView.backgroundColor.getter();
  return OUTLINED_FUNCTION_18();
}

void sub_1A3611618(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    TipUICollectionReusableView.backgroundColor.setter(v2);
  }

  else
  {
    TipUICollectionReusableView.backgroundColor.setter(*a1);
  }
}

id TipUICollectionReusableView.intrinsicContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView;
  OUTLINED_FUNCTION_25_2();
  v3 = *&v0[v2];
  if (v3)
  {
    return [v3 intrinsicContentSize];
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_intrinsicContentSize);
}

id TipUICollectionReusableView.configureTip(_:arrowEdge:actionHandler:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return _s6TipKit0A24UICollectionReusableViewC09configureA0_9arrowEdge13actionHandlerACXDx_7SwiftUI0H0OSgyAA4TipsO6ActionVctAA0A0RzlF_0(v9, a2, a3, a4, v7, v8);
}

id _s6TipKit0A24UICollectionReusableViewC09configureA0_9arrowEdge13actionHandlerACXDx_7SwiftUI0H0OSgyAA4TipsO6ActionVctAA0A0RzlF_0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v20 = OUTLINED_FUNCTION_14(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16_4();
  v25 = OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView;
  OUTLINED_FUNCTION_20_1();
  swift_beginAccess();
  if (!*(OUTLINED_FUNCTION_20_1() + v25))
  {
    goto LABEL_13;
  }

  sub_1A360F89C(v6);
  v26 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v26, v27, v14))
  {
    sub_1A35A6588(v6, &qword_1EB0EF8C0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    sub_1A35B4270(v6, v18);
    sub_1A35A6588(v6, &qword_1EB0EF8C0);

    OUTLINED_FUNCTION_9_9();
    v28 = sub_1A362134C();
    v29 = v30;
  }

  v31 = sub_1A35A66B0();
  if (!v29)
  {

    goto LABEL_13;
  }

  if (v28 == v31 && v29 == v32)
  {

    goto LABEL_15;
  }

  v34 = sub_1A362345C();

  v35 = OUTLINED_FUNCTION_20_1();
  if ((v34 & 1) == 0)
  {
LABEL_13:
    v36 = a1;
    v37 = a5;
    v65[3] = a5;
    v65[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, v36, a5);
    v59[0] = 1;
    v60 = 0;
    v61 = 0;
    v62 = 1;
    v38 = sub_1A35B37E0();
    v63 = &type metadata for AnyTip;
    v64 = v38;
    swift_unknownObjectWeakInit();
    *(v18 + 88) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 104) = 1;
    sub_1A35ADD70(v13);
    sub_1A35ABFF4(v13 + v9[8], v57, &qword_1EB0EED38);
    sub_1A36123B8(v13, type metadata accessor for TipViewEnvironment);
    v39 = v58;
    sub_1A35A63BC(v57, v18 + 112);
    *(v18 + 152) = v39;
    sub_1A35ADD70(v13);
    v40 = *(v13 + v9[9]);
    sub_1A36123B8(v13, type metadata accessor for TipViewEnvironment);
    *(v18 + 168) = 0;
    *(v18 + 160) = v40;
    *(v18 + 176) = 0;
    *(v18 + 184) = 0;
    *(v18 + 192) = 1;
    *(v18 + 200) = &type metadata for AnyTip;
    *(v18 + 208) = v38;
    swift_unknownObjectWeakInit();
    sub_1A35ADD70(v13);
    v41 = v13 + v9[10];
    v42 = *v41;
    v43 = *(v41 + 8);
    LOBYTE(v38) = *(v41 + 16);
    sub_1A36123B8(v13, type metadata accessor for TipViewEnvironment);
    *(v18 + 224) = v42;
    *(v18 + 232) = v43;
    *(v18 + 240) = v38;
    *(v18 + 280) = 0;
    *(v18 + 248) = 0u;
    *(v18 + 264) = 0u;
    v44 = v14[15];
    v45 = sub_1A3621A4C();
    __swift_storeEnumTagSinglePayload(v18 + v44, 1, 1, v45);
    v46 = (v18 + v14[16]);
    *v46 = 0;
    v46[1] = 0;
    v47 = (v18 + v14[17]);
    v47[3] = type metadata accessor for MiniTipViewStyle();
    v47[4] = sub_1A35ADEFC();
    __swift_allocate_boxed_opaque_existential_0(v47);
    sub_1A362178C();
    v48 = OUTLINED_FUNCTION_10();
    __swift_storeEnumTagSinglePayload(v48, v49, 1, v50);
    *(v18 + v14[18]) = 0;
    sub_1A35A6350(v65, v18);
    *(v18 + 40) = sub_1A35A6624(v37, a6);
    sub_1A35B4214(v59, v18 + 168);
    *(v18 + 56) = a3;
    *(v18 + 64) = a4;
    *(v18 + 48) = a2;
    sub_1A35B4270(v18, v23);

    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_9_9();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v14);
    sub_1A360F92C(v23);
    sub_1A35A6588(v23, &qword_1EB0EF8C0);
LABEL_15:
    v35 = OUTLINED_FUNCTION_20_1();
  }

  return v35;
}

CGSize __swiftcall TipUICollectionReusableView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView;
  OUTLINED_FUNCTION_25_2();
  v6 = *&v1[v5];
  if (v6)
  {
    [v6 sizeThatFits_];
  }

  else
  {
    v10.receiver = v1;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_sizeThatFits_, width, height);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

void sub_1A3611E9C()
{
  v1 = OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;
}

id TipUICollectionReusableView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1A3622E3C();
  v4 = v0;
  sub_1A360F750(sub_1A361203C, &v3);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A3611F98()
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A3611E9C();
}

id TipUICollectionReusableView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_23();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_11();

  return [v2 v3];
}

id TipUICollectionReusableView.init(frame:)()
{
  OUTLINED_FUNCTION_23();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_0_11();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id TipUICollectionReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TipUICollectionReusableView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6TipKit27TipUICollectionReusableView_hostingView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1A36123B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_0();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1A3612410@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void OUTLINED_FUNCTION_19_2()
{

  JUMPOUT(0x1A58F3290);
}

uint64_t sub_1A3612484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - v2;
  v4 = type metadata accessor for TipUIWrapperView();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  swift_beginAccess();
  sub_1A35ECF18(v0 + v7, v3, &qword_1EB0EF8C0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_1A35A6588(v3, &qword_1EB0EF8C0);
  }

  v9 = sub_1A35B46E8(v3, v6);
  MEMORY[0x1EEE9AC00](v9);
  v10[-2] = v6;
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8D8);
  v10[4] = sub_1A3614558();
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_1A36145BC(&qword_1EB0EE1F8, type metadata accessor for TipUIWrapperView);
  sub_1A362202C();
  MEMORY[0x1A58F3710](v10);
  return sub_1A36123B8(v6, type metadata accessor for TipUIWrapperView);
}

uint64_t sub_1A36126A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  swift_beginAccess();
  sub_1A3614500(a1, v1 + v3, &qword_1EB0EF8C0);
  swift_endAccess();
  sub_1A3612484();
  return sub_1A35A6588(a1, &qword_1EB0EF8C0);
}

uint64_t (*sub_1A361273C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A36127A0;
}

uint64_t sub_1A36127A0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A3612484();
  }

  return result;
}

uint64_t TipUICollectionViewCell.backgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = v1 + OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  OUTLINED_FUNCTION_8_16();
  v9 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1A35ADD70(v7);
    sub_1A35ECF18(v7 + *(v3 + 32), v11, &qword_1EB0EED38);
    sub_1A36123B8(v7, type metadata accessor for TipViewEnvironment);
    result = sub_1A35A63BC(v11, a1);
    if (*(&v13 + 1))
    {
      return sub_1A35A6588(&v12, &unk_1EB0EF950);
    }
  }

  else
  {
    sub_1A35A6350(v8 + 112, &v12);
    return sub_1A35A63BC(&v12, a1);
  }

  return result;
}

uint64_t TipUICollectionViewCell.backgroundStyle.setter(uint64_t *a1)
{
  sub_1A361273C(v17);
  OUTLINED_FUNCTION_5_13();
  v4 = OUTLINED_FUNCTION_14_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, v5, v6);
  if (!EnumTagSinglePayload)
  {
    EnumTagSinglePayload = __swift_assign_boxed_opaque_existential_1((v2 + 112), a1);
    *(v2 + 152) = 1;
  }

  v15 = OUTLINED_FUNCTION_6_11(EnumTagSinglePayload, v8, v9, v10, v11, v12, v13, v14, v17[0]);
  v1(v15);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*TipUICollectionViewCell.backgroundStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUICollectionViewCell.backgroundStyle.getter(v1);
  return sub_1A36129F0;
}

double TipUICollectionViewCell.cornerRadius.getter()
{
  OUTLINED_FUNCTION_1_25();
  type metadata accessor for TipUIWrapperView();
  v1 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v2, v3);
  result = 0.0;
  if (!EnumTagSinglePayload)
  {
    return *(v0 + 160);
  }

  return result;
}

uint64_t TipUICollectionViewCell.cornerRadius.setter(double a1)
{
  v2 = sub_1A361273C(v18);
  v4 = v3;
  type metadata accessor for TipUIWrapperView();
  v5 = OUTLINED_FUNCTION_14_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v7);
  if (!EnumTagSinglePayload)
  {
    *(v4 + 160) = a1;
  }

  v16 = OUTLINED_FUNCTION_6_11(EnumTagSinglePayload, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  return (v2)(v16);
}

uint64_t TipUICollectionViewCell.cornerRadius.modify(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = TipUICollectionViewCell.cornerRadius.getter();
  return OUTLINED_FUNCTION_18();
}

double TipUICollectionViewCell.imageSize.getter()
{
  OUTLINED_FUNCTION_1_25();
  type metadata accessor for TipUIWrapperView();
  v1 = OUTLINED_FUNCTION_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v2, v3);
  result = 0.0;
  if (!EnumTagSinglePayload)
  {
    return *(v0 + 224);
  }

  return result;
}

uint64_t TipUICollectionViewCell.imageSize.setter(double a1, double a2)
{
  v4 = sub_1A361273C(v20);
  v6 = v5;
  type metadata accessor for TipUIWrapperView();
  v7 = OUTLINED_FUNCTION_14_6();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, v8, v9);
  if (!EnumTagSinglePayload)
  {
    *(v6 + 224) = a1;
    *(v6 + 232) = a2;
    *(v6 + 240) = 1;
  }

  v18 = OUTLINED_FUNCTION_6_11(EnumTagSinglePayload, v11, v12, v13, v14, v15, v16, v17, v20[0]);
  return (v4)(v18);
}

uint64_t TipUICollectionViewCell.imageSize.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = TipUICollectionViewCell.imageSize.getter();
  *(a1 + 8) = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t TipUICollectionViewCell.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  OUTLINED_FUNCTION_8_16();
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_14_6();
  result = __swift_getEnumTagSinglePayload(v4, v5, v6);
  if (!result)
  {
    return sub_1A35ECF18(v3 + 248, a1, &unk_1EB0EF950);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t TipUICollectionViewCell.imageStyle.setter(uint64_t a1)
{
  sub_1A361273C(v17);
  OUTLINED_FUNCTION_5_13();
  v4 = OUTLINED_FUNCTION_14_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, v5, v6);
  if (!EnumTagSinglePayload)
  {
    EnumTagSinglePayload = sub_1A3614500(a1, v2 + 248, &unk_1EB0EF950);
  }

  v15 = OUTLINED_FUNCTION_6_11(EnumTagSinglePayload, v8, v9, v10, v11, v12, v13, v14, v17[0]);
  v1(v15);
  return sub_1A35A6588(a1, &unk_1EB0EF950);
}

void (*TipUICollectionViewCell.imageStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUICollectionViewCell.imageStyle.getter(v1);
  return sub_1A3612E64;
}

void sub_1A3612E64(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A35ECF18(*a1, v2 + 40, &unk_1EB0EF950);
    TipUICollectionViewCell.imageStyle.setter(v2 + 40);
    sub_1A35A6588(v2, &unk_1EB0EF950);
  }

  else
  {
    TipUICollectionViewCell.imageStyle.setter(*a1);
  }

  free(v2);
}

uint64_t TipUICollectionViewCell.viewStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  OUTLINED_FUNCTION_8_16();
  v4 = type metadata accessor for TipUIWrapperView();
  v5 = OUTLINED_FUNCTION_14_6();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4))
  {
    a1[3] = type metadata accessor for MiniTipViewStyle();
    OUTLINED_FUNCTION_2_23();
    a1[4] = sub_1A36145BC(v7, v8);
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_1A362178C();
    v9 = OUTLINED_FUNCTION_10();
    return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  }

  else
  {
    sub_1A35A6350(v3 + *(v4 + 68), v13);
    return sub_1A35A63BC(v13, a1);
  }
}

uint64_t TipUICollectionViewCell.viewStyle.setter(uint64_t *a1)
{
  sub_1A361273C(v17);
  v4 = OUTLINED_FUNCTION_5_13();
  v5 = OUTLINED_FUNCTION_14_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, v6, v4);
  if (!EnumTagSinglePayload)
  {
    EnumTagSinglePayload = __swift_assign_boxed_opaque_existential_1((v2 + *(v4 + 68)), a1);
  }

  v15 = OUTLINED_FUNCTION_6_11(EnumTagSinglePayload, v8, v9, v10, v11, v12, v13, v14, v17[0]);
  v1(v15);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*TipUICollectionViewCell.viewStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUICollectionViewCell.viewStyle.getter(v1);
  return sub_1A36130F0;
}

void sub_1A3613108(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1A35A6350(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t sub_1A3613184@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUICollectionViewCell.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A35EEDFC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A36131F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361245C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUICollectionViewCell.closeHandler.setter(v4, v3);
}

uint64_t TipUICollectionViewCell.dismissalHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUICollectionViewCell.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A36132E4()
{
  OUTLINED_FUNCTION_1_25();
  type metadata accessor for TipUIWrapperView();
  v1 = OUTLINED_FUNCTION_10();
  v4 = 0;
  if (!__swift_getEnumTagSinglePayload(v1, v2, v3))
  {
    v4 = *(v0 + 72);
    sub_1A35B5EA0(v4);
  }

  return v4;
}

uint64_t sub_1A3613354@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = TipUICollectionViewCell.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A35EED9C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A36133C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A35EEDA4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUICollectionViewCell.closeHandler.setter(v4, v3);
}

uint64_t sub_1A3613458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A361273C(v19);
  v6 = v5;
  v7 = type metadata accessor for TipUIWrapperView();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (!EnumTagSinglePayload)
  {
    v16 = *(v6 + 72);
    *(v6 + 72) = a1;
    *(v6 + 80) = a2;
    sub_1A35B5EA0(a1);
    EnumTagSinglePayload = sub_1A35BBDF4(v16);
  }

  v17 = OUTLINED_FUNCTION_6_11(EnumTagSinglePayload, v9, v10, v11, v12, v13, v14, v15, v19[0]);
  (v4)(v17);
  return sub_1A35BBDF4(a1);
}

uint64_t TipUICollectionViewCell.closeHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUICollectionViewCell.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A3613564(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_8_15();
    sub_1A35B5EA0(v4);
    v5 = OUTLINED_FUNCTION_8_15();
    a3(v5);
    v6 = OUTLINED_FUNCTION_8_15();

    return sub_1A35BBDF4(v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_15();
    return (a3)(v8);
  }
}

uint64_t TipUICollectionViewCell.backgroundColor.getter()
{
  OUTLINED_FUNCTION_1_25();
  v1 = type metadata accessor for TipUIWrapperView();
  v2 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v2, v3, v1) || !*(v0 + *(v1 + 72)))
  {
    return 0;
  }

  sub_1A3611350();

  return sub_1A362309C();
}

void TipUICollectionViewCell.backgroundColor.setter(id a1)
{
  sub_1A361273C(v11);
  v4 = OUTLINED_FUNCTION_5_13();
  v5 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4))
  {
    v1(v11, 0);
  }

  else
  {
    if (a1)
    {
      a1 = a1;
      v7 = sub_1A362268C();
      *(v2 + *(v4 + 72)) = v7;

      v9 = MEMORY[0x1E69815C0];
      v10 = MEMORY[0x1E6981568];
      *&v8 = v7;
      __swift_destroy_boxed_opaque_existential_1(v2 + 112);
      sub_1A35A63BC(&v8, v2 + 112);
      *(v2 + 152) = 1;
    }

    else
    {
      *(v2 + *(v4 + 72)) = 0;
    }

    v1(v11, 0);
  }
}

uint64_t TipUICollectionViewCell.backgroundColor.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TipUICollectionViewCell.backgroundColor.getter();
  return OUTLINED_FUNCTION_18();
}

void sub_1A3613920(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    TipUICollectionViewCell.backgroundColor.setter(v2);
  }

  else
  {
    TipUICollectionViewCell.backgroundColor.setter(*a1);
  }
}

id TipUICollectionViewCell.configureTip(_:arrowEdge:actionHandler:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);

  return _s6TipKit0A20UICollectionViewCellC09configureA0_9arrowEdge13actionHandlerACXDx_7SwiftUI0H0OSgyAA4TipsO6ActionVctAA0A0RzlF_0(v9, a2, a3, a4, v7, v8);
}

id _s6TipKit0A20UICollectionViewCellC09configureA0_9arrowEdge13actionHandlerACXDx_7SwiftUI0H0OSgyAA4TipsO6ActionVctAA0A0RzlF_0(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v60 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  boxed_opaque_existential_0 = a1;
  v6 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v54 - v19;
  v21 = v62 + OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  OUTLINED_FUNCTION_8_16();
  sub_1A35ECF18(v21, v20, &qword_1EB0EF8C0);
  v22 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v11);
  sub_1A35A6588(v20, &qword_1EB0EF8C0);
  v32 = EnumTagSinglePayload == 1;
  v24 = boxed_opaque_existential_0;
  if (v32)
  {
    goto LABEL_13;
  }

  v54[1] = v6;
  v22 = v60;
  v25 = OUTLINED_FUNCTION_10();
  v6 = v11;
  if (__swift_getEnumTagSinglePayload(v25, v26, v11))
  {
    v27 = 0;
    v28 = 0;
  }

  else
  {

    v27 = sub_1A362134C();
    v28 = v29;
  }

  v30 = sub_1A35A66B0();
  v11 = v31;
  if (!v28)
  {

    OUTLINED_FUNCTION_13_6();
    goto LABEL_13;
  }

  v32 = v27 == v30 && v28 == v31;
  if (v32)
  {

    goto LABEL_14;
  }

  v33 = sub_1A362345C();

  OUTLINED_FUNCTION_13_6();
  if ((v33 & 1) == 0)
  {
LABEL_13:
    v34 = v60;
    v71[3] = v60;
    v71[4] = v61;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v71);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v24, v34);
    v65[0] = 2;
    v66 = 0;
    v67 = 0;
    v68 = v22;
    v35 = sub_1A35B37E0();
    v69 = &type metadata for AnyTip;
    v70 = v35;
    swift_unknownObjectWeakInit();
    *(v15 + 88) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 104) = v22;
    sub_1A35ADD70(v10);
    sub_1A35ECF18(v10 + v6[8], v63, &qword_1EB0EED38);
    sub_1A36123B8(v10, type metadata accessor for TipViewEnvironment);
    v36 = v64;
    sub_1A35A63BC(v63, v15 + 112);
    *(v15 + 152) = v36;
    sub_1A35ADD70(v10);
    v37 = *(v10 + v6[9]);
    sub_1A36123B8(v10, type metadata accessor for TipViewEnvironment);
    *(v15 + 168) = 0;
    *(v15 + 160) = v37;
    *(v15 + 176) = 0;
    *(v15 + 184) = 0;
    *(v15 + 192) = v22;
    *(v15 + 200) = &type metadata for AnyTip;
    *(v15 + 208) = v35;
    swift_unknownObjectWeakInit();
    sub_1A35ADD70(v10);
    v38 = v10 + v6[10];
    v39 = *v38;
    v40 = *(v38 + 8);
    LOBYTE(v35) = *(v38 + 16);
    sub_1A36123B8(v10, type metadata accessor for TipViewEnvironment);
    *(v15 + 224) = v39;
    *(v15 + 232) = v40;
    *(v15 + 240) = v35;
    *(v15 + 280) = 0;
    *(v15 + 248) = 0u;
    *(v15 + 264) = 0u;
    v41 = v11[15];
    v42 = sub_1A3621A4C();
    __swift_storeEnumTagSinglePayload(v15 + v41, 1, 1, v42);
    v43 = (v15 + v11[16]);
    *v43 = 0;
    v43[1] = 0;
    v44 = (v15 + v11[17]);
    v44[3] = type metadata accessor for MiniTipViewStyle();
    OUTLINED_FUNCTION_2_23();
    v44[4] = sub_1A36145BC(v45, v46);
    __swift_allocate_boxed_opaque_existential_0(v44);
    sub_1A362178C();
    v47 = OUTLINED_FUNCTION_10();
    __swift_storeEnumTagSinglePayload(v47, v48, 1, v49);
    *(v15 + v11[18]) = 0;
    sub_1A35A6350(v71, v15);
    *(v15 + 40) = sub_1A35A6624(v34, v61);
    sub_1A35B4214(v65, v15 + 168);
    v50 = v56;
    *(v15 + 56) = v57;
    *(v15 + 64) = v50;
    *(v15 + 48) = v58;
    v51 = v55;
    sub_1A35B4270(v15, v55);

    __swift_destroy_boxed_opaque_existential_1(v71);
    sub_1A36123B8(v15, type metadata accessor for TipUIWrapperView);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v11);
    sub_1A36126A8(v51);
  }

LABEL_14:
  v52 = v62;

  return v52;
}

uint64_t sub_1A3613F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3622E3C();
  sub_1A3622E2C();
  sub_1A3622DFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1A35B4270(a1, a2);
}

id TipUICollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_23();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_11();

  return [v2 v3];
}

id TipUICollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_23();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  v3 = type metadata accessor for TipUIWrapperView();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OUTLINED_FUNCTION_0_11();
  return objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
}

id TipUICollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TipUICollectionViewCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC6TipKit23TipUICollectionViewCell_tipView;
  v5 = type metadata accessor for TipUIWrapperView();
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id TipUICollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TipUICollectionViewCell()
{
  result = qword_1ED81DDF8;
  if (!qword_1ED81DDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3614418()
{
  sub_1A36144A8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A36144A8()
{
  if (!qword_1ED81DE08[0])
  {
    type metadata accessor for TipUIWrapperView();
    v0 = sub_1A36230DC();
    if (!v1)
    {
      atomic_store(v0, qword_1ED81DE08);
    }
  }
}

uint64_t sub_1A3614500(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_31(a1, a2, a3);
  OUTLINED_FUNCTION_0_0();
  (*(v5 + 24))(v3, v4);
  return v3;
}

unint64_t sub_1A3614558()
{
  result = qword_1EB0EE1F0;
  if (!qword_1EB0EE1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0EF8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0EE1F0);
  }

  return result;
}

uint64_t sub_1A36145BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A361460C(uint64_t a1)
{
  v2 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (v2)
  {
    v3 = v2;
    sub_1A3619CF8(a1, v2);
  }

  else
  {
  }
}

char *sub_1A3614684(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a8;
  v72 = a6;
  v71 = a5;
  v75 = a2;
  OUTLINED_FUNCTION_17_5();
  v68 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  v70 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v21);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF890);
  OUTLINED_FUNCTION_14(v24);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v28 = [objc_allocWithZone(v8) initWithNibName:0 bundle:0];
  v73 = a4;
  sub_1A35ABFF4(a4, v27, &unk_1EB0EF890);
  v29 = _s17PopoverAttributesVMa();
  if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
  {
    v30 = v28;
    sub_1A35A6588(v27, &unk_1EB0EF890);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v33 = &v27[*(v29 + 36)];
    v31 = *v33;
    v32 = v33[1];
    v34 = v28;
    sub_1A35B5EA0(v31);
    sub_1A3619DDC(v27, _s17PopoverAttributesVMa);
  }

  v35 = &v28[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  v36 = *&v28[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_didDisappear];
  *v35 = v31;
  v35[1] = v32;
  sub_1A35BBDF4(v36);
  v37 = v28;
  [v37 setModalPresentationStyle_];
  [v37 setModalInPresentation_];
  swift_unknownObjectRetain();
  TipUIPopoverViewController.presentationDelegate.setter();
  swift_unknownObjectRetain();
  v38 = TipUIPopoverViewController.popoverPresentationController.getter();
  [v38 setSourceItem_];

  swift_unknownObjectRelease();
  v84[3] = a7;
  v84[4] = v74;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
  v67 = *(a7 - 8);
  (*(v67 + 16))(boxed_opaque_existential_0, v9, a7);
  v78[0] = 4;
  v79 = 0;
  v80 = 0;
  v65 = a3;
  v39 = a7;
  v66 = v9;
  v81 = 1;
  v40 = sub_1A35B37E0();
  v82 = &type metadata for AnyTip;
  v83 = v40;
  swift_unknownObjectWeakInit();

  *(v20 + 88) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 104) = 1;
  v41 = v72;

  sub_1A35ADD70(v16);
  v42 = v68;
  sub_1A35ABFF4(v16 + *(v68 + 32), v76, &qword_1EB0EED38);
  sub_1A3619DDC(v16, type metadata accessor for TipViewEnvironment);
  v43 = v77;
  sub_1A35A63BC(v76, v20 + 112);
  *(v20 + 152) = v43;
  sub_1A35ADD70(v16);
  v44 = *(v16 + *(v42 + 36));
  sub_1A3619DDC(v16, type metadata accessor for TipViewEnvironment);
  *(v20 + 168) = 0;
  *(v20 + 160) = v44;
  *(v20 + 176) = 0;
  *(v20 + 184) = 0;
  *(v20 + 192) = 1;
  *(v20 + 200) = &type metadata for AnyTip;
  *(v20 + 208) = v40;
  swift_unknownObjectWeakInit();
  sub_1A35ADD70(v16);
  v45 = v16 + *(v42 + 40);
  v46 = *v45;
  v47 = *(v45 + 8);
  LOBYTE(v42) = *(v45 + 16);
  sub_1A3619DDC(v16, type metadata accessor for TipViewEnvironment);
  *(v20 + 224) = v46;
  *(v20 + 232) = v47;
  *(v20 + 240) = v42;
  *(v20 + 280) = 0;
  *(v20 + 248) = 0u;
  *(v20 + 264) = 0u;
  v48 = v70;
  v49 = *(v70 + 60);
  v50 = sub_1A3621A4C();
  __swift_storeEnumTagSinglePayload(v20 + v49, 1, 1, v50);
  v51 = (v20 + v48[16]);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v20 + v48[17]);
  v52[3] = type metadata accessor for MiniTipViewStyle();
  v52[4] = sub_1A35ADEFC();
  __swift_allocate_boxed_opaque_existential_0(v52);
  sub_1A362178C();
  v53 = OUTLINED_FUNCTION_10();
  __swift_storeEnumTagSinglePayload(v53, v54, 1, v55);
  *(v20 + v48[18]) = 0;
  sub_1A35A6350(v84, v20);
  *(v20 + 40) = sub_1A35A6624(v39, v74);
  sub_1A35B4214(v78, v20 + 168);
  *(v20 + 56) = v71;
  *(v20 + 64) = v41;
  *(v20 + 48) = 4;
  v56 = v69;
  sub_1A35B4270(v20, v69);
  __swift_destroy_boxed_opaque_existential_1(v84);
  OUTLINED_FUNCTION_7_12();
  sub_1A3619DDC(v20, v57);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v48);
  sub_1A361544C(v56);
  sub_1A35A6588(v56, &qword_1EB0EF8C0);
  if (qword_1ED81E670 != -1)
  {
    swift_once();
  }

  v58 = byte_1ED823310;
  v59 = objc_opt_self();
  v60 = &selRef_clearColor;
  if (!v58)
  {
    v60 = &selRef_systemBackgroundColor;
  }

  TipUIPopoverViewController.backgroundColor.setter([v59 *v60]);
  v61 = v73;
  sub_1A36171F0(v73);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1A35A6588(v61, &unk_1EB0EF890);
  (*(v67 + 8))(v66, v39);
  return v37;
}

uint64_t sub_1A3614D18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TipUIWrapperView();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_10_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1A3614ED8(&v13 - v7);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3))
  {
    result = sub_1A35A6588(v8, &qword_1EB0EF8C0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_1A35B4270(v8, v1);
    sub_1A35A6588(v8, &qword_1EB0EF8C0);
    v10 = OUTLINED_FUNCTION_11();
    sub_1A35A6350(v10, v11);
    OUTLINED_FUNCTION_7_12();
    return sub_1A3619DDC(v1, v12);
  }

  return result;
}

id TipUIPopoverViewController.sourceItem.getter()
{
  v0 = TipUIPopoverViewController.popoverPresentationController.getter();
  v1 = [v0 sourceItem];

  return v1;
}

uint64_t TipUIPopoverViewController.sourceItem.setter(uint64_t a1)
{
  v2 = TipUIPopoverViewController.popoverPresentationController.getter();
  [v2 setSourceItem_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3614ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView);
  if (v3)
  {
    v4 = v3;
    sub_1A3621A0C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for TipUIWrapperView();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id sub_1A3614F50()
{
  result = [v0 presentationController];
  if (result)
  {
    v2 = result;
    v3 = [result presentedView];

    if (v3)
    {
      [v3 bounds];
      v5 = v4;

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3614FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7[-v1 - 8];
  sub_1A3614ED8(&v7[-v1 - 8]);
  v3 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    sub_1A35A6588(v2, &qword_1EB0EF8C0);
    return 0;
  }

  else
  {
    sub_1A35B2260((v2 + 168), v7);
    sub_1A35A6588(v2, &qword_1EB0EF8C0);
    v4 = v8;
    sub_1A35B22BC(v7);
  }

  return v4;
}

uint64_t sub_1A36150F0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10 - 8];
  sub_1A3614ED8(&v16[-v10 - 8]);
  v12 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    sub_1A35ABFF4(v11, v8, &qword_1EB0EF8C0);
    sub_1A361544C(v8);
    sub_1A35A6588(v8, &qword_1EB0EF8C0);
  }

  else
  {
    v16[0] = 4;
    v17 = a1;
    v18 = a2;
    v19 = a3 & 1;
    v13 = sub_1A35B37E0();
    v20 = &type metadata for AnyTip;
    v21 = v13;
    swift_unknownObjectWeakInit();
    sub_1A35B4214(v16, (v11 + 168));
    sub_1A361544C(v11);
  }

  return sub_1A35A6588(v11, &qword_1EB0EF8C0);
}

id TipUIPopoverViewController.popoverPresentationController.getter()
{
  ObjectType = swift_getObjectType();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v9, sel_popoverPresentationController);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  if ([v2 delegate])
  {

    swift_unknownObjectRelease();
LABEL_4:
    v8.receiver = v0;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel_popoverPresentationController);
  }

  swift_getKeyPath();
  v6 = *&v0[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_delegate];
  v5 = v6;
  sub_1A362154C();

  swift_getKeyPath();
  sub_1A362154C();

  swift_getKeyPath();
  sub_1A361E27C();
  sub_1A362154C();

  swift_getKeyPath();
  sub_1A362154C();

  return v6;
}

id sub_1A361544C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TipUIWrapperView();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  sub_1A35ABFF4(a1, v6, &qword_1EB0EF8C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1A35A6588(v6, &qword_1EB0EF8C0);
  }

  sub_1A3619D7C(v6, v12, type metadata accessor for TipUIWrapperView);
  *(v12 + 20) = 0;
  v14 = sub_1A3614F50();
  v16 = v15;
  v18 = v17;
  sub_1A35B22BC((v12 + 168));
  v12[168] = 4;
  *(v12 + 22) = v14;
  *(v12 + 23) = v16;
  v12[192] = v18 & 1;
  v19 = sub_1A35B37E0();
  *(v12 + 25) = &type metadata for AnyTip;
  *(v12 + 26) = v19;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView;
  v21 = *&v2[OBJC_IVAR____TtC6TipKit26TipUIPopoverViewController_hostingView];
  if (v21)
  {
    [v21 removeFromSuperview];
  }

  sub_1A35B4270(v12, v10);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8D0));
  v23 = sub_1A36219FC();
  v24 = *&v2[v20];
  *&v2[v20] = v23;

  v25 = *&v2[v20];
  if (v25)
  {
    [v25 setTranslatesAutoresizingMaskIntoConstraints_];
    v26 = *&v2[v20];
    if (v26)
    {
      v27 = v26;
      result = [v2 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v28 = result;
      sub_1A35B474C(v26);
    }
  }

  return sub_1A3619DDC(v12, type metadata accessor for TipUIWrapperView);
}

uint64_t TipUIPopoverViewController.backgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_8(v3, v8);
  v4 = type metadata accessor for TipUIWrapperView();
  v5 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) || !*(v0 + *(v4 + 72)))
  {
    sub_1A35A6588(v0, &qword_1EB0EF8C0);
    return 0;
  }

  else
  {

    sub_1A35A6588(v0, &qword_1EB0EF8C0);
    sub_1A35CDC10(0, &qword_1ED81F4C0);
    return sub_1A362309C();
  }
}

uint64_t sub_1A36157C4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return TipUIPopoverViewController.backgroundColor.setter(v1);
}

uint64_t TipUIPopoverViewController.backgroundColor.setter(id a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  v7 = MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_17(v7, v8, v9, v10, v11, v12, v13, v14, v25);
  v15 = type metadata accessor for TipUIWrapperView();
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A361544C(v2);

    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    if (a1)
    {
      a1 = a1;
      v23 = sub_1A362268C();
      *(v1 + *(v15 + 72)) = v23;

      v27 = MEMORY[0x1E69815C0];
      v28 = MEMORY[0x1E6981568];
      *&v26 = v23;
      __swift_destroy_boxed_opaque_existential_1(v1 + 112);
      sub_1A35A63BC(&v26, v1 + 112);
      *(v1 + 152) = 1;
    }

    else
    {
      *(v1 + *(v15 + 72)) = 0;
    }

    sub_1A361544C(v1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

uint64_t TipUIPopoverViewController.backgroundColor.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TipUIPopoverViewController.backgroundColor.getter();
  return OUTLINED_FUNCTION_18();
}

void sub_1A36159A8(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    TipUIPopoverViewController.backgroundColor.setter(v2);
  }

  else
  {
    TipUIPopoverViewController.backgroundColor.setter(*a1);
  }
}

uint64_t TipUIPopoverViewController.backgroundStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TipViewEnvironment();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_10_10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  sub_1A3614ED8(v11 - v7);
  v9 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    sub_1A35A6588(v8, &qword_1EB0EF8C0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    sub_1A35ADD70(v1);
    sub_1A35ABFF4(v1 + *(v3 + 32), v11, &qword_1EB0EED38);
    sub_1A3619DDC(v1, type metadata accessor for TipViewEnvironment);
    result = sub_1A35A63BC(v11, a1);
    if (*(&v13 + 1))
    {
      return sub_1A35A6588(&v12, &unk_1EB0EF950);
    }
  }

  else
  {
    sub_1A35A6350((v8 + 112), &v12);
    sub_1A35A6588(v8, &qword_1EB0EF8C0);
    return sub_1A35A63BC(&v12, a1);
  }

  return result;
}

uint64_t TipUIPopoverViewController.backgroundStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_17(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  type metadata accessor for TipUIWrapperView();
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A361544C(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + 112), a1);
    *(v1 + 152) = 1;
    sub_1A361544C(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUIPopoverViewController.backgroundStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIPopoverViewController.backgroundStyle.getter(v1);
  return sub_1A3615D18;
}

double TipUIPopoverViewController.imageSize.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_8(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0.0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 224);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t TipUIPopoverViewController.imageSize.setter(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v17 - v9);
  sub_1A3614ED8(&v17 - v9);
  type metadata accessor for TipUIWrapperView();
  v11 = OUTLINED_FUNCTION_10();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13))
  {
    sub_1A35ABFF4(v10, v7, &qword_1EB0EF8C0);
    sub_1A361544C(v7);
    v14 = OUTLINED_FUNCTION_3_1();
    sub_1A35A6588(v14, v15);
  }

  else
  {
    v10[28] = a1;
    v10[29] = a2;
    *(v10 + 240) = 1;
    sub_1A361544C(v10);
  }

  return sub_1A35A6588(v10, &qword_1EB0EF8C0);
}

uint64_t TipUIPopoverViewController.imageSize.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = TipUIPopoverViewController.imageSize.getter();
  *(a1 + 8) = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t TipUIPopoverViewController.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_10();
  sub_1A3614ED8(v1);
  type metadata accessor for TipUIWrapperView();
  v5 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v5, v6, v7))
  {
    result = sub_1A35A6588(v1, &qword_1EB0EF8C0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    sub_1A35ABFF4(v1 + 248, a1, &unk_1EB0EF950);
    return sub_1A35A6588(v1, &qword_1EB0EF8C0);
  }

  return result;
}

uint64_t TipUIPopoverViewController.imageStyle.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_17(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  type metadata accessor for TipUIWrapperView();
  v15 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A361544C(v2);
    sub_1A35A6588(a1, &unk_1EB0EF950);
    v21 = OUTLINED_FUNCTION_4_16();
  }

  else
  {
    sub_1A36107DC(a1, v1 + 248);
    sub_1A361544C(v1);
    v22 = &unk_1EB0EF950;
    v21 = a1;
  }

  sub_1A35A6588(v21, v22);
  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUIPopoverViewController.imageStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIPopoverViewController.imageStyle.getter(v1);
  return sub_1A361624C;
}

void sub_1A361624C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A35ABFF4(*a1, v2 + 40, &unk_1EB0EF950);
    TipUIPopoverViewController.imageStyle.setter(v2 + 40);
    sub_1A35A6588(v2, &unk_1EB0EF950);
  }

  else
  {
    TipUIPopoverViewController.imageStyle.setter(*a1);
  }

  free(v2);
}

uint64_t TipUIPopoverViewController.viewStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_10();
  sub_1A3614ED8(v1);
  v5 = type metadata accessor for TipUIWrapperView();
  v6 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v6, v7, v5))
  {
    sub_1A35A6588(v1, &qword_1EB0EF8C0);
    a1[3] = type metadata accessor for MiniTipViewStyle();
    a1[4] = sub_1A35ADEFC();
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_1A362178C();
    v8 = OUTLINED_FUNCTION_10();
    return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  }

  else
  {
    sub_1A35A6350(v1 + *(v5 + 68), v12);
    sub_1A35A6588(v1, &qword_1EB0EF8C0);
    return sub_1A35A63BC(v12, a1);
  }
}

uint64_t TipUIPopoverViewController.viewStyle.setter(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_0_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_17(v7, v8, v9, v10, v11, v12, v13, v14, v24);
  v15 = type metadata accessor for TipUIWrapperView();
  v16 = OUTLINED_FUNCTION_14_0();
  if (__swift_getEnumTagSinglePayload(v16, v17, v15))
  {
    v18 = OUTLINED_FUNCTION_3_1();
    sub_1A35ABFF4(v18, v19, v20);
    sub_1A361544C(v2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = OUTLINED_FUNCTION_4_16();
    sub_1A35A6588(v21, v22);
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1((v1 + *(v15 + 68)), a1);
    sub_1A361544C(v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return sub_1A35A6588(v1, &qword_1EB0EF8C0);
}

void (*TipUIPopoverViewController.viewStyle.modify())(uint64_t *a1, char a2)
{
  v0 = __swift_coroFrameAllocStub(0x58uLL);
  OUTLINED_FUNCTION_11_0(v0);
  TipUIPopoverViewController.viewStyle.getter(v1);
  return sub_1A36165A4;
}

void sub_1A36165BC(uint64_t *a1, char a2, void (*a3)(char *))
{
  v4 = *a1;
  if (a2)
  {
    sub_1A35A6350(*a1, (v4 + 40));
    a3(v4 + 40);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

uint64_t TipUIPopoverViewController.presentationDelegate.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t TipUIPopoverViewController.presentationDelegate.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TipUIPopoverViewController.presentationDelegate.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A3616718(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return TipUIPopoverViewController.presentationDelegate.setter();
  }

  swift_unknownObjectRetain();
  TipUIPopoverViewController.presentationDelegate.setter();

  return swift_unknownObjectRelease();
}

uint64_t TipUIPopoverViewController.sourceItem.modify(void *a1)
{
  a1[1] = v1;
  v3 = TipUIPopoverViewController.popoverPresentationController.getter();
  v4 = [v3 sourceItem];

  *a1 = v4;
  return OUTLINED_FUNCTION_18();
}

void sub_1A3616808(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    v3 = TipUIPopoverViewController.popoverPresentationController.getter();
    [v3 setSourceItem_];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = TipUIPopoverViewController.popoverPresentationController.getter();
    [v3 setSourceItem_];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1A3616894@<X0>(uint64_t (**a1)()@<X8>)
{
  result = TipUIPopoverViewController.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A35EEDFC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A3616904(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A361245C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUIPopoverViewController.closeHandler.setter(v4, v3);
}

uint64_t TipUIPopoverViewController.dismissalHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUIPopoverViewController.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A36169F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_8(v3, v9);
  type metadata accessor for TipUIWrapperView();
  v4 = OUTLINED_FUNCTION_10();
  v7 = 0;
  if (!__swift_getEnumTagSinglePayload(v4, v5, v6))
  {
    v7 = *(v0 + 72);
    sub_1A35B5EA0(v7);
  }

  sub_1A35A6588(v0, &qword_1EB0EF8C0);
  return v7;
}

uint64_t sub_1A3616AA8@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = TipUIPopoverViewController.closeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A35EED9C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A3616B18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A35EEDA4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A35B5EA0(v1);
  return TipUIPopoverViewController.closeHandler.setter(v4, v3);
}

uint64_t sub_1A3616BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  sub_1A3614ED8(&v20 - v9);
  v11 = type metadata accessor for TipUIWrapperView();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    v12 = OUTLINED_FUNCTION_4_16();
    sub_1A35ABFF4(v12, v13, v14);
    sub_1A361544C(v7);
    v15 = OUTLINED_FUNCTION_11();
    sub_1A35BBDF4(v15);
    sub_1A35A6588(v7, &qword_1EB0EF8C0);
  }

  else
  {
    v16 = *(v10 + 9);
    *(v10 + 9) = a1;
    *(v10 + 10) = a2;
    v17 = OUTLINED_FUNCTION_11();
    sub_1A35B5EA0(v17);
    sub_1A35BBDF4(v16);
    sub_1A361544C(v10);
    v18 = OUTLINED_FUNCTION_11();
    sub_1A35BBDF4(v18);
  }

  return sub_1A35A6588(v10, &qword_1EB0EF8C0);
}

uint64_t TipUIPopoverViewController.closeHandler.modify(void *a1)
{
  a1[2] = v1;
  *a1 = TipUIPopoverViewController.closeHandler.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1A3616D5C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_8_15();
    sub_1A35B5EA0(v4);
    v5 = OUTLINED_FUNCTION_8_15();
    a3(v5);
    v6 = OUTLINED_FUNCTION_8_15();

    return sub_1A35BBDF4(v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_8_15();
    return (a3)(v8);
  }
}

id sub_1A3616E88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

char *TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF890);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v22 - v10);
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = _s17PopoverAttributesVMa();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  v20 = sub_1A3614684(v17, 0, a2, v11, a3, a4, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

char *TipUIPopoverViewController.__allocating_init<A>(_:sourceItem:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF890);
  OUTLINED_FUNCTION_14(v12);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v26 - v14);
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  (*(v16 + 16))(v19 - v18, a1, a5);
  v21 = _s17PopoverAttributesVMa();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = sub_1A3614684(v20, 0, a2, v15, a3, a4, a5, a6);
  v23 = OUTLINED_FUNCTION_11();
  v24(v23);
  return v22;
}

uint64_t sub_1A36171F0(int *a1)
{
  v83 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EF8C0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v79 = &v68 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v78 = &v68 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v77 = &v68 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v68 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EEA48);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v68 - v17;
  v72 = sub_1A362178C();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF9C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v68 - v20;
  v22 = type metadata accessor for MiniTipViewStyle();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1A3621A4C();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0EF890);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v68 - v28;
  v30 = _s17PopoverAttributesVMa();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A35ABFF4(v83, v29, &unk_1EB0EF890);
  v83 = v30;
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    v33 = &unk_1EB0EF890;
    v34 = v29;
  }

  else
  {
    sub_1A3619D7C(v29, v32, _s17PopoverAttributesVMa);
    v35 = TipUIPopoverViewController.popoverPresentationController.getter();
    v80 = v32;
    v36 = v73;
    if (v35)
    {
      v37 = v35;
      v68 = v4;
      v38 = v74;
      v39 = v76;
      (*(v74 + 104))(v26, *MEMORY[0x1E697E7D8], v76);
      v40 = sub_1A3621A3C();
      (*(v38 + 8))(v26, v39);
      if (v40)
      {
        sub_1A35D25B8(v32[16]);
      }

      [v37 setPermittedArrowDirections_];

      v32 = v80;
      v4 = v68;
    }

    v41 = v83[12];
    sub_1A35A6350(&v32[v41], v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0EED98);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
      sub_1A3619D7C(v21, v24, type metadata accessor for MiniTipViewStyle);
      v42 = v71;
      sub_1A35ABFF4(v24, v71, &qword_1EB0EEA48);
      v43 = v72;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v72);
      v45 = v81;
      if (EnumTagSinglePayload == 1)
      {
        sub_1A3619DDC(v24, type metadata accessor for MiniTipViewStyle);
        sub_1A35A6588(v42, &qword_1EB0EEA48);
      }

      else
      {
        v48 = v69;
        v47 = v70;
        (*(v70 + 32))(v69, v42, v43);
        [v45 setOverrideUserInterfaceStyle_];
        (*(v47 + 8))(v48, v43);
        sub_1A3619DDC(v24, type metadata accessor for MiniTipViewStyle);
      }

      v46 = v77;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
      sub_1A35A6588(v21, &unk_1EB0EF9C0);
      v46 = v77;
    }

    v49 = v75;
    sub_1A3614ED8(v36);
    v50 = type metadata accessor for TipUIWrapperView();
    if (__swift_getEnumTagSinglePayload(v36, 1, v50))
    {
      sub_1A35ABFF4(v36, v4, &qword_1EB0EF8C0);
      sub_1A361544C(v4);
      sub_1A35A6588(v4, &qword_1EB0EF8C0);
    }

    else
    {
      __swift_assign_boxed_opaque_existential_1((v36 + 112), &v80[v83[7]]);
      *(v36 + 152) = 1;
      sub_1A361544C(v36);
    }

    v51 = v78;
    sub_1A35A6588(v36, &qword_1EB0EF8C0);
    v52 = v82;
    sub_1A3614ED8(v82);
    if (__swift_getEnumTagSinglePayload(v52, 1, v50))
    {
      sub_1A35ABFF4(v82, v4, &qword_1EB0EF8C0);
      sub_1A361544C(v4);
      v52 = v82;
      sub_1A35A6588(v4, &qword_1EB0EF8C0);
    }

    else
    {
      v53 = v83[11];
      v54 = &v80[v53 + *(type metadata accessor for TipViewEnvironment() + 52)];
      v55 = *v54;
      v56 = v54[1];
      v57 = *(v52 + 72);
      *(v52 + 72) = *v54;
      *(v52 + 80) = v56;
      sub_1A35B5EA0(v55);
      sub_1A35BBDF4(v57);
      sub_1A361544C(v52);
    }

    sub_1A35A6588(v52, &qword_1EB0EF8C0);
    sub_1A3614ED8(v49);
    if (__swift_getEnumTagSinglePayload(v49, 1, v50))
    {
      sub_1A35ABFF4(v49, v4, &qword_1EB0EF8C0);
      sub_1A361544C(v4);
      sub_1A35A6588(v4, &qword_1EB0EF8C0);
    }

    else
    {
      v58 = v83[11];
      v59 = &v80[v58 + *(type metadata accessor for TipViewEnvironment() + 40)];
      v60 = v59[16];
      *(v49 + 224) = *v59;
      *(v49 + 240) = v60;
      sub_1A361544C(v49);
    }

    sub_1A35A6588(v49, &qword_1EB0EF8C0);
    sub_1A3614ED8(v46);
    if (__swift_getEnumTagSinglePayload(v46, 1, v50))
    {
      sub_1A35ABFF4(v46, v4, &qword_1EB0EF8C0);
      sub_1A361544C(v4);
      sub_1A35A6588(v4, &qword_1EB0EF8C0);
      v61 = v80;
    }

    else
    {
      v62 = v83[11];
      v63 = type metadata accessor for TipViewEnvironment();
      v61 = v80;
      sub_1A36107DC(&v80[v62 + *(v63 + 44)], v46 + 248);
      sub_1A361544C(v46);
    }

    sub_1A35A6588(v46, &qword_1EB0EF8C0);
    sub_1A3614ED8(v51);
    if (__swift_getEnumTagSinglePayload(v51, 1, v50))
    {
      sub_1A35ABFF4(v51, v4, &qword_1EB0EF8C0);
      sub_1A361544C(v4);
      sub_1A35A6588(v4, &qword_1EB0EF8C0);
    }

    else
    {
      v64 = *(v50 + 60);
      sub_1A35A6588(v51 + v64, &qword_1EB0EF9D0);
      v65 = v76;
      (*(v74 + 16))(v51 + v64, v61 + v83[10], v76);
      __swift_storeEnumTagSinglePayload(v51 + v64, 0, 1, v65);
      sub_1A361544C(v51);
    }

    sub_1A35A6588(v51, &qword_1EB0EF8C0);
    v66 = v79;
    sub_1A3614ED8(v79);
    if (__swift_getEnumTagSinglePayload(v66, 1, v50))
    {
      sub_1A35ABFF4(v66, v4, &qword_1EB0EF8C0);
      sub_1A361544C(v4);
      sub_1A35A6588(v4, &qword_1EB0EF8C0);
    }

    else
    {
      __swift_assign_boxed_opaque_existential_1((v66 + *(v50 + 68)), (v61 + v41));
      sub_1A361544C(v66);
    }

    sub_1A3619DDC(v61, _s17PopoverAttributesVMa);
    v33 = &qword_1EB0EF8C0;
    v34 = v66;
  }

  return sub_1A35A6588(v34, v33);
}