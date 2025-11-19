_BYTE *storeEnumTagSinglePayload for SubscriptionStoreUnavailableBackgroundModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B9A1E5CLL);
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

uint64_t sub_23B9A1EB0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_23B9A1F14(a1, a2, a3 & 1, a4);
  v5 = sub_23BBDA388();
  v6 = sub_23BBDB398();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C18);
  v8 = a4 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

uint64_t sub_23B9A1F14@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDA928();
  v21[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C20);
  MEMORY[0x28223BE20](v11);
  v13 = (v21 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C28);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  if (a1)
  {
    sub_23BBDC288();
    sub_23B9A27B8(v16, v13);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C38);
    sub_23B9A2648();
    sub_23B9A2700();
    sub_23BBDACD8();
    sub_23B9A2828(v16);
  }

  else
  {

    if ((a3 & 1) == 0)
    {
      sub_23BBDD5A8();
      v17 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(a2, 0);
      (*(v21[0] + 8))(v10, v8);
      a2 = v21[1];
    }

    if (!a2)
    {
      v18 = 1;
      goto LABEL_8;
    }

    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C38);
    sub_23B9A2648();
    sub_23B9A2700();
    sub_23BBDACD8();
  }

  v18 = 0;
LABEL_8:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C30);
  return __swift_storeEnumTagSinglePayload(a4, v18, 1, v19);
}

uint64_t sub_23B9A2228(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BBDA358();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v13 = a1;
  MEMORY[0x23EEB43C0](&v13, a2, &type metadata for SubscriptionStoreUnavailableBackgroundModifier, a3);
  v10 = sub_23B9A243C();
  v12[1] = a3;
  v12[2] = v10;
  swift_getWitnessTable();
  sub_23BB06090();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23B9A236C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_23BBDC318();
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BE8);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198BF0);
  v12 = a3 + *(result + 36);
  *v12 = a2;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  return result;
}

unint64_t sub_23B9A243C()
{
  result = qword_27E198BE0;
  if (!qword_27E198BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BE0);
  }

  return result;
}

uint64_t sub_23B9A24A4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_23B9A24F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23B9A2548()
{
  result = qword_27E198BF8;
  if (!qword_27E198BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198BF0);
    sub_23B97B518(&qword_27E198C00, &qword_27E198BE8);
    sub_23B97B518(&qword_27E198C08, &qword_27E198C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198BF8);
  }

  return result;
}

unint64_t sub_23B9A2648()
{
  result = qword_27E198C40;
  if (!qword_27E198C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C28);
    sub_23B97AD34();
    sub_23B97B518(&qword_27E198C48, &qword_27E198C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C40);
  }

  return result;
}

unint64_t sub_23B9A2700()
{
  result = qword_27E198C58;
  if (!qword_27E198C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C38);
    sub_23B97AD34();
    sub_23B97B518(&qword_27E198C60, &qword_27E198C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C58);
  }

  return result;
}

uint64_t sub_23B9A27B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9A2828(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9A2894()
{
  result = qword_27E198C70;
  if (!qword_27E198C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C18);
    sub_23B9A2920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C70);
  }

  return result;
}

unint64_t sub_23B9A2920()
{
  result = qword_27E198C78;
  if (!qword_27E198C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C80);
    sub_23B9A29A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C78);
  }

  return result;
}

unint64_t sub_23B9A29A4()
{
  result = qword_27E198C88;
  if (!qword_27E198C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C90);
    sub_23B9A2A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198C88);
  }

  return result;
}

unint64_t sub_23B9A2A28()
{
  result = qword_27E198C98[0];
  if (!qword_27E198C98[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198C30);
    sub_23B9A2648();
    sub_23B9A2700();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E198C98);
  }

  return result;
}

void sub_23B9A2B40()
{
  sub_23B9A3838(319, &qword_27E198D20, type metadata accessor for ProductViewConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9A3838(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23B9A3838(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_23B9A389C(319, &qword_27E197E40);
          if (v4 <= 0x3F)
          {
            sub_23B9A389C(319, &qword_27E198D38);
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

uint64_t sub_23B9A2CD8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_23BBDCD08() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_23BBDCBE8() - 8);
  v8 = *(v7 + 80);
  v9 = v5 | v8 | 7;
  v10 = (v6 + 7 + ((*(v7 + 64) + v5 + ((v8 + 16) & ~v8)) & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 10;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= 3)
  {
    v12 = 3;
  }

  v13 = v12 + ((((v5 + 16) & ~v5) + v6 + v9) & ~v9);
  if (v13 + 1 > ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v52 = v14;
  v45 = sub_23BBD96B8();
  v15 = *(v45 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v17 >= 0)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v46 = v19;
  v20 = v19 - 1;
  v47 = *(a3 + 16);
  v21 = *(v47 - 8);
  v50 = *(v21 + 84);
  v51 = v20;
  if (v50 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = *(v21 + 84);
  }

  v48 = *(sub_23BBDA438() - 8);
  v23 = *(v48 + 64);
  if (v23 <= 8)
  {
    v23 = 8;
  }

  v49 = v23;
  v24 = *(sub_23BBDA308() - 8);
  if (*(v24 + 64) <= 8uLL)
  {
    v25 = 8;
  }

  else
  {
    v25 = *(v24 + 64);
  }

  v26 = *(v15 + 80);
  if (v16)
  {
    v27 = 7;
  }

  else
  {
    v27 = 8;
  }

  v28 = *(v21 + 80);
  if (!a2)
  {
    return 0;
  }

  v29 = v52 + v9 + 1;
  v30 = ((v27 + *(v15 + 64) + ((v26 + 16 + ((v52 + 8 + (v29 & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + (((v9 | v26) + 32) & ~(v9 | v26)) + v28 + 8;
  if (v22 < a2)
  {
    v31 = *(v48 + 80) & 0xF8 | 7;
    v32 = *(v24 + 80) & 0xF8 | 7;
    v33 = ((v25 + ((v49 + v32 + ((*(v21 + 64) + v31 + (v30 & ~v28)) & ~v31) + 1) & ~v32) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v33 <= 3)
    {
      v34 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v34 = 2;
    }

    if (v34 >= 0x10000)
    {
      v35 = 4;
    }

    else
    {
      v35 = 2;
    }

    if (v34 < 0x100)
    {
      v35 = 1;
    }

    if (v34 >= 2)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    switch(v36)
    {
      case 1:
        v37 = a1[v33];
        if (!a1[v33])
        {
          break;
        }

        goto LABEL_47;
      case 2:
        v37 = *&a1[v33];
        if (*&a1[v33])
        {
          goto LABEL_47;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23B9A3200);
      case 4:
        v37 = *&a1[v33];
        if (!v37)
        {
          break;
        }

LABEL_47:
        v39 = v33 > 3;
        if (v33 <= 3)
        {
          v40 = (v37 - 1) << (8 * v33);
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v44 = *a1;
        }

        else
        {
          v44 = *a1;
        }

        return v22 + (v44 | v40) + 1;
      default:
        break;
    }
  }

  if (v51 >= v50)
  {
    if (v46 == 0x7FFFFFFF)
    {
      v41 = *(a1 + 1);
      if (v41 >= 0xFFFFFFFF)
      {
        LODWORD(v41) = -1;
      }

      v42 = v41 + 1;
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + 16 + ((v52 + 8 + ((v29 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v9 | v26) + 16) & ~(v9 | v26))) & ~v9)) & 0xFFFFFFFFFFFFFFF8)) & ~v26, v16, v45);
      v42 = EnumTagSinglePayload - 1;
      if (EnumTagSinglePayload < 2)
      {
        v42 = 0;
      }
    }

    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return __swift_getEnumTagSinglePayload(&a1[v30] & ~v28, v50, v47);
  }
}

void sub_23B9A3214(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_23BBDCD08() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23BBDCBE8() - 8);
  v9 = *(v8 + 80);
  v10 = v6 | v9 | 7;
  v11 = (v7 + 7 + ((*(v8 + 64) + v6 + ((v9 + 16) & ~v9)) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v12 = v11 + 8;
  v13 = v11 + 10;
  if (v13 <= v12)
  {
    v13 = v12;
  }

  if (v13 <= 3)
  {
    v13 = 3;
  }

  v14 = v13 + ((((v6 + 16) & ~v6) + v7 + v10) & ~v10);
  if (v14 + 1 > ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v15 <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v15;
  }

  v54 = sub_23BBD96B8();
  v17 = *(v54 - 8);
  v18 = *(v17 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= 0)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v55 = v20;
  v56 = v21;
  v22 = v21 - 1;
  v57 = *(a4 + 16);
  v23 = *(v57 - 8);
  v58 = *(v23 + 84);
  v59 = v22;
  if (v58 > v22)
  {
    v22 = *(v23 + 84);
  }

  v62 = v22;
  v60 = *(sub_23BBDA438() - 8);
  v24 = *(v60 + 64);
  if (v24 <= 8)
  {
    v24 = 8;
  }

  v61 = v24;
  v25 = sub_23BBDA308();
  v26 = v18;
  v27 = 0;
  v28 = *(v25 - 8);
  if (*(v28 + 64) <= 8uLL)
  {
    v29 = 8;
  }

  else
  {
    v29 = *(v28 + 64);
  }

  v30 = *(v17 + 80);
  v31 = ((v10 | v30) + 32) & ~(v10 | v30);
  v32 = v16 + v10 + 1;
  v33 = v16 + 8 + (v32 & ~v10);
  v34 = *(v17 + 64);
  if (!v26)
  {
    ++v34;
  }

  v35 = v34 + ((v30 + 16 + (v33 & 0xFFFFFFFFFFFFFFF8)) & ~v30) + 7;
  v36 = *(v23 + 80);
  v37 = v31 + v36 + (v35 & 0xFFFFFFFFFFFFFFF8) + 8;
  v38 = *(v60 + 80) & 0xF8 | 7;
  v39 = *(v28 + 80) & 0xF8 | 7;
  v40 = ((v29 + ((v61 + v39 + ((*(v23 + 64) + v38 + (v37 & ~v36)) & ~v38) + 1) & ~v39) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v62 < a3)
  {
    if (v40 <= 3)
    {
      v41 = ((a3 - v62 + 255) >> 8) + 1;
    }

    else
    {
      v41 = 2;
    }

    if (v41 >= 0x10000)
    {
      v42 = 4;
    }

    else
    {
      v42 = 2;
    }

    if (v41 < 0x100)
    {
      v42 = 1;
    }

    if (v41 >= 2)
    {
      v27 = v42;
    }

    else
    {
      v27 = 0;
    }
  }

  if (v62 < a2)
  {
    v43 = ~v62 + a2;
    bzero(a1, v40);
    if (v40 <= 3)
    {
      v44 = (v43 >> 8) + 1;
    }

    else
    {
      v44 = 1;
    }

    if (v40 > 3)
    {
      *a1 = v43;
    }

    else
    {
      *a1 = v43;
    }

    switch(v27)
    {
      case 1:
        *(a1 + v40) = v44;
        return;
      case 2:
        *(a1 + v40) = v44;
        return;
      case 3:
        goto LABEL_78;
      case 4:
        *(a1 + v40) = v44;
        return;
      default:
        return;
    }
  }

  v45 = ~v30;
  v46 = ~v36;
  switch(v27)
  {
    case 1:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    case 2:
      *(a1 + v40) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_54;
    case 3:
LABEL_78:
      __break(1u);
      JUMPOUT(0x23B9A37F8);
    case 4:
      *(a1 + v40) = 0;
      goto LABEL_53;
    default:
LABEL_53:
      if (!a2)
      {
        return;
      }

LABEL_54:
      if (v59 < v58)
      {
        v47 = (a1 + v37) & v46;
        v48 = a2;
        v26 = v58;
        v49 = v57;
LABEL_56:

        __swift_storeEnumTagSinglePayload(v47, v48, v26, v49);
        return;
      }

      v50 = (v35 & 0xFFFFFFF8) + v31 + 8;
      if (v59 < a2)
      {
        if (!v50)
        {
          return;
        }

        v51 = a2 - v56;
LABEL_71:
        bzero(a1, v50);
        *a1 = v51;
        return;
      }

      v51 = a2 - v56;
      if (a2 >= v56)
      {
        if (!v50)
        {
          return;
        }

        goto LABEL_71;
      }

      if (v56 == 0x7FFFFFFF)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *a1 = a2 - 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = a2;
        }

        return;
      }

      v52 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v10 | v30) + 16) & ~(v10 | v30));
      if (a2 < v55)
      {
        v47 = (v30 + 16 + ((v16 + 8 + ((v52 + v32) & ~v10)) & 0xFFFFFFFFFFFFFFF8)) & v45;
        v48 = a2 + 2;
        v49 = v54;
        goto LABEL_56;
      }

      v53 = ((((v33 & 0xFFFFFFF8) + v30 + 16) & v45) + v34 + 7) & 0xFFFFFFF8;
      if (v53 != -8)
      {
        bzero(v52, (v53 + 8));
        *v52 = a2 - v55;
      }

      return;
  }
}

void sub_23B9A3838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_23B9A389C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23BBD9C18();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_23B9A392C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23BBDA308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9B70F0();
  v14 = sub_23BBDA2E8();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) != 0 && ((v15 = v3 + *(a1 + 52), v16 = *v15, *(v15 + 8) != 1) ? (, sub_23BBDD5A8(), v18 = sub_23BBDB338(), sub_23BBD9978(), v18, sub_23BBDA918(), swift_getAtKeyPath(), sub_23B97B450(v16, 0), (*(v7 + 8))(v9, v6), v17 = v22[15]) : (v17 = *v15), (v17 & 0xFE) == 2))
  {
    v19 = sub_23BBDAB58();
    *(a2 + 24) = MEMORY[0x277CDF5C8];
    v20 = 0x4010000000000000;
    result = sub_23B9A7330();
  }

  else
  {
    v19 = sub_23BBDA9D8();
    *(a2 + 24) = MEMORY[0x277CDF570];
    v20 = 0x4024000000000000;
    result = sub_23B9A70B0();
  }

  *(a2 + 32) = result;
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_23B9A3BA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_23BBDA928();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BBDA308();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9B70F0();
  v16 = sub_23BBDA2E8();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) != 0 && ((v17 = v3 + *(a1 + 52), v18 = *v17, *(v17 + 8) != 1) ? (, sub_23BBDD5A8(), v20 = sub_23BBDB338(), sub_23BBD9978(), v20, sub_23BBDA918(), swift_getAtKeyPath(), sub_23B97B450(v18, 0), (*(v28 + 8))(v11, v9), v19 = v29) : (v19 = *v17), (v19 & 0xFE) == 2))
  {
    sub_23B9A721C(v3, v8, &qword_27E198D80);
    v21 = type metadata accessor for ProductViewConfiguration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v21);
    sub_23B979910(v8, &qword_27E198D80);
    v23 = sub_23BBDAB58();
    if (EnumTagSinglePayload == 1)
    {
      v24 = 0x4010000000000000;
    }

    else
    {
      v24 = 0;
    }

    a2[3] = MEMORY[0x277CDF5C8];
    result = sub_23B9A7330();
    a2[4] = result;
    *a2 = v23;
    a2[1] = v24;
    v26 = a2 + 2;
  }

  else
  {
    v27 = sub_23BBDAB58();
    a2[3] = &type metadata for TotalLineLimitLayout;
    a2[4] = sub_23B9A72CC();
    result = swift_allocObject();
    *a2 = result;
    *(result + 16) = 3;
    *(result + 24) = v27;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    v26 = (result + 64);
    *(result + 56) = 0x4010000000000000;
  }

  *v26 = 0;
  return result;
}

unint64_t sub_23B9A3EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23BBDA308();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23B9B70F0();
  v14 = sub_23BBDA2E8();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = v3 + *(a1 + 52);
    v16 = *v15;
    if (*(v15 + 8) == 1)
    {
      v17 = *v15;
    }

    else
    {

      sub_23BBDD5A8();
      v18 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v16, 0);
      (*(v7 + 8))(v9, v6);
      v17 = v21[15];
    }

    if ((v17 & 0xFE) == 2)
    {
      return sub_23B9A392C(a1, a2);
    }
  }

  v20 = sub_23BBDA9D8();
  *(a2 + 24) = MEMORY[0x277CDF570];
  result = sub_23B9A70B0();
  *(a2 + 32) = result;
  *a2 = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23B9A4158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_23BBDA308();
  OUTLINED_FUNCTION_3_2();
  v55 = v5;
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D40);
  v7 = *(a1 + 16);
  v48 = *(a1 + 24);
  v8 = type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_7_8();
  WitnessTable = swift_getWitnessTable();
  v66 = v8;
  v67 = WitnessTable;
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  v66 = sub_23BBDA358();
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D48);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58);
  OUTLINED_FUNCTION_11_4();
  v10 = sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v11, &qword_27E198D40);
  v50 = v10;
  v12 = sub_23BBDA018();
  OUTLINED_FUNCTION_3_2();
  v51 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  type metadata accessor for LayoutMetricsModifier(255);
  v17 = sub_23BBDA358();
  OUTLINED_FUNCTION_3_2();
  v52 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v49 = &v48 - v23;
  v54 = a1;
  sub_23B9A392C(a1, &v66);
  __swift_project_boxed_opaque_existential_1(&v66, v69);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v24);
  (*(v26 + 16))(&v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_23BBDC378();
  v28 = v48;
  v29 = sub_23B9A4714(v27, v7, v48);

  __swift_destroy_boxed_opaque_existential_1(&v66);
  v59 = v7;
  v60 = v28;
  v61 = v2;
  v29(sub_23B9A6A28, v58);

  if (qword_27E197600 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for LayoutMetrics(0);
  v31 = __swift_project_value_buffer(v30, qword_27E1BF7C8);
  v32 = v53;
  sub_23B9B70F0();
  v33 = sub_23BBDA2E8();
  (*(v55 + 8))(v32, v56);
  OUTLINED_FUNCTION_3_9();
  v36 = sub_23B97B518(v34, v35);
  OUTLINED_FUNCTION_2_5();
  v37 = swift_getWitnessTable();
  v64 = v36;
  v65 = v37;
  OUTLINED_FUNCTION_1_9();
  v38 = swift_getWitnessTable();
  v39 = sub_23B9C2924();
  sub_23B97462C(v31, v39, v40, (v33 & 1) == 0, v12, v38);
  (*(v51 + 8))(v16, v12);
  OUTLINED_FUNCTION_6_6();
  v43 = sub_23B9A7068(v41, v42);
  v62 = v38;
  v63 = v43;
  OUTLINED_FUNCTION_0();
  v44 = swift_getWitnessTable();
  v45 = v49;
  sub_23B9D2D88(v22, v17, v44);
  v46 = *(v52 + 8);
  v46(v22, v17);
  sub_23B9D2D88(v45, v17, v44);
  return (v46)(v45, v17);
}

uint64_t (*sub_23B9A4714(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_23B9A73BC;
}

uint64_t sub_23B9A4788(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProductViewIconWrapper();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58);
  swift_getTupleTypeMetadata();
  sub_23BBDC3D8();
  sub_23B9A73C8();
  swift_getWitnessTable();
  return sub_23B9D4D38(a1, a2, MEMORY[0x277CE13A0]);
}

uint64_t sub_23B9A48F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D58);
  v7 = MEMORY[0x28223BE20](v110);
  v113 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v111 = (&v90 - v9);
  v10 = sub_23BBDB588();
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v102 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = &v90 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D50);
  v14 = MEMORY[0x28223BE20](v120);
  v109 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = (&v90 - v16);
  v17 = sub_23BBDB148();
  v99 = *(v17 - 8);
  v100 = v17;
  MEMORY[0x28223BE20](v17);
  v98 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D78);
  MEMORY[0x28223BE20](v118);
  v97 = (&v90 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D48);
  v105 = *(v20 - 8);
  v106 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v119 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v123 = &v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v90 - v25;
  v94 = sub_23BBDA438();
  v96 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ProductViewIconWrapper();
  v91 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - v29;
  WitnessTable = swift_getWitnessTable();
  __src = v28;
  v148 = WitnessTable;
  v92 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v34 = &v90 - v33;
  v117 = sub_23BBDA358();
  v115 = *(v117 - 8);
  v35 = MEMORY[0x28223BE20](v117);
  v116 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v90 - v38;
  MEMORY[0x28223BE20](v37);
  v121 = a2;
  v122 = &v90 - v40;
  v124 = a2;
  v125 = a3;
  v126 = a1;
  v114 = a3;
  sub_23BA33338(sub_23B9A6A34, v30);
  v107 = a1;
  sub_23B9A721C(a1, v26, &qword_27E198D80);
  v41 = type metadata accessor for ProductViewConfiguration(0);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v26, 1, v41);
  sub_23B979910(v26, &qword_27E198D80);
  if (a3 == 1)
  {
    v42 = v93;
    sub_23BBDA428();
    v43 = v94;
  }

  else
  {
    __src = MEMORY[0x277D84F90];
    v90 = sub_23B9A7068(&qword_27E198E48, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E50);
    sub_23B97B518(&qword_27E198E58, &qword_27E198E50);
    v42 = v93;
    v43 = v94;
    sub_23BBDD6C8();
  }

  v44 = v92;
  sub_23BBDBC38();
  v96[1](v42, v43);
  (*(v91 + 8))(v30, v28);
  v145 = 1;
  v144 = 1;
  v143 = 1;
  v142 = 1;
  v141 = 0;
  v140 = 0;
  v146 = 0;
  __src = 0;
  LOBYTE(v148) = 1;
  v149 = 0;
  v150 = 1;
  v151 = 0;
  v152 = 1;
  v153 = 0;
  v154 = 1;
  v155 = 0x404E000000000000;
  v156 = 0;
  v157 = 0x404E000000000000;
  v158 = 0;
  v134 = v28;
  v135 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_23B9DCCD0(OpaqueTypeMetadata2, OpaqueTypeConformance2);
  sub_23BA19724(&__src, v46, v47, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v95 + 8))(v34, OpaqueTypeMetadata2);
  v48 = sub_23B9A6A40();
  v138 = OpaqueTypeConformance2;
  v139 = v48;
  v49 = v117;
  v94 = swift_getWitnessTable();
  sub_23B9D2D88(v39, v49, v94);
  v50 = *(v115 + 8);
  v95 = v115 + 8;
  v96 = v50;
  (v50)(v39, v49);
  v51 = v121;
  v52 = v114;
  v53 = type metadata accessor for CompactProductView();
  v54 = v107;
  sub_23B9A3BA0(v53, &v134);
  v55 = __swift_project_boxed_opaque_existential_1(&v134, v137);
  MEMORY[0x28223BE20](v55);
  (*(v57 + 16))(&v90 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(&v134);
  v59 = v97;
  *v97 = v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D90);
  sub_23B9A58B8(v54, v51, v52, v59 + *(v60 + 44));
  KeyPath = swift_getKeyPath();
  v62 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D98) + 36));
  *v62 = KeyPath;
  v62[1] = 0;
  v63 = swift_getKeyPath();
  v64 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198DA0) + 36);
  *v64 = v63;
  *(v64 + 8) = 0;
  sub_23B9A6AA4();
  v65 = sub_23BBDAB78();
  v66 = (v59 + *(v118 + 36));
  *v66 = v65;
  v66[1] = sub_23B9A65D0;
  v66[2] = 0;
  v67 = v98;
  sub_23BBDB128();
  v93 = sub_23B9A6AF8();
  sub_23BBDB968();
  (*(v99 + 8))(v67, v100);
  sub_23B979910(v59, &qword_27E198D78);
  v68 = swift_getKeyPath();
  v69 = v108;
  *v108 = v68;
  *(v69 + 8) = 0;
  *(v69 + 16) = swift_getKeyPath();
  *(v69 + 24) = 0;
  type metadata accessor for ProductViewAXTypeStyleButtonSpacer();
  v71 = v103;
  v70 = v104;
  v72 = v101;
  (*(v103 + 104))(v101, *MEMORY[0x277CE0AA8], v104);
  v134 = 0x4024000000000000;
  (*(v71 + 16))(v102, v72, v70);
  sub_23B974940();
  sub_23BBD9D18();
  (*(v71 + 8))(v72, v70);
  *(v69 + *(v120 + 36)) = 0xBFF0000000000000;
  sub_23B9A3EF4(v53, &v134);
  v73 = __swift_project_boxed_opaque_existential_1(&v134, v137);
  MEMORY[0x28223BE20](v73);
  (*(v75 + 16))(&v90 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_23BBDC378();
  __swift_destroy_boxed_opaque_existential_1(&v134);
  v77 = v111;
  *v111 = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E00);
  sub_23B9A65F8(v54, v114, (v77 + *(v78 + 44)));
  v79 = v110;
  *(v77 + *(v110 + 36)) = 0xBFF0000000000000;
  v80 = v116;
  v81 = v117;
  (*(v115 + 16))(v116, v122, v117);
  v134 = v80;
  v82 = v105;
  v83 = v106;
  v84 = v119;
  (*(v105 + 16))(v119, v123, v106);
  v135 = v84;
  v85 = v109;
  sub_23B9A721C(v69, v109, &qword_27E198D50);
  v136 = v85;
  v86 = v113;
  sub_23B9A721C(v77, v113, &qword_27E198D58);
  v137 = v86;
  v133[0] = v81;
  v133[1] = v83;
  v133[2] = v120;
  v133[3] = v79;
  v127 = v118;
  v128 = v93;
  v129 = v94;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = sub_23B9A6DE4();
  v132 = sub_23B9A6ECC();
  sub_23BB6739C(&v134, 4, v133);
  sub_23B979910(v77, &qword_27E198D58);
  sub_23B979910(v69, &qword_27E198D50);
  v87 = *(v82 + 8);
  v87(v123, v83);
  v88 = v96;
  (v96)(v122, v81);
  sub_23B979910(v86, &qword_27E198D58);
  sub_23B979910(v85, &qword_27E198D50);
  v87(v119, v83);
  return (v88)(v116, v81);
}

uint64_t sub_23B9A57C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompactProductView();
  sub_23B9D2D88(a1 + *(v9 + 36), a2, a3);
  sub_23B9D2D88(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_23B9A58B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a2;
  v100 = a3;
  v106 = a4;
  v95 = sub_23BBDA928();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E88);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v105 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = &v86 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v91 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = (&v86 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v90 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v86 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = (&v86 - v20);
  v22 = type metadata accessor for ProductViewText(0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E98);
  MEMORY[0x28223BE20](v97);
  v29 = &v86 - v28;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA0);
  v30 = MEMORY[0x28223BE20](v98);
  v103 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v86 - v33;
  MEMORY[0x28223BE20](v32);
  v101 = a1;
  v102 = &v86 - v35;
  sub_23B9A721C(a1, v21, &qword_27E198D80);
  v96 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v96) == 1)
  {
    sub_23B979910(v21, &qword_27E198D80);
  }

  else
  {
    v37 = *v21;
    v36 = v21[1];

    sub_23B9A7170(v21, type metadata accessor for ProductViewConfiguration);
    if (v36)
    {
      *v14 = v37;
      v14[1] = v36;
      v38 = type metadata accessor for ProductViewText.Storage(0);
      swift_storeEnumTagMultiPayload();
      v39 = v14;
      v40 = 0;
      v41 = v38;
      goto LABEL_6;
    }
  }

  v41 = type metadata accessor for ProductViewText.Storage(0);
  v39 = v14;
  v40 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v39, v40, 1, v41);
  if (qword_27E197610 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for LayoutMetrics(0);
  v89 = __swift_project_value_buffer(v42, &unk_27E1BF7F8);
  sub_23B9A7114(v89, v27, type metadata accessor for LayoutMetrics);
  v43 = type metadata accessor for PlaceholderLayouts(0);
  v44 = *(v43 + 20);
  if (qword_27E197618 != -1)
  {
    swift_once();
  }

  v88 = __swift_project_value_buffer(v42, &unk_27E1BF810);
  sub_23B9A7114(v88, &v27[v44], type metadata accessor for LayoutMetrics);
  v45 = *(v43 + 24);
  if (qword_27E197620 != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v42, &unk_27E1BF828);
  sub_23B9A7114(v87, &v27[v45], type metadata accessor for LayoutMetrics);
  v46 = &v27[v22[10]];
  v47 = v22[13];
  *&v27[v47] = swift_getKeyPath();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EA8);
  swift_storeEnumTagMultiPayload();
  v48 = v22[14];
  *&v27[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0);
  swift_storeEnumTagMultiPayload();
  sub_23B9A71D0(v14, &v27[v22[5]], &qword_27E198E90);
  v27[v22[6]] = 0;
  v27[v22[7]] = 0;
  v27[v22[8]] = 0;
  *v46 = 0;
  *(v46 + 1) = 0;
  v123 = 1;
  v121 = 0;
  v119 = 0;
  v117 = 1;
  v115 = 0;
  v113 = 0;
  v49 = &v27[v22[9]];
  *v49 = 0;
  v49[8] = 1;
  *(v49 + 3) = *&v122[3];
  *(v49 + 9) = *v122;
  *(v49 + 2) = 0x405E000000000000;
  v49[24] = 0;
  *(v49 + 7) = *&v120[3];
  *(v49 + 25) = *v120;
  *(v49 + 4) = 0x405E000000000000;
  v49[40] = 0;
  v50 = *v118;
  *(v49 + 11) = *&v118[3];
  *(v49 + 41) = v50;
  *(v49 + 6) = 0;
  v49[56] = v117;
  v51 = *v116;
  *(v49 + 15) = *&v116[3];
  *(v49 + 57) = v51;
  *(v49 + 8) = 0x4032000000000000;
  v49[72] = v115;
  v52 = *v114;
  *(v49 + 19) = *&v114[3];
  *(v49 + 73) = v52;
  *(v49 + 10) = 0x4032000000000000;
  v49[88] = v113;
  *&v27[v22[11]] = swift_getKeyPath();
  *&v27[v22[12]] = swift_getKeyPath();
  sub_23B9A7114(v27, v29, type metadata accessor for ProductViewText);
  *&v29[*(v97 + 36)] = 0x3FF0000000000000;
  sub_23B9A7170(v27, type metadata accessor for ProductViewText);
  KeyPath = swift_getKeyPath();
  sub_23B9A71D0(v29, v34, &qword_27E198E98);
  v54 = &v34[*(v98 + 36)];
  *v54 = KeyPath;
  v54[8] = 1;
  v55 = v102;
  sub_23B9A71D0(v34, v102, &qword_27E198EA0);
  v56 = type metadata accessor for CompactProductView();
  v57 = v101;
  v58 = v101 + *(v56 + 48);
  v59 = *v58;
  if (*(v58 + 8) == 1)
  {
    v60 = v104;
    if ((v59 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v61 = sub_23BBDB338();
    sub_23BBD9978();

    v62 = v93;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v59, 0);
    (*(v94 + 8))(v62, v95);
    v60 = v104;
    if (v112 != 1)
    {
      goto LABEL_19;
    }
  }

  v63 = v92;
  sub_23B9A721C(v57, v92, &qword_27E198D80);
  if (__swift_getEnumTagSinglePayload(v63, 1, v96) == 1)
  {
    sub_23B979910(v63, &qword_27E198D80);
    goto LABEL_20;
  }

  v64 = *(v63 + 16);
  v65 = *(v63 + 24);

  sub_23B9A7170(v63, type metadata accessor for ProductViewConfiguration);
  LOBYTE(v64) = sub_23B9D4CA8(v64, v65);

  if ((v64 & 1) == 0)
  {
LABEL_20:
    v68 = v90;
    sub_23B9A721C(v57, v90, &qword_27E198D80);
    if (__swift_getEnumTagSinglePayload(v68, 1, v96) == 1)
    {
      sub_23B979910(v68, &qword_27E198D80);
    }

    else
    {
      v70 = *(v68 + 16);
      v69 = *(v68 + 24);

      sub_23B9A7170(v68, type metadata accessor for ProductViewConfiguration);
      if (v69)
      {
        v71 = v91;
        *v91 = v70;
        v71[1] = v69;
        v72 = v71;
        v73 = type metadata accessor for ProductViewText.Storage(0);
        swift_storeEnumTagMultiPayload();
        v74 = v72;
        v75 = 0;
        v76 = v73;
LABEL_25:
        __swift_storeEnumTagSinglePayload(v74, v75, 1, v76);
        sub_23B9A7114(v89, v25, type metadata accessor for LayoutMetrics);
        sub_23B9A7114(v88, &v25[*(v43 + 20)], type metadata accessor for LayoutMetrics);
        sub_23B9A7114(v87, &v25[*(v43 + 24)], type metadata accessor for LayoutMetrics);
        v77 = &v25[v22[10]];
        v78 = v22[13];
        *&v25[v78] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v79 = v22[14];
        *&v25[v79] = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_23B9A71D0(v72, &v25[v22[5]], &qword_27E198E90);
        v25[v22[6]] = 1;
        v25[v22[7]] = 0;
        v25[v22[8]] = 0;
        *v77 = 0;
        *(v77 + 1) = 0;
        v112 = 1;
        v111 = 0;
        v110 = 0;
        v109 = 1;
        v108 = 0;
        v107 = 0;
        v80 = &v25[v22[9]];
        *v80 = 0;
        v80[8] = 1;
        *(v80 + 2) = 0x4054000000000000;
        v80[24] = 0;
        *(v80 + 4) = 0x4054000000000000;
        v80[40] = 0;
        *(v80 + 6) = 0;
        v80[56] = 1;
        *(v80 + 8) = 0x4024000000000000;
        v80[72] = 0;
        *(v80 + 10) = 0x4024000000000000;
        v80[88] = 0;
        *&v25[v22[11]] = swift_getKeyPath();
        *&v25[v22[12]] = swift_getKeyPath();
        sub_23B9A7268(v25, v60);
        v66 = v60;
        v67 = 0;
        goto LABEL_26;
      }
    }

    v76 = type metadata accessor for ProductViewText.Storage(0);
    v72 = v91;
    v74 = v91;
    v75 = 1;
    goto LABEL_25;
  }

LABEL_19:
  v66 = v60;
  v67 = 1;
LABEL_26:
  __swift_storeEnumTagSinglePayload(v66, v67, 1, v22);
  v81 = v103;
  sub_23B9A721C(v55, v103, &qword_27E198EA0);
  v82 = v105;
  sub_23B9A721C(v60, v105, &qword_27E198E88);
  v83 = v106;
  sub_23B9A721C(v81, v106, &qword_27E198EA0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB8);
  sub_23B9A721C(v82, v83 + *(v84 + 48), &qword_27E198E88);
  sub_23B979910(v60, &qword_27E198E88);
  sub_23B979910(v55, &qword_27E198EA0);
  sub_23B979910(v82, &qword_27E198E88);
  return sub_23B979910(v81, &qword_27E198EA0);
}

uint64_t sub_23B9A65F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E68);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = (&v34 - v11);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E70);
  v12 = MEMORY[0x28223BE20](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = sub_23BBDA308();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompactProductView();
  sub_23B9B70F0();
  v24 = sub_23BBDA2E8();
  (*(v21 + 8))(v23, v20);
  sub_23B9A721C(a1, v6, &qword_27E198D80);
  v25 = type metadata accessor for ProductViewConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v25) == 1)
  {
    sub_23B979910(v6, &qword_27E198D80);
    v26 = 1;
  }

  else
  {
    sub_23B9A7114(&v6[*(v25 + 24)], v9, type metadata accessor for ProductViewButtonConfiguration);
    sub_23B9A7170(v6, type metadata accessor for ProductViewConfiguration);
    v26 = 0;
  }

  v27 = type metadata accessor for ProductViewButtonConfiguration(0);
  __swift_storeEnumTagSinglePayload(v9, v26, 1, v27);
  v28 = v24 & 1;
  if (v24)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0x4018000000000000;
  }

  v30 = v35;
  sub_23BA7C678(v9, v35);
  sub_23B9A71D0(v30, v17, &qword_27E198E68);
  *&v17[*(v36 + 36)] = 1;
  sub_23B9A71D0(v17, v19, &qword_27E198E70);
  sub_23B9A721C(v19, v14, &qword_27E198E70);
  v31 = v37;
  *v37 = v29;
  *(v31 + 8) = 0;
  *(v31 + 9) = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E78);
  sub_23B9A721C(v14, v31 + *(v32 + 48), &qword_27E198E70);
  sub_23B979910(v19, &qword_27E198E70);
  return sub_23B979910(v14, &qword_27E198E70);
}

unint64_t sub_23B9A6A40()
{
  result = qword_27E198D88;
  if (!qword_27E198D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198D88);
  }

  return result;
}

unint64_t sub_23B9A6AA4()
{
  result = qword_27E198DA8;
  if (!qword_27E198DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DA8);
  }

  return result;
}

unint64_t sub_23B9A6AF8()
{
  result = qword_27E198DB0;
  if (!qword_27E198DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D78);
    sub_23B9A6B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DB0);
  }

  return result;
}

unint64_t sub_23B9A6B84()
{
  result = qword_27E198DB8;
  if (!qword_27E198DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DA0);
    sub_23B9A6C3C();
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DB8);
  }

  return result;
}

unint64_t sub_23B9A6C3C()
{
  result = qword_27E198DC0;
  if (!qword_27E198DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D98);
    sub_23B9A6CF4();
    sub_23B97B518(&qword_27E198DE0, &qword_27E198DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DC0);
  }

  return result;
}

unint64_t sub_23B9A6CF4()
{
  result = qword_27E198DC8;
  if (!qword_27E198DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D90);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40);
    sub_23B97B518(&qword_27E198DD0, &qword_27E198DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198DC8);
  }

  return result;
}

unint64_t sub_23B9A6DE4()
{
  result = qword_27E198E08;
  if (!qword_27E198E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50);
    sub_23B9A7068(&qword_27E198E10, type metadata accessor for ProductViewAXTypeStyleButtonSpacer);
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E08);
  }

  return result;
}

unint64_t sub_23B9A6ECC()
{
  result = qword_27E198E28;
  if (!qword_27E198E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58);
    sub_23B9A6F84();
    sub_23B97B518(&qword_27E198E18, &qword_27E198E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E28);
  }

  return result;
}

unint64_t sub_23B9A6F84()
{
  result = qword_27E198E30;
  if (!qword_27E198E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198E00);
    sub_23B97B518(&qword_27E198D68, &qword_27E198D40);
    sub_23B97B518(&qword_27E198E38, &qword_27E198E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E30);
  }

  return result;
}

uint64_t sub_23B9A7068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B9A70B0()
{
  result = qword_27E198E80;
  if (!qword_27E198E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198E80);
  }

  return result;
}

uint64_t sub_23B9A7114(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23B9A7170(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B9A71D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return v3;
}

uint64_t sub_23B9A721C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_3_3(a1, a2, a3);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return v3;
}

uint64_t sub_23B9A7268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductViewText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B9A72CC()
{
  result = qword_27E198EC0;
  if (!qword_27E198EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198EC0);
  }

  return result;
}

unint64_t sub_23B9A7330()
{
  result = qword_27E198EC8;
  if (!qword_27E198EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198EC8);
  }

  return result;
}

uint64_t sub_23B9A7384()
{

  return swift_deallocObject();
}

unint64_t sub_23B9A73C8()
{
  result = qword_27E198ED0;
  if (!qword_27E198ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198ED0);
  }

  return result;
}

uint64_t sub_23B9A741C()
{
  v0 = OUTLINED_FUNCTION_17_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for ProductViewIconWrapper();
  OUTLINED_FUNCTION_7_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_7();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDA358();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198D58);
  OUTLINED_FUNCTION_11_4();
  sub_23BBDC3D8();
  OUTLINED_FUNCTION_8_6();
  sub_23B97B518(v1, &qword_27E198D40);
  sub_23BBDA018();
  type metadata accessor for LayoutMetricsModifier(255);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_9();
  sub_23B97B518(v2, &qword_27E198D40);
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_23B9A7068(v3, v4);
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return swift_getTupleTypeMetadata();
}

uint64_t sub_23B9A76C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SubscriptionStoreButtonStyleConfiguration.currentOption.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EE0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t _s17_StoreKit_SwiftUI012SubscriptionA24ButtonStyleConfigurationV12subscription0aB07ProductVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23BBDCDB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s17_StoreKit_SwiftUI012SubscriptionA24ButtonStyleConfigurationV16subscriptionInfo0aB07ProductV0eJ0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8) + 36);
  v4 = sub_23BBDCB58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23B9A797C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_23B9A79E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198ED8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_23B9A7A60()
{
  if (!qword_27E198EF8)
  {
    v0 = type metadata accessor for SubscriptionItemBaseConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_27E198EF8);
    }
  }
}

void sub_23B9A7B2C()
{
  sub_23B9A7A60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23B9A7BA8(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_0_2();
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

  return *a1;
}

_BYTE *sub_23B9A7BF4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23B9A7C90);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B9A7D40@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = v49 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F20) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = (v49 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F28);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F30);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v23 = v49 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v52 = v49 - v25;
  *v16 = sub_23BBDC318();
  v16[1] = v26;
  v27 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F40) + 44);
  v53 = a1;
  v54 = a3;
  v55 = a2;
  sub_23B9A84D0(a1, v27);
  v28 = (v16 + *(v13 + 44));
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F48) + 28);
  v30 = *MEMORY[0x277CE1058];
  sub_23BBDBE58();
  OUTLINED_FUNCTION_4_1();
  (*(v31 + 104))(v28 + v29, v30);
  *v28 = swift_getKeyPath();
  if (sub_23BBDC2A8())
  {
    v32 = sub_23BBDB468();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v32);
    v33 = sub_23BBDB4C8();
    sub_23B9A8E20(v12, &qword_27E198F18);
  }

  else
  {
    v33 = sub_23BBDB4E8();
  }

  KeyPath = swift_getKeyPath();
  sub_23B989918(v16, v20, &qword_27E198F20);
  v35 = &v20[*(v17 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = *MEMORY[0x277CDF9A8];
  v37 = sub_23BBDA308();
  OUTLINED_FUNCTION_4_1();
  (*(v38 + 104))(v9, v36, v37);
  sub_23B9A8DD8(&qword_27E198F50, MEMORY[0x277CDFA28]);
  if ((sub_23BBDCF38() & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_23B9A8894();
  sub_23B9A8CB4(&qword_27E198F80, &qword_27E198F10);
  sub_23BBDB898();
  sub_23B9A8E20(v9, &qword_27E198F10);
  sub_23B9A8E20(v20, &qword_27E198F28);
  v39 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F88) + 36)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F90) + 28);
  sub_23BBDAB88();
  v41 = sub_23BBDAB98();
  __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
  *v39 = swift_getKeyPath();
  v42 = swift_allocObject();
  v43 = v54;
  v44 = v53 & 1;
  *(v42 + 16) = v53 & 1;
  v45 = v55;
  *(v42 + 24) = v55;
  v46 = v43 & 1;
  *(v42 + 32) = v43 & 1;
  v47 = &v23[*(v50 + 36)];
  *v47 = v44;
  *(v47 + 1) = sub_23B9A8A94;
  *(v47 + 2) = v42;
  j__swift_retain(v45, v46);
  sub_23B9A8AA8();
  v20 = v52;
  sub_23BBDB958();
  sub_23B9A8E20(v23, &qword_27E198F30);
  if (qword_27E197648 != -1)
  {
LABEL_8:
    swift_once();
  }

  sub_23B9A8CF8();

  sub_23BBDBA28();

  return sub_23B9A8E20(v20, &qword_27E198F38);
}

uint64_t sub_23B9A8334(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9A8E74();
  sub_23BBD9CB8();
  if (v13 == 2 || (v13 & 1) != 0)
  {

    if ((a4 & 1) == 0)
    {
      sub_23BBDD5A8();
      v10 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j_j__swift_release(a3, 0);
      (*(v7 + 8))(v9, v6);
    }

    return sub_23BBD9CA8();
  }

  else
  {
    sub_23BBD9CA8();
    return sub_23BBD9C98();
  }
}

uint64_t sub_23B9A84D0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FD8);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FE0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v28[-v14];
  v16 = sub_23BBDBE38();
  v17 = sub_23BBD356C();
  v32[3] = sub_23BBDA1E8();
  v32[4] = MEMORY[0x277CDF8D0];
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_23BBDA1D8();
  v18 = sub_23BBDBCB8();
  v33 = 1;
  v32[5] = v18;
  v31 = v17;
  v19 = v5 + *(v3 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FE8);
  sub_23BBDA1D8();
  sub_23B989ECC(&v31, v19, &qword_27E198FF0);
  *v5 = v16;
  sub_23B9A8E20(&v31, &qword_27E198FF0);
  sub_23B989918(v5, v13, &qword_27E198FD8);
  v20 = (v29 & 1) == 0;
  if (v29)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  *&v13[*(v7 + 44)] = v21;
  if (v20)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  sub_23B989918(v13, v15, &qword_27E198FE0);
  v23 = sub_23BBDBE38();
  v24 = sub_23BBDAF18();
  sub_23B989ECC(v15, v10, &qword_27E198FE0);
  v25 = v30;
  sub_23B989ECC(v10, v30, &qword_27E198FE0);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FF8) + 48);
  *v26 = v23;
  *(v26 + 8) = v24;
  *(v26 + 16) = v22;

  sub_23B9A8E20(v15, &qword_27E198FE0);

  return sub_23B9A8E20(v10, &qword_27E198FE0);
}

uint64_t sub_23B9A87DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198FD0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B989ECC(a1, &v5 - v3, &qword_27E198FD0);
  return sub_23BBDA798();
}

unint64_t sub_23B9A8894()
{
  result = qword_27E198F58;
  if (!qword_27E198F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F28);
    sub_23B9A894C();
    sub_23B9A8CB4(&qword_27E198388, &qword_27E198390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198F58);
  }

  return result;
}

unint64_t sub_23B9A894C()
{
  result = qword_27E198F60;
  if (!qword_27E198F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F20);
    sub_23B9A8CB4(&qword_27E198F68, &unk_27E198F70);
    sub_23B9A8CB4(&qword_27E198F78, &unk_27E198F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198F60);
  }

  return result;
}

uint64_t sub_23B9A8A58()
{
  j_j__swift_release(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_23B9A8AA8()
{
  result = qword_27E198F98;
  if (!qword_27E198F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F30);
    sub_23B9A8B60();
    sub_23B9A8CB4(&qword_27E198FB0, &unk_27E198FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198F98);
  }

  return result;
}

unint64_t sub_23B9A8B60()
{
  result = qword_27E198FA0;
  if (!qword_27E198FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10);
    sub_23B9A8894();
    sub_23B9A8CB4(&qword_27E198F80, &qword_27E198F10);
    swift_getOpaqueTypeConformance2();
    sub_23B9A8CB4(&qword_27E198FA8, &unk_27E198F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198FA0);
  }

  return result;
}

uint64_t sub_23B9A8CB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B9A8D28(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_2_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    sub_23B9A8DD8(&qword_27E198368, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B9A8DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B9A8E20(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_2_6(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_23B9A8E74()
{
  result = qword_27E198FC8;
  if (!qword_27E198FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E198FC8);
  }

  return result;
}

uint64_t sub_23B9A8F18()
{
  v1 = v0;
  v2 = sub_23BBDCE08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDCDF8();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23BBDD018();
    v45 = v1;
    v13 = v12;

    sub_23BB02B28(v11, v13);
    sub_23B9A935C();
    sub_23BBDCDE8();
    v14 = OUTLINED_FUNCTION_0_7();
    sub_23B9A93B4(v14, v15);
    v16 = OUTLINED_FUNCTION_0_7();
    sub_23BB05734(v16, v17);
    v18 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v18, v19);
    sub_23BBDCDD8();
    (*(v3 + 8))(v5, v2);
    v20 = OUTLINED_FUNCTION_0_7();
    sub_23B9A940C(v20, v21);
    v22 = sub_23BB02FE4(v8);
    v24 = v23;
    v1 = v45;

    v25 = sub_23BBD97D8();
    v27 = v26;
    sub_23B9A940C(v22, v24);
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = sub_23B9D4CA8(v25, v27);

  if (v28)
  {
    return 0;
  }

  sub_23BBC909C();
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = *(v1 + 40);
  v47 = *(v1 + 24);
  v48[0] = v31;
  *(v48 + 15) = *(v1 + 55);
  v32 = sub_23BBC9488();
  if (!v32)
  {
LABEL_12:

    return 0;
  }

  v33 = v32;
  type metadata accessor for StoreViewDisappearEvent();
  v34 = sub_23BBC95BC();
  if (!v34)
  {

    goto LABEL_12;
  }

  v35 = v34;
  v36 = sub_23BB024A0(v33, v30, 1);
  v37 = sub_23BB024A0(v35, v36, 1);
  v38 = qword_284E56E88;
  v39 = unk_284E56E90;

  v40 = sub_23BB03A88(v38, v39);
  v42 = v41;

  if (v42)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v46 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199010);
    sub_23BBDD8D8();
    v37 = v46;

    sub_23B9A9318();
    sub_23BBDD8F8();
  }

  return v37;
}

uint64_t type metadata accessor for StoreViewDisappearEvent()
{
  result = qword_27E199028;
  if (!qword_27E199028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23B9A9318()
{
  result = qword_27E199018;
  if (!qword_27E199018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E199018);
  }

  return result;
}

unint64_t sub_23B9A935C()
{
  result = qword_27E199020;
  if (!qword_27E199020)
  {
    sub_23BBDCE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199020);
  }

  return result;
}

uint64_t sub_23B9A93B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B9A940C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B9A9478(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for MintDisappearBaseEvent(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_23B9A9520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for MintDisappearBaseEvent(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B9A95A0()
{
  result = type metadata accessor for MintDisappearBaseEvent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9A965C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199038);
  sub_23B9A9860();
  sub_23B9A98C4();
  sub_23BBDBA18();
}

uint64_t sub_23B9A9788@<X0>(_BYTE *a1@<X8>)
{
  sub_23B975730();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  result = sub_23BBDB3D8();
  *a1 = result;
  return result;
}

uint64_t sub_23B9A97F0()
{

  return swift_deallocObject();
}

unint64_t sub_23B9A9860()
{
  result = qword_27E199040;
  if (!qword_27E199040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199040);
  }

  return result;
}

unint64_t sub_23B9A98C4()
{
  result = qword_27E199048;
  if (!qword_27E199048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199048);
  }

  return result;
}

uint64_t sub_23B9A9918()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199038);
  sub_23B9A9860();
  sub_23B9A98C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B9A9990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23BBDB398();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  sub_23BBDB3D8();
  v10[0] = sub_23BBDB3D8();
  v11 = a2;
  v12 = a3;
  return MEMORY[0x23EEB43C0](v10, a4, &type metadata for OnChangeOfSafeAreaOverlappingEdgesModifier, a5);
}

uint64_t sub_23B9A9A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v9 = a7;
  return MEMORY[0x23EEB43C0](v8, a5, &unk_284E65BA8, a6);
}

uint64_t View.subscriptionIntroductoryOffer(applyOffer:compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return MEMORY[0x23EEB43C0](v7, a5, &type metadata for SubscriptionIntroductoryOfferModifier, a6);
}

unint64_t sub_23B9A9AE0()
{
  result = qword_27E199050;
  if (!qword_27E199050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199050);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx010_StoreKit_aB036SubscriptionPromotionalOfferModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_23BBDA358();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_23B9A9BC4()
{
  result = qword_27E199058;
  if (!qword_27E199058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199058);
  }

  return result;
}

uint64_t sub_23B9A9C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23B9A9C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23B9A9CEC()
{
  sub_23BBDD768();
  MEMORY[0x23EEB5890](39, 0xE100000000000000);
  v0 = sub_23BBDD798();
  MEMORY[0x23EEB5890](v0);

  MEMORY[0x23EEB5890](0xD000000000000036, 0x800000023BBE0560);
  v1 = sub_23BBDD798();
  MEMORY[0x23EEB5890](v1);

  MEMORY[0x23EEB5890](0xD000000000000085, 0x800000023BBE05A0);
  return 0;
}

uint64_t sub_23B9A9E10(unsigned __int8 a1)
{
  sub_23BBDDBB8();
  MEMORY[0x23EEB63A0](a1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B9A9E74()
{
  v1 = *v0;
  sub_23BBDDBB8();
  sub_23B9A9DE8(v3, v1);
  return sub_23BBDDBF8();
}

uint64_t sub_23B9A9EB8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23BBDBD48();
  v9 = sub_23BBDC318();
  v11 = v10;
  v12 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199060) + 36);
  sub_23B9A9FCC(v12);
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199068) + 36));
  *v13 = v9;
  v13[1] = v11;
  *a4 = v8;
  *(a4 + 8) = 256;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199070) + 36));
  *v15 = sub_23B9AA44C;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
}

double sub_23B9A9FCC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDBE48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDBE38();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_23BBDBE68();

  (*(v3 + 8))(v5, v2);
  v10[1] = v6;
  v10[2] = 0;
  v11 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199080);
  sub_23B9AA45C();
  sub_23BBDBAB8();

  v7 = sub_23BBDBCE8();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199090) + 36)) = v7;
  LOBYTE(v7) = sub_23BBDB398();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199098) + 36);
  *v8 = v7;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

uint64_t sub_23B9AA1A0(unsigned __int8 a1, char a2, uint64_t a3)
{
  LOBYTE(v18) = a2;
  v19 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199078);
  sub_23BBDBF68();
  if (v17 != 1)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v6 = a2 & 1;
    v7 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v7, qword_27E1BFC88);
    if (a1 > 1u)
    {
      v10 = 0x800000023BBE0430;
      v8 = 0xD0000000000000E1;
    }

    else
    {
      v8 = sub_23B9A9CEC();
      v10 = v9;
    }

    v11 = sub_23BBDD5A8();

    v12 = sub_23BBD9988();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v18);
      *(v13 + 12) = 2082;
      v15 = sub_23BA5AB90(v8, v10, &v18);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_23B970000, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v14, -1, -1);
      MEMORY[0x23EEB6DC0](v13, -1, -1);
    }

    else
    {
    }

    LOBYTE(v18) = v6;
    v19 = a3;
    sub_23BBDBF78();
  }
}

uint64_t sub_23B9AA414()
{

  return swift_deallocObject();
}

unint64_t sub_23B9AA45C()
{
  result = qword_27E199088;
  if (!qword_27E199088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterStyleVariant(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for UnsupportedViewKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B9AA634);
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

unint64_t sub_23B9AA678()
{
  result = qword_27E1990A0;
  if (!qword_27E1990A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199070);
    sub_23B9AA704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990A0);
  }

  return result;
}

unint64_t sub_23B9AA704()
{
  result = qword_27E1990A8;
  if (!qword_27E1990A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199060);
    sub_23B97B518(&qword_27E1990B0, &qword_27E1990B8);
    sub_23B97B518(&qword_27E1990C0, &qword_27E199068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990A8);
  }

  return result;
}

unint64_t sub_23B9AA7EC()
{
  result = qword_27E1990C8;
  if (!qword_27E1990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990C8);
  }

  return result;
}

uint64_t sub_23B9AA86C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23BBDA388();
  result = sub_23BBDB398();
  *a1 = 256;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23B9AA8B0()
{
  result = qword_27E1990D0;
  if (!qword_27E1990D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1990D8);
    sub_23B9AA93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990D0);
  }

  return result;
}

unint64_t sub_23B9AA93C()
{
  result = qword_27E1990E0;
  if (!qword_27E1990E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1990E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomaticProductViewStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23B9AAA90);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B9AAACC()
{
  result = qword_27E1990F0;
  if (!qword_27E1990F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1990F8);
    sub_23B9AAB58();
    sub_23B9AABBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1990F0);
  }

  return result;
}

unint64_t sub_23B9AAB58()
{
  result = qword_27E199100;
  if (!qword_27E199100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199100);
  }

  return result;
}

unint64_t sub_23B9AABBC()
{
  result = qword_27E199110[0];
  if (!qword_27E199110[0])
  {
    type metadata accessor for ConfigureProductViewEnvironmentViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E199110);
  }

  return result;
}

uint64_t sub_23B9AAC14()
{
  v0 = sub_23BBD9968();
  __swift_allocate_value_buffer(v0, qword_27E1BFBA8);
  __swift_project_value_buffer(v0, qword_27E1BFBA8);
  if (qword_27E197628 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v1 = qword_27E1BF840;
  return sub_23BBD9958();
}

uint64_t sub_23B9AACAC()
{
  v0 = sub_23BBD9968();
  __swift_allocate_value_buffer(v0, qword_27E1BFBC0);
  __swift_project_value_buffer(v0, qword_27E1BFBC0);
  if (qword_27E197628 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v1 = qword_27E1BF840;
  return sub_23BBD9958();
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t sub_23B9AAD74()
{
  result = sub_23BBDC2A8();
  v1 = 15.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_27E1BFBD8 = *&v1;
  return result;
}

uint64_t sub_23B9AADA4()
{
  result = sub_23BBDC2A8();
  v1 = 2.0;
  if (result)
  {
    v1 = 0.0;
  }

  qword_27E1BFBE0 = *&v1;
  qword_27E1BFBF0 = 0;
  unk_27E1BFBF8 = 0;
  qword_27E1BFBE8 = 0;
  return result;
}

uint64_t sub_23B9AADE0()
{
  result = sub_23BBDC2A8();
  v1 = 12.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_27E1BFC00 = *&v1;
  return result;
}

uint64_t sub_23B9AAE10()
{
  result = sub_23BBDC2A8();
  v1 = 3.0;
  if (result)
  {
    v1 = 1.0;
  }

  qword_27E1BFC08 = *&v1;
  return result;
}

uint64_t sub_23B9AAE40()
{
  result = sub_23BBDC2A8();
  v1 = 15.0;
  if (result)
  {
    v1 = 16.0;
  }

  xmmword_27E1BFC10 = *&v1;
  qword_27E1BFC20 = *&v1;
  qword_27E1BFC28 = 0;
  return result;
}

uint64_t sub_23B9AAE80()
{
  result = sub_23BBDC2A8();
  v1 = 38.0;
  *&xmmword_27E1BFC30 = 0x4024000000000000;
  if ((result & 1) == 0)
  {
    v1 = 25.0;
  }

  *(&xmmword_27E1BFC30 + 1) = v1;
  qword_27E1BFC40 = 0x4024000000000000;
  qword_27E1BFC48 = *&v1;
  return result;
}

uint64_t sub_23B9AAEC8()
{
  result = sub_23BBDC2A8();
  v1 = 5.0;
  if (result)
  {
    v1 = 10.0;
  }

  qword_27E1BFC50 = *&v1;
  return result;
}

uint64_t sub_23B9AAEF8()
{
  result = sub_23BBDC2A8();
  v1 = 5.0;
  if (result)
  {
    v1 = 2.5;
  }

  qword_27E1BFC58 = *&v1;
  return result;
}

void sub_23B9AAF28()
{
  *&xmmword_27E1BFC60 = sub_23B9AAF50();
  *(&xmmword_27E1BFC60 + 1) = v0;
  qword_27E1BFC70 = v1;
  unk_27E1BFC78 = v2;
}

double sub_23B9AAF50()
{
  sub_23BBDC2A8();
  sub_23BBDC2A8();
  return 25.0;
}

void sub_23B9AAFA4()
{
  sub_23B975E04();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_23B9AB628();
      if (v2 <= 0x3F)
      {
        sub_23B9A389C(319, &qword_27E1991A0);
        if (v3 <= 0x3F)
        {
          sub_23B9AB680();
          if (v4 <= 0x3F)
          {
            sub_23B9A389C(319, &qword_27E197E40);
            if (v5 <= 0x3F)
            {
              sub_23B9A389C(319, &qword_27E1991B8);
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

uint64_t sub_23B9AB0F4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_23BBDCDB8() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = (v10 & 0xFFFFFFFFFFFFFFF8) + ((*(v6 + 64) + v12 + ((v11 + 32) & ~v11) + 2) & ~v12) + 105;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v15))
    {
      v16 = *&a1[v13];
      if (!v16)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v15 > 0xFF)
    {
      v16 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    if (v15 < 2)
    {
      goto LABEL_23;
    }
  }

  v16 = a1[v13];
  if (!a1[v13])
  {
LABEL_23:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
    }

    else
    {
      v20 = *(a1 + 1);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

LABEL_16:
  v18 = (v16 - 1) << v14;
  if (v13 >= 4)
  {
    v18 = 0;
  }

  if (v13 == 1)
  {
    v19 = *a1;
  }

  else
  {
    v19 = *a1;
  }

  return v8 + (v19 | v18) + 1;
}

void sub_23B9AB310(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_23BBDCDB8() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + ((*(v8 + 64) + v14 + ((v13 + 32) & ~v13) + 2) & ~v14) + 105;
  v16 = 8 * v15;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << v16)) >> v16) + 1;
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

  if (v10 < a2)
  {
    v18 = ~v10 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      bzero(a1, v15);
      if (v15 == 1)
      {
        *a1 = v18;
LABEL_33:
        switch(v17)
        {
          case 1:
            *(a1 + v15) = v19;
            return;
          case 2:
            *(a1 + v15) = v19;
            return;
          case 3:
            goto LABEL_44;
          case 4:
            *(a1 + v15) = v19;
            return;
          default:
            return;
        }
      }

      v18 &= ~(-1 << v16);
    }

    else
    {
      bzero(a1, v15);
      v19 = 1;
    }

    *a1 = v18;
    goto LABEL_33;
  }

  switch(v17)
  {
    case 1:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x23B9AB5E8);
    case 4:
      *(a1 + v15) = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if ((v9 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }
      }

      return;
  }
}

void sub_23B9AB628()
{
  if (!qword_27E199198)
  {
    type metadata accessor for Product.TaskState(255);
    v0 = sub_23BBDBF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E199198);
    }
  }
}

void sub_23B9AB680()
{
  if (!qword_27E1991A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991B0);
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1991A8);
    }
  }
}

uint64_t sub_23B9AB728(uint64_t a1)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  sub_23B9AD670(a1, v4 - v3);
  sub_23BBDBF58();
  return sub_23B9AD73C(a1, type metadata accessor for Product.TaskState);
}

uint64_t sub_23B9AB7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ProductViewStyleConfiguration();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  sub_23BBDBF68();
  result = sub_23B9AB9A8(v2, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), &v17);
  v11 = *(v2 + *(a1 + 60));
  v12 = v17;
  v13 = v2 + *(a1 + 84);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    sub_23BBDD5A8();
    v15 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v14, 0);
    result = (*(v6 + 8))(v8, v5);
    LOBYTE(v14) = v16[7];
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + v9[8]) = 0;
  *(a2 + v9[7]) = v12;
  *(a2 + 16) = v11;
  *(a2 + v9[9]) = v14;
  return result;
}

uint64_t sub_23B9AB9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v41 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0);
  v13 = sub_23BBDA358();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_23BBDA928();
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v19 = type metadata accessor for DynamicProductView();
  if (*(a1 + v19[16]) == 1 && swift_dynamicCastMetatype())
  {
    v45 = 0;
    sub_23B9AD84C();
    result = sub_23BBDC0D8();
    v48 = result;
  }

  else
  {
    v42 = v16;
    v44 = v15;
    v21 = a1 + v19[18];
    v23 = *v21;
    v22 = *(v21 + 8);
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    v26 = *(v21 + 32);
    if (*(v21 + 40) == 1)
    {
      v48 = *v21;
      v49 = v22;
      v50 = v25;
      v51 = v24;
      v52 = v26;
    }

    else
    {
      v36 = *(v21 + 16);
      v37 = v24;

      sub_23BBDD5A8();
      v38 = v19;
      v27 = sub_23BBDB338();
      v39 = a6;
      v28 = v27;
      v19 = v38;
      sub_23BBD9978();

      a6 = v39;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9AD3D4(v23, v22, v36, v37, v26, 0);
      (*(v43 + 8))(v18, v42);
    }

    v29 = swift_dynamicCastMetatype();
    v30 = v44;
    if (v29 || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      sub_23B9AD794();
      sub_23BBDB8A8();
      v31 = sub_23B9AD7E8();
      v46 = a5;
      v47 = v31;
      swift_getWitnessTable();
      v32 = v30;
      v33 = v13;
    }

    else
    {
      v34 = v40;
      (*(v41 + 16))(v40, a1 + v19[14], a3);
      v32 = v34;
      v33 = a3;
    }

    result = sub_23BBBF5E0(v32, v33, &v48);
  }

  *a6 = v48;
  return result;
}

uint64_t sub_23B9ABDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  sub_23BBDD368();
  OUTLINED_FUNCTION_7();
  v81 = v4;
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v79 = a1;
  v80 = v6 - v5;
  v7 = *(a1 - 8);
  a1 -= 8;
  v75 = v7;
  MEMORY[0x28223BE20](v8);
  v74 = v9;
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v60 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v59 = v13 - v12;
  sub_23BBDC5F8();
  OUTLINED_FUNCTION_7();
  v77 = v15;
  v78 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v76 = v17 - v16;
  v18 = *(a1 + 24);
  v19 = *(a1 + 40);
  type metadata accessor for StaticProductView();
  sub_23BBDACE8();
  v20 = sub_23BBDBE28();
  OUTLINED_FUNCTION_7();
  v72 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  _s16TaskViewModifierVMa(255);
  v25 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v73 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v70 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v71 = &v59 - v30;
  *&v31 = v18;
  *(&v31 + 1) = *(a1 + 32);
  *&v32 = v19;
  *(&v32 + 1) = *(a1 + 48);
  v33 = v67;
  v65 = v32;
  v84 = v31;
  v85 = v32;
  v66 = v31;
  v86 = v67;
  OUTLINED_FUNCTION_3_10();
  WitnessTable = swift_getWitnessTable();
  v92 = MEMORY[0x277CE11C0];
  OUTLINED_FUNCTION_2_7();
  v34 = swift_getWitnessTable();
  v68 = v24;
  v62 = v34;
  sub_23BBDBE18();
  v35 = v33[1];
  v64 = *v33;
  v63 = v35;
  v36 = v33 + *(a1 + 88);
  v37 = *v36;
  if (v36[8] != 1)
  {

    sub_23BBDD5A8();
    v39 = sub_23BBDB338();
    sub_23BBD9978();

    v40 = v59;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v37, 0);
    (*(v60 + 8))(v40, v61);
    if (v90)
    {
      goto LABEL_3;
    }

LABEL_5:
    v38 = MEMORY[0x277CDD0A0];
    goto LABEL_6;
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v38 = MEMORY[0x277CDD098];
LABEL_6:
  v42 = v76;
  v41 = v77;
  v43 = v78;
  (*(v77 + 104))(v76, *v38, v78);
  v44 = v75;
  v45 = v69;
  v46 = v79;
  (*(v75 + 16))(v69, v33, v79);
  v47 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v48 = swift_allocObject();
  v49 = v65;
  *(v48 + 16) = v66;
  *(v48 + 32) = v49;
  (*(v44 + 32))(v48 + v47, v45, v46);
  v89 = v62;
  OUTLINED_FUNCTION_3_4();
  v50 = swift_getWitnessTable();
  v51 = v80;
  sub_23BA1AC64();
  v52 = v70;
  v53 = v68;
  sub_23BA25540();

  (*(v81 + 8))(v51, v82);
  (*(v41 + 8))(v42, v43);
  (*(v72 + 8))(v53, v20);
  v54 = sub_23B9AD618();
  v87 = v50;
  v88 = v54;
  OUTLINED_FUNCTION_0();
  v55 = swift_getWitnessTable();
  v56 = v71;
  sub_23B9D2D88(v52, v25, v55);
  v57 = *(v73 + 8);
  v57(v52, v25);
  sub_23B9D2D88(v56, v25, v55);
  return (v57)(v56, v25);
}

uint64_t sub_23B9AC4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a5;
  v64 = a1;
  v68 = a6;
  MEMORY[0x28223BE20](a1);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticProductView();
  v61 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v13;
  v14 = type metadata accessor for ProductViewStyleConfiguration();
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_23BBDA928();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - v18;
  v20 = type metadata accessor for Product.TaskState(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23BBDCDB8();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v53 - v28;
  v30 = sub_23BBDACE8();
  v66 = *(v30 - 8);
  v67 = v30;
  MEMORY[0x28223BE20](v30);
  v65 = &v53 - v31;
  v57 = a2;
  v71 = a2;
  v72 = a3;
  v59 = a4;
  v73 = a4;
  v74 = v63;
  v32 = type metadata accessor for DynamicProductView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  v33 = v64;
  sub_23BBDBF68();
  Product.TaskState.product.getter(v19);
  sub_23B9AD73C(v22, type metadata accessor for Product.TaskState);
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_23B9AD6D4(v19);
    v34 = v33 + *(v32 + 72);
    v36 = *v34;
    v35 = *(v34 + 8);
    v37 = *(v34 + 32);
    if (*(v34 + 40) == 1)
    {
    }

    else
    {
      v45 = *(v34 + 16);
      v44 = *(v34 + 24);

      sub_23BBDD5A8();
      v46 = sub_23BBDB338();
      sub_23BBD9978();

      v47 = v53;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B9AD3D4(v36, v35, v45, v44, v37, 0);
      (*(v54 + 8))(v47, v55);
      v36 = v71;
    }

    v48 = v62;
    sub_23B9AB7CC(v32, v62);
    v49 = v36(v48);

    sub_23B9AD73C(v48, type metadata accessor for ProductViewStyleConfiguration);
    v71 = v49;
    swift_getWitnessTable();
    v43 = v65;
    sub_23BA82E14();
  }

  else
  {
    (*(v24 + 32))(v29, v19, v23);
    (*(v24 + 16))(v27, v29, v23);
    v38 = v56;
    (*(v33 + 16))(v29);
    v39 = v60;
    sub_23BBB73E0(v38, *(v33 + *(v32 + 60)), v57, v60);
    WitnessTable = swift_getWitnessTable();
    v41 = v58;
    sub_23B9D2D88(v39, v10, WitnessTable);
    v42 = *(v61 + 8);
    v42(v39, v10);
    sub_23B9D2D88(v41, v10, WitnessTable);
    v43 = v65;
    sub_23BA82D64();
    v42(v39, v10);
    v42(v41, v10);
    (*(v24 + 8))(v29, v23);
  }

  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CE11C0];
  v50 = v67;
  v51 = swift_getWitnessTable();
  sub_23B9D2D88(v43, v50, v51);
  return (*(v66 + 8))(v43, v50);
}

uint64_t sub_23B9ACC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_23BBDA928();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_23BBDCDB8();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for Product.TaskState(0);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  sub_23BBDD308();
  v6[22] = sub_23BBDD2F8();
  v10 = sub_23BBDD2D8();

  return MEMORY[0x2822009F8](sub_23B9ACDF4, v10, v9);
}

uint64_t sub_23B9ACDF4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);
  v14 = *(v0 + 88);
  v15 = *(v0 + 72);

  *(v0 + 16) = v15;
  *(v0 + 32) = v14;
  v3 = type metadata accessor for DynamicProductView();
  sub_23B9AD670(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);
  sub_23BBDBF78();
  sub_23BBDBF68();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 64);
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 160), *(v0 + 128));
    v5 = (v4 + *(v3 + 76));
    v6 = *v5;
    v7 = *(v5 + 8);

    if ((v7 & 1) == 0)
    {
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 104);
      sub_23BBDD5A8();
      v11 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      j__swift_release(v6, 0);
      (*(v9 + 8))(v8, v10);
      v6 = *(v0 + 48);
    }

    if (v6)
    {
      sub_23BB65A90();
    }

    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    sub_23B9AD73C(*(v0 + 160), type metadata accessor for Product.TaskState);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23B9AD038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X8>, uint64_t a9)
{
  type metadata accessor for Product.TaskState(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v18 = type metadata accessor for DynamicProductView();
  (*(*(a9 - 8) + 32))(&a8[v18[14]], a5, a9);
  a8[v18[15]] = a6;
  a8[v18[16]] = a7;
  swift_storeEnumTagMultiPayload();
  sub_23B9AB728(v17);
  v19 = &a8[v18[18]];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 0;
  v20 = &a8[v18[19]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a8[v18[20]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &a8[v18[21]];
  result = swift_getKeyPath();
  *v22 = result;
  v22[8] = 0;
  return result;
}

uint64_t sub_23B9AD1FC()
{
  v14 = *(v0 + 24);
  v1 = type metadata accessor for DynamicProductView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80));

  (*(*(v14 - 8) + 8))(v2 + v1[14]);
  v3 = (v2 + v1[17]);
  type metadata accessor for Product.TaskState(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_23BBDCDB8();
    OUTLINED_FUNCTION_4_1();
    (*(v5 + 8))(v3);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1991C0);

  v6 = v2 + v1[18];
  sub_23B9AD3D4(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40));
  v7 = OUTLINED_FUNCTION_7_9(v1[19]);
  j__swift_release(v7, v8);
  v9 = OUTLINED_FUNCTION_7_9(v1[20]);
  sub_23B97B450(v9, v10);
  v11 = OUTLINED_FUNCTION_7_9(v1[21]);
  sub_23B97B450(v11, v12);
  return swift_deallocObject();
}

uint64_t sub_23B9AD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    v6 = vars8;
  }
}

uint64_t sub_23B9AD414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for DynamicProductView() - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v2[6] = v10;
  *v10 = v2;
  v10[1] = sub_23B9AD524;

  return sub_23B9ACC60(a1, v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_23B9AD524()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23B9AD618()
{
  result = qword_27E1991C8;
  if (!qword_27E1991C8)
  {
    _s16TaskViewModifierVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991C8);
  }

  return result;
}

uint64_t sub_23B9AD670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product.TaskState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B9AD6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1987F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B9AD73C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23B9AD794()
{
  result = qword_27E1991D8;
  if (!qword_27E1991D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991D8);
  }

  return result;
}

unint64_t sub_23B9AD7E8()
{
  result = qword_27E1991E0;
  if (!qword_27E1991E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1991D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991E0);
  }

  return result;
}

unint64_t sub_23B9AD84C()
{
  result = qword_27E1991E8;
  if (!qword_27E1991E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991E8);
  }

  return result;
}

uint64_t sub_23B9AD8C0()
{
  type metadata accessor for StaticProductView();
  sub_23BBDACE8();
  sub_23BBDBE28();
  _s16TaskViewModifierVMa(255);
  sub_23BBDA358();
  OUTLINED_FUNCTION_3_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_4();
  swift_getWitnessTable();
  sub_23B9AD618();
  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

_BYTE *storeEnumTagSinglePayload for AutomaticPickerOptionLabelVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B9ADAA8);
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

unint64_t sub_23B9ADAE4()
{
  result = qword_27E1991F8;
  if (!qword_27E1991F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1991F8);
  }

  return result;
}

uint64_t sub_23B9ADB38()
{
  if (sub_23BBDC2A8())
  {
    return 2;
  }

  if (qword_27E1977E0 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D0 != 3)
  {
    return byte_27E1A04D0 == 1;
  }

  storekit_dyld_fall_2024_os_versions();
  return dyld_program_sdk_at_least();
}

uint64_t sub_23B9ADBB0()
{
  result = sub_23BBDC2A8();
  if (result)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  byte_27E1991F0 = v1;
  return result;
}

uint64_t sub_23B9ADBDC@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E1976A8 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E1991F0;
  return result;
}

uint64_t sub_23B9ADC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9ADAE4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9ADC9C()
{
  sub_23B9ADD14();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23B9ADD14()
{
  result = qword_27E199200;
  if (!qword_27E199200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199200);
  }

  return result;
}

uint64_t sub_23B9ADD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B99E9DC();
  *a1 = result;
  return result;
}

uint64_t sub_23B9ADDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9ADEE0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9ADE04()
{
  sub_23B9ADE7C();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23B9ADE7C()
{
  result = qword_27E199208;
  if (!qword_27E199208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199208);
  }

  return result;
}

unint64_t sub_23B9ADEE0()
{
  result = qword_27E199210;
  if (!qword_27E199210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199210);
  }

  return result;
}

void sub_23B9ADF5C(_BYTE *a1, char a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_23B9AE310(v4);
  if (v6 && (v22 = v5, v23 = v6, MEMORY[0x28223BE20](v5), v21[2] = &v22, v7 = sub_23BB78850(sub_23B9AE380, v21, &unk_284E56E98), , v7))
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v8 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v8, qword_27E1BFC88);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_23BBDD768();

    v22 = 0xD00000000000001BLL;
    v23 = 0x800000023BBE06B0;
    if (a2)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a2)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x23EEB5890](v9, v10);

    MEMORY[0x23EEB5890](46, 0xE100000000000000);
    v12 = v22;
    v11 = v23;
    v13 = sub_23BBDD578();

    v14 = sub_23BBD9988();

    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v22);
      *(v15 + 12) = 2082;
      v16 = sub_23BA5AB90(v12, v11, &v22);

      *(v15 + 14) = v16;
      _os_log_impl(&dword_23B970000, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    *a1 = a2 & 1;
  }

  else
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v17 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v17, qword_27E1BFC88);
    v18 = sub_23BBDD598();
    v19 = sub_23BBD9988();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v20 = 136446466;
      *(v20 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v22);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_23BA5AB90(0xD00000000000003BLL, 0x800000023BBE0670, &v22);
      _os_log_impl(&dword_23B970000, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }
  }
}

uint64_t sub_23B9AE310(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23BBDD018();

  return v3;
}

uint64_t sub_23B9AE3A8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B9AE418(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23B9AE564(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 < a2)
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
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9AE768);
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

      return;
  }
}

uint64_t getEnumTagSinglePayload for InterfaceIdiom(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for InterfaceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23B9AE8FCLL);
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

unint64_t sub_23B9AE938()
{
  result = qword_27E1992A8;
  if (!qword_27E1992A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1992A8);
  }

  return result;
}

uint64_t sub_23B9AE99C()
{
  result = sub_23B9AE9BC();
  byte_27E1BFC80 = result;
  return result;
}

uint64_t sub_23B9AE9BC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = sub_23B9AEB74(v1);
  if (result == 7)
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for SKLogger();
    __swift_project_value_buffer(v3, qword_27E1BFC88);
    v4 = sub_23BBDD5A8();
    v5 = sub_23BBD9988();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136446466;
      *(v6 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v8);
      *(v6 + 12) = 2082;
      *(v6 + 14) = sub_23BA5AB90(0xD00000000000002ELL, 0x800000023BBE06D0, &v8);
      _os_log_impl(&dword_23B970000, v5, v4, "%{public}s%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v7, -1, -1);
      MEMORY[0x23EEB6DC0](v6, -1, -1);
    }

    return 3;
  }

  return result;
}

uint64_t sub_23B9AEB74(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 7;
  }

  else
  {
    return (0x5010700040203uLL >> (8 * a1));
  }
}

uint64_t sub_23B9AEB9C()
{
  if (qword_27E1976B0 != -1)
  {
    result = swift_once();
  }

  byte_27E199220 = byte_27E1BFC80;
  return result;
}

unint64_t sub_23B9AEBF4(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  if (v1 < 7 && ((0x6Fu >> v1) & 1) != 0)
  {
    return 0x5010300040203uLL >> (8 * v1);
  }

  if (qword_27E1976B0 != -1)
  {
    swift_once();
  }

  return byte_27E1BFC80;
}

unint64_t sub_23B9AECD4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B9AEBF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B9AED04@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E1976B8 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E199220;
  return result;
}

uint64_t sub_23B9AED60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B9AE938();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B9AEDC4()
{
  sub_23B9AEE00();
  sub_23BBDA938();
  return v1;
}

unint64_t sub_23B9AEE00()
{
  result = qword_27E1992B0;
  if (!qword_27E1992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1992B0);
  }

  return result;
}

unint64_t sub_23B9AEE68()
{
  result = qword_27E1992B8[0];
  if (!qword_27E1992B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1992B8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_23B9AEF0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B9AEF60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t getEnumTagSinglePayload for StoreButtonKind(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for StoreButtonKind(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 PagedPickerSubscriptionStoreControlStyle.Placement.init(rawValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

unint64_t static PagedPickerSubscriptionStoreControlStyle.Placement.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_284E59810;
  result = sub_23B9AF194();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_23B9AF194()
{
  result = qword_27E1993C0;
  if (!qword_27E1993C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993C0);
  }

  return result;
}

double static PagedPickerSubscriptionStoreControlStyle.Placement.scrollView.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void static PagedPickerSubscriptionStoreControlStyle.Placement.bottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE4070);
}

void static PagedPickerSubscriptionStoreControlStyle.Placement.buttonsInBottomBar.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

void sub_23B9AF220(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_9(a1, xmmword_23BBE7BC0);
}

uint64_t PagedPickerSubscriptionStoreControlStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscriptionStoreControlStyleConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B99B814(a1, v6, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198858);
  v8 = v7[14];
  v9 = v7[15];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198860);
  __swift_storeEnumTagSinglePayload(a2 + v9, 1, 1, v10);
  v11 = a2 + v7[16];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v12 = a2 + v7[17];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v7[18];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198868) + 48));
  sub_23B99B870(v6, a2, type metadata accessor for SubscriptionStoreControlStyleConfiguration);
  *v14 = sub_23B9AF484;
  v14[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198870);
  swift_storeEnumTagMultiPayload();
  v15 = (a2 + v7[13]);
  *v15 = sub_23B9AF588;
  v15[1] = 0;
  *(a2 + v8) = 2;
  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = 16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198878);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_23B99B524;
  v19[2] = v17;
  return result;
}

uint64_t sub_23B9AF484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_23B9AF588(uint64_t a1)
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

unint64_t sub_23B9AF844(uint64_t a1)
{
  result = sub_23B9AF86C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9AF86C()
{
  result = qword_27E1993C8;
  if (!qword_27E1993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PagedPickerSubscriptionStoreControlStyle(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x23B9AF978);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
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

uint64_t sub_23B9AF9C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF9 && *(a1 + 40))
    {
      v2 = *a1 + 2147483641;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 6;
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

uint64_t sub_23B9AFA14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_23B9AFA90()
{
  result = qword_27E1993D0;
  if (!qword_27E1993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993D0);
  }

  return result;
}

unint64_t sub_23B9AFAE4(uint64_t a1)
{
  result = sub_23B9AFB0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23B9AFB0C()
{
  result = qword_27E1993D8;
  if (!qword_27E1993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993D8);
  }

  return result;
}

uint64_t sub_23B9AFB8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_23BBDDBB8();
  OUTLINED_FUNCTION_56();
  sub_23BBA88EC(v8, v9, v10, v11);
  sub_23BBDDBF8();
  v12 = a4 + 56;
  OUTLINED_FUNCTION_41();
  v15 = v14 & ~v13;
  if (((*(a4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v13;
  v17 = *(a4 + 48);
  while (1)
  {
    v18 = (v17 + 24 * v15);
    v19 = *v18;
    v20 = v18[1];
    if (v18[2])
    {
      break;
    }

    if ((a3 & 1) == 0 && v19 == a1 && ((v20 ^ a2) & 1) == 0)
    {
      return 1;
    }

LABEL_15:
    v15 = (v15 + 1) & v16;
    if (((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = v19 == a1 && v20 == a2;
  if (!v21 && (sub_23BBDDA88() & 1) == 0)
  {
    goto LABEL_15;
  }

  return 1;
}

BOOL sub_23B9AFCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23BBDDBB8();
  sub_23BBDD078();
  v6 = sub_23BBDDBF8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_23BBDDA88();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void SubscriptionOptionGroupSet.init(idType:groupedBy:label:marketingContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v44 = v32;
  v45 = v33;
  v43 = v34;
  v42 = a23;
  v41[1] = a24;
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  v37 = (v41 - v36);
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = (v41 - v39);
  *v40 = v31;
  v40[1] = v29;
  swift_storeEnumTagMultiPayload();
  *v37 = v27;
  v37[1] = v25;
  OUTLINED_FUNCTION_16_4();
  swift_storeEnumTagMultiPayload();
  sub_23B9AFF04(v44, v45, 0, 0, v40, v37, 0, v43);
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9AFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for SubscriptionOptionGroupSet();
  v13 = v12[18];
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 32))(&a8[v13], a5);
  v15 = v12[19];
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  result = (*(v16 + 32))(&a8[v15], a6);
  a8[v12[20]] = a7;
  return result;
}

void SubscriptionOptionGroupSet.init<>(idType:groupedBy:label:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v4);
  v6 = (v11 - v5);
  *v6 = v3;
  v6[1] = v1;
  swift_storeEnumTagMultiPayload();
  sub_23B9B0108();
  v11[1] = 0;
  v11[2] = 0;
  v12 = 0;
  v7 = OUTLINED_FUNCTION_16_4();
  sub_23B9AFF04(v7, v8, 0, 0, v6, v9, 0, v10);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23B9B0108()
{
  result = qword_27E1993E0;
  if (!qword_27E1993E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1993E0);
  }

  return result;
}

uint64_t sub_23B9B0188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 88);
  v10 = *v9;
  v11 = MEMORY[0x277D84F90];
  if (*(v9 + 8) == 1)
  {
  }

  else
  {

    sub_23BBDD5A8();
    v13 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9B6460(v10, 0);
    result = (*(v6 + 8))(v8, v5);
    v10 = v15[1];
  }

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  *a2 = v14;
  a2[1] = sub_23B9B0314;
  a2[2] = 0;
  return result;
}

uint64_t sub_23B9B0314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDCDB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_23B9B0380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  *&v38 = a3;
  v31 = a1;
  v37 = a5;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v32 = sub_23BBDA358();
  v10 = *(a2 + 40);
  v56 = a3;
  v57 = v8;
  v58 = v32;
  v59 = a4;
  v60 = v10;
  v33 = sub_23BBDC1A8();
  v35 = sub_23BBDACE8();
  v11 = sub_23BBDBE28();
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  v14 = sub_23BBDA358();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v39 = v8;
  v40 = v9;
  v41 = *(a2 + 32);
  v42 = v38;
  v43 = v10;
  v38 = *(a2 + 48);
  v44 = v38;
  v21 = v34;
  v45 = v30;
  v46 = v34;
  v47 = v31;
  v31 = MEMORY[0x277CE0858];
  v22 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v54 = v38;
  v55 = v22;
  v30 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v51 = v38;
  v52 = v23;
  v24 = swift_getWitnessTable();
  sub_23BBDBE18();
  LOBYTE(v21) = *(v21 + *(a2 + 80));
  v50 = v24;
  v25 = swift_getWitnessTable();
  sub_23BB10FDC(0, v21, v11, v25);
  (*(v36 + 8))(v13, v11);
  v26 = sub_23B97B518(&qword_27E1996A0, &qword_27E199590);
  v48 = v25;
  v49 = v26;
  v27 = swift_getWitnessTable();
  sub_23B9D2D88(v18, v14, v27);
  v28 = *(v15 + 8);
  v28(v18, v14);
  sub_23B9D2D88(v20, v14, v27);
  return (v28)(v20, v14);
}

uint64_t sub_23B9B07EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v75 = a8;
  KeyPath = a2;
  v76 = a1;
  v83 = a9;
  v68 = *(a6 - 8);
  v84 = a10;
  MEMORY[0x28223BE20](a1);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v17 = sub_23BBDA358();
  v74 = a6;
  v96 = a6;
  v97 = a3;
  v82 = v17;
  v98 = v17;
  v99 = a11;
  v72 = a11;
  v100 = a7;
  v18 = sub_23BBDC1A8();
  v73 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v70 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v65 - v22;
  v23 = *(a4 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v67 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v66 = &v65 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  v30 = type metadata accessor for NullaryOrUnaryValue();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = (&v65 - v32);
  v78 = v18;
  v81 = sub_23BBDACE8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v65 - v34;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a7;
  v35 = a7;
  v36 = v75;
  v100 = v75;
  v101 = v84;
  v37 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  (*(v31 + 16))(v33, &v76[*(v37 + 72)], v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v33[1];
    v67 = *v33;
    v76 = v38;
    v39 = v74;
    v40 = (*(v68 + 16))(v77, KeyPath, v74);
    MEMORY[0x28223BE20](v40);
    *(&v65 - 8) = a3;
    *(&v65 - 7) = a4;
    *(&v65 - 6) = a5;
    *(&v65 - 5) = v39;
    *(&v65 - 4) = v35;
    *(&v65 - 3) = v36;
    v41 = v36;
    v42 = v84;
    v43 = v72;
    v64 = v72;
    KeyPath = swift_getKeyPath();
    v44 = swift_allocObject();
    v44[2] = a3;
    v44[3] = a4;
    v44[4] = a5;
    v44[5] = v39;
    v44[6] = v35;
    v44[7] = v41;
    v44[8] = v42;
    v44[9] = v43;
    v45 = v76;
    v44[10] = v67;
    v44[11] = v45;
    v46 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
    v94 = v41;
    v95 = v46;

    WitnessTable = swift_getWitnessTable();
    v63 = WitnessTable;
    v48 = v70;
    sub_23BBDC188();
    v93 = WitnessTable;
    v49 = v78;
    v50 = swift_getWitnessTable();
    v51 = v71;
    sub_23B9D2D88(v48, v49, v50);
    v52 = *(v73 + 8);
    v52(v48, v49);
    sub_23B9D2D88(v51, v49, v50);
    v53 = v79;
    sub_23BA82E14();

    v52(v48, v49);
    v52(v51, v49);
  }

  else
  {
    (*(v23 + 32))(v29, v33, a4);
    v54 = v66;
    v41 = v36;
    sub_23B9D2D88(v29, a4, v36);
    v55 = v67;
    sub_23B9D2D88(v54, a4, v36);
    v56 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
    v86 = v36;
    v87 = v56;
    v85 = swift_getWitnessTable();
    swift_getWitnessTable();
    v53 = v79;
    sub_23BA82D64();
    v57 = *(v23 + 8);
    v57(v55, a4);
    v57(v54, a4);
    v57(v29, a4);
  }

  v58 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v91 = v41;
  v92 = v58;
  v90 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v88 = v41;
  v89 = v59;
  v60 = v81;
  v61 = swift_getWitnessTable();
  sub_23B9D2D88(v53, v60, v61);
  return (*(v80 + 8))(v53, v60);
}

uint64_t sub_23B9B1094@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v26 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v12 = sub_23BBDA358();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v23(a1);
  sub_23BB10F14(a1, a4, v24, a7, v25);
  (*(v9 + 8))(v11, a4);
  v19 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v27 = a7;
  v28 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88(v16, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_23B9D2D88(v18, v12, WitnessTable);
  return (v21)(v18, v12);
}

uint64_t sub_23B9B1308@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v33 = a3;
  v36 = a1;
  v43 = a5;
  v8 = a2[4];
  v35 = a2[7];
  type metadata accessor for WrappedIntoUnaryVStack();
  v9 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v37 = sub_23BBDA358();
  v10 = a2[5];
  v62 = a3;
  v63 = v9;
  v64 = v37;
  v65 = a4;
  v66 = v10;
  v38 = sub_23BBDC1A8();
  v40 = sub_23BBDACE8();
  v11 = sub_23BBDBE28();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  v14 = sub_23BBDA358();
  v42 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = a2[3];
  v44 = v9;
  v45 = v20;
  v46 = v8;
  v47 = v33;
  v21 = a2[6];
  v48 = v10;
  v49 = v21;
  v50 = v35;
  v51 = v34;
  v52 = v39;
  v53 = v36;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v60 = WitnessTable;
  v61 = v23;
  v59 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v24;
  v25 = swift_getWitnessTable();
  sub_23BBDBE18();
  v26 = v8 == &type metadata for AutomaticSubscriptionStoreMarketingContent;
  v56 = v25;
  v27 = swift_getWitnessTable();
  sub_23BB10FDC(1, v26, v11, v27);
  (*(v41 + 8))(v13, v11);
  v28 = sub_23B97B518(&qword_27E1996A0, &qword_27E199590);
  v54 = v27;
  v55 = v28;
  v29 = swift_getWitnessTable();
  sub_23B9D2D88(v17, v14, v29);
  v30 = *(v42 + 8);
  v30(v17, v14);
  sub_23B9D2D88(v19, v14, v29);
  return (v30)(v19, v14);
}

uint64_t sub_23B9B179C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v96 = a8;
  v97 = a7;
  v85 = a4;
  v77 = a2;
  KeyPath = a1;
  v95 = a9;
  v74 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v89 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WrappedIntoUnaryVStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v17 = sub_23BBDA358();
  v84 = a6;
  v109 = a6;
  v110 = a3;
  v94 = v17;
  v111 = v17;
  v112 = a11;
  v82 = a11;
  v113 = a7;
  v18 = sub_23BBDC1A8();
  v83 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v72 - v22;
  v78 = *(v16 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v75 = &v72 - v27;
  v76 = *(a5 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v87 = &v72 - v31;
  v32 = type metadata accessor for NullaryOrUnaryValue();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v72 - v34);
  v88 = v16;
  v90 = v18;
  v93 = sub_23BBDACE8();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v72 - v36;
  v79 = a3;
  v37 = v85;
  v109 = a3;
  v110 = v85;
  v111 = a5;
  v112 = v97;
  v113 = v96;
  v114 = a10;
  v38 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  (*(v33 + 16))(v35, KeyPath + *(v38 + 76), v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v35[1];
    v78 = *v35;
    v87 = v39;
    v40 = v84;
    v41 = (*(v74 + 16))(v89, v77, v84);
    MEMORY[0x28223BE20](v41);
    v42 = v79;
    *(&v72 - 8) = v79;
    *(&v72 - 7) = v37;
    *(&v72 - 6) = a5;
    *(&v72 - 5) = v40;
    v43 = v96;
    v44 = v97;
    *(&v72 - 4) = v97;
    *(&v72 - 3) = v43;
    v45 = v82;
    v71 = v82;
    KeyPath = swift_getKeyPath();
    v46 = swift_allocObject();
    v46[2] = v42;
    v46[3] = v37;
    v46[4] = a5;
    v46[5] = v40;
    v46[6] = v44;
    v46[7] = v43;
    v46[8] = a10;
    v46[9] = v45;
    v46[10] = v78;
    v46[11] = v87;

    WitnessTable = swift_getWitnessTable();
    v48 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
    v107 = WitnessTable;
    v108 = v48;
    v49 = swift_getWitnessTable();
    v70 = v49;
    v50 = v81;
    sub_23BBDC188();
    v106 = v49;
    v51 = v90;
    v52 = swift_getWitnessTable();
    v53 = v80;
    sub_23B9D2D88(v50, v51, v52);
    v54 = *(v83 + 8);
    v54(v50, v51);
    sub_23B9D2D88(v53, v51, v52);
    v55 = v91;
    sub_23BA82E14();

    v54(v50, v51);
    v54(v53, v51);
  }

  else
  {
    v56 = v76;
    v57 = *(v76 + 32);
    v58 = v87;
    v73 = a5;
    v57(v87, v35, a5);
    (*(v56 + 16))(v30, v58, a5);
    sub_23BB7E3AC();
    v59 = v88;
    v60 = swift_getWitnessTable();
    v61 = v75;
    sub_23B9D2D88(v25, v59, v60);
    v62 = *(v78 + 8);
    v62(v25, v59);
    sub_23B9D2D88(v61, v59, v60);
    v63 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
    v99 = v60;
    v100 = v63;
    v98 = swift_getWitnessTable();
    swift_getWitnessTable();
    v55 = v91;
    sub_23BA82D64();
    v62(v25, v59);
    v62(v61, v59);
    (*(v56 + 8))(v87, v73);
  }

  v64 = swift_getWitnessTable();
  v65 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v104 = v64;
  v105 = v65;
  v103 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v101 = v64;
  v102 = v66;
  v67 = v93;
  v68 = swift_getWitnessTable();
  sub_23B9D2D88(v55, v67, v68);
  return (*(v92 + 8))(v55, v67);
}

uint64_t sub_23B9B21B8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v28 = a4;
  v29 = a6;
  v26[3] = a3;
  v27 = a2;
  v30 = a7;
  v26[1] = a5;
  v26[2] = a9;
  MEMORY[0x28223BE20](a1);
  v10 = type metadata accessor for WrappedIntoUnaryVStack();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v14 = sub_23BBDA358();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v26 - v19;
  v27(a1);
  sub_23BB7E3AC();
  WitnessTable = swift_getWitnessTable();
  sub_23BB10F14(a1, v10, v28, WitnessTable, v29);
  (*(v11 + 8))(v13, v10);
  v22 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v31 = WitnessTable;
  v32 = v22;
  v23 = swift_getWitnessTable();
  sub_23B9D2D88(v18, v14, v23);
  v24 = *(v15 + 8);
  v24(v18, v14);
  sub_23B9D2D88(v20, v14, v23);
  return (v24)(v20, v14);
}

uint64_t sub_23B9B24A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LODWORD(v44) = a3;
  v46 = a2;
  v47 = a4;
  v51 = a1;
  v42 = a6;
  v7 = *(a4 + 16);
  v39 = sub_23BBDD648();
  v38 = *(v39 - 8);
  v8 = MEMORY[0x28223BE20](v39);
  v48 = &v38 - v9;
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23BBDA288();
  v40 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  MEMORY[0x28223BE20](v52);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199640);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v38 - v23;
  (*(v19 + 16))(v21, v51, a5);
  v50 = v24;
  sub_23BBDD188();
  v51 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v25 = (v40 + 8);
  v26 = v44 & 1;
  v27 = v43++;
  v44 = (v27 + 4);
  v28 = v49;
  while (1)
  {
    sub_23BBDD688();
    if (__swift_getEnumTagSinglePayload(v18, 1, v52) == 1)
    {
      (*(v41 + 8))(v50, v51);
      v34 = v42;
      v35 = 1;
      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v52);
    }

    sub_23B9BD984();
    sub_23BBDC1D8();
    sub_23B9B7448();
    sub_23BBDA298();
    v29 = *v25;
    (*v25)(v12, v28);
    if (v55[0] != 2 && (v55[0] & 1) == v26)
    {
      sub_23BBDC1D8();
      sub_23B9B74F8();
      sub_23BBDA298();
      v29(v12, v28);
      if (!v54)
      {
        (*(v41 + 8))(v50, v51);
        sub_23B9B754C(&v53);
        goto LABEL_16;
      }

      sub_23B98473C(&v53, v55);
      sub_23B9BC9FC(v55, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199660);
      v31 = v48;
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v55);
        (*(v41 + 8))(v50, v51);
        __swift_storeEnumTagSinglePayload(v31, 1, 1, v7);
        (*(v38 + 8))(v31, v39);
        goto LABEL_16;
      }

      __swift_storeEnumTagSinglePayload(v31, 0, 1, v7);
      v32 = v45;
      (*v44)(v45, v31, v7);
      v33 = sub_23BBDCF38();
      (*v43)(v32, v7);
      __swift_destroy_boxed_opaque_existential_1(v55);
      if (v33)
      {
        break;
      }
    }

    sub_23B9B749C(v14);
  }

  (*(v41 + 8))(v50, v51);
LABEL_16:
  v36 = v42;
  sub_23B9BD984();
  v34 = v36;
  v35 = 0;
  return __swift_storeEnumTagSinglePayload(v34, v35, 1, v52);
}

uint64_t sub_23B9B2B58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = *(a1 - 1);
  v3 = MEMORY[0x28223BE20](a1);
  v81 = v4;
  v82 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v3 + 16);
  v5 = v94;
  v6 = *(v3 + 40);
  v7 = sub_23BBD98D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v8 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  *&__src[0] = v7;
  *(&__src[0] + 1) = v94;
  *&__src[1] = v8;
  *(&__src[1] + 1) = WitnessTable;
  *&__src[2] = v6;
  sub_23BBDC1A8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  sub_23BBDA358();
  v10 = a1[7];
  v89 = a1[4];
  v90 = v10;
  type metadata accessor for WrappedIntoUnaryVStack();
  v11 = sub_23BBDA358();
  v80 = v7;
  *&__src[0] = v7;
  *(&__src[0] + 1) = v94;
  *&__src[1] = v11;
  *(&__src[1] + 1) = WitnessTable;
  v93 = v6;
  *&__src[2] = v6;
  sub_23BBDC1A8();
  sub_23BBDACE8();
  sub_23BBDBE28();
  sub_23BBDA358();
  swift_getTupleTypeMetadata2();
  v68 = sub_23BBDC3D8();
  v12 = sub_23BBDBE28();
  v13 = sub_23BBDD2A8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598);
  v15 = swift_getWitnessTable();
  *&__src[0] = v13;
  *(&__src[0] + 1) = v94;
  *&__src[1] = v14;
  *(&__src[1] + 1) = v15;
  *&__src[2] = v6;
  v16 = sub_23BBDC1A8();
  v67 = swift_getWitnessTable();
  v110 = v67;
  v17 = swift_getWitnessTable();
  v109 = sub_23B9B5FD8();
  v18 = swift_getWitnessTable();
  *&__src[0] = v12;
  *(&__src[0] + 1) = v16;
  v77 = v16;
  v72 = v18;
  v73 = v17;
  *&__src[1] = v17;
  *(&__src[1] + 1) = v18;
  v74 = sub_23BBDAEC8();
  v19 = sub_23BBDBE28();
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v75 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v76 = &v65 - v23;
  v91 = v12;
  v88 = *(v12 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v87 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v92 = &v65 - v26;
  sub_23B9B0188(a1, v103);
  v84 = v103[0];
  v104 = v103[0];
  v105 = *&v103[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995E0);
  sub_23B97B518(&qword_27E1995E8, &qword_27E1995E0);
  sub_23BBDD9B8();

  v71 = __src[0];
  v103[0] = __src[0];
  v103[1] = __src[1];
  v69 = __src[1];
  v70 = *&__src[2];
  *&v103[2] = *&__src[2];
  sub_23B9B0188(a1, __src);
  v84 = __src[0];
  v104 = __src[0];
  v105 = *&__src[1];
  v106 = sub_23B9B3630;
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995F0);
  sub_23B97B518(&qword_27E1995F8, &qword_27E1995F0);
  v27 = sub_23BBDD8A8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199600);
  v29 = swift_getWitnessTable();
  v30 = sub_23B97B518(&qword_27E199608, &qword_27E199600);
  sub_23BBDDAC8();

  memcpy(v103, __src, sizeof(v103));
  *&v104 = v27;
  *(&v104 + 1) = v28;
  v31 = v5;
  v105 = v29;
  v106 = v30;
  sub_23BBDD7A8();
  swift_getWitnessTable();
  v32 = v93;
  sub_23B99D750();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  *&v84 = a1;
  v39 = a1[6];
  v40 = v86;
  v65 = v39;
  *&v41 = v39;
  *(&v41 + 1) = v90;
  *&v42 = v89;
  *(&v42 + 1) = v32;
  v95 = v94;
  v96 = v42;
  v97 = v41;
  v98 = v86;
  v99 = v33;
  v100 = v35;
  v101 = v37;
  sub_23BBDBE18();
  v43 = *(v40 + 16);
  v66 = v36;
  v44 = v34;
  v45 = v34;
  v46 = v38;
  sub_23B99E010(v45, v36, __src);
  v103[0] = __src[0];
  if (v43)
  {

    swift_getWitnessTable();
    v47 = sub_23BBDD1F8();

    sub_23B979500(v43);
  }

  else
  {
    swift_getWitnessTable();
    v48 = sub_23BBDD2B8();
    v47 = sub_23B9B3E50(v48, v31);
  }

  (*(v88 + 16))(v87, v92, v91);
  v80 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  v49 = v82;
  v50 = v83;
  v51 = v84;
  (*(v83 + 16))(v82, v40, v84);
  v52 = (*(v50 + 80) + 96) & ~*(v50 + 80);
  v53 = swift_allocObject();
  *&v54 = v89;
  *(&v54 + 1) = v93;
  *(v53 + 32) = v54;
  *(v53 + 16) = v94;
  v55 = v66;
  v56 = v90;
  *(v53 + 48) = v65;
  *(v53 + 56) = v56;
  *(v53 + 64) = v47;
  *(v53 + 72) = v44;
  *(v53 + 80) = v55;
  *(v53 + 88) = v46;
  (*(v50 + 32))(v53 + v52, v49, v51);
  v57 = sub_23B9BD93C(&qword_27E199610, type metadata accessor for SubscriptionOptionGroupAccessorySubview);

  v58 = v75;
  v59 = v91;
  sub_23BB78108(v87, sub_23B9B646C, v53, v80, v91, v77, v57, v75, v73, v72);

  (*(v88 + 8))(v92, v59);
  v102 = swift_getWitnessTable();
  v60 = v79;
  v61 = swift_getWitnessTable();
  v62 = v76;
  sub_23B9D2D88(v58, v60, v61);
  v63 = *(v78 + 8);
  v63(v58, v60);
  sub_23B9D2D88(v62, v60, v61);
  return (v63)(v62, v60);
}

uint64_t sub_23B9B3630@<X0>(uint64_t *a1@<X8>)
{
  result = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B9B365C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(void, void))
{
  v55 = a7;
  v71 = a4;
  v54 = a3;
  v72 = a2;
  v73 = a1;
  v67 = a9;
  v57 = a10;
  v56 = a11;
  v15 = type metadata accessor for WrappedIntoUnaryVStack();
  v16 = sub_23BBD98D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199588);
  v60 = v15;
  v64 = sub_23BBDA358();
  WitnessTable = swift_getWitnessTable();
  v90 = v16;
  v91 = a5;
  v92 = v64;
  v93 = WitnessTable;
  v94 = a8;
  v62 = sub_23BBDC1A8();
  v65 = sub_23BBDACE8();
  v63 = sub_23BBDBE28();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199590);
  v59 = sub_23BBDA358();
  v66 = *(v59 - 8);
  v18 = MEMORY[0x28223BE20](v59);
  v58 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = v46 - v20;
  v21 = sub_23BBDA358();
  v90 = v16;
  v91 = a5;
  v51 = v16;
  v92 = v21;
  v93 = WitnessTable;
  v50 = WitnessTable;
  v94 = a8;
  sub_23BBDC1A8();
  v48 = sub_23BBDACE8();
  v53 = sub_23BBDBE28();
  v68 = sub_23BBDA358();
  v70 = *(v68 - 8);
  v22 = MEMORY[0x28223BE20](v68);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = v46 - v25;
  v52 = a8;
  sub_23B99E010(v72, a3, &v98);
  v96 = v98;
  v97 = v99;
  v90 = a5;
  v91 = a6;
  v92 = v55;
  v93 = a8;
  v26 = v57;
  v94 = v57;
  v95 = v56;
  v49 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  sub_23B9B0380(&v96, v49, v16, WitnessTable, v24);

  v47 = sub_23B97B518(&qword_27E199698, &qword_27E199588);
  v88 = v26;
  v89 = v47;
  v87 = swift_getWitnessTable();
  v46[1] = MEMORY[0x277CE1290];
  v27 = swift_getWitnessTable();
  v85 = v26;
  v86 = v27;
  v84 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = sub_23B97B518(&qword_27E1996A0, &qword_27E199590);
  v82 = v28;
  v83 = v29;
  v30 = v68;
  v55 = swift_getWitnessTable();
  v31 = v24;
  sub_23B9D2D88(v24, v30, v55);
  v56 = *(v70 + 8);
  v57 = v70 + 8;
  v56(v24, v30);
  sub_23B99E010(v72, v54, &v90);
  v98 = v90;
  v99 = v91;
  v32 = v58;
  sub_23B9B1308(&v98, v49, v51, v50, v58);

  v33 = swift_getWitnessTable();
  v80 = v33;
  v81 = v47;
  v79 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v77 = v33;
  v78 = v34;
  v76 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v75 = v29;
  v35 = v59;
  v36 = swift_getWitnessTable();
  v37 = v61;
  v38 = v32;
  sub_23B9D2D88(v32, v35, v36);
  v39 = v66;
  v40 = *(v66 + 8);
  v40(v38, v35);
  v41 = v69;
  v42 = v68;
  (*(v70 + 16))(v31, v69, v68);
  v90 = v31;
  (*(v39 + 16))(v38, v37, v35);
  v91 = v38;
  v98 = v42;
  v99 = v35;
  v96 = v55;
  v97 = v36;
  sub_23BB6739C(&v90, 2, &v98);
  v40(v37, v35);
  v43 = v41;
  v44 = v56;
  v56(v43, v42);
  v40(v38, v35);
  return v44(v31, v42);
}

uint64_t sub_23B9B3E50(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199678);
  v4 = sub_23BBDD9E8();
  if (v4)
  {
    v7[2] = a2;
    v7[5] = MEMORY[0x28223BE20](v4);

    sub_23B9BC864(sub_23B9BC070, v7);

    v5 = sub_23BBDD9E8();

    if (v5)
    {
      return v5;
    }
  }

  return a1;
}

uint64_t sub_23B9B3F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v56 = a6;
  v57 = a1;
  v60 = a4;
  v61 = a5;
  v59 = a3;
  v62 = a9;
  v63 = a2;
  v46 = a12;
  v45 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v49 = &v40 - v16;
  v71 = a7;
  v72 = a8;
  v17 = a8;
  v42 = a8;
  v73 = a10;
  v74 = a11;
  v75 = a12;
  v76 = a13;
  v47 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  v18 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v20 = &v40 - v19;
  v40 = &v40 - v19;
  v21 = sub_23BBDD2A8();
  v55 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598);
  v54 = v22;
  WitnessTable = swift_getWitnessTable();
  v71 = v21;
  v72 = a7;
  v41 = a7;
  v73 = v22;
  v74 = WitnessTable;
  v75 = a11;
  v52 = sub_23BBDC1A8();
  v58 = *(v52 - 8);
  v23 = MEMORY[0x28223BE20](v52);
  v48 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v50 = &v40 - v25;
  v71 = v63;
  v64 = a7;
  v65 = v17;
  v26 = v45;
  v66 = v45;
  v67 = a11;
  v43 = a11;
  v27 = v46;
  v68 = v46;
  v69 = a13;
  KeyPath = swift_getKeyPath();
  v28 = v47;
  (*(v18 + 16))(v20, v56, v47);
  sub_23B9BDCE4();
  v29 = (*(v18 + 80) + 88) & ~*(v18 + 80);
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 2) = v41;
  *(v30 + 3) = v31;
  *(v30 + 4) = v26;
  *(v30 + 5) = a11;
  *(v30 + 6) = v27;
  *(v30 + 7) = a13;
  v32 = v60;
  *(v30 + 8) = v59;
  *(v30 + 9) = v32;
  *(v30 + 10) = v61;
  (*(v18 + 32))(&v30[v29], v40, v28);
  sub_23B9BDD38();
  v33 = sub_23B9B5FD8();

  v34 = v48;
  sub_23BBDC188();
  v70 = v33;
  v35 = v52;
  v36 = swift_getWitnessTable();
  v37 = v50;
  sub_23B9D2D88(v34, v35, v36);
  v38 = *(v58 + 8);
  v38(v34, v35);
  sub_23B9D2D88(v37, v35, v36);
  return (v38)(v37, v35);
}

void sub_23B9B448C(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v56 = a2;
  v52 = a6;
  v46 = a10;
  v44 = a9;
  v14 = *(a4 - 8);
  v49 = a5;
  v50 = v14;
  v43 = a7;
  MEMORY[0x28223BE20](a1);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SubscriptionStoreContentConfiguration.AccessorySubviews(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a8;
  v20 = sub_23B99DF0C();
  v48 = sub_23B9B48FC(v20);
  v21 = sub_23BBDC318();
  v54 = v22;
  v55 = v21;
  KeyPath = swift_getKeyPath();
  v51 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995B0) + 36));
  v23 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1995C8) + 28);
  *&v57 = a4;
  *(&v57 + 1) = v49;
  *&v58 = v43;
  *(&v58 + 1) = a8;
  v59 = v44;
  v60 = v46;
  v24 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  sub_23B9B698C();
  v49 = v24;
  sub_23B9B24A4(a3, a1, 0, v24, v25, v19);
  sub_23B9B24A4(a3, a1, 1, v24, v25, &v19[*(v17 + 28)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199630);
  v26 = (type metadata accessor for SubscriptionStoreContentConfiguration.Section(0) - 8);
  v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23BBE7F10;
  v29 = v28 + v27;
  (*(v50 + 16))(v47, a1, a4);
  sub_23BBDD718();
  v30 = swift_allocObject();
  *(v30 + 16) = v48;
  v31 = v29 + v26[8];
  v32 = type metadata accessor for SubscriptionOptionSectionAccessorySubview();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
  v33 = type metadata accessor for SubscriptionStoreContentConfiguration.Section.AccessorySubviews(0);
  __swift_storeEnumTagSinglePayload(v31 + *(v33 + 20), 1, 1, v32);
  v34 = v58;
  *v29 = v57;
  *(v29 + 16) = v34;
  *(v29 + 32) = v59;
  *(v29 + 40) = sub_23B9B6A78;
  *(v29 + 48) = v30;
  sub_23B9BD984();
  v35 = v23 + *(type metadata accessor for SubscriptionStoreContentConfiguration.Context.GroupContext(0) + 20);
  *v35 = v28;
  *(v35 + 8) = 0;
  v36 = type metadata accessor for SubscriptionStoreContentConfiguration.Context(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v36);
  v37 = v52;
  *v51 = KeyPath;
  v38 = v54;
  *v37 = v55;
  v37[1] = v38;
  v39 = v37;
  v40 = swift_getKeyPath();
  v41 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199598) + 36));
  sub_23B9B7294();
  *v41 = v40;
}

uint64_t sub_23B9B48FC(uint64_t a1)
{
  result = MEMORY[0x23EEB5B90](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v6 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v6;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    sub_23B9B9680();
  }

  __break(1u);
  return result;
}

uint64_t sub_23B9B49BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23B9BD9DC();
  v4 = MEMORY[0x23EEB5B90](v2, &type metadata for SubscriptionStoreViewDetails.VisibleRelationships, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_23B9B9A28(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_23B9B4A78()
{
  v0 = OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_23B9BDCE4();
  return sub_23BA222C0(v3);
}

uint64_t sub_23B9B4B18(uint64_t a1, uint64_t a2)
{
  v3 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  LOBYTE(a2) = sub_23B9AFCB4(v3, v4, a2);

  return a2 & 1;
}

uint64_t sub_23B9B4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  v13 = v12[18];
  v14 = type metadata accessor for NullaryOrUnaryValue();
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v15 = v12[19];
  v16 = type metadata accessor for NullaryOrUnaryValue();
  (*(*(v16 - 8) + 32))(&a8[v15], a6, v16);
  a8[v12[20]] = a7;
  v17 = &a8[v12[21]];
  *v17 = swift_getKeyPath();
  v17[343] = 0;
  v18 = &a8[v12[22]];
  result = swift_getKeyPath();
  *v18 = result;
  v18[8] = 0;
  return result;
}

void SubscriptionOptionGroupSet._identifiedContent.getter()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v42 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_11_3();
  v39 = type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_7();
  v7 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v33 = &v31 - v9;
  v10 = *(v2 + 24);
  OUTLINED_FUNCTION_11_3();
  v11 = type metadata accessor for NullaryOrUnaryValue();
  OUTLINED_FUNCTION_7();
  v13 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = *(v2 + 40);
  v18 = *(v2 + 48);
  v19 = *(v2 + 56);
  v40 = v5;
  v41 = v4;
  *&v20 = v4;
  *(&v20 + 1) = v10;
  *&v21 = v5;
  v37 = v18;
  v38 = v17;
  *(&v21 + 1) = v17;
  v43 = v20;
  v44 = v21;
  v45 = v18;
  v46 = v19;
  v22 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = v0[1];
  v32 = *v0;
  v27 = v0[3];
  v36 = v0[2];
  v34 = v26;
  v35 = v27;
  (*(v13 + 16))(v16, v0 + *(v2 + 72), v11);
  v28 = v33;
  (*(v7 + 16))(v33, v0 + *(v2 + 76), v39);
  if (v10 == &type metadata for AutomaticSubscriptionOptionGroupLabel)
  {
    v29 = *(v0 + *(v2 + 80)) ^ 1;
  }

  else
  {
    v29 = 0;
  }

  sub_23B9B4BB8(v32, v34, v36, v35, v16, v28, v29 & 1, v25);
  OUTLINED_FUNCTION_19_2();
  swift_getWitnessTable();
  sub_23BB6BA80(v25, v22, v42);

  v30 = OUTLINED_FUNCTION_17_0();
  sub_23B9794F0(v30);
  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23B9B4FB8()
{
  result = qword_27E1993E8[0];
  if (!qword_27E1993E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1993E8);
  }

  return result;
}

void sub_23B9B5038()
{
  sub_23B975E04();
  if (v0 <= 0x3F)
  {
    sub_23B9B5B84(319, &qword_27E197B10, &qword_27E197B18, &unk_23BBE3DF0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NullaryOrUnaryValue();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NullaryOrUnaryValue();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B9B5130(unsigned __int16 *a1, int a2, uint64_t a3)
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

  v5 = *(*(a3 + 32) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v5 + 80) & 0xF8 | 7;
  v10 = v6 + ((v4 + v9 + (((*(v3 + 80) & 0xF8) + 39) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1) & ~v9) + 2;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_13;
  }

  v13 = (a2 - 0x7FFFFFFF + ~(-1 << v11)) >> v11;
  if (v13 > 0xFFFE)
  {
    v12 = *(a1 + v10);
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  if (v13 <= 0xFE)
  {
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_13:
    v12 = *(a1 + v10);
    if (!*(a1 + v10))
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
LABEL_8:
    v7 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

LABEL_22:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
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

  return (v10 | v14) ^ 0x80000000;
}

void sub_23B9B5310(char *a1, int a2, int a3, uint64_t a4)
{
  v4 = a2;
  v6 = *(*(a4 + 24) - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(*(a4 + 32) - 8) + 64);
  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  v9 = *(v6 + 80) & 0xF8;
  v10 = *(*(*(a4 + 32) - 8) + 80) & 0xF8 | 7;
  v11 = v8 + ((v7 + v10 + ((v9 + 39) & ~v9 & 0x1F8) + 1) & ~v10) + 2;
  v12 = 8 * v11;
  if (a3 < 0)
  {
    if (v11 <= 3)
    {
      v14 = (a3 - 0x7FFFFFFF + ~(-1 << v12)) >> v12;
      if (v14 > 0xFFFE)
      {
        v13 = 4;
        if (a2 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }

      if (v14 < 0xFF)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14)
      {
        v13 = v15;
      }

      else
      {
        v13 = 0;
      }

      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 1;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    v16 = a2 & 0x7FFFFFFF;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v18 = a2 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  v13 = 0;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

LABEL_27:
  switch(v13)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      goto LABEL_31;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x23B9B5584);
    case 4:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        *a1 = (a2 - 1);
      }

      return;
  }
}

uint64_t sub_23B9B55C4()
{
  type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  OUTLINED_FUNCTION_19_2();
  return swift_getWitnessTable();
}

void sub_23B9B5610()
{
  sub_23B975E04();
  if (v0 <= 0x3F)
  {
    sub_23B9B5B84(319, &qword_27E197B10, &qword_27E197B18, &unk_23BBE3DF0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for NullaryOrUnaryValue();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NullaryOrUnaryValue();
        if (v3 <= 0x3F)
        {
          sub_23B9B5B34();
          if (v4 <= 0x3F)
          {
            sub_23B9B5B84(319, &qword_27E1994F8, &unk_27E199500, &unk_23BBE7FB8, MEMORY[0x277CDF468]);
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

uint64_t sub_23B9B5764(unsigned __int8 *a1, int a2, uint64_t a3)
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

  v5 = *(*(a3 + 32) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(v5 + 80) & 0xF8 | 7;
  v10 = ((((v6 + ((v4 + v9 + (((*(v3 + 80) & 0xF8) + 39) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1) & ~v9) + 1) & 0xFFFFFFFFFFFFFFF8) + 359) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 <= 3)
  {
    v11 = ((a2 - 2147483392) >> 8) + 1;
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
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == 4)
  {
    v14 = *&a1[v10];
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else if (v13 == 2)
  {
    v14 = *&a1[v10];
    if (!*&a1[v10])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = a1[v10];
    if (!a1[v10])
    {
LABEL_8:
      v7 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v7) = -1;
      }

      return (v7 + 1);
    }
  }

  v15 = (v14 - 1) << (8 * v10);
  v16 = v10 > 3;
  if (v10 <= 3)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = *a1;
  }

  else
  {
    v18 = *a1;
  }

  return (v18 | v17) ^ 0x80000000;
}

void sub_23B9B58FC(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  if (*(v6 + 64) <= 0x10uLL)
  {
    v7 = 16;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a4 + 32) - 8);
  v9 = *(v8 + 64);
  if (v9 <= 0x10)
  {
    v9 = 16;
  }

  v10 = *(v6 + 80) & 0xF8;
  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = ((((v9 + ((v7 + v11 + ((v10 + 39) & ~v10 & 0x1F8) + 1) & ~v11) + 1) & 0xFFFFFFFFFFFFFFF8) + 359) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (a3 < 0)
  {
    if (v12 <= 3)
    {
      v14 = ((a3 - 2147483392) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = v15;
    }

    if ((a2 & 0x80000000) == 0)
    {
LABEL_8:
      switch(v13)
      {
        case 1:
          a1[v12] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_31;
        case 2:
          *&a1[v12] = 0;
          goto LABEL_30;
        case 3:
          goto LABEL_37;
        case 4:
          *&a1[v12] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_31;
        default:
LABEL_30:
          if (a2)
          {
LABEL_31:
            *a1 = a2 - 1;
          }

          break;
      }

      return;
    }
  }

  else
  {
    v13 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  v16 = (a2 >> 8) & 0x7FFFFF;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 > 3)
  {
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }

  switch(v13)
  {
    case 1:
      a1[v12] = v17;
      break;
    case 2:
      *&a1[v12] = v17;
      break;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23B9B5B0CLL);
    case 4:
      *&a1[v12] = v17;
      break;
    default:
      return;
  }
}

void sub_23B9B5B34()
{
  if (!qword_27E1994F0)
  {
    v0 = sub_23BBD9C18();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1994F0);
    }
  }
}

void sub_23B9B5B84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_44(0, a2, a3);
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v8);
    v10 = a5(a1, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_23B9B5BEC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_23B975E04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B9B5C64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_23B9B5D98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x23B9B5F5CLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_23B9B5FD8()
{
  result = qword_27E1995A0;
  if (!qword_27E1995A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199598);
    sub_23B9B6090();
    sub_23B97B518(&qword_27E1995D0, &qword_27E1995D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995A0);
  }

  return result;
}

unint64_t sub_23B9B6090()
{
  result = qword_27E1995A8;
  if (!qword_27E1995A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1995B0);
    sub_23B9B6148();
    sub_23B97B518(&qword_27E1995C0, &qword_27E1995C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995A8);
  }

  return result;
}

unint64_t sub_23B9B6148()
{
  result = qword_27E1995B8;
  if (!qword_27E1995B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1995B8);
  }

  return result;
}

uint64_t sub_23B9B61D4()
{
  v1 = *(v0 + 24);
  v12 = *(v0 + 32);
  v2 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  OUTLINED_FUNCTION_57();
  v4 = (*(v3 + 80) + 96) & ~*(v3 + 80);

  v5 = v0 + v4;

  if (*(v0 + v4 + 16))
  {
  }

  v6 = v5 + v2[18];
  OUTLINED_FUNCTION_11_3();
  type metadata accessor for NullaryOrUnaryValue();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v7 + 8))(v6, v1);
  }

  v8 = v5 + v2[19];
  OUTLINED_FUNCTION_11_3();
  type metadata accessor for NullaryOrUnaryValue();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v9 + 8))(v8, v12);
  }

  v10 = v5 + v2[21];
  if (*(v10 + 343))
  {

    if (*(v10 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 16);
    }

    if (*(v10 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 56);
    }

    if (*(v10 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 96);
    }

    if (*(v10 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 136);
    }

    if (*(v10 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 176);
    }

    if (*(v10 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 224);
    }

    if (*(v10 + 280) >= 4uLL)
    {

      if (*(v10 + 312))
      {
      }
    }
  }

  else
  {
  }

  sub_23B9B6460(*(v5 + v2[22]), *(v5 + v2[22] + 8));
  return swift_deallocObject();
}

uint64_t sub_23B9B6460(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_23B9B651C()
{
  OUTLINED_FUNCTION_61();
  v1 = *(v0 + 24);
  v15 = *(v0 + 32);
  v2 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  OUTLINED_FUNCTION_57();
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v16 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 80);

  v8 = v0 + v4;

  if (*(v0 + v4 + 16))
  {
  }

  v9 = v8 + v2[18];
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v10 + 8))(v9, v1);
  }

  v11 = v8 + v2[19];
  OUTLINED_FUNCTION_12_2();
  type metadata accessor for NullaryOrUnaryValue();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    (*(v12 + 8))(v11, v15);
  }

  v13 = v8 + v2[21];
  if (*(v13 + 343))
  {

    if (*(v13 + 40) >= 6uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 16);
    }

    if (*(v13 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 56);
    }

    if (*(v13 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 96);
    }

    if (*(v13 + 160))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 136);
    }

    if (*(v13 + 200))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 176);
    }

    if (*(v13 + 248) >= 3uLL)
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 224);
    }

    if (*(v13 + 280) >= 4uLL)
    {

      if (*(v13 + 312))
      {
      }
    }
  }

  else
  {
  }

  sub_23B9B6460(*(v8 + v2[22]), *(v8 + v2[22] + 8));
  sub_23BBDAA98();
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 8))(v0 + ((v4 + v16 + v7) & ~v7));

  swift_deallocObject();
  OUTLINED_FUNCTION_60();
}

void sub_23B9B683C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = type metadata accessor for SubscriptionOptionGroupSet.IdentifiedView();
  OUTLINED_FUNCTION_25_0(v10);
  v12 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199618) - 8);
  sub_23B9B448C(a1, v2 + v12, v2 + ((v12 + v14 + *(v15 + 80)) & ~*(v15 + 80)), v4, v5, a2, v6, v7, v8, v9);
}

unint64_t sub_23B9B698C()
{
  result = qword_27E199620;
  if (!qword_27E199620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E199618);
    sub_23B9BD93C(&qword_27E199628, MEMORY[0x277CE0150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199620);
  }

  return result;
}

uint64_t sub_23B9B6A40()
{

  return swift_deallocObject();
}

uint64_t sub_23B9B6AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a1;
  v22[1] = a6;
  v9 = sub_23BBDD648();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v16, a2, a5);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a4);
    (*(v17 + 32))(v19, v13, a4);
    LOBYTE(v16) = sub_23BBDCEC8();
    (*(v17 + 8))(v19, a4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a4);
    (*(v10 + 8))(v13, v9);
    sub_23B9BD7C8();
    swift_allocError();
    swift_willThrow();
  }

  return v16 & 1;
}

uint64_t sub_23B9B6D5C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v8);
  return sub_23B9B6AB8(v7, v9, a3, v5, v8, v6) & 1;
}

uint64_t sub_23B9B6DE8()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDC208();
  OUTLINED_FUNCTION_4_1();
  v0 = OUTLINED_FUNCTION_17_0();

  return v1(v0);
}

void sub_23B9B6E40()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_4();
  sub_23B9BDCE4();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_51();
  }

  else
  {
    sub_23BBDD5A8();
    v1 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v2 = OUTLINED_FUNCTION_16_4();
    v3(v2);
  }
}

void sub_23B9B6FC0()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_4();
  sub_23B9BDCE4();
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_51();
  }

  else
  {
    sub_23BBDD5A8();
    v1 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v2 = OUTLINED_FUNCTION_16_4();
    v3(v2);
  }
}

void sub_23B9B7118()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1(0);
    OUTLINED_FUNCTION_4_1();
    (*(v6 + 32))(v0, v2);
  }

  else
  {
    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v8 = OUTLINED_FUNCTION_16_4();
    v9(v8);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23B9B7294()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  sub_23B9BDCE4();
  if (v6[343] == 1)
  {
    memcpy(v1, v6, 0x157uLL);
  }

  else
  {
    sub_23BBDD5A8();
    v3 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();

    v4 = OUTLINED_FUNCTION_46();
    v5(v4);
  }

  OUTLINED_FUNCTION_9_1();
}

unint64_t sub_23B9B7448()
{
  result = qword_27E199648;
  if (!qword_27E199648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199648);
  }

  return result;
}

uint64_t sub_23B9B749C(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOptionGroupAccessorySubview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B9B74F8()
{
  result = qword_27E199650;
  if (!qword_27E199650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E199650);
  }

  return result;
}

uint64_t sub_23B9B754C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B9B76A0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  sub_23B9BDCE4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9BDD38();
  }

  else
  {
    sub_23BBDD5A8();
    v8 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    (*(v5 + 8))(v0, v3);
  }

  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_23B9B78A0()
{
  OUTLINED_FUNCTION_40();
  sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_4();
  result = sub_23B9BDCE4();
  if (v9 == 1)
  {
    *v0 = v6;
    v0[1] = v7;
    v0[2] = v8;
  }

  else
  {
    sub_23BBDD5A8();
    v3 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    v4 = OUTLINED_FUNCTION_16_4();
    return v5(v4);
  }

  return result;
}

void sub_23B9B7A08()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_58();
  v2 = sub_23BBDA928();
  OUTLINED_FUNCTION_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B9BD984();
  }

  else
  {
    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    OUTLINED_FUNCTION_14_4();

    sub_23BBDA918();
    OUTLINED_FUNCTION_27();
    swift_getAtKeyPath();

    (*(v4 + 8))(v0, v2);
  }

  OUTLINED_FUNCTION_9_1();
}

void sub_23B9B7B8C()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996B0);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_5();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23B9B7C5C()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199748, &unk_23BBE8210);
  OUTLINED_FUNCTION_24_2();
  sub_23BBDCDB8();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(MEMORY[0x277CDD330], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B7D34()
{
  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E199680);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_12_5();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_23B9B7E08()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E1997A8, &unk_23BBE8320);
  OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionComparator.Compared();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionComparator.Compared, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B7EE0()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199708, &unk_23BBE81C8);
  OUTLINED_FUNCTION_24_2();
  sub_23BBDCC88();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(MEMORY[0x277CDD2B8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B7FB8()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &qword_27E1996B8, &unk_23BBE8180);
  OUTLINED_FUNCTION_24_2();
  type metadata accessor for Subscription();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for Subscription, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B8090()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &qword_27E199630, &unk_23BBE80E0);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionStoreContentConfiguration.Section(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionStoreContentConfiguration.Section, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B8168()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E199728, &unk_23BBE81F0);
  v8 = OUTLINED_FUNCTION_24_2();
  type metadata accessor for SubscriptionStoreContentConfiguration(v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(type metadata accessor for SubscriptionStoreContentConfiguration, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B8240()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1996D8);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_23B9B8308()
{
  OUTLINED_FUNCTION_21_2();
  if (v3)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997D0);
    v9 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_53();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v7] <= v11)
    {
      memmove(v11, v12, 32 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 32 * v7);
  }
}

void sub_23B9B83DC()
{
  OUTLINED_FUNCTION_10_4();
  if (v4)
  {
    OUTLINED_FUNCTION_9_4();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_7_10();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_37(v2, v5, &unk_27E1997C0, &unk_23BBE8338);
  OUTLINED_FUNCTION_24_2();
  sub_23BBDC208();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_23_2();
  if (v1)
  {
    OUTLINED_FUNCTION_18_5(MEMORY[0x277CE12D0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
  }
}

void sub_23B9B84B4()
{
  OUTLINED_FUNCTION_21_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_17_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_8_7();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1997E8);
    v7 = OUTLINED_FUNCTION_42();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_53();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_30();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}