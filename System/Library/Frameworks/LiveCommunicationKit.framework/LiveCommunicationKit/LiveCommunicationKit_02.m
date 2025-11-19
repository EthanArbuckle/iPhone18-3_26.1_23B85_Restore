void sub_238B5A444(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_238B5999C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_238B5B164();
      a2 = v7;
      goto LABEL_12;
    }

    sub_238B5B700(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_238B6CE64();
  MEMORY[0x23EE72A40](a1);
  v10 = sub_238B6CEA4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for HandleType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_238B6CE04();
  __break(1u);
}

void sub_238B5A5A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_238B59BEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_238B5B2A4();
      goto LABEL_12;
    }

    sub_238B5B920(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_238B6CAA4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_238B5D154();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_238B6CAB4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_238B6CE04();
  __break(1u);
}

uint64_t sub_238B5A700(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v33 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_238B59E14(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_238B5B3F4();
      goto LABEL_23;
    }

    sub_238B5BB34(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_238B6CE64();
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v14 = v5[3];
  v13 = v5[4];
  MEMORY[0x23EE72A40](v10 + 1);
  v34 = v11;
  v15 = v12;
  sub_238B6C8D4();
  v16 = v14;
  sub_238B6C8D4();
  result = sub_238B6CEA4();
  v17 = v8 + 56;
  v18 = -1 << *(v8 + 32);
  a2 = result & ~v18;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 48);
    while (1)
    {
      v21 = (v20 + 40 * a2);
      if (*v21 == v10)
      {
        v22 = v21[3];
        v23 = v21[4];
        v24 = v21[1] == v34 && v21[2] == v15;
        if (v24 || (result = sub_238B6CDF4(), (result & 1) != 0))
        {
          if (v22 == v16 && v23 == v13)
          {
            break;
          }

          result = sub_238B6CDF4();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v19;
      if (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = sub_238B6CE04();
    __break(1u);
  }

LABEL_23:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48) + 40 * a2;
  v28 = *(v33 + 16);
  *v27 = *v33;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(v33 + 32);
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

uint64_t sub_238B5A908(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v77 = *MEMORY[0x277D85DE8];
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_89;
  }

  if (a3)
  {
    sub_238B5A0C0(v6 + 1);
    goto LABEL_8;
  }

  if (v7 > v6)
  {
    result = sub_238B5B56C();
LABEL_89:
    v52 = *v67;
    *(*v67 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    v53 = *(v52 + 48) + 56 * a2;
    v54 = *(v5 + 1);
    *v53 = *v5;
    *(v53 + 16) = v54;
    *(v53 + 32) = *(v5 + 2);
    *(v53 + 48) = *(v5 + 6);
    v55 = *(v52 + 16);
    v39 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v39)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
    }

    *(v52 + 16) = v56;
    v57 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_238B5BDC0(v6 + 1);
LABEL_8:
  v70 = *v3;
  v8 = *(*v3 + 40);
  sub_238B6CE64();
  v9 = *v5;
  v10 = *(v5 + 1);
  v11 = *(v5 + 2);
  v13 = *(v5 + 3);
  v12 = *(v5 + 4);
  v15 = *(v5 + 5);
  v14 = *(v5 + 6);
  MEMORY[0x23EE72A40](v9 + 1);
  v73 = v11;
  v74 = v10;
  sub_238B6C8D4();
  v71 = v12;
  v72 = v13;
  sub_238B6C8D4();
  v68 = v14 >> 60;
  sub_238B6CE84();
  if (v14 >> 60 != 15)
  {
    sub_238B6C4E4();
  }

  result = sub_238B6CEA4();
  v16 = v70;
  v17 = -1 << *(v70 + 32);
  a2 = result & ~v17;
  if (((*(v70 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_89;
  }

  v18 = v15;
  v19 = ~v17;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v14 == 0xC000000000000000;
  }

  v21 = !v20;
  v64 = v21;
  v65 = v9;
  v66 = v14 >> 62;
  v69 = v14;
  v22 = __OFSUB__(HIDWORD(v18), v18);
  v61 = v22;
  v63 = BYTE6(v14);
  while (1)
  {
    v23 = (*(v16 + 48) + 56 * a2);
    if (*v23 != v9)
    {
      goto LABEL_24;
    }

    v24 = v23[3];
    v25 = v23[4];
    v27 = v23[5];
    v26 = v23[6];
    if (v23[1] != v74 || v23[2] != v73)
    {
      result = sub_238B6CDF4();
      if ((result & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v24 != v72 || v25 != v71)
    {
      result = sub_238B6CDF4();
      if ((result & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v26 >> 60 == 15)
    {
      if (v68 > 0xE)
      {
        sub_238B3C90C(v27, v26);
        sub_238B3C90C(v18, v69);
        goto LABEL_103;
      }

LABEL_22:
      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v18, v69);
      sub_238B3C9AC(v27, v26);
      result = sub_238B3C9AC(v18, v69);
LABEL_23:
      v16 = v70;
      goto LABEL_24;
    }

    if (v68 > 0xE)
    {
      goto LABEL_22;
    }

    v30 = v26 >> 62;
    if (v26 >> 62 == 3)
    {
      if (v27)
      {
        v31 = 0;
      }

      else
      {
        v31 = v26 == 0xC000000000000000;
      }

      v32 = v66;
      v34 = !v31 || v66 < 3;
      if (((v34 | v64) & 1) == 0)
      {

        v26 = 0xC000000000000000;
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C90C(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);
        sub_238B3C9AC(0, 0xC000000000000000);

        v27 = 0;
        goto LABEL_103;
      }

LABEL_49:
      v35 = 0;
      goto LABEL_50;
    }

    v32 = v66;
    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_49;
      }

      v43 = *(v27 + 16);
      v42 = *(v27 + 24);
      v39 = __OFSUB__(v42, v43);
      v35 = v42 - v43;
      if (v39)
      {
        goto LABEL_94;
      }
    }

    else if (v30)
    {
      LODWORD(v35) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_95;
      }

      v35 = v35;
    }

    else
    {
      v35 = BYTE6(v26);
    }

LABEL_50:
    if (v32 > 1)
    {
      break;
    }

    v36 = v63;
    if (v32)
    {
      v36 = HIDWORD(v18) - v18;
      if (v61)
      {
        goto LABEL_93;
      }
    }

LABEL_59:
    if (v35 != v36)
    {
      goto LABEL_69;
    }

    if (v35 < 1)
    {
      goto LABEL_102;
    }

    v62 = v5;
    if (v30 > 1)
    {
      LODWORD(v9) = v65;
      if (v30 != 2)
      {
        *&v76[6] = 0;
        *v76 = 0;

        sub_238B3C90C(v27, v26);
        sub_238B3C90C(v27, v26);
        v40 = v18;
        v41 = v69;
        sub_238B3C90C(v18, v69);
        goto LABEL_82;
      }

      v59 = *(v27 + 24);
      v60 = *(v27 + 16);

      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v18, v69);
      v44 = sub_238B6C424();
      if (v44)
      {
        v45 = v44;
        v46 = sub_238B6C444();
        v47 = v60;
        if (__OFSUB__(v60, v46))
        {
          goto LABEL_98;
        }

        v58 = v60 - v46 + v45;
      }

      else
      {
        v58 = 0;
        v47 = v60;
      }

      if (__OFSUB__(v59, v47))
      {
        goto LABEL_97;
      }

      sub_238B6C434();
      v50 = v58;
    }

    else
    {
      LODWORD(v9) = v65;
      if (!v30)
      {
        *v76 = v27;
        *&v76[8] = v26;
        v76[10] = BYTE2(v26);
        v76[11] = BYTE3(v26);
        v76[12] = BYTE4(v26);
        v76[13] = BYTE5(v26);

        sub_238B3C90C(v27, v26);
        sub_238B3C90C(v27, v26);
        v40 = v18;
        v41 = v69;
        sub_238B3C90C(v18, v69);
LABEL_82:
        sub_238B578BC(v76, v40, v41, &v75);
        sub_238B3C9AC(v40, v69);
        v51 = v75;
        goto LABEL_87;
      }

      if (v27 >> 32 < v27)
      {
        goto LABEL_96;
      }

      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v27, v26);
      sub_238B3C90C(v18, v69);
      v48 = sub_238B6C424();
      if (v48)
      {
        v49 = sub_238B6C444();
        if (__OFSUB__(v27, v49))
        {
          goto LABEL_99;
        }

        v48 += v27 - v49;
      }

      sub_238B6C434();
      v50 = v48;
    }

    sub_238B578BC(v50, v18, v69, v76);
    sub_238B3C9AC(v18, v69);
    v51 = v76[0];
LABEL_87:
    sub_238B3C9AC(v27, v26);

    result = sub_238B3C9AC(v27, v26);
    v5 = v62;
    v16 = v70;
    if (v51)
    {
      goto LABEL_104;
    }

LABEL_24:
    a2 = (a2 + 1) & v19;
    if (((*(v70 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_89;
    }
  }

  if (v32 == 2)
  {
    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    v39 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v39)
    {
      goto LABEL_92;
    }

    goto LABEL_59;
  }

  if (v35)
  {
LABEL_69:

    sub_238B3C90C(v27, v26);
    sub_238B3C90C(v27, v26);
    sub_238B3C90C(v18, v69);
    sub_238B3C9AC(v18, v69);
    sub_238B3C9AC(v27, v26);

    result = sub_238B3C9AC(v27, v26);
    LODWORD(v9) = v65;
    goto LABEL_23;
  }

LABEL_102:

  sub_238B3C90C(v27, v26);
  sub_238B3C90C(v27, v26);
  sub_238B3C90C(v18, v69);
  sub_238B3C9AC(v18, v69);
  sub_238B3C9AC(v27, v26);

LABEL_103:
  sub_238B3C9AC(v27, v26);
LABEL_104:
  result = sub_238B6CE04();
  __break(1u);
  return result;
}

void *sub_238B5B164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600D0, &qword_238B709D8);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_238B5B2A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_238B5B3F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A8, &qword_238B709C8);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v19;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_238B5B56C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A0, &qword_238B709C0);
  v2 = *v0;
  v3 = sub_238B6CB54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v18 + 40);
        v24 = *(v18 + 48);
        v25 = *(v4 + 48) + v17;
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v19;
        *(v25 + 24) = v21;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v24;

        result = sub_238B3C90C(v23, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_238B5B700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600D0, &qword_238B709D8);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v17);
      result = sub_238B6CEA4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_238B5B920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600C0, &qword_238B709D0);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_238B6CAA4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_238B5BB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A8, &qword_238B709C8);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v22 = v19[1];
      v21 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v25 = *(v6 + 40);
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v20 + 1);

      sub_238B6C8D4();
      sub_238B6C8D4();
      result = sub_238B6CEA4();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      *(v15 + 24) = v23;
      *(v15 + 32) = v24;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_238B5BDC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF600A0, &qword_238B709C0);
  result = sub_238B6CB64();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v36 = (v9 + 63) >> 6;
    v37 = v3;
    v12 = result + 56;
    v38 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v39 = (v11 - 1) & v11;
LABEL_17:
      v18 = (*(v3 + 48) + 56 * (v15 | (v7 << 6)));
      v19 = *v18;
      v21 = v18[1];
      v20 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      v25 = v18[6];
      v26 = *(v6 + 40);
      sub_238B6CE64();
      MEMORY[0x23EE72A40](v19 + 1);

      sub_238B3C90C(v24, v25);
      sub_238B6C8D4();
      sub_238B6C8D4();
      sub_238B6CE84();
      if (v25 >> 60 != 15)
      {
        sub_238B6C4E4();
      }

      result = sub_238B6CEA4();
      v6 = v38;
      v27 = -1 << *(v38 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v38 + 48) + 56 * v13;
      *v14 = v19;
      *(v14 + 8) = v21;
      *(v14 + 16) = v20;
      *(v14 + 24) = v22;
      *(v14 + 32) = v23;
      *(v14 + 40) = v24;
      *(v14 + 48) = v25;
      ++*(v38 + 16);
      v3 = v37;
      v11 = v39;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v36)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_30;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_30:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_238B5C0B0(__int128 *a1, uint64_t a2)
{
  v25 = a1[2];
  v26 = a1[3];
  v27 = *(a1 + 8);
  v23 = *a1;
  v24 = a1[1];
  sub_238B6CEA4();
  v20 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v22 = v9;
LABEL_12:
    v13 = (*(v20 + 48) + 56 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[4];
    v21 = v13[3];
    v19 = v13[5];
    v18 = v13[6];
    sub_238B6CE64();
    MEMORY[0x23EE72A40](v14 + 1);

    sub_238B3C90C(v19, v18);
    sub_238B6C8D4();
    sub_238B6C8D4();
    sub_238B6CE84();
    if (v18 >> 60 != 15)
    {
      sub_238B6C4E4();
    }

    v6 &= v6 - 1;
    v11 = sub_238B6CEA4();

    result = sub_238B3C9AC(v19, v18);
    v9 = v11 ^ v22;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x23EE72A40](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v22 = v9;
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

BOOL _s20LiveCommunicationKit12ConversationC6UpdateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  v48 = *(a1 + 64);
  v49 = *(a1 + 56);
  v10 = *(a1 + 80);
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v18 = *(a2 + 48);
  v17 = *(a2 + 56);
  v20 = *(a2 + 64);
  v19 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v4)
  {
    v62[0] = *a1;
    v62[1] = v2;
    v62[2] = v4;
    v62[3] = v5;
    v62[4] = v7;
    v63 = v6;
    v64 = v8;
    v54 = v7;
    if (v14)
    {
      v46 = v20;
      v47 = v17;
      v42 = v19;
      v43 = v9;
      v44 = v21;
      v45 = v10;
      LOBYTE(v59[0]) = v11;
      v59[1] = v12;
      v59[2] = v14;
      v59[3] = v13;
      v59[4] = v15;
      v60 = v16;
      v61 = v18;
      v40 = v8;
      v41 = v5;
      v22 = v5;
      v23 = v15;
      v24 = v7;
      v25 = v6;
      v55 = v6;
      v26 = v2;
      v27 = v3;
      sub_238B3EF54(v3, v2, v4, v22, v24, v25, v8);
      sub_238B3EF54(v11, v12, v14, v13, v23, v16, v18);
      sub_238B3EF54(v27, v26, v4, v41, v54, v55, v40);
      v57 = _s20LiveCommunicationKit12ConversationC6MemberV2eeoiySbAE_AEtFZ_0(v62, v59);
      v28 = v60;
      v29 = v61;

      sub_238B3C9AC(v28, v29);
      v30 = v63;
      v31 = v64;

      sub_238B3C9AC(v30, v31);
      sub_238B3F8F8(v27, v26, v4, v41, v54, v55, v40);
      if (!v57)
      {
        return 0;
      }

      v32 = v49;
      if (v49)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    v36 = v11;
    v56 = v15;
    v58 = v18;
    v34 = v8;
    v50 = v2;
    v51 = v3;
    sub_238B3EF54(v3, v2, v4, v5, v54, v6, v8);
    v52 = v36;
    v53 = v13;
    sub_238B3EF54(v36, v12, 0, v13, v56, v16, v18);
    v35 = v50;
    sub_238B3EF54(v51, v50, v4, v5, v54, v6, v34);
    v7 = v54;

    sub_238B3C9AC(v6, v34);
LABEL_11:
    sub_238B3F8F8(v51, v35, v4, v5, v7, v6, v34);
    sub_238B3F8F8(v52, v12, v14, v53, v56, v16, v58);
    return 0;
  }

  v52 = *a2;
  v53 = *(a2 + 24);
  v56 = *(a2 + 32);
  v58 = *(a2 + 48);
  v46 = *(a2 + 64);
  v47 = *(a2 + 56);
  v42 = *(a2 + 72);
  v43 = *(a1 + 72);
  v44 = *(a2 + 80);
  v45 = *(a1 + 80);
  v34 = *(a1 + 48);
  v35 = *(a1 + 8);
  v51 = *a1;
  sub_238B3EF54(v3, v2, 0, v5, v7, v6, v8);
  if (v14)
  {
    sub_238B3EF54(v52, v12, v14, v53, v56, v16, v18);
    goto LABEL_11;
  }

  sub_238B3EF54(v52, v12, 0, v53, v56, v16, v18);
  sub_238B3F8F8(v51, v35, 0, v5, v7, v6, v34);
  v32 = v49;
  if (v49)
  {
LABEL_5:
    if (!v47)
    {
      return 0;
    }

    v33 = sub_238B57AEC(v32, v47);

    if ((v33 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (v47)
  {
    return 0;
  }

LABEL_15:
  if (v48)
  {
    if (!v46)
    {
      return 0;
    }

    v38 = sub_238B57AEC(v48, v46);

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  if ((v45 & 1) == 0)
  {
    v39 = v44;
    if (v43 != v42)
    {
      v39 = 1;
    }

    return (v39 & 1) == 0;
  }

  return (v44 & 1) != 0;
}

uint64_t sub_238B5C664(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HandleType(0);
  v4 = v3;
  v5 = sub_238B5D1A0(&qword_27DF600C8, type metadata accessor for HandleType);
  result = MEMORY[0x23EE725F0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_238B589FC(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_238B5C710(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_238B6CB24())
  {
    v4 = sub_238B5D154();
    v5 = sub_238B5D1A0(&qword_27DF600B8, sub_238B5D154);
    result = MEMORY[0x23EE725F0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE72780](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_238B58AF4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_238B6CB24();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_238B5C870(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_238B3C6B8();
  result = MEMORY[0x23EE725F0](v2, &type metadata for Handle, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v10 = *(v5 + 32);
      sub_238B5D0F8(v9, v7);
      sub_238B58D0C(v7, v9);

      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_238B5C918(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_238B5CFF4();
  result = MEMORY[0x23EE725F0](v2, &type metadata for Conversation.Member, v3);
  v10 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v11[0] = *v5;
      v11[1] = v6;
      v11[2] = *(v5 + 32);
      v12 = *(v5 + 48);
      sub_238B5D048(v11, v9);
      sub_238B58F14(v9, v11);
      v7 = v9[5];
      v8 = v9[6];

      sub_238B3C9AC(v7, v8);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_238B5C9E0()
{
  result = qword_27DF60030;
  if (!qword_27DF60030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60030);
  }

  return result;
}

unint64_t sub_238B5CA34()
{
  result = qword_27DF60038;
  if (!qword_27DF60038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60038);
  }

  return result;
}

unint64_t sub_238B5CA88()
{
  result = qword_27DF60050;
  if (!qword_27DF60050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60050);
  }

  return result;
}

unint64_t sub_238B5CADC()
{
  result = qword_27DF60060;
  if (!qword_27DF60060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60060);
  }

  return result;
}

uint64_t sub_238B5CB30(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF60040, &qword_238B706D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B5CBA8()
{
  result = qword_27DF60070;
  if (!qword_27DF60070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60070);
  }

  return result;
}

unint64_t sub_238B5CC00()
{
  result = qword_27DF60078;
  if (!qword_27DF60078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60078);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LiveCommunicationKit12ConversationC6MemberVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_238B5CC90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_238B5CCEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_238B5CD7C()
{
  result = qword_27DF60080;
  if (!qword_27DF60080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60080);
  }

  return result;
}

unint64_t sub_238B5CDD4()
{
  result = qword_27DF60088;
  if (!qword_27DF60088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60088);
  }

  return result;
}

unint64_t sub_238B5CE2C()
{
  result = qword_27DF60090;
  if (!qword_27DF60090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60090);
  }

  return result;
}

uint64_t sub_238B5CE80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000238B73FB0 == a2;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000238B73FD0 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000238B73FF0 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 3;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_238B5CFF4()
{
  result = qword_27DF60098;
  if (!qword_27DF60098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60098);
  }

  return result;
}

unint64_t sub_238B5D154()
{
  result = qword_27DF600B0;
  if (!qword_27DF600B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF600B0);
  }

  return result;
}

uint64_t sub_238B5D1A0(unint64_t *a1, void (*a2)(uint64_t))
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

LiveCommunicationKit::PlayToneAction::Tone_optional __swiftcall PlayToneAction.Tone.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238B5D228()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  return sub_238B6CEA4();
}

uint64_t sub_238B5D2A0()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  return sub_238B6CEA4();
}

uint64_t PlayToneAction.digits.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits);
  v2 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits + 8);

  return v1;
}

uint64_t PlayToneAction.__allocating_init(conversationUUID:digits:tone:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  PlayToneAction.init(conversationUUID:digits:tone:)(a1, a2, a3, a4);
  return v11;
}

uint64_t PlayToneAction.init(conversationUUID:digits:tone:)(char *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v33 = a2;
  v34 = a1;
  v9 = sub_238B6C534();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238B6C574();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v36 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = *a4;
  v35 = *(v13 + 16);
  v35(&v32 - v17, a1, v12);
  v20 = objc_allocWithZone(MEMORY[0x277CBAFE0]);
  v21 = sub_238B6C544();
  v22 = a3;
  v23 = sub_238B6C844();
  v24 = [v20 initWithCallUUID:v21 digits:v23 type:v19 + 1];

  v25 = *(v13 + 8);
  v25(v18, v12);
  v26 = (v5 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits);
  *v26 = v33;
  v26[1] = v22;
  *(v5 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_tone) = v19;
  v27 = v36;
  v28 = v34;
  v35(v36, v34, v12);
  v29 = v37;
  sub_238B6C504();
  v25(v28, v12);
  *(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v24;
  (*(v13 + 32))(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v27, v12);
  v30 = (v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v30 = 0;
  v30[1] = 0;
  (*(v38 + 32))(v5 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v29, v39);
  return v5;
}

uint64_t sub_238B5D68C(void *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_238B6C574();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 digits];
  v13 = sub_238B6C864();
  v15 = v14;

  v16 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits);
  *v16 = v13;
  v16[1] = v15;
  v17 = [a1 type];
  v18 = v17 - 1;
  if ((v17 - 1) >= 3)
  {
    v32 = v4;
    if (qword_27DF5F6A0 != -1)
    {
      swift_once();
    }

    v19 = sub_238B6C6A4();
    __swift_project_value_buffer(v19, qword_27DF60710);
    v20 = a1;
    v21 = sub_238B6C684();
    v22 = sub_238B6CA44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v23 = 136315138;
      v35 = [v20 type];
      v24 = sub_238B6C8B4();
      v26 = sub_238B33240(v24, v25, &v36);

      *(v23 + 4) = v26;
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x23EE73110](v27, -1, -1);
      MEMORY[0x23EE73110](v23, -1, -1);
    }

    v18 = 0;
    v4 = v32;
  }

  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_tone) = v18;
  v28 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v11, v33);
  v29 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v29 = 0;
  v29[1] = 0;
  (*(v34 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v7, v4);
  return v2;
}

uint64_t PlayToneAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits + 8);

  return v0;
}

uint64_t PlayToneAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit14PlayToneAction_digits + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_238B5DC70()
{
  result = qword_27DF600D8;
  if (!qword_27DF600D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF600D8);
  }

  return result;
}

uint64_t type metadata accessor for PlayToneAction()
{
  result = qword_27DF600E0;
  if (!qword_27DF600E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238B5DDB8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[*a4];
  v5 = *v4;
  v6 = *(v4 + 1);
  v8 = a1;

  v5(v7);
}

void sub_238B5DEA0(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = &a1[*a5];
  v8 = *v6;
  v7 = *(v6 + 1);
  v9 = a4;
  v10 = a1;

  v8(v9);
}

id sub_238B5DF20()
{
  v1 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidReset];
  *v1 = nullsub_1;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidBegin];
  *v2 = nullsub_1;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidActivateAudioSession];
  *v3 = nullsub_1;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderDidDeactivateAudioSession];
  *v4 = nullsub_1;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderTimedOutPerformingAction];
  *v5 = nullsub_1;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAction];
  *v6 = nullsub_1;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformStartCallAction];
  *v7 = nullsub_1;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformAnswerCallAction];
  *v8 = nullsub_1;
  *(v8 + 1) = 0;
  v9 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformEndCallAction];
  *v9 = nullsub_1;
  *(v9 + 1) = 0;
  v10 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetHeldCallAction];
  *v10 = nullsub_1;
  *(v10 + 1) = 0;
  v11 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetMutedCallAction];
  *v11 = nullsub_1;
  *(v11 + 1) = 0;
  v12 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetGroupCallAction];
  *v12 = nullsub_1;
  *(v12 + 1) = 0;
  v13 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformPlayDTMFCallAction];
  *v13 = nullsub_1;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformShareIdentityCallAction];
  *v14 = nullsub_1;
  *(v14 + 1) = 0;
  v15 = &v0[OBJC_IVAR____TtC20LiveCommunicationKit19CallProviderWrapper_onProviderPerformSetTranslatingCallAction];
  *v15 = nullsub_1;
  *(v15 + 1) = 0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for CallProviderWrapper();
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_238B5E158()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallProviderWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t EndConversationAction.__allocating_init(conversationUUID:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  EndConversationAction.init(conversationUUID:)(a1);
  return v5;
}

uint64_t EndConversationAction.init(conversationUUID:)(char *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238B6C574();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a1, v7);
  v13 = objc_allocWithZone(MEMORY[0x277CBAFC0]);
  v14 = sub_238B6C544();
  v15 = [v13 initWithCallUUID_];

  v16 = *(v8 + 8);
  v16(v11, v7);
  v12(v11, a1, v7);
  v17 = v21;
  sub_238B6C504();
  v16(a1, v7);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v15;
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v11, v7);
  v18 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v18 = 0;
  v18[1] = 0;
  (*(v22 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v17, v23);
  return v2;
}

void EndConversationAction.fulfill(dateEnded:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_238B6C534();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v10 = sub_238B6C6A4();
  __swift_project_value_buffer(v10, qword_27DF60710);
  (*(v6 + 16))(v9, a1, v5);

  v11 = sub_238B6C684();
  v12 = sub_238B6CA44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26[1] = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26[2] = v1;
    v27 = v15;
    *v14 = 136315394;

    v16 = sub_238B6C8B4();
    v18 = sub_238B33240(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_238B484E0();
    v19 = sub_238B6CDD4();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_238B33240(v19, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_238B2C000, v11, v12, "Fulfilling action %s with dateEnded %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE73110](v15, -1, -1);
    MEMORY[0x23EE73110](v14, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v23 = *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = sub_238B6C4F4();
  [v24 fulfillWithDateEnded_];
}

uint64_t EndConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t EndConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EndConversationAction()
{
  result = qword_27DF601D0;
  if (!qword_27DF601D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UnmergeConversationAction.__allocating_init(conversationUUID:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  UnmergeConversationAction.init(conversationUUID:)(a1);
  return v5;
}

uint64_t UnmergeConversationAction.init(conversationUUID:)(char *a1)
{
  v2 = v1;
  v4 = sub_238B6C534();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5FC78, &qword_238B6F040);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = sub_238B6C574();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v12 + 16);
  v28 = a1;
  v19(&v28 - v17, a1, v11);
  (*(v12 + 56))(v10, 1, 1, v11);
  v20 = sub_238B6C544();
  v21 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v21 = sub_238B6C544();
    (*(v12 + 8))(v10, v11);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CBAFF8]) initWithCallUUID:v20 callUUIDToGroupWith:v21];

  v23 = *(v12 + 8);
  v23(v18, v11);
  v24 = v28;
  v19(v16, v28, v11);
  v25 = v29;
  sub_238B6C504();
  v23(v24, v11);
  *(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v22;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v16, v11);
  v26 = (v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v26 = 0;
  v26[1] = 0;
  (*(v30 + 32))(v2 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v25, v31);
  return v2;
}

uint64_t UnmergeConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t UnmergeConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnmergeConversationAction()
{
  result = qword_27DF601E0;
  if (!qword_27DF601E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B5F184()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 40) = 0u;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60218, &qword_238B70C68);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_238B6C7C4();
  os_unfair_lock_lock((v0 + 32));
  sub_238B60230(v0 + 40, v9);
  os_unfair_lock_unlock((v0 + 32));
  os_unfair_lock_lock((v0 + 32));
  sub_238B5FB10(v0 + 40);
  sub_238B60230(v9, v0 + 40);
  os_unfair_lock_unlock((v0 + 32));
  sub_238B5FB10(v9);
  v5 = *(v0 + 16);

  sub_238B6C784();

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_238B70C78;
  *(v7 + 24) = v1;
  sub_238B603EC();

  sub_238B6C774();

  return v1;
}

void sub_238B5F300()
{
  if (qword_27DF5F6A0 != -1)
  {
    swift_once();
  }

  v0 = sub_238B6C6A4();
  __swift_project_value_buffer(v0, qword_27DF60710);
  oslog = sub_238B6C684();
  v1 = sub_238B6CA44();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_238B33240(0xD000000000000034, 0x8000000238B74490, &v5);
    _os_log_impl(&dword_238B2C000, oslog, v1, "Server disconnected from %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x23EE73110](v3, -1, -1);
    MEMORY[0x23EE73110](v2, -1, -1);
  }
}

uint64_t sub_238B5F448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238B37F2C;

  return sub_238B60440();
}

uint64_t sub_238B5F4EC(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238B3B780;

  return v7(v3);
}

uint64_t sub_238B5F5E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(type metadata accessor for ConversationHistoryManager.RecentConversation() - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_238B6C574();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B5F6F8, 0, 0);
}

uint64_t sub_238B5F6F8()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[8];
    v5 = v0[5];
    v20 = MEMORY[0x277D84F90];
    sub_238B5FBD8(0, v2, 0);
    v3 = v20;
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = *(v5 + 72);
    do
    {
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      sub_238B5FBF8(v6, v9);
      (*(v4 + 16))(v7, v9, v8);
      sub_238B5FC5C(v9);
      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_238B5FBD8(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[9];
      v13 = v0[7];
      *(v20 + 16) = v11 + 1;
      (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v19;
      --v2;
    }

    while (v2);
  }

  v0[10] = v3;
  v14 = *(v0[4] + 16);
  v0[2] = v3;
  v15 = *(MEMORY[0x277CF7E50] + 4);
  v16 = swift_task_alloc();
  v0[11] = v16;
  v17 = sub_238B5FCB8();
  *v16 = v0;
  v16[1] = sub_238B5F8E0;

  return MEMORY[0x282149828](v0 + 2, &type metadata for ReadMessage, v17);
}

uint64_t sub_238B5F8E0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238B5FA34, 0, 0);
  }

  else
  {
    v5 = v3[9];
    v4 = v3[10];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_238B5FA34()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_238B5FAAC()
{
  v1 = *(v0 + 16);

  sub_238B5FB10(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_238B5FB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60200, &qword_238B70C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_238B5FB78(char *a1, int64_t a2, char a3)
{
  result = sub_238B5FD0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238B5FB98(char *a1, int64_t a2, char a3)
{
  result = sub_238B5FE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238B5FBB8(char *a1, int64_t a2, char a3)
{
  result = sub_238B5FF30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_238B5FBD8(size_t a1, int64_t a2, char a3)
{
  result = sub_238B60058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_238B5FBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationHistoryManager.RecentConversation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B5FC5C(uint64_t a1)
{
  v2 = type metadata accessor for ConversationHistoryManager.RecentConversation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238B5FCB8()
{
  result = qword_27DF60208;
  if (!qword_27DF60208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60208);
  }

  return result;
}

char *sub_238B5FD0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60238, &qword_238B70CA8);
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

char *sub_238B5FE10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60230, &qword_238B70CA0);
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

char *sub_238B5FF30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60228, &qword_238B70C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_238B60058(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60210, &qword_238B70C60);
  v10 = *(sub_238B6C574() - 8);
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
  v15 = *(sub_238B6C574() - 8);
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

uint64_t sub_238B60230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60200, &qword_238B70C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238B602A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238B37F2C;

  return sub_238B5F448();
}

uint64_t sub_238B60338(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238B3B780;

  return sub_238B5F4EC(a1, v5);
}

unint64_t sub_238B603EC()
{
  result = qword_27DF60220;
  if (!qword_27DF60220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60220);
  }

  return result;
}

uint64_t sub_238B60460()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_280B61330);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Handling incoming ConversationHistoryChangedMessage message", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[12];

  os_unfair_lock_lock(v5 + 8);
  sub_238B60230(&v5[10], (v0 + 2));
  os_unfair_lock_unlock(v5 + 8);
  if (v0[5])
  {
    sub_238B60600((v0 + 2), (v0 + 7));
    sub_238B5FB10((v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v6 = off_284B6C800;
    type metadata accessor for ConversationHistoryManager();
    v6();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  else
  {
    sub_238B5FB10((v0 + 2));
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_238B60600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for FetchMessage()
{
  result = qword_27DF60248;
  if (!qword_27DF60248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238B606E8()
{
  sub_238B60754();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_238B60754()
{
  if (!qword_27DF60258)
  {
    type metadata accessor for ConversationHistoryManager.RecentConversation();
    v0 = sub_238B6C614();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF60258);
    }
  }
}

uint64_t sub_238B60854()
{
  v0 = sub_238B6C6B4();
  __swift_allocate_value_buffer(v0, qword_27DF60790);
  v1 = __swift_project_value_buffer(v0, qword_27DF60790);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x8000000238B744D0;
  v2 = *MEMORY[0x277CF7E30];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_238B608F8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60370, &qword_238B71238);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B62004();
  sub_238B6CEC4();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602A8, &qword_238B70E90);
  sub_238B616C8(&qword_27DF602B8, &qword_27DF602C0);
  sub_238B6CDB4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_238B60A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602F8, &qword_238B70F18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  Message = type metadata accessor for FetchMessage();
  v12 = *(*(Message - 8) + 64);
  MEMORY[0x28223BE20](Message - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61C14();
  v16 = v23;
  sub_238B6CEB4();
  if (!v16)
  {
    v17 = v21;
    sub_238B61CCC(&qword_27DF60308, &qword_27DF60240, &qword_238B70CE8);
    sub_238B6CD44();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_238B61C68(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_238B60D10(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602E8, &qword_238B70F10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61ADC();
  sub_238B6CEC4();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602D8, &qword_238B70F08);
  sub_238B61B30(&qword_27DF602F0, &qword_27DF5F9C8);
  sub_238B6CDB4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_238B60EA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DF5F6B8 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6B4();
  v3 = __swift_project_value_buffer(v2, qword_27DF60790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_238B60F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000238B74510 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_238B6CDF4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_238B60FFC(uint64_t a1)
{
  v2 = sub_238B62004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B61038(uint64_t a1)
{
  v2 = sub_238B62004();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_238B61074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_238B61764(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_238B610D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B61168(uint64_t a1)
{
  v2 = sub_238B61C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B611A4(uint64_t a1)
{
  v2 = sub_238B61C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B611F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60310, &qword_238B70F20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61C14();
  sub_238B6CEC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  sub_238B61CCC(&qword_27DF60318, &qword_27DF60240, &qword_238B70CE8);
  sub_238B6CDB4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238B61394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000238B744F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_238B6CDF4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_238B61428(uint64_t a1)
{
  v2 = sub_238B61ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B61464(uint64_t a1)
{
  v2 = sub_238B61ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_238B614A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_238B61920(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_238B614EC()
{
  result = qword_27DF60280;
  if (!qword_27DF60280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60280);
  }

  return result;
}

unint64_t sub_238B61544()
{
  result = qword_27DF60288;
  if (!qword_27DF60288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60288);
  }

  return result;
}

uint64_t sub_238B616C8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF602A8, &qword_238B70E90);
    sub_238B61BCC(a2, type metadata accessor for ConversationHistoryManager.RecentConversation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_238B61764(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60360, &qword_238B71230);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B62004();
  sub_238B6CEB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602A8, &qword_238B70E90);
    sub_238B616C8(&qword_27DF602A0, &qword_27DF602B0);
    sub_238B6CD44();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

void *sub_238B61920(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602C8, &qword_238B70F00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B61ADC();
  sub_238B6CEB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF602D8, &qword_238B70F08);
    sub_238B61B30(&qword_27DF602E0, &qword_27DF5FA00);
    sub_238B6CD44();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

unint64_t sub_238B61ADC()
{
  result = qword_27DF602D0;
  if (!qword_27DF602D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF602D0);
  }

  return result;
}

uint64_t sub_238B61B30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF602D8, &qword_238B70F08);
    sub_238B61BCC(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238B61BCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238B61C14()
{
  result = qword_27DF60300;
  if (!qword_27DF60300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60300);
  }

  return result;
}

uint64_t sub_238B61C68(uint64_t a1, uint64_t a2)
{
  Message = type metadata accessor for FetchMessage();
  (*(*(Message - 8) + 32))(a2, a1, Message);
  return a2;
}

uint64_t sub_238B61CCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238B61D48()
{
  result = qword_27DF60320;
  if (!qword_27DF60320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60320);
  }

  return result;
}

unint64_t sub_238B61DA0()
{
  result = qword_27DF60328;
  if (!qword_27DF60328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60328);
  }

  return result;
}

unint64_t sub_238B61DF8()
{
  result = qword_27DF60330;
  if (!qword_27DF60330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60330);
  }

  return result;
}

unint64_t sub_238B61E50()
{
  result = qword_27DF60338;
  if (!qword_27DF60338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60338);
  }

  return result;
}

unint64_t sub_238B61EA8()
{
  result = qword_27DF60340;
  if (!qword_27DF60340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60340);
  }

  return result;
}

unint64_t sub_238B61F00()
{
  result = qword_27DF60348;
  if (!qword_27DF60348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60348);
  }

  return result;
}

unint64_t sub_238B61F58()
{
  result = qword_27DF60350;
  if (!qword_27DF60350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60350);
  }

  return result;
}

unint64_t sub_238B61FB0()
{
  result = qword_27DF60358;
  if (!qword_27DF60358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60358);
  }

  return result;
}

unint64_t sub_238B62004()
{
  result = qword_27DF60368;
  if (!qword_27DF60368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60368);
  }

  return result;
}

unint64_t sub_238B6206C()
{
  result = qword_27DF60378;
  if (!qword_27DF60378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60378);
  }

  return result;
}

unint64_t sub_238B620C4()
{
  result = qword_27DF60380;
  if (!qword_27DF60380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60380);
  }

  return result;
}

unint64_t sub_238B6211C()
{
  result = qword_27DF60388;
  if (!qword_27DF60388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60388);
  }

  return result;
}

uint64_t ConversationHistoryService.__allocating_init(server:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ConversationHistoryService.init(server:)(a1);
  return v2;
}

void *ConversationHistoryService.init(server:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v5 = sub_238B6C6A4();
  __swift_project_value_buffer(v5, qword_280B61330);
  v6 = sub_238B6C684();
  v7 = sub_238B6CA44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_238B2C000, v6, v7, "Initializing conversation history service", v8, 2u);
    MEMORY[0x23EE73110](v8, -1, -1);
  }

  *(swift_allocObject() + 16) = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60390, &qword_238B71350);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v2[2] = sub_238B6C6F4();
  sub_238B43D04(a1, (v2 + 3));
  return v2;
}

Swift::Void __swiftcall ConversationHistoryService.start()()
{
  v1 = v0;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_280B61330);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238B2C000, v3, v4, "Starting conversation history service", v5, 2u);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  type metadata accessor for FetchMessage();
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_238B71360;
  *(v7 + 24) = v1;
  sub_238B638A4();

  sub_238B6C724();

  sub_238B5FCB8();

  sub_238B6C744();

  sub_238B6C754();
}

uint64_t sub_238B62580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B62618;

  return sub_238B62718(a1);
}

uint64_t sub_238B62618(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_238B62718(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(type metadata accessor for FetchMessage() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B627A8, 0, 0);
}

uint64_t sub_238B627A8()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_280B61330);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Handling incoming FetchMessage message", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[7];

  sub_238B64254(v5, &qword_27DF603A8, &unk_238B71460);
  v6 = v0[9];
  v7 = v0[7];
  sub_238B60600(v0[8] + 24, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603A8, &unk_238B71460);
  sub_238B6C6D4();
  v10 = *(v9 + 8);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_238B62A2C;
  v13 = v0[9];

  return v15(v13, v8, v9);
}

uint64_t sub_238B62A2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[9];
  if (v1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = sub_238B62C68;
  }

  else
  {
    v4[12] = a1;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
    (*(*(v10 - 8) + 8))(v7, v10);
    v9 = sub_238B62BF4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_238B62BF4()
{
  v1 = v0[9];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v0[1];
  v3 = v0[12];

  return v2(v3);
}

uint64_t sub_238B62C68()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_238B62CD4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_238B62DCC;

  return v8(a2);
}

uint64_t sub_238B62DCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_238B62EDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B37F2C;

  return sub_238B62F74(a1);
}

uint64_t sub_238B62F74(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_238B62F94, 0, 0);
}

uint64_t sub_238B62F94()
{
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v1 = sub_238B6C6A4();
  __swift_project_value_buffer(v1, qword_280B61330);
  v2 = sub_238B6C684();
  v3 = sub_238B6CA44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238B2C000, v2, v3, "Handling incoming ReadMessage message", v4, 2u);
    MEMORY[0x23EE73110](v4, -1, -1);
  }

  v5 = v0[8];

  sub_238B64254(v5, &qword_27DF603A0, &qword_238B71450);
  v6 = v0[8];
  sub_238B60600(v0[9] + 24, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603A0, &qword_238B71450);
  sub_238B6C6D4();
  v9 = v0[7];
  v0[10] = v9;
  v10 = *(v8 + 16);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_238B63210;

  return v14(v9, v7, v8);
}

uint64_t sub_238B63210()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_238B63390;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_238B6332C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238B6332C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238B63390()
{
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall ConversationHistoryService.notifyClientsOfChange()()
{
  v1 = v0;
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v2 = sub_238B6C6A4();
  __swift_project_value_buffer(v2, qword_280B61330);
  v3 = sub_238B6C684();
  v4 = sub_238B6CA44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238B2C000, v3, v4, "Notifying clients of change", v5, 2u);
    MEMORY[0x23EE73110](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  sub_238B6C764();
}

void sub_238B63504()
{
  sub_238B603EC();
  sub_238B6C6E4();
  if (v0)
  {
    if (qword_280B60640 != -1)
    {
      swift_once();
    }

    v1 = sub_238B6C6A4();
    __swift_project_value_buffer(v1, qword_280B61330);
    v2 = v0;
    v3 = sub_238B6C684();
    v4 = sub_238B6CA34();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_238B2C000, v3, v4, "Error notifying clients of conversation history change %@", v5, 0xCu);
      sub_238B42A88(v6);
      MEMORY[0x23EE73110](v6, -1, -1);
      MEMORY[0x23EE73110](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ConversationHistoryService.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ConversationHistoryService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_238B63744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B64358;

  return sub_238B62580(a1);
}

uint64_t sub_238B637DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_238B3B780;

  return sub_238B62CD4(a1, a2, v7);
}

unint64_t sub_238B638A4()
{
  result = qword_27DF60398;
  if (!qword_27DF60398)
  {
    type metadata accessor for FetchMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60398);
  }

  return result;
}

uint64_t sub_238B638FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_238B3B780;

  return sub_238B62EDC(a1);
}

uint64_t dispatch thunk of ConversationHistoryServer.recentConversations(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238B63ABC;

  return v11(a1, a2, a3);
}

uint64_t sub_238B63ABC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ConversationHistoryServer.markAsRead(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238B37F2C;

  return v11(a1, a2, a3);
}

uint64_t sub_238B63D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603B0, &unk_238B71470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  sub_238B6C714();
  if (v38 == 2 || (v38 & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = sub_238B6C704();
  v12 = v11;
  v13 = _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0();
  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!v14)
  {
LABEL_9:

    goto LABEL_22;
  }

  if (v10 == v13 && v12 == v14)
  {

LABEL_12:
    if (qword_280B60640 != -1)
    {
      swift_once();
    }

    v16 = sub_238B6C6A4();
    __swift_project_value_buffer(v16, qword_280B61330);
    (*(v3 + 16))(v9, a1, v2);
    v17 = sub_238B6C684();
    v18 = sub_238B6CA44();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136315138;
      v21 = sub_238B6C704();
      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0x6C646E7562206F6ELL;
      }

      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0xEC00000044492065;
      }

      (*(v3 + 8))(v9, v2);
      v25 = sub_238B33240(v23, v24, &v38);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_238B2C000, v17, v18, "Accepting incoming XPC connection request %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x23EE73110](v20, -1, -1);
      MEMORY[0x23EE73110](v19, -1, -1);

      return 1;
    }

    else
    {

      (*(v3 + 8))(v9, v2);
      return 1;
    }
  }

  v15 = sub_238B6CDF4();

  if (v15)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (qword_280B60640 != -1)
  {
    swift_once();
  }

  v27 = sub_238B6C6A4();
  __swift_project_value_buffer(v27, qword_280B61330);
  (*(v3 + 16))(v7, a1, v2);
  v28 = sub_238B6C684();
  v29 = sub_238B6CA44();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136315138;
    v32 = sub_238B6C704();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0x6C646E7562206F6ELL;
    }

    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xEC00000044492065;
    }

    (*(v3 + 8))(v7, v2);
    v36 = sub_238B33240(v34, v35, &v38);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_238B2C000, v28, v29, "Rejecting connection from unentitled process %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x23EE73110](v31, -1, -1);
    MEMORY[0x23EE73110](v30, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

uint64_t sub_238B64254(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = _s20LiveCommunicationKit11DefaultAppsV25defaultDialingAppBundleIDSSSgvgZ_0();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_238B6C6C4();
  if (!v7)
  {
    if (!v9)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:

LABEL_8:
    sub_238B45EE4();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  if (v5 == result && v7 == v9)
  {
  }

  v11 = sub_238B6CDF4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_238B6435C()
{
  v0 = type metadata accessor for ConversationHistoryManager();
  v1 = swift_allocObject();
  type metadata accessor for ConversationHistoryClient();
  swift_allocObject();
  v2 = sub_238B5F184();
  *(v1 + 16) = v2;
  v4[3] = v0;
  v4[4] = &off_284B6C7F8;
  v4[0] = v1;

  os_unfair_lock_lock(v2 + 8);
  sub_238B5FB10(&v2[10]);
  sub_238B60230(v4, &v2[10]);
  os_unfair_lock_unlock(v2 + 8);
  result = sub_238B5FB10(v4);
  qword_27DF603B8 = v1;
  return result;
}

uint64_t static ConversationHistoryManager.sharedInstance.getter()
{
  if (qword_27DF5F6C0 != -1)
  {
    swift_once();
  }
}

uint64_t ConversationHistoryManager.recentConversations(matching:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  Message = type metadata accessor for FetchMessage();
  v2[5] = Message;
  v4 = *(*(Message - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238B64500, 0, 0);
}

uint64_t sub_238B64500()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(*(v0[4] + 16) + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60240, &qword_238B70CE8);
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  v5 = *(MEMORY[0x277CF7E48] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_238B681A4(&qword_27DF60398, type metadata accessor for FetchMessage);
  *v6 = v0;
  v6[1] = sub_238B64634;
  v9 = v0[5];
  v8 = v0[6];

  return MEMORY[0x282149820](v0 + 2, v8, v9, v7);
}

uint64_t sub_238B64634()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  sub_238B64CD0(v3, type metadata accessor for FetchMessage);
  if (v0)
  {
    v4 = sub_238B647E4;
  }

  else
  {
    v4 = sub_238B64778;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_238B64778()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_238B647E4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t ConversationHistoryManager.markConversationsAsRead(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238B64868, 0, 0);
}

uint64_t sub_238B64868()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_238B473CC;
  v3 = v0[2];

  return sub_238B5F5E0(v3);
}

uint64_t ConversationHistoryManager.markConversationAsRead(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238B64924, 0, 0);
}

uint64_t sub_238B64924()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603C0, &qword_238B714B0);
  v3 = *(type metadata accessor for ConversationHistoryManager.RecentConversation() - 8);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  *(v0 + 56) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 32) = v7;
  *(v7 + 16) = xmmword_238B71480;
  sub_238B5FBF8(v1, v7 + v6);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_238B64A68;

  return sub_238B5F5E0(v7);
}

uint64_t sub_238B64A68()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238B64BE4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 32);
    v5 = (*(v3 + 56) + 32) & ~*(v3 + 56);
    swift_setDeallocating();
    sub_238B64CD0(v4 + v5, type metadata accessor for ConversationHistoryManager.RecentConversation);
    swift_deallocClassInstance();
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_238B64BE4()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 56) + 32) & ~*(v0 + 56);
  swift_setDeallocating();
  sub_238B64CD0(v1 + v2, type metadata accessor for ConversationHistoryManager.RecentConversation);
  swift_deallocClassInstance();
  v3 = *(v0 + 8);
  v4 = *(v0 + 48);

  return v3();
}

uint64_t type metadata accessor for ConversationHistoryManager.RecentConversation()
{
  result = qword_27DF60500;
  if (!qword_27DF60500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238B64CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConversationHistoryManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ConversationHistoryManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_238B64D9C(uint64_t a1)
{
  v2 = sub_238B65778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B64DD8(uint64_t a1)
{
  v2 = sub_238B65778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B64E14(uint64_t a1)
{
  v2 = sub_238B65724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B64E50(uint64_t a1)
{
  v2 = sub_238B65724();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_238B64E8C()
{
  v1 = *v0;
  v2 = 0x657463656E6E6F63;
  v3 = 0xD000000000000011;
  v4 = 0x656C6C65636E6163;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64657373696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238B64F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B68EB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B64F5C(uint64_t a1)
{
  v2 = sub_238B6567C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B64F98(uint64_t a1)
{
  v2 = sub_238B6567C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B64FD4(uint64_t a1)
{
  v2 = sub_238B65820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B65010(uint64_t a1)
{
  v2 = sub_238B65820();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B6504C(uint64_t a1)
{
  v2 = sub_238B657CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B65088(uint64_t a1)
{
  v2 = sub_238B657CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B650C4(uint64_t a1)
{
  v2 = sub_238B656D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B65100(uint64_t a1)
{
  v2 = sub_238B656D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHistoryManager.RecentConversation.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603C8, &qword_238B714B8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603D0, &qword_238B714C0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603D8, &qword_238B714C8);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603E0, &qword_238B714D0);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603E8, &qword_238B714D8);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF603F0, &qword_238B714E0);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_238B6567C();
  sub_238B6CEC4();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_238B657CC();
      v38 = v52;
      sub_238B6CD64();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_238B65820();
      v38 = v52;
      sub_238B6CD64();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_238B65778();
      v29 = v40;
      v30 = v52;
      sub_238B6CD64();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_238B65724();
      v29 = v43;
      v30 = v52;
      sub_238B6CD64();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_238B656D0();
      v29 = v46;
      v30 = v52;
      sub_238B6CD64();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_238B6567C()
{
  result = qword_27DF603F8;
  if (!qword_27DF603F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF603F8);
  }

  return result;
}

unint64_t sub_238B656D0()
{
  result = qword_27DF60400;
  if (!qword_27DF60400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60400);
  }

  return result;
}

unint64_t sub_238B65724()
{
  result = qword_27DF60408;
  if (!qword_27DF60408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60408);
  }

  return result;
}

unint64_t sub_238B65778()
{
  result = qword_27DF60410;
  if (!qword_27DF60410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60410);
  }

  return result;
}

unint64_t sub_238B657CC()
{
  result = qword_27DF60418;
  if (!qword_27DF60418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60418);
  }

  return result;
}

unint64_t sub_238B65820()
{
  result = qword_27DF60420;
  if (!qword_27DF60420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60420);
  }

  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.Status.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60428, &qword_238B714E8);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60430, &qword_238B714F0);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60438, &qword_238B714F8);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60440, &qword_238B71500);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60448, &qword_238B71508);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60450, &unk_238B71510);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_238B6567C();
  v26 = v69;
  sub_238B6CEB4();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_238B6CD54();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_238B314E8();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_238B6CBE4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0) + 48);
    *v41 = &type metadata for ConversationHistoryManager.RecentConversation.Status;
    sub_238B6CCD4();
    sub_238B6CBD4();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_238B657CC();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_238B6CCC4();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_238B65820();
      v45 = v54;
      sub_238B6CCC4();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_238B65778();
    v46 = v31;
    v47 = v54;
    sub_238B6CCC4();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_238B656D0();
    v49 = v64;
    v50 = v54;
    sub_238B6CCC4();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  v75 = 3;
  sub_238B65724();
  v38 = v54;
  sub_238B6CCC4();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1Tm(v43);
}

uint64_t sub_238B660E8()
{
  if (*v0)
  {
    return 0x676E696D6F636E69;
  }

  else
  {
    return 0x676E696F6774756FLL;
  }
}

uint64_t sub_238B6611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696F6774756FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_238B6CDF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238B6CDF4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_238B661F8(uint64_t a1)
{
  v2 = sub_238B66610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B66234(uint64_t a1)
{
  v2 = sub_238B66610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B66270(uint64_t a1)
{
  v2 = sub_238B66664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B662AC(uint64_t a1)
{
  v2 = sub_238B66664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B662E8(uint64_t a1)
{
  v2 = sub_238B666B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B66324(uint64_t a1)
{
  v2 = sub_238B666B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHistoryManager.RecentConversation.Direction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60458, &qword_238B71520);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60460, &qword_238B71528);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60468, &qword_238B71530);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B66610();
  sub_238B6CEC4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_238B66664();
    v18 = v22;
    sub_238B6CD64();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_238B666B8();
    sub_238B6CD64();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_238B66610()
{
  result = qword_27DF60470;
  if (!qword_27DF60470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60470);
  }

  return result;
}

unint64_t sub_238B66664()
{
  result = qword_27DF60478;
  if (!qword_27DF60478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60478);
  }

  return result;
}

unint64_t sub_238B666B8()
{
  result = qword_27DF60480;
  if (!qword_27DF60480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60480);
  }

  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1);
  return sub_238B6CEA4();
}

uint64_t ConversationHistoryManager.RecentConversation.Direction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60488, &qword_238B71538);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60490, &qword_238B71540);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60498, &qword_238B71548);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B66610();
  v16 = v36;
  sub_238B6CEB4();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_238B6CD54();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_238B3151C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_238B6CBE4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0) + 48);
      *v26 = &type metadata for ConversationHistoryManager.RecentConversation.Direction;
      sub_238B6CCD4();
      sub_238B6CBD4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_238B66664();
        sub_238B6CCC4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_238B666B8();
        sub_238B6CCC4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t ConversationHistoryManager.RecentConversation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238B6C574();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ConversationHistoryManager.RecentConversation.handles.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConversationHistoryManager.RecentConversation() + 20));
}

uint64_t ConversationHistoryManager.RecentConversation.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationHistoryManager.RecentConversation() + 24);
  v4 = sub_238B6C534();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ConversationHistoryManager.RecentConversation.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConversationHistoryManager.RecentConversation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ConversationHistoryManager.RecentConversation();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ConversationHistoryManager.RecentConversation.init(id:handles:date:duration:status:direction:isRead:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v14 = *a4;
  v15 = *a5;
  v16 = sub_238B6C574();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for ConversationHistoryManager.RecentConversation();
  *(a7 + v17[5]) = a2;
  v18 = v17[6];
  v19 = sub_238B6C534();
  result = (*(*(v19 - 8) + 32))(a7 + v18, a3, v19);
  *(a7 + v17[7]) = a8;
  *(a7 + v17[10]) = a6;
  *(a7 + v17[8]) = v14;
  *(a7 + v17[9]) = v15;
  return result;
}

uint64_t sub_238B66F44()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F69746365726964;
  if (v1 != 5)
  {
    v3 = 0x646165527369;
  }

  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0x737574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x73656C646E6168;
  if (v1 != 1)
  {
    v5 = 1702125924;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238B67008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B69074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B6703C(uint64_t a1)
{
  v2 = sub_238B67E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B67078(uint64_t a1)
{
  v2 = sub_238B67E14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationHistoryManager.RecentConversation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF604A0, &unk_238B71550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B67E14();
  sub_238B6CEC4();
  LOBYTE(v17) = 0;
  sub_238B6C574();
  sub_238B681A4(&qword_27DF5F9C8, MEMORY[0x277CC95F0]);
  sub_238B6CDB4();
  if (!v2)
  {
    v11 = type metadata accessor for ConversationHistoryManager.RecentConversation();
    v17 = *(v3 + v11[5]);
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9E0, &qword_238B6E1F8);
    sub_238B36F2C(&qword_27DF5F9E8, sub_238B36E30);
    sub_238B6CDB4();
    v12 = v11[6];
    LOBYTE(v17) = 2;
    sub_238B6C534();
    sub_238B681A4(&qword_27DF5F9D0, MEMORY[0x277CC9578]);
    sub_238B6CDB4();
    v13 = *(v3 + v11[7]);
    LOBYTE(v17) = 3;
    sub_238B6CDA4();
    LOBYTE(v17) = *(v3 + v11[8]);
    HIBYTE(v16) = 4;
    sub_238B67E68();
    sub_238B6CDB4();
    LOBYTE(v17) = *(v3 + v11[9]);
    HIBYTE(v16) = 5;
    sub_238B67EBC();
    sub_238B6CDB4();
    v14 = *(v3 + v11[10]);
    LOBYTE(v17) = 6;
    sub_238B6CD94();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ConversationHistoryManager.RecentConversation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_238B6C574();
  sub_238B681A4(&qword_27DF5F9A0, MEMORY[0x277CC95F0]);
  sub_238B6C814();
  v4 = type metadata accessor for ConversationHistoryManager.RecentConversation();
  sub_238B36CD4(a1, *(v1 + v4[5]));
  v5 = v4[6];
  sub_238B6C534();
  sub_238B681A4(&qword_27DF5F9A8, MEMORY[0x277CC9578]);
  sub_238B6C814();
  v6 = *(v2 + v4[7]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EE72A60](*&v6);
  MEMORY[0x23EE72A40](*(v2 + v4[8]));
  MEMORY[0x23EE72A40](*(v2 + v4[9]));
  v7 = *(v2 + v4[10]);
  return sub_238B6CE84();
}

uint64_t ConversationHistoryManager.RecentConversation.hashValue.getter()
{
  sub_238B6CE64();
  ConversationHistoryManager.RecentConversation.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t ConversationHistoryManager.RecentConversation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_238B6C534();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238B6C574();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF604C0, &qword_238B71560);
  v35 = *(v39 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ConversationHistoryManager.RecentConversation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B67E14();
  v38 = v11;
  v17 = v40;
  sub_238B6CEB4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v5;
  v40 = v12;
  v18 = v15;
  v19 = v33;
  v20 = v34;
  v21 = v36;
  LOBYTE(v42) = 0;
  sub_238B681A4(&qword_27DF5FA00, MEMORY[0x277CC95F0]);
  sub_238B6CD44();
  v22 = *(v19 + 32);
  v23 = v37;
  v37 = v6;
  v22(v18, v23, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F9E0, &qword_238B6E1F8);
  v41 = 1;
  sub_238B36F2C(&qword_27DF5FA18, sub_238B36ED8);
  sub_238B6CD44();
  v24 = v40;
  *(v18 + v40[5]) = v42;
  LOBYTE(v42) = 2;
  sub_238B681A4(&qword_27DF5FA08, MEMORY[0x277CC9578]);
  v25 = v31;
  v30 = 0;
  sub_238B6CD44();
  (*(v20 + 32))(v18 + v24[6], v25, v21);
  LOBYTE(v42) = 3;
  sub_238B6CD34();
  *(v18 + v24[7]) = v26;
  v41 = 4;
  sub_238B67F10();
  sub_238B6CD44();
  *(v18 + v24[8]) = v42;
  v41 = 5;
  sub_238B67F64();
  sub_238B6CD44();
  v27 = v35;
  *(v18 + v24[9]) = v42;
  LOBYTE(v42) = 6;
  v28 = sub_238B6CD24();
  (*(v27 + 8))(v38, v39);
  *(v18 + v24[10]) = v28 & 1;
  sub_238B5FBF8(v18, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_238B64CD0(v18, type metadata accessor for ConversationHistoryManager.RecentConversation);
}

uint64_t sub_238B67C38()
{
  sub_238B6CE64();
  ConversationHistoryManager.RecentConversation.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t sub_238B67C7C()
{
  sub_238B6CE64();
  ConversationHistoryManager.RecentConversation.hash(into:)(v1);
  return sub_238B6CEA4();
}

uint64_t static NSNotificationCenter.MessageIdentifier<>.conversationHistoryDidUpdateMessage.getter()
{
  v0 = sub_238B67FB8();

  return MEMORY[0x28211EE90](&type metadata for ConversationHistoryManager.ConversationHistoryDidUpdate, v0);
}

uint64_t _s20LiveCommunicationKit26ConversationHistoryManagerC06RecentD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_238B6C554() & 1) != 0 && (v4 = type metadata accessor for ConversationHistoryManager.RecentConversation(), (sub_238B3BC14(*(a1 + v4[5]), *(a2 + v4[5]))) && (v5 = v4[6], (sub_238B6C514()) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v6 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_238B67E14()
{
  result = qword_27DF604A8;
  if (!qword_27DF604A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604A8);
  }

  return result;
}

unint64_t sub_238B67E68()
{
  result = qword_27DF604B0;
  if (!qword_27DF604B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604B0);
  }

  return result;
}

unint64_t sub_238B67EBC()
{
  result = qword_27DF604B8;
  if (!qword_27DF604B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604B8);
  }

  return result;
}

unint64_t sub_238B67F10()
{
  result = qword_27DF604C8;
  if (!qword_27DF604C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604C8);
  }

  return result;
}

unint64_t sub_238B67F64()
{
  result = qword_27DF604D0;
  if (!qword_27DF604D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604D0);
  }

  return result;
}

unint64_t sub_238B67FB8()
{
  result = qword_27DF604D8;
  if (!qword_27DF604D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604D8);
  }

  return result;
}

unint64_t sub_238B68010()
{
  result = qword_27DF604E0;
  if (!qword_27DF604E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604E0);
  }

  return result;
}

unint64_t sub_238B68068()
{
  result = qword_27DF604E8;
  if (!qword_27DF604E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604E8);
  }

  return result;
}

unint64_t sub_238B680C0()
{
  result = qword_27DF604F0;
  if (!qword_27DF604F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF604F0);
  }

  return result;
}

uint64_t sub_238B681A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_238B68260()
{
  sub_238B6C574();
  if (v0 <= 0x3F)
  {
    sub_238B68328();
    if (v1 <= 0x3F)
    {
      sub_238B6C534();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238B68328()
{
  if (!qword_27DF5FA70)
  {
    v0 = sub_238B6C984();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF5FA70);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConversationHistoryManager.RecentConversation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationHistoryManager.RecentConversation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11EndedReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11EndedReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238B686CC()
{
  result = qword_27DF60510;
  if (!qword_27DF60510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60510);
  }

  return result;
}

unint64_t sub_238B68724()
{
  result = qword_27DF60518;
  if (!qword_27DF60518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60518);
  }

  return result;
}

unint64_t sub_238B6877C()
{
  result = qword_27DF60520;
  if (!qword_27DF60520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60520);
  }

  return result;
}

unint64_t sub_238B687D4()
{
  result = qword_27DF60528;
  if (!qword_27DF60528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60528);
  }

  return result;
}

unint64_t sub_238B6882C()
{
  result = qword_27DF60530;
  if (!qword_27DF60530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60530);
  }

  return result;
}

unint64_t sub_238B68884()
{
  result = qword_27DF60538;
  if (!qword_27DF60538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60538);
  }

  return result;
}

unint64_t sub_238B688DC()
{
  result = qword_27DF60540;
  if (!qword_27DF60540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60540);
  }

  return result;
}

unint64_t sub_238B68934()
{
  result = qword_27DF60548;
  if (!qword_27DF60548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60548);
  }

  return result;
}

unint64_t sub_238B6898C()
{
  result = qword_27DF60550;
  if (!qword_27DF60550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60550);
  }

  return result;
}

unint64_t sub_238B689E4()
{
  result = qword_27DF60558;
  if (!qword_27DF60558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60558);
  }

  return result;
}

unint64_t sub_238B68A3C()
{
  result = qword_27DF60560;
  if (!qword_27DF60560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60560);
  }

  return result;
}

unint64_t sub_238B68A94()
{
  result = qword_27DF60568;
  if (!qword_27DF60568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60568);
  }

  return result;
}

unint64_t sub_238B68AEC()
{
  result = qword_27DF60570;
  if (!qword_27DF60570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60570);
  }

  return result;
}

unint64_t sub_238B68B44()
{
  result = qword_27DF60578;
  if (!qword_27DF60578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60578);
  }

  return result;
}

unint64_t sub_238B68B9C()
{
  result = qword_27DF60580;
  if (!qword_27DF60580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60580);
  }

  return result;
}

unint64_t sub_238B68BF4()
{
  result = qword_27DF60588;
  if (!qword_27DF60588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60588);
  }

  return result;
}

unint64_t sub_238B68C4C()
{
  result = qword_27DF60590;
  if (!qword_27DF60590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60590);
  }

  return result;
}

unint64_t sub_238B68CA4()
{
  result = qword_27DF60598;
  if (!qword_27DF60598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60598);
  }

  return result;
}

unint64_t sub_238B68CFC()
{
  result = qword_27DF605A0;
  if (!qword_27DF605A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605A0);
  }

  return result;
}

unint64_t sub_238B68D54()
{
  result = qword_27DF605A8;
  if (!qword_27DF605A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605A8);
  }

  return result;
}

unint64_t sub_238B68DAC()
{
  result = qword_27DF605B0;
  if (!qword_27DF605B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605B0);
  }

  return result;
}

unint64_t sub_238B68E04()
{
  result = qword_27DF605B8;
  if (!qword_27DF605B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605B8);
  }

  return result;
}

unint64_t sub_238B68E5C()
{
  result = qword_27DF605C0;
  if (!qword_27DF605C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605C0);
  }

  return result;
}

uint64_t sub_238B68EB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657373696DLL && a2 == 0xE600000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000238B74620 == a2 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_238B6CDF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_238B69074(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_238B6CDF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646165527369 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_238B692E8()
{
  v1 = *v0;
  v2 = [objc_opt_self() defaultCenter];
  sub_238B67FB8();
  sub_238B6CA74();
}

unint64_t Conversation.EndedReason.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_238B69454()
{
  result = qword_27DF605C8;
  if (!qword_27DF605C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605C8);
  }

  return result;
}

unint64_t sub_238B694B8()
{
  result = qword_27DF605D0;
  if (!qword_27DF605D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605D0);
  }

  return result;
}

uint64_t sub_238B6950C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_238B695F4()
{
  result = qword_27DF605D8;
  if (!qword_27DF605D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605D8);
  }

  return result;
}

unint64_t sub_238B6964C()
{
  result = qword_27DF605E0;
  if (!qword_27DF605E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605E0);
  }

  return result;
}

unint64_t sub_238B6975C()
{
  result = qword_27DF605E8;
  if (!qword_27DF605E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605E8);
  }

  return result;
}

unint64_t sub_238B697B4()
{
  result = qword_27DF605F0;
  if (!qword_27DF605F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF605F0);
  }

  return result;
}

BOOL sub_238B6984C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_238B6987C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_238B698A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _s12CapabilitiesVwet(uint64_t a1, int a2)
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

uint64_t _s12CapabilitiesVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_238B699F4()
{
  v1 = 1701602409;
  v2 = 0x6574656C706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x64656C696166;
  }

  if (*v0)
  {
    v1 = 0x676E696E6E7572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_238B69A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B6B550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B69A8C(uint64_t a1)
{
  v2 = sub_238B6ADF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69AC8(uint64_t a1)
{
  v2 = sub_238B6ADF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69B04(uint64_t a1)
{
  v2 = sub_238B6AE98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69B40(uint64_t a1)
{
  v2 = sub_238B6AE98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238B6CDF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_238B69C14(uint64_t a1)
{
  v2 = sub_238B6AE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69C50(uint64_t a1)
{
  v2 = sub_238B6AE44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69C8C(uint64_t a1)
{
  v2 = sub_238B6AF40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69CC8(uint64_t a1)
{
  v2 = sub_238B6AF40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238B69D04(uint64_t a1)
{
  v2 = sub_238B6AEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B69D40(uint64_t a1)
{
  v2 = sub_238B6AEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationAction.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF605F8, "K");
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60600, &qword_238B725B8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60608, &qword_238B725C0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60610, &qword_238B725C8);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60618, &qword_238B725D0);
  v39 = *(v17 - 8);
  v40 = v17;
  v18 = *(v39 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v29 - v19;
  v21 = v1[1];
  v29[1] = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238B6ADF0();
  sub_238B6CEC4();
  switch(v21)
  {
    case 0:
      v41 = 0;
      sub_238B6AF40();
      v24 = v40;
      sub_238B6CD64();
      (*(v30 + 8))(v16, v13);
      return (*(v39 + 8))(v20, v24);
    case 1:
      v42 = 1;
      sub_238B6AEEC();
      v24 = v40;
      sub_238B6CD64();
      (*(v31 + 8))(v12, v32);
      return (*(v39 + 8))(v20, v24);
    case 2:
      v43 = 2;
      sub_238B6AE98();
      v23 = v33;
      v24 = v40;
      sub_238B6CD64();
      (*(v34 + 8))(v23, v35);
      return (*(v39 + 8))(v20, v24);
  }

  v44 = 3;
  sub_238B6AE44();
  v26 = v36;
  v27 = v40;
  sub_238B6CD64();
  v28 = v38;
  sub_238B6CD84();
  (*(v37 + 8))(v26, v28);
  return (*(v39 + 8))(v20, v27);
}

uint64_t ConversationAction.State.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x23EE72A40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x23EE72A40](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x23EE72A40](v2);
  }

  v4 = *v0;
  MEMORY[0x23EE72A40](3);

  return sub_238B6C8D4();
}

uint64_t ConversationAction.State.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_238B6CE64();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x23EE72A40](3);
        sub_238B6C8D4();
        return sub_238B6CEA4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x23EE72A40](v3);
  return sub_238B6CEA4();
}

uint64_t ConversationAction.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60648, &qword_238B725D8);
  v51 = *(v55 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v44 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60650, &qword_238B725E0);
  v46 = *(v49 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60658, &qword_238B725E8);
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60660, &qword_238B725F0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF60668, &unk_238B725F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_238B6ADF0();
  v21 = v56;
  sub_238B6CEB4();
  if (!v21)
  {
    v22 = v13;
    v44 = v10;
    v45 = 0;
    v23 = v9;
    v24 = v52;
    v25 = v53;
    v56 = v15;
    v26 = v54;
    v27 = sub_238B6CD54();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_238B33FD0();
    if (v29 == 4 || v60 != v61 >> 1)
    {
      v34 = sub_238B6CBE4();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF5F7F0, &unk_238B6DCD0) + 48);
      *v36 = &type metadata for ConversationAction.State;
      sub_238B6CCD4();
      sub_238B6CBD4();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
LABEL_9:
      (*(v56 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    if (v29 <= 1u)
    {
      if (v29)
      {
        v62 = 1;
        sub_238B6AEEC();
        v41 = v45;
        sub_238B6CCC4();
        if (!v41)
        {
          (*(v48 + 8))(v23, v50);
          (*(v56 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 1;
          v33 = v26;
          goto LABEL_21;
        }
      }

      else
      {
        v62 = 0;
        sub_238B6AF40();
        v30 = v45;
        sub_238B6CCC4();
        if (!v30)
        {
          (*(v47 + 8))(v22, v44);
          (*(v56 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          v33 = v26;
LABEL_21:
          *v33 = v31;
          v33[1] = v32;
          return __swift_destroy_boxed_opaque_existential_1Tm(v57);
        }
      }

      goto LABEL_9;
    }

    v33 = v26;
    v39 = v56;
    if (v29 == 2)
    {
      v62 = 2;
      sub_238B6AE98();
      v40 = v45;
      sub_238B6CCC4();
      if (!v40)
      {
        (*(v46 + 8))(v24, v49);
        v33 = v26;
        (*(v39 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v31 = 0;
        v32 = 2;
        goto LABEL_21;
      }

      (*(v39 + 8))(v18, v14);
      goto LABEL_10;
    }

    v62 = 3;
    sub_238B6AE44();
    v42 = v45;
    sub_238B6CCC4();
    if (!v42)
    {
      v31 = sub_238B6CD14();
      v32 = v43;
      (*(v51 + 8))(v25, v55);
      (*(v39 + 8))(v18, v14);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    (*(v39 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v57);
}

uint64_t sub_238B6AAB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_238B6CE64();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x23EE72A40](3);
        sub_238B6C8D4();
        return sub_238B6CEA4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x23EE72A40](v3);
  return sub_238B6CEA4();
}

uint64_t sub_238B6AB40()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x23EE72A40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x23EE72A40](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x23EE72A40](v2);
  }

  v4 = *v0;
  MEMORY[0x23EE72A40](3);

  return sub_238B6C8D4();
}

uint64_t sub_238B6ABD8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_238B6CE64();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x23EE72A40](3);
        sub_238B6C8D4();
        return sub_238B6CEA4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x23EE72A40](v3);
  return sub_238B6CEA4();
}

uint64_t _s20LiveCommunicationKit18ConversationActionC5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        sub_238B2FFFC(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        sub_238B2FFFC(*a1, 1uLL);
        sub_238B2FFFC(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        sub_238B2FFFC(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        sub_238B2FFFC(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    sub_238B3FE5C(*a2, *(a2 + 8));
    sub_238B3FE5C(v2, v3);
    sub_238B2FFFC(v2, v3);
    sub_238B2FFFC(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_238B3FE5C(*a1, v3);
    sub_238B3FE5C(v2, v3);
    sub_238B2FFFC(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = *a1;
  v11 = sub_238B6CDF4();
  sub_238B3FE5C(v4, v5);
  sub_238B3FE5C(v2, v3);
  sub_238B2FFFC(v2, v3);
  sub_238B2FFFC(v4, v5);
  return v11 & 1;
}

unint64_t sub_238B6ADF0()
{
  result = qword_27DF60620;
  if (!qword_27DF60620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60620);
  }

  return result;
}

unint64_t sub_238B6AE44()
{
  result = qword_27DF60628;
  if (!qword_27DF60628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60628);
  }

  return result;
}

unint64_t sub_238B6AE98()
{
  result = qword_27DF60630;
  if (!qword_27DF60630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60630);
  }

  return result;
}

unint64_t sub_238B6AEEC()
{
  result = qword_27DF60638;
  if (!qword_27DF60638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60638);
  }

  return result;
}

unint64_t sub_238B6AF40()
{
  result = qword_27DF60640;
  if (!qword_27DF60640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60640);
  }

  return result;
}

unint64_t sub_238B6AF98()
{
  result = qword_27DF60670;
  if (!qword_27DF60670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60670);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20LiveCommunicationKit18ConversationActionC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_238B6B004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238B6B060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_238B6B0B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_238B6B134()
{
  result = qword_27DF60678;
  if (!qword_27DF60678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60678);
  }

  return result;
}

unint64_t sub_238B6B18C()
{
  result = qword_27DF60680;
  if (!qword_27DF60680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60680);
  }

  return result;
}

unint64_t sub_238B6B1E4()
{
  result = qword_27DF60688;
  if (!qword_27DF60688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60688);
  }

  return result;
}

unint64_t sub_238B6B23C()
{
  result = qword_27DF60690;
  if (!qword_27DF60690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60690);
  }

  return result;
}

unint64_t sub_238B6B294()
{
  result = qword_27DF60698;
  if (!qword_27DF60698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF60698);
  }

  return result;
}

unint64_t sub_238B6B2EC()
{
  result = qword_27DF606A0;
  if (!qword_27DF606A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606A0);
  }

  return result;
}

unint64_t sub_238B6B344()
{
  result = qword_27DF606A8;
  if (!qword_27DF606A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606A8);
  }

  return result;
}

unint64_t sub_238B6B39C()
{
  result = qword_27DF606B0;
  if (!qword_27DF606B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606B0);
  }

  return result;
}

unint64_t sub_238B6B3F4()
{
  result = qword_27DF606B8;
  if (!qword_27DF606B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606B8);
  }

  return result;
}

unint64_t sub_238B6B44C()
{
  result = qword_27DF606C0;
  if (!qword_27DF606C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606C0);
  }

  return result;
}

unint64_t sub_238B6B4A4()
{
  result = qword_27DF606C8;
  if (!qword_27DF606C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606C8);
  }

  return result;
}

unint64_t sub_238B6B4FC()
{
  result = qword_27DF606D0;
  if (!qword_27DF606D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606D0);
  }

  return result;
}

uint64_t sub_238B6B550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t Handle.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Handle.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Handle.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Handle.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_238B6B808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_238B6BACC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238B6B830(uint64_t a1)
{
  v2 = sub_238B2DDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238B6B86C(uint64_t a1)
{
  v2 = sub_238B2DDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Handle.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x23EE72A40](*v0 + 1);
  sub_238B6C8D4();

  return sub_238B6C8D4();
}

uint64_t Handle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

uint64_t sub_238B6B99C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_238B6CE64();
  MEMORY[0x23EE72A40](v1 + 1);
  sub_238B6C8D4();
  sub_238B6C8D4();
  return sub_238B6CEA4();
}

unint64_t sub_238B6BA20()
{
  result = qword_27DF606E8;
  if (!qword_27DF606E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606E8);
  }

  return result;
}

unint64_t sub_238B6BA78()
{
  result = qword_27DF606F0;
  if (!qword_27DF606F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF606F0);
  }

  return result;
}

uint64_t sub_238B6BACC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_238B6CDF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_238B6CDF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_238B6CDF4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MuteConversationAction.__allocating_init(conversationUUID:isMuted:)(char *a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MuteConversationAction.init(conversationUUID:isMuted:)(a1, a2);
  return v7;
}

uint64_t MuteConversationAction.init(conversationUUID:isMuted:)(char *a1, char a2)
{
  v3 = v2;
  v23 = a1;
  v6 = sub_238B6C534();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238B6C574();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9);
  v15 = objc_allocWithZone(MEMORY[0x277CBB008]);
  v16 = sub_238B6C544();
  v17 = [v15 initWithCallUUID:v16 muted:a2 & 1];

  v18 = *(v10 + 8);
  v18(v13, v9);
  *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit22MuteConversationAction_isMuted) = a2;
  v19 = v23;
  v14(v13, v23, v9);
  v20 = v24;
  sub_238B6C504();
  v18(v19, v9);
  *(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = v17;
  (*(v10 + 32))(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v13, v9);
  v21 = (v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v21 = 0;
  v21[1] = 0;
  (*(v25 + 32))(v3 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v20, v26);
  return v3;
}

uint64_t sub_238B6BEC0(void *a1)
{
  v3 = sub_238B6C534();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238B6C574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 isMuted];
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit22MuteConversationAction_isMuted) = v13;
  v14 = [a1 callUUID];
  sub_238B6C564();

  sub_238B6C504();
  *(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_cxAction) = a1;
  (*(v9 + 32))(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID, v12, v8);
  v15 = (v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state);
  *v15 = 0;
  v15[1] = 0;
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate, v7, v3);
  return v1;
}

uint64_t MuteConversationAction.deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MuteConversationAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_conversationUUID;
  v2 = sub_238B6C574();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_238B2FFFC(*(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state), *(v0 + OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_state + 8));
  v3 = OBJC_IVAR____TtC20LiveCommunicationKit18ConversationAction_timeoutDate;
  v4 = sub_238B6C534();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MuteConversationAction()
{
  result = qword_27DF606F8;
  if (!qword_27DF606F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}