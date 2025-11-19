unint64_t sub_1E15A1C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37C0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1E1595428(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A1D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3730);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E1595428(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A1E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D90);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v15, &qword_1ECEB5D98);
      result = sub_1E135FCF4(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = v3[7] + 24 * result;
      v11 = v18;
      *v10 = v17;
      *(v10 + 16) = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A1F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3770);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v6 = *(i - 3);
      v5 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      swift_unknownObjectRetain();

      result = sub_1E1595E40(v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v11 = (v3[7] + 24 * result);
      *v11 = v5;
      v11[1] = v8;
      v11[2] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A20B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D28);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1E1595700(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A21AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5E98);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, &v13, &unk_1ECEB5EA0);
      v5 = v13;
      v6 = v14;
      result = sub_1E13018F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1308EC0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A22E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37B0);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v15, &qword_1ECEB5E90);
      result = sub_1E135FCF4(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 16 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A2418(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3830);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, &v13, &unk_1ECEB5E80);
      v5 = v13;
      v6 = v14;
      result = sub_1E13018F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1308EC0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A25BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v8, &v20, a4);
      v9 = v20;
      v10 = v21;
      result = sub_1E13018F8(v20, v21);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v7[6] + 16 * result);
      *v13 = v9;
      v13[1] = v10;
      v14 = v7[7] + 40 * result;
      v15 = v22;
      v16 = v23;
      *(v14 + 32) = v24;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += 56;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A26E8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3718);
  v3 = sub_1E1AF72CC();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_1E131A7E8(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    v12 = v4;
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_1E131A7E8(v5);
    v8 += 2;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E15A27DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37A0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1E13018F8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A28EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5CF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D00);
    v7 = sub_1E1AF72CC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E134FD1C(v9, v5, &qword_1ECEB5CF8);
      v11 = *v5;
      result = sub_1E1595700(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1E1AF52CC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1E15A2AD4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3798);
  v3 = sub_1E1AF72CC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1E131A7E8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1E131A7E8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E15A2BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5E10);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E13018F8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A2D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DD0);
    v3 = sub_1E1AF72CC();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v6 = v4[7];
      v28 = v4[6];
      v29 = v6;
      v30 = v4[8];
      v31 = *(v4 + 18);
      v7 = v4[3];
      v24 = v4[2];
      v25 = v7;
      v8 = v4[5];
      v26 = v4[4];
      v27 = v8;
      v9 = v4[1];
      v22 = *v4;
      v23 = v9;
      sub_1E134FD1C(__dst, &v20, &qword_1ECEB5DD8);
      result = sub_1E1595EB8(&v22);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 152 * result;
      v13 = v29;
      *(v12 + 96) = v28;
      *(v12 + 112) = v13;
      *(v12 + 128) = v30;
      *(v12 + 144) = v31;
      v14 = v25;
      *(v12 + 32) = v24;
      *(v12 + 48) = v14;
      v15 = v27;
      *(v12 + 64) = v26;
      *(v12 + 80) = v15;
      v16 = v23;
      *v12 = v22;
      *(v12 + 16) = v16;
      result = memcpy((v3[7] + 392 * result), &__dst[152], 0x188uLL);
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 += 34;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A2EFC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1E1AF72CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1E1595428(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A2FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5CB0);
    v3 = sub_1E1AF72CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1E1595700(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E15A3108(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_1E1AF72CC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v8, &v15, a4);
      v9 = v15;
      result = sub_1E1595700(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_1E1301CF0(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1E15A3220()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_engagement;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E698C8D8]) init];
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v3 = &v0[OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_previousPageContext];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_previousArcadeSubscriptionState];
  *v4 = 0;
  v4[8] = -4;
  v5 = &v0[OBJC_IVAR____TtC11AppStoreKit22SheetEngagementManager_flowActionViewControllerFactory];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_weakAssign();
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE216170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void _s11AppStoreKit22SheetEngagementManagerC10engagement_6handle10completionySo13AMSEngagementC_So0J7RequestCSgySo0J6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE216170);
  (*(v5 + 16))(v7, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v15 = sub_1E13006E4(0, &qword_1EE1E3490);
  v14[0] = a1;
  v9 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (a2)
  {
    v10 = sub_1E13006E4(0, &unk_1ECEB5F50);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  (*(v5 + 8))(v7, v4);
  if (a2)
  {
    v13 = v12;
    sub_1E1590EF8(v13);
  }
}

void _s11AppStoreKit22SheetEngagementManagerC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0N7RequestCSgS2SySo0N6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a3;
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v8 = sub_1E1AF591C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1EE216170);
  (*(v9 + 16))(v11, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B07790;
  sub_1E1AF382C();
  v29 = sub_1E13006E4(0, &qword_1EE1E3490);
  v26 = a1;
  v13 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v25 = v9;
  if (a2)
  {
    v14 = sub_1E13006E4(0, &unk_1ECEB5F50);
    v15 = a2;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v27 = 0;
    v28 = 0;
  }

  v26 = v15;
  v29 = v14;
  v20 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v16 = a2;
  v17 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  v26 = v21;
  v27 = v22;

  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v29 = v17;
  v26 = v23;
  v27 = v24;

  sub_1E1AF38BC();
  sub_1E1308058(&v26, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  (*(v25 + 8))(v11, v8);
  if (v16)
  {
    v18 = v20;
    sub_1E1590EF8(v18);
  }
}

uint64_t _s11AppStoreKit22SheetEngagementManagerC10engagement_6handle10completionySo13AMSEngagementC_So16AMSDialogRequestCSgySo0K6ResultCSg_s5Error_pSgtctF_0(void *a1, void *a2)
{
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE216170);
  (*(v5 + 16))(v7, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v15 = sub_1E13006E4(0, &qword_1EE1E3490);
  v14[0] = a1;
  v9 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (a2)
  {
    v10 = sub_1E13006E4(0, &qword_1ECEB4A70);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(v14, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s11AppStoreKit22SheetEngagementManagerC10engagement_9didUpdate9placement11serviceTypeySo13AMSEngagementC_So16AMSDialogRequestCSgS2StF_0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v19 = a3;
  v20 = a4;
  v8 = sub_1E1AF591C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1EE216170);
  (*(v9 + 16))(v11, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B07790;
  sub_1E1AF382C();
  v26 = sub_1E13006E4(0, &qword_1EE1E3490);
  v23 = a1;
  v13 = a1;
  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  if (a2)
  {
    v14 = sub_1E13006E4(0, &qword_1ECEB4A70);
    v15 = a2;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v15;
  v26 = v14;
  v16 = a2;
  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v17 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v23 = v19;
  v24 = v20;

  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v26 = v17;
  v23 = v21;
  v24 = v22;

  sub_1E1AF38BC();
  sub_1E1308058(&v23, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E15A416C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E130B5D8;

  return sub_1E1593280(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1E15A4400()
{
  result = qword_1ECEB5F40;
  if (!qword_1ECEB5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5F40);
  }

  return result;
}

uint64_t sub_1E15A4454(uint64_t a1)
{
  v3 = *(sub_1E1AF539C() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5DC;

  return sub_1E15918DC(a1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_1E15A4688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_11AppStoreKit22SheetEngagementManagerC31DelegateActionPresentationError33_42E9ECA91712AD7E826B45316A6F7200LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E15A46E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E15A4740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1E15A4790(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t JSError.describeForMetricsEvent(using:)(void (*a1)(uint64_t, unint64_t, void *))
{
  v2 = sub_1E1AF566C();
  if ((v3 & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v11 = sub_1E1380D6C();
    v10[0] = v4;
    a1(0x6E694C726F727265, 0xE900000000000065, v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v5 = sub_1E1AF567C();
  if ((v6 & 1) == 0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v11 = sub_1E1380D6C();
    v10[0] = v7;
    a1(0x6C6F43726F727265, 0xEB000000006E6D75, v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  result = sub_1E1AF56EC();
  if (v9)
  {
    v11 = MEMORY[0x1E69E6158];
    v10[0] = result;
    v10[1] = v9;
    a1(0x5255656372756F73, 0xE90000000000004CLL, v10);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

unint64_t sub_1E15A49C4(uint64_t a1)
{
  result = sub_1E13EB868();
  *(a1 + 8) = result;
  return result;
}

uint64_t EditorialMediaPlacement.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_1E1AF37CC();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_1E1AF72FC();

    if (v10 < 4)
    {

      v11 = sub_1E1AF39DC();
      (*(*(v11 - 8) + 8))(a2, v11);
      v12 = sub_1E1AF380C();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      *a3 = v10;
      return result;
    }

    v14 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v16 = v19;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = &type metadata for EditorialMediaPlacement;
    v18 = MEMORY[0x1E69AB680];
  }

  else
  {
    v14 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v16 = v15;
    v17 = MEMORY[0x1E69E7CC0];
    *v15 = &type metadata for EditorialMediaPlacement;
    v15[1] = v17;
    v18 = MEMORY[0x1E69AB698];
  }

  (*(*(v14 - 8) + 104))(v16, *v18, v14);
  swift_willThrow();
  v20 = sub_1E1AF39DC();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = sub_1E1AF380C();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

AppStoreKit::EditorialMediaPlacement_optional __swiftcall EditorialMediaPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialMediaPlacement.rawValue.getter()
{
  v1 = 1869768040;
  v2 = 0x72614379726F7473;
  if (*v0 != 2)
  {
    v2 = 0x74654479726F7473;
  }

  if (*v0)
  {
    v1 = 0x657242656772616CLL;
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

unint64_t sub_1E15A4D24()
{
  result = qword_1ECEB6188;
  if (!qword_1ECEB6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6188);
  }

  return result;
}

uint64_t sub_1E15A4D78()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E15A4E4C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E15A4F0C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E15A4FE8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1869768040;
  v4 = 0xE900000000000064;
  v5 = 0x72614379726F7473;
  if (*v1 != 2)
  {
    v5 = 0x74654479726F7473;
    v4 = 0xEB000000006C6961;
  }

  if (*v1)
  {
    v3 = 0x657242656772616CLL;
    v2 = 0xED000074756F6B61;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t TrendingSearches.__allocating_init(title:maxNumberOfSearches:searches:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  v15 = OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics;
  v16 = sub_1E1AF3C3C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a6, v16);
  *&v14[OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageRenderEvent] = a7;
  if (a4)
  {
    goto LABEL_26;
  }

  if (!(a5 >> 62))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
      {
        a4 = a3;
      }

      else
      {
        a4 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_7:
      if ((a5 & 0xC000000000000001) != 0 && a4)
      {
        type metadata accessor for SearchAction();

        v18 = 0;
        do
        {
          v19 = v18 + 1;
          sub_1E1AF703C();
          v18 = v19;
        }

        while (a4 != v19);
      }

      else
      {
      }

      if (a5 >> 62)
      {
        a3 = sub_1E1AF728C();
        v20 = v21;
        v15 = v22;
        a4 = v23;

        if (a4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        a3 = a5 & 0xFFFFFFFFFFFFFF8;
        v20 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
        a4 = (2 * a4) | 1;
        if (a4)
        {
LABEL_18:
          v29 = v20;
          sub_1E1AF74EC();
          swift_unknownObjectRetain_n();
          v25 = swift_dynamicCastClass();
          if (!v25)
          {
            swift_unknownObjectRelease();
            v25 = MEMORY[0x1E69E7CC0];
          }

          v26 = *(v25 + 16);

          if (!__OFSUB__(a4 >> 1, v15))
          {
            if (v26 == (a4 >> 1) - v15)
            {
              a5 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (a5)
              {
LABEL_25:

LABEL_26:
                (*(v17 + 8))(a6, v16);
                *(v14 + 4) = a5;
                return v14;
              }

              a5 = MEMORY[0x1E69E7CC0];
LABEL_24:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          swift_unknownObjectRelease_n();
          v20 = v29;
        }
      }

      sub_1E14E6644(a3, v20, v15, a4);
      a5 = v24;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a5 < 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = a5 & 0xFFFFFFFFFFFFFF8;
  }

  v28 = sub_1E1AF71CC();
  if (v28 >= a3)
  {
    a4 = a3;
  }

  else
  {
    a4 = v28;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  result = sub_1E1AF71CC();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_1E1AF71CC() >= a4)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t TrendingSearches.init(title:maxNumberOfSearches:searches:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  v13 = OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics;
  v14 = sub_1E1AF3C3C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v7[v13], a6, v14);
  *&v7[OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageRenderEvent] = a7;
  if (a4)
  {
    goto LABEL_26;
  }

  if (!(a5 >> 62))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
      {
        a4 = a3;
      }

      else
      {
        a4 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_7:
      if ((a5 & 0xC000000000000001) != 0 && a4)
      {
        type metadata accessor for SearchAction();

        v16 = 0;
        do
        {
          v17 = v16 + 1;
          sub_1E1AF703C();
          v16 = v17;
        }

        while (a4 != v17);
      }

      else
      {
      }

      if (a5 >> 62)
      {
        a3 = sub_1E1AF728C();
        v18 = v19;
        v13 = v20;
        a4 = v21;

        if (a4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = 0;
        a3 = a5 & 0xFFFFFFFFFFFFFF8;
        v18 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
        a4 = (2 * a4) | 1;
        if (a4)
        {
LABEL_18:
          v27 = v18;
          sub_1E1AF74EC();
          swift_unknownObjectRetain_n();
          v23 = swift_dynamicCastClass();
          if (!v23)
          {
            swift_unknownObjectRelease();
            v23 = MEMORY[0x1E69E7CC0];
          }

          v24 = *(v23 + 16);

          if (!__OFSUB__(a4 >> 1, v13))
          {
            if (v24 == (a4 >> 1) - v13)
            {
              a5 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (a5)
              {
LABEL_25:

LABEL_26:
                (*(v15 + 8))(a6, v14);
                *(v7 + 4) = a5;
                return v7;
              }

              a5 = MEMORY[0x1E69E7CC0];
LABEL_24:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          swift_unknownObjectRelease_n();
          v18 = v27;
        }
      }

      sub_1E14E6644(a3, v18, v13, a4);
      a5 = v22;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a5 < 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = sub_1E1AF71CC();
  if (v26 >= a3)
  {
    a4 = a3;
  }

  else
  {
    a4 = v26;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  result = sub_1E1AF71CC();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_1E1AF71CC() >= a4)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void *TrendingSearches.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v123 = a2;
  v3 = sub_1E1AF5A7C();
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v97 - v6;
  v7 = sub_1E1AF3C3C();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v97 - v10;
  v120 = sub_1E1AF39DC();
  v122 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v106 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v97 - v17;
  v19 = sub_1E1AF380C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v97 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v103 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  v31 = sub_1E1AF5A6C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v97 - v36;
  v121 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v38 = v19;
  v40 = *(v20 + 8);
  v39 = v20 + 8;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v40;
  v40(v41, v19);
  if ((*(v43 + 48))(v18, 1, v42) == 1)
  {
    sub_1E14352B8(v18);
    sub_1E15A67E0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    v45 = v119;
    swift_allocError();
    *v46 = 0x7365686372616573;
    v47 = v117;
    v46[1] = 0xE800000000000000;
    v46[2] = v47;
    (*(v118 + 104))(v46, *MEMORY[0x1E69AB690], v45);
    swift_willThrow();
    (*(v122 + 8))(v123, v120);
    v44(v121, v19);
    return v38;
  }

  v101 = v44;
  v102 = v39;
  (*(v43 + 32))(v37, v18, v42);
  v99 = v43;
  v48 = *(v43 + 16);
  v100 = v42;
  v48(v34, v37, v42);
  v50 = v122;
  v49 = v123;
  v51 = v120;
  v98 = *(v122 + 16);
  v98(v115, v123, v120);
  v52 = type metadata accessor for SearchAction();
  sub_1E15A67E0(&qword_1EE1F5AB8, type metadata accessor for SearchAction);
  v53 = v116;
  v54 = sub_1E1AF62FC();
  v55 = v37;
  if (!v53)
  {
    v117 = v52;
    v119 = v54;
    v97 = v38;
    sub_1E1AF381C();
    v98(v112, v49, v51);
    v65 = v113;
    sub_1E1AF3BAC();
    v118 = 0;
    v116 = v37;
    type metadata accessor for PageRenderMetricsEvent();
    sub_1E1AF381C();
    v98(v106, v49, v51);
    sub_1E15A67E0(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    v115 = v124;
    v66 = v104;
    sub_1E1AF381C();
    v114 = sub_1E1AF37CC();
    v112 = v67;
    v68 = v66;
    v69 = v97;
    v70 = v101;
    v101(v68, v97);
    v71 = v105;
    sub_1E1AF381C();
    v110 = sub_1E1AF36EC();
    LODWORD(v111) = v72;
    v70(v71, v69);
    v73 = v107;
    v74 = v108;
    v75 = *(v108 + 16);
    v76 = v109;
    v75(v107, v65, v109);
    type metadata accessor for TrendingSearches();
    v38 = swift_allocObject();
    v77 = v112;
    v38[2] = v114;
    v38[3] = v77;
    v75(v38 + OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics, v73, v76);
    *(v38 + OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageRenderEvent) = v115;
    if (v111)
    {
      (*(v122 + 8))(v123, v51);
      v70(v121, v97);
      v78 = *(v74 + 8);
      v78(v73, v76);
      v78(v113, v76);
      (*(v99 + 8))(v116, v100);
      v38[4] = v119;
      return v38;
    }

    v79 = v123;
    v80 = v119 >> 62;
    if (!(v119 >> 62))
    {
      v82 = v108;
      v81 = v109;
      if ((v110 & 0x8000000000000000) == 0)
      {
        v83 = v119;
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v110)
        {
          v76 = v110;
        }

        else
        {
          v76 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_16:
        if ((v83 & 0xC000000000000001) != 0)
        {

          if (v76)
          {
            v84 = 0;
            do
            {
              v85 = v84 + 1;
              sub_1E1AF703C();
              v84 = v85;
            }

            while (v76 != v85);
          }
        }

        else
        {
        }

        if (v80)
        {
          v70 = sub_1E1AF728C();
          v80 = v86;
          v73 = v87;
          v76 = v88;
        }

        else
        {
          v73 = 0;
          v70 = (v83 & 0xFFFFFFFFFFFFFF8);
          v80 = (v83 & 0xFFFFFFFFFFFFFF8) + 32;
          v76 = (2 * v76) | 1;
        }

        if ((v76 & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_1E1AF74EC();
        swift_unknownObjectRetain_n();
        v92 = swift_dynamicCastClass();
        if (!v92)
        {
          swift_unknownObjectRelease();
          v92 = MEMORY[0x1E69E7CC0];
        }

        v93 = *(v92 + 16);

        if (!__OFSUB__(v76 >> 1, v73))
        {
          if (v93 == (v76 >> 1) - v73)
          {
            v90 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v91 = v100;
            v82 = v108;
            v81 = v109;
            if (v90)
            {
LABEL_34:
              (*(v122 + 8))(v79, v120);
              v101(v121, v97);
              v94 = *(v82 + 8);
              v94(v107, v81);
              v94(v113, v81);
              (*(v99 + 8))(v116, v91);
              v38[4] = v90;
              return v38;
            }

            v90 = MEMORY[0x1E69E7CC0];
LABEL_33:
            swift_unknownObjectRelease();
            goto LABEL_34;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        swift_unknownObjectRelease_n();
        v82 = v108;
        v81 = v109;
LABEL_26:
        sub_1E14E6644(v70, v80, v73, v76);
        v90 = v89;
        v91 = v100;
        goto LABEL_33;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v119 < 0)
    {
      v73 = v119;
    }

    else
    {
      v73 = v119 & 0xFFFFFFFFFFFFFF8;
    }

    v96 = sub_1E1AF71CC();
    if (v96 >= v110)
    {
      v76 = v110;
    }

    else
    {
      v76 = v96;
    }

    if ((v76 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (sub_1E1AF71CC() < 0)
    {
      __break(1u);
    }

    else if (sub_1E1AF71CC() < v76)
    {
      __break(1u);
      goto LABEL_46;
    }

    v82 = v108;
    v81 = v109;
    v83 = v119;
    goto LABEL_16;
  }

  v124 = v53;
  v56 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  v57 = v114;
  v58 = v119;
  if (swift_dynamicCast())
  {

    v116 = v55;
    v59 = v118;
    v60 = v57;
    v61 = v110;
    (*(v118 + 32))(v110, v60, v58);
    sub_1E15A67E0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v97 = v38;
    v38 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1E1B02CC0;
    *(v63 + 32) = swift_allocError();
    (*(v59 + 16))(v64, v61, v58);
    *v38 = 0x7365686372616573;
    v38[1] = 0xE800000000000000;
    v38[2] = v117;
    v38[3] = v63;
    (*(v59 + 104))(v38, *MEMORY[0x1E69AB6A0], v58);
    swift_willThrow();
    (*(v50 + 8))(v123, v51);
    v101(v121, v97);
    (*(v59 + 8))(v61, v58);
    (*(v99 + 8))(v116, v100);
  }

  else
  {
    (*(v50 + 8))(v123, v51);
    v101(v121, v38);
    (*(v99 + 8))(v55, v100);
  }

  return v38;
}

uint64_t TrendingSearches.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrendingSearches.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrendingSearches.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TrendingSearches.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E15A6724@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = TrendingSearches.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E15A6764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit16TrendingSearches_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E15A67E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TrendingSearches()
{
  result = qword_1ECEB6190;
  if (!qword_1ECEB6190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15A687C()
{
  result = sub_1E1AF3C3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PersonalizedOfferContext.__allocating_init(offerAction:offerDisplayProperties:personalizedOfferType:)(uint64_t a1, uint64_t a2, char *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v7;
  return result;
}

uint64_t PersonalizedOfferContext.init(offerAction:offerDisplayProperties:personalizedOfferType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  return v3;
}

uint64_t PersonalizedOfferContext.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v25 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, a2);
  v14 = *(v8 + 8);
  v14(v13, v7);
  type metadata accessor for OfferDisplayProperties();
  sub_1E1AF381C();
  v15 = *(v28 + 16);
  v26 = a2;
  v15(v24, a2, v27);
  sub_1E15A6E28(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties);
  sub_1E1AF464C();
  v24 = v29;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v17 = v16;
  v14(v10, v7);
  if (v17 && (v18 = sub_1E1AF72FC(), , v18 < 3))
  {
    (*(v28 + 8))(v26, v27);
    v14(a1, v7);
    type metadata accessor for PersonalizedOfferContext();
    result = swift_allocObject();
    v20 = v24;
    *(result + 16) = v25;
    *(result + 24) = v20;
    *(result + 32) = v18;
  }

  else
  {
    v21 = sub_1E1AF5A7C();
    sub_1E15A6E28(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v22 = 0xD000000000000015;
    v22[1] = 0x80000001E1B67120;
    v22[2] = v23[2];
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    swift_willThrow();

    (*(v28 + 8))(v26, v27);
    return (v14)(a1, v7);
  }

  return result;
}

uint64_t sub_1E15A6E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PersonalizedOfferContext.deinit()
{

  return v0;
}

uint64_t PersonalizedOfferContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E15A6EFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PersonalizedOfferContext.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E15A6F7C()
{
  sub_1E1380D6C();
  result = sub_1E1AF6CDC();
  qword_1ECEF44F8 = result;
  return result;
}

void sub_1E15A6FB8(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t sub_1E15A7028()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_1E13E44F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15A70B0()
{
  v1 = v0;
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E1AF481C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v8 = sub_1E1AEF54C();
  if (v8)
  {
    v9 = sub_1E14AD4CC(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69E6158];
  *&v31 = 6778732;
  *(&v31 + 1) = 0xE300000000000000;
  sub_1E1301CF0(&v31, v30);
  v11 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v11;
  sub_1E159827C(v30, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v13 = v29;
  if (qword_1ECEB0EA8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ECEF44F8;
  v32 = sub_1E1380D6C();
  *&v31 = v14;
  sub_1E1301CF0(&v31, v30);
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v13;
  sub_1E159827C(v30, 0x726556746E657665, 0xEC0000006E6F6973, v16);
  v17 = v29;
  v32 = v10;
  *&v31 = 0xD00000000000001BLL;
  *(&v31 + 1) = 0x80000001E1B671F0;
  sub_1E1301CF0(&v31, v30);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v17;
  sub_1E159827C(v30, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v18);
  v19 = v29;
  v20 = v1[11];
  v21 = v1[12];
  v32 = v10;
  *&v31 = v20;
  *(&v31 + 1) = v21;
  sub_1E1301CF0(&v31, v30);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v19;
  sub_1E159827C(v30, 0x726574726F706572, 0xEC00000044495555, v22);
  v23 = v29;
  if (v9)
  {

    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v23;
    sub_1E1429508(v9, sub_1E160785C, 0, v24, &v31);
  }

  sub_1E1AF47EC();
  if (qword_1EE1E3598 != -1)
  {
    swift_once();
  }

  v25 = sub_1E1AF591C();
  __swift_project_value_buffer(v25, qword_1EE216110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v32 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
  (*(v4 + 16))(boxed_opaque_existential_0, v6, v3);
  sub_1E1AF385C();
  sub_1E13E44F8(&v31);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  __swift_project_boxed_opaque_existential_1Tm(v1 + 6, v1[9]);
  sub_1E1AF49EC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 6, v1[9]);
  sub_1E1AF49DC();

  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall InvalidateAllWidgetsAction.run()()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1E1AF5DBC();
  CFNotificationCenterPostNotification(v0, v1, 0, 0, 1u);

  sub_1E1AF5C3C();
  sub_1E1AF5C2C();
  sub_1E1AF5C1C();
}

char *InvalidateAllWidgetsAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a7, &unk_1ECEB1770);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *InvalidateAllWidgetsAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670);
  }

  sub_1E1308058(v22, &unk_1ECEB1770);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670);
  sub_1E1308058(v52, &unk_1ECEB5670);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *InvalidateAllWidgetsAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *InvalidateAllWidgetsAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t InvalidateAllWidgetsAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t InvalidateAllWidgetsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InvalidateAllWidgetsAction()
{
  result = qword_1EE1EA868;
  if (!qword_1EE1EA868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopShelfNamedAttribute.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfNamedAttribute.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TopShelfNamedAttribute.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v44 = v2;
  v42 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v41 = sub_1E1AF5A6C();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = a1;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v19 = v18;
  v22 = *(v10 + 8);
  v20 = v10 + 8;
  v21 = v22;
  v22(v15, v9);
  if (!v19)
  {
    v41 = v20;
    v24 = 1701667182;
    v45 = v16;
    v25 = 0xE400000000000000;
    goto LABEL_5;
  }

  v38 = v17;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v21(v12, v9);
  v23 = v41;
  if ((*(v45 + 6))(v7, 1, v41) == 1)
  {
    v41 = v20;
    v24 = 0x7365756C6176;
    v45 = v16;

    sub_1E14352B8(v7);
    v25 = 0xE600000000000000;
LABEL_5:
    v26 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v27 = v24;
    v27[1] = v25;
    v27[2] = v42;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    v28 = sub_1E1AF39DC();
    (*(*(v28 - 8) + 8))(v43, v28);
    v21(v45, v9);
    type metadata accessor for TopShelfNamedAttribute();
    v29 = v44;
    swift_deallocPartialClassInstance();
    return v29;
  }

  v30 = v39;
  (*(v45 + 4))(v39, v7, v23);
  v29 = v44;
  v44[2] = v38;
  v29[3] = v19;
  v31 = v30;
  v32 = v40;
  v33 = sub_1E1AF59FC();
  if (!v32)
  {
    v34 = v33;
    v35 = sub_1E1AF39DC();
    (*(*(v35 - 8) + 8))(v43, v35);
    v21(v16, v9);
    (*(v45 + 1))(v31, v23);
    v29[4] = v34;
    return v29;
  }

  type metadata accessor for TopShelfNamedAttribute();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t TopShelfNamedAttribute.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TopShelfNamedAttribute.deinit()
{

  return v0;
}

uint64_t TopShelfNamedAttribute.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E15A8A34@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelfNamedAttribute();
  v7 = swift_allocObject();
  result = TopShelfNamedAttribute.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *ArcadeDownloadPackCategory.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v80 = a2;
  v78 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v65 - v8;
  v9 = sub_1E1AF39DC();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  v81 = a1;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v29 = *(v12 + 8);
  v28 = v12 + 8;
  v27 = v29;
  v29(v23, v11);
  if (!v26)
  {
    v50 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v51 = 25705;
    v52 = v78;
    v51[1] = 0xE200000000000000;
    v51[2] = v52;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E69AB690], v50);
    swift_willThrow();
    (*(v79 + 8))(v80, v9);
    v27(v81, v11);
    v36 = v3;
LABEL_19:
    swift_deallocPartialClassInstance();
    return v36;
  }

  v77 = v9;
  v3[2] = v24;
  v3[3] = v26;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v76 = v11;
  v27(v20, v11);
  v72 = v27;
  v73 = v28;
  v70 = v32;
  if (!v32)
  {
    v53 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v54 = 0x656C746974;
    v54[1] = 0xE500000000000000;
    v54[2] = v78;
    (*(*(v53 - 8) + 104))(v54, *MEMORY[0x1E69AB690], v53);
    swift_willThrow();
    v55 = 0;
    v56 = 0;
    v40 = v81;
    v57 = v79;
    v43 = v76;
    v36 = v3;
LABEL_13:
    (*(v57 + 8))(v80, v77);
    v72(v40, v43);

    if (v70)
    {
    }

    if (v55)
    {
    }

    if (v56)
    {
    }

    goto LABEL_19;
  }

  v33 = v27;
  v3[4] = v30;
  v3[5] = v32;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v34 = *(v79 + 16);
  v34(v75, v80, v77);
  sub_1E15A9694(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v35 = v82;
  v36 = v3;
  if (!v82)
  {
    v58 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v59 = 0x6B726F77747261;
    v59[1] = 0xE700000000000000;
    v59[2] = v78;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x1E69AB690], v58);
    swift_willThrow();
    v55 = 0;
    v56 = 0;
    v40 = v81;
    v43 = v76;
LABEL_12:
    v57 = v79;
    goto LABEL_13;
  }

  v3[6] = v82;

  v37 = v71;
  sub_1E1AF381C();
  v38 = JSONObject.appStoreColor.getter();
  v27(v37, v76);
  if (!v38)
  {
    v60 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v61 = 0xD000000000000012;
    v61[1] = 0x80000001E1B672F0;
    v61[2] = v78;
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x1E69AB690], v60);
    swift_willThrow();

    v56 = 0;
    v55 = 1;
    v40 = v81;
    v43 = v76;
    goto LABEL_12;
  }

  v71 = v35;
  v36[7] = v38;
  v66 = v38;
  v39 = v69;
  v40 = v81;
  sub_1E1AF381C();
  v41 = JSONObject.appStoreColor.getter();
  v42 = v39;
  v43 = v76;
  v33(v42, v76);
  if (!v41)
  {
    v62 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v63 = 0xD000000000000010;
    v63[1] = 0x80000001E1B67310;
    v63[2] = v78;
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x1E69AB690], v62);
    swift_willThrow();

    v55 = 1;
    v56 = 1;
    goto LABEL_12;
  }

  v36[8] = v41;
  sub_1E1AF46DC();
  v78 = v36;
  v70 = v41;
  sub_1E1AF381C();
  v44 = v75;
  v34(v75, v80, v77);
  v45 = v67;
  sub_1E1AF464C();
  sub_1E137F600(v45, v78 + OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_impressionMetrics, &unk_1ECEB1770);
  sub_1E1AF3E1C();
  sub_1E1AF381C();
  v46 = v80;
  v34(v44, v80, v77);
  v47 = v68;
  sub_1E1AF464C();
  sub_1E137F600(v47, v78 + OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_selectActionMetrics, &qword_1ECEBB7C0);
  sub_1E1AF381C();
  v48 = v46;
  v49 = v77;
  v34(v44, v48, v77);
  sub_1E1AF464C();

  (*(v79 + 8))(v80, v49);
  v72(v40, v76);
  v36 = v78;
  sub_1E137F600(v47, v78 + OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_deselectActionMetrics, &qword_1ECEBB7C0);
  return v36;
}

uint64_t sub_1E15A9694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArcadeDownloadPackCategory.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeDownloadPackCategory.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArcadeDownloadPackCategory.deinit()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_selectActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_deselectActionMetrics, &qword_1ECEBB7C0);
  return v0;
}

uint64_t ArcadeDownloadPackCategory.__deallocating_deinit()
{
  ArcadeDownloadPackCategory.deinit();

  return swift_deallocClassInstance();
}

void ArcadeDownloadPackCategory.jsRepresentation(in:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = [v6 valueWithNewObjectInContext_];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v16 = v2[2];
  v18 = v2[3];

  v9 = v8;
  v10 = [v6 valueWithObject:sub_1E1AF755C() inContext:{a1, v16, v18}];
  swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E1AF6C5C();
  v17 = v2[4];
  v19 = v2[5];

  v11 = [v6 valueWithObject:sub_1E1AF755C() inContext:{a1, v17, v19}];
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  v12 = sub_1E144878C(a1);
  v13 = [v6 valueWithObject:v12 inContext:a1];

  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  if (![v6 valueWithObject:v3[7] inContext:a1])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1E1AF6C5C();
  if ([v6 valueWithObject:v3[8] inContext:a1])
  {
    sub_1E1AF6C5C();
    v14 = sub_1E1434AFC();
    v15 = MEMORY[0x1E69AB728];
    a2[3] = v14;
    a2[4] = v15;

    *a2 = v9;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1E15A9BEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t ArcadeDownloadPackCategoriesPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v117 = a2;
  v113 = *v3;
  v5 = sub_1E1AF39DC();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v97 - v8;
  v9 = sub_1E1AF3C3C();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v97 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v97 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v107 = &v97 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v109 = &v97 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v97 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v97 - v33;
  v116 = a1;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v40 = *(v15 + 8);
  v38 = v15 + 8;
  v39 = v40;
  v40(v34, v14);
  if (!v37)
  {
    v45 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v46 = 0x656C746974;
    v47 = v113;
    v46[1] = 0xE500000000000000;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v45);
    swift_willThrow();
    v39(v116, v14);
    v48 = v117;
    v50 = v114;
    v49 = v115;
    v51 = v3;
LABEL_27:
    swift_deallocPartialClassInstance();
    (*(v50 + 8))(v48, v49);
    return v51;
  }

  v3[2] = v35;
  v3[3] = v37;
  v112 = v3;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v110 = v14;
  v108 = v38;
  v39(v31, v14);
  v41 = sub_1E1AF5A6C();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 48))(v13, 1, v41);
  if (v43 == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB1F90);
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v43);
  *(&v97 - 2) = v117;
  type metadata accessor for ArcadeDownloadPackCategory(0);
  v52 = v111;
  v53 = sub_1E1AF59FC();
  v111 = v52;
  if (!v52)
  {
    v44 = v53;
    (*(v42 + 8))(v13, v41);
LABEL_7:
    v51 = v112;
    v112[4] = v44;
    v48 = v117;
    if (v44 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_9;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      v54 = v109;
      v55 = v116;
      sub_1E1AF381C();
      v56 = sub_1E1AF36EC();
      v58 = v57;
      v59 = v54;
      v60 = v110;
      v39(v59, v110);
      if (v58)
      {
        v61 = sub_1E1AF5A7C();
        sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v62 = 0xD00000000000001DLL;
        v62[1] = 0x80000001E1B67370;
        v62[2] = v113;
        (*(*(v61 - 8) + 104))(v62, *MEMORY[0x1E69AB690], v61);
        swift_willThrow();
        v39(v55, v60);
        v63 = 0;
        v64 = 0;
LABEL_16:
        v51 = v112;
        v48 = v117;
        goto LABEL_21;
      }

      v112[5] = v56;
      v65 = v60;
      v66 = v107;
      sub_1E1AF381C();
      v67 = sub_1E1AF37CC();
      v69 = v68;
      v39(v66, v65);
      if (!v69)
      {
        v82 = sub_1E1AF5A7C();
        sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v83 = 0xD000000000000025;
        v83[1] = 0x80000001E1B67390;
        v83[2] = v113;
        (*(*(v82 - 8) + 104))(v83, *MEMORY[0x1E69AB690], v82);
        swift_willThrow();
        v39(v55, v110);
        v63 = 0;
        v64 = 0;
        goto LABEL_16;
      }

      v70 = v112;
      v112[6] = v67;
      v70[7] = v69;
      v71 = v106;
      sub_1E1AF381C();
      v72 = sub_1E1AF37CC();
      v74 = v73;
      v75 = v71;
      v76 = v110;
      v39(v75, v110);
      if (!v74)
      {
        v84 = sub_1E1AF5A7C();
        sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
        swift_allocError();
        *v85 = 0xD000000000000020;
        v85[1] = 0x80000001E1B673C0;
        v85[2] = v113;
        (*(*(v84 - 8) + 104))(v85, *MEMORY[0x1E69AB690], v84);
        swift_willThrow();
        v39(v55, v76);
        v64 = 0;
        v63 = 1;
        goto LABEL_16;
      }

      v51 = v112;
      v112[8] = v72;
      v51[9] = v74;
      type metadata accessor for Action();
      v77 = v105;
      sub_1E1AF381C();
      v78 = v117;
      v79 = v111;
      v80 = static Action.makeInstance(byDeserializing:using:)(v77, v117);
      if (!v79)
      {
        v86 = v80;
        v39(v77, v110);
        v51[10] = v86;
        v87 = v104;
        sub_1E1AF381C();
        v88 = static Action.makeInstance(byDeserializing:using:)(v87, v78);
        v111 = v39;
        v39(v87, v110);
        v51[11] = v88;
        sub_1E1AF381C();
        v89 = v114;
        v90 = *(v114 + 16);
        v90(v103, v78, v115);
        v91 = v102;
        sub_1E1AF3BAC();
        (*(v98 + 32))(v51 + OBJC_IVAR____TtC11AppStoreKit32ArcadeDownloadPackCategoriesPage_pageMetrics, v91, v99);
        v113 = type metadata accessor for PageRenderMetricsEvent();
        sub_1E1AF381C();
        v92 = v117;
        v93 = v115;
        v90(v100, v117, v115);
        sub_1E15A9694(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
        sub_1E1AF464C();
        v111(v55, v110);
        v51 = v112;
        *(v112 + OBJC_IVAR____TtC11AppStoreKit32ArcadeDownloadPackCategoriesPage_pageRenderEvent) = v118;
        (*(v89 + 8))(v92, v93);
        return v51;
      }

      v81 = v110;
      v39(v55, v110);
      v39(v77, v81);
      v63 = 1;
      v64 = 1;
      v48 = v78;
LABEL_21:

      if (v63)
      {

        if (!v64)
        {
          goto LABEL_26;
        }
      }

      else if (!v64)
      {
        goto LABEL_26;
      }

LABEL_26:
      v50 = v114;
      v49 = v115;
      goto LABEL_27;
    }

    v94 = sub_1E1AF5A7C();
    sub_1E15A9694(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v95 = 0x69726F6765746163;
    v95[1] = 0xEA00000000007365;
    v95[2] = v113;
    (*(*(v94 - 8) + 104))(v95, *MEMORY[0x1E69AB690], v94);
    swift_willThrow();
    v39(v116, v110);
    v63 = 0;
    v64 = 0;
    goto LABEL_21;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E15AAB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeDownloadPackCategory(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E15A9694(&qword_1ECEB61C0, type metadata accessor for ArcadeDownloadPackCategory);
  return sub_1E1AF464C();
}

uint64_t ArcadeDownloadPackCategoriesPage.maxNumberOfCategoriesToChooseTemplate.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArcadeDownloadPackCategoriesPage.numberOfChosenCategoriesTemplate.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ArcadeDownloadPackCategoriesPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit32ArcadeDownloadPackCategoriesPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeDownloadPackCategoriesPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit32ArcadeDownloadPackCategoriesPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeDownloadPackCategoriesPage.__deallocating_deinit()
{
  ArcadeDownloadPackCategoriesPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15AAFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v9 = swift_allocObject();
  result = a3(a1, a2);
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_1E15AB024@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit32ArcadeDownloadPackCategoriesPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1E15AB0A8()
{
  sub_1E15AB214(319, &qword_1EE1E39F0, MEMORY[0x1E69AB1E8]);
  if (v0 <= 0x3F)
  {
    sub_1E15AB214(319, &qword_1EE1E3B08, MEMORY[0x1E69AB000]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E15AB214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E15AB290()
{
  result = sub_1E1AF3C3C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t EditorialCard.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t EditorialCard.caption.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EditorialCard.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t EditorialCard.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1E15AB454()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1E1B02CC0;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_1E15ACF78(qword_1EE1E4F68, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E15AB504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 128);
  *(a2 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

void sub_1E15AB560(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 104);
  v12 = *(v6 + 96);
  v9 = *(v6 + 112);
  v10 = *(v6 + 120);
  *(v6 + 96) = v2;
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;
  *(v6 + 120) = v5;
  v11 = *(v6 + 128);
  *(v6 + 128) = v7;
  sub_1E151F120(v2, v3, v4, v5, v7);
  sub_1E151F260(v12, v8, v9, v10, v11);
}

id sub_1E15AB614@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 128);
  *(a1 + 32) = v7;
  return sub_1E151F120(v3, v4, v5, v6, v7);
}

__n128 sub_1E15AB66C(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v8;
  v9 = *(v1 + 128);
  *(v1 + 128) = v3;
  sub_1E151F260(v4, v5, v6, v7, v9);
  return result;
}

uint64_t sub_1E15AB73C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 160) = v2;
}

uint64_t sub_1E15AB7D4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t EditorialCard.__allocating_init(id:adamId:caption:title:subtitle:artwork:shelfBackground:clickAction:impressionMetrics:lockup:decorations:flowPreviewActionsConfiguration:mediaOverlayStyle:appEventFormattedDates:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v42 = a12;
  v19 = sub_1E1AEFEAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v25 = *a2;
  v24 = a2[1];
  v26 = *a10;
  v39 = a10[1];
  v40 = v26;
  v38 = *(a10 + 16);
  v41 = *a16;
  v43 = a1;
  sub_1E134FD1C(a1, &v52, &unk_1ECEB5670);
  if (*(&v53 + 1))
  {
    v27 = v53;
    *(v23 + 176) = v52;
    *(v23 + 192) = v27;
    *(v23 + 208) = v54;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v30 = v29;
    (*(v20 + 8))(v22, v19);
    v50 = v28;
    v51 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v52, &unk_1ECEB5670);
  }

  v31 = v42;
  sub_1E134FD1C(v42, v23 + OBJC_IVAR____TtC11AppStoreKit13EditorialCard_impressionMetrics, &unk_1ECEB1770);
  if (!v24)
  {
    if (qword_1ECEB1720 != -1)
    {
      swift_once();
    }

    v25 = qword_1ECEBD6F0;
    v24 = qword_1ECEBD6F8;
  }

  sub_1E1308058(v31, &unk_1ECEB1770);
  sub_1E1308058(v43, &unk_1ECEB5670);
  *(v23 + 16) = v25;
  *(v23 + 24) = v24;
  v32 = v45;
  *(v23 + 32) = v44;
  *(v23 + 40) = v32;
  v33 = v47;
  *(v23 + 48) = v46;
  *(v23 + 56) = v33;
  v34 = v49;
  *(v23 + 64) = v48;
  *(v23 + 72) = v34;
  v35 = v39;
  *(v23 + 96) = v40;
  *(v23 + 112) = v35;
  *(v23 + 128) = v38;
  *(v23 + 80) = a9;
  *(v23 + 88) = a11;
  *(v23 + 136) = a13;
  *(v23 + 160) = a14;
  *(v23 + 168) = a15;
  *(v23 + 144) = v41;
  *(v23 + 152) = a17;
  return v23;
}

uint64_t EditorialCard.init(id:adamId:caption:title:subtitle:artwork:shelfBackground:clickAction:impressionMetrics:lockup:decorations:flowPreviewActionsConfiguration:mediaOverlayStyle:appEventFormattedDates:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17)
{
  v18 = v17;
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v21 = sub_1E1AEFEAC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a2;
  v25 = a2[1];
  v27 = *a10;
  v39 = a10[1];
  v40 = v27;
  v38 = *(a10 + 16);
  v41 = *a16;
  v42 = a1;
  sub_1E134FD1C(a1, &v51, &unk_1ECEB5670);
  if (*(&v52 + 1))
  {
    v54 = v51;
    v55 = v52;
    v56 = v53;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v30 = v29;
    (*(v22 + 8))(v24, v21);
    v49 = v28;
    v50 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v51, &unk_1ECEB5670);
  }

  v31 = v55;
  *(v18 + 176) = v54;
  *(v18 + 192) = v31;
  *(v18 + 208) = v56;
  sub_1E134FD1C(a12, v18 + OBJC_IVAR____TtC11AppStoreKit13EditorialCard_impressionMetrics, &unk_1ECEB1770);
  if (!v25)
  {
    if (qword_1ECEB1720 != -1)
    {
      swift_once();
    }

    v26 = qword_1ECEBD6F0;
    v25 = qword_1ECEBD6F8;
  }

  sub_1E1308058(a12, &unk_1ECEB1770);
  sub_1E1308058(v42, &unk_1ECEB5670);
  *(v18 + 16) = v26;
  *(v18 + 24) = v25;
  v32 = v44;
  *(v18 + 32) = v43;
  *(v18 + 40) = v32;
  v33 = v46;
  *(v18 + 48) = v45;
  *(v18 + 56) = v33;
  v34 = v48;
  *(v18 + 64) = v47;
  *(v18 + 72) = v34;
  v35 = v39;
  *(v18 + 96) = v40;
  *(v18 + 112) = v35;
  *(v18 + 128) = v38;
  *(v18 + 80) = a9;
  *(v18 + 88) = a11;
  *(v18 + 136) = a13;
  *(v18 + 160) = a14;
  *(v18 + 168) = a15;
  *(v18 + 144) = v41;
  *(v18 + 152) = a17;
  return v18;
}

uint64_t EditorialCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  EditorialCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t EditorialCard.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v84 - v4;
  v101 = sub_1E1AF39DC();
  v5 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v84 - v10;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v107 = a1;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v99 = v16;
  if (v27)
  {
    v102 = v26;
    v103 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v29 = v13;
    v30 = v5;
    v32 = v31;
    (*(v29 + 8))(v15, v12);
    v102 = v28;
    v103 = v32;
    v5 = v30;
  }

  sub_1E1AF6F6C();
  v33 = *(v17 + 8);
  v98 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96 = v33;
  v33(v25, v16);
  v34 = v105;
  v35 = v93;
  *(v93 + 176) = v104;
  *(v35 + 192) = v34;
  *(v35 + 208) = v106;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v89 = v5;
  v36 = *(v5 + 16);
  v37 = v95;
  v38 = v101;
  v36(v94, v95, v101);
  sub_1E1AF464C();
  v85 = OBJC_IVAR____TtC11AppStoreKit13EditorialCard_impressionMetrics;
  sub_1E134B7C8(v11, v35 + OBJC_IVAR____TtC11AppStoreKit13EditorialCard_impressionMetrics);
  v92 = v5 + 16;
  v97 = v36;
  v36(v100, v37, v38);
  v39 = v86;
  sub_1E1AF381C();
  v40 = sub_1E1AF37CC();
  v42 = v41;
  v43 = v98;
  v44 = v99;
  v45 = v96;
  v96(v39, v99);
  if (!v42)
  {
    if (qword_1ECEB1720 != -1)
    {
      swift_once();
    }

    v40 = qword_1ECEBD6F0;
    v42 = qword_1ECEBD6F8;
  }

  v46 = v93;
  *(v93 + 16) = v40;
  *(v46 + 24) = v42;
  v47 = v91;
  sub_1E1AF381C();
  v48 = sub_1E1AF37CC();
  v50 = v49;
  v45(v47, v44);
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v53 = v52;
  v45(v47, v44);
  v96 = v45;
  *(v46 + 48) = v51;
  *(v46 + 56) = v53;
  sub_1E1AF381C();
  v54 = sub_1E1AF37CC();
  v56 = v55;
  v45(v47, v44);
  *(v46 + 64) = v54;
  *(v46 + 72) = v56;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v57 = v94;
  v58 = v100;
  v59 = v101;
  v98 = v43;
  v60 = v97;
  v97(v94, v100, v101);
  sub_1E15ACF78(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  *(v46 + 80) = v104;
  sub_1E1AF381C();
  v60(v57, v58, v59);
  sub_1E17D1100(v47, v57, &v104);
  v61 = v106;
  v62 = v105;
  *(v46 + 96) = v104;
  *(v46 + 112) = v62;
  *(v46 + 128) = v61;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v63 = static Action.tryToMakeInstance(byDeserializing:using:)(v47, v58);
  v64 = v96;
  v96(v47, v99);
  *(v46 + 88) = v63;
  type metadata accessor for Lockup();
  sub_1E1AF381C();
  v97(v57, v95, v101);
  sub_1E15ACF78(&qword_1EE1E4F60, type metadata accessor for Lockup);
  sub_1E1AF464C();
  *(v46 + 136) = v104;
  v65 = v87;
  sub_1E1AF381C();
  v66 = v88;
  sub_1E1AF374C();
  v64(v65, v99);
  v67 = sub_1E1AF5A6C();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v66, 1, v67) == 1)
  {
    sub_1E1308058(v66, &qword_1ECEB1F90);
    v69 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v72 = sub_1E13C48E4(v69);

    v73 = v93;
    *(v93 + 160) = v72;
    type metadata accessor for FlowPreviewActionsConfiguration();
    v74 = v91;
    sub_1E1AF381C();
    v75 = v94;
    v76 = v101;
    v97(v94, v100, v101);
    sub_1E15ACF78(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
    sub_1E1AF464C();
    *(v73 + 168) = v104;
    sub_1E1AF381C();
    sub_1E14056C8();
    sub_1E1AF369C();
    v77 = v99;
    v78 = v96;
    v96(v74, v99);
    *(v73 + 144) = v104;
    sub_1E1AF381C();
    v79 = v100;
    v97(v75, v100, v76);
    type metadata accessor for AppEventFormattedDate();
    sub_1E15ACF78(&unk_1EE1E1570, type metadata accessor for AppEventFormattedDate);
    v80 = sub_1E1AF630C();
    v81 = *(v89 + 8);
    v81(v95, v76);
    v78(v107, v77);
    v81(v79, v76);
    *(v73 + 152) = v80;
    return v73;
  }

  v70 = v90;
  v71 = sub_1E1AF59FC();
  if (!v70)
  {
    v69 = v71;
    v90 = 0;
    (*(v68 + 8))(v66, v67);
    goto LABEL_12;
  }

  v83 = v93;

  sub_1E151F260(*(v83 + 96), *(v83 + 104), *(v83 + 112), *(v83 + 120), *(v83 + 128));

  sub_1E134B88C(v83 + 176);
  sub_1E1308058(v83 + v85, &unk_1ECEB1770);
  type metadata accessor for EditorialCard();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E15ACAD4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for EditorialCard();
  *a1 = v1;
}

uint64_t EditorialCard.deinit()
{

  sub_1E151F260(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  sub_1E134B88C(v0 + 176);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13EditorialCard_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t EditorialCard.__deallocating_deinit()
{
  EditorialCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E15ACC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialCard();
  v7 = swift_allocObject();
  result = EditorialCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E15ACC98@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for EditorialCard();
  *a1 = v3;
}

uint64_t sub_1E15ACCE0()
{
  v1 = *(*v0 + 136);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1E1B02CC0;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_1E15ACF78(qword_1EE1E4F68, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E15ACD94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  v6 = *(v3 + 112);
  v7 = *(v3 + 120);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 128);
  *(a1 + 32) = v8;
  return sub_1E151F120(v4, v5, v6, v7, v8);
}

uint64_t sub_1E15ACDF0@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t type metadata accessor for EditorialCard()
{
  result = qword_1EE1F5458;
  if (!qword_1EE1F5458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15ACF20(uint64_t a1)
{
  result = sub_1E15ACF78(qword_1EE1F5478, type metadata accessor for EditorialCard);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E15ACF78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E15ACFC8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E15AD25C()
{
  result = qword_1EE1DCEE0;
  if (!qword_1EE1DCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCEE0);
  }

  return result;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.__allocating_init(presenter:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.__deallocating_deinit()
{
  sub_1E1337DEC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _s11AppStoreKit47OnDemandShelfFetchingCollectionElementsObserverC13prefetchCells2in14collectionView8asPartOfySayAA17ItemLayoutContextVG_So012UICollectionO0C9JetEngine15BaseObjectGraphCtF_0(uint64_t a1)
{
  v2 = type metadata accessor for ItemLayoutContext();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = MEMORY[0x1E69E7CD0];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_1E148BABC(v7, v5);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
      sub_1E1AF3DAC();

      if (v15[0])
      {
        swift_getKeyPath();
        sub_1E1AF3DAC();

        sub_1E1893DD0(v15, v14);
        sub_1E134B88C(v15);
      }

      sub_1E148BB20(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = v13;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v10 = *(v9 + 24);
  ObjectType = swift_getObjectType();
  (*(v10 + 8))(v16, ObjectType, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E15AD5E8()
{
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();

  if (v6 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2608);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E1B02CC0;
      swift_getKeyPath();
      sub_1E1AF3DAC();

      v5 = sub_1E1497D08(inited);
      swift_setDeallocating();
      sub_1E134B88C(inited + 32);
      (*(v2 + 8))(v5, ObjectType, v2);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.lookupName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.lookupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.encode(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1E135C8B4(0, v8, 0);
    v9 = v17;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1E15AF41C(v10, v7);
      v12 = sub_1E1426B1C();
      sub_1E15AF480(v7);
      v17 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E135C8B4((v13 > 1), v14 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB61C8);
  a2[3] = result;
  *a2 = v9;
  return result;
}

uint64_t ResilientDeepLinkController.DeepLinkPreferenceKey.decode(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E137A5C4(a1, v14);
  sub_1E1AF37FC();
  sub_1E1AF374C();
  v9 = sub_1E1AF5A6C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_1E1308058(v4, &qword_1ECEB1F90);
    return 0;
  }

  else
  {
    type metadata accessor for AppStoreDeepLink();
    v12 = sub_1E1AF59FC();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v4, v9);
    return v12;
  }
}

uint64_t sub_1E15ADBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF380C();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_1E14260D0(v7, a2);
}

uint64_t sub_1E15ADCCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ResilientDeepLinkController.DeepLinkPreferenceKey.decode(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t static ResilientDeepLinkController.storeDeepLink(_:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - v6;
  if (a2)
  {
    v8 = (a1 + *(type metadata accessor for AppStoreDeepLink() + 20));
    v10 = *v8;
    v9 = v8[1];

    result = ASKBagContract.resilientDeepLinkPatterns.getter();
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      v21[0] = a1;
      v21[1] = a2;
      v14 = 0;
      v15 = (result + 40);
      while (v14 < *(v12 + 16))
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v21[4] = v10;
        v21[5] = v9;
        v21[2] = v16;
        v21[3] = v17;
        v18 = sub_1E1AEFF8C();
        (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
        sub_1E13B8AA4();

        sub_1E1AF6E6C();
        v20 = v19;
        sub_1E1308058(v7, &qword_1ECEB2FC8);

        if ((v20 & 1) == 0)
        {

          goto LABEL_12;
        }

        ++v14;
        v15 += 2;
        if (v13 == v14)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
LABEL_12:
    MEMORY[0x1EEE9AC00](v5);
    return sub_1E15AF5F4(sub_1E15AF4DC);
  }

  return result;
}

BOOL sub_1E15ADF4C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = 0;
  v26 = a1;
  v12 = *a1;
  v13 = *(*a1 + 16);
  while (1)
  {
    v14 = v11;
    if (v13 == v11)
    {
      break;
    }

    if (v11 >= v12[2])
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1E15AF41C(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v10);
    v15 = *(v4 + 20);
    v16 = *&v10[v15];
    v17 = *&v10[v15 + 8];
    v18 = (a2 + v15);
    if (v16 == *v18 && v17 == v18[1])
    {
      sub_1E15AF480(v10);
      return v13 == v14;
    }

    ++v11;
    v20 = sub_1E1AF74AC();
    sub_1E15AF480(v10);
    if (v20)
    {
      return v13 == v14;
    }
  }

  sub_1E15AF41C(a2, v7);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_17:
  v12 = sub_1E172E964(0, v12[2] + 1, 1, v12);
LABEL_11:
  v21 = v26;
  v23 = v12[2];
  v22 = v12[3];
  if (v23 >= v22 >> 1)
  {
    v12 = sub_1E172E964(v22 > 1, v23 + 1, 1, v12);
  }

  v12[2] = v23 + 1;
  sub_1E14282FC(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
  *v21 = v12;
  return v13 == v14;
}

uint64_t static ResilientDeepLinkController.fetchLatestResilientDeepLink(bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - v7;
  v8 = type metadata accessor for AppStoreDeepLink();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  v46 = 0xD000000000000014;
  v47 = 0x80000001E1B674F0;
  sub_1E15AF80C();
  sub_1E1AF3C5C();

  result = v44;
  if (!v44)
  {
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  v31 = a2;
  v12 = *(v44 + 16);
  if (v12)
  {
    v37 = v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v38 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    v36 = (v6 + 8);
    v34 = v9;
    v35 = v8;
    v33 = v44;
    while (v12 <= *(result + 16))
    {
      v13 = *(v9 + 72);
      v39 = v12 - 1;
      v32 = v37 + v13 * (v12 - 1);
      v14 = v43;
      sub_1E15AF41C(v32, v43);
      v15 = (v14 + *(v8 + 20));
      v16 = *v15;
      v17 = v15[1];
      if (qword_1EE1D21C0 != -1)
      {
        swift_once();
      }

      v18 = v40;
      sub_1E1AF534C();
      v19 = v41;
      sub_1E1AF531C();
      (*v36)(v18, v19);
      if (!v46 || (v20 = sub_1E1679410(v46), result = , !v20))
      {

        v20 = &unk_1F5C2D688;
      }

      v21 = v20[2];
      if (v21)
      {
        v22 = 0;
        v23 = v20 + 5;
        while (v22 < v20[2])
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v46 = v16;
          v47 = v17;
          v44 = v24;
          v45 = v25;
          v26 = sub_1E1AEFF8C();
          (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
          sub_1E13B8AA4();

          sub_1E1AF6E6C();
          v28 = v27;
          sub_1E1308058(v5, &qword_1ECEB2FC8);

          if ((v28 & 1) == 0)
          {

            sub_1E15AF480(v43);
            v29 = v31;
            sub_1E15AF41C(v32, v31);

            return (*(v34 + 56))(v29, 0, 1, v35);
          }

          ++v22;
          v23 += 2;
          if (v21 == v22)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:

      sub_1E15AF480(v43);
      v9 = v34;
      v8 = v35;
      result = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return (*(v9 + 56))(v31, 1, 1, v8);
  }

  return result;
}

uint64_t static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)(uint64_t a1)
{
  v80 = a1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v84 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v65 - v1;
  v79 = type metadata accessor for AppStoreDeepLink();
  v2 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v71 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v72 = v65 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v85 = v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v65 - v9;
  v11 = sub_1E1AF44CC();
  swift_allocObject();
  v69 = "l updates. Received";
  sub_1E1AF44AC();
  v66 = 0xD000000000000014;
  v87 = 0xD000000000000014;
  v88 = 0x80000001E1B674F0;
  v67 = 0x80000001E1B674F0;
  v12 = sub_1E15AF80C();
  v68 = v11;
  v65[1] = v12;
  sub_1E1AF3C5C();

  if (v91)
  {
    v14 = v91;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v93 = v14;
  v70 = v14[2];
  if (!v70)
  {
LABEL_13:
    v30 = v14[2];
    v31 = v30;
    goto LABEL_45;
  }

  v15 = 0;
  v83 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v16 = v14 + v83;
  v17 = *(v2 + 72);
  v86 = v14;
  v78 = v17;
  v82 = v14 + v83;
  while (2)
  {
    v73 = v15;
    v18 = &v16[v17 * v15 + *(v79 + 20)];
    v19 = *v18;
    v20 = v18[1];
    result = ASKBagContract.resilientDeepLinkPatterns.getter();
    v21 = result;
    v22 = *(result + 16);
    if (v22)
    {
      v23 = 0;
      v24 = (result + 40);
      while (1)
      {
        if (v23 >= *(v21 + 16))
        {
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
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v25 = *(v24 - 1);
        v26 = *v24;
        v87 = v19;
        v88 = v20;
        v91 = v25;
        v92 = v26;
        v27 = sub_1E1AEFF8C();
        (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
        sub_1E13B8AA4();

        sub_1E1AF6E6C();
        v29 = v28;
        sub_1E1308058(v10, &qword_1ECEB2FC8);

        if ((v29 & 1) == 0)
        {
          break;
        }

        ++v23;
        v24 += 2;
        if (v22 == v23)
        {
          goto LABEL_14;
        }
      }

      v15 = v73 + 1;
      v14 = v86;
      v17 = v78;
      v16 = v82;
      if (v73 + 1 != v70)
      {
        continue;
      }

      goto LABEL_13;
    }

    break;
  }

LABEL_14:

  v30 = v73 + 1;
  if (__OFADD__(v73, 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v74 = (v84 + 8);
  v75 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  v14 = v86;
  v32 = v78;
  while (1)
  {
    v33 = v14[2];
    if (v30 == v33)
    {
      break;
    }

    if (v30 >= v33)
    {
      goto LABEL_60;
    }

    v86 = v14;
    v34 = v30 * v32;
    v82 = v14 + v83;
    v35 = v85;
    sub_1E15AF41C(v14 + v83 + v30 * v32, v85);
    v36 = (v35 + *(v79 + 20));
    v37 = *v36;
    v38 = v36[1];
    if (qword_1EE1D21C0 != -1)
    {
      swift_once();
    }

    v84 = v30;
    v39 = v76;
    sub_1E1AF534C();
    v40 = v77;
    sub_1E1AF531C();
    (*v74)(v39, v40);
    v81 = v34;
    if (!v87 || (v41 = sub_1E1679410(v87), result = , !v41))
    {

      v41 = &unk_1F5C2D6B8;
    }

    v42 = v41[2];
    if (v42)
    {
      v43 = 0;
      v44 = v41 + 5;
      while (1)
      {
        if (v43 >= v41[2])
        {
          __break(1u);
          goto LABEL_59;
        }

        v45 = *(v44 - 1);
        v46 = *v44;
        v87 = v37;
        v88 = v38;
        v91 = v45;
        v92 = v46;
        v47 = sub_1E1AEFF8C();
        (*(*(v47 - 8) + 56))(v10, 1, 1, v47);
        sub_1E13B8AA4();

        sub_1E1AF6E6C();
        v49 = v48;
        sub_1E1308058(v10, &qword_1ECEB2FC8);

        if ((v49 & 1) == 0)
        {
          break;
        }

        ++v43;
        v44 += 2;
        if (v42 == v43)
        {
          goto LABEL_16;
        }
      }

      result = sub_1E15AF480(v85);
      v50 = v73;
      v51 = v84;
      if (v73 == v84)
      {
        v14 = v86;
        v32 = v78;
      }

      else
      {
        v14 = v86;
        v32 = v78;
        if (v73 < 0)
        {
          goto LABEL_63;
        }

        v52 = v86[2];
        if (v73 >= v52)
        {
          goto LABEL_64;
        }

        v53 = v73 * v78;
        v54 = v82;
        result = sub_1E15AF41C(&v82[v73 * v78], v72);
        if (v51 >= v52)
        {
          goto LABEL_65;
        }

        v55 = v81;
        sub_1E15AF41C(&v54[v81], v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1E14E69B8(v14);
        }

        v56 = v14 + v83;
        result = sub_1E15AF860(v71, v14 + v83 + v53);
        if (v51 >= v14[2])
        {
          goto LABEL_66;
        }

        result = sub_1E15AF860(v72, &v56[v55]);
        v50 = v73;
      }

      v57 = __OFADD__(v50, 1);
      v58 = v50 + 1;
      if (v57)
      {
        goto LABEL_62;
      }

      v73 = v58;
      v57 = __OFADD__(v51, 1);
      v30 = v51 + 1;
      if (v57)
      {
        goto LABEL_61;
      }
    }

    else
    {
LABEL_16:

      result = sub_1E15AF480(v85);
      v14 = v86;
      v32 = v78;
      v30 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_61;
      }
    }
  }

  v31 = v73;
  if (v30 < v73)
  {
    goto LABEL_69;
  }

  if (v73 < 0)
  {
LABEL_70:
    __break(1u);
    return result;
  }

LABEL_45:
  v59 = v31;
  v60 = v31 - v30;
  v61 = v30 + v60;
  if (__OFADD__(v30, v60))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v14;
  if (!isUniquelyReferenced_nonNull_native || v61 > v14[3] >> 1)
  {
    if (v30 <= v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = v30;
    }

    v14 = sub_1E172E964(isUniquelyReferenced_nonNull_native, v63, 1, v14);
    v93 = v14;
  }

  sub_1E14F3B10(v59, v30, 0);
  v64 = v14[2];
  if (v70 == v64)
  {
  }

  if (v64)
  {
    swift_allocObject();
    sub_1E1AF44AC();
    v91 = v14;
    v87 = v66;
    v88 = v67;
    sub_1E1AF3C6C();
  }

  else
  {

    swift_allocObject();
    sub_1E1AF44AC();
    v89 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v90 = sub_1E15AFBD4();
    v87 = v66;
    v88 = v67;
    sub_1E1AF448C();

    __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  swift_allocObject();
  sub_1E1AF44AC();
  sub_1E1AF449C();
}

uint64_t static ResilientDeepLinkController.removeDeepLink(_:)(uint64_t a1, uint64_t a2)
{

  sub_1E15AFC28(a1, a2);
}

uint64_t static ResilientDeepLinkController.removeAllDeepLinks()()
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  v1[3] = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
  v1[4] = sub_1E15AFBD4();
  v1[0] = 0xD000000000000014;
  v1[1] = 0x80000001E1B674F0;
  sub_1E1AF448C();

  __swift_destroy_boxed_opaque_existential_1(v1);
  swift_allocObject();
  sub_1E1AF44AC();
  sub_1E1AF449C();
}

uint64_t static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26[-v8];
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s11AppStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(a2);
  sub_1E1307FE8(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1E1308058(v9, &unk_1ECEB4B60);
    return 0;
  }

  v27 = v14;
  v28 = v11;
  v29 = v10;
  (*(v11 + 32))(v13, v9, v10);
  result = ASKBagContract.resilientDeepLinkFinancePatterns.getter();
  v16 = result;
  v17 = *(result + 16);
  if (!v17)
  {
LABEL_8:

    (*(v28 + 8))(v13, v29);
    return 0;
  }

  v18 = 0;
  v19 = (result + 40);
  while (1)
  {
    if (v18 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v19 - 1);
    v21 = *v19;

    v32 = sub_1E1AEFBDC();
    v33 = v22;
    v30 = v20;
    v31 = v21;
    v23 = sub_1E1AEFF8C();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_1E13B8AA4();
    sub_1E1AF6E6C();
    v25 = v24;
    sub_1E1308058(v6, &qword_1ECEB2FC8);

    if ((v25 & 1) == 0)
    {
      break;
    }

    ++v18;
    v19 += 2;
    if (v17 == v18)
    {
      goto LABEL_8;
    }
  }

  (*(v28 + 8))(v13, v29);

  return (v27 & 1) != 0;
}

uint64_t sub_1E15AF41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E15AF480(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E15AF4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = type metadata accessor for AppStoreDeepLink();
  v8 = 0;
  v9 = a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
  v10 = *(*(v7 - 8) + 72);
  while (1)
  {
    v11 = (v9 + *(v7 + 20));
    v12 = *v11 == a2 && v11[1] == a3;
    if (v12 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    ++v8;
    v9 += v10;
    if (v3 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1E15AF5F4(uint64_t (*a1)(uint64_t *))
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  v6 = 0xD000000000000014;
  v7 = 0x80000001E1B674F0;
  sub_1E15AF80C();
  sub_1E1AF3C5C();

  v2 = v10;
  if (!v10)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v11 = v2;
  v3 = a1(&v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
  }

  if (*(v11 + 16))
  {
    swift_allocObject();
    sub_1E1AF44AC();
    v10 = v4;
    v6 = 0xD000000000000014;
    v7 = 0x80000001E1B674F0;
    sub_1E1AF3C6C();
  }

  else
  {

    swift_allocObject();
    sub_1E1AF44AC();
    v8 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v9 = sub_1E15AFBD4();
    v6 = 0xD000000000000014;
    v7 = 0x80000001E1B674F0;
    sub_1E1AF448C();

    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  swift_allocObject();
  sub_1E1AF44AC();
  sub_1E1AF449C();
}

unint64_t sub_1E15AF80C()
{
  result = qword_1EE1E9F90;
  if (!qword_1EE1E9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E9F90);
  }

  return result;
}

uint64_t sub_1E15AF860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreDeepLink();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E15AF8C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppStoreDeepLink();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = *a1;
  v17 = v51;
  result = sub_1E15AF4E4(*a1, a2, a3);
  if (v17)
  {
    return result;
  }

  v51 = v15;
  v45 = v12;
  v43 = 0;
  if (v19)
  {
    return *(v16 + 16);
  }

  v44 = v9;
  v49 = v6;
  v42 = a1;
  v47 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v21 = v16;
  v23 = (v16 + 16);
  v22 = *(v16 + 16);
  if (v20 == v22)
  {
    return v47;
  }

  v24 = a3;
  v46 = a2;
  v48 = v7;
  while (v20 < v22)
  {
    v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v26 = v21;
    v27 = v21 + v25;
    v28 = *(v7 + 72);
    v50 = v28 * v20;
    v29 = v51;
    sub_1E15AF41C(v27 + v28 * v20, v51);
    v30 = (v29 + *(v49 + 20));
    if (*v30 == a2 && v30[1] == v24)
    {
      result = sub_1E15AF480(v29);
LABEL_10:
      v7 = v48;
      v21 = v26;
      goto LABEL_11;
    }

    v32 = v24;
    v33 = v29;
    v34 = sub_1E1AF74AC();
    result = sub_1E15AF480(v33);
    if (v34)
    {
      v24 = v32;
      a2 = v46;
      goto LABEL_10;
    }

    v35 = v47;
    if (v20 == v47)
    {
      v24 = v32;
      a2 = v46;
      v21 = v26;
    }

    else
    {
      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v36 = *v23;
      if (v47 >= v36)
      {
        goto LABEL_31;
      }

      v24 = v32;
      v37 = v28 * v47;
      result = sub_1E15AF41C(v27 + v37, v45);
      if (v20 >= v36)
      {
        goto LABEL_32;
      }

      v38 = v50;
      sub_1E15AF41C(v27 + v50, v44);
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1E14E69B8(v26);
      }

      a2 = v46;
      v39 = v42;
      v40 = v21 + v25;
      result = sub_1E15AF860(v44, v40 + v37);
      if (v20 >= *(v21 + 16))
      {
        goto LABEL_33;
      }

      result = sub_1E15AF860(v45, v40 + v38);
      *v39 = v21;
      v35 = v47;
    }

    v47 = v35 + 1;
    v7 = v48;
LABEL_11:
    ++v20;
    v23 = (v21 + 16);
    v22 = *(v21 + 16);
    if (v20 == v22)
    {
      return v47;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1E15AFBD4()
{
  result = qword_1EE1E9F98[0];
  if (!qword_1EE1E9F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E9F98);
  }

  return result;
}

uint64_t sub_1E15AFC28(uint64_t a1, uint64_t a2)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  v13 = 0xD000000000000014;
  v14 = 0x80000001E1B674F0;
  sub_1E15AF80C();
  sub_1E1AF3C5C();

  if (v17)
  {
    v4 = v17;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v18 = v4;
  v5 = *(v4 + 16);
  if (!v5)
  {
  }

  v6 = sub_1E15AF8C4(&v18, a1, a2);

  v8 = v18;
  v9 = v18[2];
  if (v6 > v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v6 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(v9, v6 - v9))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > v8[3] >> 1)
  {
    if (v9 <= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v9;
    }

    v8 = sub_1E172E964(isUniquelyReferenced_nonNull_native, v11, 1, v8);
    v18 = v8;
  }

  sub_1E14F3B10(v6, v9, 0);
  v12 = v8[2];
  if (v5 == v12)
  {
  }

  if (v12)
  {
    swift_allocObject();
    sub_1E1AF44AC();
    v17 = v8;
    v13 = 0xD000000000000014;
    v14 = 0x80000001E1B674F0;
    sub_1E1AF3C6C();
  }

  else
  {

    swift_allocObject();
    sub_1E1AF44AC();
    v15 = &type metadata for ResilientDeepLinkController.DeepLinkPreferenceKey;
    v16 = sub_1E15AFBD4();
    v13 = 0xD000000000000014;
    v14 = 0x80000001E1B674F0;
    sub_1E1AF448C();

    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  swift_allocObject();
  sub_1E1AF44AC();
  sub_1E1AF449C();
}

uint64_t _s11AppStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = v26 - v6;
  v7 = type metadata accessor for AppStoreDeepLink();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  v39 = 0xD000000000000014;
  v40 = 0x80000001E1B674F0;
  sub_1E15AF80C();
  sub_1E1AF3C5C();

  result = v37;
  if (v37)
  {
    v27 = *(v37 + 16);
    if (v27)
    {
      v11 = 0;
      v32 = (v36 + *(v7 + 20));
      v30 = v37 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v31 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
      v29 = (v5 + 8);
      v26[0] = v8;
      v26[1] = a1;
      v28 = v37;
      while (v11 < *(result + 16))
      {
        v12 = *(v8 + 72);
        v33 = v11;
        sub_1E15AF41C(v30 + v12 * v11, v36);
        v13 = *v32;
        v14 = v32[1];
        if (qword_1EE1D21C0 != -1)
        {
          swift_once();
        }

        v15 = v34;
        sub_1E1AF534C();
        v16 = v35;
        sub_1E1AF531C();
        (*v29)(v15, v16);
        if (!v39 || (v17 = sub_1E1679410(v39), result = , !v17))
        {

          v17 = &unk_1F5C2D6E8;
        }

        v18 = v17[2];
        if (v18)
        {
          v19 = 0;
          v20 = v17 + 5;
          while (v19 < v17[2])
          {
            v21 = *(v20 - 1);
            v22 = *v20;
            v39 = v13;
            v40 = v14;
            v37 = v21;
            v38 = v22;
            v23 = sub_1E1AEFF8C();
            (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
            sub_1E13B8AA4();

            sub_1E1AF6E6C();
            v25 = v24;
            sub_1E1308058(v4, &qword_1ECEB2FC8);

            if ((v25 & 1) == 0)
            {

              sub_1E15AF480(v36);
              return 1;
            }

            ++v19;
            v20 += 2;
            if (v18 == v19)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          break;
        }

LABEL_4:
        v11 = v33 + 1;

        sub_1E15AF480(v36);
        v8 = v26[0];
        result = v28;
        if (v11 == v27)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:

      return 0;
    }
  }

  return result;
}

uint64_t DiffablePageContentIdentifier.init(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DAC();

  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t DiffablePageContentIdentifier.init<A>(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v2 = sub_1E1AF3DCC();
  sub_1E1AF3DAC();

  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t DiffablePageContentIdentifier.init(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF3FEC();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DiffablePageContentIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v15);
  if (*(&v16 + 1))
  {
    result = sub_1E13E2E98(a1);
    v9 = v17;
    v20 = v17;
    v10 = v16;
    v18 = v15;
    v19 = v16;
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  else
  {
    sub_1E13E2E98(&v15);
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    *&v18 = v11;
    *(&v18 + 1) = v13;
    sub_1E1AF6F6C();
    return sub_1E13E2E98(a1);
  }

  return result;
}

uint64_t DiffablePageContentIdentifier.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E15B06DC()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E15B0720()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

unint64_t sub_1E15B0798()
{
  result = qword_1EE1E8D00;
  if (!qword_1EE1E8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E8D00);
  }

  return result;
}

uint64_t *TodayCardMediaInAppPurchase.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v48 = sub_1E1AF380C();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v36 - v22;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_1E1AF464C();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_1E1AF381C();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for InAppPurchaseLockup();
  swift_allocObject();
  v28 = v42;
  v29 = InAppPurchaseLockup.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_1E1308058(v43, &unk_1ECEB1770);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC11AppStoreKit27TodayCardMediaInAppPurchase_lockup) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_1E1308058(v43, &unk_1ECEB1770);
  }

  return v30;
}

uint64_t TodayCardMediaInAppPurchase.__allocating_init(lockup:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaInAppPurchase.init(lockup:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaInAppPurchase.init(lockup:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit27TodayCardMediaInAppPurchase_lockup) = a1;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1E134FD1C(a2, v18 - v11, &unk_1ECEB1770);
  sub_1E134FD1C(v25, &v19, &unk_1ECEB5670);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(&v19, &unk_1ECEB5670);
  }

  sub_1E1308058(a2, &unk_1ECEB1770);
  sub_1E1308058(v25, &unk_1ECEB5670);
  v16 = v23;
  *(v3 + 32) = v22;
  *(v3 + 48) = v16;
  *(v3 + 64) = v24;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 4;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaInAppPurchase.offerAdamIds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit27TodayCardMediaInAppPurchase_lockup);
  v3 = *(v2 + 24);
  *(v1 + 32) = *(v2 + 16);
  *(v1 + 40) = v3;

  return v1;
}

uint64_t TodayCardMediaInAppPurchase.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t TodayCardMediaInAppPurchase.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15B11CC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit27TodayCardMediaInAppPurchase_lockup);
  v4 = *(v3 + 24);
  *(v2 + 32) = *(v3 + 16);
  *(v2 + 40) = v4;

  return v2;
}

uint64_t type metadata accessor for TodayCardMediaInAppPurchase()
{
  result = qword_1ECEB61D0;
  if (!qword_1ECEB61D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadePackOfferAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *v2;
  v44 = sub_1E1AF39DC();
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v36 = v8;
  v16 = *(v8 + 8);
  v42 = v7;
  v40 = v16;
  v16(v12, v7);
  v17 = sub_1E1AF5A6C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v15, 1, v17);
  if (v19 == 1)
  {
    v20 = a2;
    sub_1E1308058(v15, &qword_1ECEB1F90);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = v2;
    MEMORY[0x1EEE9AC00](v19);
    v20 = a2;
    *(&v34 - 2) = a2;
    type metadata accessor for OfferAction();
    v22 = v43;
    v21 = sub_1E1AF59FC();
    v43 = v22;
    v3 = v35;
    (*(v18 + 8))(v15, v17);
  }

  v35 = OBJC_IVAR____TtC11AppStoreKit21ArcadePackOfferAction_offerActions;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit21ArcadePackOfferAction_offerActions) = v21;
  v23 = v42;
  if (!(v21 >> 62))
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v41;
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_9:
    v30 = a1;
    a1 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    strcpy(v32, "offerActions");
    v32[13] = 0;
    *(v32 + 7) = -5120;
    *(v32 + 2) = v39;
    (*(*(a1 - 8) + 104))(v32, *MEMORY[0x1E69AB690], a1);
    swift_willThrow();
    goto LABEL_10;
  }

  v31 = sub_1E1AF71CC();
  v23 = v42;
  v24 = v31;
  v25 = v41;
  if (!v31)
  {
    goto LABEL_9;
  }

LABEL_6:
  v26 = v37;
  (*(v36 + 16))(v37, a1, v23);
  v27 = v38;
  (*(v25 + 16))(v38, v20, v44);
  v28 = v43;
  v29 = Action.init(deserializing:using:)(v26, v27);
  v30 = a1;
  if (!v28)
  {
    a1 = v29;
    v40(v30, v23);
    (*(v25 + 8))(v20, v44);
    return a1;
  }

LABEL_10:
  v40(v30, v23);
  (*(v25 + 8))(v20, v44);
  if (!v24)
  {

    swift_deallocPartialClassInstance();
  }

  return a1;
}

uint64_t sub_1E15B18C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  type metadata accessor for Action();
  result = sub_1E1AF37AC();
  if ((result & 1) == 0)
  {
    static Action.makeInstance(byDeserializing:using:)(a1, a2);
    if (v3)
    {
      sub_1E1AF397C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
      sub_1E1AF39FC();
      (*(v8 + 8))(v10, v7);
      sub_1E14C8DE8(v14, v12);
      if (v13)
      {
        __swift_project_boxed_opaque_existential_1Tm(v12, v13);
        sub_1E1AF4EBC();

        sub_1E1308058(v14, &qword_1ECEB43C8);
        result = __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
        sub_1E1308058(v14, &qword_1ECEB43C8);

        result = sub_1E1308058(v12, &qword_1ECEB43C8);
      }
    }

    else
    {
      type metadata accessor for OfferAction();
      result = swift_dynamicCastClass();
      if (result)
      {
        *a3 = result;
        return result;
      }
    }
  }

  *a3 = 0;
  return result;
}

uint64_t ArcadePackOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ArcadePackOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadePackOfferAction()
{
  result = qword_1EE1DB1A0;
  if (!qword_1EE1DB1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetricsPipelineTransformer.State.aggregator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF4F3C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricsPipelineTransformer.State.aggregator.setter(uint64_t a1)
{
  v3 = sub_1E1AF4F3C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MetricsPipelineTransformer.State.baseRecorder.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

uint64_t MetricsPipelineTransformer.State.baseRecorder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.State.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 24);
  v4 = sub_1E1AF430C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MetricsPipelineTransformer.State.configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 24);
  v4 = sub_1E1AF430C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MetricsPipelineTransformer.State.additionalRecorders.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

uint64_t MetricsPipelineTransformer.State.additionalRecorders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.State.decorators.getter()
{
  type metadata accessor for MetricsPipelineTransformer.State(0);
}

uint64_t MetricsPipelineTransformer.State.decorators.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPipelineTransformer.State(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPipelineTransformer.__allocating_init(aggregator:recorder:configuration:additionalRecorders:decorators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x1E69E7CC0];
  *(v7 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v8 = v7 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState;
  v9 = sub_1E1AF4F3C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v12 = v11[6];
  v13 = sub_1E1AF430C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a3, v13);
  *(v8 + v11[5]) = a2;
  *(v8 + v11[7]) = a4;
  *(v8 + v11[8]) = a5;
  (*(v14 + 8))(a3, v13);
  (*(v10 + 8))(a1, v9);
  v15 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v7 + v15) = MEMORY[0x1E69E7CC0];
  return v7;
}

uint64_t MetricsPipelineTransformer.init(aggregator:recorder:configuration:additionalRecorders:decorators:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v8 = v5 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState;
  v9 = sub_1E1AF4F3C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  v11 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v12 = v11[6];
  v13 = sub_1E1AF430C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8 + v12, a3, v13);
  *(v8 + v11[5]) = a2;
  *(v8 + v11[7]) = a4;
  *(v8 + v11[8]) = a5;
  (*(v14 + 8))(a3, v13);
  (*(v10 + 8))(a1, v9);
  v15 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v5 + v15) = MEMORY[0x1E69E7CC0];

  return v5;
}

uint64_t MetricsPipelineTransformer.transform(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1E172E98C(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1E172E98C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1E15B2710;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

uint64_t MetricsPipelineTransformer.objectGraphDependencies()()
{
  v0 = sub_1E1AF361C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF436C();

  sub_1E1AF35EC();
  sub_1E1AF421C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B02CC0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  v6 = sub_1E1AF41AC();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1E15B28D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF4F3C();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF430C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v47 - v12;
  v13 = type metadata accessor for MetricsPipelineTransformer.State(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF421C();
  v16 = sub_1E1AF41FC();
  sub_1E15B30BC(a1 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState, v15);
  v17 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = *(v18 + 16);
  v56 = a1;
  if (v19)
  {

    v20 = v18 + 40;
    do
    {
      v21 = *(v20 - 8);
      v57[0] = v16;

      v21(v15, v57);

      v20 += 16;
      --v19;
    }

    while (v19);
  }

  v22 = swift_allocBox();
  v24 = v23;
  sub_1E15B3120(v15, v23);

  v25 = sub_1E1AF4DDC();

  v47 = v22;

  swift_beginAccess();
  *(v24 + v13[5]) = v25;

  v26 = *(*(v24 + v13[7]) + 16);
  v51 = a2;
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6230);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E1B02CC0;
    v28 = *(v24 + v13[5]);
    v29 = sub_1E1AF4DFC();
    v30 = MEMORY[0x1E69AB370];
    *(v27 + 56) = v29;
    *(v27 + 64) = v30;
    *(v27 + 32) = v28;
    v57[0] = v27;

    sub_1E172894C(v31);
    v32 = sub_1E1AF51BC();
    swift_allocObject();
    v33 = sub_1E1AF51AC();
    v34 = MEMORY[0x1E69AB488];
  }

  else
  {
    v33 = *(v24 + v13[5]);
    v32 = sub_1E1AF4DFC();

    v34 = MEMORY[0x1E69AB370];
  }

  v57[3] = v32;
  v57[4] = v34;
  v57[0] = v33;
  v35 = v13[6];
  v36 = v54;
  v37 = v55;
  v38 = *(v54 + 16);
  v39 = v48;
  v38(v48, v24 + v35, v55);
  v40 = v52;
  v41 = v49;
  v42 = v24;
  v43 = v53;
  (*(v52 + 16))(v49, v42, v53);
  sub_1E1AF42DC();
  (*(v40 + 8))(v41, v43);
  v44 = *(v36 + 8);
  v44(v39, v37);
  v45 = v50;
  sub_1E1AF42CC();
  v44(v10, v37);
  *(v56 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 1;
  v38(v10, v45, v37);
  sub_1E1AF432C();

  v44(v45, v37);
  __swift_destroy_boxed_opaque_existential_1(v57);
}

id sub_1E15B2DCC(void *a1)
{
  v1 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v2 = swift_projectBox();
  swift_beginAccess();
  v3 = *(v2 + *(v1 + 32));
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = a1;
    v6 = v3 + 40;
    do
    {
      v7 = *(v6 - 8);
      v11 = v5;

      v7(&v10, &v11);

      v5 = v10;
      v6 += 16;
      --v4;
    }

    while (v4);

    return v5;
  }

  else
  {

    return a1;
  }
}

uint64_t MetricsPipelineTransformer.copy()()
{
  v1 = type metadata accessor for MetricsPipelineTransformer.State(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E15B30BC(v0 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState, v3);
  v4 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  sub_1E15B3120(v3, v6 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState);
  v7 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return v6;
}

uint64_t MetricsPipelineTransformer.deinit()
{
  sub_1E15B3184(v0 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState);

  return v0;
}

uint64_t MetricsPipelineTransformer.__deallocating_deinit()
{
  sub_1E15B3184(v0 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState);

  return swift_deallocClassInstance();
}

uint64_t sub_1E15B30BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E15B3120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E15B3184(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPipelineTransformer.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E15B3208()
{
  result = type metadata accessor for MetricsPipelineTransformer.State(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E15B3304()
{
  sub_1E1AF4F3C();
  if (v0 <= 0x3F)
  {
    sub_1E1AF4DFC();
    if (v1 <= 0x3F)
    {
      sub_1E1AF430C();
      if (v2 <= 0x3F)
      {
        sub_1E15B3400(319, &qword_1ECEB6218, &qword_1ECEB3D70);
        if (v3 <= 0x3F)
        {
          sub_1E15B3400(319, &qword_1ECEB6220, &qword_1ECEB6228);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E15B3400(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1E1AF635C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(a4 + 8);
  v10 = a1 + *(v8 + 32);

  return v9(v10, a2, a3, a4);
}

uint64_t ShelfComponentTypeMappingProvider.configurableComponentContainerViewType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))();
  if (result)
  {
    result = dynamic_cast_existential_2_conditional(result);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

{
  result = (*(a4 + 8))();
  if (result)
  {
    result = dynamic_cast_existential_2_conditional(result);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

id sub_1E15B36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1E1AF5DBC();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_1E1AF5DBC();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1E1AF5DBC();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v11, v12, v13, a7);

  return v14;
}

id sub_1E15B3900()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E15B396C()
{
  result = qword_1ECEB6238;
  if (!qword_1ECEB6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6238);
  }

  return result;
}

unint64_t sub_1E15B39C4()
{
  result = qword_1ECEB6240;
  if (!qword_1ECEB6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB6240);
  }

  return result;
}

uint64_t sub_1E15B3A18()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB6250);
  __swift_project_value_buffer(v4, qword_1ECEB6250);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

char *sub_1E15B3B60(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = v3;
  v24 = sub_1E1AEF8BC();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AEF91C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_openInlinePresentationIntents;
  *&v4[v13] = sub_1E15A0F84(MEMORY[0x1E69E7CC0]);
  v4[OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_didParseEverything] = 0;
  v14 = objc_allocWithZone(ASKNQMLParser);
  v15 = sub_1E1AF5DBC();

  v16 = [v14 initWithString_];

  *&v4[OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_parser] = v16;
  v17 = &v4[OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_configuration];
  v18 = a3[3];
  v17[2] = a3[2];
  v17[3] = v18;
  v17[4] = a3[4];
  v19 = a3[1];
  *v17 = *a3;
  v17[1] = v19;
  sub_1E1AEF90C();
  v20 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
  (*(v10 + 32))(&v4[OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator], v12, v9);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v4[v20], v9);
  sub_1E1AEF7DC();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 32))(&v4[OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_lastElementIndex], v8, v24);
  v21 = type metadata accessor for NqmlAttributedStringGenerator();
  v25.receiver = v4;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  [*&v22[OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_parser] setDelegate_];
  return v22;
}

uint64_t sub_1E15B3E24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16 = a1;
  v3 = sub_1E1AEF8BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEF91C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, v2 + v11, v7);
  sub_1E1AEF7DC();
  (*(v8 + 8))(v10, v7);
  v13 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v13, v6, v3);
  swift_endAccess();
  [*(v2 + OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_parser) parse];
  sub_1E15B4034();
  return (v12)(v16, v2 + v11, v7);
}

void sub_1E15B4034()
{
  v38 = sub_1E1AEF8BC();
  v1 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v4;
  v5 = sub_1E1AEF7EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E1AEF91C();
  v9 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
  v40 = v0;
  swift_beginAccess();
  v30 = *(v9 + 16);
  v32 = v9 + 16;
  v28 = (v9 + 8);
  v35 = (v1 + 8);
  v29 = (v6 + 8);
  while (1)
  {
    v15 = v31;
    v16 = v33;
    v30(v31, v40 + v39, v33);
    sub_1E1AEF7CC();
    (*v28)(v15, v16);
    sub_1E15B7320(&qword_1ECEB62B8, MEMORY[0x1E6968678]);
    if (sub_1E1AF667C())
    {
      (*v29)(v8, v5);
      return;
    }

    v17 = v37;
    sub_1E1AF668C();
    v18 = sub_1E15B7320(&qword_1ECEB62C0, MEMORY[0x1E6968678]);
    v19 = v36;
    v34 = v18;
    sub_1E1AF5D5C();
    v20 = *v35;
    v21 = v38;
    (*v35)(v17, v38);
    v22 = sub_1E1AF66FC();

    v22(v45, 0);
    v20(v19, v21);
    (*v29)(v8, v5);
    v23 = sub_1E1AF5DBC();

    if (qword_1EE1E3468 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE2160F0;
    if ([v23 length] < 1)
    {

      return;
    }

    v25 = [v23 length];
    if (__OFSUB__(v25, 1))
    {
      break;
    }

    v26 = [v24 characterIsMember_];

    if ((v26 & 1) == 0)
    {
      return;
    }

    swift_beginAccess();
    v27 = sub_1E1AEF7BC();
    if (sub_1E1AF667C())
    {
      goto LABEL_17;
    }

    sub_1E15B7320(&qword_1ECEB62C8, MEMORY[0x1E6968678]);
    sub_1E1AF671C();
    if (v42)
    {
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v11 = v37;
      sub_1E1AF668C();
      v12 = v36;
      sub_1E1AF5D5C();
      v13 = v11;
      v14 = v38;
      v20(v13, v38);
      sub_1E1AF672C();
      v20(v12, v14);
    }

    v27(v45, 0);
    swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1E15B483C(void *a1)
{
  v2 = sub_1E1AEF91C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;

  sub_1E1AEF80C();
  swift_beginAccess();
  sub_1E15B7320(&qword_1ECEB62D0, MEMORY[0x1E6968848]);
  sub_1E1AEF8CC();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
}

uint64_t sub_1E15B49AC()
{
  swift_beginAccess();

  v1 = sub_1E15B50F8(v0);

  v2 = v1[2];
  v28 = v2;
  if (v2)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1E135C8F4(0, v2, 0);
    v3 = v1 + 8;
    result = sub_1E1AF6EFC();
    v5 = v28;
    v6 = 0;
    do
    {
      if (result < 0 || result >= 1 << *(v1 + 32))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v8 = result >> 6;
      v9 = 1 << result;
      if ((v3[result >> 6] & (1 << result)) == 0)
      {
        goto LABEL_29;
      }

      v10 = *(v1[6] + 8 * result);
      v11 = *(v1 + 9);
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        v26 = *(v1 + 9);
        v27 = result;
        sub_1E135C8F4((v12 > 1), v13 + 1, 1);
        v5 = v28;
        v11 = v26;
        result = v27;
      }

      *(v29 + 16) = v13 + 1;
      *(v29 + 8 * v13 + 32) = v10;
      v7 = 1 << *(v1 + 32);
      if (result >= v7)
      {
        goto LABEL_30;
      }

      v14 = v3[v8];
      if ((v14 & v9) == 0)
      {
        goto LABEL_31;
      }

      if (v11 != *(v1 + 9))
      {
        goto LABEL_32;
      }

      v15 = v14 & (-2 << (result & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = &v1[v8 + 9];
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_1E142EA30(result, v11, 0);
            v5 = v28;
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_1E142EA30(result, v11, 0);
        v5 = v28;
      }

LABEL_4:
      ++v6;
      result = v7;
    }

    while (v6 != v5);

    v21 = *(v29 + 16);
    if (!v21)
    {

      return 0;
    }

    v22 = 0;
    for (i = 32; ; i += 8)
    {
      v24 = *(v29 + i);
      v25 = __CFADD__(v22, v24);
      v22 += v24;
      if (v25)
      {
        break;
      }

      if (!--v21)
      {

        return v22;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

id sub_1E15B4C8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NqmlAttributedStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AttributedString.init(nqml:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3[3];
  v18[2] = a3[2];
  v18[3] = v5;
  v18[4] = a3[4];
  v6 = a3[1];
  v18[0] = *a3;
  v18[1] = v6;
  if (a2)
  {
    v9 = a3[3];
    v17[2] = a3[2];
    v17[3] = v9;
    v17[4] = a3[4];
    v10 = a3[1];
    v17[0] = *a3;
    v17[1] = v10;
    v11 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator());
    v12 = sub_1E15B3B60(a1, a2, v17);
    sub_1E15B3E24(a4);

    v13 = sub_1E1AEF91C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 0, 1, v13);
  }

  else
  {
    sub_1E14A7E28(v18);
    v16 = sub_1E1AEF91C();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t type metadata accessor for NqmlAttributedStringGenerator()
{
  result = qword_1ECEB62A0;
  if (!qword_1ECEB62A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E15B4F88()
{
  result = sub_1E1AEF91C();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AEF8BC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t *sub_1E15B5080(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1E15B5258(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1E15B50F8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1E15B5258(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1E15B5080(v8, v4, v2);
  result = MEMORY[0x1E6901640](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1E15B5258(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1E15B5344(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1E15B5344(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15B5344(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F30);
  result = sub_1E1AF72CC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1E1AF762C();
    MEMORY[0x1E6900360](v17);
    result = sub_1E1AF767C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1E15B5564(uint64_t a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62D8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62E0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v51 - v8;
  v9 = sub_1E1AEF91C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AEF8BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - v19;
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return;
      }

      goto LABEL_7;
    }

    v21 = v18;
    v22 = 32;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v21 = v18;
        v22 = 1;
        goto LABEL_11;
      }

LABEL_7:
      if (qword_1ECEB0EB0 == -1)
      {
LABEL_8:
        v23 = sub_1E1AF591C();
        __swift_project_value_buffer(v23, qword_1ECEB6250);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF382C();
        type metadata accessor for NqmlTextElement(0);
        v63[3] = v24;
        v63[0] = a1;
        sub_1E1AF38BC();
        sub_1E1308058(v63, &qword_1ECEB2DF0);
        sub_1E1AF54AC();

        return;
      }

LABEL_24:
      swift_once();
      goto LABEL_8;
    }

    v21 = v18;
    v22 = 2;
  }

LABEL_11:
  v56 = v22;
  v25 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
  swift_beginAccess();
  v26 = *(v10 + 16);
  v55 = v25;
  v26(v12, v2 + v25, v9);
  a1 = v20;
  sub_1E1AEF8DC();
  (*(v10 + 8))(v12, v9);
  v27 = sub_1E15B49AC();
  if ((v28 & 1) == 0)
  {
    v52 = v27;
    v29 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_lastElementIndex;
    swift_beginAccess();
    v30 = *(v14 + 16);
    v31 = v2 + v29;
    v32 = v21;
    v30(v16, v31, v21);
    sub_1E15B7320(&qword_1ECEB62E8, MEMORY[0x1E69687E8]);
    if ((sub_1E1AF5D8C() & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v54 = v14;
    v33 = *(v14 + 32);
    v33(v7, v16, v21);
    v53 = v20;
    v34 = v58;
    v30(&v7[*(v58 + 48)], v20, v21);
    v35 = v57;
    sub_1E15B71EC(v7, v57);
    v36 = *(v34 + 48);
    v33(v60, v35, v32);
    v37 = *(v54 + 8);
    v37(v35 + v36, v32);
    sub_1E15B725C(v7, v35);
    v38 = *(v34 + 48);
    a1 = v53;
    v39 = v60;
    v33(&v60[*(v59 + 36)], (v35 + v38), v32);
    v40 = v35;
    v21 = v32;
    v37(v40, v32);
    swift_beginAccess();
    sub_1E148D3C4();
    v41 = sub_1E1AEF94C();
    v61 = v52;
    v62 = 0;
    sub_1E15B72CC();
    sub_1E1AEF9CC();
    v41(v63, 0);
    v14 = v54;
    sub_1E1308058(v39, &qword_1ECEB62E0);
    swift_endAccess();
  }

  v42 = a1;
  v43 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_openInlinePresentationIntents;
  swift_beginAccess();
  v44 = *(v2 + v43);
  if (*(v44 + 16))
  {
    a1 = v56;
    v45 = sub_1E1595C30(v56);
    if (v46)
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      v48 = v47 + 1;
      if (!__OFADD__(v47, 1))
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_23;
    }

    v48 = 1;
  }

  else
  {
    a1 = v56;
    v48 = 1;
  }

LABEL_20:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v2 + v43);
  *(v2 + v43) = 0x8000000000000000;
  sub_1E159A9E0(v48, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + v43) = v61;
  swift_endAccess();
  v50 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  (*(v14 + 40))(v2 + v50, v42, v21);
  swift_endAccess();
}

unint64_t sub_1E15B5CC8(uint64_t a1)
{
  v2 = v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62D8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62E0);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v50 - v9;
  v11 = sub_1E1AEF8BC();
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v50 - v15;
  v16 = sub_1E1AEF91C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {

        sub_1E1AEF80C();
        swift_beginAccess();
        sub_1E15B7320(&qword_1ECEB62D0, MEMORY[0x1E6968848]);
        sub_1E1AEF8CC();
        (*(v17 + 8))(v19, v16);
        return swift_endAccess();
      }

      goto LABEL_11;
    }

    v57 = v10;
    v20 = 32;
LABEL_10:
    v56 = v20;
    v21 = sub_1E15B49AC();
    if (v22)
    {
      goto LABEL_11;
    }

    v55 = v21;
    v26 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
    swift_beginAccess();
    v27 = *(v17 + 16);
    v54 = v26;
    v27(v19, v2 + v26, v16);
    v28 = v60;
    sub_1E1AEF8DC();
    (*(v17 + 8))(v19, v16);
    v29 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_lastElementIndex;
    swift_beginAccess();
    v30 = v61;
    v53 = *(v61 + 16);
    v53(v13, v2 + v29, v11);
    sub_1E15B7320(&qword_1ECEB62E8, MEMORY[0x1E69687E8]);
    result = sub_1E1AF5D8C();
    if (result)
    {
      v52 = v29;
      v51 = v2;
      v31 = v30;
      v32 = *(v30 + 32);
      v32(v8, v13, v11);
      v33 = v58;
      v53(&v8[*(v58 + 48)], v28, v11);
      sub_1E15B71EC(v8, v5);
      v34 = *(v33 + 48);
      v32(v57, v5, v11);
      v35 = v51;
      v36 = *(v31 + 8);
      v36(&v5[v34], v11);
      sub_1E15B725C(v8, v5);
      v37 = *(v33 + 48);
      v38 = v35;
      v39 = v57;
      v32(&v57[*(v59 + 36)], &v5[v37], v11);
      v36(v5, v11);
      v40 = v52;
      swift_beginAccess();
      sub_1E148D3C4();
      v41 = sub_1E1AEF94C();
      v62 = v55;
      v63 = 0;
      sub_1E15B72CC();
      sub_1E1AEF9CC();
      v41(v64, 0);
      sub_1E1308058(v39, &qword_1ECEB62E0);
      swift_endAccess();
      v42 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_openInlinePresentationIntents;
      swift_beginAccess();
      v43 = *(v38 + v42);
      if (!*(v43 + 16))
      {
        goto LABEL_19;
      }

      result = sub_1E1595C30(v56);
      if ((v44 & 1) == 0)
      {
        goto LABEL_19;
      }

      v45 = *(*(v43 + 56) + 8 * result);
      v46 = __OFSUB__(v45, 1);
      v47 = v45 - 1;
      if (!v46)
      {
        v48 = v47 & ~(v47 >> 63);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v38 + v42);
        *(v38 + v42) = 0x8000000000000000;
        sub_1E159A9E0(v48, v56, isUniquelyReferenced_nonNull_native);
        *(v38 + v42) = v62;
        swift_endAccess();
LABEL_19:
        swift_beginAccess();
        (*(v61 + 40))(v38 + v40, v60, v11);
        return swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v57 = v10;
  if (!a1)
  {
    v20 = 2;
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    v20 = 1;
    goto LABEL_10;
  }

LABEL_11:
  if (qword_1ECEB0EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1E1AF591C();
  __swift_project_value_buffer(v23, qword_1ECEB6250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  type metadata accessor for NqmlTextElement(0);
  v64[3] = v24;
  v64[0] = a1;
  sub_1E1AF38BC();
  sub_1E1308058(v64, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

void sub_1E15B64C4()
{
  v0 = sub_1E1AEF8BC();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v47 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v43 - v3;
  v53 = sub_1E1AEF7EC();
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v54 = sub_1E1AEF91C();
  v9 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = objc_allocWithZone(MEMORY[0x1E696AD60]);
  v16 = sub_1E1AF5DBC();
  v17 = [v15 initWithString_];

  if (qword_1EE1E3410 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE2160E8;
  if (qword_1EE2160E8)
  {
    v19 = [v17 length];
    v20 = sub_1E1AF5DBC();
    [v18 replaceMatchesInString:v17 options:0 range:0 withTemplate:{v19, v20}];
  }

  v50 = v17;
  v21 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
  v22 = v55;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v24 = v22 + v21;
  v25 = v54;
  v23(v14, v24, v54);
  sub_1E1AEF7CC();
  v51 = *(v9 + 8);
  v52 = v9 + 8;
  v51(v14, v25);
  sub_1E161DBB8();
  v27 = v26;
  v28 = *(v4 + 8);
  v46 = v4 + 8;
  v44 = v28;
  v28(v8, v53);
  if (v27)
  {
    v29 = sub_1E1AF5DBC();

    if (qword_1EE1E3468 != -1)
    {
      swift_once();
    }

    v30 = qword_1EE2160F0;
    if ([v29 length] < 1)
    {
    }

    else
    {
      v31 = [v29 length];
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        return;
      }

      v32 = [v30 characterIsMember_];

      if (v32)
      {
        sub_1E16E3494(v30);
      }
    }
  }

  v33 = v54;
  v23(v11, v55 + v21, v54);
  v34 = v43;
  sub_1E1AEF7CC();
  v51(v11, v33);
  sub_1E15B7320(&qword_1ECEB62B8, MEMORY[0x1E6968678]);
  v35 = v45;
  v36 = v53;
  sub_1E1AF665C();
  v37 = v47;
  sub_1E1AF668C();
  sub_1E15B7320(&unk_1ECEB6300, MEMORY[0x1E69687E8]);
  v38 = v49;
  LOBYTE(v33) = sub_1E1AF5DAC();
  v39 = *(v48 + 8);
  v39(v37, v38);
  v39(v35, v38);
  v44(v34, v36);
  v40 = v50;
  if (v33)
  {
    if (qword_1EE1E3468 != -1)
    {
      swift_once();
    }

    sub_1E16E3494(qword_1EE2160F0);
  }

  v41 = v40;
  sub_1E1AF5E6C();
  sub_1E1AEF80C();
  swift_beginAccess();
  sub_1E15B7320(&qword_1ECEB62D0, MEMORY[0x1E6968848]);
  v42 = v54;
  sub_1E1AEF8CC();
  v51(v11, v42);
  swift_endAccess();
}

uint64_t sub_1E15B6B34()
{
  if (qword_1ECEB0EB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  __swift_project_value_buffer(v1, qword_1ECEB6250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v5, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  *(v0 + OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_didParseEverything) = 0;
  return result;
}

uint64_t sub_1E15B6D14()
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62D8);
  MEMORY[0x1EEE9AC00](v35);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62E0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v32 - v5;
  v6 = sub_1E1AEF91C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEF8BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  v38 = v0;
  result = sub_1E15B49AC();
  if (v18)
  {
    goto LABEL_4;
  }

  v33 = result;
  v19 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_accumulator;
  v20 = v38;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v32[1] = v19;
  v21(v9, v20 + v19, v6);
  sub_1E1AEF8DC();
  (*(v7 + 8))(v9, v6);
  v22 = OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_lastElementIndex;
  swift_beginAccess();
  v23 = v11[2];
  v23(v13, v20 + v22, v10);
  sub_1E15B7320(&qword_1ECEB62E8, MEMORY[0x1E69687E8]);
  result = sub_1E1AF5D8C();
  if (result)
  {
    v24 = v11[4];
    v25 = v34;
    v24(v34, v13, v10);
    v26 = v16;
    v32[0] = v16;
    v27 = v35;
    v23((v25 + *(v35 + 48)), v26, v10);
    sub_1E15B71EC(v25, v2);
    v28 = *(v27 + 48);
    v29 = v37;
    v24(v37, v2, v10);
    v30 = v11[1];
    v30(&v2[v28], v10);
    sub_1E15B725C(v25, v2);
    v24((v29 + *(v36 + 36)), &v2[*(v27 + 48)], v10);
    v30(v2, v10);
    swift_beginAccess();
    sub_1E148D3C4();
    v31 = sub_1E1AEF94C();
    v39 = v33;
    v40 = 0;
    sub_1E15B72CC();
    sub_1E1AEF9CC();
    v31(v41, 0);
    sub_1E1308058(v29, &qword_1ECEB62E0);
    swift_endAccess();
    result = (v30)(v32[0], v10);
LABEL_4:
    *(v38 + OBJC_IVAR____TtC11AppStoreKitP33_C3424BAA7458924954B01A73811F55C429NqmlAttributedStringGenerator_didParseEverything) = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E15B71EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E15B725C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E15B72CC()
{
  result = qword_1ECEB62F8;
  if (!qword_1ECEB62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB62F8);
  }

  return result;
}

uint64_t sub_1E15B7320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static VersionStringUtil.isShortVersionString(_:atLeast:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E13B8AA4();
  v6 = sub_1E1AF6DCC();
  v52 = a4;
  v53 = v6;
  v51 = a3;

  v7 = sub_1E1AF6DCC();
  v8 = *(v6 + 16);

  v9 = *(v7 + 16);

  if (v8 != v9)
  {
    v11 = v8 - v9 >= 0 ? v8 - v9 : v9 - v8;
    v12 = *(v6 + 16);
    v13 = *(v7 + 16);
    v14 = sub_1E1489C2C(0x30, 0xE100000000000000, v11);
    result = sub_1E17286F4(v14);
    if (v13 >= v12)
    {
      v6 = v53;
    }
  }

  v15 = 0;
  v16 = *(v6 + 16);
  while (1)
  {
    if (v15 == v16)
    {
LABEL_80:

      return 1;
    }

    if (v15 >= *(v6 + 16))
    {
      break;
    }

    v17 = *(v7 + 16);
    if (v15 == v17)
    {
      goto LABEL_80;
    }

    if (v15 >= v17)
    {
      goto LABEL_84;
    }

    v18 = (v6 + 32 + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    v22 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v23 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_82;
    }

    v24 = (v7 + 32 + 16 * v15);
    v26 = *v24;
    v25 = v24[1];
    if ((v20 & 0x1000000000000000) == 0)
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        v51 = v19;
        v52 = v20 & 0xFFFFFFFFFFFFFFLL;
        if (v19 == 43)
        {
          if (!v21)
          {
            goto LABEL_85;
          }

          if (--v21)
          {
            v28 = 0;
            v38 = &v51 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (!v21)
          {
            goto LABEL_86;
          }

          if (--v21)
          {
            v28 = 0;
            v32 = &v51 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v34 - v33;
              if (__OFSUB__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v21)
        {
          v28 = 0;
          v43 = &v51;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            v43 = (v43 + 1);
            if (!--v21)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          result = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1E1AF709C();
        }

        v27 = *result;
        if (v27 == 43)
        {
          if (v22 < 1)
          {
            goto LABEL_87;
          }

          v21 = v22 - 1;
          if (v22 != 1)
          {
            v28 = 0;
            if (!result)
            {
              goto LABEL_64;
            }

            v35 = (result + 1);
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (v22 < 1)
          {
            goto LABEL_88;
          }

          v21 = v22 - 1;
          if (v22 != 1)
          {
            v28 = 0;
            if (result)
            {
              v29 = (result + 1);
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_72;
                }

                v31 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_72;
                }

                v28 = v31 - v30;
                if (__OFSUB__(v31, v30))
                {
                  goto LABEL_72;
                }

                ++v29;
                if (!--v21)
                {
                  goto LABEL_73;
                }
              }
            }

LABEL_64:
            LOBYTE(v21) = 0;
LABEL_73:
            v46 = v21;

            if (v46)
            {
              goto LABEL_81;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_72;
          }

          v28 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }
      }

LABEL_72:
      v28 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_73;
    }

    v28 = sub_1E15B7E0C(v19, v20, 10);
    v50 = v48;

    if (v50)
    {
LABEL_81:

LABEL_82:

      return 0;
    }

LABEL_74:
    result = sub_1E15B782C(v26, v25);
    if (v47)
    {
      goto LABEL_82;
    }

    ++v15;
    if (v28 != result)
    {
      v49 = result;

      return v28 >= v49;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1E15B782C(uint64_t result, unint64_t a2)
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
        result = sub_1E1AF709C();
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

  v6 = sub_1E15B7E0C(result, a2, 10);
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

uint64_t sub_1E15B7B2C(uint64_t result, unint64_t a2)
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

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E15B8398(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E1AF709C();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
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
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
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
        LODWORD(v6) = 0;
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
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
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
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
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
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
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
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
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
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
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

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
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

unsigned __int8 *sub_1E15B7E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1E1AF608C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E15B8914();
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
      result = sub_1E1AF709C();
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