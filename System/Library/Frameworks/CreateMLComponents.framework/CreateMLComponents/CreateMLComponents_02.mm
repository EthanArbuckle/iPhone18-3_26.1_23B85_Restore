uint64_t sub_237C83088(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v10 = a3[5];
    v8 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for ComposedTransformer();
    return (*(v10 + 32))(a1 + *(v9 + 52), a2, v8);
  }

  return result;
}

uint64_t sub_237C831FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a3;
  v47 = a2[5];
  v7 = a2[3];
  v39 = *(v47 + 8);
  v48 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v42 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v45 = &v35 - v13;
  v14 = a2[4];
  v15 = *(v14 + 8);
  v16 = a2[2];
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v41 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v26 = *(v14 + 40);
  v46 = a1;
  v44 = v4;
  v27 = v49;
  result = v26(a1, v16, v14);
  if (!v27)
  {
    v36 = v22;
    v37 = v16;
    v35 = v15;
    v49 = v17;
    v29 = v41;
    v30 = v42;
    v31 = AssociatedTypeWitness;
    v32 = v45;
    (*(v47 + 40))(v46, v48);
    v33 = v36;
    v34 = v49;
    (*(v29 + 32))(v36, v25, v49);
    (*(v38 + 32))(v30, v32, v31);
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_40_0();
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v33, v30, v34, v31, v40);
  }

  return result;
}

uint64_t sub_237C83510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = swift_task_alloc();
  *(v14 + 16) = v22;
  *v22 = v14;
  v22[1] = sub_237C6B728;

  return sub_237C82378(a1, a2, a3, a4, a7, a5, a6, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237C8361C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_237C6A904;

  return sub_237C817D8(a1, a2, a3, a4, a7, a5, a6, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t UpdatableEstimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_237C8375C(a1, a2, a3, a4, a5, sub_237C81540);
}

{
  return sub_237C8375C(a1, a2, a3, a4, a5, sub_237C81484);
}

uint64_t sub_237C8375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  OUTLINED_FUNCTION_1_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, v9);
  (*(v14 + 16))(v17, v12, v8);
  return a6(v20, v17, v9, v8, v7, v6);
}

uint64_t sub_237C838EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237C83AB4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_237C83D5C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_getWitnessTable();
}

uint64_t sub_237C83E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, v8);
  return SlidingWindows.init(input:length:stride:)(v10, a1, a2, a3);
}

uint64_t SlidingWindows.init(input:length:stride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_237EF7E90();
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  (*(v11 + 16))(a4, a1, v8);
  v12 = type metadata accessor for SlidingWindows();
  *(a4 + *(v12 + 36)) = a2;
  *(a4 + *(v12 + 40)) = a3;
  if (a2 < 1 || a3 < 1)
  {
    v14 = 0xD000000000000024;
    v15 = 0x8000000237EFB710;
    v24 = 0x8000000237EFB740;
    v16 = 0xD000000000000027;
    v17 = 5;
LABEL_11:
    sub_237C84150();
    swift_allocError();
    *v22 = v14;
    *(v22 + 8) = v15;
    *(v22 + 16) = v16;
    *(v22 + 24) = v24;
    *(v22 + 32) = v17;
    swift_willThrow();
    v23 = *(v10 + 8);
    v23(a1, v8);
    return (v23)(a4, v8);
  }

  v18 = v12;
  v19 = *(sub_237EF7E20() + 16);

  result = sub_237EF7E20();
  v14 = result;
  if (v19 != 2)
  {
    v24 = 0;
    v16 = 0x8000000237EFB770;
    v15 = 0xD000000000000033;
    v17 = 6;
    goto LABEL_11;
  }

  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v21 = *(result + 40);

    result = (*(v10 + 8))(a1, v8);
    *(a4 + *(v18 + 44)) = v21;
  }

  return result;
}

unint64_t sub_237C84150()
{
  result = qword_280C8E2D8[0];
  if (!qword_280C8E2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C8E2D8);
  }

  return result;
}

uint64_t SlidingWindows.input.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237EF7E90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SlidingWindows.endIndex.getter(uint64_t a1)
{
  sub_237EF7E90();
  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(result + 32);

  v5 = *(v1 + *(a1 + 36));
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = __OFADD__(v7, 1);
  v8 = v7 + 1;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8 & ~(v8 >> 63);
  v10 = *(v1 + *(a1 + 40));
  v6 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12 != 0x8000000000000000 || v10 != -1)
  {
    return v12 / v10;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_237C842E0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall SlidingWindows.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall SlidingWindows.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall SlidingWindows.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t SlidingWindows.subscript.getter(uint64_t a1, int *a2)
{
  v3 = *(v2 + a2[10]);
  v4 = a1 * v3;
  if ((a1 * v3) >> 64 != (a1 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_237EF7E90();
  v6 = sub_237EF7E20();
  if (!*(v6 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v6 + 32);

  v8 = *(v2 + a2[9]);
  v9 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 < v11)
  {
    v12 = *(v2 + a2[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_237F04760;
    *(v13 + 32) = v8;
    *(v13 + 40) = v12;
    MEMORY[0x28223BE20](v13);
    return sub_237EF7DE0();
  }

LABEL_11:
  result = sub_237EF9740();
  __break(1u);
  return result;
}

uint64_t sub_237C844C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a5;
  v38 = sub_237EF7EE0();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v16 = &v35 - v15;
  v18 = *a1;
  v17 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
  v19 = swift_allocObject();
  v43 = xmmword_237F04760;
  *(v19 + 16) = xmmword_237F04760;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  v39 = a2;
  v20 = j_nullsub_1(v18, v17);
  v37 = v21;
  v23 = v22;
  v40 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38);
  result = swift_allocObject();
  *(result + 16) = v43;
  *&v43 = a3;
  v26 = __OFADD__(a6, a3);
  v27 = a6 + a3;
  if (v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v28 = result;
  v36 = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0);
  v28[7] = v29;
  result = sub_237C8548C();
  v28[8] = result;
  if (v27 < a6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28[4] = a6;
  v28[5] = v27;
  v28[12] = v29;
  v28[13] = result;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v28[9] = 0;
    v28[10] = a4;
    sub_237EF7E90();
    sub_237EF8260();
    swift_getWitnessTable();
    sub_237EF7FA0();

    MEMORY[0x28223BE20](v30);
    *(&v35 - 8) = a7;
    *(&v35 - 7) = a8;
    v32 = v36;
    v31 = v37;
    *(&v35 - 6) = v20;
    *(&v35 - 5) = v31;
    v33 = v40;
    *(&v35 - 4) = v32;
    *(&v35 - 3) = v33;
    *(&v35 - 2) = v43;
    *(&v35 - 1) = a4;
    v34 = v38;
    swift_getWitnessTable();
    sub_237D14E4C();

    return (*(v42 + 8))(v16, v34);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237C847C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a3;
  v15 = *(a11 - 8);
  v53 = a10;
  MEMORY[0x28223BE20](a1);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  v46 = v19;
  result = sub_237C60C7C(v18, v19);
  if (result)
  {
    result = sub_237EF9140();
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = sub_237EF8530();
    if (!result)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    if ((a9 * v53) >> 64 == (a9 * v53) >> 63)
    {
      return sub_237EF90B0();
    }

    goto LABEL_16;
  }

  if (a9 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v43 = v17;
  v51 = v15;
  v48 = a5;
  v44 = a11;
  v49 = a1;
  v50 = a2;
  v21 = v53;
  if (a9)
  {
    if (v53 < 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v22 = 0;
    v41 = a12;
    v55 = xmmword_237F04760;
    v42 = a9;
    v47 = v51 + 40;
    do
    {
      v54 = v22;
      v23 = v44;
      v24 = v46;
      v25 = v45;
      v26 = v41;
      v27 = v43;
      if (v21)
      {
        v28 = 0;
        do
        {
          v56 = v28 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410);
          v29 = v23;
          v30 = v27;
          inited = swift_initStackObject();
          *(inited + 16) = v55;
          v32 = v26;
          v33 = v25;
          v34 = v24;
          v35 = v54;
          *(inited + 32) = v54;
          *(inited + 40) = v28;
          v36 = swift_initStackObject();
          *(v36 + 16) = v55;
          *(v36 + 32) = v35;
          *(v36 + 40) = v28;
          v24 = v34;
          v25 = v33;
          v26 = v32;
          sub_237D16AC4();
          swift_setDeallocating();
          v37 = sub_237D166DC(inited, v52);
          v38 = v51;
          swift_setDeallocating();
          v39 = v48 + *(v38 + 72) * v37;
          v27 = v30;
          v23 = v29;
          result = (*(v38 + 40))(v39, v30, v29);
          v21 = v53;
          v28 = v56;
        }

        while (v53 != v56);
      }

      v22 = v54 + 1;
    }

    while (v54 + 1 != v42);
  }

  return result;
}

uint64_t SlidingWindows.subscript.getter()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  v7 = v2;
  v8 = v1;
  swift_getWitnessTable();
  return sub_237EFA0B0();
}

Swift::Int sub_237C84BE4@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = SlidingWindows.index(before:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237C84C10(Swift::Int *a1)
{
  result = SlidingWindows.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237C84C3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SlidingWindows.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_237C84C64())(void *a1)
{
  OUTLINED_FUNCTION_1_6();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_237C84D18();
  return sub_237C84CD0;
}

void sub_237C84CD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_237C84D18())(void *a1)
{
  OUTLINED_FUNCTION_1_6();
  v3 = sub_237EF7E90();
  *v2 = v3;
  v4 = *(v3 - 8);
  v2[1] = v4;
  v2[2] = __swift_coroFrameAllocStub(*(v4 + 64));
  SlidingWindows.subscript.getter(v1, v0);
  return sub_237C84DD4;
}

void sub_237C84DD4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_237C84E30()
{
  swift_getWitnessTable();

  return sub_237EF8D70();
}

Swift::Int sub_237C84EB0@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = SlidingWindows.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_237C84EDC(Swift::Int *a1)
{
  result = SlidingWindows.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237C84F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_237EF9680() + 36);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = 0;
  return result;
}

uint64_t sub_237C84FE8()
{
  swift_getWitnessTable();

  return sub_237EF8E20();
}

uint64_t sub_237C8503C()
{
  swift_getWitnessTable();

  return sub_237EF8E60();
}

unint64_t sub_237C850B8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_237C850D8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_237C85170()
{
  result = qword_280C8E208;
  if (!qword_280C8E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C8E208);
  }

  return result;
}

uint64_t sub_237C85338(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEADDA0);
    sub_237C85170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237C853E8()
{
  result = sub_237EF7E90();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_237C8548C()
{
  result = qword_27DEADE40;
  if (!qword_27DEADE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEADDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEADE40);
  }

  return result;
}

uint64_t sub_237C85568@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v42 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v35 - v24;
  v26 = *(type metadata accessor for DenseLayerStorage() + 20);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v41 = v26;
  v38 = v27;
  __swift_storeEnumTagSinglePayload(a3 + v26, 1, 1, v27);
  v28 = *(v20 + 16);
  v45 = a1;
  v37 = v28;
  v28(v25, a1, v18);
  sub_237EF6A30();
  sub_237EF6440();
  v29 = *(v14 + 8);
  v39 = v14 + 8;
  v40 = v12;
  v36 = v29;
  v29(v17, v12);
  v47 = v25;
  v44 = a3;
  sub_237EF7DE0();
  v30 = *(v20 + 8);
  v30(v25, v18);
  sub_237C86174(v46, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
  {
    sub_237C863A0(v46, &qword_27DEAD2C0);
    v30(v45, v18);
    return sub_237C863A0(v11, &qword_27DEAD2C0);
  }

  else
  {
    v32 = v42;
    (*(v20 + 32))(v42, v11, v18);
    v37(v25, v32, v18);
    sub_237EF6A30();
    sub_237EF6440();
    v33 = v36(v17, v40);
    MEMORY[0x28223BE20](v33);
    *(&v35 - 2) = v25;
    v34 = v43;
    sub_237EF7DE0();
    v30(v25, v18);
    sub_237C863A0(v46, &qword_27DEAD2C0);
    v30(v45, v18);
    v30(v32, v18);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v38);
    return sub_237C6FC94(v34, v44 + v41);
  }
}

uint64_t type metadata accessor for DenseLayerStorage()
{
  result = qword_27DEADE48;
  if (!qword_27DEADE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237C85A40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000)
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

uint64_t sub_237C85B04(char a1)
{
  if (a1)
  {
    return 1935763810;
  }

  else
  {
    return 0x746867696577;
  }
}

uint64_t sub_237C85B30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE68);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C8634C();
  sub_237EFA1B0();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  sub_237C86400(&qword_27DEADE78);
  OUTLINED_FUNCTION_2_7();
  sub_237EF9A70();
  if (!v1)
  {
    type metadata accessor for DenseLayerStorage();
    v10[14] = 1;
    OUTLINED_FUNCTION_2_7();
    sub_237EF9A00();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237C85CC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v24 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v26 = &v23 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE80);
  OUTLINED_FUNCTION_1();
  v25 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for DenseLayerStorage();
  v16 = OUTLINED_FUNCTION_18(v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 28);
  __swift_storeEnumTagSinglePayload(&v19[v20], 1, 1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C8634C();
  v21 = v28;
  sub_237EFA190();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237C863A0(&v19[v20], &qword_27DEAD600);
  }

  else
  {
    v28 = v6;
    v30 = 0;
    sub_237C86400(&qword_27DEADE88);
    OUTLINED_FUNCTION_4_6();
    sub_237EF9970();
    (*(v24 + 32))(v19, v26, v7);
    v29 = 1;
    OUTLINED_FUNCTION_4_6();
    sub_237EF9900();
    (*(v25 + 8))(v14, v27);
    sub_237C6FC94(v28, &v19[v20]);
    sub_237C8646C(v19, v23);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237C864D0(v19);
  }
}

uint64_t sub_237C86030()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

uint64_t sub_237C8607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C85A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C860A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C787C4();
  *a1 = result;
  return result;
}

uint64_t sub_237C860CC(uint64_t a1)
{
  v2 = sub_237C8634C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237C86108(uint64_t a1)
{
  v2 = sub_237C8634C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237C86174(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237C8620C()
{
  sub_237C86290();
  if (v0 <= 0x3F)
  {
    sub_237C862E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237C86290()
{
  if (!qword_27DEADE58)
  {
    v0 = sub_237EF7E90();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEADE58);
    }
  }
}

void sub_237C862E8()
{
  if (!qword_27DEADE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD6A0);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEADE60);
    }
  }
}

unint64_t sub_237C8634C()
{
  result = qword_27DEADE70;
  if (!qword_27DEADE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEADE70);
  }

  return result;
}

uint64_t sub_237C863A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237C86400(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD6A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237C8646C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DenseLayerStorage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237C864D0(uint64_t a1)
{
  v2 = type metadata accessor for DenseLayerStorage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DenseLayerStorage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237C8660C()
{
  result = qword_27DEADE90;
  if (!qword_27DEADE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEADE90);
  }

  return result;
}

unint64_t sub_237C86664()
{
  result = qword_27DEADE98;
  if (!qword_27DEADE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEADE98);
  }

  return result;
}

unint64_t sub_237C866BC()
{
  result = qword_27DEADEA0;
  if (!qword_27DEADEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEADEA0);
  }

  return result;
}

void sub_237C8673C()
{
  OUTLINED_FUNCTION_37_0();
  v42 = v1;
  v43 = v0;
  v44 = v2;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v39 = v8;
  v9 = *(v7 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  v10 = sub_237EF62C0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = *(v9 + 32);
  v40 = v9;
  v41 = v6;
  v37 = v20;
  v20(v4, v9);
  v21 = sub_237EF62B0();
  v23 = v22;
  v24 = *(v12 + 8);
  v24(v19, v10);
  (*(*(v42 + 8) + 32))(v44);
  v25 = sub_237EF62B0();
  v27 = v26;
  v24(v16, v10);
  if (v21 == v25 && v23 == v27)
  {
    goto LABEL_7;
  }

  v29 = sub_237EF9D40();

  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_7:
  }

  v30 = v44;
  v45 = v4;
  v46 = v44;
  v47 = v38;
  v48 = v42;
  OUTLINED_FUNCTION_30_4();
  v31 = type metadata accessor for ComposedUpdatableSupervisedTabularEstimator();
  v32 = *(v4 - 8);
  v33 = v39;
  v34 = v41;
  (*(v32 + 16))(v39 + *(v31 + 52), v41, v4);
  v35 = *(v30 - 8);
  v36 = v43;
  (*(v35 + 16))(v33 + *(v31 + 56), v43, v30);
  v37(v4, v40);
  (*(v35 + 8))(v36, v30);
  (*(v32 + 8))(v34, v4);
  OUTLINED_FUNCTION_38_0();
}

void sub_237C86A2C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v2 = *(v0 + 40);
  v16 = *(v2 + 8);
  v17 = v3;
  v14 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = *(v1 + 32);
  v8 = *(v1 + 16);
  v9 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  (*(v7 + 16))(v8, v7);
  (*(v2 + 16))(v14, v2);
  swift_getAssociatedConformanceWitness();
  v13 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v12, v6, v9, v13, v17);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237C86BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v17 = v16;
  v15[7] = v16;
  v15[8] = v14;
  v15[5] = v18;
  v15[6] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v15[2] = v22;
  v15[9] = *(*(v16 + 40) + 8);
  v15[10] = *(v16 + 24);
  v15[11] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[12] = v23;
  v15[13] = swift_task_alloc();
  v15[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  v15[15] = swift_task_alloc();
  v15[16] = swift_task_alloc();
  v15[17] = swift_task_alloc();
  v15[18] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v15[19] = v24;
  v15[20] = swift_task_alloc();
  v15[21] = swift_task_alloc();
  v25 = *(*(v17 + 32) + 8);
  v15[22] = v25;
  v15[23] = *(v17 + 16);
  v15[24] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v15[25] = v26;
  v15[26] = swift_task_alloc();
  v15[27] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v40 = v27 + *v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v15[28] = v28;
  *v28 = v29;
  v28[1] = sub_237C86EF8;
  OUTLINED_FUNCTION_18_3();

  return v37(v30, v31, v32, v33, v34, v35, v36, v37, a9, v25 + 56, v40, a12, a13, a14);
}

uint64_t sub_237C86EF8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C86FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = v14[29];
  sub_237EF8B90();
  if (v15)
  {
    (*(v14[25] + 8))(v14[27], v14[24]);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_18_3();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[30] = AssociatedConformanceWitness;
    v26 = *(AssociatedConformanceWitness + 8);
    v14[31] = v26;
    v27 = *(v26 + 24);
    v14[32] = v27;
    v14[33] = (v26 + 24) & 0xFFFFFFFFFFFFLL | 0x19C4000000000000;
    v39 = v27 + *v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[34] = v28;
    *v28 = v29;
    v28[1] = sub_237C871E0;
    OUTLINED_FUNCTION_18_3();

    return v36(v30, v31, v32, v33, v34, v35, v36, v37, v26 + 24, v39, a11, a12, a13, a14);
  }
}

uint64_t sub_237C871E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C872D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v18 = v14[18];
  v19 = v14[16];
  sub_237C89E7C(v14[4], v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v18) != 1)
  {
    v34 = v14[32];
    (*(v14[19] + 32))(v14[20], v14[16], v14[18]);
    v50 = v34 + *v34;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[36] = v35;
    *v35 = v36;
    v35[1] = sub_237C875B8;
    OUTLINED_FUNCTION_18_3();

    return v44(v37, v38, v39, v40, v41, v42, v43, v44, a9, v50, a11, a12, a13, a14);
  }

  v20 = v14[17];
  v21 = v14[18];
  sub_237C89EEC(v14[16]);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  v22 = v14[35];
  sub_237EF8B90();
  if (!v22)
  {
    a9 = v14[9] + 56;
    OUTLINED_FUNCTION_15_0();
    v50 = v46 + *v46;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[38] = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_6_5(v47);
    OUTLINED_FUNCTION_18_3();

    return v44(v37, v38, v39, v40, v41, v42, v43, v44, a9, v50, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_29_3();
  (*(v17 + 8))(v15, v16);
  v23 = OUTLINED_FUNCTION_31_0();
  v24(v23);
  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_18_3();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_237C875B8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C876B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v18 = v14[17];
  v19 = v14[18];
  v20 = v14[15];
  (*(v14[19] + 8))(v14[20], v19);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v19);
  sub_237C89F54(v20, v18);
  v21 = v14[37];
  sub_237EF8B90();
  if (v21)
  {
    OUTLINED_FUNCTION_29_3();
    (*(v17 + 8))(v15, v16);
    v22 = OUTLINED_FUNCTION_31_0();
    v23(v22);
    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_18_3();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v45 = v14[9] + 56;
    OUTLINED_FUNCTION_15_0();
    v46 = v33 + *v33;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[38] = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_6_5(v34);
    OUTLINED_FUNCTION_18_3();

    return v43(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, a11, a12, a13, a14);
  }
}

uint64_t sub_237C87890()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C87988()
{
  v1 = v0[26];
  v13 = v0[27];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[13];
  v7 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v12 = v0[24];
  v14 = v0[2];
  sub_237C89EEC(v0[17]);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 32))(v1, v13, v12);
  (*(v8 + 32))(v6, v7, v9);
  swift_getAssociatedConformanceWitness();
  ComposedTabularTransformer.init(_:_:)(v1, v6, v12, v9, v14);

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_237C87B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_237C87BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  (*(v12[25] + 8))(v12[27], v12[24]);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_237C87C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[21];
  v14 = v12[18];
  v15 = *(v12[19] + 8);
  v15(v12[20], v14);
  v15(v13, v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237C87D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = v12[21];
  v14 = v12[18];
  v15 = v12[19];
  sub_237C89EEC(v12[17]);
  (*(v15 + 8))(v13, v14);
  v16 = OUTLINED_FUNCTION_31_0();
  v17(v16);
  OUTLINED_FUNCTION_7_5();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_237C87E50()
{
  OUTLINED_FUNCTION_26_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v6;
  v1[9] = v4;
  v1[6] = v10;
  v1[7] = v8;
  v1[12] = sub_237EF61A0();
  OUTLINED_FUNCTION_15_0();
  v1[13] = v12;
  v1[14] = swift_task_alloc();
  v13 = *(v3 + 32);
  v1[15] = v13;
  v14 = *(v3 + 16);
  v1[16] = v14;
  OUTLINED_FUNCTION_15_0();
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v1[17] = v16;
  *v16 = v1;
  v16[1] = sub_237C88010;

  return v18(v11, v9, v7, v5, v14, v13);
}

uint64_t sub_237C88010()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_237C88150()
{
  v1 = v0[18];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_8_4();

    return v2();
  }

  else
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[19] = AssociatedConformanceWitness;
    v5 = *(AssociatedConformanceWitness + 8);
    v6 = *(v5 + 24);
    v7 = swift_checkMetadataState();
    v0[20] = v7;
    v14 = (v6 + *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[21] = v8;
    *v8 = v9;
    v8[1] = sub_237C88328;
    v10 = v0[14];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];

    return v14(v10, v13, v11, v12, v7, v5);
  }
}

uint64_t sub_237C88328()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C88420()
{
  v1 = v0[22];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    OUTLINED_FUNCTION_8_4();

    return v2();
  }

  else
  {
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[10];
    v7 = v0[6];
    v8 = *(v6 + 40);
    v9 = *(v6 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[2] = v5;
    v0[3] = AssociatedTypeWitness;
    v0[4] = v4;
    v0[5] = AssociatedConformanceWitness;
    v12 = *(type metadata accessor for ComposedTabularTransformer() + 52);
    OUTLINED_FUNCTION_15_0();
    v19 = (v13 + *v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[23] = v14;
    *v14 = v15;
    v14[1] = sub_237C88640;
    v16 = v0[14];
    v17 = v0[8];
    v18 = v0[9];

    return v19(v7 + v12, v16, v17, v18, v9, v8);
  }
}

uint64_t sub_237C88640()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237C88738()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C887B0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C8880C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C88880(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(*(a3[4] + 8) + 64))(a1, a2, a3[2], *(a3[4] + 8));
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v8 = *(a3[5] + 8);
    v9 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTabularTransformer();
    return (*(v8 + 64))(a1 + *(v10 + 52), a2, v9, v8);
  }

  return result;
}

uint64_t sub_237C88A00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = *(a2[5] + 8);
  v39 = a2[3];
  v40 = v6;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v35 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v37 = &v31 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v36 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  v24 = *(v13 + 72);
  v38 = v3;
  v25 = v41;
  result = v24(a1, v14, v13);
  if (!v25)
  {
    v41 = v20;
    v27 = v35;
    v28 = v37;
    (*(v40 + 72))(a1, v39);
    v29 = v41;
    (*(v36 + 32))(v41, v23, AssociatedTypeWitness);
    v30 = v32;
    (*(v33 + 32))(v27, v28, v32);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v29, v27, AssociatedTypeWitness, v30, v34);
  }

  return result;
}

uint64_t sub_237C88CF4(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(a3[4] + 32))(a1, a2, a3[2], a3[4]);
  if (!v3)
  {
    swift_getAssociatedTypeWitness();
    v10 = a3[5];
    v9 = a3[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v8 = type metadata accessor for ComposedTabularTransformer();
    return (*(v10 + 32))(a1 + *(v8 + 52), a2, v9);
  }

  return result;
}

uint64_t sub_237C88E74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v41 = a2[5];
  v6 = a2[3];
  v32[1] = *(v41 + 8);
  v42 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26();
  v36 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v38 = v32 - v12;
  v13 = a2[4];
  v14 = *(v13 + 8);
  v15 = a2[2];
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v35 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  v25 = *(v13 + 40);
  v39 = a1;
  v40 = v3;
  v26 = v43;
  result = v25(a1, v15, v13);
  if (!v26)
  {
    v43 = v15;
    v32[0] = v14;
    v29 = v35;
    v28 = v36;
    v31 = AssociatedTypeWitness;
    v30 = v38;
    (*(v41 + 40))(v39, v42);
    (*(v29 + 32))(v21, v24, v16);
    (*(v33 + 32))(v28, v30, v31);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    return ComposedTabularTransformer.init(_:_:)(v21, v28, v16, v31, v34);
  }

  return result;
}

uint64_t sub_237C89178()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return sub_237C87E50();
}

uint64_t sub_237C8926C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_237C892FC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_237C893B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_task_alloc();
  *(v14 + 16) = v23;
  *v23 = v14;
  v23[1] = sub_237C6B728;

  return sub_237C86BE0(a1, a2, a3, a4, a5, a6, v21, v22, a9, a10, a11, a12, a13, a14);
}

void UpdatableTabularEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v31 = v0;
  v2 = v1;
  v27 = v3;
  v28 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v26 = v7;
  v10 = v9;
  v32 = v11;
  OUTLINED_FUNCTION_1_1();
  v30 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  v29 = v15 - v14;
  v17 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_237EF62C0();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v26 - v23;
  v33 = v8;
  v34 = AssociatedTypeWitness;
  v35 = v4;
  v36 = v2;
  OUTLINED_FUNCTION_30_4();
  type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  (*(v17 + 32))(v6, v17);
  UpdatableTabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)(v24, v26, AssociatedTypeWitness, v27, v28);
  (*(v21 + 8))(v24, v19);
  (*(v30 + 16))(v29, v10, v6);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  sub_237C8673C();
  OUTLINED_FUNCTION_38_0();
}

void UpdatableSupervisedTabularEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v30 = v2;
  v31 = v4;
  v37 = v6;
  v38 = v5;
  v8 = v7;
  v10 = v9;
  v35 = v11;
  v33 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_31_2();
  v13 = v12;
  v29 = v12;
  v36 = sub_237EF62C0();
  OUTLINED_FUNCTION_1();
  v34 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = type metadata accessor for TabularTransformerToUpdatableEstimatorAdaptor();
  OUTLINED_FUNCTION_1();
  v32 = v19;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  OUTLINED_FUNCTION_13_2();
  WitnessTable = swift_getWitnessTable();
  v39 = v18;
  v40 = v13;
  v41 = WitnessTable;
  v42 = v3;
  OUTLINED_FUNCTION_30_4();
  type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  (*(v28 + 16))(v27 - v26, v1, v10);
  TabularTransformer.adaptedAsUpdatableEstimator()(v8, v31);
  (*(v33 + 32))(v10);
  UpdatableTabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)(v17, v18, v29, WitnessTable, v30);
  (*(v34 + 8))(v17, v36);
  (*(v32 + 8))(v22, v18);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  sub_237C8673C();
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v26 = v3;
  v27 = v1;
  v4 = v3;
  v29 = v6;
  v30 = v5;
  v8 = v7;
  v25 = v7;
  v10 = v9;
  v28 = v11;
  v12 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_237EF62C0();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v31 = v8;
  v32 = AssociatedTypeWitness;
  v33 = v4;
  v34 = v2;
  OUTLINED_FUNCTION_30_4();
  type metadata accessor for UpdatableTabularEstimatorToSupervisedAdaptor();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  (*(v24 + 16))(v23 - v22, v0, v10);
  (*(v12 + 32))(v10, v12);
  UpdatableTabularEstimator.adaptedAsSupervised<A>(annotationColumnID:)(v19, v25, AssociatedTypeWitness, v26, v27);
  (*(v16 + 8))(v19, v14);
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  sub_237C8673C();
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  (*(v15 + 16))(v14 - v13, v16, v3);
  (*(v7 + 16))(v11, v5, v1);
  sub_237C8673C();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237C89D3C()
{
  swift_getAssociatedTypeWitness();
  result = sub_237EF62C0();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237C89E40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237C89E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237C89EEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237C89F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_5()
{
}

uint64_t OUTLINED_FUNCTION_14_2()
{
}

uint64_t OUTLINED_FUNCTION_29_3()
{
  v2 = *(v0 + 136);

  return sub_237C89EEC(v2);
}

uint64_t ComposedTransformer.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ComposedTransformer();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ComposedTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = a5[3];
  OUTLINED_FUNCTION_1_1();
  v6[9] = v8;
  v6[10] = swift_task_alloc();
  v6[11] = a5[2];
  OUTLINED_FUNCTION_1_1();
  v6[12] = v9;
  v6[13] = swift_task_alloc();
  v6[14] = a5[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237C8A47C, 0, 0);
}

uint64_t sub_237C8A47C()
{
  OUTLINED_FUNCTION_12_2();
  v10 = v0[14];
  ComposedTransformer.inner.getter(v0[6], v0[13]);
  v9 = (*(v10 + 24) + **(v10 + 24));
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_237C8A5A0;
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return v9(v2, v7, v5, v6, v4, v3);
}

uint64_t sub_237C8A5A0()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 152) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237C8AAB0;
  }

  else
  {
    v8 = sub_237C8A704;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237C8A704()
{
  v1 = v0[19];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v4 = v0[6];
    ComposedTransformer.outer.getter(v4, v0[10]);
    v5 = *(v4 + 40);
    v12 = (*(v5 + 24) + **(v5 + 24));
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_237C8A8B4;
    v7 = v0[17];
    v8 = v0[8];
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];

    return v12(v11, v7, v9, v10, v8, v5);
  }
}

uint64_t sub_237C8A8B4()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237C8AB2C;
  }

  else
  {
    v8 = sub_237C8AA18;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237C8AA18()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C8AAB0()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237C8AB2C()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237C8ABC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C8AC14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237C8AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C78AF8;

  return ComposedTransformer.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t ComposedTransformer.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB800);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](8236, 0xE200000000000000);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t static ComposedTransformer<>.== infix(_:_:)()
{
  if (sub_237EF8520())
  {
    type metadata accessor for ComposedTransformer();
    v0 = sub_237EF8520();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t ComposedTransformer<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = *(a2 + 16);
  v17 = a3;
  v5 = *(a2 + 40);
  v18 = v16;
  v14 = *(a2 + 24);
  v19 = v14;
  v20 = v5;
  type metadata accessor for ComposedTransformer.CodingKeys();
  OUTLINED_FUNCTION_2_9();
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

uint64_t ComposedTransformer<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
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
  type metadata accessor for ComposedTransformer.CodingKeys();
  OUTLINED_FUNCTION_2_9();
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
  v25 = type metadata accessor for ComposedTransformer();
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

uint64_t Transformer.appending<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  return ComposedTransformer.init(_:_:)(v17, v13, a2, a3, a4);
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
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingEstimator.init(_:_:)(v17, v13, a2, a3, a4);
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
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, a2);
  (*(v9 + 16))(v13, a1, a3);
  return PreprocessingSupervisedEstimator.init(_:_:)(v17, v13, a2, a3, a4);
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
  return PreprocessingUpdatableEstimator.init(_:_:)(v13, a3, a4);
}

uint64_t Transformer.appending<A, B>(_:)()
{
  OUTLINED_FUNCTION_4_7();
  return sub_237C8B6C8(v0, v1, v2, v3, v4, v5, Transformer.adaptedAsAnnotatedFeatureTransformer<A>(annotationType:), v6);
}

{
  OUTLINED_FUNCTION_4_7();
  return sub_237C8B884(v0, v1, v2, v3, v4, type metadata accessor for AnnotatedFeatureTransformerAdaptor, Transformer.adaptedAsAnnotatedFeatureTransformer<A>(annotationType:), v5);
}

{
  OUTLINED_FUNCTION_3_7();
  return sub_237C8B6C8(v0, v1, v2, v3, v4, v5, Transformer.adaptedAsAnnotatedPredictionTransformer<A>(annotationType:), v6);
}

{
  OUTLINED_FUNCTION_3_7();
  return sub_237C8B884(v0, v1, v2, v3, v4, type metadata accessor for AnnotatedPredictionTransformerAdaptor, Transformer.adaptedAsAnnotatedPredictionTransformer<A>(annotationType:), v5);
}

uint64_t sub_237C8B6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a8@<X8>)
{
  v24 = a1;
  v25 = a7;
  v26 = a8;
  v27 = a6;
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v19 = v18(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v22 = &v24 - v21;
  v25(a4, a2, a4, a5);
  (*(v13 + 16))(v17, v24, a3);
  swift_getWitnessTable();
  return ComposedTransformer.init(_:_:)(v22, v17, v19, a3, v26);
}

uint64_t sub_237C8B884@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a8@<X8>)
{
  v25 = a7;
  v26 = a8;
  v9 = v8;
  v27 = a4;
  v14 = a6(0, a2, a3, a5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19, v9, a1);
  v25(a3, a2, a3, a5);
  swift_getWitnessTable();
  return ComposedTransformer.init(_:_:)(v21, v17, a1, v14, v26);
}

uint64_t sub_237C8BA0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237C8BBD4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t get_witness_table_18CreateMLComponents11TransformerRzAaBRd__AA16AnnotatedFeatureVy6OutputQzqd_0_G5InputRtd__r_0_lAA08ComposedC0VyAA0deC7AdaptorVyxqd_0_Gqd__GAaBHPyHCTm(void *a1, void (*a2)(uint64_t, void, void, void))
{
  a2(255, *a1, a1[2], a1[3]);
  swift_getWitnessTable();
  type metadata accessor for ComposedTransformer();
  return OUTLINED_FUNCTION_7_6();
}

uint64_t get_witness_table_18CreateMLComponents11TransformerRzAaBRd__AA16AnnotatedFeatureVy5InputQyd__qd_0_G6OutputRtzr_0_lAA08ComposedC0VyxAA0deC7AdaptorVyqd__qd_0_GGAaBHPyHCTm(void *a1, void (*a2)(uint64_t, void, void, void))
{
  a2(255, a1[1], a1[2], a1[4]);
  swift_getWitnessTable();
  type metadata accessor for ComposedTransformer();
  return OUTLINED_FUNCTION_7_6();
}

_BYTE *sub_237C8BF48(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_7_6()
{

  return swift_getWitnessTable();
}

uint64_t ObjectDetectionAnnotation.Annotation.CodingKeys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_237EF9890();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ObjectDetectionAnnotation.Annotation.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = ObjectDetectionAnnotation.Annotation.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t ObjectDetectionAnnotation.Annotation.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x616E6964726F6F63;
  }
}

uint64_t sub_237C8C1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C8C26C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237C8C2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C8C348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C8C3C4@<X0>(uint64_t *a1@<X8>)
{
  result = ObjectDetectionAnnotation.Annotation.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237C8C3F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C8C44C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static ObjectDetectionAnnotation.Annotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_6();
  v2 = CGRectEqualToRect(*v0, *v1);
  if (v2)
  {
    OUTLINED_FUNCTION_1_7();
    type metadata accessor for ObjectDetectionAnnotation.Annotation();
    LOBYTE(v2) = OUTLINED_FUNCTION_15_4();
  }

  return v2 & 1;
}

uint64_t ObjectDetectionAnnotation.imageFileName.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t ObjectDetectionAnnotation.CodingKeys.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_237EF9890();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t ObjectDetectionAnnotation.CodingKeys.init(stringValue:)@<X0>(_BYTE *a1@<X8>)
{
  result = ObjectDetectionAnnotation.CodingKeys.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t ObjectDetectionAnnotation.CodingKeys.stringValue.getter()
{
  v1 = 0x697461746F6E6E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69666567616D69;
  }
}

uint64_t sub_237C8C6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C8C724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237C8C790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C8C800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C8C87C@<X0>(uint64_t *a1@<X8>)
{
  result = ObjectDetectionAnnotation.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237C8C8B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C8C904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t static ObjectDetectionAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6_6();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (sub_237EF9D40()) && (OUTLINED_FUNCTION_1_7(), type metadata accessor for ObjectDetectionAnnotation.Annotation(), swift_getWitnessTable(), (sub_237EF8A80()))
  {
    OUTLINED_FUNCTION_1_7();
    type metadata accessor for ObjectDetectionAnnotation();
    v4 = OUTLINED_FUNCTION_15_4();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t ObjectDetectionAnnotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a7;
  OUTLINED_FUNCTION_14_3();
  v49 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v51 = v15;
  OUTLINED_FUNCTION_7_7(v16, v17, v18, v19, v20, v21);
  type metadata accessor for ObjectDetectionAnnotation.CodingKeys();
  swift_getWitnessTable();
  v58 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_1();
  v53 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = v46 - v24;
  v61 = a2;
  v62 = a3;
  v54 = a3;
  v55 = a4;
  v63 = a4;
  v64 = a5;
  v56 = a5;
  v52 = a6;
  v65 = a6;
  v26 = type metadata accessor for ObjectDetectionAnnotation();
  OUTLINED_FUNCTION_1();
  v48 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  v30 = (v46 - v29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v57 = v25;
  OUTLINED_FUNCTION_10_6();
  v31 = v59;
  sub_237EFA190();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v55;
  v33 = v56;
  v59 = v26;
  v47 = v30;
  v34 = v54;
  LOBYTE(v61) = 0;
  v35 = sub_237EF9910();
  v36 = v47;
  *v47 = v35;
  v36[1] = v37;
  v46[0] = a2;
  v46[1] = v37;
  v61 = a2;
  v62 = v34;
  v63 = v32;
  v64 = v33;
  v65 = v52;
  type metadata accessor for ObjectDetectionAnnotation.Annotation();
  sub_237EF8A60();
  LOBYTE(v61) = 1;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_237EF9970();
  v38 = v47;
  v47[2] = v66;
  LOBYTE(v61) = 2;
  v39 = v51;
  v40 = v46[0];
  sub_237EF9970();
  v41 = OUTLINED_FUNCTION_5_6();
  v42(v41);
  v43 = v59;
  (*(v49 + 32))(v38 + *(v59 + 64), v39, v40);
  v44 = v48;
  (*(v48 + 16))(v50, v38, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v44 + 8))(v38, v43);
}

uint64_t sub_237C8CEB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 120 && a2 == 0xE100000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 121 && a2 == 0xE100000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_237C8CFFC(char a1)
{
  result = 120;
  switch(a1)
  {
    case 1:
      result = 121;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6874646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237C8D05C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_12_5(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  v8 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  v16 = 0;
  OUTLINED_FUNCTION_8_5();
  if (!v6)
  {
    v16 = 1;
    OUTLINED_FUNCTION_8_5();
    v16 = 2;
    OUTLINED_FUNCTION_8_5();
    v16 = 3;
    OUTLINED_FUNCTION_8_5();
  }

  return (*(v10 + 8))(v13, v8);
}

double sub_237C8D200(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_12_5(a1, a2, a3, a4, a5, a6);
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  v9 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v6)
  {
    v18 = 0;
    OUTLINED_FUNCTION_4_8();
    v7 = v15;
    v18 = 1;
    OUTLINED_FUNCTION_4_8();
    v18 = 2;
    OUTLINED_FUNCTION_4_8();
    v18 = 3;
    OUTLINED_FUNCTION_4_8();
    (*(v11 + 8))(v14, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_237C8D3D4@<X0>(uint64_t *a1@<X8>)
{
  result = ObjectDetectionAnnotation.imageFileName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237C8D440()
{
  sub_237EFA120();
  sub_237C5EDA8(v2, *v0);
  return sub_237EFA170();
}

uint64_t sub_237C8D4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C8CEB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C8D508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C8CFF4();
  *a1 = result;
  return result;
}

uint64_t sub_237C8D540(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C8D594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void sub_237C8D5E8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_237C8D200(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
  }
}

uint64_t ObjectDetectionAnnotation.Annotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a7;
  OUTLINED_FUNCTION_14_3();
  v43 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  v45 = v15;
  OUTLINED_FUNCTION_7_7(v16, v17, v18, v19, v20, v21);
  type metadata accessor for ObjectDetectionAnnotation.Annotation.CodingKeys();
  swift_getWitnessTable();
  v50 = OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_1();
  v46 = v22;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v51 = a4;
  v52 = a2;
  v55 = a2;
  v56 = a3;
  v47 = a3;
  v48 = a5;
  v57 = a4;
  v58 = a5;
  v49 = a6;
  v59 = a6;
  v26 = type metadata accessor for ObjectDetectionAnnotation.Annotation();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  v31 = &v41 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_10_6();
  v32 = v60;
  v33 = a1;
  sub_237EFA190();
  if (!v32)
  {
    v60 = v31;
    v41 = v28;
    v42 = v26;
    v34 = v46;
    v55 = v52;
    v56 = v47;
    v57 = v51;
    v58 = v48;
    v59 = v49;
    type metadata accessor for ObjectDetectionAnnotation.Annotation.Coordinates();
    LOBYTE(v55) = 0;
    swift_getWitnessTable();
    v35 = v50;
    sub_237EF9970();
    v36 = vextq_s8(v54, v54, 8uLL);
    v37 = v60;
    *v60 = v53;
    v37[1] = v36;
    LOBYTE(v55) = 1;
    v38 = v45;
    sub_237EF9970();
    (*(v34 + 8))(v25, v35);
    v40 = v42;
    (*(v43 + 32))(&v37->i8[*(v42 + 60)], v38, v52);
    (*(v41 + 32))(v44, v37, v40);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_237C8DAD8()
{
  type metadata accessor for ObjectDetectionAnnotation.Annotation();
  result = sub_237EF8A60();
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

uint64_t sub_237C8DB98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_237C8DD20(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
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
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_237C8DF74()
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

uint64_t sub_237C8DFFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 32) & ~v7, v6, v4);
  }

  v9 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 32) & ~v7, v6, v4);
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_237C8E158(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 32) & ~v9) + *(v7 + 64);
  v11 = 8 * v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v10] = 0;
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
        *&a1[v10] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          v20 = &a1[v9 + 32] & ~v9;

          __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v10)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237C8E37C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_237C8E448(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237C8E514()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ColumnSelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_237C8E5F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_237EF9930();
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 128) = a2;
  *(v6 - 120) = a3;
  *(v6 - 112) = a4;
  *(v6 - 104) = a5;
  *(v6 - 96) = a6;
  return 255;
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_237EF9A30();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 152) = a2;
  *(v6 - 144) = a3;
  *(v6 - 136) = a4;
  *(v6 - 128) = a5;
  *(v6 - 120) = a6;

  return type metadata accessor for ObjectDetectionAnnotation.Annotation.Coordinates.CodingKeys();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return sub_237EF8520();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_237EF99A0();
}

void RandomImageCropper.init(targetSize:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t RandomImageCropper.init(scale:aspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2 & 1 | 0x80;
  return result;
}

uint64_t RandomImageCropper.applied<A>(to:generator:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;
  *(v7 + 96) = *v6;
  *(v7 + 112) = *(v6 + 16);
  *(v7 + 120) = *(v6 + 24);
  return MEMORY[0x2822009F8](sub_237C8E8E0, 0, 0);
}

void sub_237C8E8E0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 120);
  [*(v0 + 64) extent];
  sub_237C8EB4C(v3, v1, v2, v4, v5, v6);
  v10 = v9;
  v12 = v11;
  [*(v0 + 64) extent];
  if (CGRectGetHeight(*&v13) == v12 && ([*(v0 + 64) extent], CGRectGetWidth(v39) == v10))
  {
    v17 = *(v0 + 64);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_0_9();
    v21 = sub_237C8ECDC(v18, v19, v20, v10);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    OUTLINED_FUNCTION_0_9();
    v41.origin.x = v21;
    v41.origin.y = v23;
    v41.size.width = v25;
    v41.size.height = v27;
    if (!CGRectContainsRect(v40, v41))
    {
      sub_237C84150();
      swift_allocError();
      *v37 = xmmword_237F054E0;
      *(v37 + 16) = 0xD000000000000032;
      *(v37 + 24) = 0x8000000237EFB820;
      *(v37 + 32) = 5;
      swift_willThrow();
      OUTLINED_FUNCTION_1_8();

      __asm { BRAA            X1, X16 }
    }

    v28 = [*(v0 + 64) imageByCroppingToRect_];
    OUTLINED_FUNCTION_0_9();
    v30 = -v29;
    OUTLINED_FUNCTION_0_9();
    CGAffineTransformMakeTranslation(&v38, v30, -v31);
    v32 = *&v38.c;
    v33 = *&v38.tx;
    *(v0 + 16) = *&v38.a;
    *(v0 + 32) = v32;
    *(v0 + 48) = v33;
    v34 = [v28 imageByApplyingTransform_];
  }

  OUTLINED_FUNCTION_1_8();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_237C8EB4C(uint64_t result, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  if ((a4 & 0x80) == 0)
  {
    v8 = *&result;
    goto LABEL_9;
  }

  sub_237C65348();
  sub_237C665D8();
  result = sub_237EF81A0();
  if (a4)
  {
    v8 = ceil(v19 * a5);
    v12 = v19 * a6;
LABEL_7:
    *&a2 = ceil(v12);
    goto LABEL_9;
  }

  if (a5 < a6)
  {
    v8 = ceil(v19 * a5);
    v12 = v8 / *&a3;
    goto LABEL_7;
  }

  *&a2 = ceil(v19 * a6);
  v8 = ceil(*&a2 * *&a3);
LABEL_9:
  if (*&a2 > a6 || v8 > a5)
  {
    v14 = "ComposedTransformer<";
    v15 = 0xD000000000000032;
LABEL_21:
    v17 = v14 | 0x8000000000000000;
    sub_237C84150();
    swift_allocError();
    *v18 = 0xD000000000000012;
    *(v18 + 8) = 0x8000000237F05510;
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    *(v18 + 32) = 5;
    return swift_willThrow();
  }

  if (v8 < 1.0 || *&a2 < 1.0)
  {
    v14 = " the image bounds.";
    v15 = 0xD000000000000037;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_237C8ED40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v11 = *a2;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = sub_237C8EE04;

  return RandomImageCropper.applied<A>(to:generator:eventHandler:)(v11, a3, v13, v14, a6, a7);
}

uint64_t sub_237C8EE04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t initializeBufferWithCopyOfBuffer for RandomImageCropper.CroppingStrategy(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_237C8EF54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
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

uint64_t sub_237C8EF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_237C8F038(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x2383E2E10](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_237C8F038(v6, a2, a3);
  }

  return result;
}

id OUTLINED_FUNCTION_0_9()
{

  return [v0 (v1 + 3568)];
}

uint64_t FullyConnectedNetworkClassifier.makeTransformer()@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = v2[1];
  v19[0] = *v2;
  v19[1] = v5;
  v6 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  v19[2] = v2[2];
  v19[3] = v6;
  v18[0] = v8;
  v18[1] = v7;
  v9 = v2[3];
  v18[2] = v2[2];
  v18[3] = v9;
  sub_237C8F200(v19, v17);
  v10 = a1[3];
  v11 = a1[6];
  v12 = a1[9];
  v13 = sub_237EF8260();
  v14 = sub_237E5E16C(v13, v10, v11, v12);
  return sub_237DE5E24(v18, v14, v15, MEMORY[0x277D84F90], 0, a1[2], v10, a1[4], a2, a1[5], v11, a1[7], a1[8], v12);
}

uint64_t FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[46] = a6;
  v8[47] = a7;
  v8[44] = a4;
  v8[45] = a5;
  v8[42] = a2;
  v8[43] = a3;
  v8[41] = a1;
  v11 = sub_237EF6B10();
  v8[48] = v11;
  v8[49] = *(v11 - 8);
  v8[50] = OUTLINED_FUNCTION_27_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0);
  v8[51] = v12;
  v8[52] = *(v12 - 8);
  v8[53] = OUTLINED_FUNCTION_27_0();
  v8[54] = a5[2];
  v8[55] = a5[4];
  v8[56] = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v8[57] = v13;
  v8[58] = OUTLINED_FUNCTION_27_0();
  v8[59] = a5[3];
  v8[60] = type metadata accessor for AnnotatedFeature();
  sub_237EF90F0();
  v8[61] = OUTLINED_FUNCTION_27_0();
  v8[62] = *(a6 - 8);
  v8[63] = OUTLINED_FUNCTION_27_0();
  memcpy(v8 + 2, v7, 0x48uLL);

  return MEMORY[0x2822009F8](sub_237C8F488, 0, 0);
}

uint64_t sub_237C8F488()
{
  v64 = v0;
  (*(*(v0 + 496) + 16))(*(v0 + 504), *(v0 + 336), *(v0 + 368));
  v1 = sub_237EF8A90();
  *(v0 + 512) = v1;
  *(v0 + 280) = v1;
  v2 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  if (sub_237EF8EC0())
  {

    sub_237C84150();
    swift_allocError();
    *v4 = 0xD000000000000027;
    *(v4 + 8) = 0x8000000237EFB8E0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_2_11();

    OUTLINED_FUNCTION_3_0();
LABEL_7:

    return v30();
  }

  *(v0 + 160) = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 360);
  v7 = *(v0 + 328);
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];
  v11 = v6[8];
  v12 = v6[9];
  *(v0 + 168) = *(v0 + 472);
  *(v0 + 176) = v5;
  v61 = v9;
  v62 = v8;
  *(v0 + 184) = v8;
  *(v0 + 192) = v9;
  v59 = v11;
  v60 = v10;
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  v58 = v12;
  *(v0 + 216) = v12;
  v53 = type metadata accessor for FullyConnectedNetworkClassifierModel();
  v13 = *(v53 + 92);
  if (!*(*(v7 + v13) + 16))
  {
    v15 = *(v0 + 480);
    v14 = *(v0 + 488);
    *(v0 + 320) = v1;
    v54 = WitnessTable;
    v56 = v2;
    sub_237EF8E80();
    result = __swift_getEnumTagSinglePayload(v14, 1, v15);
    if (result == 1)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v18 = *(v0 + 480);
    v17 = *(v0 + 488);
    v19 = *(v0 + 456);
    v20 = *(v0 + 464);
    v21 = *(v0 + 448);
    (*(v19 + 16))(v20, v17, v21);
    (*(*(v18 - 8) + 8))(v17, v18);
    v22 = sub_237EF7E20();
    (*(v19 + 8))(v20, v21);

    *(v7 + v13) = v22;
    WitnessTable = v54;
    v2 = v56;
  }

  memcpy(__dst, (v0 + 16), sizeof(__dst));
  *(v0 + 288) = v1;
  sub_237E9074C();
  v55 = WitnessTable;
  v57 = v2;
  v23 = *(v0 + 472);
  v25 = *(v0 + 432);
  v24 = *(v0 + 440);
  v27 = *(v0 + 368);
  v26 = *(v0 + 376);
  v52 = *(v0 + 408);
  v51 = *(v0 + 328);
  v28 = swift_task_alloc();
  v28[2] = v25;
  v28[3] = v23;
  v28[4] = v27;
  v28[5] = v24;
  v28[6] = v62;
  v28[7] = v61;
  v28[8] = v60;
  v28[9] = v59;
  v28[10] = v58;
  v28[11] = v26;
  v28[12] = v0 + 16;
  v28[13] = v51;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
  v31 = sub_237C8FFEC(sub_237C8FFA4, v28, v27, v52, v29, v26, MEMORY[0x277D84950], v0 + 296);
  v32 = *(v0 + 424);
  v33 = *(v0 + 328);

  memcpy(__dst, (v0 + 16), sizeof(__dst));
  *(v0 + 304) = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8);
  sub_237C90604();
  sub_237E90EAC(v34, v32);

  result = sub_237DE6104(v32, v53);
  v35 = *(v53 + 96);
  v36 = *(v33 + v35);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  *(v0 + 520) = v38;
  if (v37)
  {
    __break(1u);
    goto LABEL_17;
  }

  v39 = *(v0 + 344);
  *(v33 + v35) = v38;
  v40 = *(v0 + 400);
  if (!v39)
  {
    v47 = *(v0 + 416);
    v46 = *(v0 + 424);
    v48 = *(v0 + 408);
    v49 = *(v0 + 384);
    v50 = *(v0 + 392);

    (*(v50 + 8))(v40, v49);
    (*(v47 + 8))(v46, v48);
    OUTLINED_FUNCTION_2_11();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_7;
  }

  v41 = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  strcpy((inited + 32), "training_loss");
  *(inited + 46) = -4864;
  sub_237C70604(v41);
  sub_237EF6A90();
  *(inited + 48) = *(v0 + 560);
  sub_237C758C4();
  *(v0 + 528) = sub_237EF8230();
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  *(v0 + 312) = v1;
  v43 = swift_task_alloc();
  *(v0 + 536) = v43;
  *v43 = v0;
  v43[1] = sub_237C8FAC8;
  v44 = *(v0 + 360);
  v45 = *(v0 + 328);

  return sub_237E91150(v45, v0 + 312, v44, v57, v55);
}

uint64_t sub_237C8FAC8(double a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = sub_237C8FD98;
  }

  else
  {
    *(v4 + 552) = a1;
    v5 = sub_237C8FBFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237C8FBFC()
{
  v17 = v0;
  v1 = v0[69];
  v2 = *(v0 + 66);
  v3 = *(v0 + 65);
  v4 = *(v0 + 52);
  v12 = *(v0 + 51);
  v13 = *(v0 + 53);
  v11 = *(v0 + 50);
  v6 = *(v0 + 48);
  v5 = *(v0 + 49);
  v7 = *(v0 + 43);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237C91610(0xD000000000000011, 0x8000000237EFB8A0, v1);
  v8 = sub_237C908A4(v2);

  v14[0] = 0xD00000000000001FLL;
  v14[1] = 0x8000000237EFB8C0;
  v14[2] = v3;
  v14[3] = v3;
  v15 = 0;
  v16 = v8;
  v7(v14);
  sub_237C5EE40(v7);

  (*(v5 + 8))(v11, v6);
  (*(v4 + 8))(v13, v12);
  OUTLINED_FUNCTION_2_11();

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237C8FD98()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  sub_237C5EE40(v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237C8FE90(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  memcpy(__dst, a2, sizeof(__dst));
  type metadata accessor for FullyConnectedNetworkClassifierModel();
  sub_237EF8260();
  sub_237EF8260();
  type metadata accessor for FullyConnectedNetworkClassifier();
  v14 = v17;
  sub_237E90A60();

  if (v14)
  {
    *a14 = v14;
  }

  return result;
}

uint64_t sub_237C8FFEC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = a8;
  v9 = v8;
  v70 = a2;
  v71 = a4;
  v69 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v64 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v57 = a5;
  v58 = &v52 - v17;
  v55 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v67 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v65 = &v52 - v21;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v53 = v23;
  v54 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v52 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26();
  v66 = v31 - v32;
  v34 = MEMORY[0x28223BE20](v33);
  v63 = *(a3 - 8);
  MEMORY[0x28223BE20](v34);
  v62 = &v52 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a6;
  v72 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v59 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v52 - v38;
  v40 = sub_237EF8710();
  v73 = sub_237EF9570();
  v68 = sub_237EF9580();
  sub_237EF94B0();
  (*(v63 + 16))(v62, v60, a3);
  v71 = v39;
  v63 = a3;
  result = sub_237EF86F0();
  if (v40 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v40)
  {
    v42 = (v64 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_237EF91A0();
      result = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v69(v30, v65);
      if (v9)
      {
        v50 = OUTLINED_FUNCTION_6_7();
        v51(v50);

        (*(v55 + 32))(v56, v65, v57);
        return (*v42)(v30, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v30, AssociatedTypeWitness);
      sub_237EF9520();
      if (!--v40)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = (v64 + 32);
  v44 = (v64 + 8);
  v45 = v58;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v46 = OUTLINED_FUNCTION_6_7();
      v47(v46);
      (*(v53 + 8))(v26, v54);
      return v73;
    }

    (*v43)(v45, v26, AssociatedTypeWitness);
    v69(v45, v67);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v44)(v45, AssociatedTypeWitness);
    sub_237EF9520();
  }

  (*v44)(v45, AssociatedTypeWitness);
  v48 = OUTLINED_FUNCTION_6_7();
  v49(v48);

  return (*(v55 + 32))(v56, v67, v57);
}

unint64_t sub_237C90604()
{
  result = qword_27DEAE2C0;
  if (!qword_27DEAE2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE2C0);
  }

  return result;
}

unint64_t sub_237C90668(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE300);
    v2 = sub_237EF9830();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_237EF8260();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];
    sub_237EF8260();
    swift_dynamicCast();
    sub_237C5463C(&v22, v24);
    sub_237C5463C(v24, v25);
    sub_237C5463C(v25, &v23);
    result = sub_237D2FC30();
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_237C5463C(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_237C5463C(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_237C908A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE310);
    v2 = sub_237EF9830();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  result = sub_237EF8260();
  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v26 = *v12;
    *(&v26 + 1) = v13;
    v25 = v14;
    sub_237EF8260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0);
    swift_dynamicCast();
    v23 = v26;
    sub_237C5463C(&v27, v24);
    sub_237C5463C(v24, &v26);
    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v2 + 48) + 16 * v18) = v23;
    result = sub_237C5463C(&v26, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_237C90B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C90C10;

  return FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237C90C10()
{

  OUTLINED_FUNCTION_3_0();

  return v0();
}

_OWORD *sub_237C90D00()
{
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_0_10();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE308);
  if (OUTLINED_FUNCTION_4_9())
  {
    sub_237D2FC30();
    OUTLINED_FUNCTION_5_7();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  v11 = *v3;
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(*(v11 + 56) + 32 * v7);
    OUTLINED_FUNCTION_13_3();

    return sub_237C5463C(v12, v13);
  }

  else
  {
    sub_237D309C0(v7, v2, v1, v0, v11);
    OUTLINED_FUNCTION_13_3();

    return sub_237EF8260();
  }
}

unint64_t sub_237C90E24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_237D2FCC4(a5);
  OUTLINED_FUNCTION_0_10();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE328);
  if ((sub_237EF96B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_237D2FCC4(a5);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  if (v15)
  {
    v18 = *(*v5 + 56) + 32 * v14;
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = a3;
    *(v18 + 24) = a4 & 1;
    OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_38_0();

    return sub_237D30AA0(v21, v22, v23, v24, v25, v26, v27);
  }
}

void sub_237C90F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_237D2FC80(a2);
  OUTLINED_FUNCTION_0_10();
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_237C917C0();
    sub_237EFA020();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  if (OUTLINED_FUNCTION_11_4())
  {
    sub_237D2FC80(a2);
    OUTLINED_FUNCTION_5_7();
    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = v15;
  }

  v17 = *v6;
  if (v14)
  {
    *(*(v17 + 56) + 8 * v13) = a1;
    OUTLINED_FUNCTION_8_6();
  }

  else
  {
    a6(v13, a2, a1, v17);
    OUTLINED_FUNCTION_8_6();

    v22 = v20;
  }
}

uint64_t sub_237C91098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237D2FC30();
  OUTLINED_FUNCTION_0_10();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0);
  if ((sub_237EF96B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_237D2FC30();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = a1;
    v17[1] = a2;
    OUTLINED_FUNCTION_38_0();
  }

  else
  {
    sub_237D30B24(v12, a3, a4, a1, a2, v16);
    OUTLINED_FUNCTION_38_0();

    return sub_237EF8260();
  }
}

void sub_237C911D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237D2FC30();
  OUTLINED_FUNCTION_0_10();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_237EFA020();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8);
  if (OUTLINED_FUNCTION_4_9())
  {
    sub_237D2FC30();
    OUTLINED_FUNCTION_5_7();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  v14 = *v3;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a1;
    OUTLINED_FUNCTION_13_3();
  }

  else
  {
    sub_237D30B70(v10, a2, a3, a1, v14);
    OUTLINED_FUNCTION_13_3();

    sub_237EF8260();
  }
}

uint64_t sub_237C912CC()
{
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_0_10();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2F0);
  if ((OUTLINED_FUNCTION_4_9() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_237D2FC30();
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_13:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v7 = v9;
LABEL_5:
  if (v8)
  {
    type metadata accessor for TensorDescription();
    OUTLINED_FUNCTION_13_3();

    return sub_237C9175C(v11, v12);
  }

  else
  {
    sub_237D30BA4(v7, v2, v1, v0, *v3);
    OUTLINED_FUNCTION_13_3();

    return sub_237EF8260();
  }
}

uint64_t sub_237C91494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, void))
{
  sub_237D2FC30();
  OUTLINED_FUNCTION_0_10();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  if (sub_237EF96B0())
  {
    v18 = sub_237D2FC30();
    if ((v17 & 1) == (v19 & 1))
    {
      v16 = v18;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v17)
  {
    a7(0);
    OUTLINED_FUNCTION_8_6();

    __asm { BRAA            X3, X16 }
  }

  a8(v16, a2, a3, a1, *v8);
  OUTLINED_FUNCTION_8_6();

  return sub_237EF8260();
}

uint64_t sub_237C91610(uint64_t a1, uint64_t a2, double a3)
{
  (sub_237D30F88)();
  OUTLINED_FUNCTION_0_10();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE318);
  result = OUTLINED_FUNCTION_11_4();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_237D30F88(a1, a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a3;
  }

  else
  {
    sub_237D30CF0(v10, a1, a2, v14);

    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237C91720(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237C9175C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TensorDescription();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237C917C0()
{
  result = qword_27DEAD7F8;
  if (!qword_27DEAD7F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEAD7F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{
}

unint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_237D2FC30();
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return sub_237EF96B0();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_237EF96B0();
}

uint64_t PreprocessingEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for PreprocessingEstimator();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t PreprocessingEstimator.preprocessed<A>(from:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = *(v3 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[10] = v8;
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237C91B8C()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0[5];
  PreprocessingEstimator.preprocessor.getter(v1, v0[11]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = *(v1 + 32);
  *v2 = v0;
  v2[1] = sub_237C91C48;
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return Transformer.applied<A>(to:eventHandler:)(v9, v7, v8, v4, v5, v3, v6);
}

uint64_t sub_237C91C48(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v7 = *v2;
  *v6 = *v2;
  *(v5 + 104) = v1;

  (*(v4[10] + 8))(v4[11], v4[9]);
  if (v1)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = v7[1];

    return v11(a1);
  }
}

uint64_t sub_237C91DF0()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingEstimator.fitted<A>(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v2;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v2 + 16);
  v1[11] = swift_task_alloc();
  v1[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v1[14] = swift_task_alloc();
  v1[15] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  v1[17] = *(AssociatedTypeWitness - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_237C91FBC()
{
  v12 = v0[15];
  PreprocessingEstimator.estimator.getter(v0[6], v0[14]);
  v11 = (*(v12 + 24) + **(v12 + 24));
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_237C920EC;
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  return v11(v2, v9, v7, v8, v5, v6, v4, v3);
}

uint64_t sub_237C920EC()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v9 = v8;
  *(v10 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237C9224C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[11];
  v9 = v0[10];
  v8 = v0[2];
  PreprocessingEstimator.preprocessor.getter(v0[6], v5);
  (*(v4 + 32))(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v5, v2, v9, v3, v8);

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_237C92370()
{

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingEstimator.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a1;
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_237C924D8;

  return PreprocessingEstimator.preprocessed<A>(from:eventHandler:)();
}

uint64_t sub_237C924D8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

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

uint64_t sub_237C925F8()
{
  v1 = v0[10];
  sub_237EF8B90();
  if (v1)
  {

    OUTLINED_FUNCTION_3_0();

    return v2();
  }

  else
  {
    v0[2] = v0[9];
    v4 = swift_task_alloc();
    v0[11] = v4;
    swift_getAssociatedTypeWitness();
    sub_237EF8A60();
    swift_getWitnessTable();
    *v4 = v0;
    v4[1] = sub_237C92758;

    return PreprocessingEstimator.fitted<A>(toPreprocessed:eventHandler:)();
  }
}

uint64_t sub_237C92758()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  *(v3 + 96) = v0;

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

uint64_t sub_237C9287C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ComposedTransformer();
  return (*(v4 + 32))(a1 + *(v6 + 52), a2, v5, v4);
}

uint64_t PreprocessingEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v28 = a3;
  v29 = v5;
  OUTLINED_FUNCTION_1_1();
  v27 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v30 = v9 - v8;
  v11 = *(v10 + 40);
  v12 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v26 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = v3;
  v22 = v31;
  result = (*(v11 + 40))(a1, v12, v11);
  if (!v22)
  {
    v24 = v29;
    (*(v27 + 16))(v30, v21, v29);
    (*(v26 + 32))(v18, v20, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v30, v18, v24, AssociatedTypeWitness, v28);
  }

  return result;
}

uint64_t sub_237C92BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_237C92CC8;

  return PreprocessingEstimator.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7);
}

uint64_t sub_237C92CC8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237C92F48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_237C93110(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void sub_237C9339C()
{
  OUTLINED_FUNCTION_13_4();
  v32 = v2;
  v46 = v1;
  v4 = v3;
  v41 = v5;
  v42 = v6;
  v7 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v43 = v9 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v45 = v10;
  OUTLINED_FUNCTION_9();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v39 = v16 - v15;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v33 = v18;
  v34 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v22 = sub_237EF8DA0();
  if (v22)
  {
    v44 = v22;
    sub_237EF9570();
    v35 = sub_237EF9580();
    sub_237EF94B0();
    sub_237EF8D90();
    if ((v44 & 0x8000000000000000) == 0)
    {
      v30 = v7;
      v31 = v4;
      v23 = 0;
      v36 = (v45 + 16);
      v37 = v45 + 8;
      v38 = v0;
      while (!__OFADD__(v23, 1))
      {
        v45 = v23 + 1;
        v24 = sub_237EF8F00();
        (*v36)(v14);
        v24(&v47, 0);
        v25 = v46;
        v41(v14, v43);
        if (v25)
        {
          v28 = OUTLINED_FUNCTION_17_4();
          v29(v28);
          (*(v33 + 8))(v21, v34);

          (*(v30 + 32))(v32, v43, v31);
          goto LABEL_10;
        }

        v46 = 0;
        v26 = OUTLINED_FUNCTION_17_4();
        v27(v26);
        sub_237EF9520();
        sub_237EF8DF0();
        ++v23;
        if (v45 == v44)
        {
          (*(v33 + 8))(v21, v34);
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_237EF89A0();
LABEL_10:
    OUTLINED_FUNCTION_12_6();
  }
}

void sub_237C93760(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v18 = MEMORY[0x277D84F90];
  sub_237C63320();
  v15 = v5;
  v16 = v4;
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = a1 + 32;
  v8 = a2 + 32;
  v9 = v6;
  do
  {
    if (!v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    if (!v5)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_16_5();
    v10();
    OUTLINED_FUNCTION_14_4();
    v11 = v17;
    v12 = *(v18 + 16);
    if (v12 >= *(v18 + 24) >> 1)
    {
      sub_237C63320();
      v11 = v17;
    }

    --v5;
    *(v18 + 16) = v12 + 1;
    *(v18 + 4 * v12 + 32) = v11;
    --v4;
    v8 += 4;
    v7 += 4;
    --v9;
  }

  while (v9);
LABEL_11:
  while (v16 != v6)
  {
    if (v6 >= v16)
    {
      goto LABEL_22;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_23;
    }

    if (v15 == v6)
    {
      break;
    }

    if (v6 >= v15)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_16_5();
    v13();
    OUTLINED_FUNCTION_14_4();
    v14 = *(v18 + 16);
    if (v14 >= *(v18 + 24) >> 1)
    {
      sub_237C63320();
    }

    *(v18 + 16) = v14 + 1;
    *(v18 + 4 * v14 + 32) = v17;
    ++v6;
  }
}

uint64_t sub_237C93998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v40 = a8;
  v41 = a7;
  v39 = a6;
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v45 = &v39 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v46 = v39;
  v47 = a7;
  v48 = v40;
  v49 = a10;
  v50 = a11;
  v51 = a12;
  v52 = a13;
  v53 = a14;
  v25 = type metadata accessor for TimeSeriesClassifier.Model();
  v26 = v25[21];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  *(a9 + v25[27]) = 0;
  v31 = (a9 + v25[22]);
  *v31 = a1;
  v31[1] = a2;
  v32 = v43;
  *(a9 + v25[23]) = v42;
  *(a9 + v25[24]) = v32;
  *(a9 + v25[25]) = v44;
  v33 = v32 / 2;
  if (v32 / 2 <= 1)
  {
    v33 = 1;
  }

  *(a9 + v25[26]) = v33;
  sub_237EF8260();
  sub_237EF8260();
  sub_237E5E170(a1, a2, v41, a11, a14);

  sub_237CD6388();
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  type metadata accessor for LSTMFCN(0);
  sub_237C962B0();
  sub_237EF6770();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v27);
  return sub_237C96308(v24, a9 + v26);
}

uint64_t TimeSeriesClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a1;
  v6[6] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  OUTLINED_FUNCTION_18(v8);
  v6[9] = swift_task_alloc();
  v6[10] = *(a5 + 16);
  v6[11] = *(a5 + 32);
  v9 = sub_237EF7E90();
  v6[12] = v9;
  OUTLINED_FUNCTION_6_1(v9);
  v6[13] = v10;
  v6[14] = swift_task_alloc();
  v11 = sub_237EF6720();
  v6[15] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v6[16] = v12;
  v6[17] = swift_task_alloc();
  v13 = sub_237EF6B10();
  v6[18] = v13;
  OUTLINED_FUNCTION_6_1(v13);
  v6[19] = v14;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237C93DE0, 0, 0);
}

void *sub_237C93DE0()
{
  v1 = *(OUTLINED_FUNCTION_15_5() + 16);

  if (v1 != 2)
  {
    goto LABEL_7;
  }

  result = OUTLINED_FUNCTION_15_5();
  if (result[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v0[7];
  v4 = v0[8];
  v5 = result[5];

  if (v5 != *(v4 + *(v3 + 92)))
  {
LABEL_7:
    v13 = OUTLINED_FUNCTION_15_5();
    sub_237C84150();
    swift_allocError();
    *v12 = v13;
    *(v12 + 8) = 0xD000000000000036;
    *(v12 + 16) = 0x8000000237EFB910;
    goto LABEL_8;
  }

  result = OUTLINED_FUNCTION_15_5();
  if (!result[2])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = result[4];

  v9 = *(v7 + *(v6 + 96));
  if (v8 < v9)
  {
    v10 = OUTLINED_FUNCTION_15_5();
    sub_237EF9330();

    v0[4] = v9;
    v11 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v11);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237C84150();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = 0xD000000000000025;
    *(v12 + 16) = 0x8000000237EFB9D0;
LABEL_8:
    *(v12 + 24) = 0;
    *(v12 + 32) = 6;
    goto LABEL_9;
  }

  v15 = v0[7];
  if (*(v0[8] + *(v15 + 108)) >= 1)
  {
    v44 = v0[23];
    v45 = v0[22];
    v17 = v0[20];
    v16 = v0[21];
    v43 = v0[8];
    v19 = v0[18];
    v18 = v0[19];
    v46 = v0[17];
    v20 = v0[14];
    v21 = v0[15];
    v22 = v0[10];
    v41 = v0[11];
    v38 = v22;
    v39 = v0[16];
    v47 = v0[9];
    v42 = v0[5];
    (*(v0[13] + 16))(v20, v0[6], v0[12]);
    v40 = *(v15 + 40);
    sub_237D4A7B4(v20, v22, v17);
    sub_237EF6950();
    v23 = *(v18 + 8);
    v23(v17, v19);
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
    sub_237C9442C();
    sub_237C65484(v47, &qword_27DEAE3B8);
    v23(v16, v19);
    (*(v39 + 8))(v46, v21);
    (*(v18 + 32))(v44, v45, v19);
    v0[2] = sub_237EF6AB0();
    v27 = swift_task_alloc();
    v27[2] = v22;
    v37 = *(v15 + 24);
    v27[3] = v37;
    v27[4] = v41;
    v27[5] = v40;
    v28 = *(v15 + 48);
    v27[6] = v28;
    v29 = *(v15 + 56);
    v27[7] = v29;
    v30 = *(v15 + 64);
    v27[8] = v30;
    v31 = *(v15 + 72);
    v27[9] = v31;
    v27[10] = v43;
    v32 = swift_task_alloc();
    v32[2] = v38;
    v32[3] = v37;
    v32[4] = v41;
    v32[5] = v40;
    v32[6] = v28;
    v32[7] = v29;
    v32[8] = v30;
    v32[9] = v31;
    v32[10] = sub_237C95FEC;
    v32[11] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3C0);
    type metadata accessor for Classification();
    sub_237C96060();
    sub_237C9339C();
    v34 = v33;

    v0[3] = v34;
    v35 = sub_237EF8A60();
    swift_getWitnessTable();
    ClassificationDistribution.init<A>(_:)((v0 + 3), v35, v42);
    v23(v44, v19);

    v14 = v0[1];
    goto LABEL_10;
  }

  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB950);
  MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFB970);
  MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237EFB990);
  sub_237C6514C();
  swift_allocError();
  *v36 = 0;
  v36[1] = 0xE000000000000000;
LABEL_9:
  swift_willThrow();

  v14 = v0[1];
LABEL_10:

  return v14();
}

void sub_237C9442C()
{
  OUTLINED_FUNCTION_13_4();
  v34[1] = v1;
  v35 = v0;
  v3 = v2;
  v36 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE520);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v9 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE528);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v34 - v22;
  sub_237CD67F4();
  sub_237C96758(v23, v20);
  v24 = *(v17 + 56);
  sub_237EF6720();
  OUTLINED_FUNCTION_4();
  (*(v25 + 32))(v3, v20 + v24);
  v26 = *(v11 + 8);
  v26(v20, v9);
  sub_237EF6710();
  v27 = sub_237EF6620();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  sub_237EF6AA0();
  sub_237C65484(v8, &qword_27DEAE520);
  v26(v15, v9);
  sub_237EF66F0();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
  sub_237EF6AA0();
  sub_237C65484(v8, &qword_27DEAE520);
  v26(v15, v9);
  sub_237EF6BC0();
  sub_237C65484(v23, &qword_27DEAE528);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C946E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, uint64_t a11, uint64_t a12)
{
  v27 = a6;
  v28 = a8;
  v29 = a2;
  v30 = a1;
  v26 = a9;
  v17 = sub_237EF90F0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v25 - v22;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v27;
  v35 = a7;
  v36 = v28;
  v37 = a11;
  v38 = a12;
  type metadata accessor for TimeSeriesClassifier.Model();
  sub_237E5E174(v30, a4, v23);
  (*(v18 + 16))(v21, v23, v17);
  result = __swift_getEnumTagSinglePayload(v21, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v23, v17);
    return Classification.init(label:probability:)(v21, a4, v26, a10);
  }

  return result;
}

uint64_t sub_237C948DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return TimeSeriesClassifier.Model.applied(to:eventHandler:)(a1, a2, v9, v10, a5);
}

void sub_237C9498C()
{
  OUTLINED_FUNCTION_13_4();
  v33 = v4;
  v34 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v7 = sub_237EF6720();
  OUTLINED_FUNCTION_1();
  v31 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v32 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_26();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v7);
  sub_237C9442C();
  sub_237C65484(v1, &qword_27DEAE3B8);
  if (!v0)
  {
    (*(v31 + 8))(v12, v7);
    v26 = v32;
    (*(v32 + 32))(v22, v2, v13);
    sub_237EF6A70();
    v27 = sub_237EF6AB0();
    v28 = *(v26 + 8);
    v28(v18, v13);
    v29 = v34;
    sub_237EF8260();
    v30 = sub_237C94C08(v27, v29, v33);
    (v28)(v22, v13, v30);
  }

  OUTLINED_FUNCTION_12_6();
}

__n128 sub_237C94C08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE510);
  sub_237C96710(&qword_27DEAE518, &qword_27DEAE510);
  swift_getKeyPath();

  sub_237C93760(a1, a2);
  v7 = v6;

  sub_237CAE1B8(v7);
  swift_getKeyPath();

  sub_237C93760(a1, a2);

  v8 = sub_237CAE384();
  sub_237CB03A0(a1, a2, sub_237C966D4, 0, v8, v13);
  v9 = v13[1];
  v10 = v14;
  v11 = v16;
  result = v15;
  *a3 = v13[0];
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = result;
  *(a3 + 40) = v11;
  return result;
}

void sub_237C94DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  OUTLINED_FUNCTION_13_4();
  v15 = v12;
  v61 = v11;
  v53 = v17;
  v54 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8);
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_0();
  v22 = sub_237EF6720();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v66 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v58 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_4();
  MEMORY[0x28223BE20](v35);
  v65 = &v53 - v36;
  v60 = v19;
  v62 = *(v19 + 16);
  sub_237D0BFC0();
  v38 = v37;
  v39 = 0;
  v55 = (v30 + 32);
  v56 = (v24 + 8);
  v59 = v30;
  v64 = (v30 + 8);
  v57 = v28;
  while (1)
  {
    if (v62 == v39)
    {
      v52 = v54;
      sub_237EF8260();
      sub_237C94C08(v38, v52, v53);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v22);
    sub_237C9442C();
    if (v15)
    {
      break;
    }

    v63 = 0;
    v43 = v13;
    sub_237C65484(v13, &qword_27DEAE3B8);
    v44 = v28;
    v45 = v22;
    (*v56)(v44, v22);
    v46 = v66;
    v47 = v14;
    (*v55)(v65, v14, v66);
    v48 = v58;
    sub_237EF6A80();
    sub_237EF6A90();
    v49 = *v64;
    (*v64)(v48, v46);
    v50 = *(v38 + 16);
    if (v50 >= *(v38 + 24) >> 1)
    {
      sub_237D0BFC0();
      v38 = v51;
    }

    v49(v65, v66);
    *(v38 + 16) = v50 + 1;
    *(v38 + 4 * v50 + 32) = a11;
    ++v39;
    v13 = v43;
    v15 = v63;
    v22 = v45;
    v28 = v57;
    v14 = v47;
  }

  sub_237C65484(v13, &qword_27DEAE3B8);

LABEL_9:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C95140()
{
  v0 = sub_237EF9890();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_237C95190(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x736C6562616CLL;
      break;
    case 2:
      result = 0x5365727574616566;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x656469727473;
      break;
    case 6:
      result = 0x6F69746172657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237C95264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C952D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237C95344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C953B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237C95424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C95140();
  *a1 = result;
  return result;
}

unint64_t sub_237C9545C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_237C95190(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237C954B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237C9518C();
  *a1 = result;
  return result;
}

uint64_t sub_237C954F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237C95544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void TimeSeriesClassifier.Model.encode(to:)()
{
  OUTLINED_FUNCTION_13_4();
  v13 = v0;
  v4 = v3;
  v5 = type metadata accessor for LSTMFCN(0);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  _s5ModelV10CodingKeysOMa();
  OUTLINED_FUNCTION_5_8();
  swift_getWitnessTable();
  v14 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_237EFA1B0();
  sub_237C96128(v13, v9);
  sub_237CD7288();
  if (!v1)
  {
    sub_237C9618C();
    sub_237EF9A70();

    sub_237EF8A60();
    swift_getWitnessTable();
    sub_237EF9A70();
    OUTLINED_FUNCTION_3_10(2);
    OUTLINED_FUNCTION_3_10(3);
    OUTLINED_FUNCTION_3_10(4);
    OUTLINED_FUNCTION_3_10(5);
    OUTLINED_FUNCTION_3_10(6);
  }

  (*(v11 + 8))(v2, v14);
  OUTLINED_FUNCTION_12_6();
}

void TimeSeriesClassifier.Model.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v108 = v21;
  v109 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v110 = v31;
  v111 = v33;
  v35 = v34;
  v36 = v22;
  v96 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8);
  OUTLINED_FUNCTION_18(v38);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  v105 = &v94 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8);
  OUTLINED_FUNCTION_18(v41);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  v100 = &v94 - v43;
  v99 = type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5();
  v104 = v46 - v45;
  v113 = v36;
  v114 = v35;
  v115 = v32;
  v116 = v30;
  v117 = v28;
  v118 = v26;
  v119 = v24;
  v120 = a21;
  _s5ModelV10CodingKeysOMa();
  OUTLINED_FUNCTION_5_8();
  swift_getWitnessTable();
  v103 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v106 = v47;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v48);
  v50 = &v94 - v49;
  v113 = v109;
  v114 = v35;
  v102 = v35;
  v115 = v110;
  v116 = v30;
  v98 = v28;
  v117 = v28;
  v118 = v26;
  v101 = v26;
  v119 = v24;
  v120 = a21;
  v97 = a21;
  type metadata accessor for TimeSeriesClassifier.Model();
  OUTLINED_FUNCTION_1();
  v52 = v51;
  OUTLINED_FUNCTION_9();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v94 - v55;
  v107 = v54;
  v57 = *(v54 + 84);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0);
  v109 = v56;
  v110 = v57;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  v62 = v108;
  sub_237EFA190();
  if (v62)
  {
    v66 = v109;
    __swift_destroy_boxed_opaque_existential_1(v111);
    sub_237C65484(v66 + v110, &qword_27DEAE3E8);
  }

  else
  {
    v108 = v58;
    v63 = v104;
    v95 = v52;
    sub_237C961F8();
    v64 = v103;
    sub_237EF9970();
    v65 = v50;
    v67 = v63;
    sub_237CD77C0();
    v68 = v107;
    v69 = v109;
    sub_237C9624C(v67, v109);
    sub_237EF6580();
    OUTLINED_FUNCTION_37_1();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
    sub_237C962B0();
    v74 = v100;
    sub_237EF6770();
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v108);
    sub_237C96308(v74, v69 + v110);
    v75 = v102;
    v76 = v65;
    v77 = sub_237EF8A60();
    v112 = v101;
    swift_getWitnessTable();
    sub_237EF9970();
    swift_getWitnessTable();
    v78 = sub_237E5E22C(&v113, v75, v77);
    v79 = (v69 + v68[22]);
    *v79 = v78;
    v79[1] = v80;
    LOBYTE(v113) = 2;
    v81 = v64;
    v82 = sub_237EF9950();
    v83 = v106;
    *(v69 + v68[23]) = v82;
    OUTLINED_FUNCTION_2_12(3);
    v84 = sub_237EF9950();
    *(v69 + v68[24]) = v84;
    OUTLINED_FUNCTION_2_12(4);
    *(v69 + v68[25]) = sub_237EF9950();
    OUTLINED_FUNCTION_2_12(5);
    v85 = sub_237EF98F0();
    v87 = v84 / 2;
    if ((v86 & 1) == 0)
    {
      v87 = v85;
    }

    *(v69 + v68[26]) = v87;
    OUTLINED_FUNCTION_2_12(6);
    v88 = sub_237EF98F0();
    v90 = v89;
    v91 = v88;
    (*(v83 + 8))(v76, v81);
    if (v90)
    {
      v92 = 0;
    }

    else
    {
      v92 = v91;
    }

    *(v69 + v68[27]) = v92;
    v93 = v95;
    (*(v95 + 16))(v96, v69, v68);
    __swift_destroy_boxed_opaque_existential_1(v111);
    (*(v93 + 8))(v69, v68);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237C95FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = a4;
  *(a1 + 8) = a5 & 1;
  return a2;
}

unint64_t sub_237C96060()
{
  result = qword_27DEAE3C8;
  if (!qword_27DEAE3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE3C0);
    sub_237C96710(&qword_27DEAE3D0, &qword_27DEAE3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE3C8);
  }

  return result;
}

uint64_t sub_237C96128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSTMFCN(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237C9618C()
{
  result = qword_27DEAE3E0;
  if (!qword_27DEAE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE3E0);
  }

  return result;
}

unint64_t sub_237C961F8()
{
  result = qword_27DEAE3F8;
  if (!qword_27DEAE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE3F8);
  }

  return result;
}

uint64_t sub_237C9624C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LSTMFCN(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237C962B0()
{
  result = qword_27DEAE400[0];
  if (!qword_27DEAE400[0])
  {
    type metadata accessor for LSTMFCN(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEAE400);
  }

  return result;
}

uint64_t sub_237C96308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237C96378(uint64_t a1)
{
  v2 = type metadata accessor for LSTMFCN(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237C963DC()
{
  type metadata accessor for LSTMFCN(319);
  if (v0 <= 0x3F)
  {
    sub_237C964C0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LabelEncoder();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237C964C0()
{
  if (!qword_27DEAE488[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE3F0);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, qword_27DEAE488);
    }
  }
}

uint64_t getEnumTagSinglePayload for CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_237C965B4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237C966D4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_237C95FB8(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237C96710(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_237C96758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_10@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;

  return sub_237EF9A50();
}

uint64_t OUTLINED_FUNCTION_14_4()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return sub_237EF7E20();
}

uint64_t sub_237C96904()
{
  v1 = [objc_opt_self() authorizationStatusForMediaType_];
  if (v1 == 2)
  {
    v3 = 0;
    goto LABEL_9;
  }

  if (v1 == 1)
  {
    v3 = 1;
LABEL_9:
    sub_237C9855C();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
    v5 = *(v0 + 8);
    goto LABEL_11;
  }

  if (!v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_237C96A90;
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822008A0]();
  }

  v5 = *(v0 + 8);
LABEL_11:

  return v5();
}

uint64_t sub_237C96A90()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 24) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t AudioReader.MicrophoneAsyncBuffers.makeAsyncIterator()()
{
  v1 = *v0;
  type metadata accessor for AudioReader.MicrophoneAsyncBuffers.Iterator();
  OUTLINED_FUNCTION_4_10();
  v2 = swift_allocObject();
  sub_237C96EA4(v1);
  return v2;
}

void sub_237C96C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE578);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277CE5E48];
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_237C985B0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237DB54F0;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [v6 requestAccessForMediaType:v7 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_237C96DEC(char a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE578);
    return sub_237EF8AF0();
  }

  else
  {
    sub_237C9855C();
    swift_allocError();
    *v2 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE578);
    return sub_237EF8AE0();
  }
}

uint64_t sub_237C96E7C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioReader.MicrophoneAsyncBuffers.makeAsyncIterator()();
  *a1 = result;
  return result;
}

uint64_t sub_237C96EA4(unint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  _s8ObserverCMa();
  v5 = swift_allocObject();
  sub_237C97B2C(v4, a1);
  *(v2 + 16) = v5;

  sub_237C96F30();

  return v2;
}

void sub_237C96F30()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v13[0] = 0;
  if ([v1 startAndReturnError_])
  {

    MEMORY[0x2821F9840]();
  }

  else
  {
    v2 = v13[0];
    v3 = sub_237EF5DC0();

    swift_willThrow();
    v4 = v3;
    v5 = sub_237EF7D90();
    v6 = sub_237EF8F80();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13[0] = v8;
      *v7 = 136315138;
      v9 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030);
      v10 = sub_237EF85D0();
      v12 = sub_237DAFA64(v10, v11, v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_237C51000, v5, v6, "Could not start audio engine session with error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2383E2DF0](v8, -1, -1);
      MEMORY[0x2383E2DF0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t AudioReader.MicrophoneAsyncBuffers.Iterator.deinit()
{
  [*(*(v0 + 16) + 16) stop];

  return v0;
}

uint64_t AudioReader.MicrophoneAsyncBuffers.Iterator.__deallocating_deinit()
{
  AudioReader.MicrophoneAsyncBuffers.Iterator.deinit();
  OUTLINED_FUNCTION_4_10();

  return swift_deallocClassInstance();
}

uint64_t AudioReader.MicrophoneAsyncBuffers.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[11] = v2;
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE530);
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C97238()
{
  OUTLINED_FUNCTION_2_0();
  v0[14] = *(v0[12] + 16);
  v1 = swift_task_alloc();
  v0[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE538);
  *v1 = v0;
  v1[1] = sub_237C9731C;
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_237C9731C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_237C97404()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE540);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_continuation;
  swift_beginAccess();
  sub_237C97610(v2, v1 + v7);
  swift_endAccess();
  *v3 = v11;
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_237C974F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE540);
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_continuation;
  swift_beginAccess();
  sub_237C97610(v6, a2 + v8);
  return swift_endAccess();
}

uint64_t sub_237C97610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE530);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237C97680(uint64_t a1)
{
  result = sub_237C976A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237C976A8()
{
  result = qword_27DEAE548;
  if (!qword_27DEAE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE548);
  }

  return result;
}

unint64_t sub_237C97700()
{
  result = qword_27DEAE550;
  if (!qword_27DEAE550)
  {
    type metadata accessor for AudioReader.MicrophoneAsyncBuffers.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE550);
  }

  return result;
}

uint64_t sub_237C97754()
{
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C977EC;

  return AudioReader.MicrophoneAsyncBuffers.Iterator.next()();
}

uint64_t sub_237C977EC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237C978D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237C9799C;

  return (sub_237DB4CFC)(a1, a2, a3);
}

uint64_t sub_237C9799C()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t _s22MicrophoneAsyncBuffersVwet(uint64_t a1, int a2)
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

uint64_t _s22MicrophoneAsyncBuffersVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_237C97B2C(void *a1, unint64_t a2)
{
  sub_237EF7DA0();
  v5 = OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE540);
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  *(v2 + 16) = a1;
  v7 = a1;
  sub_237C97BE8(a2);

  return v2;
}

void sub_237C97BE8(unint64_t a1)
{
  v3 = [*(v1 + 16) inputNode];
  v4 = [v3 numberOfInputs];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  if (!v4)
  {
LABEL_9:
    oslog = sub_237EF7D90();
    v10 = sub_237EF8F80();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_237C51000, oslog, v10, "Failed to set up audio session. There are no valid input nodes in the audio engine.", v11, 2u);
      MEMORY[0x2383E2DF0](v11, -1, -1);
    }

    return;
  }

  v6 = 0;
  while (1)
  {
    v7 = [v3 inputFormatForBus_];
    if (![v7 channelCount])
    {

      goto LABEL_8;
    }

    [v7 sampleRate];
    v9 = v8;

    if (v9 > 0.0)
    {
      break;
    }

LABEL_8:
    if (v5 == ++v6)
    {
      goto LABEL_9;
    }
  }

  v12 = [v3 inputFormatForBus_];
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (!HIDWORD(a1))
  {
    v13 = v12;
    OUTLINED_FUNCTION_4_10();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    aBlock[4] = sub_237C98644;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_237C98218;
    aBlock[3] = &block_descriptor_28;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    [v3 installTapOnBus:v6 bufferSize:a1 format:v17 block:v16];
    _Block_release(v16);

    return;
  }

LABEL_19:
  __break(1u);
}

id sub_237C97EA0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE530);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE540);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    return sub_237C984F4(v12);
  }

  v18 = Strong;
  v31[0] = v10;
  v19 = OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_continuation;
  swift_beginAccess();
  sub_237C9864C(v18 + v19, v12);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_237C984F4(v12);
  }

  (*(v14 + 32))(v16, v12, v13);
  v20 = [a2 sampleTime];
  v21 = [a2 sampleTime];
  result = [a1 frameLength];
  v23 = __OFADD__(v21, result);
  v24 = v21 + result;
  if (v23)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 < v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [a4 sampleRate];
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v31[4] = 0xD000000000000028;
  v31[5] = 0x8000000237EFBB10;
  v31[6] = v20;
  v31[7] = v24;
  v31[8] = v25;
  v31[9] = a1;
  v26 = a1;
  sub_237EF8260();
  v27 = v26;
  sub_237EF8AF0();
  swift_beginAccess();
  v28 = swift_weakLoadStrong();

  result = (*(v14 + 8))(v16, v13);
  if (v28)
  {
    v29 = v31[0];
    __swift_storeEnumTagSinglePayload(v31[0], 1, 1, v13);
    v30 = OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_continuation;
    swift_beginAccess();
    sub_237C97610(v29, v28 + v30);
    swift_endAccess();
  }

  return result;
}

void sub_237C98218(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_237C9829C()
{
  v1 = OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_logger;
  sub_237EF7DB0();
  OUTLINED_FUNCTION_3_11();
  (*(v2 + 8))(v0 + v1);
  sub_237C984F4(v0 + OBJC_IVAR____TtCV18CreateMLComponents11AudioReader8Observer_continuation);
  return v0;
}

uint64_t sub_237C98308()
{
  sub_237C9829C();

  return swift_deallocClassInstance();
}

uint64_t _s8ObserverCMa()
{
  result = qword_27DEAE558;
  if (!qword_27DEAE558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237C983B4()
{
  sub_237EF7DB0();
  if (v0 <= 0x3F)
  {
    sub_237C98490();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_237C98490()
{
  if (!qword_27DEAE568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE540);
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEAE568);
    }
  }
}

uint64_t sub_237C984F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237C9855C()
{
  result = qword_27DEAE570;
  if (!qword_27DEAE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE570);
  }

  return result;
}

uint64_t sub_237C985B0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE578);

  return sub_237C96DEC(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237C9864C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SGDDenseLayer()
{
  result = qword_27DEAE580;
  if (!qword_27DEAE580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237C98768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v9 = sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = type metadata accessor for FullyConnectedNetwork();
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v27 - v23;
  sub_237C99FE8(a2, &v27 - v23);
  sub_237C9A058(a3, v20, type metadata accessor for FullyConnectedNetwork);
  (*(v11 + 16))(v15, a1, v9);
  v25 = v29;
  result = sub_237C98914(v24, v20, v15, a5);
  if (v25)
  {
    *v28 = v25;
  }

  return result;
}

uint64_t sub_237C98914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v80 = &v73 - v9;
  v85 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v89 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v81 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  v94 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v79 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  MEMORY[0x28223BE20](v28);
  v88 = &v73 - v29;
  v30 = *(type metadata accessor for SGDDenseLayer() + 20);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  v90 = a4;
  v84 = v31;
  __swift_storeEnumTagSinglePayload(a4 + v30, 1, 1, v31);
  if (!sub_237C624D0())
  {
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000002ALL, 0x8000000237EFBB40);
    v39 = sub_237EF6820();
    sub_237EF9670();
    v40 = v92;
    v41 = v93;
    sub_237C6514C();
    swift_allocError();
    *v42 = v40;
    v42[1] = v41;
    swift_willThrow();
    (*(*(v39 - 8) + 8))(a3, v39);
    OUTLINED_FUNCTION_0_11();
    sub_237C9A0C0(a2, v43);
    sub_237C9A114(v91, &qword_27DEAE5E8);
    goto LABEL_5;
  }

  v86 = a3;
  v87 = a2;
  v82 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  v33 = v91;
  v34 = *(v32 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300);
  sub_237EF6640();
  if (__swift_getEnumTagSinglePayload(v20, 1, v94) == 1)
  {
    sub_237C9A114(v20, &qword_27DEAD2C0);
    sub_237C6514C();
    v35 = swift_allocError();
    OUTLINED_FUNCTION_7_8(v35, v36);

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v37 + 8))(v86);
    OUTLINED_FUNCTION_0_11();
    sub_237C9A0C0(v87, v38);
    sub_237C9A114(v33, &qword_27DEAE5E8);
    v30 = v82;
LABEL_5:
    v44 = v90;
    return sub_237C9A114(v44 + v30, &qword_27DEAD600);
  }

  v46 = v22[4];
  v47 = v88;
  v48 = v94;
  v77 = v22 + 4;
  v78 = v34;
  v76 = v46;
  v46(v88, v20, v94);
  v75 = v22[2];
  v75(v27, v47, v48);
  sub_237EF6A30();
  sub_237EF6440();
  v49 = *(v89 + 8);
  v89 += 8;
  v74 = v49;
  v50 = v49(v14, v85);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_7();
  v51 = v83;
  sub_237EF7DE0();
  v83 = v51;
  v52 = v22[1];
  v52(v27, v48);
  v54 = v86;
  v53 = v87;
  v55 = sub_237C62628();
  if (!v55)
  {

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v62 + 8))(v54);
    OUTLINED_FUNCTION_0_11();
    sub_237C9A0C0(v53, v63);
    sub_237C9A114(v91, &qword_27DEAE5E8);
    v52(v88, v94);
    v64 = v82;
    v65 = v90;
    sub_237C9A114(v90 + v82, &qword_27DEAD600);
    return __swift_storeEnumTagSinglePayload(v65 + v64, 1, 1, v84);
  }

  v73 = v52;
  v56 = v91;
  v57 = v81;
  v78 = v55;
  sub_237EF6640();
  if (__swift_getEnumTagSinglePayload(v57, 1, v94) != 1)
  {
    v66 = v79;
    v67 = v94;
    v76(v79, v57, v94);
    v75(v27, v66, v67);
    sub_237EF6A30();
    sub_237EF6440();
    v68 = v74(v14, v85);
    MEMORY[0x28223BE20](v68);
    OUTLINED_FUNCTION_8_7();
    v69 = v80;
    sub_237EF7DE0();
    v70 = v73;
    v73(v27, v67);

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v71 + 8))(v86);
    OUTLINED_FUNCTION_0_11();
    sub_237C9A0C0(v87, v72);
    sub_237C9A114(v91, &qword_27DEAE5E8);
    v70(v66, v67);
    v70(v88, v67);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v84);
    return sub_237C6FC94(v69, v90 + v82);
  }

  sub_237C9A114(v57, &qword_27DEAD2C0);
  sub_237C6514C();
  v58 = swift_allocError();
  OUTLINED_FUNCTION_7_8(v58, v59);

  sub_237EF6820();
  OUTLINED_FUNCTION_3_11();
  (*(v60 + 8))(v86);
  OUTLINED_FUNCTION_0_11();
  sub_237C9A0C0(v87, v61);
  sub_237C9A114(v56, &qword_27DEAE5E8);
  v73(v88, v94);
  v44 = v90;
  (*(*(v84 - 8) + 8))(v90);
  v30 = v82;
  return sub_237C9A114(v44 + v30, &qword_27DEAD600);
}

uint64_t sub_237C99220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885697139 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x697469636F6C6576 && a2 == 0xEA00000000007365)
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

uint64_t sub_237C9933C(char a1)
{
  if (!a1)
  {
    return 1885697139;
  }

  if (a1 == 1)
  {
    return 0x676E696E7261656CLL;
  }

  return 0x697469636F6C6576;
}

uint64_t sub_237C99398(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE590);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C99E74();
  sub_237EFA1B0();
  v16 = 0;
  sub_237EF9A50();
  if (!v3)
  {
    v15 = 1;
    sub_237EF9A40();
    v14 = a3;
    v13[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5A0);
    sub_237C99EC8(&qword_27DEAE5A8, &qword_27DEAE5B0);
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

float sub_237C9958C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5B8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C99E74();
  sub_237EFA190();
  v11[31] = 0;
  sub_237EF9950();
  v11[30] = 1;
  sub_237EF9940();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5A0);
  v11[29] = 2;
  sub_237C99EC8(&qword_27DEAE5C0, &qword_27DEAE5C8);
  sub_237EF9970();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_237C997C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C99220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237C997F0(uint64_t a1)
{
  v2 = sub_237C99E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237C9982C(uint64_t a1)
{
  v2 = sub_237C99E74();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237C99868(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_237C9958C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t sub_237C998C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C99F94();
  sub_237EFA1B0();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  sub_237C86400(&qword_27DEADE78);
  OUTLINED_FUNCTION_2_7();
  sub_237EF9A70();
  if (!v1)
  {
    type metadata accessor for SGDDenseLayer();
    v10[14] = 1;
    OUTLINED_FUNCTION_2_7();
    sub_237EF9A00();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237C99A54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0);
  OUTLINED_FUNCTION_1();
  v25 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5D0);
  OUTLINED_FUNCTION_1();
  v26 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = type metadata accessor for SGDDenseLayer();
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v21 = *(v20 + 28);
  __swift_storeEnumTagSinglePayload(v18 - v17 + v21, 1, 1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C99F94();
  v22 = v29;
  sub_237EFA190();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237C9A114(v19 + v21, &qword_27DEAD600);
  }

  else
  {
    v29 = v6;
    v31 = 0;
    sub_237C86400(&qword_27DEADE88);
    OUTLINED_FUNCTION_4_6();
    sub_237EF9970();
    (*(v25 + 32))(v19, v27, v7);
    v30 = 1;
    OUTLINED_FUNCTION_4_6();
    sub_237EF9900();
    (*(v26 + 8))(v14, v28);
    sub_237C6FC94(v29, v19 + v21);
    sub_237C9A058(v19, v24, type metadata accessor for SGDDenseLayer);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237C9A0C0(v19, type metadata accessor for SGDDenseLayer);
  }
}

uint64_t sub_237C99DCC(uint64_t a1)
{
  v2 = sub_237C99F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237C99E08(uint64_t a1)
{
  v2 = sub_237C99F94();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_237C99E74()
{
  result = qword_27DEAE598;
  if (!qword_27DEAE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE598);
  }

  return result;
}

uint64_t sub_237C99EC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAE5A0);
    sub_237C99F50(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237C99F50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SGDDenseLayer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237C99F94()
{
  result = qword_27DEAE5D8;
  if (!qword_27DEAE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE5D8);
  }

  return result;
}

uint64_t sub_237C99FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE5E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237C9A058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237C9A0C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_11();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237C9A114(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_3_11();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SGDDenseLayer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SGDStorage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237C9A324()
{
  result = qword_27DEAE5F0;
  if (!qword_27DEAE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE5F0);
  }

  return result;
}

unint64_t sub_237C9A37C()
{
  result = qword_27DEAE5F8;
  if (!qword_27DEAE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAE5F8);
  }

  return result;
}