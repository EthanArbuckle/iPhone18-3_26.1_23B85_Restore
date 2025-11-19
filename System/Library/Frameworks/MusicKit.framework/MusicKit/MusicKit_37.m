void sub_217503C58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_217503F84();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_217752D38();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_217752D38();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

unint64_t sub_217503DF4()
{
  result = qword_280BE63A8[0];
  if (!qword_280BE63A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE63A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A13DeviceLocalIDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A13ItemTypeValueVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217503E80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 353))
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

uint64_t sub_217503EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217503F84()
{
  result = qword_280BE2230;
  if (!qword_280BE2230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2230);
  }

  return result;
}

uint64_t sub_217503FC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217751428();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double OUTLINED_FUNCTION_16_38()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_33@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_2172A5428(a1, a2);
}

__n128 OUTLINED_FUNCTION_20_30()
{
  v0[17].n128_u8[0] = 1;
  result = *v1;
  v0[18] = *v1;
  return result;
}

void OUTLINED_FUNCTION_21_30()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

void OUTLINED_FUNCTION_34_23()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_40_22(__n128 a1)
{
  v1[20] = a1;
  v1[21] = a1;
  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v2;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_47_18()
{
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[20];

  return sub_2172B8404(v2, v3);
}

uint64_t sub_217504138(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945A4();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB24540, &qword_21776B300);
    sub_2174A87A0(v31, &v27, &qword_27CB24540, &qword_21776B300);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_217292D80(&v32, v9, v10);

      sub_2171F06D8(v31, &qword_27CB24540, &qword_21776B300);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB24540, &qword_21776B300);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_217620CD4(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_217283AFC(&v27, v31);
    sub_217283AFC(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C18, &unk_217771C80);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_217283B58(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2175043E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945EC();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB27FD0, &qword_217758C20);
    sub_2174A87A0(v31, &v27, &qword_27CB27FD0, &qword_217758C20);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_2172931EC(v9);

      sub_2171F06D8(v31, &qword_27CB27FD0, &qword_217758C20);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB27FD0, &qword_217758C20);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_217620EAC(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_217283C68(&v27, v31);
    sub_217283C68(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF50, &unk_217771CA8);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_217283CC4(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217504690(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_217294604();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB27EE0, &qword_217758BF0);
    sub_2174A87A0(v31, &v27, &qword_27CB27EE0, &qword_217758BF0);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_217293370(v9);

      sub_2171F06D8(v31, &qword_27CB27EE0, &qword_217758BF0);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB27EE0, &qword_217758BF0);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_217621084(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_217284338(&v27, v31);
    sub_217284338(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C20, &unk_217771CC0);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_217284394(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21750493C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172944E4();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB24830, &qword_217771D40);
    sub_2174A87A0(v31, &v27, &qword_27CB24830, &qword_217771D40);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_21729290C(&v32, v9, v10);

      sub_2171F06D8(v31, &qword_27CB24830, &qword_217771D40);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB24830, &qword_217771D40);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_21762125C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_2172757C0(&v27, v31);
    sub_2172757C0(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADE0, &qword_217771D38);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_21726B8C4(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217504BE8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945BC();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB27900, &qword_217771CE0);
    sub_2174A87A0(v31, &v27, &qword_27CB27900, &qword_217771CE0);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_217292EF4(&v32, v9, v10);

      sub_2171F06D8(v31, &qword_27CB27900, &qword_217771CE0);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB27900, &qword_217771CE0);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_217621434(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_217283BAC(&v27, v31);
    sub_217283BAC(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C28, &qword_217787370);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_217283C08(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217504E94(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_21729461C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB28150, &qword_21776C1A0);
    sub_2174A87A0(v31, &v27, &qword_27CB28150, &qword_21776C1A0);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_2172934F0(v9);

      sub_2171F06D8(v31, &qword_27CB28150, &qword_21776C1A0);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB28150, &qword_21776C1A0);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_21762160C(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_217284288(&v27, v31);
    sub_217284288(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C30, &unk_217771D00);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_2172842E4(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217505140(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945D4();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB27BD0, &qword_21776B8C0);
    sub_2174A87A0(v31, &v27, &qword_27CB27BD0, &qword_21776B8C0);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_217293074(v9);

      sub_2171F06D8(v31, &qword_27CB27BD0, &qword_21776B8C0);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB27BD0, &qword_21776B8C0);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_2176217E4(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_21725CF68(&v27, v31);
    sub_21725CF68(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C38, &qword_2177872E0);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_217284498(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2175053EC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_217294574();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &unk_27CB276C0, &qword_217758A00);
    sub_2174A87A0(v31, &v27, &unk_27CB276C0, &qword_217758A00);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_217292A88(&v32, v9, v10);

      sub_2171F06D8(v31, &unk_27CB276C0, &qword_217758A00);
    }

    else
    {
      sub_2171F06D8(v31, &unk_27CB276C0, &qword_217758A00);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_2176219BC(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_21725CF0C(&v27, v31);
    sub_21725CF0C(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD00, &unk_217771D20);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_21725CE44(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217505698(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 56);
  }

  v4 = *(v3 + 16);
  result = MEMORY[0x277D84F90];
  if (!v4)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v6 = 0;
  v7 = v1 + 32;
  v32 = v4;
  while (1)
  {
    if (v2)
    {

      sub_217294390();
      sub_21725CF00(v1, 1);
      goto LABEL_13;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v7, v24, &qword_27CB248B8, &qword_217771D80);
    sub_2174A87A0(v24, &v20, &qword_27CB248B8, &qword_217771D80);
    if (v23)
    {
      v8 = *(v20 + 16);
      v9 = *(v20 + 24);
      v10 = *(v20 + 32);
      sub_217751DE8();
      sub_2172921E8(&v27, v8, v9);

      sub_2171F06D8(v24, &qword_27CB248B8, &qword_217771D80);
    }

    else
    {
      sub_2171F06D8(v24, &qword_27CB248B8, &qword_217771D80);
      v27 = v20;
      v28 = v21;
      *v29 = *v22;
      *&v29[9] = *&v22[9];
    }

    v20 = v27;
    v21 = v28;
    *v22 = *v29;
    *&v22[9] = *&v29[9];
LABEL_13:
    MusicCatalogSearchResponse.TopResult.innerItem.getter(v24);
    v11 = v25;
    v12 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_217620B58(&v30);
    v16 = v30;
    sub_217283E1C(&v20, v24);
    sub_217283E1C(&v20, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF00, &qword_217771D78);
    swift_allocObject();
    sub_217635FE0(v13, v15, v16, v24, &v27);
    sub_217283E78(&v20);
    sub_217752BC8();
    v17 = *(v31 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v18 = __OFADD__(v6, 1);
    if (v2)
    {
      v19 = v32;
      if (v18)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v19 = v32;
      if (v18)
      {
        goto LABEL_25;
      }
    }

    ++v6;
    v7 += 64;
    if (v19 == v6)
    {
      return v31;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21750598C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v34 = v1;
  v33 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  for (i = v2 + 32; ; i += 64)
  {
    if (v3)
    {

      sub_21729443C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_31;
    }

    sub_2174A87A0(i, v26, &qword_27CB24898, &unk_21775A270);
    sub_2174A87A0(v26, &v22, &qword_27CB24898, &unk_21775A270);
    if (v25)
    {
      v9 = *(v22 + 16);
      v10 = *(v22 + 24);
      v11 = *(v22 + 32);
      sub_217751DE8();
      sub_217292624(v9);

      sub_2171F06D8(v26, &qword_27CB24898, &unk_21775A270);
    }

    else
    {
      sub_2171F06D8(v26, &qword_27CB24898, &unk_21775A270);
      v29 = v22;
      v30 = v23;
      *v31 = *v24;
      *&v31[9] = *&v24[9];
    }

    v22 = v29;
    v23 = v30;
    *v24 = *v31;
    *&v24[9] = *&v31[9];
LABEL_13:
    sub_217283ECC(&v22, v26);
    if (v28)
    {
      if (v28 == 1)
      {
        v12 = &type metadata for Playlist;
        *(&v30 + 1) = &type metadata for Playlist;
        v13 = &protocol witness table for Playlist;
        *v31 = &protocol witness table for Playlist;
      }

      else
      {
        v12 = &type metadata for Station;
        *(&v30 + 1) = &type metadata for Station;
        v13 = &protocol witness table for Station;
        *v31 = &protocol witness table for Station;
      }
    }

    else
    {
      v12 = &type metadata for Album;
      *(&v30 + 1) = &type metadata for Album;
      v13 = &protocol witness table for Album;
      *v31 = &protocol witness table for Album;
    }

    v14 = swift_allocObject();
    *&v29 = v14;
    v15 = v26[1];
    *(v14 + 16) = v26[0];
    *(v14 + 32) = v15;
    *(v14 + 48) = v26[2];
    *(v14 + 64) = v27;
    __swift_project_boxed_opaque_existential_1(&v29, v12);
    v16 = (v13[1])();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    sub_217621B94(&v32);
    v19 = v32;
    sub_217283ECC(&v22, v26);
    sub_217283ECC(&v22, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE90, &qword_217771D60);
    swift_allocObject();
    sub_217635FE0(v16, v18, v19, v26, &v29);
    sub_217283F28(&v22);
    sub_217752BC8();
    v20 = *(v33 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v21 = __OFADD__(v7, 1);
    if (v3)
    {
      if (v21)
      {
        goto LABEL_29;
      }
    }

    else if (v21)
    {
      goto LABEL_30;
    }

    if (v5 == ++v7)
    {
      return v33;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_217505D10(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v29 = v1;
  v41 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v45 = v2;
  while (1)
  {
    if (v3)
    {

      sub_21729467C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_32;
    }

    sub_2174A87A0(v8, &v33, &qword_27CB27AA0, &qword_217758AD0);
    sub_2174A87A0(&v33, &v30, &qword_27CB27AA0, &qword_217758AD0);
    if (v32[25])
    {
      v9 = *(v30 + 16);
      v10 = *(v30 + 24);
      v11 = *(v30 + 32);
      sub_217751DE8();
      sub_217293AC4(v9, v10, v12, v13, v14, v15, v16, v17, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), *v32, *&v32[8], *&v32[16], *&v32[24], v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), *v40, *&v40[8], *&v40[16], *&v40[24], v41, v42, v43, v44);

      sub_2171F06D8(&v33, &qword_27CB27AA0, &qword_217758AD0);
    }

    else
    {
      sub_2171F06D8(&v33, &qword_27CB27AA0, &qword_217758AD0);
      v38 = v30;
      v39 = v31;
      *v40 = *v32;
      *&v40[9] = *&v32[9];
    }

    v30 = v38;
    v31 = v39;
    *v32 = *v40;
    *&v32[9] = *&v40[9];
    v2 = v45;
LABEL_13:
    sub_21729C6EC(&v30, &v33);
    if (v37)
    {
      v18 = &type metadata for MusicVideo;
    }

    else
    {
      v18 = &type metadata for Song;
    }

    if (v37)
    {
      v19 = &protocol witness table for MusicVideo;
    }

    else
    {
      v19 = &protocol witness table for Song;
    }

    *(&v39 + 1) = v18;
    *v40 = v19;
    v20 = swift_allocObject();
    v21 = v34;
    *(v20 + 16) = v33;
    *(v20 + 32) = v21;
    *(v20 + 48) = v35;
    *(v20 + 64) = v36;
    *&v38 = v20;
    __swift_project_boxed_opaque_existential_1(&v38, v18);
    v22 = (v19[1])(v18, v19);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    sub_217622064(&v40[31]);
    v25 = v40[31];
    sub_21729C6EC(&v30, &v33);
    sub_21729C6EC(&v30, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADD0, &unk_217771C18);
    swift_allocObject();
    sub_217635FE0(v22, v24, v25, &v33, &v38);
    sub_21729C748(&v30);
    sub_217752BC8();
    v26 = *(v41 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v27 = __OFADD__(v7, 1);
    if (v3)
    {
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else if (v27)
    {
      goto LABEL_31;
    }

    ++v7;
    v8 += 64;
    if (v5 == v7)
    {
      return v41;
    }
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

uint64_t sub_21750607C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v31 = v1;
  v54 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v32 = v5;
  while (1)
  {
    if (v3)
    {

      sub_21729464C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, &v37, &qword_27CB24618, &qword_217778790);
    sub_2174A87A0(&v37, &v33, &qword_27CB24618, &qword_217778790);
    if (BYTE8(v36))
    {
      v9 = *(v33 + 16);
      v10 = *(v33 + 24);
      v11 = *(v33 + 32);
      sub_217751DE8();
      sub_2172937E4(v9, v10, v12, v13, v14, v15, v16, v17, v31, v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53);

      sub_2171F06D8(&v37, &qword_27CB24618, &qword_217778790);
    }

    else
    {
      sub_2171F06D8(&v37, &qword_27CB24618, &qword_217778790);
      v45 = v33;
      v46 = v34;
      v47 = v35;
      v48 = v36;
    }

    v33 = v45;
    v34 = v46;
    v35 = v47;
    *&v36 = v48;
LABEL_13:
    v18 = v33;
    v19 = sub_217751DE8();
    sub_217621D10(v19, v20, v21, v22, v23, v24, v25, v26, v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51);
    v27 = HIBYTE(v49);
    sub_217284130(&v33, &v37);
    sub_217284130(&v33, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE50, &unk_217771C30);
    swift_allocObject();
    sub_217635FDC(v18, *(&v18 + 1), v27, &v37, &v45);
    sub_21728418C(&v33);
    sub_217752BC8();
    v28 = *(v54 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v29 = __OFADD__(v7, 1);
    if (v3)
    {
      v30 = v32;
      if (v29)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = v32;
      if (v29)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v30 == v7)
    {
      return v54;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217506328(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 56);
  }

  v4 = *(v3 + 16);
  result = MEMORY[0x277D84F90];
  if (!v4)
  {
    return result;
  }

  v32 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v6 = 0;
  v7 = v1 + 32;
  v33 = v1;
  while (1)
  {
    if (v2)
    {

      sub_217294634();
      sub_21725CF00(v1, 1);
      goto LABEL_13;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_32;
    }

    sub_2174A87A0(v7, v25, &dword_27CB27E20, &unk_2177589C0);
    sub_2174A87A0(v25, &v21, &dword_27CB27E20, &unk_2177589C0);
    if (v24)
    {
      v8 = *(v21 + 16);
      v9 = *(v21 + 24);
      v10 = *(v21 + 32);
      sub_217751DE8();
      sub_21729366C(v8);

      sub_2171F06D8(v25, &dword_27CB27E20, &unk_2177589C0);
    }

    else
    {
      sub_2171F06D8(v25, &dword_27CB27E20, &unk_2177589C0);
      v28 = v21;
      v29 = v22;
      *v30 = *v23;
      *&v30[9] = *&v23[9];
    }

    v21 = v28;
    v22 = v29;
    *v23 = *v30;
    *&v23[9] = *&v30[9];
    v1 = v33;
LABEL_13:
    sub_217275710(&v21, v25);
    if (v27)
    {
      v11 = &type metadata for MusicVideo;
    }

    else
    {
      v11 = &type metadata for Song;
    }

    if (v27)
    {
      v12 = &protocol witness table for MusicVideo;
    }

    else
    {
      v12 = &protocol witness table for Song;
    }

    *(&v29 + 1) = v11;
    *v30 = v12;
    v13 = swift_allocObject();
    v14 = v25[1];
    *(v13 + 16) = v25[0];
    *(v13 + 32) = v14;
    *(v13 + 48) = v25[2];
    *(v13 + 64) = v26;
    *&v28 = v13;
    __swift_project_boxed_opaque_existential_1(&v28, v11);
    v15 = (v12[1])(v11, v12);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v28);
    sub_217621EE8(&v31);
    v18 = v31;
    sub_217275710(&v21, v25);
    sub_217275710(&v21, &v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C08, &unk_217771C50);
    swift_allocObject();
    sub_217635FE0(v15, v17, v18, v25, &v28);
    sub_21727576C(&v21);
    sub_217752BC8();
    v19 = *(v32 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v20 = __OFADD__(v6, 1);
    if (v2)
    {
      if (v20)
      {
        goto LABEL_30;
      }
    }

    else if (v20)
    {
      goto LABEL_31;
    }

    ++v6;
    v7 += 64;
    if (v4 == v6)
    {
      return v32;
    }
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

uint64_t sub_217506694(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v25 = v1;
  v39 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v26 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172944CC();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v31, &qword_27CB28090, &qword_217758C50);
    sub_2174A87A0(v31, &v27, &qword_27CB28090, &qword_217758C50);
    if (BYTE8(v30))
    {
      v9 = *(v27 + 16);
      v10 = *(v27 + 24);
      v11 = *(v27 + 32);
      sub_217751DE8();
      sub_217292790(v9);

      sub_2171F06D8(v31, &qword_27CB28090, &qword_217758C50);
    }

    else
    {
      sub_2171F06D8(v31, &qword_27CB28090, &qword_217758C50);
      v32 = v27;
      v33 = v28;
      v34 = v29;
      v35 = v30;
    }

    v27 = v32;
    v28 = v33;
    v29 = v34;
    *&v30 = v35;
LABEL_13:
    v12 = v27;
    v13 = sub_217751DE8();
    sub_2176221E0(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37, v38);
    v21 = HIBYTE(v36);
    sub_217283D6C(&v27, v31);
    sub_217283D6C(&v27, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C10, &qword_217787560);
    swift_allocObject();
    sub_217635FDC(v12, *(&v12 + 1), v21, v31, &v32);
    sub_217283DC8(&v27);
    sub_217752BC8();
    v22 = *(v39 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v23 = __OFADD__(v7, 1);
    if (v3)
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v26;
      if (v23)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v24 == v7)
    {
      return v39;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217506940(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v29 = v1;
  v41 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v45 = v2;
  while (1)
  {
    if (v3)
    {

      sub_217294694();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_32;
    }

    sub_2174A87A0(v8, &v33, &qword_27CB24630, &unk_217758B70);
    sub_2174A87A0(&v33, &v30, &qword_27CB24630, &unk_217758B70);
    if (v32[25])
    {
      v9 = *(v30 + 16);
      v10 = *(v30 + 24);
      v11 = *(v30 + 32);
      sub_217751DE8();
      sub_217293C30(v9, v10, v12, v13, v14, v15, v16, v17, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), *v32, *&v32[8], *&v32[16], *&v32[24], v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), *v40, *&v40[8], *&v40[16], *&v40[24], v41, v42, v43, v44);

      sub_2171F06D8(&v33, &qword_27CB24630, &unk_217758B70);
    }

    else
    {
      sub_2171F06D8(&v33, &qword_27CB24630, &unk_217758B70);
      v38 = v30;
      v39 = v31;
      *v40 = *v32;
      *&v40[9] = *&v32[9];
    }

    v30 = v38;
    v31 = v39;
    *v32 = *v40;
    *&v32[9] = *&v40[9];
    v2 = v45;
LABEL_13:
    sub_21729C79C(&v30, &v33);
    if (v37)
    {
      v18 = &type metadata for Song;
    }

    else
    {
      v18 = &type metadata for MusicVideo;
    }

    if (v37)
    {
      v19 = &protocol witness table for Song;
    }

    else
    {
      v19 = &protocol witness table for MusicVideo;
    }

    *(&v39 + 1) = v18;
    *v40 = v19;
    v20 = swift_allocObject();
    v21 = v34;
    *(v20 + 16) = v33;
    *(v20 + 32) = v21;
    *(v20 + 48) = v35;
    *(v20 + 64) = v36;
    *&v38 = v20;
    __swift_project_boxed_opaque_existential_1(&v38, v18);
    v22 = (v19[1])(v18, v19);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    sub_217620780(&v40[31]);
    v25 = v40[31];
    sub_21729C79C(&v30, &v33);
    sub_21729C79C(&v30, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C00, &qword_217787400);
    swift_allocObject();
    sub_217635FE0(v22, v24, v25, &v33, &v38);
    sub_21729C7F8(&v30);
    sub_217752BC8();
    v26 = *(v41 + 16);
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v27 = __OFADD__(v7, 1);
    if (v3)
    {
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else if (v27)
    {
      goto LABEL_31;
    }

    ++v7;
    v8 += 64;
    if (v5 == v7)
    {
      return v41;
    }
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

uint64_t MusicCatalogSearchSuggestionsResponse._requestedTerm.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogSearchSuggestionsResponse._requestedTerm.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t static MusicCatalogSearchSuggestionsResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_217273AA4();
  if ((v6 & 1) == 0 || (sub_21733EA18((a1 + 1), (a2 + 1)) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2174A87A0((a1 + 14), v20, &qword_27CB28BB8, &qword_217771948);
  sub_2174A87A0((a2 + 14), &v22, &qword_27CB28BB8, &qword_217771948);
  if (!v21)
  {
    if (!*(&v23 + 1))
    {
      sub_2171F06D8(v20, &qword_27CB28BB8, &qword_217771948);
      goto LABEL_9;
    }

LABEL_15:
    sub_2171F06D8(v20, &qword_27CB28BC0, &qword_217771950);
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  sub_2174A87A0(v20, v17, &qword_27CB28BB8, &qword_217771948);
  if (!*(&v23 + 1))
  {
    sub_217506F68(v17);
    goto LABEL_15;
  }

  v15[0] = v22;
  v15[1] = v23;
  v16 = v24;
  v7 = v18;
  v8 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = *(v8 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BC8, &qword_217771958);
  v11 = v9(v15, v10, v7, v8);
  sub_217506F68(v15);
  sub_217506F68(v17);
  sub_2171F06D8(v20, &qword_27CB28BB8, &qword_217771948);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (a1[19] == a2[19] && a1[20] == a2[20])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_217753058();
  }

  return v13 & 1;
}

uint64_t MusicCatalogSearchSuggestionsResponse.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  sub_2172831FC();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0(a1);
  sub_2174A87A0((v1 + 14), &v12, &qword_27CB28BB8, &qword_217771948);
  if (*(&v13 + 1))
  {
    v9 = v12;
    v10 = v13;
    v11 = v14;
    sub_217753208();
    v4 = *(&v10 + 1);
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
    (*(v5 + 56))(a1, v4, v5);
    sub_217506F68(&v9);
  }

  else
  {
    sub_217753208();
  }

  v6 = v1[19];
  v7 = v1[20];
  return sub_217751FF8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsResponse.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175070F8()
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsResponse.hash(into:)(v1);
  return sub_217753238();
}

uint64_t MusicCatalogSearchSuggestionsResponse.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 536) = v0;
  *(v1 + 528) = v2;
  *(v1 + 578) = *v3;
  v5 = *v4;
  *(v1 + 579) = *v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 544) = v6;
  *v6 = v7;
  v6[1] = sub_2175071E0;

  return sub_217509E2C(v1 + 16, v5);
}

uint64_t sub_2175071E0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 552) = v0;

  if (v0)
  {
    v9 = sub_2175076D4;
  }

  else
  {
    v9 = sub_2175072DC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2175072DC()
{
  v26 = v0;
  sub_2174A87A0(*(v0 + 536) + 112, v0 + 368, &qword_27CB28BB8, &qword_217771948);
  v1 = *(v0 + 392);
  if (v1)
  {
    v2 = *(v0 + 579);
    v3 = *(v0 + 578);
    v4 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
    *(v0 + 576) = v3;
    *(v0 + 577) = v2;
    v5 = *(v4 + 32);
    v24 = (v5 + *v5);
    v6 = v5[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 560) = v7;
    *v7 = v8;
    v7[1] = sub_2175076F8;

    return v24(v0 + 488, v0 + 576, v0 + 577, v1, v4);
  }

  else
  {
    sub_2171F06D8(v0 + 368, &qword_27CB28BB8, &qword_217771948);
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v13 = v10[19];
    v12 = v10[20];
    v14 = *v10;
    sub_2174A87A0(v0 + 16, v0 + 120, &qword_27CB28BB0, &qword_217771940);
    sub_2174A87A0(v0 + 328, v0 + 408, &qword_27CB26E70, &unk_217767A80);
    v11[19] = v13;
    v11[20] = v12;
    *v11 = v14;
    sub_2174A87A0(v0 + 120, v0 + 224, &qword_27CB26E78, &qword_217785AC0);
    if (*(v0 + 312))
    {
      memcpy(__dst, (v0 + 224), sizeof(__dst));
      sub_217751DE8();
      sub_217751DE8();
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_2174AA020();
      if (*(v0 + 312))
      {
        sub_2171F06D8(v0 + 224, &qword_27CB26E78, &qword_217785AC0);
      }
    }

    memcpy((*(v0 + 528) + 8), __dst, 0x68uLL);
    sub_2174A87A0(v0 + 408, v0 + 448, &qword_27CB26E70, &unk_217767A80);
    v15 = *(v0 + 472);
    if (v15)
    {
      v16 = *(v0 + 480);
      __swift_project_boxed_opaque_existential_1((v0 + 448), *(v0 + 472));
      sub_2171F9380(v15, v16, __dst);
      sub_2171F06D8(v0 + 408, &qword_27CB26E70, &unk_217767A80);
      sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
      v17 = OUTLINED_FUNCTION_93();
      sub_2171F06D8(v17, v18, &unk_217767A80);
      sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
      __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    }

    else
    {
      sub_2171F06D8(v0 + 408, &qword_27CB26E70, &unk_217767A80);
      sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
      v19 = OUTLINED_FUNCTION_93();
      sub_2171F06D8(v19, v20, &unk_217767A80);
      sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
      sub_2171F06D8(v0 + 448, &qword_27CB26E70, &unk_217767A80);
      memset(__dst, 0, 40);
    }

    v21 = *(v0 + 528);
    v22 = *&__dst[16];
    *(v21 + 112) = *__dst;
    *(v21 + 128) = v22;
    *(v21 + 144) = *&__dst[32];
    OUTLINED_FUNCTION_0_2();

    return v23();
  }
}

uint64_t sub_2175076D4()
{
  v1 = *(v0 + 552);
  OUTLINED_FUNCTION_20_0();
  return v2();
}

uint64_t sub_2175076F8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 568) = v0;

  if (v0)
  {
    v9 = sub_217507A78;
  }

  else
  {
    v9 = sub_2175077F4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2175077F4()
{
  v13 = v0;
  sub_2171F3F0C((v0 + 488), v0 + 328);
  sub_217506F68(v0 + 368);
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v4 = v1[19];
  v3 = v1[20];
  v5 = *v1;
  sub_2174A87A0(v0 + 16, v0 + 120, &qword_27CB28BB0, &qword_217771940);
  sub_2174A87A0(v0 + 328, v0 + 408, &qword_27CB26E70, &unk_217767A80);
  v2[19] = v4;
  v2[20] = v3;
  *v2 = v5;
  sub_2174A87A0(v0 + 120, v0 + 224, &qword_27CB26E78, &qword_217785AC0);
  if (*(v0 + 312))
  {
    memcpy(v12, (v0 + 224), 0x68uLL);
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA020();
    if (*(v0 + 312))
    {
      sub_2171F06D8(v0 + 224, &qword_27CB26E78, &qword_217785AC0);
    }
  }

  memcpy((*(v0 + 528) + 8), v12, 0x68uLL);
  sub_2174A87A0(v0 + 408, v0 + 448, &qword_27CB26E70, &unk_217767A80);
  v6 = *(v0 + 472);
  if (v6)
  {
    v7 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), *(v0 + 472));
    sub_2171F9380(v6, v7, v12);
    OUTLINED_FUNCTION_36_23(v0 + 408);
    sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
    OUTLINED_FUNCTION_36_23(v0 + 328);
    sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  }

  else
  {
    OUTLINED_FUNCTION_36_23(v0 + 408);
    sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
    OUTLINED_FUNCTION_36_23(v0 + 328);
    sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
    OUTLINED_FUNCTION_36_23(v0 + 448);
    memset(v12, 0, 40);
  }

  v8 = *(v0 + 528);
  v9 = v12[1];
  *(v8 + 112) = v12[0];
  *(v8 + 128) = v9;
  *(v8 + 144) = *&v12[2];
  OUTLINED_FUNCTION_0_2();

  return v10();
}

uint64_t sub_217507A78()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  sub_217506F68(v0 + 368);
  v1 = *(v0 + 568);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_217507AEC()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return MusicCatalogSearchSuggestionsResponse.libraryMapped(policy:scope:)();
}

uint64_t MusicCatalogSearchSuggestionsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BD0, &qword_217771970);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v26[-1] - v12;
  sub_2171FF30C(a1, v26);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_21750B298();
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_21750B2EC();
    sub_217752E58();
    (*(v8 + 8))(v13, v5);
    v15 = v26[6];
    __swift_destroy_boxed_opaque_existential_1(v26);
    v16 = a1[3];
    v17 = a1[4];
    v18 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v18, v19);
    Decoder.dataRequestConfiguration.getter(v16, v17);
    v20 = a1[3];
    v21 = a1[4];
    v22 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v24 = Decoder.sharedRelatedItemStore.getter();
    sub_2173B5988(v15, 0, 0xE000000000000000, v26, v24, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogSearchSuggestionsResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BE8, &qword_217771978);
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  v10 = &v17[-1] - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  Encoder.dataRequestConfiguration.getter(v11, v12);
  sub_217507F1C(v17, &v18);
  sub_21733AB9C(v17);
  v13 = v18;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750B298();
  sub_217751DE8();
  sub_2177532F8();
  v17[0] = v13;
  sub_21750B340();
  sub_217752F38();

  (*(v5 + 8))(v10, v2);
}

uint64_t sub_217507F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51, v7);
  v47 = &v42 - v8;
  v9 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v42 - v16;
  sub_2174A87A0((v2 + 14), v53, &qword_27CB28BB8, &qword_217771948);
  v18 = v53[3];
  v45 = a1;
  if (v53[3])
  {
    v19 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    (*(v19 + 16))(v54, a1, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v18, v19);
    sub_217506F68(v53);
  }

  else
  {
    sub_2171F06D8(v53, &qword_27CB28BB8, &qword_217771948);
    v54[0] = 0;
    v54[1] = 0;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v54[2] = 1;
    v61 = 0;
  }

  v44 = v2;
  v20 = *v2;
  v21 = *(*v2 + 16);
  v22 = MEMORY[0x277D84F90];
  v46 = a2;
  if (v21)
  {
    v42 = v5;
    v43 = v17;
    v53[0] = MEMORY[0x277D84F90];
    sub_217276620();
    v22 = v53[0];
    v23 = (v20 + 72);
    do
    {
      v48 = v21;
      v25 = *(v23 - 5);
      v24 = *(v23 - 4);
      v26 = v13;
      v27 = *(v23 - 3);
      v28 = *(v23 - 2);
      v30 = *(v23 - 1);
      v29 = *v23;
      __swift_storeEnumTagSinglePayload(v26 + *(v50 + 32), 1, 1, v51);
      *v26 = 0;
      *(v26 + 8) = v27;
      *(v26 + 16) = v28;
      *(v26 + 24) = v25;
      *(v26 + 32) = v24;
      *(v26 + 40) = v30;
      *(v26 + 48) = v29;
      v53[0] = v22;
      v31 = *(v22 + 16);
      v32 = *(v22 + 24);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      if (v31 >= v32 >> 1)
      {
        sub_217276620();
        v22 = v53[0];
      }

      v23 += 6;
      *(v22 + 16) = v31 + 1;
      sub_2173B821C(v26, v22 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v31);
      v21 = v48 - 1;
      v13 = v26;
    }

    while (v48 != 1);
    a2 = v46;
    v5 = v42;
    v17 = v43;
  }

  sub_2174A87A0(v54, v53, &qword_27CB28C40, &qword_217771D68);
  if (v53[2] == 1)
  {
    sub_2171F06D8(v53, &qword_27CB28C40, &qword_217771D68);
    memset(v52, 0, sizeof(v52));
  }

  else
  {
    sub_2174A87A0(v53, v52, &qword_27CB24300, &qword_217771D70);
    sub_21750B4C4(v53);
    if (v52[2])
    {
      memcpy(v53, v52, sizeof(v53));
      goto LABEL_15;
    }
  }

  sub_2171F06D8(v52, &qword_27CB24300, &qword_217771D70);
  sub_2172ECBD8();
LABEL_15:
  v33 = v53[2];
  v34 = *(v53[2] + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v48 = v22;
    v52[0] = MEMORY[0x277D84F90];
    sub_217276620();
    v35 = v52[0];
    v36 = v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v37 = *(v5 + 72);
    do
    {
      v38 = v47;
      sub_2174A87A0(v36, v47, &qword_27CB24708, &unk_217758C90);
      v39 = *(v50 + 32);
      sub_217283888(v38, &v17[v39]);
      __swift_storeEnumTagSinglePayload(&v17[v39], 0, 1, v51);
      *v17 = 1;
      *(v17 + 8) = 0u;
      *(v17 + 40) = 0u;
      *(v17 + 24) = 0u;
      v52[0] = v35;
      v40 = *(v35 + 16);
      if (v40 >= *(v35 + 24) >> 1)
      {
        sub_217276620();
        v35 = v52[0];
      }

      *(v35 + 16) = v40 + 1;
      sub_2173B821C(v17, v35 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v40);
      v36 += v37;
      --v34;
    }

    while (v34);
    a2 = v46;
    v22 = v48;
  }

  v52[0] = v22;
  sub_2175443E8(v35);
  sub_2171F06D8(v54, &qword_27CB28C40, &qword_217771D68);
  result = sub_2171F06D8(v53, &qword_27CB24308, &unk_217767A90);
  *a2 = v52[0];
  return result;
}

unint64_t sub_2175084BC(char a1)
{
  v16 = 0xD000000000000026;
  v17 = 0x80000002177AF8B0;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_217597944(0x6974736567677573, 0xEB00000000736E6FLL, a1, &v14, *v1);
  v3 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();
    v3 = *(v3 + 56);
  }

  if (*(v3 + 16))
  {
    sub_217597CE0();
  }

  sub_2174A87A0(v1 + 112, v11, &qword_27CB28BB8, &qword_217771948);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 24))(a1 & 1, &v14, v4, v5);
    sub_217506F68(v11);
  }

  else
  {
    sub_2171F06D8(v11, &qword_27CB28BB8, &qword_217771948);
  }

  v7 = v14;
  v6 = v15;
  v11[0] = v14;
  v11[1] = v15;
  sub_21733A5C8();
  v8 = sub_217752998();
  MEMORY[0x21CEA23B0](v8);

  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v16;
}

uint64_t sub_2175086EC(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217508704()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504138(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_2177871C0);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217508798()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2175088C8, 0, 0);
  }
}

void sub_2175088C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275EE0();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217283AFC(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275EE0();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB27820, &qword_21775DAB0);
    OUTLINED_FUNCTION_9_41();
    sub_217555C04();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_2175089D4(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175089EC()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_2175043E4(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787510);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217508A80()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217508BB0, 0, 0);
  }
}

void sub_217508BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217276010();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217283C68(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276010();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB25390, &qword_217771CA0);
    OUTLINED_FUNCTION_9_41();
    sub_217555E4C();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_217508CBC(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217508CD4()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504690(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_2177874D0);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217508D68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217508E98, 0, 0);
  }
}

void sub_217508E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275E48();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217284338(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275E48();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB25630, &qword_21775D568);
    OUTLINED_FUNCTION_9_41();
    sub_217555E88();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_217508FA4(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217508FBC()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_21750493C(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787250);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509050()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509180, 0, 0);
  }
}

void sub_217509180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275D18();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_2172757C0(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275D18();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &unk_27CB28230, &unk_21775CD50);
    OUTLINED_FUNCTION_9_41();
    sub_217555EC4();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750928C(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175092A4()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504BE8(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787378);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509338()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509468, 0, 0);
  }
}

void sub_217509468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275F78();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217283BAC(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275F78();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB25380, &unk_21775DAA0);
    OUTLINED_FUNCTION_9_41();
    sub_217555F00();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_217509574(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750958C()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504E94(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787588);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509620()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509750, 0, 0);
  }
}

void sub_217509750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275E94();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217284288(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275E94();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB25638, &unk_21775EA10);
    OUTLINED_FUNCTION_9_41();
    sub_217555F3C();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750985C(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217509874()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217505140(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_2177872E8);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509908()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509A38, 0, 0);
  }
}

void sub_217509A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275D64();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_21725CF68(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275D64();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB25398, &unk_21776C4F0);
    OUTLINED_FUNCTION_9_41();
    sub_217555F78();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_217509B44(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217509B5C()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_2175053EC(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787108);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509BF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509D20, 0, 0);
  }
}

void sub_217509D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275CCC();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_21725CF0C(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275CCC();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB25388, &unk_21775D410);
    OUTLINED_FUNCTION_9_41();
    sub_217555FB4();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_217509E2C(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217509E44()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217505698(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0(&unk_217787480);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509EDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_35_22(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A00C, 0, 0);
  }
}

void sub_21750A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_21727605C();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_32_25();
      sub_217283E1C(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_21727605C();
      }

      OUTLINED_FUNCTION_4_66();
      if (v17)
      {
        v18 = v13[36];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[32];
    sub_2174A87A0(v13[33], (v13 + 2), &qword_27CB28BB0, &qword_217771940);
    OUTLINED_FUNCTION_9_41();
    sub_217555FF0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A118(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A130()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_21750598C(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0(&unk_2177873C8);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750A1C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_35_22(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A2F8, 0, 0);
  }
}

void sub_21750A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217276100();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_32_25();
      sub_217283ECC(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276100();
      }

      OUTLINED_FUNCTION_4_66();
      if (v17)
      {
        v18 = v13[36];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[32];
    sub_2174A87A0(v13[33], (v13 + 2), &qword_27CB25928, &unk_21775D9A0);
    OUTLINED_FUNCTION_9_41();
    sub_2175563DC();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A404(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A41C()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217505D10(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0(dword_217787210);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750A4B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_35_22(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A5E4, 0, 0);
  }
}

void sub_21750A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217276968();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_32_25();
      sub_21729C6EC(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276968();
      }

      OUTLINED_FUNCTION_4_66();
      if (v17)
      {
        v18 = v13[36];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[32];
    sub_2174A87A0(v13[33], (v13 + 2), &qword_27CB27A88, &qword_21776B6D0);
    OUTLINED_FUNCTION_9_41();
    sub_217556640();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A6F0(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A708()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_21750607C(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787338);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750A79C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A8CC, 0, 0);
  }
}

void sub_21750A8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275FC4();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217284130(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275FC4();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB27C80, &unk_21775D420);
    OUTLINED_FUNCTION_9_41();
    sub_21755667C();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A9D8(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A9F0()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217506328(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0(&unk_217787440);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750AA88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_35_22(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750ABB8, 0, 0);
  }
}

void sub_21750ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275DFC();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_32_25();
      sub_217275710(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275DFC();
      }

      OUTLINED_FUNCTION_4_66();
      if (v17)
      {
        v18 = v13[36];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[32];
    sub_2174A87A0(v13[33], (v13 + 2), &qword_27CB240D0, &unk_21775D400);
    OUTLINED_FUNCTION_9_41();
    sub_2175566B8();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750ACC4(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750ACDC()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217506694(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0(&unk_217787538);
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750AD70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_31_26(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750AEA0, 0, 0);
  }
}

void sub_21750AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217275F2C();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_27_31();
      sub_217283D6C(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275F2C();
      }

      OUTLINED_FUNCTION_0_70();
      if (v17)
      {
        v18 = v13[34];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[30];
    sub_2174A87A0(v13[31], (v13 + 2), &qword_27CB255B8, &unk_21775D470);
    OUTLINED_FUNCTION_9_41();
    sub_2175566F4();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_21750AFAC(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750AFC4()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217506940(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0(&unk_217787408);
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750B05C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *(v4 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  OUTLINED_FUNCTION_35_22(v9);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v10();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750B18C, 0, 0);
  }
}

void sub_21750B18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    OUTLINED_FUNCTION_3_61();
    sub_217276C14();
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v14)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v15 = OUTLINED_FUNCTION_32_25();
      sub_21729C79C(v15, v16);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v14)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276C14();
      }

      OUTLINED_FUNCTION_4_66();
      if (v17)
      {
        v18 = v13[36];

        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_10:
    v19 = v13[32];
    sub_2174A87A0(v13[33], (v13 + 2), &qword_27CB27D40, &qword_21776BB40);
    OUTLINED_FUNCTION_9_41();
    sub_217556730();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

unint64_t sub_21750B298()
{
  result = qword_27CB28BD8;
  if (!qword_27CB28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BD8);
  }

  return result;
}

unint64_t sub_21750B2EC()
{
  result = qword_27CB28BE0;
  if (!qword_27CB28BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BE0);
  }

  return result;
}

unint64_t sub_21750B340()
{
  result = qword_27CB28BF0;
  if (!qword_27CB28BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BF0);
  }

  return result;
}

unint64_t sub_21750B398()
{
  result = qword_27CB28BF8;
  if (!qword_27CB28BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BF8);
  }

  return result;
}

uint64_t sub_21750B3F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_21750B438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_33()
{
  result = *(v0 + 248);
  v2 = *(v0 + 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_39()
{

  return sub_2171F06D8(v0 + 120, v1, v2);
}

uint64_t sub_21750B598(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 8);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B64C(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 8);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B718(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 16);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B7CC(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 16);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B898(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 24);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B94C(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 24);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BA18(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 32);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BACC(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 32);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BB98(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 48);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BC4C(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 48);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BD18(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 56);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BDCC(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 56);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BE98(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 64);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BF4C(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 64);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750C018(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 72);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750C0CC(void (*a1)(void *__return_ptr))
{
  a1(v8);
  v1 = v9;
  if (v9)
  {
    OUTLINED_FUNCTION_5_52(v8);
    v3 = *(v2 + 72);
    v4 = OUTLINED_FUNCTION_16_1();
    v6 = v5(v4);
    OUTLINED_FUNCTION_13_35(v6);
  }

  else
  {
    sub_2171F06D8(v8, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t PlaylistEntryPropertyProvider.catalogAssetRequiresSubscription.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 8);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_0_5();
    sub_21750B598(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_5();
    sub_21750B598(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.catalogAssetRequiresUserUpload.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 16);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_0_5();
    sub_21750B718(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_5();
    sub_21750B718(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 24);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_0_5();
    sub_21750B898(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_5();
    sub_21750B898(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasExplicitContent.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 32);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_2_76();
    v5 = OUTLINED_FUNCTION_10_40();
    sub_21750BA18(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    v21 = OUTLINED_FUNCTION_10_40();
    sub_21750BA18(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasNonPurgeableLocalAsset.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 48);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_2_76();
    v5 = OUTLINED_FUNCTION_10_40();
    sub_21750BB98(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    v21 = OUTLINED_FUNCTION_10_40();
    sub_21750BB98(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasNonPurgeableSubscriptionProtectedLocalAsset.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 56);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_0_5();
    sub_21750BD18(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_5();
    sub_21750BD18(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasRedownloadableCatalogAsset.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 64);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_0_5();
    sub_21750BE98(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_5();
    sub_21750BE98(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.isHomeSharingAssetAvailable.getter()
{
  v1 = type metadata accessor for PlaylistEntryPropertyProvider();
  OUTLINED_FUNCTION_12_32(v1);
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v2);
  OUTLINED_FUNCTION_11_43();
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v24[0], v24[1], v24[2], v25, v26, v27, v28, v29);
    if (v31)
    {
      OUTLINED_FUNCTION_16_40(v7, v8, v9, v10, v11, v12, v13, v14);
      sub_217350E74(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50())
      {
        if (v33)
        {
          sub_2171F3F0C(&v32, v24);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v15 = OUTLINED_FUNCTION_3_62();
          v16(v15);
          OUTLINED_FUNCTION_5_52(&v32);
          v18 = *(v17 + 72);
          v19 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v20(v19);
          __swift_destroy_boxed_opaque_existential_1(&v32);
          __swift_destroy_boxed_opaque_existential_1(v24);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v30, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v32, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v3)
  {
    v5 = OUTLINED_FUNCTION_0_5();
    sub_21750C018(v5);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v6);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_0_5();
    sub_21750C018(v21);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v22);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.playableCategory.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for PlaylistEntryPropertyProvider();
  sub_217202078(v1 + *(v3 + 40), v17, &qword_27CB27D20, &qword_217758B80);
  if (v18 == 255)
  {
    sub_217202078(v1 + *(v3 + 68), v9, &qword_27CB24BA8, &unk_217772FF0);
    if (v9[3])
    {
      sub_2171FF30C(v9, v10);
      sub_217350E74(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (swift_dynamicCast())
      {
        if (*(&v12 + 1))
        {
          sub_2171F3F0C(&v11, v14);
          v4 = v15;
          v5 = v16;
          __swift_project_boxed_opaque_existential_1(v14, v15);
          (*(v5 + 8))(&v11, v4, v5);
          v6 = *(&v12 + 1);
          v7 = v13;
          __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
          (*(v7 + 88))(v6, v7);
          __swift_destroy_boxed_opaque_existential_1(&v11);
          return __swift_destroy_boxed_opaque_existential_1(v14);
        }
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
      }
    }

    else
    {
      sub_2171F06D8(v9, &qword_27CB24BA8, &unk_217772FF0);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    result = sub_2171F06D8(&v11, &qword_27CB28C48, &qword_217771D88);
    *a1 = 0;
  }

  else
  {
    *a1 = (v18 & 1) == 0;
    return sub_21729C7F8(v17);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_34@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_217202078(v11 + a3, va, a1, a2);
}

uint64_t OUTLINED_FUNCTION_15_39@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_217202078(v3 + a3, v4 - 96, a1, a2);
}

uint64_t OUTLINED_FUNCTION_16_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return sub_2171FF30C(va, va1);
}

MusicKit::MusicTokenRequestOptions sub_21750D168@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MusicTokenRequestOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21750D1A8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicTokenRequestOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21750D1D4()
{
  type metadata accessor for DefaultMusicTokenProvider();
  result = swift_allocObject();
  qword_27CB28C58 = result;
  unk_27CB28C60 = &protocol witness table for DefaultMusicTokenProvider;
  return result;
}

uint64_t static MusicDataRequest.tokenProvider.getter()
{
  if (qword_27CB23C30 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  swift_beginAccess();
}

uint64_t static MusicDataRequest.tokenProvider.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27CB23C30 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  swift_beginAccess();
  qword_27CB28C58 = a1;
  unk_27CB28C60 = a2;
}

uint64_t (*static MusicDataRequest.tokenProvider.modify())()
{
  if (qword_27CB23C30 != -1)
  {
    OUTLINED_FUNCTION_0_71();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_21750D374()
{
  result = qword_27CB28C68;
  if (!qword_27CB28C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C68);
  }

  return result;
}

unint64_t sub_21750D3CC()
{
  result = qword_27CB28C70;
  if (!qword_27CB28C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C70);
  }

  return result;
}

unint64_t sub_21750D424()
{
  result = qword_27CB28C78;
  if (!qword_27CB28C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C78);
  }

  return result;
}

unint64_t sub_21750D47C()
{
  result = qword_27CB28C80;
  if (!qword_27CB28C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C80);
  }

  return result;
}

uint64_t dispatch thunk of MusicDeveloperTokenProvider.developerToken(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21750D608;

  return v11(a1, a2, a3);
}

uint64_t sub_21750D608(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t NotificationCoalescer.__allocating_init(_:notificationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_63();
  v6 = swift_allocObject();
  NotificationCoalescer.init(_:notificationHandler:)(a1, a2, a3);
  return v6;
}

uint64_t NotificationCoalescer.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 32);
    sub_217751DE8();
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      sub_217752558();

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  return v0;
}

uint64_t NotificationCoalescer.__deallocating_deinit()
{
  NotificationCoalescer.deinit();
  v0 = OUTLINED_FUNCTION_3_63();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21750D864()
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21750D8A4();
  }

  return result;
}

uint64_t sub_21750D8A4()
{
  [*(v0 + 40) invalidate];
  v1 = *(v0 + 40);
  *(v0 + 40) = 0;

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return v2();
}

id sub_21750D924()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 1;
      goto LABEL_9;
    case 2:
      v3 = 2;
      goto LABEL_9;
    case 3:
      v3 = 3;
      goto LABEL_9;
    case 4:
      v3 = 4;
      goto LABEL_9;
    case 5:
      v3 = 5;
      goto LABEL_9;
    case 6:
      v3 = 6;
      goto LABEL_9;
    case 7:
      v3 = 7;
      goto LABEL_9;
    case 8:
      OUTLINED_FUNCTION_422();
      result = sub_217752D08();
      __break(1u);
      return result;
    default:
LABEL_9:
      sub_21750DB7C();
      sub_217751DE8();
      return sub_21750DBC0(v1, v2, v3);
  }
}

void sub_21750DA18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 value];
  v5 = sub_217751F48();
  v7 = v6;

  v8 = 0;
  switch([a1 kind])
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      v8 = 1;
      goto LABEL_9;
    case 2uLL:
      v8 = 2;
      goto LABEL_9;
    case 3uLL:
      v8 = 3;
      goto LABEL_9;
    case 4uLL:
      v8 = 4;
      goto LABEL_9;
    case 5uLL:
      v8 = 5;
      goto LABEL_9;
    case 6uLL:
      v8 = 6;
      goto LABEL_9;
    case 7uLL:
      v8 = 7;
LABEL_9:

      *a2 = v5;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      break;
    default:
      OUTLINED_FUNCTION_422();
      sub_217752D08();
      __break(1u);
      break;
  }
}

unint64_t sub_21750DB7C()
{
  result = qword_280BE22E8;
  if (!qword_280BE22E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE22E8);
  }

  return result;
}

id sub_21750DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_217751F18();

  v6 = [v4 initWithValue:v5 kind:a3];

  return v6;
}

uint64_t sub_21750DC4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  result = a1 + 32;
  v6 = v4 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 768;
    sub_21750EA6C(result, a2);
    result = v7;
  }

  while (!v2);
  return result;
}

uint64_t sub_21750DC9C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2172765B4();
    v3 = v23;
    v14 = v1;
    v4 = v1 + 32;
    do
    {
      sub_2171F5110(v4, v19, &qword_27CB244A8, &unk_217758980);
      v5 = v19[1];
      v6 = v19[40];
      v17 = v19[39];
      v18 = v19[0];
      v7 = v20;
      v8 = v22;
      v16 = v21;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v19, &qword_27CB244A8, &unk_217758980);
      v23 = v3;
      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_2172765B4();
        v3 = v23;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 56 * v9;
      *(v10 + 32) = v18;
      *(v10 + 40) = v5;
      *(v10 + 48) = v17;
      *(v10 + 56) = v6;
      *(v10 + 64) = v7;
      *(v10 + 72) = v16;
      *(v10 + 80) = v8;
      v4 += 768;
      --v2;
    }

    while (v2);
    v1 = v14;
    v0 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CD8, &unk_217772160);
  v19[0] = sub_217751DC8();
  sub_21750DC4C(v1, v19);
  v12 = v0[7];
  v11 = v0[8];
  sub_217751DE8();
  return v3;
}

uint64_t sub_21750DE5C@<X0>(uint64_t a1@<X8>)
{
  sub_21733C5F0(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    return sub_2171F5110(v1 + 152, a1, &qword_27CB244B0, &unk_21776DB80);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21750DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21726FA70();
  if (v12)
  {
    sub_217262380();
    if (v13)
    {
      if (a4)
      {
        if (a8)
        {
          v14 = a3 == a7 && a4 == a8;
          if (v14 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21750DFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F736572 && a2 == 0xE900000000000073;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

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

uint64_t sub_21750E0EC(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x656372756F736572;
  }

  return 1954047342;
}

uint64_t sub_21750E138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C98, &qword_217772148);
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v19 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750E8DC();
  sub_2177532F8();
  v23 = a2;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CA8, &qword_217772150);
  sub_21750F608(&unk_27CB28CB0);
  OUTLINED_FUNCTION_3_64();
  if (!v5)
  {
    v23 = v20;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CC0, &qword_217772158);
    sub_21750F6D0(&unk_27CB28CC8);
    OUTLINED_FUNCTION_3_64();
    LOBYTE(v23) = 2;
    sub_217752EF8();
  }

  return (*(v11 + 8))(v16, v8);
}

uint64_t sub_21750E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217281654();
  sub_2172695B8(a1, a3);
  if (!a5)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_21750E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2177531E8();
  sub_217281654();
  sub_2172695B8(v7, a2);
  sub_217753208();
  if (a4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_21750E468(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CF8, &qword_217772170);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_21750E8DC();
  sub_2177532C8();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CA8, &qword_217772150);
    sub_21750F608(&unk_27CB28D00);
    OUTLINED_FUNCTION_2_77();
    v8 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CC0, &qword_217772158);
    sub_21750F6D0(&unk_27CB28D10);
    OUTLINED_FUNCTION_2_77();
    sub_217752E18();
    v10 = OUTLINED_FUNCTION_0_73();
    v11(v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_21750E704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21750DFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21750E72C(uint64_t a1)
{
  v2 = sub_21750E8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21750E768(uint64_t a1)
{
  v2 = sub_21750E8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21750E7D8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2177531E8();
  sub_21750E350(v6, v1, v2, v4, v3);
  return sub_217753238();
}

uint64_t sub_21750E834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21750E468(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_21750E868()
{
  result = qword_27CB28C90;
  if (!qword_27CB28C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C90);
  }

  return result;
}

unint64_t sub_21750E8DC()
{
  result = qword_27CB28CA0;
  if (!qword_27CB28CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28CA0);
  }

  return result;
}

unint64_t sub_21750E930()
{
  result = qword_27CB28CB8;
  if (!qword_27CB28CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28CB8);
  }

  return result;
}

unint64_t sub_21750E984()
{
  result = qword_27CB28CD0;
  if (!qword_27CB28CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CD8, &unk_217772160);
    sub_21750F7F8(&unk_27CB28CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28CD0);
  }

  return result;
}

unint64_t sub_21750EA2C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    type metadata accessor for CloudPersonalRecommendation.Content();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21750EA6C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CloudStation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v115 = (&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CloudPlaylist(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v114 = (&v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for CloudAlbum(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v113 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for CloudPersonalRecommendation.Item();
  v15 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118, v16);
  v116 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v121 = &v112 - v20;
  v127 = type metadata accessor for CloudPersonalRecommendation.Content();
  v21 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127, v22);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v117 = &v112 - v27;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  v128 = *(v131 - 8);
  v28 = *(v128 + 64);
  MEMORY[0x28223BE20](v131, v29);
  v119 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v112 - v33;
  sub_21750DE5C(v134);
  if (v135 == 1)
  {
    v35 = &qword_27CB244B0;
    v36 = &unk_21776DB80;
    v37 = v134;
LABEL_6:
    sub_2171F0738(v37, v35, v36);
    v38 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  sub_2171F5110(v134, v133, &qword_27CB244B8, &unk_217758990);
  sub_21728373C(v134);
  v38 = v133[2];
  if (!v133[2])
  {
    v35 = &qword_27CB244B8;
    v36 = &unk_217758990;
    v37 = v133;
    goto LABEL_6;
  }

  sub_217751DE8();
  sub_2171F0738(v133, &qword_27CB244C0, &qword_21775D9C0);
LABEL_7:
  v126 = *(v38 + 16);
  if (!v126)
  {
  }

  v39 = 0;
  v125 = v38 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
  v120 = xmmword_2177586E0;
  v123 = v24;
  v124 = a2;
  v130 = v34;
  v122 = v38;
  while (v39 < *(v38 + 16))
  {
    v129 = *(v128 + 72);
    sub_2171F5110(v125 + v129 * v39, v34, &qword_27CB24210, &unk_21776DB90);
    v40 = &v34[*(v131 + 36)];
    v41 = *v40;
    v42 = v40[1];
    v43 = *a2;
    v44 = *(*a2 + 16);
    v136 = v42;
    v132 = v41;
    if (v44)
    {
      v45 = sub_21763246C(v41, v42);
      if (v46)
      {
        v47 = *(*(v43 + 56) + 8 * v45);
        v48 = v117;
        sub_217269C38(v34, v117);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21750F8A4(v48, v116, type metadata accessor for CloudPersonalRecommendation.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v50 = v114;
              sub_21750F8A4(v116, v114, type metadata accessor for CloudPlaylist);
              v51 = *v50;
              v52 = v50[1];
              sub_217751DE8();
              sub_217751DE8();
              v53 = type metadata accessor for CloudPlaylist;
            }

            else
            {
              v50 = v115;
              sub_21750F8A4(v116, v115, type metadata accessor for CloudStation);
              v51 = *v50;
              v52 = v50[1];
              sub_217751DE8();
              sub_217751DE8();
              v53 = type metadata accessor for CloudStation;
            }
          }

          else
          {
            v50 = v113;
            sub_21750F8A4(v116, v113, type metadata accessor for CloudAlbum);
            v51 = *v50;
            v52 = v50[1];
            sub_217751DE8();
            sub_217751DE8();
            v53 = type metadata accessor for CloudAlbum;
          }

          sub_21750F904(v50, v53);
        }

        else
        {
          memcpy(v133, v48, sizeof(v133));
          v51 = v133[0];
          v52 = v133[1];
          sub_217751DE8();
          sub_217751DE8();
          sub_217269D5C(v133);
        }

        sub_2171F5110(v34, v119, &qword_27CB24210, &unk_21776DB90);
        swift_isUniquelyReferenced_nonNull_native();
        v133[0] = v47;
        v85 = sub_21763246C(v51, v52);
        if (__OFADD__(*(v47 + 16), (v86 & 1) == 0))
        {
          goto LABEL_61;
        }

        v87 = v85;
        v88 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D40, &unk_217772190);
        if (sub_217752CB8())
        {
          v89 = sub_21763246C(v51, v52);
          if ((v88 & 1) != (v90 & 1))
          {
            goto LABEL_65;
          }

          v87 = v89;
          if ((v88 & 1) == 0)
          {
LABEL_42:
            v91 = v133[0];
            *(v133[0] + 8 * (v87 >> 6) + 64) |= 1 << v87;
            v92 = (v91[6] + 16 * v87);
            *v92 = v51;
            v92[1] = v52;
            sub_21750F95C(v119, v91[7] + v87 * v129);
            v93 = v91[2];
            v82 = __OFADD__(v93, 1);
            v94 = v93 + 1;
            if (v82)
            {
              goto LABEL_63;
            }

            v91[2] = v94;
            goto LABEL_46;
          }
        }

        else if ((v88 & 1) == 0)
        {
          goto LABEL_42;
        }

        v91 = v133[0];
        sub_21750F9CC(v119, *(v133[0] + 56) + v87 * v129);
LABEL_46:
        a2 = v124;
        v95 = *v124;
        swift_isUniquelyReferenced_nonNull_native();
        v133[0] = *a2;
        v96 = v133[0];
        *a2 = 0x8000000000000000;
        v97 = sub_21763246C(v132, v136);
        if (__OFADD__(*(v96 + 16), (v98 & 1) == 0))
        {
          goto LABEL_62;
        }

        v99 = v97;
        v100 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D38, &qword_217772188);
        if (sub_217752CB8())
        {
          v101 = sub_21763246C(v132, v136);
          v34 = v130;
          if ((v100 & 1) != (v102 & 1))
          {
            goto LABEL_65;
          }

          v99 = v101;
        }

        else
        {
          v34 = v130;
        }

        v103 = v133[0];
        if (v100)
        {
          v104 = *(v133[0] + 56);
          v105 = *(v104 + 8 * v99);
          *(v104 + 8 * v99) = v91;
        }

        else
        {
          *(v133[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
          v106 = (v103[6] + 16 * v99);
          v107 = v136;
          *v106 = v132;
          v106[1] = v107;
          *(v103[7] + 8 * v99) = v91;
          v108 = v103[2];
          v82 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v82)
          {
            goto LABEL_64;
          }

          v103[2] = v109;
          sub_217751DE8();
        }

        v110 = *a2;
        *a2 = v103;

        v38 = v122;
        v24 = v123;
        goto LABEL_56;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D28, &qword_217772178);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D30, &qword_217772180);
    v55 = *(*(v54 - 8) + 72);
    v56 = (*(*(v54 - 8) + 80) + 32) & ~*(*(v54 - 8) + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v120;
    sub_217269C38(v34, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21750F8A4(v24, v121, type metadata accessor for CloudPersonalRecommendation.Item);
      v58 = swift_getEnumCaseMultiPayload();
      if (v58)
      {
        if (v58 == 1)
        {
          v59 = v114;
          sub_21750F8A4(v121, v114, type metadata accessor for CloudPlaylist);
          v60 = *v59;
          v61 = v59[1];
          sub_217751DE8();
          v62 = type metadata accessor for CloudPlaylist;
        }

        else
        {
          v59 = v115;
          sub_21750F8A4(v121, v115, type metadata accessor for CloudStation);
          v60 = *v59;
          v61 = v59[1];
          sub_217751DE8();
          v62 = type metadata accessor for CloudStation;
        }

        sub_21750F904(v59, v62);
        v34 = v130;
      }

      else
      {
        v63 = v113;
        sub_21750F8A4(v121, v113, type metadata accessor for CloudAlbum);
        v60 = *v63;
        v61 = v63[1];
        sub_217751DE8();
        v64 = v63;
        v34 = v130;
        sub_21750F904(v64, type metadata accessor for CloudAlbum);
      }
    }

    else
    {
      memcpy(v133, v24, sizeof(v133));
      v60 = v133[0];
      v61 = v133[1];
      sub_217751DE8();
      sub_217269D5C(v133);
    }

    v65 = (v57 + v56);
    v66 = *(v54 + 48);
    *v65 = v60;
    v65[1] = v61;
    sub_2171F5110(v34, v57 + v56 + v66, &qword_27CB24210, &unk_21776DB90);
    v67 = sub_217751DC8();
    v68 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v133[0] = *a2;
    v69 = v133[0];
    *a2 = 0x8000000000000000;
    v70 = sub_21763246C(v132, v136);
    if (__OFADD__(*(v69 + 16), (v71 & 1) == 0))
    {
      goto LABEL_59;
    }

    v72 = v70;
    v73 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D38, &qword_217772188);
    if (sub_217752CB8())
    {
      v74 = sub_21763246C(v132, v136);
      v34 = v130;
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_65;
      }

      v72 = v74;
    }

    else
    {
      v34 = v130;
    }

    v76 = v133[0];
    if (v73)
    {
      v77 = *(v133[0] + 56);
      v78 = *(v77 + 8 * v72);
      *(v77 + 8 * v72) = v67;
    }

    else
    {
      *(v133[0] + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v79 = (v76[6] + 16 * v72);
      v80 = v136;
      *v79 = v132;
      v79[1] = v80;
      *(v76[7] + 8 * v72) = v67;
      v81 = v76[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_60;
      }

      v76[2] = v83;
      sub_217751DE8();
    }

    a2 = v124;
    v84 = *v124;
    *v124 = v76;

    v38 = v122;
    v24 = v123;
LABEL_56:
    ++v39;
    sub_2171F0738(v34, &qword_27CB24210, &unk_21776DB90);
    if (v126 == v39)
    {
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_217753178();
  __break(1u);
  return result;
}

unint64_t sub_21750F608(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CA8, &qword_217772150);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21750F67C()
{
  result = qword_27CB28D08;
  if (!qword_27CB28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D08);
  }

  return result;
}

unint64_t sub_21750F6D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CC0, &qword_217772158);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21750F750()
{
  result = qword_27CB28D18;
  if (!qword_27CB28D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CD8, &unk_217772160);
    sub_21750F7F8(&unk_27CB28D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D18);
  }

  return result;
}

unint64_t sub_21750F7F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24210, &unk_21776DB90);
    sub_21750EA2C(&unk_27CB28CE8);
    sub_21750EA2C(&unk_27CB28CF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21750F8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_43(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21750F904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21750F95C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21750F9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendationsServerItemDatabaseRawPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21750FB1C()
{
  result = qword_27CB28D48;
  if (!qword_27CB28D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D48);
  }

  return result;
}

unint64_t sub_21750FB74()
{
  result = qword_27CB28D50;
  if (!qword_27CB28D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D50);
  }

  return result;
}

unint64_t sub_21750FBCC()
{
  result = qword_27CB28D58;
  if (!qword_27CB28D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D58);
  }

  return result;
}

uint64_t RadioShow.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RadioShow.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

void RadioShow.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6698 != -1)
  {
    OUTLINED_FUNCTION_13_5();
  }

  v26 = qword_280C02028;

  sub_2176CA348(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21750FE00(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t RadioShow.hostName.getter()
{
  if (qword_280BE6638 != -1)
  {
    OUTLINED_FUNCTION_3_65();
  }

  return sub_2172A3F00();
}

void sub_21750FEC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v27 = *a2;

  sub_2176CAC70(v27, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t RadioShow.name.getter()
{
  if (qword_280BE6658 != -1)
  {
    OUTLINED_FUNCTION_10_29();
  }

  result = sub_2172A3F00();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void RadioShow.url.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE6660 != -1)
  {
    OUTLINED_FUNCTION_9_31();
  }

  v30 = qword_280C02008;

  sub_2176CA328(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void RadioShow.playlists.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE6628 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v30 = qword_280BE6630;

  sub_2176CA30C(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static RadioShow.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t RadioShow.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 112))(a1, v5, v6);
}

uint64_t RadioShow.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_2175101D8@<X0>(uint64_t *a1@<X8>)
{
  result = RadioShow.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RadioShow.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_21737C7CC();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_21737C7CC();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_21737C7CC();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_2175103B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D68, &qword_217772548);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C01FF8 = result;
  return result;
}

uint64_t sub_217510424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D98, &qword_217772578);
  swift_allocObject();
  result = sub_217729830(0xD000000000000010, 0x80000002177AB890, 0x6B726F77747241, 0xE700000000000000, &unk_282959AF8);
  qword_280C02018 = result;
  return result;
}

uint64_t sub_2175104A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D90, &qword_217772570);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02028 = result;
  return result;
}

uint64_t sub_217510518()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D88, &qword_217772568);
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C02010 = result;
  return result;
}

uint64_t sub_217510598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D80, &qword_217772560);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x74736F48776F6873, 0xEC000000656D614ELL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C01FF0 = result;
  return result;
}

uint64_t sub_217510614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D68, &qword_217772548);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02020 = result;
  return result;
}

uint64_t sub_217510694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D80, &qword_217772560);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02000 = result;
  return result;
}

uint64_t sub_217510700()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D78, &qword_217772558);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02008 = result;
  return result;
}

uint64_t sub_21751076C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D70, &qword_217772550);
  swift_allocObject();
  result = sub_21769A084(0x7473696C79616C70, 0xE900000000000073, 0, &unk_282959AF8);
  qword_280BE6630 = result;
  return result;
}

uint64_t static RadioShow.catalogFilterID(for:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = sub_217751F08();

  if (v2)
  {
    *a1 = 25705;
    a1[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217510968@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t RadioShow.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EDED8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RadioShow.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();

  OUTLINED_FUNCTION_16_41();
  v11 = v2;
  v12 = 0xEF22203A64692877;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6658 != -1)
  {
    OUTLINED_FUNCTION_10_29();
  }

  v3 = sub_2172A3F00();
  if (v4)
  {
    v1 = v4;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEA23B0](v3, v1);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  if (qword_280BE6638 != -1)
  {
    OUTLINED_FUNCTION_3_65();
  }

  v5 = sub_2172A3F00();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_217752AA8();

    strcpy(v10, ", hostName: ");
    HIWORD(v10[1]) = -4864;
    MEMORY[0x21CEA23B0](v7, v8);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](v10[0], v10[1]);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v11;
}

uint64_t RadioShow.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v71 - v4;
  v6 = sub_2177516D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_41();
  v96 = v12;
  v97 = 0xEA00000000002877;
  strcpy(v88, "\n  id: ");
  v88[9] = 0;
  *&v88[10] = 0;
  *&v88[12] = -402653184;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_190();

  strcpy(v88, ",\n  name: ");
  *&v88[12] = -352321536;
  if (qword_280BE6658 == -1)
  {
    goto LABEL_2;
  }

LABEL_51:
  OUTLINED_FUNCTION_10_29();
LABEL_2:
  v13 = sub_2172A3F00();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v13, v15);

  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_190();

  if (qword_280BE6638 != -1)
  {
    OUTLINED_FUNCTION_3_65();
  }

  v16 = sub_2172A3F00();
  if (v17)
  {
    v24 = v16;
    v25 = v17;
    OUTLINED_FUNCTION_13_36();
    sub_217752AA8();

    *v88 = 0x74736F6820200A2CLL;
    *&v88[8] = 0xEF22203A656D614ELL;
    MEMORY[0x21CEA23B0](v24, v25);

    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_190();
  }

  if (qword_280BE6698 != -1)
  {
    OUTLINED_FUNCTION_13_5();
  }

  sub_2176CA348(qword_280C02028, v17, v18, v19, v20, v21, v22, v23, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, *(&v79 + 1), v80, *(&v80 + 1));
  v92[0] = *v88;
  v92[1] = *&v88[16];
  v92[2] = *&v88[32];
  v92[3] = *&v88[48];
  v33 = *v88;
  v93 = *&v88[16];
  v94 = *&v88[32];
  v95 = *&v88[48];
  if (*&v88[8] != 1)
  {
    OUTLINED_FUNCTION_13_36();
    sub_217752AA8();

    OUTLINED_FUNCTION_207();
    v91[0] = v35 + 4;
    v91[1] = v34;
    *v88 = v33;
    *&v88[16] = v93;
    *&v88[32] = v94;
    *&v88[48] = v95;
    v36 = EditorialNotes.debugDescription.getter();
    v38 = v37;
    sub_2171F06D8(v92, &qword_27CB24B70, &unk_217759460);
    *&v86[0] = v36;
    *(&v86[0] + 1) = v38;
    *&v74 = 10;
    *(&v74 + 1) = 0xE100000000000000;
    *&v79 = 2105354;
    *(&v79 + 1) = 0xE300000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_147_0();
    v39 = OUTLINED_FUNCTION_172();
    v40 = v7;
    v42 = v41;

    MEMORY[0x21CEA23B0](v39, v42);
    v7 = v40;

    MEMORY[0x21CEA23B0](v91[0], v91[1]);
  }

  if (qword_280BE6660 != -1)
  {
    OUTLINED_FUNCTION_9_31();
  }

  sub_2176CA328(qword_280C02008, v26, v27, v28, v29, v30, v31, v32, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, v83, v84, v85, *&v86[0], *(&v86[0] + 1));
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2171F06D8(v5, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    strcpy(v88, ",\n  url: ");
    v88[11] = 0;
    *&v88[12] = -369098752;
    sub_21736C310();
    v50 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v50);

    OUTLINED_FUNCTION_191();
    MEMORY[0x21CEA23B0](*v88, *&v88[8]);

    (*(v7 + 8))(v11, v6);
  }

  if (qword_280BE6628 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  sub_2176CA30C(qword_280BE6630, v43, v44, v45, v46, v47, v48, v49, v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, v83, v84, v85, *&v86[0], *(&v86[0] + 1));
  if (*&v88[88])
  {
    memcpy(v91, v88, sizeof(v91));
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    sub_217202078(v91, v86, &unk_27CB28230, &unk_21775CD50);
    sub_217202078(v86, v88, &unk_27CB28230, &unk_21775CD50);
    v51 = *&v86[0];
    v52 = BYTE8(v86[0]);
    sub_217283C5C(*&v86[0], SBYTE8(v86[0]));
    sub_2171F06D8(v86, &unk_27CB28230, &unk_21775CD50);
    sub_21725CF00(v51, v52);
    v53 = 0;
    v89 = 0;
    v6 = *v88;
    v5 = v88[8];
    v11 = (*v88 + 32);
    v7 = 0xE100000000000000;
    if (v88[8])
    {
LABEL_22:
      swift_beginAccess();
      if (v53 != *(*(v6 + 56) + 16))
      {

        sub_2172944E4();
        goto LABEL_31;
      }
    }

    else
    {
      while (1)
      {
        v54 = *(v6 + 16);
        if (v53 == v54)
        {
          break;
        }

        if ((v53 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v53 >= v54)
        {
          goto LABEL_50;
        }

        sub_217202078(v11, v86, &qword_27CB24830, &qword_217771D40);
        sub_217202078(v86, &v74, &qword_27CB24830, &qword_217771D40);
        if (v78)
        {
          v55 = *(v74 + 16);
          v56 = *(v74 + 24);
          v57 = *(v74 + 32);
          sub_217283C5C(v6, 0);
          sub_217751DE8();

          sub_21729290C(&v79, v55, v56);

          v7 = 0xE100000000000000;
        }

        else
        {
          v79 = v74;
          v80 = v75;
          v81 = v76;
          v82 = v77;
          sub_217283C5C(v6, 0);
        }

        sub_2171F06D8(v86, &qword_27CB24830, &qword_217771D40);
LABEL_31:
        v72 = v80;
        v73 = v79;
        v71 = v81;
        v58 = v82;
        v59 = __OFADD__(v53, 1);
        if (v5)
        {
          sub_21725CF00(v6, 1);
          if (v59)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_21725CF00(v6, 0);
          if (v59)
          {
            goto LABEL_48;
          }
        }

        v86[0] = v73;
        v86[1] = v72;
        v86[2] = v71;
        v87 = v58;
        v60 = v90 & 0xFFFFFFFFFFFFLL;
        if ((*(&v90 + 1) & 0x2000000000000000) != 0)
        {
          v60 = HIBYTE(*(&v90 + 1)) & 0xFLL;
        }

        if (v60)
        {
          MEMORY[0x21CEA23B0](44, 0xE100000000000000);
        }

        *&v74 = 10;
        *(&v74 + 1) = 0xE100000000000000;
        v61 = Playlist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v61);

        MEMORY[0x21CEA23B0](v74, *(&v74 + 1));

        sub_21726B8C4(v86);
        ++v53;
        v11 += 64;
        if (v5)
        {
          goto LABEL_22;
        }
      }
    }

    v89 = v53;
    sub_2171F06D8(v88, &qword_27CB254C0, &unk_21775CD60);
    OUTLINED_FUNCTION_13_36();
    sub_217752AA8();

    OUTLINED_FUNCTION_207();
    *v88 = v63;
    *&v88[8] = v62;
    v86[0] = v90;
    *&v74 = 10;
    *(&v74 + 1) = 0xE100000000000000;
    *&v79 = 0x202020200ALL;
    *(&v79 + 1) = 0xE500000000000000;
    sub_21733A5C8();
    OUTLINED_FUNCTION_147_0();
    v64 = OUTLINED_FUNCTION_172();
    v66 = v65;

    MEMORY[0x21CEA23B0](v64, v66);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000);
    OUTLINED_FUNCTION_190();

    v67 = &unk_27CB28230;
    v68 = &unk_21775CD50;
    v69 = v91;
  }

  else
  {
    v67 = &qword_27CB25330;
    v68 = &unk_21775E9B0;
    v69 = v88;
  }

  sub_2171F06D8(v69, v67, v68);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v96;
}

uint64_t static RadioShow.typeValue.getter()
{
  if (qword_280BE23C0 != -1)
  {
    OUTLINED_FUNCTION_5_53();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE23C8);

  return sub_217751DE8();
}

uint64_t sub_21751159C()
{
  if (qword_280BE23C0 != -1)
  {
    OUTLINED_FUNCTION_5_53();
  }

  xmmword_280BE6200 = xmmword_280BE23C8;
  qword_280BE6210 = qword_280BE23D8;
  unk_280BE6218 = unk_280BE23E0;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.radioShow.getter()
{
  if (qword_280BE61F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6200);

  return sub_217751DE8();
}

unint64_t sub_217511670()
{
  result = qword_27CB28D60;
  if (!qword_27CB28D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D60);
  }

  return result;
}

uint64_t Artwork.Color.hexadecimalRepresentation.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_217751DE8();
  return v1;
}

uint64_t static Artwork.Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  v6 = *(a1 + 24);
  return sub_217753058();
}

uint64_t Artwork.Color.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA3580](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x21CEA3580](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x21CEA3580](*&v7);

  return sub_217751FF8();
}

uint64_t Artwork.Color.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_2177531E8();
  Artwork.Color.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217511898()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_2177531E8();
  Artwork.Color.hash(into:)();
  return sub_217753238();
}

void Artwork.Color.init(from:)(uint64_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v5 = sub_2177528E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_29();
  sub_2177532A8();
  if (v2)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  OUTLINED_FUNCTION_1_29();
  v12 = sub_217753078();
  v14 = v13;
  v22 = a2;
  sub_217511BD0();
  sub_217751DE8();
  v15 = sub_217511C14();
  (*(v6 + 104))(v10, *MEMORY[0x277CC9E88], v5);
  v23[0] = v15;
  v16 = sub_2177528D8();
  v18 = v17;
  (*(v6 + 8))(v10, v5);
  if (v18)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000042, 0x80000002177AF9D0);
    MEMORY[0x21CEA23B0](v12, *&v14);

    MEMORY[0x21CEA23B0](0x6E49552073612022, 0xEC0000002E343674);
    sub_217752B48();
    swift_allocError();
    sub_217752AF8();

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v26);
    goto LABEL_6;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    *v23 = vshlq_u64(vdupq_n_s64(v16), xmmword_217772580);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v19.i64[0] = 255;
    v19.i64[1] = 255;
    v20 = v22;
    *v22 = vdivq_f64(vcvtq_f64_u64(vandq_s8(*v23, v19)), vdupq_n_s64(0x406FE00000000000uLL));
    v20[1].f64[0] = v16 / 255.0;
    *&v20[1].f64[1] = v12;
    v20[2].f64[0] = v14;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  __break(1u);
}

unint64_t sub_217511BD0()
{
  result = qword_280BE2208;
  if (!qword_280BE2208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2208);
  }

  return result;
}

id sub_217511C14()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_217751F18();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t Artwork.Color.encode(to:)(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Artwork.Color.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217752AA8();
  OUTLINED_FUNCTION_4_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_1_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_2_78();
  sub_2177525E8();
  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0;
}

uint64_t Artwork.Color.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_217752AA8();
  OUTLINED_FUNCTION_4_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_1_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_2_78();
  sub_2177525E8();
  MEMORY[0x21CEA23B0](0xD00000000000001ELL, 0x80000002177AFA40);
  MEMORY[0x21CEA23B0](v4, v5);
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0;
}

void sub_217511F48()
{
  v0 = *MEMORY[0x277CBF430];
  v1 = CGColorSpaceCreateWithName(v0);

  qword_280C023C0 = v1;
}

CGColorRef_optional __swiftcall Artwork.Color.convertToCGColor()()
{
  v6 = *v0;
  v1 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217758490;
  *(inited + 32) = v6;
  v3 = (inited + 32);
  *(inited + 48) = v1;
  *(inited + 56) = 0x3FF0000000000000;
  if (qword_280BE76A0 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  if (qword_280C023C0)
  {
    v4 = CGColorCreate(qword_280C023C0, v3);
  }

  else
  {

    return 0;
  }

  return v4;
}

void CGColorRef.convertToArtworkColor()(uint64_t a1@<X8>)
{
  if (qword_280BE76A0 != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  if (!qword_280C023C0)
  {
    goto LABEL_11;
  }

  v3 = qword_280C023C0;
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentAbsoluteColorimetric, v1, 0);
  if (!CopyByMatchingToColorSpace)
  {
LABEL_10:

LABEL_11:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v5 = CopyByMatchingToColorSpace;
  v6 = sub_2177527E8();
  if (!v6)
  {
    v7 = v5;
    goto LABEL_9;
  }

  if (*(v6 + 16) < 3uLL)
  {

    v7 = v3;
    v3 = v5;
LABEL_9:

    goto LABEL_10;
  }

  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DA0, &qword_217772590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2177643C0;
  v12 = lround(v8 * 255.0);
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v15 = lround(v9 * 255.0);
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  v16 = lround(v10 * 255.0);
  *(v11 + 136) = v13;
  *(v11 + 144) = v14;
  *(v11 + 112) = v16;
  v17 = sub_217751F78();
  v19 = v18;

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
}

unint64_t sub_2175121F4()
{
  result = qword_27CB28DA8;
  if (!qword_27CB28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DA8);
  }

  return result;
}

uint64_t sub_217512248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_217512288(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void __swiftcall CloudOffer.init(buyParams:price:priceFormatted:type:)(MusicKit::CloudOffer *__return_ptr retstr, Swift::String buyParams, Swift::Double price, Swift::String priceFormatted, MusicKit::CloudOffer::Kind type)
{
  v5 = *type.rawValue._countAndFlagsBits;
  v6 = *(type.rawValue._countAndFlagsBits + 8);
  retstr->buyParams.value = buyParams;
  retstr->price.value = price;
  retstr->price.is_nil = 0;
  retstr->priceFormatted.value = priceFormatted;
  retstr->type.value.rawValue._countAndFlagsBits = v5;
  retstr->type.value.rawValue._object = v6;
}

uint64_t CloudOffer.buyParams.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudOffer.price.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CloudOffer.priceFormatted.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudOffer.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t CloudOffer.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2175124CC@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CloudOffer.Kind.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21751250C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudOffer.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudOffer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v17 = *a1 == *a2 && v3 == v10;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    v19 = v6 == v14 && v7 == v13;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (!v9)
  {
    if (!v15)
    {

      return 1;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  if (v8 != v16 || v9 != v15)
  {
    OUTLINED_FUNCTION_93();
    if ((sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217512670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F466563697270 && a2 == 0xEE0064657474616DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

uint64_t sub_2175127D4(char a1)
{
  result = 0x6D61726150797562;
  switch(a1)
  {
    case 1:
      result = 0x6563697270;
      break;
    case 2:
      result = 0x726F466563697270;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217512864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217512670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21751288C(uint64_t a1)
{
  v2 = sub_217512AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2175128C8(uint64_t a1)
{
  v2 = sub_217512AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudOffer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DB0, &qword_2177726E0);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = &v26 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v34 = *(v1 + 24);
  v16 = v1[5];
  v30 = v1[4];
  v31 = v15;
  v17 = v1[7];
  v28 = v1[6];
  v29 = v16;
  v27 = v17;
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_217512AFC();
  sub_2177532F8();
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_3_66();
  sub_217752EF8();
  if (!v2)
  {
    v23 = v27;
    v24 = v28;
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_3_66();
    sub_217752F18();
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_3_66();
    sub_217752EF8();
    v32 = v24;
    v33 = v23;
    v35 = 3;
    sub_217512B50();
    sub_217751DE8();
    sub_217752F38();
  }

  return (*(v7 + 8))(v12, v22);
}

unint64_t sub_217512AFC()
{
  result = qword_27CB28DB8;
  if (!qword_27CB28DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DB8);
  }

  return result;
}

unint64_t sub_217512B50()
{
  result = qword_27CB28DC0;
  if (!qword_27CB28DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DC0);
  }

  return result;
}

uint64_t CloudOffer.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  if (v0[1])
  {
    v7 = *v0;
    sub_217753208();
    sub_217751FF8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_217753208();
    if (v2)
    {
LABEL_3:
      sub_217753208();
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:
      sub_217753208();
      if (v6)
      {
        goto LABEL_5;
      }

      return sub_217753208();
    }
  }

  sub_217753208();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x21CEA3580](v9);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_217753208();
  sub_217751FF8();
  if (!v6)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudOffer.hashValue.getter()
{
  sub_2177531E8();
  CloudOffer.hash(into:)();
  return sub_217753238();
}

uint64_t CloudOffer.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DC8, &qword_2177726E8);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217512AFC();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_79();
  v11 = sub_217752E18();
  v13 = v12;
  OUTLINED_FUNCTION_2_79();
  v24 = sub_217752E38();
  v36 = v14 & 1;
  LOBYTE(v30[0]) = 2;
  OUTLINED_FUNCTION_2_79();
  v23 = sub_217752E18();
  v25 = v15;
  v37 = 3;
  sub_217513024();
  sub_217752E58();
  v16 = OUTLINED_FUNCTION_5_0();
  v17(v16);
  v18 = v35;
  *&v26 = v11;
  *(&v26 + 1) = v13;
  *&v27 = v24;
  v19 = v36;
  BYTE8(v27) = v36;
  *&v28 = v23;
  *(&v28 + 1) = v25;
  v29 = v35;
  v20 = v27;
  *a2 = v26;
  a2[1] = v20;
  v21 = v29;
  a2[2] = v28;
  a2[3] = v21;
  sub_217513078(&v26, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v11;
  v30[1] = v13;
  v30[2] = v24;
  v31 = v19;
  v32 = v23;
  v33 = v25;
  v34 = v18;
  return sub_2175130B0(v30);
}

uint64_t sub_217512FE8()
{
  sub_2177531E8();
  CloudOffer.hash(into:)();
  return sub_217753238();
}

unint64_t sub_217513024()
{
  result = qword_27CB28DD0;
  if (!qword_27CB28DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DD0);
  }

  return result;
}

uint64_t CloudOffer.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_29();
  sub_2177532A8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_1_29();
    v6 = sub_217753078();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudOffer.Kind.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_217513228()
{
  result = qword_27CB28DD8;
  if (!qword_27CB28DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DD8);
  }

  return result;
}

unint64_t sub_217513280()
{
  result = qword_27CB28DE0;
  if (!qword_27CB28DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DE0);
  }

  return result;
}

uint64_t sub_217513304(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_217513358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2175134D0()
{
  result = qword_27CB28DE8;
  if (!qword_27CB28DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DE8);
  }

  return result;
}

unint64_t sub_217513528()
{
  result = qword_27CB28DF0;
  if (!qword_27CB28DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DF0);
  }

  return result;
}

unint64_t sub_217513580()
{
  result = qword_27CB28DF8;
  if (!qword_27CB28DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DF8);
  }

  return result;
}

id sub_2175135D8()
{
  v0 = type metadata accessor for NetworkConnectivityMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_217513674();
  qword_280BE33A0 = result;
  return result;
}

uint64_t static NetworkConnectivityMonitor.shared.getter()
{
  if (qword_280BE3398 != -1)
  {
    swift_once();
  }
}

id sub_217513674()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken) = 0;
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_networkPathEvaluator) = result;
    v3 = OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_networkPathEvaluator;
    v4 = [result path];
    [v4 status];

    swift_beginAccess();
    sub_217751BC8();
    swift_endAccess();
    v5 = [*(v1 + v3) path];
    [v5 isConstrained];

    swift_beginAccess();
    sub_217751BC8();
    swift_endAccess();
    v6 = [*(v1 + v3) path];
    [v6 isExpensive];

    swift_beginAccess();
    sub_217751BC8();
    swift_endAccess();
    v7 = *(v1 + v3);
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v8 = v7;
    v9 = sub_217751658();

    v10 = *(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken);
    *(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken) = v9;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217513910()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217751C18();
}

id sub_21751397C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_2175139B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v19 - v12;
  v14 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v4 + 16))(v8, a2, v3);
  v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v15;
  (*(v4 + 32))(&v17[v16], v8, v3);
  sub_21765A990(0, 0, v13, &unk_217772C40, v17);
}

uint64_t sub_217513BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_217513BEC, 0, 0);
}

uint64_t sub_217513BEC()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28);
    sub_217751648();
    *(v0 + 80) = *(v0 + 40);
    sub_217752518();
    *(v0 + 88) = sub_217752508();
    v5 = sub_217752498();

    return MEMORY[0x2822009F8](sub_217513D0C, v5, v4);
  }

  else
  {
    **(v0 + 48) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_217513D0C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  sub_21751496C(v2);

  return MEMORY[0x2822009F8](sub_217513D8C, 0, 0);
}

uint64_t NetworkConnectivityMonitor.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken;
  v3 = *(v0 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor_kvoToken);
  if (v3)
  {
    v4 = v3;
    sub_217751598();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor__hasNetworkConnectivity;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  v7 = *(*(v6 - 8) + 8);
  v7(v1 + v5, v6);
  v7(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor__isNetworkConstrained, v6);
  v7(v1 + OBJC_IVAR____TtC8MusicKit26NetworkConnectivityMonitor__isNetworkExpensive, v6);

  return v1;
}

uint64_t NetworkConnectivityMonitor.__deallocating_deinit()
{
  NetworkConnectivityMonitor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217513F0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_217513F64();
  *a2 = result & 1;
  return result;
}

uint64_t sub_217513F3C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2175138D4();
}

uint64_t (*sub_217513F78())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_4_68(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_0_75(KeyPath);
  return sub_2175150A0;
}

void (*sub_217514008())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_4_68(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_1_68(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  swift_endAccess();
  return sub_21751410C;
}

uint64_t sub_217514124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_21751417C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_217514154(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2175138E8();
}

uint64_t (*sub_217514190())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_4_68(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_0_75(KeyPath);
  return sub_217514208;
}

uint64_t sub_21751420C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v19 - v14;
  (*(v16 + 16))(&v19 - v14, a1, v13);
  v17 = *a2;
  return a5(v15);
}

void (*sub_2175142F4())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_4_68(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_1_68(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  swift_endAccess();
  return sub_2175143F8;
}

void sub_217514410(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = v4[3];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v10 = v4[3];
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_2175144D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_217514530();
  *a2 = result & 1;
  return result;
}

uint64_t sub_217514508(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_2175138FC();
}

uint64_t sub_217514544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217751C08();

  return v1;
}

uint64_t (*sub_2175145B0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_4_68(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_0_75(KeyPath);
  return sub_2175150A0;
}

void sub_217514628(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21751469C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  return swift_endAccess();
}

uint64_t sub_217514718(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v5, v10);
  (*(v7 + 16))(&v15 - v12, a1, v4, v11);
  v13 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BE8();
  swift_endAccess();
  return (*(v7 + 8))(a1, v4);
}

void (*sub_217514844())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_4_68(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E08, &qword_217772B60);
  OUTLINED_FUNCTION_1_68(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_3_67();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E00, &qword_217772B58);
  sub_217751BD8();
  swift_endAccess();
  return sub_217514948;
}

uint64_t sub_21751496C(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 status] == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2 != (sub_217513F64() & 1))
  {
    sub_2175138D4();
  }

  if (v1)
  {
    v3 = [v1 isConstrained];
  }

  else
  {
    v3 = 0;
  }

  if (v3 != (sub_21751417C() & 1))
  {
    sub_2175138E8();
  }

  if (v1)
  {
    LODWORD(v1) = [v1 isExpensive];
  }

  result = sub_217514530();
  if (v1 != (result & 1))
  {

    return sub_2175138FC();
  }

  return result;
}

uint64_t sub_217514A54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworkConnectivityMonitor();
  result = sub_217751B88();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for NetworkConnectivityMonitor()
{
  result = qword_280BE3378;
  if (!qword_280BE3378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217514AE8()
{
  sub_217514E44();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_217514E44()
{
  if (!qword_280BE73D0)
  {
    v0 = sub_217751C28();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE73D0);
    }
  }
}

uint64_t sub_217514EA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28E10, &unk_217772C28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_217514FAC;

  return sub_217513BC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_217514FAC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t NotificationObserver.__allocating_init(name:object:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_69();
  v8 = swift_allocObject();
  NotificationObserver.init(name:object:handler:)(a1, a2, a3, a4);
  return v8;
}

void *NotificationObserver.init(name:object:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v4[2] = a1;
  swift_unknownObjectWeakAssign();
  v4[5] = a3;
  v4[6] = a4;
  v8 = objc_opt_self();
  v9 = a1;

  v10 = [v8 defaultCenter];
  v4[4] = v10;
  v11 = v4[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;

  v14 = v11;
  [v13 addObserver:v4 selector:sel_handleNotification_ name:v14 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_217515268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  OUTLINED_FUNCTION_1_69();
  v12 = swift_allocObject();
  swift_unknownObjectRetain();

  NotificationObserver.init(name:object:handler:)(a1, a2, a6, v11);
  return v12;
}

uint64_t sub_2175152FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2177513E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v19 - v13;
  v15 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  (*(v7 + 32))(&v17[v16], &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_21765A6D8(0, 0, v14, &unk_217772CD8, v17);
}

uint64_t sub_2175154C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_2173BA694;

  return v11(a6);
}

uint64_t sub_2175155BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2177513E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D78, &qword_217759EA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_217752538();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v7 + 16))(v10, a1, v6);
  sub_217752518();

  v17 = sub_217752508();
  v18 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v7 + 32))(&v19[v18], v10, v6);
  sub_21765A6D8(0, 0, v15, &unk_217772CE8, v19);
}

uint64_t sub_2175157B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_217752518();
  v6[3] = sub_217752508();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_2175158CC;

  return v12(a6);
}

uint64_t sub_2175158CC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  v7 = sub_217752498();

  return MEMORY[0x2822009F8](sub_2175159FC, v7, v6);
}

uint64_t sub_2175159FC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t NotificationObserver.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v1;
  v5 = v2;
  [v4 removeObserver:v0 name:v5 object:Strong];

  swift_unknownObjectRelease();
  sub_217515AF0(v0 + 24);

  v6 = *(v0 + 48);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  NotificationObserver.deinit();
  v0 = OUTLINED_FUNCTION_1_69();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_217515B44()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t NotificationObserver.description.getter()
{
  v1 = v0;
  MEMORY[0x21CEA23B0](60, 0xE100000000000000);
  v2 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = sub_217751F48();
  v7 = v6;

  MEMORY[0x21CEA23B0](v5, v7);

  MEMORY[0x21CEA23B0](8250, 0xE200000000000000);
  sub_217752C78();
  v8 = v1[2];
  v9 = sub_217751F48();
  MEMORY[0x21CEA23B0](v9);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](0x3D20656D616E203BLL, 0xEA00000000002220);

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v10 = sub_217751FA8();
    MEMORY[0x21CEA23B0](v10);

    MEMORY[0x21CEA23B0](0x7463656A626F203BLL, 0xEB00000000203D20);
    swift_unknownObjectRelease();
  }

  sub_217515F5C();
  v11 = v1[4];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  v15 = sub_2177528A8();

  if (v15)
  {
    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177AFB10);
  }

  else
  {
    v16 = [v13 description];
    v17 = sub_217751F48();
    v19 = v18;

    MEMORY[0x21CEA23B0](v17, v19);

    MEMORY[0x21CEA23B0](0x7265746E6563203BLL, 0xEB00000000203D20);
  }

  MEMORY[0x21CEA23B0](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_217515F5C()
{
  result = qword_27CB28E18;
  if (!qword_27CB28E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CB28E18);
  }

  return result;
}

uint64_t sub_217515FF0()
{
  v1 = *(*(sub_2177513E8() - 8) + 80);
  OUTLINED_FUNCTION_4_69();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_0_76(v2);

  return sub_2175154C4(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_2177513E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_217516198()
{
  v1 = *(*(sub_2177513E8() - 8) + 80);
  OUTLINED_FUNCTION_4_69();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_0_76(v2);

  return sub_2175157B0(v3, v4, v5, v6, v7, v8);
}

uint64_t TitledSection.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

uint64_t TitledSection.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217752AA8();

  strcpy(v4, "titledSection:");
  MEMORY[0x21CEA23B0](v1, v2);
  return v4[0];
}

uint64_t static TitledSection.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t TitledSection.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_217751FF8();
}

uint64_t TitledSection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2175163B8@<X0>(uint64_t *a1@<X8>)
{
  result = TitledSection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2175163E4()
{
  result = qword_27CB28E20[0];
  if (!qword_27CB28E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB28E20);
  }

  return result;
}

uint64_t MusicItemTypeValue.catalogResourceTypes.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0))
  {
    return (*(v1 + 8))();
  }

  sub_217752AA8();

  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t MusicItemTypeValueCollection.catalogResourceTypes.getter()
{
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
  swift_getWitnessTable();
  sub_2173DB3EC();
  v1 = sub_2177521B8();
  sub_2173DAE08(v1, v2);
  v4 = v3;

  return v4;
}

uint64_t sub_2175165F0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  result = MusicItemTypeValue.catalogResourceTypes.getter();
  *a2 = result;
  return result;
}

unint64_t sub_217516658(uint64_t a1)
{
  result = sub_217516BCC();
  if (v3 <= 0x3F)
  {
    result = _s14UpdateTriggersV8IteratorCMa(319);
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = sub_2177528F8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}