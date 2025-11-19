unint64_t sub_23B989B18()
{
  result = qword_27E198358;
  if (!qword_27E198358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198360);
    sub_23B989428();
    sub_23B989BD4(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198358);
  }

  return result;
}

uint64_t sub_23B989BD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B989C20()
{
  result = qword_27E198370;
  if (!qword_27E198370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198350);
    sub_23B989CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198370);
  }

  return result;
}

unint64_t sub_23B989CAC()
{
  result = qword_27E198378;
  if (!qword_27E198378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198328);
    sub_23B989D64();
    sub_23B97B518(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198378);
  }

  return result;
}

unint64_t sub_23B989D64()
{
  result = qword_27E198380;
  if (!qword_27E198380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198330);
    sub_23B97B518(&qword_27E198338, &qword_27E198330);
    sub_23B9898BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198380);
  }

  return result;
}

unint64_t sub_23B989E78()
{
  result = qword_27E198398;
  if (!qword_27E198398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198398);
  }

  return result;
}

uint64_t sub_23B989ECC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t sub_23B989F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  v45 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  OUTLINED_FUNCTION_3_2();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = v17;
  v18 = *(v15 + 40);
  v39 = *(v15 + 24);
  v40 = v18;
  v19 = type metadata accessor for AdaptivePageView();
  v43 = v19;
  v38 = *(a1 + 32);
  v20 = v38;
  v42 = OUTLINED_FUNCTION_5_2();
  v48 = v11;
  v49 = v19;
  v50 = v20;
  v51 = v42;
  v41 = sub_23BBDAEC8();
  v21 = sub_23BBDBE28();
  OUTLINED_FUNCTION_3_2();
  v44 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v37 - v27;
  (*(v13 + 16))(v17, v2, v11);
  v29 = v10;
  (*(v5 + 16))(v10, v2, a1);
  v30 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v31 = swift_allocObject();
  *&v32 = v11;
  *(&v32 + 1) = v39;
  *&v33 = v38;
  *(&v33 + 1) = v40;
  *(v31 + 16) = v32;
  *(v31 + 32) = v33;
  (*(v5 + 32))(v31 + v30, v29, a1);
  sub_23BBDBE08();
  OUTLINED_FUNCTION_4_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  v34 = swift_getWitnessTable();
  sub_23B9D2D88(v26, v21, v34);
  v35 = *(v44 + 8);
  v35(v26, v21);
  sub_23B9D2D88(v28, v21, v34);
  return (v35)(v28, v21);
}

uint64_t sub_23B98A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a3;
  v32 = a5;
  v29 = a2;
  v30 = a1;
  v33 = a7;
  v9 = sub_23BBDC138();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_23BBDAA98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a6;
  v16 = type metadata accessor for AdaptivePageView();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  (*(v13 + 16))(v15, v30, v12);
  v34 = v31;
  v35 = a4;
  v36 = v32;
  v37 = a6;
  v23 = type metadata accessor for PageView();
  v24 = *(v29 + *(v23 + 52));
  LOBYTE(v13) = *(v29 + *(v23 + 56));

  sub_23B989F4C();
  sub_23B98A578(v15, v24, v13, v11, v20);
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v20, v16, WitnessTable);
  v26 = *(v17 + 8);
  v26(v20, v16);
  sub_23B9D2D88(v22, v16, WitnessTable);
  return (v26)(v22, v16);
}

uint64_t sub_23B98A578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_23BBDAA98();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for AdaptivePageView();
  *(a5 + v11[9]) = a2;
  *(a5 + v11[10]) = a3;
  v12 = v11[11];
  v13 = sub_23BBDC138();
  (*(*(v13 - 8) + 32))(a5 + v12, a4, v13);
  v14 = a5 + v11[12];
  result = sub_23B98E7F0();
  *v14 = result;
  *(v14 + 8) = v16 & 1;
  *(v14 + 16) = v17;
  return result;
}

uint64_t sub_23B98A6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for PageView();
  *(a6 + v10[13]) = a2;
  *(a6 + v10[14]) = a3;
  v11 = v10[15];
  v12 = sub_23BBDC138();
  return (*(*(v12 - 8) + 32))(a6 + v11, a4, v12);
}

uint64_t sub_23B98A818()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23BBDA288();
    result = sub_23BBDDC08();
    if (v2 <= 0x3F)
    {
      result = sub_23BBDC138();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23B98A8D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v5 - 8) + 64);
  v11 = *(v7 + 80);
  if (v6 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(*(v5 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v11 | 7;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v15 = *(*(v4 - 8) + 64) - ((-17 - v11) | v11) - ((-10 - (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v13)) | v13) - 2;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_28:
      if (v6 >= v9)
      {
        v8 = *(*(v5 - 8) + 84);
        v4 = v5;
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) == 0)
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }

        a1 = ((v11 + ((((v23 + v13 + 9) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11);
      }

      return __swift_getEnumTagSinglePayload(a1, v8, v4);
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_28;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (*(*(v4 - 8) + 64) - ((-17 - v11) | v11) - ((-10 - (((v10 + 7) & 0xFFFFFFF8) + v13)) | v13) == 2)
  {
    v22 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v21 = *(*(v4 - 8) + 64) - ((-17 - v11) | v11) - ((-10 - (((v10 + 7) & 0xFFFFFFF8) + v13)) | v13) - 2;
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

  return v12 + (v22 | v20) + 1;
}

void sub_23B98AB20(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(*(v7 - 8) + 84);
  }

  v13 = *(*(v7 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = -2 - (((-17 - v14) | v14) - *(*(v6 - 8) + 64) + ((-17 - v13 - (v14 | 7)) | v14 | 7));
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

  if (v12 < a2)
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
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v15] = v21;
        return;
      case 2:
        *&a1[v15] = v21;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v15] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x23B98AE14);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v8 >= v11)
      {
        v27 = a1;
        v10 = v8;
        v6 = v7;
      }

      else
      {
        v25 = (&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *v25 = v26;
          return;
        }

        v27 = (v14 + ((((v25 + (v14 | 7) + 9) & ~(v14 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
      }

      __swift_storeEnumTagSinglePayload(v27, a2, v10, v6);
      return;
  }
}

uint64_t sub_23B98AEC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_23BBDC138();
  sub_23BBDC0F8();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_23B98AFC0(uint64_t a1)
{
  v2 = sub_23BBDA188();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_23BBDBF58();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_23B98B0D4()
{
  v2 = *(v0 + 16);
  v9 = *(v0 + 24);
  type metadata accessor for PageView();
  OUTLINED_FUNCTION_20_1();
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  (*(*(v2 - 8) + 8))(v4, v2);

  v5 = v4 + *(v1 + 68);

  OUTLINED_FUNCTION_21_1();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v6 + 8))(v5 + v7, v9);
  OUTLINED_FUNCTION_6_2();
  return swift_deallocObject();
}

uint64_t sub_23B98B21C()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for PageView();
  OUTLINED_FUNCTION_13_0(v3);
  v4 = OUTLINED_FUNCTION_1_3();

  return sub_23B98A2D4(v4, v5, v6, v7, v1, v2, v8);
}

uint64_t sub_23B98B2B8(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v16[15];
  }

  if (v9 > 1)
  {
    v14 = 0;
  }

  else
  {
    v11 = v1 + *(a1 + 60);
    v12 = *v11;
    if (*(v11 + 8) != 1)
    {

      sub_23BBDD5A8();
      v13 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v16[14];
    }

    v14 = v12 ^ 1;
  }

  return v14 & 1;
}

uint64_t sub_23B98B4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v32 = v7;
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = sub_23BBDC138();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = sub_23B98B2B8(a1);
  if (v14)
  {
    v31 = a2;
    MEMORY[0x28223BE20](v14);
    v27 = *(a1 + 24);
    v15 = v27;
    v28 = v13;
    *(&v27 - 2) = v9;
    *(&v27 - 1) = v15;
    KeyPath = swift_getKeyPath();
    v29 = v10;
    v30 = v11;
    v17 = KeyPath;
    v18 = *(v5 + 16);
    v18(v8, v2, a1);
    sub_23BAD2624(v17, v8, v13);
    v19 = swift_allocObject();
    v20 = v27;
    *(v19 + 16) = v9;
    *(v19 + 24) = v20;
    v18(v8, v2, a1);
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v9;
    *(v22 + 24) = v20;
    (*(v5 + 32))(v22 + v21, v8, a1);
    v23 = sub_23BBDA188();
    v25 = v28;
    v24 = v29;
    sub_23BAD2888(sub_23B994284, v19, sub_23B994414, v22, v29, v23, v31);

    return (*(v30 + 8))(v25, v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610);
    return sub_23BBDBF88();
  }
}

uint64_t sub_23B98B7F4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v6 - v1;
  (*(v3 + 16))(&v6 - v1);
  v4 = type metadata accessor for PageViewInternal();
  return sub_23B98AEC4(v2, v4);
}

uint64_t sub_23B98B8C8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_23BBDA148();
}

uint64_t sub_23B98B9A4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDD648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_23BBDA168();
  if (__swift_getEnumTagSinglePayload(v7, 1, a1) != 1)
  {
    return (*(*(a1 - 8) + 32))(a2, v7, a1);
  }

  type metadata accessor for PageViewInternal();
  sub_23B98AE80();
  result = __swift_getEnumTagSinglePayload(v7, 1, a1);
  if (result != 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_23B98BB18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B98AE80();
  v6 = sub_23B98BBF8(v5, a1);
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_23B98BBF8(uint64_t a1, uint64_t a2)
{
  v3[1] = *(a2 + 16);
  v4 = a1;
  return sub_23B98E2E4(sub_23B993F24, v3);
}

uint64_t sub_23B98BC4C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23BBDD648();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(v6 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v19 - v17;
  if ((a2 & 1) == 0)
  {
    sub_23B98BE58(a1, a3, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v6) == 1)
    {
      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v12 + 32))(v18, v11, v6);
      (*(v12 + 16))(v15, v18, v6);
      sub_23B98AEC4(v15, a3);
      return (*(v12 + 8))(v18, v6);
    }
  }

  return result;
}

uint64_t sub_23B98BE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = sub_23BBDA288();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDC208();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23B98E518() > a1 || v13 <= a1)
  {
    v15 = *(a2 + 16);
    v16 = v20;

    return __swift_storeEnumTagSinglePayload(v16, 1, 1, v15);
  }

  else
  {
    sub_23BBDAAA8();
    sub_23BBDC1D8();
    (*(v10 + 8))(v12, v9);
    v17 = v20;
    swift_getAtKeyPath();
    (*(v6 + 8))(v8, v5);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, *(a2 + 16));
  }
}

uint64_t sub_23B98C064(uint64_t a1)
{
  v3 = sub_23BBDA188();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = sub_23BBDD648();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  if (sub_23B98B2B8(a1))
  {
    return sub_23B98BB18(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610);
  sub_23BBDBF68();
  v13 = *(a1 + 24);
  sub_23BBDA168();
  (*(v4 + 8))(v6, v3);
  v14 = sub_23B98C2C8(v1, v7, v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18[-4] = v7;
  v18[-3] = v13;
  v18[-2] = v17;
  v18[-1] = v16;
  sub_23BA8D4D0();
  (*(v9 + 8))(v11, v8);

  return v18[2];
}

uint64_t (*sub_23B98C2C8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = type metadata accessor for PageViewInternal();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  return sub_23B993EB8;
}

uint64_t sub_23B98C444(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = *(v2 + 16);
  v19(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BBDD308();
  v4 = sub_23BBDD2F8();
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 2) = v4;
  *(v6 + 3) = v7;
  v8 = *(a1 + 16);
  v17 = *(a1 + 24);
  v9 = v17;
  v18 = v8;
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  v10 = *(v2 + 32);
  v10(&v6[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (v19)(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20, a1);
  v11 = sub_23BBDD2F8();
  v12 = swift_allocObject();
  *(v12 + 2) = v11;
  v13 = v17;
  v14 = v18;
  *(v12 + 3) = MEMORY[0x277D85700];
  *(v12 + 4) = v14;
  *(v12 + 5) = v13;
  v10(&v12[v5], &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_23BBDC128();
  return v21;
}

uint64_t sub_23B98C63C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PageViewInternal();
  result = sub_23B98BB18(v2);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_23B98C680(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PageViewInternal();
  return sub_23B98BC4C(v1, 0, v2);
}

uint64_t sub_23B98C6C4()
{
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150]);
  sub_23BBDD438();
  sub_23BBDD4A8();
  return sub_23BBDD498();
}

BOOL sub_23B98C768(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = *v7;
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v12[15];
  }

  return v9 < 2;
}

double sub_23B98C8C8(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
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
    LOBYTE(v8) = v11[15];
  }

  return dbl_23BBE5900[v8];
}

uint64_t sub_23B98CA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v95 = *(a1 - 8);
  v96 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v94 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = *(v3 + 16);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_23BBDAD18();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985A0);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = v62 - v8;
  v83 = sub_23BBDAA98();
  v78 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v76 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for PageViewScrollView();
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v75 = v62 - v12;
  WitnessTable = swift_getWitnessTable();
  v103 = v11;
  v104 = WitnessTable;
  v14 = WitnessTable;
  v64 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v69 = v62 - v15;
  sub_23BBDB038();
  v16 = sub_23BBDA358();
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v73 = v62 - v17;
  v103 = v11;
  v104 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = OpaqueTypeConformance2;
  v19 = sub_23B995050(&qword_27E1985A8, MEMORY[0x277CE0660]);
  v109 = OpaqueTypeConformance2;
  v110 = v19;
  v20 = swift_getWitnessTable();
  v103 = v16;
  v104 = v20;
  v21 = v20;
  v62[1] = v20;
  v65 = swift_getOpaqueTypeMetadata2();
  v79 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = v62 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985B0);
  v23 = sub_23BBDA358();
  v72 = v23;
  v89 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v68 = v62 - v24;
  v103 = v16;
  v104 = v21;
  v25 = swift_getOpaqueTypeConformance2();
  v62[2] = v25;
  v26 = sub_23B97B518(&qword_27E1985B8, &qword_27E1985B0);
  v107 = v25;
  v108 = v26;
  v71 = swift_getWitnessTable();
  v70 = *(v10 + 8);
  v103 = v23;
  v104 = v99;
  v105 = v71;
  v106 = v70;
  v80 = MEMORY[0x277CE0E40];
  v81 = swift_getOpaqueTypeMetadata2();
  v82 = *(v81 - 8);
  v27 = MEMORY[0x28223BE20](v81);
  v67 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = v62 - v29;
  v30 = v76;
  v31 = v84;
  (*(v78 + 16))(v76, v84, v83);
  v32 = a1;
  v33 = *(v31 + *(a1 + 36));

  v34 = sub_23B98C8C8(a1);
  v35 = v75;
  sub_23B98D664(v30, v33, *(v31 + *(a1 + 44)), v75, v34);
  v36 = v88;
  sub_23B98B4D4(a1, v88);
  sub_23BBDC448();
  v37 = v69;
  sub_23BBDB868();
  sub_23B9846E8(v36, &qword_27E1985A0);
  (*(v87 + 8))(v35, v11);
  v38 = sub_23BBDB388();
  *&v39 = sub_23B98C8C8(a1);
  v40 = v73;
  v41 = OpaqueTypeMetadata2;
  sub_23BB2FA54(v38, v39, 0, OpaqueTypeMetadata2, v66);
  (*(v86 + 8))(v37, v41);
  sub_23B993AF0();
  v42 = v90;
  sub_23BBDAFA8();
  v43 = v63;
  sub_23BBDB878();
  (*(v91 + 8))(v42, v92);
  (*(v85 + 8))(v40, v16);
  v44 = v99;
  v100 = v99;
  v101 = v10;
  v45 = v10;
  v102 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985C8);
  sub_23B993B50();
  v46 = v65;
  sub_23B9BE15C();
  v47 = v68;
  sub_23BBDB808();
  (*(v79 + 8))(v43, v46);
  v48 = v93;
  sub_23B98AE80();
  v50 = v94;
  v49 = v95;
  (*(v95 + 16))(v94, v31, v32);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  *(v52 + 24) = v45;
  (*(v49 + 32))(v52 + v51, v50, v32);
  v53 = v72;
  v54 = v71;
  v55 = v70;
  OUTLINED_FUNCTION_0_2();
  v56 = v67;
  sub_23BBDBC18();

  (*(v97 + 8))(v48, v44);
  (*(v89 + 8))(v47, v53);
  v103 = v53;
  v104 = v44;
  v105 = v54;
  v106 = v55;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v74;
  v59 = v81;
  sub_23B9D2D88(v56, v81, v57);
  v60 = *(v82 + 8);
  v60(v56, v59);
  sub_23B9D2D88(v58, v59, v57);
  return (v60)(v58, v59);
}

uint64_t sub_23B98D664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_23BBDAA98();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for PageViewScrollView();
  *(a4 + v11[9]) = a2;
  *(a4 + v11[10]) = a5;
  *(a4 + v11[11]) = a3;
  v12 = a4 + v11[12];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_23B98D768@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985E0);
  MEMORY[0x28223BE20](v2);
  v4 = v27 - v3;
  v5 = type metadata accessor for PageViewInternal();
  if (sub_23B98C768(v5))
  {
    v6 = sub_23B98C444(v5);
    v8 = v7;
    v10 = v9;
    v11 = sub_23B98C6C4();
    v12 = sub_23BBDB3A8();
    sub_23BBD9B18();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v29[0] = 0;
    v21 = sub_23BBDB3B8();
    sub_23BBD9B18();
    v28 = 0;
    v27[0] = v6;
    v27[1] = v8;
    v27[2] = v10;
    v27[3] = v11;
    LOBYTE(v27[4]) = v12;
    v27[5] = v14;
    v27[6] = v16;
    v27[7] = v18;
    v27[8] = v20;
    LOBYTE(v27[9]) = 0;
    LOBYTE(v27[10]) = v21;
    v27[11] = v22;
    v27[12] = v23;
    v27[13] = v24;
    v27[14] = v25;
    LOBYTE(v27[15]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985F0);
    sub_23B993CBC(&qword_27E1985E8, &qword_27E1985F0, &unk_23BBE55D8, sub_23B993D2C);
    sub_23BBDB958();
    memcpy(v29, v27, 0x79uLL);
    sub_23B9846E8(v29, &qword_27E1985F0);
    sub_23B993F48(v4, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_23B98D9D4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_23BBDD648();
  v35 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v32 - v9;
  v11 = *(v3 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  result = sub_23B98B2B8(a1);
  if (result)
  {
    return result;
  }

  result = sub_23B98BB18(a1);
  if (v18)
  {
    return result;
  }

  v19 = floor(*(v1 + *(a1 + 40)));
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = result;
  v34 = v11;
  v21 = v19;
  result = sub_23B98C064(a1);
  if (v22)
  {
    if (v20 >= v21)
    {
      v23 = sub_23BBDC358();
      MEMORY[0x28223BE20](v23);
      v24 = *(a1 + 24);
      v32[-4] = v3;
      v32[-3] = v24;
      v32[-2] = v1;
      sub_23BBDA038();
    }

    return result;
  }

  v25 = result + v21;
  if (__OFADD__(result, v21))
  {
    goto LABEL_25;
  }

  v26 = v34;
  if (v20 >= v25)
  {
    v33 = result;
    v27 = __OFADD__(result++, 1);
    if (v27)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    sub_23B98BE58(result, a1, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
    {
      (*(v35 + 8))(v10, v4);
    }

    else
    {
      (*(v26 + 32))(v16, v10, v3);
      v28 = sub_23BBDC358();
      v32[1] = v32;
      MEMORY[0x28223BE20](v28);
      v29 = *(a1 + 24);
      v32[-4] = v3;
      v32[-3] = v29;
      v32[-2] = v1;
      v32[-1] = v16;
      sub_23BBDA038();

      v26 = v34;
      (*(v34 + 8))(v16, v3);
    }

    result = v33;
  }

  v27 = __OFSUB__(result--, 1);
  if (v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (result >= v20)
  {
    sub_23B98BE58(result, a1, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
    {
      return (*(v35 + 8))(v7, v4);
    }

    else
    {
      (*(v26 + 32))(v14, v7, v3);
      v30 = sub_23BBDC358();
      MEMORY[0x28223BE20](v30);
      v31 = *(a1 + 24);
      v32[-4] = v3;
      v32[-3] = v31;
      v32[-2] = v1;
      v32[-1] = v14;
      sub_23BBDA038();

      return (*(v26 + 8))(v14, v3);
    }
  }

  return result;
}

uint64_t sub_23B98DE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  v4 = sub_23BBDA188();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v11[0] = a2;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageViewInternal();
  sub_23B98AE80();
  sub_23BBDC458();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610);
  sub_23BBDBF68();
  v9 = v11[0];
  sub_23BBDA178();
  (*(v6 + 8))(v8, v9);
  return sub_23BBDBF78();
}

uint64_t sub_23B98E014()
{
  v0 = sub_23BBDA188();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  MEMORY[0x28223BE20](v1);
  sub_23BBDC448();
  type metadata accessor for PageViewInternal();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610);
  sub_23BBDBF68();
  sub_23BBDA178();
  return sub_23BBDBF78();
}

uint64_t sub_23B98E124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a3;
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDA288();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDC1D8();
  type metadata accessor for PageViewInternal();
  swift_getAtKeyPath();
  (*(v9 + 8))(v11, v8);
  v12 = sub_23BBDCF38();
  (*(v5 + 8))(v7, a4);
  return v12 & 1;
}

uint64_t sub_23B98E2E4(uint64_t (*a1)(char *), uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_23BBDC208();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150]);
  sub_23BBDD438();
  v15 = (v5 + 16);
  v16 = (v5 + 8);
  while (1)
  {
    sub_23BBDD4A8();
    v7 = v21;
    if (v21 == v20[0])
    {
      return 0;
    }

    v8 = v2;
    v9 = sub_23BBDD558();
    v10 = v17;
    (*v15)(v17);
    v9(v20, 0);
    v11 = v18(v10);
    if (v3)
    {
      return (*v16)(v10, v4);
    }

    v12 = v11;
    (*v16)(v10, v4);
    if (v12)
    {
      break;
    }

    v2 = v8;
    sub_23BBDD4B8();
  }

  return v7;
}

uint64_t sub_23B98E518()
{
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150]);
  sub_23BBDD438();
  sub_23BBDD4A8();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B98E5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_23BBDA188();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23BBDAA98();
  (*(*(v15 - 8) + 32))(a5, a1, v15);
  v16 = type metadata accessor for PageViewInternal();
  *(a5 + v16[9]) = a2;
  *(a5 + v16[10]) = a6;
  *(a5 + v16[11]) = a3;
  v17 = v16[12];
  v18 = sub_23BBDC138();
  (*(*(v18 - 8) + 32))(a5 + v17, a4, v18);
  sub_23BBDA158();
  sub_23B98AFC0(v14);
  v19 = a5 + v16[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a5 + v16[15];
  result = swift_getKeyPath();
  *v20 = result;
  *(v20 + 8) = 0;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PageViewGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageViewGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23B98E89C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B98E8B8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_23B98E8E8()
{
  sub_23BBDAA98();
  if (v0 <= 0x3F)
  {
    sub_23BBDA288();
    sub_23BBDDC08();
    if (v1 <= 0x3F)
    {
      sub_23BBDC138();
      if (v2 <= 0x3F)
      {
        sub_23B993908(319, &qword_27E1984B0, &type metadata for PageViewGeometry, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B98E9E0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23BBDAA98();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(*(v6 - 8) + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v14 | 7;
  if (v12 < a2)
  {
    v17 = ((v15 - ((-17 - v14) | v14) - ((-10 - ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) - v16) | v16) + 5) & 0xFFFFFFFFFFFFFFF8) + 24;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v12 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v17);
        if (!*(a1 + v17))
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v21 = *(a1 + v17);
        if (*(a1 + v17))
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B98EC30);
      case 4:
        v21 = *(a1 + v17);
        if (!v21)
        {
          break;
        }

LABEL_25:
        v23 = v21 - 1;
        if ((v17 & 0xFFFFFFF8) != 0)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v12 + (v24 | v23) + 1;
      default:
        break;
    }
  }

  if (v7 >= v11)
  {
    v27 = a1;
    v10 = *(*(v6 - 8) + 84);
    v8 = v6;
  }

  else
  {
    v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) == 0)
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }

    v27 = (v14 + ((((v25 + v16 + 9) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14;
  }

  return __swift_getEnumTagSinglePayload(v27, v10, v8);
}

void sub_23B98EC44(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23BBDAA98();
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a4 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(*(v8 - 8) + 84);
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v11 + 80);
  v17 = ((-2 - (((-17 - v16) | v16) - *(v11 + 64)) - (((-17 - v15 - (v16 | 7)) | v16) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v14 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (((-2 - (((-17 - v16) | v16) - *(v11 + 64)) - (((-17 - v15 - (v16 | 7)) | v16) & 0xFFFFFFF8)) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v14;
    }

    if (v17)
    {
      v22 = ~v14 + a2;
      bzero(a1, v17);
      *a1 = v22;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v21;
        return;
      case 2:
        *(a1 + v17) = v21;
        return;
      case 3:
        goto LABEL_49;
      case 4:
        *(a1 + v17) = v21;
        return;
      default:
        return;
    }
  }

  switch(v20)
  {
    case 1:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 2:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    case 3:
LABEL_49:
      __break(1u);
      JUMPOUT(0x23B98EEE8);
    case 4:
      *(a1 + v17) = 0;
      goto LABEL_34;
    default:
LABEL_34:
      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 >= v13)
      {
        v25 = a1;
        v26 = a2;
        v12 = v9;
        v10 = v8;
      }

      else
      {
        v23 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
          return;
        }

        v25 = (v16 + ((((v23 + (v16 | 7) + 9) & ~(v16 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16;
        v26 = a2;
      }

      __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
      return;
  }
}

uint64_t sub_23B98EF10()
{
  type metadata accessor for AdaptivePageView();
  OUTLINED_FUNCTION_5_2();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  return swift_getWitnessTable();
}

uint64_t sub_23B98EF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = *(a1 - 8);
  v38 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984C0);
  v7 = *(a1 + 24);
  v8 = *(a1 + 16);
  type metadata accessor for PageViewInternal();
  sub_23BBDACE8();
  v9 = sub_23B98FE9C();
  WitnessTable = swift_getWitnessTable();
  v48 = v9;
  v49 = WitnessTable;
  swift_getWitnessTable();
  v36 = sub_23BBDC098();
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984E0);
  v12 = sub_23BBDA358();
  v13 = *(v12 - 8);
  v40 = v12;
  v41 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v35 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v37 = &v31 - v16;
  v31 = v8;
  v43 = v8;
  v44 = v7;
  v33 = v2;
  v45 = v2;
  sub_23B9C2924();
  sub_23BBDC088();
  v32 = *(v4 + 16);
  v32(v6, v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  *(v18 + 24) = v7;
  v19 = *(v4 + 32);
  v19(v18 + v17, v6, a1);
  v32(v6, v33, a1);
  v20 = swift_allocObject();
  *(v20 + 16) = v31;
  *(v20 + 24) = v7;
  v19(v20 + v17, v6, a1);
  v21 = v36;
  v22 = swift_getWitnessTable();
  sub_23B98FDEC();
  v23 = v34;
  v24 = v35;
  sub_23BBDB8D8();

  (*(v39 + 8))(v23, v21);
  v25 = sub_23B97B518(&qword_27E1984E8, &qword_27E1984E0);
  v46 = v22;
  v47 = v25;
  v26 = v40;
  v27 = swift_getWitnessTable();
  v28 = v37;
  sub_23B9D2D88(v24, v26, v27);
  v29 = *(v41 + 8);
  v29(v24, v26);
  sub_23B9D2D88(v28, v26, v27);
  return (v29)(v28, v26);
}

uint64_t sub_23B98F488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_23BBDC138();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v45 - v6;
  v45 = sub_23BBDAA98();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageViewInternal();
  v48 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1984C0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = sub_23BBDACE8();
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x28223BE20](v18);
  v49 = &v45 - v19;
  v50 = a2;
  v20 = type metadata accessor for AdaptivePageView();
  v21 = a1 + v20[12];
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v58 = v22;
  v59 = v23;
  v60 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1984F0);
  sub_23BBDBF68();
  if (v57)
  {
    *v17 = sub_23BBDA9D8();
    *(v17 + 1) = 0x4030000000000000;
    v17[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198500);
    sub_23B98F9D4(a1, &v17[*(v25 + 44)]);
    v26 = sub_23BBDB388();
    sub_23BBD9B18();
    v27 = &v17[*(v15 + 36)];
    *v27 = v26;
    *(v27 + 1) = v28;
    *(v27 + 2) = v29;
    *(v27 + 3) = v30;
    *(v27 + 4) = v31;
    v27[40] = 0;
    sub_23B98FE9C();
    swift_getWitnessTable();
    v32 = v49;
    sub_23BA82D64();
    sub_23B9846E8(v17, &qword_27E1984C0);
  }

  else
  {
    v33 = v56;
    (*(v7 + 16))(v9, a1, v45);
    v34 = *(a1 + v20[9]);
    v35 = *(a1 + v20[10]);

    v36 = v46;
    sub_23B98E7AC();
    sub_23B98E5B8(v9, v34, v35, v36, v13, v33);
    WitnessTable = swift_getWitnessTable();
    v38 = v47;
    sub_23B9D2D88(v13, v10, WitnessTable);
    v39 = *(v48 + 8);
    v39(v13, v10);
    sub_23B9D2D88(v38, v10, WitnessTable);
    sub_23B98FE9C();
    v32 = v49;
    sub_23BA82E14();
    v39(v13, v10);
    v39(v38, v10);
  }

  v40 = sub_23B98FE9C();
  v41 = swift_getWitnessTable();
  v54 = v40;
  v55 = v41;
  v42 = v52;
  v43 = swift_getWitnessTable();
  sub_23B9D2D88(v32, v42, v43);
  return (*(v51 + 8))(v32, v42);
}

void *sub_23B98F9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23BBDC318();
  sub_23BBDA488();
  v4 = sub_23BBDAA98();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198508);
  return memcpy((a2 + *(v5 + 36)), __src, 0x70uLL);
}

void sub_23B98FAAC(uint64_t a1@<X8>)
{
  sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150]);
  sub_23BBDD438();
  sub_23BBDD4A8();
  sub_23BBDD498();
  sub_23BBD9E68();
  sub_23B98FB88(v2);
  *a1 = v3;
  *(a1 + 8) = v4 & 1;
}

double sub_23B98FB88(double a1)
{
  v1 = sub_23BB5150C(a1);
  if (v1 - 1) <= 6u && ((0x71u >> (v1 - 1)))
  {
    return dbl_23BBE5888[(v1 - 1)];
  }

  v3 = v1;
  if ((v1 & 0xFE) == 0)
  {
    return 1;
  }

  return v3;
}

uint64_t sub_23B98FC04()
{
  type metadata accessor for AdaptivePageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1984F0);
  return sub_23BBDBF78();
}

BOOL sub_23B98FC9C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t sub_23B98FCD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x23EEB63A0](0);
  }

  MEMORY[0x23EEB63A0](1);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x23EEB63C0](v5);
}

uint64_t sub_23B98FD18(uint64_t a1, char a2)
{
  sub_23BBDDBB8();
  sub_23B98FCD0(v5, a1, a2 & 1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B98FD80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23BBDDBB8();
  sub_23B98FCD0(v4, v1, v2);
  return sub_23BBDDBF8();
}

unint64_t sub_23B98FDEC()
{
  result = qword_27E1984B8;
  if (!qword_27E1984B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1984B8);
  }

  return result;
}

unint64_t sub_23B98FE9C()
{
  result = qword_27E1984C8;
  if (!qword_27E1984C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984C0);
    sub_23B97B518(&qword_27E1984D0, &qword_27E1984D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1984C8);
  }

  return result;
}

void sub_23B98FF64()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_12_2();
  v0 = type metadata accessor for AdaptivePageView();
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_1_3();

  sub_23B98FAAC(v1);
}

uint64_t objectdestroy_13Tm()
{
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_21_1();
  type metadata accessor for AdaptivePageView();
  OUTLINED_FUNCTION_20_1();
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v4);

  v6 = v4 + *(v1 + 52);

  OUTLINED_FUNCTION_21_1();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v7 + 8))(v6 + v8, v2);

  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23B990110()
{
  OUTLINED_FUNCTION_7_2();
  v0 = type metadata accessor for AdaptivePageView();
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_13_2();

  return sub_23B98FC04();
}

double sub_23B99017C(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 48);
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
    LOBYTE(v8) = v11[15];
  }

  return dbl_23BBE58C0[v8];
}

uint64_t sub_23B9902DC()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986E0);
  v0 = sub_23BBDD7D8();

  return v0;
}

uint64_t sub_23B990350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_23BBDB2D8();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDB2F8();
  v51 = v5;
  v67 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v65 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBDB0F8();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDB048();
  v10 = *(a1 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0);
  v12 = sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668]);
  v13 = *(a1 + 24);
  v72 = v9;
  v73 = v10;
  v59 = v13;
  v60 = v10;
  v74 = v11;
  v75 = v12;
  v76 = v13;
  v14 = v13;
  sub_23BBDC1A8();
  sub_23BBDA358();
  v15 = sub_23B99495C();
  v72 = v11;
  v73 = v10;
  v74 = v15;
  v75 = v14;
  sub_23BBDBFF8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v16 = sub_23BBDBFE8();
  WitnessTable = swift_getWitnessTable();
  v72 = v16;
  v73 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = v16;
  v73 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v72 = OpaqueTypeMetadata2;
  v73 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v20 = sub_23BBD9B38();
  v58 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  v23 = swift_getWitnessTable();
  v72 = v20;
  v73 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v56 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v50 = &v47 - v25;
  v72 = v20;
  v73 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v72 = v24;
  v73 = v26;
  v27 = v26;
  v47 = v26;
  v28 = swift_getOpaqueTypeMetadata2();
  v52 = v28;
  v55 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v47 - v29;
  v72 = v24;
  v73 = v27;
  v49 = swift_getOpaqueTypeConformance2();
  v72 = v28;
  v73 = v5;
  v74 = v49;
  v75 = MEMORY[0x277CDE478];
  v53 = MEMORY[0x277CDEB68];
  v30 = swift_getOpaqueTypeMetadata2();
  v54 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v47 - v34;
  sub_23BBDB348();
  v69 = v60;
  v70 = v59;
  v71 = v64;
  sub_23BA6AFDC();
  v36 = v61;
  sub_23BBDAD38();
  sub_23BA6AFF4();
  v37 = v50;
  sub_23BBDB8E8();
  (*(v62 + 8))(v36, v63);
  (*(v58 + 8))(v22, v20);
  j__OUTLINED_FUNCTION_13();
  v38 = v48;
  sub_23BBDB928();
  (*(v56 + 8))(v37, v24);
  sub_23BBDB2C8();
  v39 = v65;
  sub_23BBDB2E8();
  v40 = v52;
  v41 = v51;
  v42 = v49;
  v43 = MEMORY[0x277CDE478];
  sub_23BBDB9A8();
  (*(v67 + 8))(v39, v41);
  (*(v55 + 8))(v38, v40);
  v72 = v40;
  v73 = v41;
  v74 = v42;
  v75 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v33, v30, v44);
  v45 = *(v54 + 8);
  v45(v33, v30);
  sub_23B9D2D88(v35, v30, v44);
  return (v45)(v35, v30);
}

uint64_t sub_23B990C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v47 = a4;
  v6 = sub_23BBDB148();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BBDB048();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0);
  v10 = sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668]);
  v51 = v8;
  v52 = a2;
  v53 = v9;
  v54 = v10;
  v55 = a3;
  sub_23BBDC1A8();
  sub_23BBDA358();
  v11 = sub_23B99495C();
  v51 = v9;
  v52 = a2;
  v53 = v11;
  v54 = a3;
  sub_23BBDBFF8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0);
  sub_23BBDA358();
  sub_23BBDD648();
  swift_getTupleTypeMetadata2();
  v40 = sub_23BBDC3D8();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23BBDBFE8();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v13;
  v14 = swift_getWitnessTable();
  v51 = v12;
  v52 = v14;
  v15 = v14;
  v34 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v34 - v17;
  v51 = v12;
  v52 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = OpaqueTypeMetadata2;
  v52 = OpaqueTypeConformance2;
  v36 = MEMORY[0x277CDEAE8];
  v19 = swift_getOpaqueTypeMetadata2();
  v37 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  v25 = a3;
  v26 = type metadata accessor for PageViewScrollView();
  v27 = v43;
  sub_23B99017C(v26);
  v48 = a2;
  v49 = v25;
  v50 = v27;
  sub_23BA6AFD0();
  v28 = v38;
  sub_23BBDBFD8();
  sub_23BBDB948();
  (*(v42 + 8))(v28, v12);
  v29 = v44;
  sub_23BBDB138();
  v30 = OpaqueTypeConformance2;
  sub_23BBDB968();
  (*(v45 + 8))(v29, v46);
  (*(v41 + 8))(v18, OpaqueTypeMetadata2);
  v51 = OpaqueTypeMetadata2;
  v52 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  sub_23B9D2D88(v22, v19, v31);
  v32 = *(v37 + 8);
  v32(v22, v19);
  sub_23B9D2D88(v24, v19, v31);
  return (v32)(v24, v19);
}

uint64_t sub_23B99119C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v123 = a4;
  v103 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v102 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986A0);
  MEMORY[0x28223BE20](v8);
  v98 = &v94 - v9;
  v126 = sub_23B99495C();
  v144 = v8;
  v145 = a2;
  v10 = v8;
  v110 = v8;
  v146 = v126;
  v147 = a3;
  v11 = sub_23BBDBFF8();
  v99 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v94 - v12;
  v130 = v13;
  v14 = sub_23BBDA358();
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v97 = &v94 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0);
  v129 = v14;
  v16 = sub_23BBDA358();
  v106 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v104 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v101 = &v94 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986C8);
  MEMORY[0x28223BE20](v20 - 8);
  v111 = &v94 - v21;
  v112 = sub_23BBDC208();
  v95 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v94 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v16;
  v121 = sub_23BBDD648();
  v119 = *(v121 - 8);
  v23 = MEMORY[0x28223BE20](v121);
  v128 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v120 = &v94 - v25;
  v125 = a3;
  v124 = type metadata accessor for PageViewScrollView();
  v118 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v117 = &v94 - v26;
  v113 = sub_23BBDAA98();
  v27 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23BBDB048();
  v115 = v30;
  MEMORY[0x28223BE20](v30);
  v108 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668]);
  v144 = v30;
  v145 = a2;
  v146 = v10;
  v147 = v114;
  v148 = a3;
  v32 = sub_23BBDC1A8();
  v116 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v109 = &v94 - v33;
  v34 = sub_23BBDA358();
  v127 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v131 = &v94 - v38;
  v39 = *(v27 + 16);
  v107 = a1;
  v39(v29, a1, v113);
  sub_23B9921FC(1);
  v40 = v124;
  sub_23B9902DC();
  v41 = v118;
  v42 = v117;
  (*(v118 + 16))(v117, a1, v40);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  v105 = a2;
  *(v44 + 16) = a2;
  *(v44 + 24) = v125;
  (*(v41 + 32))(v44 + v43, v42, v40);
  v45 = v126;
  v46 = v109;
  v47 = v110;
  sub_23BBDC188();
  v48 = v107;
  v49 = *(v107 + *(v40 + 44));
  v143[8] = v45;
  WitnessTable = swift_getWitnessTable();
  sub_23B992444(0, v49, v32, WitnessTable, 0.92);
  v51 = v48;
  (*(v116 + 8))(v46, v32);
  v52 = sub_23B994BF0();
  v143[6] = WitnessTable;
  v143[7] = v52;
  v53 = v111;
  v113 = swift_getWitnessTable();
  sub_23B9D2D88(v37, v34, v113);
  v54 = *(v127 + 8);
  v117 = v37;
  v118 = v34;
  v116 = v127 + 8;
  v115 = v54;
  v54(v37, v34);
  sub_23BBAF4F8(v53);
  v55 = v112;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v112);
  v114 = v52;
  if (EnumTagSinglePayload == 1)
  {
    sub_23B9846E8(v53, &qword_27E1986C8);
    __swift_storeEnumTagSinglePayload(v128, 1, 1, v122);
    v143[4] = swift_getWitnessTable();
    v143[5] = v52;
    v57 = swift_getWitnessTable();
    v58 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
    v143[2] = v57;
    v143[3] = v58;
    swift_getWitnessTable();
  }

  else
  {
    v59 = v95;
    v60 = *(v95 + 32);
    LODWORD(v109) = v49;
    v61 = v94;
    v60(v94, v53, v55);
    v62 = *(v51 + *(v124 + 40));
    v63 = v62 + v62;
    v64 = sub_23BBDAB48();
    v65 = v98;
    (*(v59 + 16))(v98, v61, v55);
    v66 = v65 + *(v47 + 36);
    *v66 = 259;
    *(v66 + 8) = v63;
    *(v66 + 16) = 0x3FF0000000000000;
    *(v66 + 24) = v64;
    *(v66 + 32) = 1;
    sub_23B9902DC();
    v67 = v102;
    swift_getAtKeyPath();

    v68 = v96;
    v69 = v105;
    sub_23BBDBA98();
    (*(v103 + 8))(v67, v69);
    sub_23B9846E8(v65, &qword_27E1986A0);
    v70 = v130;
    v71 = swift_getWitnessTable();
    v72 = v97;
    sub_23B992444(1, v109, v70, v71, 0.92);
    (*(v99 + 8))(v68, v70);
    v134 = v71;
    v135 = v52;
    v73 = v129;
    v74 = swift_getWitnessTable();
    v75 = v104;
    sub_23B995424(1);
    (*(v100 + 8))(v72, v73);
    (*(v59 + 8))(v61, v55);
    v76 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
    v132 = v74;
    v133 = v76;
    v77 = v122;
    v78 = swift_getWitnessTable();
    v79 = v101;
    sub_23B9D2D88(v75, v77, v78);
    v80 = v106;
    v81 = *(v106 + 8);
    v81(v75, v77);
    sub_23B9D2D88(v79, v77, v78);
    v81(v79, v77);
    v82 = v128;
    (*(v80 + 32))(v128, v75, v77);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v77);
  }

  v83 = v120;
  v84 = v128;
  sub_23BB2F9F4();
  v85 = v119;
  v86 = *(v119 + 8);
  v87 = v121;
  v86(v84, v121);
  v88 = v117;
  v89 = v118;
  (*(v127 + 16))(v117, v131, v118);
  v144 = v88;
  (*(v85 + 16))(v84, v83, v87);
  v145 = v84;
  v143[0] = v89;
  v143[1] = v87;
  v141 = v113;
  v139 = swift_getWitnessTable();
  v140 = v114;
  v90 = swift_getWitnessTable();
  v91 = sub_23B97B518(&qword_27E1986D8, &qword_27E1986C0);
  v137 = v90;
  v138 = v91;
  v136 = swift_getWitnessTable();
  v142 = swift_getWitnessTable();
  sub_23BB6739C(&v144, 2, v143);
  v86(v83, v87);
  v92 = v115;
  v115(v131, v89);
  v86(v84, v87);
  return v92(v88, v89);
}

uint64_t sub_23B9921FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = sub_23BBDAA98();
  sub_23B995050(&qword_27E1984F8, MEMORY[0x277CE0150]);
  result = sub_23BBDD458();
  if (__OFSUB__(result, v2))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_23BBDD438();
  sub_23BBDD4A8();
  sub_23BBDD468();
  if (v5)
  {
    sub_23BBDD4A8();
  }

  else
  {
    v7 = v4;
  }

  result = sub_23BBDD438();
  if (v7 >= v6)
  {
    sub_23BBDD548();
    return (*(*(v3 - 8) + 8))(v1, v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23B992368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for PageViewScrollView() + 40));
  v6 = v5 + v5;
  v7 = sub_23BBDAB48();
  v8 = sub_23BBDC208();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986A0);
  v10 = a3 + *(result + 36);
  *v10 = 259;
  *(v10 + 8) = v6;
  *(v10 + 16) = 0x3FF0000000000000;
  *(v10 + 24) = v7;
  *(v10 + 32) = 1;
  return result;
}

uint64_t sub_23B992444(char a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a5;
  v9 = a1;
  v10 = a2;
  KeyPath = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x23EEB43C0](&v8, a3, &type metadata for ScalingScrollTransitionModifier, a4);
}

uint64_t sub_23B9924EC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v34 = sub_23BBDB1E8();
  v5 = *(v34 - 8);
  v6 = MEMORY[0x28223BE20](v34);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v10 = sub_23BBDB208();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23BBDA928();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_23BBDD5A8();
    v17 = v9;
    v18 = v5;
    v19 = v14;
    v20 = v13;
    v21 = sub_23BBDB338();
    sub_23BBD9978();

    v22 = v20;
    v23 = v19;
    v5 = v18;
    v9 = v17;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a1, 0);
    (*(v23 + 8))(v16, v22);

    sub_23BBDD5A8();
    v24 = v22;
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a1, 0);
    (*(v23 + 8))(v16, v24);
  }

  sub_23BBDB1A8();
  v26 = v30;
  sub_23BBDB1D8();
  sub_23BBDB1C8();
  v27 = *(v5 + 8);
  v28 = v34;
  v27(v26, v34);
  sub_23BBDB1F8();
  v27(v9, v28);
  return (*(v31 + 8))(v12, v32);
}

uint64_t sub_23B9928D4@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v43 = a1;
  v44 = a5;
  v42 = a2 & 0x100;
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23BBDB208();
  v14 = *(v45 - 8);
  v15 = MEMORY[0x28223BE20](v45);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  if ((a2 & 0x100) == 0)
  {
    sub_23BBDB1B8();
LABEL_17:
    sub_23BBDB1B8();
    goto LABEL_20;
  }

  v40 = v10;
  v41 = v22;
  if (a4)
  {
    v25 = a3;
  }

  else
  {

    sub_23BBDD5A8();
    v39 = v24;
    v26 = sub_23BBDB338();
    v24 = v39;
    sub_23BBD9978();

    v27 = v40;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a3, 0);
    (*(v11 + 8))(v13, v27);
    v25 = v46;
  }

  if (v25 <= 1)
  {
    if (a2)
    {
      sub_23B9924EC(a3, a4 & 1, v21);
    }

    else
    {
      sub_23BBDB1A8();
    }

    (*(v14 + 32))(v24, v21, v45);
    if (a4)
    {
      goto LABEL_13;
    }

LABEL_10:

    sub_23BBDD5A8();
    v28 = a4;
    v29 = sub_23BBDB338();
    sub_23BBD9978();

    a4 = v28;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a3, 0);
    (*(v11 + 8))(v13, v40);
    v30 = v46;
    goto LABEL_14;
  }

  sub_23BBDB1B8();
  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v30 = a3;
LABEL_14:
  v31 = v41;
  if (v30 > 1)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    sub_23BBDB1A8();
  }

  else
  {
    sub_23B9924EC(a3, a4 & 1, v41);
  }

  (*(v14 + 32))(v18, v31, v45);
LABEL_20:
  v32 = swift_allocObject();
  *(v32 + 16) = a6;
  *(v32 + 24) = a2 & 1;
  *(v32 + 25) = BYTE1(v42);
  *(v32 + 32) = a3;
  *(v32 + 40) = a4 & 1;
  sub_23B995044(a3, a4 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1986F0);
  sub_23B97B518(&qword_27E1986F8, &qword_27E1986E8);
  v33 = sub_23BBDA578();
  v34 = sub_23B995050(&qword_27E198700, MEMORY[0x277CDFCB0]);
  v46 = v33;
  v47 = v34;
  swift_getOpaqueTypeConformance2();
  sub_23BBDB8F8();

  v35 = *(v14 + 8);
  v36 = v45;
  v35(v18, v45);
  return (v35)(v24, v36);
}

uint64_t sub_23B992E40(double a1)
{
  v2 = sub_23BBDAE38();
  if (sub_23BBDAE48())
  {
    sub_23BBDC448();
  }

  else
  {
    sub_23BBDC458();
  }

  v5 = v3;
  v6 = v4;
  if (v2)
  {
    a1 = 1.0;
  }

  v7 = sub_23BBDA578();
  v8 = sub_23B995050(&qword_27E198700, MEMORY[0x277CDFCB0]);
  return MEMORY[0x23EEB25B0](v7, v8, a1, v5, v6);
}

uint64_t sub_23B992F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_23B9928D4(a1, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), a2, *v2);
}

uint64_t sub_23B992F50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B975AD0();
  *a1 = result & 1;
  return result;
}

void sub_23B992F80()
{
  sub_23BBDAA98();
  if (v0 <= 0x3F)
  {
    sub_23BBDA288();
    sub_23BBDDC08();
    if (v1 <= 0x3F)
    {
      sub_23BBDC138();
      if (v2 <= 0x3F)
      {
        sub_23B9938B0();
        if (v3 <= 0x3F)
        {
          sub_23B993908(319, &qword_27E198598, &type metadata for CommonUIHorizontalSizeClass, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_23B993908(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
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

uint64_t sub_23B9930DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23BBDAA98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v33 = *(a3 + 16);
  v34 = v6;
  v9 = *(v33 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = sub_23BBDA188();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v11 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v7 + 64);
  v17 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v18 = v12;
  v19 = v17 | 7;
  v20 = *(v13 + 80) & 0xF8 | 7;
  v21 = ((v17 + 16) & ~v17) + *(v9 + 64) + v20;
  if (a2 <= v15)
  {
    goto LABEL_26;
  }

  v22 = ((*(*(v12 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v21 + ((v19 + ((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v19)) & ~v20) + 33;
  v23 = 8 * v22;
  if (v22 > 3)
  {
LABEL_15:
    v25 = a1[v22];
    if (!a1[v22])
    {
      goto LABEL_26;
    }

LABEL_19:
    v27 = (v25 - 1) << v23;
    if (v22 >= 4)
    {
      v27 = 0;
    }

    if (v22 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }

    return v15 + (v28 | v27) + 1;
  }

  v24 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v24))
  {
    v25 = *&a1[v22];
    if (v25)
    {
      goto LABEL_19;
    }
  }

  else if (v24 > 0xFF)
  {
    v25 = *&a1[v22];
    if (*&a1[v22])
    {
      goto LABEL_19;
    }
  }

  else if (v24 >= 2)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (v8 == v15)
  {
    v29 = a1;
    v14 = v8;
    v18 = v34;
    goto LABEL_28;
  }

  v30 = (&a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0x80000000) != 0)
  {
    v32 = (((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + v19 + 9) & ~v19;
    if (v10 == v15)
    {
      v29 = (v17 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17;
      v14 = v10;
      v18 = v33;
    }

    else
    {
      v29 = (v21 + v32) & ~v20;
    }

LABEL_28:

    return __swift_getEnumTagSinglePayload(v29, v14, v18);
  }

  v31 = *v30;
  if (*v30 >= 0xFFFFFFFF)
  {
    LODWORD(v31) = -1;
  }

  return (v31 + 1);
}

void sub_23B9933E8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v45 = sub_23BBDAA98();
  v7 = *(v45 - 8);
  v8 = *(v7 + 84);
  v43 = *(a4 + 16);
  v9 = *(v43 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v44 = v11;
  if (v8 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  v13 = sub_23BBDA188();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v12 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  v18 = *(v7 + 64);
  v19 = *(v9 + 80);
  v20 = v19 | 7;
  v21 = ((v19 + 16) & ~v19) + *(v9 + 64);
  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = v21 + v22;
  v24 = (*(*(v13 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v24 + ((v21 + v22 + (((v19 | 7) + ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~(v19 | 7))) & ~v22) + 33;
  v26 = 8 * v25;
  if (a3 <= v17)
  {
    v28 = 0;
    v27 = a2;
  }

  else
  {
    v27 = a2;
    if (v25 <= 3)
    {
      v33 = ((a3 - v17 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v33))
      {
        v28 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v28 = v34;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  if (v17 < v27)
  {
    v29 = ~v17 + v27;
    if (v25 < 4)
    {
      v30 = (v29 >> v26) + 1;
      bzero(a1, v25);
      if (v25 == 1)
      {
        *a1 = v29;
LABEL_45:
        switch(v28)
        {
          case 1:
            a1[v25] = v30;
            return;
          case 2:
            *&a1[v25] = v30;
            return;
          case 3:
            goto LABEL_73;
          case 4:
            *&a1[v25] = v30;
            return;
          default:
            return;
        }
      }

      v29 &= ~(-1 << v26);
    }

    else
    {
      bzero(a1, v25);
      v30 = 1;
    }

    *a1 = v29;
    goto LABEL_45;
  }

  v31 = ~v20;
  v32 = ~v22;
  switch(v28)
  {
    case 1:
      a1[v25] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *&a1[v25] = 0;
      if (!v27)
      {
        return;
      }

      goto LABEL_34;
    case 3:
LABEL_73:
      __break(1u);
      JUMPOUT(0x23B993878);
    case 4:
      *&a1[v25] = 0;
      goto LABEL_33;
    default:
LABEL_33:
      if (!v27)
      {
        return;
      }

LABEL_34:
      if (v8 == v17)
      {
        v35 = a1;
        v36 = v27;
        v15 = v8;
        v13 = v45;
LABEL_36:

        __swift_storeEnumTagSinglePayload(v35, v36, v15, v13);
        return;
      }

      v37 = (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v17 & 0x80000000) == 0)
      {
        if ((v27 & 0x80000000) != 0)
        {
          v38 = v27 & 0x7FFFFFFF;
        }

        else
        {
          v38 = (v27 - 1);
        }

        *v37 = v38;
        return;
      }

      v39 = ((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 9) & v31);
      if (v10 == v17)
      {
        if (v44 >= v27)
        {
          v35 = (v19 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v19;
          v36 = v27;
          v15 = v10;
          v13 = v43;
          goto LABEL_36;
        }

        if (v21 <= 3)
        {
          v40 = ~(-1 << (8 * v21));
        }

        else
        {
          v40 = -1;
        }

        if (v21)
        {
          v41 = v40 & (~v44 + v27);
          if (v21 <= 3)
          {
            v42 = v21;
          }

          else
          {
            v42 = 4;
          }

          bzero(((((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 9) & v31), v21);
          switch(v42)
          {
            case 2:
              *v39 = v41;
              break;
            case 3:
              *v39 = v41;
              v39[2] = BYTE2(v41);
              break;
            case 4:
              goto LABEL_68;
            default:
              *v39 = v41;
              break;
          }
        }
      }

      else
      {
        v39 = (&v39[v23] & v32);
        if (v16 >= v27)
        {
          v35 = v39;
          v36 = v27;
          goto LABEL_36;
        }

        if (v24 != -8)
        {
          v41 = ~v16 + v27;
          bzero(v39, (v24 + 8));
LABEL_68:
          *v39 = v41;
        }
      }

      return;
  }
}

void sub_23B9938B0()
{
  if (!qword_27E198590)
  {
    sub_23BBDA188();
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198590);
    }
  }
}

void sub_23B993908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23B993958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984C0);
  type metadata accessor for PageViewInternal();
  sub_23BBDACE8();
  sub_23B98FE9C();
  OUTLINED_FUNCTION_16_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDC098();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1984E0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  OUTLINED_FUNCTION_16_1();
  sub_23B97B518(&qword_27E1984E8, &qword_27E1984E0);
  OUTLINED_FUNCTION_2_2();
  return swift_getWitnessTable();
}

unint64_t sub_23B993AF0()
{
  result = qword_27E1985C0;
  if (!qword_27E1985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985C0);
  }

  return result;
}

unint64_t sub_23B993B50()
{
  result = qword_27E1985D0;
  if (!qword_27E1985D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985C8);
    sub_23B993BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985D0);
  }

  return result;
}

unint64_t sub_23B993BD4()
{
  result = qword_27E1985D8;
  if (!qword_27E1985D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985E0);
    sub_23B993CBC(&qword_27E1985E8, &qword_27E1985F0, &unk_23BBE55D8, sub_23B993D2C);
    sub_23B995050(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1985D8);
  }

  return result;
}

uint64_t sub_23B993CBC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_2_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B993D5C()
{
  result = qword_27E198608;
  if (!qword_27E198608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198608);
  }

  return result;
}

uint64_t sub_23B993DB4()
{
  OUTLINED_FUNCTION_21_1();
  v0 = type metadata accessor for PageViewInternal();
  OUTLINED_FUNCTION_13_0(v0);

  return sub_23B98D9A8();
}

uint64_t sub_23B993E70@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23B993EB8()
{
  OUTLINED_FUNCTION_7_2();
  v0 = type metadata accessor for PageViewInternal();
  OUTLINED_FUNCTION_13_0(v0);
  v1 = OUTLINED_FUNCTION_13_2();

  return sub_23B98C400(v1);
}

uint64_t sub_23B993F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1985E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B993FBC@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  v2 = type metadata accessor for PageViewInternal();
  OUTLINED_FUNCTION_13_0(v2);

  return sub_23B98C63C(a1);
}

uint64_t objectdestroy_38Tm()
{
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for PageViewInternal();
  OUTLINED_FUNCTION_8_3();
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + ((v4 + 48) & ~v4);
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v6 + 8))(v5);

  v7 = v5 + v0[14];

  OUTLINED_FUNCTION_12_2();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v8 + 8))(v7 + v9, v2);
  v10 = v5 + v0[15];
  sub_23BBDA188();
  OUTLINED_FUNCTION_12_1();
  (*(v11 + 8))(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610);

  OUTLINED_FUNCTION_11_2(v0[16]);
  OUTLINED_FUNCTION_11_2(v0[17]);
  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

uint64_t sub_23B9941D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_2();
  v2 = type metadata accessor for PageViewInternal();
  OUTLINED_FUNCTION_13_0(v2);

  return sub_23B98C680(a1);
}

__n128 sub_23B994268(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t objectdestroy_32Tm()
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for PageViewInternal();
  OUTLINED_FUNCTION_8_3();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v5 + 8))(v4);

  v6 = v4 + v0[14];

  OUTLINED_FUNCTION_12_2();
  sub_23BBDC138();
  OUTLINED_FUNCTION_19_1();
  (*(v7 + 8))(v6 + v8, v2);
  v9 = v4 + v0[15];
  sub_23BBDA188();
  OUTLINED_FUNCTION_12_1();
  (*(v10 + 8))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E198610);

  OUTLINED_FUNCTION_11_2(v0[16]);
  OUTLINED_FUNCTION_11_2(v0[17]);
  OUTLINED_FUNCTION_6_2();

  return swift_deallocObject();
}

void sub_23B994450()
{
  sub_23BBDAA98();
  if (v0 <= 0x3F)
  {
    sub_23BBDA288();
    sub_23BBDDC08();
    if (v1 <= 0x3F)
    {
      sub_23B993908(319, &qword_27E198598, &type metadata for CommonUIHorizontalSizeClass, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B99454C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDAA98();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_23B99460C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23BBDAA98();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B9946B4()
{
  type metadata accessor for PageViewScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB038();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23B995050(&qword_27E1985A8, MEMORY[0x277CE0660]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1985B0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  sub_23B97B518(&qword_27E1985B8, &qword_27E1985B0);
  swift_getWitnessTable();
  return OUTLINED_FUNCTION_17_2();
}

unint64_t sub_23B9948C4()
{
  result = qword_27E198698;
  if (!qword_27E198698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198698);
  }

  return result;
}

unint64_t sub_23B99495C()
{
  result = qword_27E1986B0;
  if (!qword_27E1986B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0);
    sub_23B9949E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1986B0);
  }

  return result;
}

unint64_t sub_23B9949E8()
{
  result = qword_27E1986B8;
  if (!qword_27E1986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1986B8);
  }

  return result;
}

uint64_t sub_23B994A54()
{
  type metadata accessor for PageViewScrollView();
  OUTLINED_FUNCTION_8_3();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_23BBDAA98();
  OUTLINED_FUNCTION_12_1();
  (*(v4 + 8))(v1 + v3);

  OUTLINED_FUNCTION_11_2(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_23B994B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_15_2();
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_0(v5);
  v6 = OUTLINED_FUNCTION_1_3();

  return a3(v6);
}

unint64_t sub_23B994BF0()
{
  result = qword_27E1986D0;
  if (!qword_27E1986D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1986D0);
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

uint64_t sub_23B994C68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_23B994CB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B994D0C()
{
  sub_23BBDB048();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986A0);
  sub_23B995050(&qword_27E1986A8, MEMORY[0x277CE0668]);
  sub_23BBDC1A8();
  sub_23BBDA358();
  sub_23B99495C();
  sub_23BBDBFF8();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986C0);
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  sub_23BBDD648();
  OUTLINED_FUNCTION_4();
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFE8();
  OUTLINED_FUNCTION_16_1();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_4();
  sub_23BBD9B38();
  OUTLINED_FUNCTION_16_1();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_2();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2F8();
  OUTLINED_FUNCTION_22_1();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B994FD8()
{
  sub_23B97B450(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_23B995044(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23B995050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B995098()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1986F0);
  sub_23B97B518(&qword_27E1986F8, &qword_27E1986E8);
  sub_23BBDA578();
  sub_23B995050(&qword_27E198700, MEMORY[0x277CDFCB0]);
  OUTLINED_FUNCTION_17_2();
  return OUTLINED_FUNCTION_17_2();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_23B97B450(v4, v5);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B99539C()
{
  if (sub_23BB51588() > 1u)
  {
    return 0;
  }

  sub_23B995A24();
  OUTLINED_FUNCTION_0_3();
  return (v1 >> 1) & 1;
}

uint64_t sub_23B9953EC()
{
  sub_23B995A24();
  OUTLINED_FUNCTION_0_3();
  return (v1 >> 2) & 1;
}

uint64_t sub_23B995458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9956CC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9954BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B9A0004();
  *a1 = result;
  return result;
}

uint64_t sub_23B9954F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB07DE4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23B995520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B9A1670(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23B995550@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB07DFC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23B995588@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BB07DE0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23B9955BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BB07DD0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23B995608@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BB07DE8(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_23B995678@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B9956A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BB05E34();
  *a1 = result;
  return result;
}

unint64_t sub_23B9956CC()
{
  result = qword_27E198708;
  if (!qword_27E198708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198708);
  }

  return result;
}

unint64_t sub_23B995724()
{
  result = qword_27E198710;
  if (!qword_27E198710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198710);
  }

  return result;
}

unint64_t sub_23B99577C()
{
  result = qword_27E198718;
  if (!qword_27E198718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198718);
  }

  return result;
}

unint64_t sub_23B9957D4()
{
  result = qword_27E198720;
  if (!qword_27E198720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198720);
  }

  return result;
}

uint64_t sub_23B995828()
{
  sub_23B995A24();
  OUTLINED_FUNCTION_0_3();
  return v1;
}

uint64_t sub_23B995898()
{
  sub_23B995A24();
  v0 = OUTLINED_FUNCTION_0_3();
  if (v2)
  {
    return MEMORY[0x23EEB4B20](v0, 0.2, 1.0, 0.0);
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_23B9958EC(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  *result = v3;
  return result;
}

uint64_t sub_23B995930(char a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_23BBDB9B8();
}

unint64_t *sub_23B9959DC(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFDLL;
  }

  else
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  *result = v3;
  return result;
}

unint64_t *sub_23B995A00(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  *result = v3;
  return result;
}

unint64_t sub_23B995A24()
{
  result = qword_27E198728[0];
  if (!qword_27E198728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E198728);
  }

  return result;
}

_DWORD *sub_23B995A90(_DWORD *result)
{
  if (*(v1 + 16) == 1)
  {
    if ((~*result & 3) == 0)
    {
      return result;
    }

    v2 = *result | 3;
  }

  else
  {
    v2 = 0;
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_23BBDA958();
}

uint64_t sub_23B995AE4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SubscriptionStoreControlConfiguration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B995B84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23BBDCDB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFD)
  {
    v11 = 253;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v11 - 1;
  if ((v11 - 1) <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v11 - 1;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = v8;
  v17 = *(v9 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = *(v6 + 64) + (v17 | 7);
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v20 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + ((v17 + 87) & ~v18) + (v19 & ~v18) + 12;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_31:
      if (v7 >= v13)
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }

      else
      {
        v28 = ((((a1 + v19) & ~v18) + 23) & 0xFFFFFFFFFFFFFFF8);
        if (v12 < 0)
        {
          v30 = (v18 + ((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v18;
          if (v10 < 0xFD)
          {
            v32 = *(((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v32 >= 2)
            {
              v33 = (v32 + 2147483646) & 0x7FFFFFFF;
            }

            else
            {
              v33 = -1;
            }

            if ((v33 + 1) >= 2)
            {
              EnumTagSinglePayload = v33;
            }

            else
            {
              EnumTagSinglePayload = 0;
            }
          }

          else
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v10, v16);
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
          v29 = *v28;
          if (*v28 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_31;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v14 + (v27 | v25) + 1;
}

void sub_23B995E80(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
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
  if ((v13 - 1) <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v13 - 1;
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v11 + 80) & 0xF8;
  v18 = v17 | 7;
  v19 = (v17 + 87) & ~(v17 | 7);
  v20 = *(*(v10 - 8) + 64);
  v21 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = *(v8 + 64) + (v17 | 7);
  v23 = v19 + v21;
  v24 = v19 + v21 + (v22 & ~(v17 | 7)) + 3;
  v25 = 8 * v24;
  if (a3 <= v16)
  {
    v26 = 0;
  }

  else if (v24 <= 3)
  {
    v30 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v30))
    {
      v26 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v26 = v31;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v16 < a2)
  {
    v27 = ~v16 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> v25) + 1;
      if (v24)
      {
        v32 = v27 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v32;
          a1[2] = BYTE2(v32);
        }

        else if (v24 == 2)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v27;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        a1[v24] = v28;
        return;
      case 2:
        *&a1[v24] = v28;
        return;
      case 3:
        goto LABEL_72;
      case 4:
        *&a1[v24] = v28;
        return;
      default:
        return;
    }
  }

  v29 = ~v18;
  switch(v26)
  {
    case 1:
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_72:
      __break(1u);
      JUMPOUT(0x23B996290);
    case 4:
      *&a1[v24] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v9 >= v15)
      {
        v37 = a1;
        v38 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v33 = (&a1[v22] & v29);
        if (v15 < a2)
        {
          if (v23 <= 2)
          {
            v34 = ~(-1 << (8 * (v23 + 1)));
          }

          else
          {
            v34 = -1;
          }

          v35 = v34 & (~v15 + a2);
          if (v23 <= 2)
          {
            v36 = v23 + 1;
          }

          else
          {
            v36 = 4;
          }

          bzero(v33, v23 + 1);
          switch(v36)
          {
            case 2:
              *v33 = v35;
              break;
            case 3:
              *v33 = v35;
              v33[2] = BYTE2(v35);
              break;
            case 4:
              goto LABEL_61;
            default:
              goto LABEL_62;
          }

          return;
        }

        v39 = ((v33 + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v40 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v40 = (a2 - 1);
          }

          *v39 = v40;
          return;
        }

        v33 = ((v18 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29);
        if (v14 < a2)
        {
          v35 = a2 - v13;
          bzero(((v18 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29), ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
          if (v21 <= 3)
          {
LABEL_62:
            *v33 = v35;
          }

          else
          {
LABEL_61:
            *v33 = v35;
          }

          return;
        }

        v38 = (a2 + 1);
        if (v12 < 0xFD)
        {
          v41 = &v33[v20 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFC)
          {
            *v41 = 0;
            *(v41 + 8) = 0;
            *v41 = a2 - 253;
          }

          else
          {
            *(v41 + 8) = a2 + 3;
          }

          return;
        }

        v37 = (v18 + ((((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & v29;
      }

      __swift_storeEnumTagSinglePayload(v37, v38, v12, v10);
      return;
  }
}

uint64_t sub_23B9962E0@<X0>(int *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v15[1] = a2;
  type metadata accessor for SubscriptionStoreControlConfiguration();
  OUTLINED_FUNCTION_3_2();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  (*(v10 + 16))(v15 - v8, v3 + a1[13], v7);
  v11 = *(v3 + a1[14]);
  v12 = *(v3 + a1[15]);
  OUTLINED_FUNCTION_1_4();
  (*(v13 + 8))(v3, a1);
  return sub_23B996434(v9, v11, v12, a3);
}

uint64_t sub_23B996434@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_4();
  (*(v8 + 32))(a4);
  v9 = type metadata accessor for SubscriptionStoreContainerContext();
  v10 = v9[13];
  type metadata accessor for SubscriptionStoreControlConfiguration();
  OUTLINED_FUNCTION_1_4();
  result = (*(v11 + 32))(a4 + v10, a1);
  *(a4 + v9[14]) = a2;
  *(a4 + v9[15]) = a3;
  return result;
}

uint64_t sub_23B99652C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v26[0] = a4;
  v26[1] = a2;
  v27 = a1;
  v28 = a5;
  v8 = *(a3 + 16);
  OUTLINED_FUNCTION_3_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SubscriptionStoreControlConfiguration();
  OUTLINED_FUNCTION_3_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  v20 = type metadata accessor for SubscriptionStoreControlConfiguration();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v26 - v22;
  (*(v16 + 16))(v19, v6 + *(a3 + 52), v14, v21);
  v27(v19);
  (*(v10 + 16))(v13, v6, v8);
  LOBYTE(v16) = *(v6 + *(a3 + 56));
  LOBYTE(v19) = *(v6 + *(a3 + 60));
  OUTLINED_FUNCTION_1_4();
  (*(v24 + 8))(v6, a3);
  return sub_23B996434(v23, v16, v19, v28);
}

uint64_t sub_23B996780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 688))
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

uint64_t sub_23B9967C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
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
      *(result + 688) = 1;
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

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B9968C4()
{
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_27E1BF870, sizeof(__dst));
  memcpy(__src, &qword_27E1BF870, sizeof(__src));
  sub_23B996E0C(__dst, v3);
  swift_getAtKeyPath();
  memcpy(v3, __src, 0x2B0uLL);
  sub_23B996E44(v3);
  sub_23BBDBA28();
}

void sub_23B9969B4()
{
  qword_27E1BF870 = 0xD00000000000001DLL;
  *algn_27E1BF878 = 0x800000023BBDFAC0;
  qword_27E1BF888 = 0x800000023BBDFAE0;
  unk_27E1BF890 = 0xD00000000000001DLL;
  qword_27E1BF898 = 0x800000023BBDFB00;
  qword_27E1BF8A8 = 0x800000023BBDFB20;
  qword_27E1BF8B0 = 0xD00000000000002ALL;
  unk_27E1BF8B8 = 0x800000023BBDFB50;
  qword_27E1BF8C8 = 0x800000023BBDFB80;
  qword_27E1BF8D8 = 0x800000023BBDFBB0;
  qword_27E1BF8E0 = 0xD00000000000001BLL;
  unk_27E1BF8E8 = 0x800000023BBDFBD0;
  qword_27E1BF8F8 = 0x800000023BBDFBF0;
  strcpy(&qword_27E1BF900, "Subtitle Text");
  unk_27E1BF90E = -4864;
  qword_27E1BF910 = 0x6554206563697250;
  unk_27E1BF918 = 0xEA00000000007478;
  qword_27E1BF928 = 0x800000023BBDFC10;
  qword_27E1BF938 = 0x800000023BBDFC40;
  qword_27E1BF948 = 0x800000023BBDFC70;
  qword_27E1BF950 = 0xD000000000000016;
  unk_27E1BF958 = 0x800000023BBDFCA0;
  qword_27E1BF968 = 0x800000023BBDFCC0;
  qword_27E1BF970 = 0xD000000000000014;
  unk_27E1BF978 = 0x800000023BBDFCF0;
  qword_27E1BF960 = 0xD000000000000021;
  qword_27E1BF980 = 0xD000000000000021;
  unk_27E1BF988 = 0x800000023BBDFD10;
  qword_27E1BF998 = 0x800000023BBDFD40;
  qword_27E1BF9A8 = 0x800000023BBDFD60;
  qword_27E1BF9B0 = 0xD000000000000011;
  unk_27E1BF9B8 = 0x800000023BBDFD80;
  qword_27E1BF8F0 = 0xD00000000000001ALL;
  qword_27E1BF9C0 = 0xD00000000000001ALL;
  unk_27E1BF9C8 = 0x800000023BBDFDA0;
  qword_27E1BF920 = 0xD000000000000024;
  qword_27E1BF9D0 = 0xD000000000000024;
  unk_27E1BF9D8 = 0x800000023BBDFDC0;
  qword_27E1BF9E8 = 0x800000023BBDFDF0;
  qword_27E1BF9F8 = 0x800000023BBDFE20;
  qword_27E1BF940 = 0xD000000000000025;
  qword_27E1BFA00 = 0xD000000000000025;
  unk_27E1BFA08 = 0x800000023BBDFE40;
  qword_27E1BF8A0 = 0xD000000000000028;
  qword_27E1BF8C0 = 0xD000000000000028;
  qword_27E1BFA10 = 0xD000000000000028;
  unk_27E1BFA18 = 0x800000023BBDFE70;
  qword_27E1BFA20 = 0xD00000000000002ELL;
  unk_27E1BFA28 = 0x800000023BBDFEA0;
  qword_27E1BFA30 = 0xD000000000000031;
  unk_27E1BFA38 = 0x800000023BBDFED0;
  qword_27E1BFA48 = 0x800000023BBDFF10;
  qword_27E1BFA50 = 0xD00000000000001ELL;
  unk_27E1BFA58 = 0x800000023BBDFF40;
  qword_27E1BFA60 = 0xD000000000000027;
  unk_27E1BFA68 = 0x800000023BBDFF60;
  qword_27E1BF880 = 0xD00000000000001FLL;
  qword_27E1BFA70 = 0xD00000000000002FLL;
  qword_27E1BFA78 = 0x800000023BBDFF90;
  qword_27E1BFA80 = 0xD000000000000046;
  qword_27E1BFA88 = 0x800000023BBDFFC0;
  qword_27E1BFA40 = 0xD00000000000002BLL;
  qword_27E1BFA90 = 0xD00000000000002BLL;
  qword_27E1BFA98 = 0x800000023BBE0010;
  qword_27E1BF930 = 0xD000000000000026;
  qword_27E1BFAA0 = 0xD000000000000026;
  qword_27E1BFAA8 = 0x800000023BBE0040;
  qword_27E1BFAB0 = 0xD000000000000010;
  qword_27E1BFAB8 = 0x800000023BBE0070;
  qword_27E1BFAC0 = 6581857;
  qword_27E1BFAC8 = 0xE300000000000000;
  strcpy(&qword_27E1BFAD0, "Privacy Policy");
  HIBYTE(qword_27E1BFAD8) = -18;
  qword_27E1BFAE0 = 0xD00000000000001FLL;
  qword_27E1BFAE8 = 0x800000023BBE0090;
  qword_27E1BF9F0 = 0xD00000000000001CLL;
  qword_27E1BFAF0 = 0xD00000000000001CLL;
  qword_27E1BFAF8 = 0x800000023BBE00B0;
  qword_27E1BF9E0 = 0xD000000000000023;
  qword_27E1BFB00 = 0xD000000000000023;
  qword_27E1BFB08 = 0x800000023BBE00D0;
  qword_27E1BF8D0 = 0xD000000000000019;
  qword_27E1BF990 = 0xD000000000000019;
  qword_27E1BF9A0 = 0xD000000000000019;
  qword_27E1BFB10 = 0xD000000000000012;
  qword_27E1BFB18 = 0x800000023BBE0100;
}

uint64_t sub_23B996E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = type metadata accessor for ProductViewButtonConfiguration(0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_23B996F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductViewButtonConfiguration(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B996FD8()
{
  result = type metadata accessor for ProductViewButtonConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B997068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_12_3();
  _s11PriceStringOMa(v6);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_18_0(*(v3 + a3[6]));
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
      v13 = a3[7];
    }

    v10 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_23B997190(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_12_3();
  _s11PriceStringOMa(v8);
  OUTLINED_FUNCTION_10_2();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
    OUTLINED_FUNCTION_10_2();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6]) = (a2 - 1);
        return;
      }

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
      v15 = a4[7];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_23B9972AC()
{
  _s11PriceStringOMa(319);
  if (v0 <= 0x3F)
  {
    sub_23B9973A0(319, &qword_27E1987E0, _s11PriceStringOMa);
    if (v1 <= 0x3F)
    {
      sub_23B975E04();
      if (v2 <= 0x3F)
      {
        sub_23B9973A0(319, &qword_27E1987E8, MEMORY[0x277CC9130]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B9973A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B9973F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v135 = a4;
  v138 = a5;
  v139 = a3;
  LODWORD(v134) = a2;
  v140 = sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v121 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_1();
  v119 = v8 - v9;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v10);
  v122 = &v116 - v11;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_3();
  v120 = v13;
  OUTLINED_FUNCTION_5_3();
  v118 = _s20LocalizationResourceVMa();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v128 = v16 - v15;
  OUTLINED_FUNCTION_5_3();
  v131 = sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v129 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v130 = v19 - v20;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_3();
  v127 = v22;
  v23 = OUTLINED_FUNCTION_5_3();
  v24 = _s22LocalizedPriceResourceVMa(v23);
  v25 = OUTLINED_FUNCTION_13_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_1();
  v117 = v27 - v26;
  OUTLINED_FUNCTION_5_3();
  sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v125 = v29;
  v126 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_1();
  v123 = v30 - v31;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_3();
  v124 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90);
  v35 = OUTLINED_FUNCTION_13_0(v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v116 - v36;
  v38 = sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_1();
  v133 = (v42 - v43);
  OUTLINED_FUNCTION_7_3();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v116 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v116 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C8);
  v51 = OUTLINED_FUNCTION_13_0(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_1();
  v54 = v52 - v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_3();
  v137 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987C0);
  v58 = OUTLINED_FUNCTION_13_0(v57);
  MEMORY[0x28223BE20](v58);
  v136 = &v116 - v59;
  v60 = OUTLINED_FUNCTION_5_3();
  v141 = _s11PriceStringOMa(v60);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_1();
  v64 = v62 - v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_3();
  v142 = v66;
  sub_23BBDCD28();
  sub_23BBDC878();
  v132 = sub_23B99835C();
  v67 = sub_23BBDCF38();
  v68 = *(v40 + 8);
  v68(v47, v38);
  v68(v49, v38);
  if (v67 & 1) != 0 && (v134)
  {
    v69 = sub_23BBDC8E8();
    v71 = v141;
    v70 = v142;
    *v142 = v69;
    v70[1] = v72;
    swift_storeEnumTagMultiPayload();
    sub_23BBDC8E8();
    v73 = sub_23BBDD088();

    v74 = v136;
    __swift_storeEnumTagSinglePayload(v136, 1, 1, v71);
    sub_23BBDC8F8();
    v75 = sub_23BBDCB58();
    if (__swift_getEnumTagSinglePayload(v37, 1, v75) == 1)
    {
      sub_23B979910(v37, &qword_27E197B90);
      v76 = 1;
    }

    else
    {
      v83 = v123;
      sub_23BBDCA98();
      v134 = v73;
      v84 = v124;
      sub_23BACBE14(v124);
      v85 = *(v125 + 8);
      v86 = v83;
      v87 = v126;
      v85(v86, v126);
      (*(*(v75 - 8) + 8))(v37, v75);
      sub_23BB72A48();
      v88 = v84;
      v73 = v134;
      v85(v88, v87);
      v76 = 0;
    }

    v89 = v135;
    v90 = v139;
    v91 = v137;
    __swift_storeEnumTagSinglePayload(v54, v76, 1, v140);
    sub_23B99840C(v54, v91, &qword_27E1987C8);
  }

  else
  {
    v77 = v142;
    sub_23BAE1994();
    sub_23B9983B4(v77, v64);
    v78 = v141;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v80 = v117;
        v81 = sub_23B998468(v64, v117);
        v82 = v127;
        MEMORY[0x23EEB50B0](v81);
        v134 = sub_23B997E48(v80, v82);
        (*(v129 + 8))(v82, v131);
        sub_23B9984C0(v80, _s22LocalizedPriceResourceVMa);
      }

      else
      {
        v92 = v128;
        v93 = sub_23B998468(v64, v128);
        MEMORY[0x23EEB50B0](v93);
        v94 = v122;
        if (*(v92 + *(v118 + 20)) == 6)
        {
          sub_23BB74064();
        }

        else
        {
          sub_23BB72A48();
        }

        v95 = v121;
        v96 = v120;
        v97 = v140;
        (*(v121 + 32))(v120, v94, v140);
        v98 = v129;
        (*(v129 + 16))(v127, v130, v131);
        sub_23BBD96A8();
        v99 = OUTLINED_FUNCTION_17_0();
        v100(v99);
        sub_23BBDD028();
        v134 = sub_23BBDD088();

        (*(v95 + 8))(v96, v97);
        (*(v98 + 8))(v130, v131);
        sub_23B9984C0(v128, _s20LocalizationResourceVMa);
        v78 = v141;
      }
    }

    else
    {
      v134 = sub_23BBDD088();
    }

    v89 = v135;
    v101 = v133;
    sub_23BBDCD28();
    sub_23BBDC878();
    v102 = sub_23BBDCF38();
    v68(v47, v38);
    v68(v101, v38);
    if (v102)
    {
      v74 = v136;
      sub_23BAE1994();
      v103 = 0;
    }

    else
    {
      v103 = 1;
      v74 = v136;
    }

    v91 = v137;
    v90 = v139;
    __swift_storeEnumTagSinglePayload(v74, v103, 1, v78);
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v140);
    v73 = v134;
  }

  v104 = sub_23BBDC8C8();
  v106 = v105;
  v107 = sub_23BBDC8B8();
  v109 = v108;
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_4_1();
  (*(v110 + 8))(a1);
  v111 = v138;
  *v138 = v104;
  v111[1] = v106;
  v111[2] = v107;
  v111[3] = v109;
  v112 = v111 + *(type metadata accessor for ProductViewConfiguration(0) + 24);
  sub_23B998468(v142, v112);
  v113 = type metadata accessor for ProductViewButtonConfiguration(0);
  sub_23B99840C(v74, v112 + v113[5], &qword_27E1987C0);
  v114 = (v112 + v113[6]);
  *v114 = v90;
  v114[1] = v89;
  result = sub_23B99840C(v91, v112 + v113[7], &qword_27E1987C8);
  *(v112 + v113[8]) = v73;
  return result;
}

uint64_t sub_23B997E48(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBD9848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBD96B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  sub_23BAE1EA0(v12);
  (*(v4 + 16))(v6, a2, v3);
  sub_23BBD96A8();
  (*(v8 + 16))(v11, v14, v7);
  sub_23BBDD028();
  v15 = sub_23BBDD088();

  (*(v8 + 8))(v14, v7);
  return v15;
}

uint64_t sub_23B998028@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  v11 = OUTLINED_FUNCTION_13_0(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  v24 = type metadata accessor for ProductViewStyleConfiguration();
  sub_23B9983B4(a1 + *(v24 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v13, v9, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_23B9984C0(v9, type metadata accessor for Product.TaskState);
  }

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    OUTLINED_FUNCTION_1_5();
    sub_23B979910(v13, &qword_27E1987F0);
LABEL_9:
    v27 = 1;
    goto LABEL_10;
  }

  (*(v16 + 32))(v23, v13, v14);
  v25 = *a1;
  if (!*a1)
  {
    OUTLINED_FUNCTION_1_5();
    (*(v16 + 8))(v23, v14);
    goto LABEL_9;
  }

  v26 = a1[1];
  (*(v16 + 16))(v20, v23, v14);

  sub_23B9973F4(v20, a2 & 1, v25, v26, a3);
  OUTLINED_FUNCTION_1_5();
  (*(v16 + 8))(v23, v14);
  v27 = 0;
LABEL_10:
  v28 = type metadata accessor for ProductViewConfiguration(0);
  return __swift_storeEnumTagSinglePayload(a3, v27, 1, v28);
}

unint64_t sub_23B99835C()
{
  result = qword_27E1987F8;
  if (!qword_27E1987F8)
  {
    sub_23BBDC8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1987F8);
  }

  return result;
}

uint64_t sub_23B9983B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23B99840C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B998468(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  OUTLINED_FUNCTION_4_1();
  v5 = OUTLINED_FUNCTION_17_0();
  v6(v5);
  return a2;
}

uint64_t sub_23B9984C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_23B9984C0(v0, type metadata accessor for ProductViewStyleConfiguration);
}

uint64_t sub_23B998590(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800);
    OUTLINED_FUNCTION_10_2();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[8];
    }

    else
    {
      type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
      OUTLINED_FUNCTION_10_2();
      if (*(v14 + 84) == a2)
      {
        v9 = v13;
        v10 = a3[9];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
        v10 = a3[10];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_23B998718(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
    OUTLINED_FUNCTION_10_2();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800);
      OUTLINED_FUNCTION_10_2();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[8];
      }

      else
      {
        type metadata accessor for SubscriptionOfferViewButtonConfiguration(0);
        OUTLINED_FUNCTION_10_2();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[9];
        }

        else
        {
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
          v11 = a4[10];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_23B998894()
{
  sub_23B9989D8(319, &qword_27E197B20);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
    if (v1 <= 0x3F)
    {
      sub_23B9989D8(319, &qword_27E198818);
      if (v2 <= 0x3F)
      {
        sub_23B998A24(319, &qword_27E198820, type metadata accessor for SubscriptionOfferViewButtonConfiguration);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SubscriptionOfferViewButtonConfiguration(319);
          if (v4 <= 0x3F)
          {
            sub_23B998A24(319, &qword_27E198828, MEMORY[0x277CDD330]);
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

void sub_23B9989D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23BBDD648();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_23B998A24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BBDD648();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23B998A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23BBD96B8();
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_23B998B3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_23BBD96B8();
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

unint64_t sub_23B998BE0()
{
  result = sub_23BBD96B8();
  if (v1 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B998C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v290 = a1;
  v288 = a2;
  v255 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_13_3(v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198800);
  OUTLINED_FUNCTION_13_0(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v7);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198840);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198848);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_13_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0);
  v14 = OUTLINED_FUNCTION_13_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_3();
  v266 = v16;
  v17 = OUTLINED_FUNCTION_5_3();
  v252 = type metadata accessor for SubscriptionStoreCopyWriter(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E197A68);
  v22 = OUTLINED_FUNCTION_13_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_3();
  v271 = v27;
  OUTLINED_FUNCTION_5_3();
  v272 = type metadata accessor for Subscription();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_13_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198850);
  OUTLINED_FUNCTION_13_0(v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_2();
  v270 = v34;
  OUTLINED_FUNCTION_5_3();
  v269 = type metadata accessor for SubscriptionComparator.Compared();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1();
  v262 = v37 - v36;
  OUTLINED_FUNCTION_5_3();
  v38 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  OUTLINED_FUNCTION_7();
  v275 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v276 = &v238 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OUTLINED_FUNCTION_5_3();
  v44 = type metadata accessor for SubscriptionOfferViewButtonConfiguration(v43);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_1();
  v48 = v47 - v46;
  v49 = sub_23BBDCFC8();
  v50 = OUTLINED_FUNCTION_13_0(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_1();
  v277 = v52 - v51;
  OUTLINED_FUNCTION_5_3();
  sub_23BBD96B8();
  OUTLINED_FUNCTION_7();
  v285 = v54;
  v286 = v53;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_4_4();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = &v238 - v58;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_3();
  v283 = v60;
  OUTLINED_FUNCTION_5_3();
  sub_23BBD9848();
  OUTLINED_FUNCTION_7();
  v273 = v62;
  v274 = v61;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3_5();
  v280 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_3();
  v284 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  v67 = OUTLINED_FUNCTION_13_0(v66);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = &v238 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v72 = &v238 - v71;
  v73 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v279 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_4();
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v238 - v78;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_3();
  v282 = v80;
  v81 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SubscriptionOfferViewConfiguration(v81);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_3_1();
  v85 = (v84 - v83);
  v85[2] = 0;
  v85[3] = 0;
  v259 = *(v86 + 28);
  *(v85 + v259) = 2;
  v289 = v86;
  v287 = *(v86 + 32);
  OUTLINED_FUNCTION_8_1();
  v278 = v44;
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v44);
  v281 = v38;
  v90 = v290 + *(v38 + 40);
  if (*(v90 + 16) == 1)
  {
    sub_23BAC74B0(*v90, v72);
    OUTLINED_FUNCTION_16_2(v72);
    if (!v209)
    {
      v245 = v79;
      v98 = v279;
      v99 = *(v279 + 32);
      v246 = v73;
      v244 = v279 + 32;
      v243 = v99;
      v100 = (v99)(v282, v72);
      v101 = v284;
      MEMORY[0x23EEB50B0](v100);
      v247 = v85;
      sub_23BBDCF48();
      sub_23BBD9838();
      v102 = v283;
      sub_23BB73D2C();
      v103 = sub_23B99A29C(v102, v101);
      v104 = (v285 + 2);
      v242 = v285[2];
      v242(v59, v102, v286);
      sub_23B99A918();
      v105 = swift_allocObject();
      sub_23B99A8C0();
      result = sub_23BBDC2A8();
      if ((result & 1) == 0 && __OFADD__(v103++, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v108 = v285[4];
      v275 = v285 + 4;
      v276 = v104;
      v108(v48, v59, v286);
      v109 = v278;
      v110 = (v48 + *(v278 + 20));
      *v110 = sub_23B99A864;
      v110[1] = v105;
      *(v48 + *(v109 + 24)) = v103;
      v94 = v289;
      v111 = v247;
      sub_23B99A8C0();
      v112 = v290;
      sub_23B979510();
      sub_23B979510();
      v113 = v246;
      if (__swift_getEnumTagSinglePayload(v70, 1, v246) == 1)
      {
        sub_23B979910(v70, &qword_27E1987F0);
        v114 = SubscriptionOfferViewStyleConfiguration.subscriptionGroupDisplayName.getter();
        v116 = v115;
        *v111 = v114;
        v111[1] = v115;
        v117 = v270;
        sub_23B979510();
        if (__swift_getEnumTagSinglePayload(v117, 1, v269) == 1)
        {
          v118 = OUTLINED_FUNCTION_10_3();
          v119(v118);
          v120 = OUTLINED_FUNCTION_9_3();
          v121(v120);
          v122 = OUTLINED_FUNCTION_23_1();
          v123(v122);
          OUTLINED_FUNCTION_0_4();
          sub_23B99A4FC(v112, v124);
          sub_23B979910(v117, &qword_27E198850);

LABEL_22:
          sub_23B979910(v111 + v287, &qword_27E198800);
          sub_23B99A4FC(v111 + *(v94 + 36), type metadata accessor for SubscriptionOfferViewButtonConfiguration);
          sub_23B979910(v111 + *(v94 + 40), &qword_27E1987F0);
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_28();
        sub_23B99A8C0();
        sub_23BAB2FCC(v116, v263);
        sub_23B99A4FC(v116, type metadata accessor for SubscriptionComparator.Compared);
        v136 = OUTLINED_FUNCTION_10_3();
        v137(v136);
        v138 = OUTLINED_FUNCTION_9_3();
        v139(v138);
        v140 = OUTLINED_FUNCTION_23_1();
        v141(v140);
        OUTLINED_FUNCTION_0_4();
        sub_23B99A4FC(v112, v142);
        sub_23B99A8C0();
        type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        sub_23B99A918();
        OUTLINED_FUNCTION_20_2();
        __swift_storeEnumTagSinglePayload(v235, v236, v237, v94);
        return sub_23B99A4FC(v111, type metadata accessor for SubscriptionOfferViewConfiguration);
      }

      v270 = v108;
      v125 = v245;
      v243(v245, v70, v113);
      v126 = v268;
      (*(v98 + 16))(v268, v125, v113);
      v127 = v271;
      sub_23BBA7878(v126, 0, 1, v271);
      v128 = v272;
      if (__swift_getEnumTagSinglePayload(v127, 1, v272) == 1)
      {
        v129 = v127;
        v130 = *(v98 + 8);
        v130(v125, v113);
        v131 = OUTLINED_FUNCTION_10_3();
        v132(v131);
        v133 = OUTLINED_FUNCTION_9_3();
        v134(v133);
        v130(v282, v113);
        OUTLINED_FUNCTION_0_4();
        sub_23B99A4FC(v112, v135);
        sub_23B979910(v129, qword_27E197A68);
LABEL_21:
        v111 = v247;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_28();
      sub_23B99A8C0();
      v143 = (v112 + *(v281 + 28));
      if (!*v143)
      {
        OUTLINED_FUNCTION_1_6();
        sub_23B99A4FC(v127, v152);
        v153 = *(v98 + 8);
        v154 = v246;
        v153(v245, v246);
        v155 = OUTLINED_FUNCTION_10_3();
        v156(v155);
        v157 = OUTLINED_FUNCTION_9_3();
        v158(v157);
        v153(v282, v154);
        OUTLINED_FUNCTION_0_4();
        sub_23B99A4FC(v112, v159);
        goto LABEL_21;
      }

      v240 = *v143;
      v144 = v143[1];
      OUTLINED_FUNCTION_7_4();
      v145 = v251;
      sub_23B99A918();
      sub_23B979510();
      OUTLINED_FUNCTION_28();
      sub_23B979510();
      v239 = v144;

      v146 = sub_23BAB34DC(v145, v127);
      v148 = v147;
      v149 = v145 + *(v128 + 20);
      v150 = *(v149 + 8);
      if (v150 == 2)
      {
        v268 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
        v269 = v151;
      }

      else
      {
        v268 = *v149;
        v269 = v150 & 1;
      }

      v281 = sub_23BBDC8C8();
      v271 = v160;
      v263 = sub_23BBDC8B8();
      v262 = v161;
      v244 = sub_23BBDC8E8();
      v243 = v162;
      KeyPath = swift_getKeyPath();
      sub_23B9FF918(KeyPath);

      v164 = sub_23BBDCD08();
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v164);
      v168 = 0;
      if ((v148 & 1) == 0)
      {
        swift_getKeyPath();
        sub_23B9FCC2C();
        v170 = v169;

        if (v170 >= v146)
        {
          swift_getKeyPath();
          sub_23B9FCC2C();
          v172 = v171;

          if (v146 == v172)
          {
            v168 = 4;
          }

          else
          {
            v168 = 2;
          }
        }

        else
        {
          v168 = 8;
        }
      }

      v241 = v150 == 2;
      v173 = v266;
      sub_23B979510();
      v174 = v252;
      v175 = v253;
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v176, v177, v178, v164);
      v179 = *(v174 + 36);
      sub_23B979910(v265, qword_27E197A68);
      sub_23B979910(v173, &unk_27E19FEF0);
      OUTLINED_FUNCTION_1_6();
      sub_23B99A4FC(v145, v180);
      *(v175 + v179) = 0;
      sub_23BBDCC88();
      OUTLINED_FUNCTION_8_1();
      __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
      v185 = v269;
      *v175 = v268;
      *(v175 + 8) = v185;
      *(v175 + 16) = v241;
      v186 = v271;
      *(v175 + 24) = v281;
      *(v175 + 32) = v186;
      v187 = v262;
      *(v175 + 40) = v263;
      *(v175 + 48) = v187;
      v188 = v243;
      *(v175 + 56) = v244;
      *(v175 + 64) = v188;
      sub_23B99A974();
      *(v175 + v179) = v168;
      sub_23B99A974();
      v189 = v258;
      sub_23B99A8C0();
      v190 = v267;
      v191 = sub_23BBDC8C8();
      v192 = v247;
      *v247 = v191;
      v192[1] = v193;
      v192[2] = sub_23BBDC8B8();
      v192[3] = v194;
      v195 = v192 + *(v289 + 24);
      sub_23BB95108();
      sub_23BB95108();
      _s11PriceStringOMa(0);
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
      type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
      swift_storeEnumTagMultiPayload();
      v200 = v261;
      sub_23B979510();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_28();
      sub_23B99A918();
      OUTLINED_FUNCTION_20_2();
      __swift_storeEnumTagSinglePayload(v201, v202, v203, v272);
      v204 = *(v256 + 48);
      v205 = v257;
      sub_23B979510();
      sub_23B979510();
      OUTLINED_FUNCTION_16_2(v205);
      if (v209)
      {
        OUTLINED_FUNCTION_29(v195);
        OUTLINED_FUNCTION_29(v200);
        OUTLINED_FUNCTION_16_2(v204 + v205);
        v206 = v286;
        if (v209)
        {
          sub_23B979910(v205, qword_27E197A68);
          OUTLINED_FUNCTION_24_1();
          *(v208 + v207) = 1;
          OUTLINED_FUNCTION_17_3();
LABEL_41:
          sub_23BBDCFD8();
          sub_23BBD9838();
          v213 = v254;
          sub_23BB73D2C();
          v214 = 1;
LABEL_42:
          v217 = (v242)(v204, v213, v206);
          MEMORY[0x23EEB50B0](v217);
          v286 = sub_23B99A29C(v213, v200);
          v218 = v274;
          v219 = *(v273 + 8);
          v219(v200, v274);
          v220 = v190;
          v221 = v285[1];
          v221(v213, v206);
          sub_23B99A4FC(v189, type metadata accessor for SubscriptionStoreCopyWriter);
          OUTLINED_FUNCTION_1_6();
          sub_23B99A4FC(v220, v222);
          v223 = *(v279 + 8);
          v224 = v246;
          v223(v245, v246);
          v221(v283, v206);
          v219(v284, v218);
          v223(v282, v224);
          OUTLINED_FUNCTION_0_4();
          result = sub_23B99A4FC(v290, v225);
          v226 = v286 + v214;
          if (!__OFADD__(v286, v214))
          {
            v227 = v250;
            v270(v250, v264, v206);
            v228 = v278;
            v229 = (v227 + *(v278 + 20));
            v230 = v239;
            *v229 = v240;
            v229[1] = v230;
            *(v227 + *(v228 + 24)) = v226;
            OUTLINED_FUNCTION_20_2();
            __swift_storeEnumTagSinglePayload(v231, v232, v233, v234);
            v111 = v247;
            sub_23B99A974();
            v94 = v289;
            goto LABEL_44;
          }

LABEL_46:
          __break(1u);
          return result;
        }
      }

      else
      {
        v200 = v249;
        sub_23B979510();
        OUTLINED_FUNCTION_16_2(v204 + v205);
        v206 = v286;
        if (!v209)
        {
          OUTLINED_FUNCTION_8_4();
          v215 = v248;
          sub_23B99A8C0();
          v216 = sub_23BBA82BC(v200, v215);
          sub_23B99A4FC(v215, type metadata accessor for Subscription);
          v204 = qword_27E197A68;
          sub_23B979910(v260, qword_27E197A68);
          sub_23B979910(v261, qword_27E197A68);
          sub_23B99A4FC(v200, type metadata accessor for Subscription);
          v190 = v267;
          sub_23B979910(v205, qword_27E197A68);
          *(v247 + v259) = v216 & 1;
          OUTLINED_FUNCTION_17_3();
          if (v216)
          {
            goto LABEL_41;
          }

LABEL_39:
          v213 = v254;
          sub_23BB9459C();
          v214 = 0;
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_29(v260);
        OUTLINED_FUNCTION_29(v261);
        OUTLINED_FUNCTION_1_6();
        sub_23B99A4FC(v200, v210);
      }

      sub_23B979910(v205, &qword_27E198840);
      OUTLINED_FUNCTION_24_1();
      *(v212 + v211) = 0;
      OUTLINED_FUNCTION_17_3();
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_0_4();
    sub_23B99A4FC(v290, v91);
    sub_23B979910(v72, &qword_27E1987F0);
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_23B99A4FC(v92, v93);
  }

  sub_23B979910(v85 + v287, &qword_27E198800);
  v94 = v289;
LABEL_7:
  OUTLINED_FUNCTION_8_1();
  return __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
}

uint64_t sub_23B99A29C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BBD9848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BBD96B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_23BBD9738();
  (*(v4 + 16))(v6, a2, v3);
  sub_23BBD96A8();
  (*(v8 + 16))(v11, v13, v7);
  sub_23BBDD028();
  v14 = sub_23BBDD088();

  (*(v8 + 8))(v13, v7);
  return v14;
}

uint64_t sub_23B99A484(uint64_t a1)
{
  result = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  v3 = (a1 + *(result + 24));
  if (*v3)
  {
    return (*v3)();
  }

  return result;
}

uint64_t sub_23B99A4FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B99A554()
{
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Subscription();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v5 + 8))(v0 + v2);
  }

  v6 = v3 + v1[5];
  v7 = type metadata accessor for SubscriptionComparator.Compared();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v8 + 8))(v6);
    v9 = *(v7 + 20);
    v10 = sub_23BBDCC88();
    if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }
  }

  if (*(v3 + v1[6]))
  {
  }

  if (*(v3 + v1[7]))
  {
  }

  v11 = v1[8];
  v12 = sub_23BBDCC88();
  if (!__swift_getEnumTagSinglePayload(v3 + v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  sub_23B99A808(*(v3 + v1[10]), *(v3 + v1[10] + 8), *(v3 + v1[10] + 16));

  v13 = v1[12];
  v14 = sub_23BBDCDB8();
  if (!__swift_getEnumTagSinglePayload(v3 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v3 + v13, v14);
  }

  return swift_deallocObject();
}

void sub_23B99A808(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_23B99A864()
{
  v1 = type metadata accessor for SubscriptionOfferViewStyleConfiguration();
  OUTLINED_FUNCTION_13_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_23B99A484(v3);
}

uint64_t sub_23B99A8C0()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B99A918()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23B99A974()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return sub_23B979910(a1, v1);
}

BOOL sub_23B99AB20(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_23B99AB4C(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t PagedProminentPickerSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_5_4();
  sub_23B99B814(a1, v2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198858);
  v7 = v6[14];
  v8 = v6[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
  v10 = a2 + v6[16];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  v11 = a2 + v6[17];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v6[18];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48));
  sub_23B99B870(v2, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  *v13 = sub_23B99ADC8;
  v13[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870);
  swift_storeEnumTagMultiPayload();
  v14 = (a2 + v6[13]);
  *v14 = sub_23B99AECC;
  v14[1] = 0;
  *(a2 + v7) = 2;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = 17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198878);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_23B99B524;
  v18[2] = v16;
  return result;
}

uint64_t sub_23B99ADC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988C8);
  v8 = a2 + *(v7 + 40);
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  v10 = (a2 + *(v7 + 36));
  *v10 = sub_23B9D11BC;
  v10[1] = 0;
  return result;
}

uint64_t sub_23B99AECC(uint64_t a1)
{
  v2 = sub_23BBDABB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SubscriptionStoreButton();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B99B814(a1, v8, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  v9 = &v8[v6[5]];
  v9[48] = 0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;
  v10 = &v8[v6[6]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 16) = 0;
  v11 = &v8[v6[7]];
  KeyPath = swift_getKeyPath();
  v16[15] = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  v13 = &v8[v6[8]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = &v8[v6[9]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_23BBDABA8();
  sub_23B99B770(&qword_27E1988B8, type metadata accessor for SubscriptionStoreButton);
  sub_23B99B770(&qword_27E1988C0, MEMORY[0x277CDDF40]);
  sub_23BBDB6E8();
  (*(v3 + 8))(v5, v2);
  return sub_23B99B7B8(v8);
}

double sub_23B99B154()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB1AF04(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, v13).n128_u64[0];
  return result;
}

double sub_23B99B184()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB1AF04(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, v13).n128_u64[0];
  return result;
}

double sub_23B99B208()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB491B0(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_23B99B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(_OWORD *))
{
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  v12 = *(a1 + 32);
  sub_23B972538(v11, v10, a5);
  return a7(v11);
}

uint64_t sub_23B99B304(uint64_t a1)
{
  v3 = sub_23BBDA308();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_4();
  (*(v4 + 16))(v1, a1);
  return sub_23BBDA6C8();
}

uint64_t sub_23B99B3C0()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA2E8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_23B99B3EC()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDA2E8();
  *v0 = result & 1;
  return result;
}

double sub_23B99B418()
{
  OUTLINED_FUNCTION_1_7();
  v1.n128_f64[0] = sub_23BB491B0(v0);
  *&result = OUTLINED_FUNCTION_0_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v1, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_23B99B474()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAC7148();
  *v0 = result;
  return result;
}

uint64_t sub_23B99B49C()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BAC7148();
  *v0 = result;
  return result;
}

unint64_t sub_23B99B54C()
{
  result = qword_27E198880;
  if (!qword_27E198880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198880);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PagedProminentPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23B99B63CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B99B678()
{
  result = qword_27E198888;
  if (!qword_27E198888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198878);
    sub_23B97B518(&qword_27E198890, &qword_27E198858);
    sub_23B97B518(&qword_27E198898, &qword_27E1988A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198888);
  }

  return result;
}

uint64_t sub_23B99B770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B99B7B8(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionStoreButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B99B814(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B99B870(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, char a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t sub_23B99B94C()
{

  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseTimestamp);
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appearTimestamp);
  OUTLINED_FUNCTION_14_2(OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_disappearTimestamp);
  return v0;
}

uint64_t sub_23B99B9B0()
{
  sub_23B99B94C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StoreViewEventConfiguration()
{
  result = qword_27E1988D0;
  if (!qword_27E1988D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B99BA5C()
{
  sub_23B99BB44();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23B99BB44()
{
  if (!qword_27E1988E0)
  {
    sub_23BBD9828();
    v0 = sub_23BBDD648();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1988E0);
    }
  }
}

uint64_t sub_23B99BB9C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = sub_23BBD9828();
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appliesSubscriptionOffer) = 3;
  OUTLINED_FUNCTION_8_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_initializer) = 3;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_style) = 5;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyIcon) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseCompletion) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult) = 4;
  v11 = v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases) = 2;
  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_didSendAppearEvent) = 0;
  return v0;
}

void *sub_23B99BD20(void *result, void *a2, void *a3, void *a4)
{
  *(v4 + *a2) = *result != 0;
  *(v4 + *a3) = result[4] != 0;
  *(v4 + *a4) = result[2] != 0;
  return result;
}

void sub_23B99BD60()
{
  v1 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_didSendAppearEvent;
  if ((*(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_didSendAppearEvent) & 1) == 0)
  {
    sub_23B99C844(&v3);
    if (v4 != 1)
    {
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10[0] = v6[0];
      *(v10 + 11) = *(v6 + 11);
      *(v0 + v1) = 1;
      if (qword_27E197798 != -1)
      {
        OUTLINED_FUNCTION_6_4();
      }

      v2 = type metadata accessor for SKLogger();
      __swift_project_value_buffer(v2, qword_27E1BFD50);
      sub_23BB13224();
      sub_23B979910(&v3, &qword_27E1988F8);
    }
  }
}

uint64_t sub_23B99BE24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198908);
  OUTLINED_FUNCTION_13_0(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - v2;
  v4 = type metadata accessor for StoreViewDisappearEvent();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  sub_23B99C8F4(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_23B979910(v3, &qword_27E198908);
  }

  sub_23B99D320(v3, v8, type metadata accessor for StoreViewDisappearEvent);
  if (qword_27E197798 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v10 = type metadata accessor for SKLogger();
  __swift_project_value_buffer(v10, qword_27E1BFD50);
  sub_23BB133F4();
  return sub_23B99D2C8(v8, type metadata accessor for StoreViewDisappearEvent);
}

uint64_t sub_23B99BFA4@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v44 = a4;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  v10 = OUTLINED_FUNCTION_13_0(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_23BBD9828();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v23 = *a2;
  swift_beginAccess();
  sub_23B99D380(v5 + v23, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_23B979910(v15, &qword_27E198900);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v24 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v24, qword_27E1BFC88);
    v25 = sub_23BBD9988();
    if (OUTLINED_FUNCTION_13_4(v25))
    {
      swift_slowAlloc();
      v47[0] = OUTLINED_FUNCTION_5_5();
      *v22 = 136446466;
      *(v22 + 4) = sub_23BA5AB90(0, 0xE000000000000000, v47);
      *(v22 + 6) = 2082;
      *(v22 + 14) = sub_23BA5AB90(0xD000000000000032, 0x800000023BBE0380, v47);
      OUTLINED_FUNCTION_18_4(&dword_23B970000, v26, v27, "%{public}s%{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    type metadata accessor for MintDisappearBaseEvent(0);
  }

  else
  {
    v42 = v17;
    v43 = a5;
    v28 = *(v17 + 32);
    v28(v22, v15, v16);
    v29 = *a3;
    swift_beginAccess();
    sub_23B99D380(v5 + v29, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v16) != 1)
    {
      v28(v19, v12, v16);
      v38 = v43;
      v28(v43, v22, v16);
      v39 = type metadata accessor for MintDisappearBaseEvent(0);
      v28(&v38[v39[5]], v19, v16);
      v38[v39[6]] = *(v5 + *v44);
      v38[v39[7]] = v45 & 1;
      OUTLINED_FUNCTION_20_2();
      v37 = v39;
      return __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    }

    sub_23B979910(v12, &qword_27E198900);
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v30 = type metadata accessor for SKLogger();
    v31 = OUTLINED_FUNCTION_16_3(v30, qword_27E1BFC88);
    v32 = sub_23BBD9988();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v33 = 136446466;
      *(v33 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v46);
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_23BA5AB90(0xD000000000000035, 0x800000023BBE03C0, &v46);
      _os_log_impl(&dword_23B970000, v32, v31, "%{public}s%{public}s", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    (*(v42 + 8))(v22, v16);
    type metadata accessor for MintDisappearBaseEvent(0);
  }

  OUTLINED_FUNCTION_8_1();
  return __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
}

uint64_t sub_23B99C4B8(uint64_t a1, char a2, void *a3, int a4, uint64_t a5, char a6)
{
  v24 = a5;
  v23 = a4;
  v22 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_23BBD9818();
  sub_23BBD9828();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v13, v6 + v18);
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_initializer) = a2 & 1;
  *(v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyIcon) = a6;
  v19 = sub_23BA8CE60(a1);
  v20 = v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested;
  *v20 = v19;
  *(v20 + 8) = 0;
  sub_23B99BD20(v22, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseCompletion);
  *(v6 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases) = sub_23BBD9BD8() & 1;
  return sub_23B99C640();
}

uint64_t sub_23B99C640()
{
  v1 = swift_dynamicCastMetatype();
  if (v1 || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || (result = swift_dynamicCastMetatype()) != 0)
  {
    result = swift_dynamicCastMetatype();
    v3 = result == 0;
    if (!(v1 | result))
    {
      result = swift_dynamicCastMetatype();
      if (result)
      {
        v3 = 3;
      }

      else
      {
        result = swift_dynamicCastMetatype();
        if (result)
        {
          v3 = 2;
        }

        else
        {
          v3 = 4;
        }
      }
    }
  }

  else
  {
    v3 = 4;
  }

  *(v0 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_style) = v3;
  return result;
}

uint64_t sub_23B99C72C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  OUTLINED_FUNCTION_13_0(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  sub_23BBD9818();
  sub_23BBD9828();
  OUTLINED_FUNCTION_20_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_disappearTimestamp;
  swift_beginAccess();
  sub_23B99D3F0(v6, v1 + v11);
  swift_endAccess();
  sub_23B99BD20(a1, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseStart, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseOptions, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesInAppPurchaseCompletion);
  *(v1 + OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases) = sub_23BBD9BD8() & 1;
  return sub_23B99C640();
}

uint64_t sub_23B99C844@<X0>(uint64_t a1@<X8>)
{
  sub_23B99CDE4(&v11);
  v2 = v11;
  if ((v11 & 0xFF0000) == 0x20000)
  {
    result = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
    v8 = 1;
  }

  else
  {
    v5 = v14 | (v15 << 16);
    v4 = v13;
    v10 = v12;
    result = sub_23BB11FBC();
    v7 = v10;
    v6 = v9 & 0xFFFFFF;
  }

  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 32) = v7;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 58) = BYTE2(v5);
  return result;
}

uint64_t sub_23B99C8F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for MintDisappearBaseEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99CDE4(&v22);
  v8 = v22;
  if ((v22 & 0xFF0000) != 0x20000)
  {
    sub_23B99BFA4(0, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_appearTimestamp, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_disappearTimestamp, &OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_purchaseResult, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_23B99D320(v4, v7, type metadata accessor for MintDisappearBaseEvent);
      v12 = sub_23BB11FBC();
      v14 = v13;
      v16 = v15;
      v17 = v15 >> 8;
      v18 = HIWORD(v15);
      v19 = type metadata accessor for StoreViewDisappearEvent();
      sub_23B99D320(v7, a1 + *(v19 + 24), type metadata accessor for MintDisappearBaseEvent);
      *a1 = v12;
      *(a1 + 8) = v14;
      *(a1 + 16) = v16;
      *(a1 + 17) = v17;
      *(a1 + 18) = v18;
      *(a1 + 24) = v8;
      *(a1 + 32) = v23[0];
      *(a1 + 43) = *(v23 + 11);
      v10 = a1;
      v11 = 0;
      v9 = v19;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    sub_23B979910(v4, &qword_27E198910);
  }

  v9 = type metadata accessor for StoreViewDisappearEvent();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t sub_23B99CAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988E8);
  OUTLINED_FUNCTION_13_0(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = type metadata accessor for MintViewBasePurchaseEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v46 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988F0);
  OUTLINED_FUNCTION_13_0(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ProductViewBaseEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  sub_23B99CDE4(&v47);
  v21 = v47;
  if ((v47 & 0xFF0000) == 0x20000)
  {
    goto LABEL_9;
  }

  if (a1)
  {
    sub_23BB65634(v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      OUTLINED_FUNCTION_4_6();
      sub_23B99D320(v15, v20, v22);
      sub_23BB120B0();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        v33 = v46;
        sub_23B99D320(v7, v46, type metadata accessor for MintViewBasePurchaseEvent);
        v34 = sub_23BB11FBC();
        v36 = v35;
        v38 = v37;
        v44 = HIWORD(v37);
        v45 = v37 >> 8;
        v39 = type metadata accessor for StoreViewPurchaseEvent();
        OUTLINED_FUNCTION_4_6();
        sub_23B99D320(v20, a2 + v40, v41);
        sub_23B99D320(v33, a2 + *(v39 + 28), type metadata accessor for MintViewBasePurchaseEvent);
        *a2 = v34;
        *(a2 + 8) = v36;
        *(a2 + 16) = v38;
        v42 = v44;
        *(a2 + 17) = v45;
        *(a2 + 18) = v42;
        *(a2 + 24) = v21;
        *(a2 + 32) = v48[0];
        *(a2 + 43) = *(v48 + 11);
        OUTLINED_FUNCTION_20_2();
        v31 = v39;
        return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      }

      sub_23B99D2C8(v20, type metadata accessor for ProductViewBaseEvent);
      v23 = &qword_27E1988E8;
      v24 = v7;
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
  }

  v23 = &qword_27E1988F0;
  v24 = v15;
LABEL_8:
  sub_23B979910(v24, v23);
LABEL_9:
  type metadata accessor for StoreViewPurchaseEvent();
  OUTLINED_FUNCTION_8_1();
  return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
}

void sub_23B99CDE4(uint64_t a1@<X8>)
{
  v5 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_initializer];
  if (v5 == 3)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v6 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v6, qword_27E1BFC88);
    v7 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v7))
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  v11 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_prefersPromotionalIcon];
  if (v11 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v12 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v12, qword_27E1BFC88);
    v13 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v13))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v15 = OUTLINED_FUNCTION_3_7(4.8752e-34, v14);
    OUTLINED_FUNCTION_1_8(v15);
    v10 = v16 + 11;
    goto LABEL_21;
  }

  if (v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested + 8])
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v17 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v17, qword_27E1BFC88);
    v18 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v18))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v20 = OUTLINED_FUNCTION_3_7(4.8752e-34, v19);
    OUTLINED_FUNCTION_1_8(v20);
    v10 = v21 + 6;
    goto LABEL_21;
  }

  v22 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_style];
  if (v22 == 5)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v23 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v23, qword_27E1BFC88);
    v24 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v24))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v26 = OUTLINED_FUNCTION_3_7(4.8752e-34, v25);
    OUTLINED_FUNCTION_1_8(v26);
    v10 = v27 - 6;
    goto LABEL_21;
  }

  v35 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyIcon];
  if (v35 == 2)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v36 = type metadata accessor for SKLogger();
    OUTLINED_FUNCTION_16_3(v36, qword_27E1BFC88);
    v37 = sub_23BBD9988();
    if (!OUTLINED_FUNCTION_13_4(v37))
    {
      goto LABEL_23;
    }

LABEL_5:
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    *(v2 + 4) = OUTLINED_FUNCTION_3_7(4.8752e-34, v8);
    *(v2 + 12) = 2082;
    v9 = v3 | 0x8000000000000000;
    v10 = 0xD00000000000002ALL;
LABEL_22:
    *(v2 + 14) = sub_23BA5AB90(v10, v9, &v44);
    OUTLINED_FUNCTION_18_4(&dword_23B970000, v28, v29, "%{public}s%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_15_3();
    goto LABEL_23;
  }

  v38 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_usesAnyCustomPlaceholder];
  if (v38 != 2)
  {
    v32 = *&v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsRequested];
    v30 = *&v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded];
    v34 = (v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_displaysRestorePurchases] | (v5 << 8)) & 0xFFFFFFFFFFFEFFFFLL | ((v11 & 1) << 16);
    v31 = v1[OBJC_IVAR____TtC17_StoreKit_SwiftUI27StoreViewEventConfiguration_productsLoaded + 8];
    v33 = v22 & 0xFFFEFEFF | ((v35 & 1) << 8) | ((v38 & 1) << 16);
    goto LABEL_24;
  }

  if (qword_27E1976D0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v39 = type metadata accessor for SKLogger();
  OUTLINED_FUNCTION_16_3(v39, qword_27E1BFC88);
  v40 = sub_23BBD9988();
  if (OUTLINED_FUNCTION_13_4(v40))
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_12_4();
    v42 = OUTLINED_FUNCTION_3_7(4.8752e-34, v41);
    OUTLINED_FUNCTION_1_8(v42);
    v10 = v43 + 13;
LABEL_21:
    v9 = v3 | 0x8000000000000000;
    goto LABEL_22;
  }

LABEL_23:

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0x20000;
LABEL_24:
  *a1 = v34;
  *(a1 + 8) = v30;
  *(a1 + 16) = v31;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  *(a1 + 34) = BYTE2(v33);
}

uint64_t sub_23B99D1DC()
{
  sub_23B99D468();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23B99D254()
{
  swift_getKeyPath();
  sub_23BBDB748();
}

uint64_t sub_23B99D2C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B99D320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B99D380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B99D3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198900);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B99D468()
{
  result = qword_27E198918[0];
  if (!qword_27E198918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E198918);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

unint64_t OUTLINED_FUNCTION_3_7(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_23BA5AB90(0, 0xE000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_13_4(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_14_2@<X0>(uint64_t a1@<X8>)
{

  return sub_23B979910(v2 + a1, v1);
}

void OUTLINED_FUNCTION_15_3()
{

  JUMPOUT(0x23EEB6DC0);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_23BBDD588();
}

void OUTLINED_FUNCTION_18_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_23B99D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23BBDD848();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_6();
  v6 = sub_23BBDD278();

  return MEMORY[0x28214E6C8](v6, a1, v5, a3);
}

uint64_t sub_23B99D6BC()
{
  v0 = sub_23BBD98C8();
  OUTLINED_FUNCTION_21_1();
  v1 = sub_23BBDD848();
  OUTLINED_FUNCTION_21_1();
  v2 = sub_23BBDD278();
  MEMORY[0x23EEB5FD0](v2, v1);
  OUTLINED_FUNCTION_21_1();
  sub_23BBDD848();
  sub_23BBDD808();
  return v0;
}

void sub_23B99D750()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v40 = v8;
  OUTLINED_FUNCTION_3_2();
  v36 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_2();
  v34[1] = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_6();
  v41 = v19;
  sub_23BBDD648();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v20);
  v22 = v34 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v35 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  v27 = v34 - v26;
  v37 = v1;
  v42 = sub_23B99D650(v7, v5, v1);
  v43 = v28;
  v44 = v29;
  v39 = v27;
  sub_23BBDD188();
  v40 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_5_6();
  while (1)
  {
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v22, 1, v41) == 1)
    {
      break;
    }

    v30 = OUTLINED_FUNCTION_3_8();
    v31(v30);
    v32 = OUTLINED_FUNCTION_8_5();
    v33(v32);
    type metadata accessor for OrderedMultiMap();
    OUTLINED_FUNCTION_14_3();
    (*v3)(v13, v5);
    (*v1)(v18, v7);
  }

  (*(v35 + 8))(v39, v40);
  OUTLINED_FUNCTION_9_1();
}

void sub_23B99DA30()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_3_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  v11[2] = v12;
  v11[3] = v4;
  v13 = *(v1 + 32);
  v11[4] = v13;
  (*(v6 + 16))(v10, v3, v4);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v4;
  v14[4] = v13;
  v14[5] = sub_23B99EA64;
  v14[6] = v11;
  sub_23BBDD848();
  sub_23BBD9938();
  sub_23BBD9908();
  sub_23BBDD818();
  sub_23B99EA7C();

  OUTLINED_FUNCTION_9_1();
}

void sub_23B99DBE8()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v39 = v0;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_3_2();
  v35 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_3_2();
  v33[1] = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_6();
  v40 = v17;
  sub_23BBDD648();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = v33 - v19;
  v21 = *(v1 + 8);
  OUTLINED_FUNCTION_21_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_2();
  v34 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v26 = v33 - v25;
  sub_23BBDD458();
  v41 = sub_23B99D6BC();
  v42 = v27;
  v43 = v28;
  v38 = v26;
  sub_23BBDD188();
  v39 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_5_6();
  while (1)
  {
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v20, 1, v40) == 1)
    {
      break;
    }

    v29 = OUTLINED_FUNCTION_3_8();
    v30(v29);
    v31 = OUTLINED_FUNCTION_8_5();
    v32(v31);
    type metadata accessor for OrderedMultiMap();
    OUTLINED_FUNCTION_14_3();
    (*v21)(v11, v4);
    (*v26)(v16, v6);
  }

  (*(v34 + 8))(v38, v39);
  OUTLINED_FUNCTION_9_1();
}

void sub_23B99DED0()
{
  sub_23BBDD278();

  JUMPOUT(0x23EEB5FD0);
}

uint64_t sub_23B99DF0C()
{
  sub_23BBDD848();
  sub_23BBD9948();
  swift_getWitnessTable();
  return sub_23BBDD2B8();
}

uint64_t sub_23B99E010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

void sub_23B99E04C()
{
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_6();
  sub_23BBDD2A8();
  swift_getWitnessTable();
  sub_23B99DBE8();
}

void sub_23B99E0D4(void *a1@<X8>)
{
  sub_23B99E04C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_23B99E10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for OrderedMultiMap.Iterator() + 44);
  sub_23BBDD848();
  swift_getWitnessTable();
  sub_23BBDD8C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __swift_storeEnumTagSinglePayload(&a5[v10], 1, 1, TupleTypeMetadata2);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  v12 = sub_23BBDD648();
  (*(*(v12 - 8) + 8))(&a5[v10], v12);

  return __swift_storeEnumTagSinglePayload(&a5[v10], 1, 1, TupleTypeMetadata2);
}

void sub_23B99E244()
{
  OUTLINED_FUNCTION_10_0();
  v82 = v0;
  v2 = v1;
  v80 = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_23BBDD848();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_6();
  v78 = v6;
  sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v72 = v8;
  v73 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v9);
  v77 = &v65 - v10;
  OUTLINED_FUNCTION_11_3();
  v71 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_7_0();
  v12 = MEMORY[0x28223BE20](v11);
  v70 = &v65 - v13;
  v81 = v4;
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v74 = v15 - v14;
  swift_getWitnessTable();
  sub_23BBDD8C8();
  v16 = OUTLINED_FUNCTION_6_5();
  v17 = sub_23BBDD648();
  OUTLINED_FUNCTION_3_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_5();
  v69 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  OUTLINED_FUNCTION_3_2();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_5();
  v68 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  v32 = *(v19 + 16);
  v79 = v82 + *(v2 + 44);
  v32(v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v16) == 1)
  {
    v74 = v26;
    (*(v19 + 8))(v24, v17);
LABEL_5:
    OUTLINED_FUNCTION_11_3();
    sub_23BBD9928();
    v38 = v77;
    sub_23BBD9918();
    v39 = v78;
    if (__swift_getEnumTagSinglePayload(v38, 1, v78) != 1)
    {
      v43 = *(v38 + *(v39 + 48));
      v75 = v2;
      v76 = v17;
      v44 = v19;
      v45 = v38;
      v46 = v70;
      v47 = v71;
      v48 = *(v71 + 48);
      v49 = v74;
      v50 = *(v74 + 32);
      v50(v70, v45, v5);
      *&v46[v48] = v43;
      v51 = *&v46[*(v47 + 48)];
      v52 = v68;
      v50(v68, v46, v5);
      v53 = v69;
      v54 = (v69 + *(v16 + 48));
      (*(v49 + 16))(v69, v52, v5);
      *v54 = v51;

      v55 = sub_23BBDD7E8();

      v54[1] = v55;
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v16);
      (*(v44 + 40))(v79, v53, v76);
      sub_23B99E244(v75);
      (*(v49 + 8))(v52, v5);
LABEL_11:
      OUTLINED_FUNCTION_9_1();
      return;
    }

    (*(v72 + 8))(v38, v73);
    OUTLINED_FUNCTION_11_3();
    v40 = OUTLINED_FUNCTION_6_5();
    v41 = v80;
    v42 = 1;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
    goto LABEL_11;
  }

  v66 = v19;
  v75 = v2;
  v76 = v17;
  v33 = &v24[*(v16 + 48)];
  v35 = *v33;
  v34 = *(v33 + 1);
  v65 = *(v26 + 32);
  v65(v31, v24, v5);
  v83 = v34;
  v36 = *(v35 + 16);
  if (v34 == v36)
  {
    v74 = v26;
    (*(v26 + 8))(v31, v5);

    v19 = v66;
    v37 = v79;
    v17 = v76;
    (*(v66 + 8))(v79, v76);
    __swift_storeEnumTagSinglePayload(v37, 1, 1, v16);
    v2 = v75;
    goto LABEL_5;
  }

  if (v34 < v36)
  {
    v56 = v16;
    v57 = v67;
    v58 = v81;
    (*(v67 + 16))(v74, v35 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v34, v81);
    sub_23BBDD828();
    v59 = v79;
    (*(v66 + 8))(v79, v76);
    v60 = (v59 + *(v56 + 48));
    (*(v26 + 16))(v59, v31, v5);
    v61 = v83;
    *v60 = v35;
    v60[1] = v61;
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v56);
    OUTLINED_FUNCTION_11_3();
    v62 = OUTLINED_FUNCTION_6_5();
    v63 = *(v62 + 48);
    v64 = v80;
    v65(v80, v31, v5);
    (*(v57 + 32))(v64 + v63, v74, v58);
    v41 = v64;
    v42 = 0;
    v40 = v62;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_23B99E8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{

  return sub_23B99E10C(a1, a2, a3, 0, a4);
}

uint64_t sub_23B99E970@<X0>(char *a1@<X8>)
{
  sub_23B99E8DC(*v1, v1[1], v1[2], a1);
}

uint64_t sub_23B99EA10@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t sub_23B99EAE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B99EB24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23B99EB64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23B99EBA4()
{
  sub_23BBDD848();
  result = sub_23BBD9928();
  if (v1 <= 0x3F)
  {
    swift_getWitnessTable();
    sub_23BBDD8C8();
    swift_getTupleTypeMetadata2();
    result = sub_23BBDD648();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B99EC94(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
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

  v8 = v7 - 1;
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v5 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(*(v4 - 8) + 64) + 7;
  if (v9 < a2)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + ((v10 + 39) & ~v11) + 16;
    v14 = a2 - v9;
    v15 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = v14 + 1;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    switch(v18)
    {
      case 1:
        v19 = *(a1 + v13);
        if (!v19)
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v19 = *(a1 + v13);
        if (v19)
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B99EE3CLL);
      case 4:
        v19 = *(a1 + v13);
        if (!v19)
        {
          break;
        }

LABEL_25:
        v21 = v19 - 1;
        if (v15)
        {
          v21 = 0;
          LODWORD(v15) = *a1;
        }

        return v9 + (v15 | v21) + 1;
      default:
        break;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
    v23 = (a1 + v11 + 32) & ~v11;
    if (v6 < 0x7FFFFFFF)
    {
      v25 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      EnumTagSinglePayload = v25 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, v6, v4);
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
    v22 = *(a1 + 8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }
}

void sub_23B99EE50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v10 = v9 - 1;
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = *(v7 + 80) & 0xF8;
  v13 = v12 | 7;
  v14 = *(*(v6 - 8) + 64) + 7;
  v15 = ((v12 + 39) & ~(v12 | 7)) + (v14 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = a3 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v11 < a3)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a2 > v11)
  {
    if (v15)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v11;
    }

    if (v15)
    {
      v21 = ~v11 + a2;
      bzero(a1, v15);
      *a1 = v21;
    }

    switch(v19)
    {
      case 1:
        a1[v15] = v20;
        return;
      case 2:
        *&a1[v15] = v20;
        return;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v15] = v20;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 2:
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    case 3:
LABEL_53:
      __break(1u);
      JUMPOUT(0x23B99F0A0);
    case 4:
      *&a1[v15] = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (a2)
      {
LABEL_36:
        if ((v10 & 0x80000000) != 0)
        {
          v22 = (&a1[v13 + 32] & ~v13);
          if (v10 >= a2)
          {
            if (v8 < 0x7FFFFFFF)
            {
              v26 = ((v22 + v14) & 0xFFFFFFFFFFFFFFF8);
              if (((a2 + 1) & 0x80000000) != 0)
              {
                *v26 = a2 - 0x7FFFFFFF;
                v26[1] = 0;
              }

              else
              {
                *v26 = a2;
              }
            }

            else
            {
              v24 = &a1[v13 + 32] & ~v13;
              v25 = a2 + 1;

              __swift_storeEnumTagSinglePayload(v24, v25, v8, v6);
            }
          }

          else if ((v14 & 0xFFFFFFF8) != 0xFFFFFFF0)
          {
            v23 = a2 - v9;
            bzero((&a1[v13 + 32] & ~v13), (v14 & 0xFFFFFFFFFFFFFFF8) + 16);
            *v22 = v23;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = a2 - 1;
        }
      }

      return;
  }
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_getTupleTypeMetadata2();
}

void OUTLINED_FUNCTION_14_3()
{

  sub_23B99DA30();
}

uint64_t sub_23B99F17C()
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

uint64_t sub_23B99F280()
{
  sub_23B99F210();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B99F31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDB388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AA0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AA8) + 36);
  *v6 = v4;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  if (qword_27E197680 != -1)
  {
    swift_once();
  }

  v20 = *&qword_27E1BFC20;
  v21 = xmmword_27E1BFC10;
  v7 = sub_23BBDB398();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AB0) + 36);
  *v8 = v7;
  *(v8 + 24) = v20;
  *(v8 + 8) = v21;
  *(v8 + 40) = 0;
  if (qword_27E197670 != -1)
  {
    swift_once();
  }

  v9 = qword_27E1BFC00;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AB8) + 36));
  v11 = *(sub_23BBDA468() + 20);
  v12 = *MEMORY[0x277CE0118];
  sub_23BBDAA88();
  OUTLINED_FUNCTION_4_1();
  (*(v13 + 104))(v10 + v11, v12);
  *v10 = v9;
  v10[1] = v9;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AC0) + 36)) = 256;
  v14 = sub_23BBDC318();
  v16 = v15;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AC8) + 36);
  sub_23B99F560(v17);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AD0);
  v19 = (v17 + *(result + 36));
  *v19 = v14;
  v19[1] = v16;
  return result;
}

uint64_t sub_23B99F560@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AD8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v48 - v2);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AE0);
  MEMORY[0x28223BE20](v49);
  v5 = &v48 - v4;
  v6 = sub_23BBDA468();
  MEMORY[0x28223BE20](v6);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  if (sub_23BBDC2A8())
  {
    if (qword_27E197670 != -1)
    {
      swift_once();
    }

    v15 = qword_27E1BFC00;
    v16 = *(v6 + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_23BBDAA88();
    (*(*(v18 - 8) + 104))(v8 + v16, v17, v18);
    *v8 = v15;
    v8[1] = v15;
    sub_23BBDBD08();
    v19 = sub_23BBDBD58();

    sub_23BBD9C68();
    sub_23B987944(v8, v11);
    v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B18) + 36)];
    v21 = v52;
    *v20 = v51;
    *(v20 + 1) = v21;
    *(v20 + 4) = v53;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B20);
    *&v11[*(v22 + 52)] = v19;
    *&v11[*(v22 + 56)] = 256;
    v23 = sub_23BBDC318();
    v25 = v24;
    sub_23B987438(v8);
    v26 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B28) + 36)];
    *v26 = v23;
    v26[1] = v25;
    sub_23B987944(v11, v14);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B30);
    *&v14[*(v27 + 52)] = 3;
    *&v14[*(v27 + 56)] = 256;
    v28 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B38) + 36)];
    sub_23B99FCE0(v11, v28, &qword_27E198AE8);
    v29 = sub_23BBDC318();
    v31 = v30;
    sub_23B979910(v11, &qword_27E198AE8);
    v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B40) + 36));
    *v32 = v29;
    v32[1] = v31;
    v33 = &qword_27E198AF0;
    sub_23B99FCE0(v14, v5, &qword_27E198AF0);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E198B00, &qword_27E198AF0);
    sub_23B99FC28();
    sub_23BBDACD8();
    v34 = v14;
  }

  else
  {
    if (qword_27E197670 != -1)
    {
      swift_once();
    }

    v35 = qword_27E1BFC00;
    v36 = *(v6 + 20);
    v37 = *MEMORY[0x277CE0118];
    v38 = sub_23BBDAA88();
    (*(*(v38 - 8) + 104))(v3 + v36, v37, v38);
    *v3 = v35;
    v3[1] = v35;
    v39 = sub_23BBDBD38();
    v40 = [objc_opt_self() systemGray5Color];
    v41 = sub_23BBDBCA8();
    *&v51 = v39;
    *(&v51 + 1) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270);
    sub_23B987F20();
    sub_23B97B518(&qword_27E198298, &qword_27E198270);
    v42 = sub_23BBDBDE8();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198AF8);
    *(v3 + *(v43 + 52)) = v42;
    *(v3 + *(v43 + 56)) = 256;
    sub_23BBDBD18();
    v44 = sub_23BBDBD58();

    if (qword_27E197678 != -1)
    {
      swift_once();
    }

    v45 = qword_27E1BFC08;
    v46 = (v3 + *(v1 + 36));
    *v46 = v44;
    v46[1] = v45;
    v46[2] = 0;
    v46[3] = 0;
    v33 = &qword_27E198AD8;
    sub_23B99FCE0(v3, v5, &qword_27E198AD8);
    swift_storeEnumTagMultiPayload();
    sub_23B97B518(&qword_27E198B00, &qword_27E198AF0);
    sub_23B99FC28();
    sub_23BBDACD8();
    v34 = v3;
  }

  return sub_23B979910(v34, v33);
}

unint64_t sub_23B99FC28()
{
  result = qword_27E198B08;
  if (!qword_27E198B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AD8);
    sub_23B97B518(&qword_27E198B10, &qword_27E198AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B08);
  }

  return result;
}

uint64_t sub_23B99FCE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_23B99FD44()
{
  result = qword_27E198B48;
  if (!qword_27E198B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AC8);
    sub_23B99FDFC();
    sub_23B97B518(&qword_27E198B78, &qword_27E198AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B48);
  }

  return result;
}

unint64_t sub_23B99FDFC()
{
  result = qword_27E198B50;
  if (!qword_27E198B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AB8);
    sub_23B99FEB4();
    sub_23B97B518(&qword_27E198B70, &qword_27E198AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B50);
  }

  return result;
}

unint64_t sub_23B99FEB4()
{
  result = qword_27E198B58;
  if (!qword_27E198B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AB0);
    sub_23B99FF40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B58);
  }

  return result;
}

unint64_t sub_23B99FF40()
{
  result = qword_27E198B60;
  if (!qword_27E198B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198AA8);
    sub_23B97B518(&qword_27E198B68, &qword_27E198AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198B60);
  }

  return result;
}

uint64_t sub_23B9A00DC(unsigned __int8 a1, char a2)
{
  v2 = 0xEF64657472617453;
  v3 = 0x6573616863727570;
  v4 = a1;
  v5 = 0x6573616863727570;
  v6 = 0xEF64657472617453;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000011;
      v6 = 0x800000023BBDF6E0;
      break;
    case 2:
      v5 = 0x6E657053656D6974;
      v6 = 0xEF776569566E4974;
      break;
    case 3:
      v6 = 0xEE00746C75736552;
      v5 = 0x6573616863727570;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000011;
      v2 = 0x800000023BBDF6E0;
      break;
    case 2:
      v3 = 0x6E657053656D6974;
      v2 = 0xEF776569566E4974;
      break;
    case 3:
      v2 = 0xEE00746C75736552;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_4();
  }

  return v8 & 1;
}

uint64_t sub_23B9A0274(unsigned __int8 a1, char a2)
{
  v2 = 0xEE004449656C646ELL;
  v3 = 0x7542646568736168;
  v4 = a1;
  v5 = 0x7542646568736168;
  v6 = 0xEE004449656C646ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x7250646568736168;
      v6 = 0xEF4449746375646FLL;
      break;
    case 2:
      v6 = 0x800000023BBDF670;
      v5 = 0xD00000000000001BLL;
      break;
    case 3:
      v6 = 0x800000023BBDF650;
      v5 = 0xD000000000000018;
      break;
    case 4:
      v6 = 0x800000023BBDF630;
      v5 = 0xD000000000000016;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7250646568736168;
      v2 = 0xEF4449746375646FLL;
      break;
    case 2:
      v2 = 0x800000023BBDF670;
      v3 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0x800000023BBDF650;
      v3 = 0xD000000000000018;
      break;
    case 4:
      v2 = 0x800000023BBDF630;
      v3 = 0xD000000000000016;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_4();
  }

  return v8 & 1;
}

uint64_t sub_23B9A0458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23BBDDA88();
  }

  return v10 & 1;
}

uint64_t sub_23B9A04E8(unsigned __int8 a1, char a2)
{
  v2 = 0x746E6572727563;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746E6572727563;
  switch(v4)
  {
    case 1:
      v5 = 0x646172676E776F64;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x61726773736F7263;
      v3 = 0xEA00000000006564;
      break;
    case 3:
      v5 = 0x65646172677075;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646172676E776F64;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x61726773736F7263;
      v6 = 0xEA00000000006564;
      break;
    case 3:
      v2 = 0x65646172677075;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7105633;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BBDDA88();
  }

  return v8 & 1;
}

uint64_t sub_23B9A0714(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_23B9A15F4(a4, a5);
  sub_23BBDD218();
  sub_23BBDD218();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_4();
  }

  return v8 & 1;
}

uint64_t sub_23B9A0828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel() + 20));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v7 + 32);
  LODWORD(v7) = *(v7 + 33);
  v11 = v9;
  v16 = v9;
  v17 = v8;
  if (v7 == 1)
  {
    result = sub_23B9A165C(v9, *(&v9 + 1), v8);
    v14 = v16;
    v13 = v17;
  }

  else
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9A163C(v11, *(&v16 + 1), v17, *(&v17 + 1), v10, 0);
    result = (*(v4 + 8))(v6, v3);
    v14 = v18;
    v13 = v19;
    LOBYTE(v10) = v20;
  }

  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_23B9A09D4()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t AutomaticSubscriptionStorePickerOptionLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v60 = v7 - v6;
  v8 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3_1();
  v9 = type metadata accessor for SubscriptionStoreControlOption(0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  v18 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v22 = v21 - v20;
  sub_23B9A1020(v2, v17, type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption);
  sub_23B9A1020(v17, v12, type metadata accessor for SubscriptionStoreControlOption);
  sub_23B9A10D8(v17, type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option);
  sub_23B9A0828(v61);
  sub_23BB9494C();
  v23 = *(v22 + *(v19 + 44));
  if ((v23 & 8) != 0)
  {
    sub_23BBDAA28();
    sub_23BBDAA18();
    sub_23BBDAA08();
    sub_23BBDAA18();
    v24 = sub_23BBDAA58();
  }

  else if ((v23 & 6) != 0)
  {
    v24 = sub_23BB747BC();
  }

  else
  {

    v24 = sub_23BBDAA48();
  }

  v28 = v24;
  v29 = v25;
  v59 = v26;
  v58 = v27;
  sub_23BB95108();
  v30 = *(v4 + 20);
  sub_23BB95108();
  v31 = _s11PriceStringOMa(0);
  __swift_storeEnumTagSinglePayload(v60 + v30, 0, 1, v31);
  v56 = *(v22 + 48);
  v57 = *(v22 + 40);
  v32 = *(v2 + *(v13 + 20));

  sub_23B9A0828(v62);
  v34 = v63;
  v33 = v64;
  v35 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  if (v33 >= 2)
  {
    if (v34 == v35 && v33 == v36)
    {

      sub_23B9A11EC(v62);
      v37 = 1;
    }

    else
    {
      v37 = sub_23BBDDA88();

      sub_23B9A11EC(v62);
    }
  }

  else
  {

    v37 = 0;
  }

  v39 = *(v2 + *(type metadata accessor for SubscriptionStoreControlStyleConfiguration.Option(0) + 20));
  if (v39)
  {
    v53 = v37;
    v54 = v32;
    v55 = v29;
    v40 = v28;
    v41 = v2 + *(type metadata accessor for Subscription() + 20);
    v42 = *(v41 + 8);
    if (v42 == 2)
    {
      v43 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
      v45 = v44;
    }

    else
    {
      v43 = *v41;
      v45 = v42 & 1;
    }

    v47 = v42 == 2;
    v46 = v39(v43, v45, v47);
    sub_23B979A38(v43, v45, v47);
    v28 = v40;
    v29 = v55;
    v37 = v53;
    v32 = v54;
  }

  else
  {
    v46 = 0;
  }

  v48 = sub_23B9A09D4();
  sub_23B9A10D8(v22, type metadata accessor for SubscriptionStoreCopyWriter);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198B80);
  *(a1 + v49[14]) = v46;
  *a1 = v28;
  *(a1 + 8) = v29;
  *(a1 + 16) = v59 & 1;
  *(a1 + 24) = v58;
  sub_23B9A1130(v60, a1 + v49[9]);
  v50 = (a1 + v49[10]);
  *v50 = v57;
  v50[1] = v56;
  *(a1 + v49[11]) = 0;
  *(a1 + v49[12]) = v32;
  *(a1 + v49[13]) = v37 & 1;
  *(a1 + v49[15]) = v48;
  v51 = a1 + v49[16];
  result = swift_getKeyPath();
  *v51 = result;
  *(v51 + 8) = 0;
  return result;
}

uint64_t sub_23B9A1020(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B9A1080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA49CC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B9A10D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9A1130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9A1194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA49CC8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B9A11EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1988B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9A1284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 33);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B9A1344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 33) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AutomaticSubscriptionStorePickerOptionLabel()
{
  result = qword_27E198B88;
  if (!qword_27E198B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23B9A143C()
{
  type metadata accessor for SubscriptionStoreControlStyleConfiguration.PickerOption(319);
  if (v0 <= 0x3F)
  {
    sub_23B9A14D8();
    if (v1 <= 0x3F)
    {
      sub_23B9A153C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23B9A14D8()
{
  if (!qword_27E198B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1988B0);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198B98);
    }
  }
}

void sub_23B9A153C()
{
  if (!qword_27E198BA0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198BA0);
    }
  }
}

unint64_t sub_23B9A1590()
{
  result = qword_27E198BA8;
  if (!qword_27E198BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BA8);
  }

  return result;
}

uint64_t sub_23B9A15F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B9A163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_23B9A1648(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_23B9A1648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_23B9A165C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return sub_23BBDDA88();
}

uint64_t StoreProminentButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v27 = sub_23BBDB588();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for StoreKitProminentButtonStyle(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDB308();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BC8);
  OUTLINED_FUNCTION_7();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - v22;
  (*(v14 + 16))(v17, v28, v12);
  v24 = v27;
  sub_23BBDBFB8();
  KeyPath = swift_getKeyPath();
  v32 = 0;
  *v11 = KeyPath;
  v11[73] = 0;
  (*(v3 + 104))(v8, *MEMORY[0x277CE0AC0], v24);
  if (qword_27E197708 != -1)
  {
    swift_once();
  }

  v31 = qword_27E1BFCB0;
  (*(v3 + 16))(v29, v8, v24);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v3 + 8))(v8, v24);
  v11[*(v9 + 24)] = 0;
  v11[*(v9 + 28)] = 0;
  sub_23B9A1A44();
  sub_23B9A1AA8();
  sub_23BBDB738();
  sub_23B9A1B00(v11);
  return (*(v20 + 8))(v23, v18);
}

unint64_t sub_23B9A1A44()
{
  result = qword_27E198BD0;
  if (!qword_27E198BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BD0);
  }

  return result;
}

unint64_t sub_23B9A1AA8()
{
  result = qword_27E198BD8;
  if (!qword_27E198BD8)
  {
    type metadata accessor for StoreKitProminentButtonStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BD8);
  }

  return result;
}

uint64_t sub_23B9A1B00(uint64_t a1)
{
  v2 = type metadata accessor for StoreKitProminentButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StoreProminentButtonStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23B9A1C14);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B9A1C4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BC8);
  type metadata accessor for StoreKitProminentButtonStyle(255);
  sub_23B9A1A44();
  sub_23B9A1AA8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for SubscriptionStoreUnavailableBackgroundModifier(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}