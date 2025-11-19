uint64_t sub_22D6D2424(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = type metadata accessor for Alarm(0);
  v8 = *(*(v41 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v42 = &v35 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v46 = a1;
  v45 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v18 < 1)
    {
      v25 = a4 + v18;
    }

    else
    {
      v23 = -v14;
      v24 = a4 + v18;
      v25 = a4 + v18;
      v38 = a1;
      v39 = a4;
      v37 = -v14;
      do
      {
        v35 = v25;
        v26 = a2 + v23;
        v40 = a2;
        v41 = a2 + v23;
        while (1)
        {
          if (a2 <= a1)
          {
            v46 = a2;
            v44 = v35;
            goto LABEL_59;
          }

          v36 = v25;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_22D6D56D8(v29, v42, type metadata accessor for Alarm);
          v31 = v26;
          v32 = v43;
          sub_22D6D56D8(v31, v43, type metadata accessor for Alarm);
          v33 = sub_22D717E28(v30, v32);
          sub_22D6D5740(v32, type metadata accessor for Alarm);
          sub_22D6D5740(v30, type metadata accessor for Alarm);
          if (v33)
          {
            break;
          }

          v25 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v34 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          a2 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v25 = v36;
        }

        else
        {
          v34 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v25 = v36;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_57:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v17;
    v44 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v42;
        sub_22D6D56D8(a2, v42, type metadata accessor for Alarm);
        v21 = v43;
        sub_22D6D56D8(a4, v43, type metadata accessor for Alarm);
        v22 = sub_22D717E28(v20, v21);
        sub_22D6D5740(v21, type metadata accessor for Alarm);
        sub_22D6D5740(v20, type metadata accessor for Alarm);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_59:
  sub_22D6D29B0(&v46, &v45, &v44);
  return 1;
}

uint64_t sub_22D6D2910(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22D6D299C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22D6D29B0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Alarm(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_22D6D2A94(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_22D6D2B38(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = *(type metadata accessor for Alarm(0) - 8);
  v8 = *(v50 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v57 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v45 - v11;
  v56 = sub_22D72D7A0();
  v54 = *(v56 - 8);
  v12 = *(v54 + 64);
  v13 = MEMORY[0x28223BE20](v56);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = v45 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF308, &qword_22D7301B0);
  result = sub_22D72E8A0();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v45[1] = v54 + 16;
  v46 = a2;
  v55 = v54 + 32;
  v21 = result + 64;
  v47 = a1;
  v45[0] = a4;
  v22 = v56;
  while (v19)
  {
    v23 = v15;
    v24 = __clz(__rbit64(v19));
    v51 = (v19 - 1) & v19;
LABEL_16:
    v27 = v24 | (v20 << 6);
    v28 = a4[6];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v48;
    (*(v54 + 16))(v48, v28 + v53 * v27, v22);
    v31 = a4[7];
    v52 = *(v50 + 72);
    v32 = v31 + v52 * v27;
    v33 = v49;
    sub_22D6D56D8(v32, v49, type metadata accessor for Alarm);
    v34 = *(v29 + 32);
    v15 = v23;
    v34(v23, v30, v22);
    sub_22D6D3C4C(v33, v57);
    v35 = *(v18 + 40);
    sub_22D6D5884(&qword_27D9FF2E8, MEMORY[0x277CC95F0]);
    result = sub_22D72E3D0();
    v36 = -1 << *(v18 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a2 = v46;
      a1 = v47;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v21 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a2 = v46;
    a1 = v47;
LABEL_26:
    *(v21 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v34((*(v18 + 48) + v39 * v53), v15, v56);
    result = sub_22D6D3C4C(v57, *(v18 + 56) + v39 * v52);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45[0];
    v19 = v51;
    if (!a3)
    {
      return v18;
    }
  }

  v25 = v20;
  while (1)
  {
    v20 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v26 = a1[v20];
    ++v25;
    if (v26)
    {
      v23 = v15;
      v24 = __clz(__rbit64(v26));
      v51 = (v26 - 1) & v26;
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

uint64_t sub_22D6D2FA0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_22D72E100();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
  result = sub_22D72E8A0();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_22D72EA20();

    v54 = v28;
    sub_22D72E4E0();
    result = sub_22D72EA40();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

void *sub_22D6D3320(void *a1, int64_t a2, char a3)
{
  result = sub_22D6D33A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22D6D3340(char *a1, int64_t a2, char a3)
{
  result = sub_22D6D34D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22D6D3360(size_t a1, int64_t a2, char a3)
{
  result = sub_22D6D35E4(a1, a2, a3, *v3, &qword_27D9FF380, &qword_22D730228, MEMORY[0x277CB9988]);
  *v3 = result;
  return result;
}

void *sub_22D6D33A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF368, &qword_22D730210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF370, &qword_22D730218);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22D6D34D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A8, &qword_22D730258);
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

size_t sub_22D6D35E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22D6D37C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Alarm(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_22D6D56D8(v26 + v27 * (v25 | (v20 << 6)), v12, type metadata accessor for Alarm);
      sub_22D6D3C4C(v12, v15);
      sub_22D6D3C4C(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_22D6D3A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2C0, &qword_22D730160);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2F0, &unk_22D730190);
    v8 = sub_22D72E8A0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22D6D5A4C(v10, v6, &qword_27D9FF2C0, &qword_22D730160);
      result = sub_22D6CC640(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22D72D9B0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = v9[16];
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22D6D3C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22D6D3D94(objc_class *a1, char a2)
{
  v5 = *(sub_22D72D850() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for Alarm(0) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22D6C1EB8(a1, a2 & 1, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v10), v2 + v12, *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22D6D3F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_22D6D3F3C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_22D6D3F68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22D6D3FBC()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_22D72D890() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF2D8, &qword_22D730178) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = *(v0 + v3 + 8);
  v12 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22D6C3064(v9, v0 + v2, v10, v11, v0 + v5, v0 + v8, v12);
}

uint64_t sub_22D6D413C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_22D6D4164(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_22D6D4190()
{
  v1 = *(sub_22D72D910() - 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5 = sub_22D72D900();
  v3(v5);
}

uint64_t sub_22D6D4220()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + 192);
  return sub_22D72DC10();
}

uint64_t sub_22D6D42A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D6D430C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D6D4390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF350, &qword_22D730FF0);
    v3 = sub_22D72E8A0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22D6D5A4C(v4, &v13, &qword_27D9FF348, &unk_22D7301F0);
      v5 = v13;
      v6 = v14;
      result = sub_22D6CC714(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22D6D5254(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22D6D44C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF428, &qword_22D7302E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF3A0, &qword_22D730250);
    v8 = sub_22D72E8A0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22D6D5A4C(v10, v6, &qword_27D9FF428, &qword_22D7302E8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22D6CC714(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22D72E100();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22D6D46AC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a2;
  v51 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = *(*(v67 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v67);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v50 - v9;
  v10 = type metadata accessor for Alarm(0);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22D72D7A0();
  v13 = *(v64 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v58 = a4;
  result = swift_beginAccess();
  v52 = 0;
  v23 = 0;
  v24 = (v19 + 63) >> 6;
  v55 = v13 + 16;
  v56 = v13;
  v59 = (v13 + 8);
  v54 = v17;
  while (v21)
  {
    v28 = __clz(__rbit64(v21));
    v62 = (v21 - 1) & v21;
LABEL_13:
    v31 = v28 | (v23 << 6);
    v32 = v60;
    v33 = *(v56 + 16);
    v35 = v63;
    v34 = v64;
    v33(v63, v60[6] + *(v56 + 72) * v31, v64);
    v36 = v32[7];
    v37 = *(v57 + 72);
    v53 = v31;
    v38 = v65;
    sub_22D6D56D8(v36 + v37 * v31, v65, type metadata accessor for Alarm);
    v39 = v66;
    v33(v66, v35, v34);
    sub_22D6D56D8(v38, v39 + *(v67 + 48), type metadata accessor for Alarm);
    v40 = v39;
    v25 = v61;
    sub_22D6D5A4C(v40, v61, &unk_27D9FF4A0, &qword_22D730510);
    v41 = *(v58 + 232);
    v17 = v54;
    if (*(v41 + 16))
    {
      v42 = *(v58 + 232);

      v43 = sub_22D6CC49C(v25);
      if ((v44 & 1) == 0)
      {

        v25 = v61;
        goto LABEL_5;
      }

      v45 = *(*(v41 + 56) + 16 * v43 + 8);

      sub_22D6D5984(v66, &unk_27D9FF4A0, &qword_22D730510);

      v46 = v61;
      sub_22D6D5740(v61 + *(v67 + 48), type metadata accessor for Alarm);
      v47 = *v59;
      v48 = v64;
      (*v59)(v46, v64);
      sub_22D6D5740(v65, type metadata accessor for Alarm);
      result = (v47)(v63, v48);
      *(v51 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v49 = __OFADD__(v52++, 1);
      v21 = v62;
      if (v49)
      {
        __break(1u);
        return sub_22D6D2B38(v51, v50, v52, v60);
      }
    }

    else
    {
LABEL_5:
      sub_22D6D5984(v66, &unk_27D9FF4A0, &qword_22D730510);
      sub_22D6D5740(v25 + *(v67 + 48), type metadata accessor for Alarm);
      v26 = *v59;
      v27 = v64;
      (*v59)(v25, v64);
      sub_22D6D5740(v65, type metadata accessor for Alarm);
      result = (v26)(v63, v27);
      v21 = v62;
    }
  }

  v29 = v23;
  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v24)
    {
      return sub_22D6D2B38(v51, v50, v52, v60);
    }

    v30 = v17[v23];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v62 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6D4B98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v6 = *(*(v66 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v66);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v49 - v9;
  v10 = type metadata accessor for Alarm(0);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22D72D7A0();
  v13 = *(v63 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v16 = *(a3 + 64);
  v52 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v58 = a4;
  result = swift_beginAccess();
  v21 = 0;
  v22 = 0;
  v23 = (v17 + 63) >> 6;
  v54 = v13 + 16;
  v55 = v13;
  v59 = (v13 + 8);
  while (1)
  {
    v51 = v21;
    if (!v19)
    {
      break;
    }

    while (1)
    {
      v24 = __clz(__rbit64(v19));
      v61 = (v19 - 1) & v19;
LABEL_11:
      v27 = v24 | (v22 << 6);
      v28 = v60;
      v29 = *(v55 + 16);
      v31 = v62;
      v30 = v63;
      v29(v62, v60[6] + *(v55 + 72) * v27, v63);
      v32 = v28[7];
      v33 = *(v56 + 72);
      v53 = v27;
      v34 = v32 + v33 * v27;
      v35 = v65;
      sub_22D6D56D8(v34, v65, type metadata accessor for Alarm);
      v36 = v64;
      v29(v64, v31, v30);
      sub_22D6D56D8(v35, v36 + *(v66 + 48), type metadata accessor for Alarm);
      v37 = v57;
      sub_22D6D5A4C(v36, v57, &unk_27D9FF4A0, &qword_22D730510);
      v38 = *(v58 + 232);
      if (!*(v38 + 16))
      {
        break;
      }

      v39 = *(v58 + 232);

      v40 = sub_22D6CC49C(v37);
      if ((v41 & 1) == 0)
      {

        break;
      }

      v42 = *(*(v38 + 56) + 16 * v40 + 8);

      sub_22D6D5984(v64, &unk_27D9FF4A0, &qword_22D730510);

      sub_22D6D5740(v37 + *(v66 + 48), type metadata accessor for Alarm);
      v43 = v37;
      v44 = *v59;
      v45 = v63;
      (*v59)(v43, v63);
      sub_22D6D5740(v65, type metadata accessor for Alarm);
      result = (v44)(v62, v45);
      v19 = v61;
      if (!v61)
      {
        goto LABEL_6;
      }
    }

    sub_22D6D5984(v64, &unk_27D9FF4A0, &qword_22D730510);
    sub_22D6D5740(v37 + *(v66 + 48), type metadata accessor for Alarm);
    v46 = v37;
    v47 = *v59;
    v48 = v63;
    (*v59)(v46, v63);
    sub_22D6D5740(v65, type metadata accessor for Alarm);
    result = (v47)(v62, v48);
    *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v21 = v51 + 1;
    v19 = v61;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      return sub_22D6D2B38(v50, v49, v51, v60);
    }
  }

LABEL_6:
  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= v23)
    {
      return sub_22D6D2B38(v50, v49, v51, v60);
    }

    v26 = *(v52 + 8 * v22);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v61 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D6D5084(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v15 = sub_22D6D2A94(v18, v12, a1, a2, a4);
      MEMORY[0x2318D0420](v18, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v14);
  bzero(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

LABEL_6:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

_OWORD *sub_22D6D5254(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22D6D5264(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22D6D5270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D6D52CC()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_22D6BB5AC(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22D6D53A0(void *a1, char a2)
{
  v5 = *(type metadata accessor for Alarm(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22D72D850() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_22D6C45E4(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), v2 + v9, *v10, *(v10 + 8));
}

uint64_t sub_22D6D54CC()
{
  v1 = *(type metadata accessor for Alarm(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22D72D850() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *(v0 + v7);
  v11 = *v9;
  v12 = v9[1];
  v13 = (v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_22D6C50F8(v8, v0 + v2, v0 + v5, v11, v12, v10, v14, v15);
}

uint64_t sub_22D6D5664(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22D6D56D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D6D5740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22D6D57A0(void *a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for Alarm(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_22D6CAAB4(a1, a2, a3 & 1, v8);
}

void sub_22D6D5828(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_22D6D5838()
{
  result = qword_281457170;
  if (!qword_281457170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281457170);
  }

  return result;
}

uint64_t sub_22D6D5884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D6D58D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22D6D591C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D6D5984(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22D6D59E4()
{
  v1 = *(sub_22D72D7A0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + 208);
  return sub_22D72DC10();
}

uint64_t sub_22D6D5A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivityManager.ActivityManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityManager.ActivityManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D6D5C14()
{
  result = qword_27D9FF430;
  if (!qword_27D9FF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FF430);
  }

  return result;
}

uint64_t sub_22D6D5DB4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = a2;
  v36 = a1;
  v33 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v32 = *(v37 - 8);
  v7 = *(v32 + 64);
  v8 = MEMORY[0x28223BE20](v37);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v38 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v10;
      v39 = v5;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v38;
      v23 = *(v38 + 48);
      v24 = sub_22D72D7A0();
      v25 = v34;
      (*(*(v24 - 8) + 16))(v34, v23 + *(*(v24 - 8) + 72) * v21, v24);
      v26 = *(v22 + 56);
      v27 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v26 + *(*(v27 - 8) + 72) * v21, v25 + *(v37 + 48));
      v10 = v19;
      sub_22D6D591C(v25, v19, &unk_27D9FF4A0, &qword_22D730510);
      v28 = v39;
      v29 = v36(v19);
      v5 = v28;
      if (v28)
      {
        sub_22D6D5984(v19, &unk_27D9FF4A0, &qword_22D730510);
      }

      if (v29)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_22D6D5984(v19, &unk_27D9FF4A0, &qword_22D730510);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;
    sub_22D6D591C(v10, v33, &unk_27D9FF4A0, &qword_22D730510);
    return (*(v32 + 56))(v30, 0, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return (*(v32 + 56))(v33, 1, 1, v37);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v10;
        v39 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6D60B0()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 248);
  }

  else
  {
    v5 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF598, &qword_22D730598);
    sub_22D6D58D4(&qword_281457210, &unk_27D9FF598, &qword_22D730598);
    v2 = v0;
    v1 = sub_22D72DC70();
    v3 = *(v0 + 248);
    *(v2 + 248) = v1;
  }

  return v1;
}

uint64_t sub_22D6D6174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
  swift_beginAccess();
  return sub_22D6D5A4C(a1 + v4, a2, &qword_27D9FFDD0, &qword_22D730140);
}

uint64_t sub_22D6D61E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 216);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22D6F4F00;
  *(v8 + 24) = v7;
  v11[4] = sub_22D6F5ACC;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22D6BEF78;
  v11[3] = &block_descriptor_165;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D6D6358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D72E300();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D72E370();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D6D6648();
  sub_22D6D696C();
  sub_22D6D6B30();
  sub_22D6D6E54();
  sub_22D6D7178();
  sub_22D6D7C3C();
  v18[1] = *(a1 + 224);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_22D6D413C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_171;
  v16 = _Block_copy(aBlock);

  sub_22D72E330();
  v20 = MEMORY[0x277D84F90];
  sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_22D6D6648()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5E0, &qword_22D7305D0);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v18 = sub_22D719D58();
  v19 = *(v1 + 216);
  v11 = v19;
  v12 = sub_22D72E5E0();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFF30, &unk_22D7305D8);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_281457230, &qword_27D9FFF30, &unk_22D7305D8);
  sub_22D6F4F0C(&qword_281457180, sub_22D6D5838);
  sub_22D72DCA0();
  sub_22D6D5984(v5, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457278, &qword_27D9FF5E0, &qword_22D7305D0);
  v14 = v17;
  sub_22D72DCB0();

  (*(v6 + 8))(v9, v14);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

void sub_22D6D696C()
{
  v1 = *(v0 + 216);
  v2 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_22D6F5678;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22D6EAEFC;
  v9[3] = &block_descriptor_184;
  v3 = _Block_copy(v9);

  swift_beginAccess();
  v4 = notify_register_dispatch("SignificantTimeChangeNotification", (v0 + 240), v1, v3);
  swift_endAccess();
  _Block_release(v3);
  if (v4)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_2814580E8);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E580();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Unable to register for significant time change notifications: %{public}u", v8, 8u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }
  }
}

uint64_t sub_22D6D6B30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D0, &unk_22D7305C0);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v18 = sub_22D6F5D3C();
  v19 = *(v1 + 216);
  v11 = v19;
  v12 = sub_22D72E5E0();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D8, qword_22D731140);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_281457260, &qword_27D9FF5D8, qword_22D731140);
  sub_22D6F4F0C(&qword_281457180, sub_22D6D5838);
  sub_22D72DCA0();
  sub_22D6D5984(v5, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&unk_281457288, &qword_27D9FF5D0, &unk_22D7305C0);
  v14 = v17;
  sub_22D72DCB0();

  (*(v6 + 8))(v9, v14);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6D6E54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5C0, &qword_22D7305B0);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v18 = sub_22D6BA810();
  v19 = *(v1 + 216);
  v11 = v19;
  v12 = sub_22D72E5E0();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5C8, &qword_22D7305B8);
  sub_22D6D5838();
  sub_22D6D58D4(&qword_281457268, &qword_27D9FF5C8, &qword_22D7305B8);
  sub_22D6F4F0C(&qword_281457180, sub_22D6D5838);
  sub_22D72DCA0();
  sub_22D6D5984(v5, &qword_27D9FF9B0, &qword_22D7302B0);

  swift_allocObject();
  swift_weakInit();
  sub_22D6D58D4(&qword_281457298, &qword_27D9FF5C0, &qword_22D7305B0);
  v14 = v17;
  sub_22D72DCB0();

  (*(v6 + 8))(v9, v14);
  swift_beginAccess();
  sub_22D72DC00();
  swift_endAccess();
}

uint64_t sub_22D6D7178()
{
  v1 = type metadata accessor for Alarm(0);
  v91 = *(v1 - 8);
  v2 = *(v91 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v104 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v92 = &v82 - v5;
  v103 = sub_22D72D7A0();
  v94 = *(v103 - 8);
  v6 = *(v94 + 64);
  v7 = MEMORY[0x28223BE20](v103);
  v87 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v97 = &v82 - v10;
  MEMORY[0x28223BE20](v9);
  v90 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v82 - v17;
  v18 = sub_22D72E380();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = v0;
  v23 = *(v0 + 216);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_22D72E390();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (qword_2814572C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v25 = sub_22D72DBE0();
  v86 = __swift_project_value_buffer(v25, qword_2814580E8);
  v26 = sub_22D72DBB0();
  v27 = sub_22D72E5A0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22D6B4000, v26, v27, "Removing expired alarms", v28, 2u);
    MEMORY[0x2318D0420](v28, -1, -1);
  }

  v29 = __swift_project_boxed_opaque_existential_1((v100 + 176), *(v100 + 200));
  v30 = *(*v29 + 56);
  MEMORY[0x28223BE20](v29);
  *(&v82 - 2) = sub_22D6F5AF8;
  *(&v82 - 1) = v31;
  os_unfair_lock_lock(v30 + 4);
  v32 = 0;
  sub_22D6F5A78(v105);
  os_unfair_lock_unlock(v30 + 4);
  v33 = *(v105[0] + 64);
  v89 = v105[0] + 64;
  v93 = v105[0];
  v34 = 1 << *(v105[0] + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  swift_beginAccess();
  v37 = 0;
  v88 = (v34 + 63) >> 6;
  v99 = (v94 + 16);
  v102 = (v94 + 32);
  v96 = (v94 + 8);
  *&v38 = 136446466;
  v82 = v38;
  v39 = v103;
  v40 = v97;
  v95 = v16;
  while (1)
  {
    if (!v36)
    {
      if (v88 <= v37 + 1)
      {
        v42 = v37 + 1;
      }

      else
      {
        v42 = v88;
      }

      v43 = v42 - 1;
      while (1)
      {
        v41 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v41 >= v88)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
          (*(*(v79 - 8) + 56))(v16, 1, 1, v79);
          v36 = 0;
          goto LABEL_20;
        }

        v36 = *(v89 + 8 * v41);
        ++v37;
        if (v36)
        {
          v101 = v32;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v101 = v32;
    v41 = v37;
LABEL_19:
    v44 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v45 = v44 | (v41 << 6);
    v46 = v93;
    v47 = v94;
    v48 = v90;
    (*(v94 + 16))(v90, *(v93 + 48) + *(v94 + 72) * v45, v39);
    v49 = *(v46 + 56) + *(v91 + 72) * v45;
    v50 = v92;
    sub_22D6F37E4(v49, v92);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v52 = *(v51 + 48);
    v53 = *(v47 + 32);
    v16 = v95;
    v53(v95, v48, v39);
    sub_22D6D3C4C(v50, &v16[v52]);
    (*(*(v51 - 8) + 56))(v16, 0, 1, v51);
    v43 = v41;
    v32 = v101;
    v40 = v97;
LABEL_20:
    v54 = v98;
    sub_22D6D591C(v16, v98, &qword_27D9FF9E0, &qword_22D730298);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
    }

    v37 = v43;
    v56 = *(v55 + 48);
    v39 = v103;
    (*v102)(v40, v54, v103);
    sub_22D6D3C4C(v54 + v56, v104);
    sub_22D6D5A4C(v100 + 16, v105, &qword_27D9FF500, &qword_22D730530);
    LOBYTE(v56) = sub_22D714670(v105);
    sub_22D6D5984(v105, &qword_27D9FF500, &qword_22D730530);
    if (v56)
    {
      v57 = __swift_project_boxed_opaque_existential_1((v100 + 176), *(v100 + 200));
      v58 = *(*v57 + 56);
      v59 = MEMORY[0x28223BE20](v57);
      *(&v82 - 2) = v60;
      *(&v82 - 1) = v40;
      MEMORY[0x28223BE20](v59);
      *(&v82 - 2) = sub_22D6F5A60;
      *(&v82 - 1) = v61;
      os_unfair_lock_lock(v58 + 4);
      sub_22D6F5B28(v62);
      v63 = v58 + 4;
      if (v32)
      {
        os_unfair_lock_unlock(v63);
        v64 = v87;
        v39 = v103;
        (*v99)(v87, v40, v103);
        v65 = v32;
        v66 = sub_22D72DBB0();
        v67 = sub_22D72E580();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = v64;
          v69 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v105[0] = v85;
          *v69 = v82;
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v83 = v67;
          v70 = sub_22D72E960();
          v72 = v71;
          v101 = *v96;
          v73 = v68;
          v40 = v97;
          v101(v73, v103);
          v74 = sub_22D72891C(v70, v72, v105);
          v16 = v95;
          v39 = v103;

          *(v69 + 4) = v74;
          *(v69 + 12) = 2114;
          v75 = v32;
          v76 = _swift_stdlib_bridgeErrorToNSError();
          *(v69 + 14) = v76;
          v77 = v84;
          *v84 = v76;
          _os_log_impl(&dword_22D6B4000, v66, v83, "%{public}s Could not remove expired alarm from store: %{public}@", v69, 0x16u);
          sub_22D6D5984(v77, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v77, -1, -1);
          v78 = v85;
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          MEMORY[0x2318D0420](v78, -1, -1);
          MEMORY[0x2318D0420](v69, -1, -1);

          sub_22D6F3848(v104);
          v101(v40, v39);
        }

        else
        {

          v80 = *v96;
          (*v96)(v64, v39);
          sub_22D6F3848(v104);
          v80(v40, v39);
        }

        v32 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v63);
        sub_22D6F3848(v104);
        v39 = v103;
        (*v96)(v40, v103);
      }
    }

    else
    {
      sub_22D6F3848(v104);
      (*v96)(v40, v39);
    }
  }
}

uint64_t sub_22D6D7C3C()
{
  v1 = v0;
  v2 = sub_22D72D730();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v117 = &v107 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v119 = &v107 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v121 = &v107 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v107 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v115 = &v107 - v17;
  MEMORY[0x28223BE20](v16);
  v120 = &v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v122 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v107 - v23;
  v25 = sub_22D72E380();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = (&v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v1[27];
  *v29 = v30;
  (*(v26 + 104))(v29, *MEMORY[0x277D85200], v25);
  v31 = v30;
  LOBYTE(v30) = sub_22D72E390();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v32 = swift_allocBox();
  v34 = v33;
  sub_22D6ECA00(v24);
  if ((*(v3 + 48))(v24, 1, v2) == 1)
  {
    sub_22D6D5984(v24, &qword_27D9FFDD0, &qword_22D730140);
    swift_deallocBox();
    if (qword_2814572C8 == -1)
    {
LABEL_4:
      v35 = sub_22D72DBE0();
      __swift_project_value_buffer(v35, qword_2814580E8);
      v36 = sub_22D72DBB0();
      v37 = sub_22D72E5A0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22D6B4000, v36, v37, "No events due to fire", v38, 2u);
        MEMORY[0x2318D0420](v38, -1, -1);
      }

      v40 = v1[35];
      if (v40)
      {
        v41 = *(v40 + 24);
        MEMORY[0x28223BE20](v39);
        *(&v107 - 2) = sub_22D6F452C;
        *(&v107 - 1) = v40;

        os_unfair_lock_lock(v41 + 4);
        sub_22D6F5B28(v42);
        os_unfair_lock_unlock(v41 + 4);

        v43 = v1[35];
      }

      v1[35] = 0;

      v103 = *(v3 + 56);
      v104 = v122;
      v103(v122, 1, 1, v2);
      v105 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
      swift_beginAccess();
      sub_22D6F4548(v104, v1 + v105);
      swift_endAccess();
      v106 = v1[34];
      v103(v104, 1, 1, v2);
      sub_22D72DC10();
      return sub_22D6D5984(v104, &qword_27D9FFDD0, &qword_22D730140);
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v114 = v32;
  v110 = v1;
  v44 = *(v3 + 32);
  v44(v34, v24, v2);
  v45 = v120;
  sub_22D72D710();
  v46 = (v3 + 16);
  v47 = *(v3 + 16);
  v118 = v34;
  v47(v15, v34, v2);
  v113 = sub_22D6F4F0C(&unk_27D9FF4E0, MEMORY[0x277CC9578]);
  v48 = sub_22D72E3F0();
  v108 = v44;
  if (v48)
  {
    (*(v3 + 8))(v15, v2);
    v49 = v115;
    v47(v115, v45, v2);
  }

  else
  {
    v49 = v115;
    v44(v115, v15, v2);
  }

  v50 = v45;
  v51 = v3;
  v52 = *(v3 + 40);
  v53 = v118;
  v109 = v52;
  v52(v118, v49, v2);
  v54 = v119;
  v47(v119, v53, v2);
  v55 = v121;
  sub_22D72D6A0();
  v112 = v51;
  v56 = v2;
  v57 = *(v51 + 8);
  v57(v54, v56);
  v58 = v116;
  v47(v116, v55, v56);
  v59 = sub_22D72E3F0();
  v111 = v47;
  v113 = v57;
  v115 = (v51 + 8);
  if (v59)
  {
    v57(v58, v56);
    v60 = v117;
    v47(v117, v50, v56);
  }

  else
  {
    v60 = v117;
    v108(v117, v58, v56);
  }

  v61 = v56;
  v62 = v121;
  v63 = v109(v121, v60, v56);
  v64 = v110;
  v65 = v110[35];
  if (v65)
  {
    v66 = *(v65 + 24);
    MEMORY[0x28223BE20](v63);
    *(&v107 - 2) = sub_22D6F5B10;
    *(&v107 - 1) = v65;

    os_unfair_lock_lock(v66 + 4);
    sub_22D6F5B28(v67);
    os_unfair_lock_unlock(v66 + 4);
  }

  v117 = v46;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v68 = sub_22D72DBE0();
  __swift_project_value_buffer(v68, qword_2814580E8);
  v69 = sub_22D72DBB0();
  v70 = sub_22D72E5A0();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v112;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v123[0] = v74;
    *v73 = 136446210;
    swift_beginAccess();
    sub_22D6F4F0C(&unk_27D9FF4F0, MEMORY[0x277CC9578]);
    v75 = sub_22D72E960();
    v77 = sub_22D72891C(v75, v76, v123);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_22D6B4000, v69, v70, "Next wake date is %{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x2318D0420](v74, -1, -1);
    MEMORY[0x2318D0420](v73, -1, -1);
  }

  v78 = v111;
  v79 = v113;
  type metadata accessor for SequencingTaskScheduler();
  v80 = swift_allocObject();
  *(v80 + 16) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v80 + 24) = v81;
  type metadata accessor for SequencingTaskScheduler.Builder();
  *(v80 + 32) = 0;
  *(v80 + 40) = 0;
  *(v80 + 48) = 0;
  *(swift_initStackObject() + 16) = v80;
  swift_beginAccess();
  sub_22D6FE8CC(v62);

  sub_22D6FEAAC(v62);

  sub_22D6FECC0();

  sub_22D6FECE0();

  v82 = v119;
  v78(v119, v118, v61);
  sub_22D6FEAAC(v82);

  v79(v82, v61);
  v83 = swift_allocObject();
  swift_weakInit();
  v84 = swift_allocObject();
  v85 = v114;
  *(v84 + 16) = v83;
  *(v84 + 24) = v85;

  v86 = sub_22D6FEE1C(sub_22D6F45B8, v84);

  v87 = *(v86 + 16);
  swift_beginAccess();
  v88 = *(v87 + 16);
  if (*(v88 + 16))
  {
    sub_22D6D42A8(v88 + 32, v123);
    v89 = v124;
    v90 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v91 = *(v90 + 8);

    v91(v92, 0, v89, v90);
    v78 = v111;
    v72 = v112;

    __swift_destroy_boxed_opaque_existential_1Tm(v123);
  }

  v93 = v64[35];
  v64[35] = v87;

  v94 = v118;
  swift_beginAccess();
  v95 = v122;
  v78(v122, v94, v61);
  v96 = *(v72 + 56);
  v96(v95, 0, 1, v61);
  v97 = OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate;
  swift_beginAccess();
  sub_22D6F4548(v95, v64 + v97);
  swift_endAccess();
  v98 = v64[34];
  v78(v95, v94, v61);
  v96(v95, 0, 1, v61);
  sub_22D72DC10();
  sub_22D6D5984(v95, &qword_27D9FFDD0, &qword_22D730140);
  v99 = v61;
  v100 = v61;
  v101 = v113;
  v113(v120, v99);
  v101(v62, v100);
}

uint64_t sub_22D6D89E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v83 = a6;
  v88 = a4;
  v89 = a5;
  v86 = a2;
  v87 = a3;
  v93 = sub_22D72E190();
  v8 = *(v93 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v93);
  v80 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = v11;
  MEMORY[0x28223BE20](v10);
  v91 = &v68[-v12];
  v13 = sub_22D72D7A0();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v76 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v68[-v19];
  v79 = v21;
  MEMORY[0x28223BE20](v18);
  v23 = &v68[-v22];
  sub_22D72D790();
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v24 = sub_22D72DBE0();
  __swift_project_value_buffer(v24, qword_2814580E8);
  v25 = v14[2];
  v92 = v23;
  v78 = v25;
  v25(v20, v23, v13);
  v26 = *(v8 + 16);
  v82 = a1;
  v75 = v26;
  v26(v91, a1, v93);
  v27 = sub_22D72DBB0();
  v28 = sub_22D72E5A0();
  v29 = os_log_type_enabled(v27, v28);
  v90 = v13;
  v73 = v14;
  if (v29)
  {
    v30 = v14;
    v31 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94[0] = v71;
    *v31 = 136446466;
    v77 = sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v70 = v27;
    v32 = sub_22D72E960();
    v72 = v8;
    v34 = v33;
    v69 = v28;
    v35 = v30[1];
    v74 = (v30 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v20, v13);
    v36 = sub_22D72891C(v32, v34, v94);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2082;
    v37 = v76;
    v38 = v91;
    sub_22D72E170();
    v39 = sub_22D72E960();
    v41 = v40;
    v77 = v35;
    v35(v37, v13);
    (*(v72 + 8))(v38, v93);
    v42 = sub_22D72891C(v39, v41, v94);

    *(v31 + 14) = v42;
    v8 = v72;
    v43 = v70;
    _os_log_impl(&dword_22D6B4000, v70, v69, "%{public}s: Scheduling alarm %{public}s", v31, 0x16u);
    v44 = v71;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v44, -1, -1);
    MEMORY[0x2318D0420](v31, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v91, v93);
    v45 = v14[1];
    v74 = (v14 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77 = v45;
    v45(v20, v13);
    v37 = v76;
  }

  v46 = v84;
  v91 = __swift_project_boxed_opaque_existential_1((v84 + 136), *(v84 + 160));
  v47 = v80;
  v48 = v93;
  v75(v80, v82, v93);
  v78(v37, v92, v90);
  v49 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = v73;
  v52 = v48;
  v53 = (*(v73 + 80) + v50 + 16) & ~*(v73 + 80);
  v54 = v37;
  v55 = (v79 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v8;
  v58 = v56;
  *(v56 + 16) = v46;
  (*(v57 + 32))(v56 + v49, v47, v52);
  v59 = (v58 + v50);
  v61 = v86;
  v60 = v87;
  *v59 = v86;
  v59[1] = v60;
  v62 = v58 + v53;
  v63 = v90;
  (v51[4])(v62, v54, v90);
  v64 = (v58 + v55);
  v65 = v85;
  *v64 = v83;
  v64[1] = v65;
  v66 = *v91;

  sub_22D6F6E50(v61, v60, v88, v89, sub_22D6F4998, v58);

  return v77(v92, v63);
}

uint64_t sub_22D6D9040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v122 = a7;
  v123 = a8;
  v120 = a6;
  v111 = a5;
  v110 = a4;
  v109 = a3;
  v126 = a2;
  v124 = a1;
  v8 = sub_22D72E300();
  v118 = *(v8 - 8);
  v119 = v8;
  isa = v118[8].isa;
  MEMORY[0x28223BE20](v8);
  v115 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D72E370();
  v116 = *(v11 - 8);
  v117 = v11;
  v12 = *(v116 + 64);
  MEMORY[0x28223BE20](v11);
  v114 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22D72D7A0();
  v121 = *(v125 - 8);
  v14 = *(v121 + 64);
  v15 = MEMORY[0x28223BE20](v125);
  v113 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v104 = &v103 - v17;
  MEMORY[0x28223BE20](v16);
  v112 = &v103 - v18;
  v108 = sub_22D72E190();
  v107 = *(v108 - 8);
  v19 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v105 = v20;
  v106 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D72E100();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v103 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v103 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (&v103 - v34);
  sub_22D6D5A4C(v124, &v103 - v34, &unk_27D9FFAC0, &qword_22D7306F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v37 = sub_22D72DBE0();
    __swift_project_value_buffer(v37, qword_2814580E8);
    v38 = v121;
    v39 = v113;
    v40 = v125;
    (*(v121 + 16))(v113, v120, v125);
    v41 = v36;
    v42 = sub_22D72DBB0();
    v43 = sub_22D72E580();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v44 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v47 = sub_22D72E960();
      v48 = v39;
      v50 = v49;
      (*(v38 + 8))(v48, v40);
      v51 = sub_22D72891C(v47, v50, &aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2114;
      v52 = v36;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v53;
      *v45 = v53;
      _os_log_impl(&dword_22D6B4000, v42, v43, "%{public}s: Failed to get current authorization state: %{public}@", v44, 0x16u);
      sub_22D6D5984(v45, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x2318D0420](v46, -1, -1);
      MEMORY[0x2318D0420](v44, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v39, v40);
    }

    v76 = *(v126 + 224);
    v77 = swift_allocObject();
    v78 = v123;
    *(v77 + 16) = v122;
    *(v77 + 24) = v78;
    v132 = sub_22D6F5AC8;
    v133 = v77;
    aBlock = MEMORY[0x277D85DD0];
    v129 = 1107296256;
    v130 = sub_22D6C0FD8;
    v131 = &block_descriptor_118;
    v79 = _Block_copy(&aBlock);

    v80 = v114;
    sub_22D72E330();
    v127 = MEMORY[0x277D84F90];
    sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v81 = v115;
    v82 = v119;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v80, v81, v79);
    _Block_release(v79);

    (v118[1].isa)(v81, v82);
    (*(v116 + 8))(v80, v117);
  }

  (*(v22 + 32))(v31, v35, v21);
  (*(v22 + 16))(v29, v31, v21);
  v54 = (*(v22 + 88))(v29, v21);
  v55 = *MEMORY[0x277CB9AB0];
  v56 = v21;
  if (v54 == *MEMORY[0x277CB9AB8] || v54 == *MEMORY[0x277CB9AC0])
  {
LABEL_11:
    (*(v22 + 104))(v26, v55, v56);
    v72 = sub_22D72E0E0();
    v75 = *(v22 + 8);
    v73 = v22 + 8;
    v74 = v75;
    v75(v26, v56);
    if (v72)
    {
      return v74(v31, v56);
    }

    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v124 = v73;
    v113 = v56;
    v83 = sub_22D72DBE0();
    __swift_project_value_buffer(v83, qword_2814580E8);
    v84 = v121;
    v85 = v104;
    v86 = v125;
    (*(v121 + 16))(v104, v120, v125);
    v87 = sub_22D72DBB0();
    v88 = sub_22D72E580();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock = v90;
      *v89 = 136446210;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v91 = sub_22D72E960();
      v92 = v85;
      v94 = v93;
      (*(v84 + 8))(v92, v86);
      v95 = sub_22D72891C(v91, v94, &aBlock);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_22D6B4000, v87, v88, "%{public}s: Client does not have user authorization to schedule alarms", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x2318D0420](v90, -1, -1);
      MEMORY[0x2318D0420](v89, -1, -1);
    }

    else
    {

      (*(v84 + 8))(v85, v86);
    }

    v96 = *(v126 + 224);
    v97 = swift_allocObject();
    v98 = v123;
    *(v97 + 16) = v122;
    *(v97 + 24) = v98;
    v132 = sub_22D6F4AB4;
    v133 = v97;
    aBlock = MEMORY[0x277D85DD0];
    v129 = 1107296256;
    v130 = sub_22D6C0FD8;
    v131 = &block_descriptor_124;
    v99 = _Block_copy(&aBlock);

    v100 = v114;
    sub_22D72E330();
    v127 = MEMORY[0x277D84F90];
    sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
    v101 = v115;
    v102 = v119;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v100, v101, v99);
    _Block_release(v99);
    (v118[1].isa)(v101, v102);
    (*(v116 + 8))(v100, v117);
    v74(v31, v113);
  }

  v119 = v31;
  v124 = v22;
  v113 = v21;
  if (v54 != v55)
  {
    result = sub_22D72E970();
    __break(1u);
    return result;
  }

  v57 = v126;
  v118 = *(v126 + 216);
  v58 = v107;
  v59 = v106;
  v60 = v108;
  (*(v107 + 16))(v106, v109, v108);
  v61 = v121;
  (*(v121 + 16))(v112, v120, v125);
  v62 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v63 = (v105 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = (*(v61 + 80) + v63 + 16) & ~*(v61 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v57;
  (*(v58 + 32))(v56 + v62, v59, v60);
  v65 = (v56 + v63);
  v66 = v111;
  *v65 = v110;
  v65[1] = v66;
  v67 = *(v61 + 32);
  v31 = (v61 + 32);
  v67(v56 + v64, v112, v125);
  v68 = (v56 + ((v14 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
  v69 = v123;
  *v68 = v122;
  v68[1] = v69;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22D6F4C50;
  *(v22 + 24) = v56;
  v132 = sub_22D6F5ACC;
  v133 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v129 = 1107296256;
  v130 = sub_22D6BEF78;
  v131 = &block_descriptor_134;
  v70 = _Block_copy(&aBlock);

  dispatch_sync(v118, v70);
  _Block_release(v70);
  v26 = (v124 + 8);
  (*(v124 + 8))(v119, v113);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if (v59)
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_22D6D9EF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a7;
  v38 = a5;
  v39 = a4;
  v10 = sub_22D72D7A0();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v35[2] = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E300();
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D72E370();
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D72DDC0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v35 - v27;
  sub_22D6E4294(a2, a3, v39, v38, v35 - v27);
  v39 = *(a1 + 224);
  (*(v23 + 16))(v26, v28, v22);
  v29 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v30 = swift_allocObject();
  v31 = v43;
  *(v30 + 16) = v42;
  *(v30 + 24) = v31;
  (*(v23 + 32))(v30 + v29, v26, v22);
  aBlock[4] = sub_22D6F4D70;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_146;
  v32 = _Block_copy(aBlock);

  sub_22D72E330();
  v46 = MEMORY[0x277D84F90];
  sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  v33 = v40;
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v21, v17, v32);
  _Block_release(v32);
  (*(v41 + 8))(v17, v33);
  (*(v44 + 8))(v21, v45);
  (*(v23 + 8))(v28, v22);
}

uint64_t sub_22D6DA74C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_22D72DDC0();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_22D6D5984(v8, &qword_27D9FF590, &qword_22D730590);
}

uint64_t sub_22D6DA854(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  *(&v11 - v7) = a3;
  swift_storeEnumTagMultiPayload();
  v9 = a3;
  a1(v8);
  return sub_22D6D5984(v8, &qword_27D9FF590, &qword_22D730590);
}

uint64_t sub_22D6DA920(void (*a1)(uint64_t *))
{
  v2 = sub_22D72DEB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - v9);
  (*(v3 + 104))(v6, *MEMORY[0x277CB99D8], v2);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
  v11 = swift_allocError();
  sub_22D72DEC0();
  *v10 = v11;
  swift_storeEnumTagMultiPayload();
  a1(v10);
  return sub_22D6D5984(v10, &qword_27D9FF590, &qword_22D730590);
}

void sub_22D6DAAF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Alarm(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22D72E380();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 216);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_22D72E390();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    sub_22D6E89E4(a2, v8);
    if (!v2)
    {
      sub_22D6E6C18(v8);
      sub_22D6F3848(v8);
      sub_22D6D7C3C();
      sub_22D6DAC98();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D6DAC98()
{
  v1 = sub_22D72E300();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72E370();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 224);
  aBlock[4] = sub_22D6F4658;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_77_0;
  v10 = _Block_copy(aBlock);

  sub_22D72E330();
  v14 = MEMORY[0x277D84F90];
  sub_22D6F4F0C(&qword_2814571D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_22D6DAF4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22D72E380();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 216);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_22D72E390();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = v20[1];
    sub_22D6E81BC(a2, a3, a4, v11);
    if (!v19)
    {
      sub_22D6E6C18(v11);
      sub_22D6F3848(v11);
      sub_22D6D7C3C();
      sub_22D6DAC98();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22D6DB104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22D6E63E4(a2, a3, a4);
  if (!v4)
  {
    sub_22D6D7C3C();
    sub_22D6DAC98();
  }
}

void sub_22D6DB148(uint64_t a1)
{
  v62 = type metadata accessor for Alarm(0);
  v57 = *(v62 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v62);
  v56 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v63 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = v53 - v16;
  v17 = *(a1 + 200);
  v64 = a1;
  v18 = __swift_project_boxed_opaque_existential_1((a1 + 176), v17);
  v19 = *v18;
  v20 = *(*v18 + 56);
  v68 = sub_22D6F5AF8;
  v69 = v19;
  os_unfair_lock_lock(v20 + 4);
  sub_22D6F5A78(&v70);
  v67 = v1;
  v21 = v20 + 4;
  if (v1)
  {
LABEL_21:
    os_unfair_lock_unlock(v21);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v21);
  v22 = 0;
  v23 = *(v70 + 64);
  v53[0] = v70 + 64;
  v58 = v70;
  v24 = 1 << *(v70 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v27 = (v24 + 63) >> 6;
  v65 = (v6 + 16);
  v53[1] = v6 + 32;
  v54 = v15;
  v60 = v6;
  v61 = (v6 + 8);
  v28 = v59;
  if ((v25 & v23) == 0)
  {
LABEL_6:
    if (v27 <= v22 + 1)
    {
      v30 = v22 + 1;
    }

    else
    {
      v30 = v27;
    }

    while (1)
    {
      v29 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
        v66 = v30 - 1;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
        (*(*(v51 - 8) + 56))(v15, 1, 1, v51);
        v26 = 0;
        goto LABEL_13;
      }

      v26 = *(v53[0] + 8 * v29);
      ++v22;
      if (v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v22;
LABEL_12:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v29 << 6);
    v33 = v58;
    v34 = v55;
    (*(v6 + 16))(v55, *(v58 + 48) + *(v6 + 72) * v32, v5);
    v35 = v5;
    v36 = v6;
    v37 = v56;
    sub_22D6F37E4(*(v33 + 56) + *(v57 + 72) * v32, v56);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v39 = *(v38 + 48);
    v40 = *(v36 + 32);
    v5 = v35;
    v15 = v54;
    v40(v54, v34, v5);
    sub_22D6D3C4C(v37, &v15[v39]);
    (*(*(v38 - 8) + 56))(v15, 0, 1, v38);
    v66 = v29;
    v28 = v59;
LABEL_13:
    sub_22D6D591C(v15, v28, &qword_27D9FF9E0, &qword_22D730298);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v42 = (*(*(v41 - 8) + 48))(v28, 1, v41);
    v43 = v63;
    if (v42 == 1)
    {

      sub_22D6D7C3C();
      sub_22D6DAC98();
      return;
    }

    v44 = v28 + *(v41 + 48);
    v45 = v62;
    (*v65)(v63, v44 + *(v62 + 20), v5);
    v46 = (v44 + *(v45 + 24));
    v48 = *v46;
    v47 = v46[1];

    sub_22D6F3848(v44);
    v49 = v67;
    sub_22D6E63E4(v43, v48, v47);
    if (v49)
    {
      break;
    }

    v67 = 0;
    v50 = *v61;
    (*v61)(v43, v5);

    v21 = (v50)(v28, v5);
    v22 = v66;
    v6 = v60;
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  v52 = *v61;
  (*v61)(v43, v5);

  v52(v28, v5);
}

void sub_22D6DB704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D6E89E4(a2, v7);
  if (!v2)
  {
    sub_22D6E59CC(v7);
    sub_22D6F3848(v7);
  }
}

void sub_22D6DB7A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Alarm(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D6E81BC(a2, a3, a4, v11);
  if (!v4)
  {
    sub_22D6E59CC(v11);
    sub_22D6F3848(v11);
  }
}

uint64_t sub_22D6DB864(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v124 = a3;
  v125 = a4;
  v123 = a2;
  v5 = sub_22D72DEB0();
  v115 = *(v5 - 8);
  v116 = v5;
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v5);
  v117 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Alarm(0);
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v113 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = (&v106 - v12);
  v13 = sub_22D72D730();
  v119 = *(v13 - 8);
  v120 = v13;
  v14 = *(v119 + 64);
  MEMORY[0x28223BE20](v13);
  v114 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72DD20();
  v118 = *(v16 - 8);
  v17 = *(v118 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v106 - v21;
  v23 = sub_22D72D7A0();
  v122 = *(v23 - 8);
  v24 = *(v122 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = v128;
  sub_22D6E81BC(v123, v124, v125, v28);
  v128 = v30;
  if (v30)
  {
    return swift_deallocBox();
  }

  v109 = v22;
  v110 = v20;
  v111 = v16;
  v123 = v8;
  v108 = v26;
  v112 = v23;
  v124 = v29;
  v107 = a1;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v32 = sub_22D72DBE0();
  __swift_project_value_buffer(v32, qword_2814580E8);

  v33 = sub_22D72DBB0();
  v34 = sub_22D72E5A0();
  v125 = v27;

  v35 = os_log_type_enabled(v33, v34);
  v36 = v112;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v127 = v106;
    *v37 = 136446210;
    v38 = v124;
    swift_beginAccess();
    v39 = v122;
    v40 = v108;
    (*(v122 + 16))(v108, v38, v36);
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v41 = sub_22D72E960();
    v42 = v36;
    v44 = v43;
    (*(v39 + 8))(v40, v42);
    v45 = sub_22D72891C(v41, v44, &v127);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_22D6B4000, v33, v34, "%{public}s: Pausing alarm", v37, 0xCu);
    v46 = v106;
    __swift_destroy_boxed_opaque_existential_1Tm(v106);
    MEMORY[0x2318D0420](v46, -1, -1);
    MEMORY[0x2318D0420](v37, -1, -1);
  }

  else
  {

    v38 = v124;
  }

  v48 = v119;
  v47 = v120;
  v49 = v123;
  v50 = v111;
  v51 = v118;
  v52 = v110;
  v53 = v109;
  swift_beginAccess();
  (*(v51 + 16))(v53, v38 + *(v49 + 11), v50);
  (*(v51 + 104))(v52, *MEMORY[0x277CB9918], v50);
  v54 = sub_22D72DD10();
  v55 = v52;
  LOBYTE(v52) = v54;
  v56 = *(v51 + 8);
  v56(v55, v50);
  v56(v53, v50);
  v57 = v121;
  if (v52)
  {
    v58 = v114;
    sub_22D72D710();
    swift_beginAccess();
    v59 = v128;
    sub_22D7141DC(v58);
    v128 = v59;
    if (v59)
    {
      swift_endAccess();
      (*(v48 + 8))(v58, v47);
    }

    else
    {
      swift_endAccess();
      (*(v48 + 8))(v58, v47);
      v74 = v107;
      v75 = __swift_project_boxed_opaque_existential_1((v107 + 176), *(v107 + 200));
      v76 = sub_22D6F37E4(v38, v57);
      v77 = *(*v75 + 56);
      v78 = MEMORY[0x28223BE20](v76);
      *(&v106 - 4) = v79;
      *(&v106 - 3) = v57;
      *(&v106 - 2) = 0;
      MEMORY[0x28223BE20](v78);
      *(&v106 - 2) = sub_22D6F5A94;
      *(&v106 - 1) = v80;
      os_unfair_lock_lock(v77 + 4);
      v81 = v128;
      sub_22D6F5B28(v82);
      v128 = v81;
      v83 = v77 + 4;
      if (v81)
      {
        os_unfair_lock_unlock(v83);
        sub_22D6F3848(v57);

        v84 = v128;
        v85 = v128;
        v86 = sub_22D72DBB0();
        v87 = sub_22D72E580();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v126[0] = v123;
          *v88 = 136446466;
          v89 = v122;
          v90 = *(v122 + 16);
          LODWORD(v120) = v87;
          v91 = v108;
          v92 = v112;
          v90(v108, v124, v112);
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v93 = sub_22D72E960();
          v94 = v128;
          v96 = v95;
          (*(v89 + 8))(v91, v92);
          v97 = sub_22D72891C(v93, v96, v126);

          *(v88 + 4) = v97;
          *(v88 + 12) = 2114;
          v98 = v94;
          v99 = _swift_stdlib_bridgeErrorToNSError();
          *(v88 + 14) = v99;
          v100 = v121;
          *v121 = v99;
          _os_log_impl(&dword_22D6B4000, v86, v120, "%{public}s: Failed to update alarm in store: %{public}@", v88, 0x16u);
          sub_22D6D5984(v100, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v100, -1, -1);
          v101 = v123;
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          v38 = v124;
          MEMORY[0x2318D0420](v101, -1, -1);
          MEMORY[0x2318D0420](v88, -1, -1);
        }

        else
        {
        }

        v128 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v83);
        sub_22D6F3848(v57);
      }

      v102 = v113;
      v103 = __swift_project_boxed_opaque_existential_1((v74 + 56), *(v74 + 80));
      sub_22D6F37E4(v38, v102);
      v104 = *v103;
      v105 = v125;

      sub_22D6BB384(v102, sub_22D6F4680, v105);

      sub_22D6F3848(v102);
      sub_22D6DAC98();
      sub_22D6D7C3C();
    }
  }

  else
  {

    v60 = sub_22D72DBB0();
    v61 = sub_22D72E580();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v122;
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v126[0] = v65;
      *v64 = 136446210;
      v66 = v108;
      v67 = v38;
      v68 = v112;
      (*(v63 + 16))(v108, v67, v112);
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v69 = sub_22D72E960();
      v71 = v70;
      (*(v63 + 8))(v66, v68);
      v72 = sub_22D72891C(v69, v71, v126);

      *(v64 + 4) = v72;
      _os_log_impl(&dword_22D6B4000, v60, v61, "%{public}s: Not pausing an alarm in the wrong state", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x2318D0420](v65, -1, -1);
      MEMORY[0x2318D0420](v64, -1, -1);
    }

    (*(v115 + 104))(v117, *MEMORY[0x277CB99E0], v116);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    v73 = swift_allocError();
    sub_22D72DEC0();
    v128 = v73;
    swift_willThrow();
  }
}

void sub_22D6DC450(void *a1, uint64_t a2, char a3)
{
  v6 = sub_22D72D7A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v11 = sub_22D72DBE0();
    __swift_project_value_buffer(v11, qword_2814580E8);

    sub_22D6F468C(a1, a2, 1);
    v25 = sub_22D72DBB0();
    v12 = sub_22D72E580();

    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v25, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v13 = 136446466;
      type metadata accessor for Alarm(0);
      v16 = swift_projectBox();
      swift_beginAccess();
      (*(v7 + 16))(v10, v16, v6);
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v17 = sub_22D72E960();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      v20 = sub_22D72891C(v17, v19, &v26);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2114;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v22;
      *v14 = v22;
      _os_log_impl(&dword_22D6B4000, v25, v12, "%{public}s: Failed to update activity: %{public}@", v13, 0x16u);
      sub_22D6D5984(v14, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2318D0420](v15, -1, -1);
      MEMORY[0x2318D0420](v13, -1, -1);
    }

    else
    {
      v23 = v25;
    }
  }
}

void sub_22D6DC790(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v69 = a4;
  v67 = a2;
  v68 = a3;
  v5 = sub_22D72DEB0();
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72D730();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D72DD20();
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Alarm(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v71 = &v60 - v22;
  v23 = v70;
  sub_22D6E81BC(v67, v68, v69, &v60 - v22);
  if (!v23)
  {
    v69 = v16;
    v70 = v17;
    v62 = v12;
    v63 = v5;
    v60 = v21;
    v67 = v8;
    v68 = 0;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v61 = a1;
    v24 = sub_22D72DBE0();
    __swift_project_value_buffer(v24, qword_2814580E8);
    v25 = sub_22D72DBB0();
    v26 = sub_22D72E5A0();
    v27 = v13;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v73 = v29;
      *v28 = 136446210;
      swift_beginAccess();
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v30 = sub_22D72E960();
      v32 = sub_22D72891C(v30, v31, &v73);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22D6B4000, v25, v26, "%{public}s: Resuming alarm", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x2318D0420](v29, -1, -1);
      MEMORY[0x2318D0420](v28, -1, -1);
    }

    v33 = v65;
    v34 = v66;
    v35 = v69;
    swift_beginAccess();
    v36 = v70;
    v37 = *(v70 + 44);
    (*(v33 + 104))(v35, *MEMORY[0x277CB9908], v27);
    LOBYTE(v37) = sub_22D72DD10();
    (*(v33 + 8))(v35, v27);
    if (v37)
    {
      v38 = v62;
      sub_22D72D710();
      v39 = v71 + *(v36 + 40);
      if (*(v39 + 8))
      {
        v40 = 0.0;
      }

      else
      {
        v40 = *v39;
      }

      swift_beginAccess();
      v41 = v68;
      sub_22D7143F0(v38, v40);
      if (!v41)
      {
        swift_endAccess();
        (*(v34 + 8))(v38, v9);
        v50 = __swift_project_boxed_opaque_existential_1(v61 + 22, v61[25]);
        v51 = v60;
        v52 = sub_22D6F37E4(v71, v60);
        v53 = *(*v50 + 56);
        v54 = MEMORY[0x28223BE20](v52);
        *(&v60 - 4) = v55;
        *(&v60 - 3) = v51;
        *(&v60 - 2) = 0;
        MEMORY[0x28223BE20](v54);
        *(&v60 - 2) = sub_22D6F44F0;
        *(&v60 - 1) = v56;
        os_unfair_lock_lock(v53 + 4);
        sub_22D6F4510(v57);
        os_unfair_lock_unlock(v53 + 4);
        sub_22D6F3848(v51);
        v58 = *__swift_project_boxed_opaque_existential_1(v61 + 7, v61[10]);
        v59 = v71;
        sub_22D6BB384(v71, nullsub_1, 0);
        sub_22D6DAC98();
        sub_22D6D7C3C();
        v49 = v59;
        goto LABEL_16;
      }

      swift_endAccess();
      (*(v34 + 8))(v38, v9);
    }

    else
    {
      v42 = sub_22D72DBB0();
      v43 = sub_22D72E580();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v72 = v45;
        *v44 = 136446210;
        sub_22D72D7A0();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v46 = sub_22D72E960();
        v48 = sub_22D72891C(v46, v47, &v72);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_22D6B4000, v42, v43, "%{public}s: Not resuming an alarm in the wrong state", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x2318D0420](v45, -1, -1);
        MEMORY[0x2318D0420](v44, -1, -1);
      }

      (*(v64 + 104))(v67, *MEMORY[0x277CB99E0], v63);
      sub_22D72DED0();
      sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    v49 = v71;
LABEL_16:
    sub_22D6F3848(v49);
  }
}

void sub_22D6DD0CC(uint64_t a1)
{
  v59 = a1;
  v3 = sub_22D72DEB0();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72D7A0();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22D72DDD0();
  v10 = *(v53 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Alarm(0);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  v21 = *(v1 + 200);
  v52 = v1;
  v22 = __swift_project_boxed_opaque_existential_1((v1 + 176), v21);
  v23 = *v22;
  v24 = *(*v22 + 56);
  v60 = sub_22D6F5AF8;
  v61 = v23;
  os_unfair_lock_lock(v24 + 4);
  sub_22D6F5A78(&v62);
  if (v2)
  {
    os_unfair_lock_unlock(v24 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v24 + 4);
    v25 = v62;
    v26 = v59;
    if (v62[2] && (v27 = sub_22D6CC49C(v59), (v28 & 1) != 0))
    {
      sub_22D6F37E4(*(v25 + 56) + *(v51 + 72) * v27, v18);

      sub_22D6D3C4C(v18, v20);
      v29 = *(v14 + 20);
      v30 = &v20[*(v14 + 24)];
      v31 = *v30;
      v32 = v30[1];
      v33 = v53;
      (*(v10 + 104))(v13, *MEMORY[0x277CB9990], v53);
      v34 = &v20[v29];
      v35 = v52;
      sub_22D6E8F24(v34, v31, v32, v13);
      v48 = (*(v10 + 8))(v13, v33);
      v49 = *(v35 + 216);
      MEMORY[0x28223BE20](v48);
      *(&v50 - 2) = v35;
      *(&v50 - 1) = v26;
      sub_22D72E600();
      sub_22D6F3848(v20);
    }

    else
    {

      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v36 = sub_22D72DBE0();
      __swift_project_value_buffer(v36, qword_2814580E8);
      v37 = v54;
      v38 = v26;
      v39 = v55;
      (*(v54 + 16))(v9, v38, v55);
      v40 = sub_22D72DBB0();
      v41 = sub_22D72E5A0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v62 = v43;
        *v42 = 136446210;
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v44 = sub_22D72E960();
        v46 = v45;
        (*(v37 + 8))(v9, v39);
        v47 = sub_22D72891C(v44, v46, &v62);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_22D6B4000, v40, v41, "%{public}s: Cannot perform stop action for alarm that does not exist", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x2318D0420](v43, -1, -1);
        MEMORY[0x2318D0420](v42, -1, -1);
      }

      else
      {

        (*(v37 + 8))(v9, v39);
      }

      (*(v56 + 104))(v58, *MEMORY[0x277CB99E0], v57);
      sub_22D72DED0();
      sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }
  }
}

void sub_22D6DD710(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_22D72DEB0();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22D72D7A0();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v54);
  v9 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v10;
  v11 = type metadata accessor for Alarm(0);
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
  v18 = *v17;
  v19 = *(*v17 + 56);
  v56 = sub_22D6F5AF8;
  v57 = v18;
  os_unfair_lock_lock(v19 + 4);
  v20 = v53;
  sub_22D6F5A78(&v58);
  v53 = v20;
  v21 = v19 + 4;
  if (v20)
  {
    os_unfair_lock_unlock(v21);
    __break(1u);
LABEL_13:
    os_unfair_lock_unlock(v14 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v21);
  v22 = v58;
  v23 = v55;
  if (v58[2])
  {
    v24 = sub_22D6CC49C(v55);
    if (v25)
    {
      v26 = v16;
      sub_22D6F37E4(*(v22 + 56) + *(v48 + 72) * v24, v16);

      v51 = __swift_project_boxed_opaque_existential_1((v2 + 176), *(v2 + 200));
      v27 = v54;
      (*(v6 + 16))(v49, v23, v54);
      v52 = v26;
      sub_22D6F37E4(v26, v14);
      v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = (*(v48 + 80) + v29 + 8) & ~*(v48 + 80);
      v31 = swift_allocObject();
      (*(v6 + 32))(v31 + v28, v49, v27);
      *(v31 + v29) = v2;
      v32 = sub_22D6D3C4C(v14, v31 + v30);
      v14 = *(*v51 + 56);
      v33 = MEMORY[0x28223BE20](v32);
      *(&v48 - 4) = v34;
      *(&v48 - 3) = v55;
      *(&v48 - 2) = sub_22D6F4DD4;
      *(&v48 - 1) = v31;
      MEMORY[0x28223BE20](v33);
      *(&v48 - 2) = sub_22D6D5CBC;
      *(&v48 - 1) = v35;

      os_unfair_lock_lock(v14 + 4);
      v36 = v53;
      sub_22D6F5B28(v37);
      if (!v36)
      {
        os_unfair_lock_unlock(v14 + 4);

        sub_22D6F3848(v52);
        return;
      }

      goto LABEL_13;
    }
  }

  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v38 = sub_22D72DBE0();
  __swift_project_value_buffer(v38, qword_2814580E8);
  v39 = v54;
  (*(v6 + 16))(v9, v23, v54);
  v40 = sub_22D72DBB0();
  v41 = sub_22D72E5A0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58 = v43;
    *v42 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v44 = sub_22D72E960();
    v46 = v45;
    (*(v6 + 8))(v9, v39);
    v47 = sub_22D72891C(v44, v46, &v58);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_22D6B4000, v40, v41, "%{public}s: Cannot perform secondary action for alarm that does not exist", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x2318D0420](v43, -1, -1);
    MEMORY[0x2318D0420](v42, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v39);
  }

  (*(v50 + 104))(v52, *MEMORY[0x277CB99E0], v51);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
}

void sub_22D6DDD7C(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v150 = a5;
  v151 = a4;
  v143 = sub_22D72DE20();
  v146 = *(v143 - 8);
  v8 = *(v146 + 64);
  MEMORY[0x28223BE20](v143);
  v135 = &v126[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5A8, &unk_22D7305A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v147 = &v126[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFE60, &qword_22D730570);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v136 = &v126[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v126[-v18];
  MEMORY[0x28223BE20](v17);
  v145 = &v126[-v19];
  v20 = sub_22D72DE40();
  v141 = *(v20 - 8);
  v142 = v20;
  v21 = *(v141 + 64);
  MEMORY[0x28223BE20](v20);
  v140 = &v126[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_22D72DEA0();
  v138 = *(v23 - 8);
  v139 = v23;
  v24 = *(v138 + 64);
  MEMORY[0x28223BE20](v23);
  v137 = &v126[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_22D72DDD0();
  v149 = *(v26 - 8);
  v27 = *(v149 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v126[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = sub_22D72D7A0();
  v30 = *(v153 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v153);
  v152 = &v126[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v126[-v35];
  MEMORY[0x28223BE20](v34);
  v38 = &v126[-v37];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF578, &unk_22D730580);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v44 = &v126[-v43];
  if (a2)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v45 = sub_22D72DBE0();
    __swift_project_value_buffer(v45, qword_2814580E8);
    v46 = v153;
    (*(v30 + 16))(v36, a3, v153);
    v47 = a1;
    v48 = sub_22D72DBB0();
    v49 = sub_22D72E580();
    sub_22D6D3F3C(a1, 1);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v154[0] = v52;
      *v50 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v53 = sub_22D72E960();
      v54 = v46;
      v56 = v55;
      (*(v30 + 8))(v36, v54);
      v57 = sub_22D72891C(v53, v56, v154);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2114;
      v58 = a1;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v59;
      *v51 = v59;
      _os_log_impl(&dword_22D6B4000, v48, v49, "%{public}s: Cannot perform secondary action as activity data could not be retrieved: %{public}@", v50, 0x16u);
      sub_22D6D5984(v51, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x2318D0420](v52, -1, -1);
      MEMORY[0x2318D0420](v50, -1, -1);

      return;
    }

LABEL_18:

    (*(v30 + 8))(v36, v46);
    return;
  }

  v132 = v10;
  v133 = v42;
  v148 = a3;
  v60 = v41;
  v61 = sub_22D72D570();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = sub_22D72D560();
  v66 = *&a1[OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData];
  v65 = *&a1[OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8];
  sub_22D6D3F68(v66, v65);
  sub_22D6D58D4(&unk_27D9FF580, &qword_27D9FF578, &unk_22D730580);
  v134 = v64;
  sub_22D72D550();
  v129 = v60;
  v130 = v44;
  v131 = 0;
  sub_22D6D5664(v66, v65);
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v67 = sub_22D72DBE0();
  __swift_project_value_buffer(v67, qword_2814580E8);
  v68 = v153;
  (*(v30 + 16))(v38, v148, v153);
  v69 = sub_22D72DBB0();
  v70 = sub_22D72E5A0();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v149;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v154[0] = v128;
    *v73 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v127 = v70;
    v74 = sub_22D72E960();
    v76 = v75;
    (*(v30 + 8))(v38, v68);
    v77 = sub_22D72891C(v74, v76, v154);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_22D6B4000, v69, v127, "%{public}s: Performing secondary action for alarm", v73, 0xCu);
    v78 = v128;
    __swift_destroy_boxed_opaque_existential_1Tm(v128);
    MEMORY[0x2318D0420](v78, -1, -1);
    MEMORY[0x2318D0420](v73, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v38, v68);
  }

  v79 = type metadata accessor for Alarm(0);
  v80 = *(v79 + 20);
  v81 = v150;
  v82 = (v150 + *(v79 + 24));
  v83 = *v82;
  v84 = v82[1];
  (*(v72 + 104))(v29, *MEMORY[0x277CB9998], v26);
  v85 = v81 + v80;
  v86 = v131;
  sub_22D6E8F24(v85, v83, v84, v29);
  v36 = v152;
  if (v86)
  {
    v87 = v86;
    (*(v72 + 8))(v29, v26);
    (*(v133 + 8))(v130, v129);
    v46 = v153;
LABEL_13:
    v88 = v148;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v89 = sub_22D72DBE0();
    __swift_project_value_buffer(v89, qword_2814580E8);
    (*(v30 + 16))(v36, v88, v46);
    v90 = v87;
    v91 = v87;
    v48 = sub_22D72DBB0();
    v92 = sub_22D72E580();

    if (os_log_type_enabled(v48, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v154[0] = v95;
      *v93 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v96 = sub_22D72E960();
      v97 = v46;
      v99 = v98;
      (*(v30 + 8))(v36, v97);
      v100 = sub_22D72891C(v96, v99, v154);

      *(v93 + 4) = v100;
      *(v93 + 12) = 2114;
      v101 = v90;
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 14) = v102;
      *v94 = v102;
      _os_log_impl(&dword_22D6B4000, v48, v92, "%{public}s: Cannot perform secondary action: %{public}@", v93, 0x16u);
      sub_22D6D5984(v94, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v94, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x2318D0420](v95, -1, -1);
      MEMORY[0x2318D0420](v93, -1, -1);

      return;
    }

    goto LABEL_18;
  }

  v131 = 0;
  (*(v72 + 8))(v29, v26);
  v103 = v137;
  sub_22D72DDE0();
  v104 = v140;
  sub_22D72DE50();
  (*(v138 + 8))(v103, v139);
  v105 = v145;
  sub_22D72DE30();
  (*(v141 + 8))(v104, v142);
  v106 = v146;
  v108 = v143;
  v107 = v144;
  (*(v146 + 104))(v144, *MEMORY[0x277CB99B8], v143);
  (*(v106 + 56))(v107, 0, 1, v108);
  v109 = *(v132 + 48);
  v110 = v147;
  sub_22D6D5A4C(v105, v147, &qword_27D9FFE60, &qword_22D730570);
  v150 = v109;
  v111 = v110;
  sub_22D6D5A4C(v107, &v110[v109], &qword_27D9FFE60, &qword_22D730570);
  v112 = *(v106 + 48);
  if (v112(v110, 1, v108) != 1)
  {
    v115 = v136;
    sub_22D6D5A4C(v110, v136, &qword_27D9FFE60, &qword_22D730570);
    v116 = v150;
    v117 = v112(&v110[v150], 1, v108);
    v118 = v108;
    v46 = v153;
    if (v117 != 1)
    {
      v119 = v146;
      v120 = v135;
      (*(v146 + 32))(v135, &v111[v116], v118);
      sub_22D6F4F0C(&unk_27D9FF5B0, MEMORY[0x277CB99C0]);
      LODWORD(v150) = sub_22D72E400();
      v121 = *(v119 + 8);
      v121(v120, v118);
      sub_22D6D5984(v144, &qword_27D9FFE60, &qword_22D730570);
      sub_22D6D5984(v145, &qword_27D9FFE60, &qword_22D730570);
      v121(v115, v118);
      v114 = sub_22D6D5984(v111, &qword_27D9FFE60, &qword_22D730570);
      if ((v150 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    sub_22D6D5984(v144, &qword_27D9FFE60, &qword_22D730570);
    sub_22D6D5984(v145, &qword_27D9FFE60, &qword_22D730570);
    (*(v146 + 8))(v115, v118);
LABEL_24:
    sub_22D6D5984(v111, &qword_27D9FF5A8, &unk_22D7305A0);
    goto LABEL_25;
  }

  sub_22D6D5984(v107, &qword_27D9FFE60, &qword_22D730570);
  v111 = v147;
  sub_22D6D5984(v105, &qword_27D9FFE60, &qword_22D730570);
  v113 = v112(&v111[v150], 1, v108);
  v46 = v153;
  if (v113 != 1)
  {
    goto LABEL_24;
  }

  v114 = sub_22D6D5984(v111, &qword_27D9FFE60, &qword_22D730570);
LABEL_27:
  v122 = *(v151 + 216);
  MEMORY[0x28223BE20](v114);
  v123 = v148;
  *&v126[-16] = v124;
  *&v126[-8] = v123;
  v125 = v131;
  sub_22D72E600();
  if (v125)
  {
    v87 = v125;
    (*(v133 + 8))(v130, v129);
    goto LABEL_13;
  }

LABEL_25:
  (*(v133 + 8))(v130, v129);
}

void sub_22D6DEE1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v101 = sub_22D72DD20();
  v9 = *(v101 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v99 = v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = v78 - v17;
  v97 = sub_22D72D7A0();
  v111 = *(v97 - 8);
  v18 = v111[8];
  MEMORY[0x28223BE20](v97);
  v110 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v20 = *(*(v96 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v96);
  v95 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v94 = v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v109 = v78 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v108 = v78 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v93 = v78 - v30;
  MEMORY[0x28223BE20](v29);
  v92 = v78 - v31;
  v91 = sub_22D72DDC0();
  v102 = *(v91 - 8);
  v32 = *(v102 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200));
  v35 = *v34;
  v36 = *(*v34 + 56);
  v113 = sub_22D6F5AF8;
  v114 = v35;
  os_unfair_lock_lock(v36 + 4);
  sub_22D6F5A78(&v115);
  if (v4)
  {
LABEL_27:
    os_unfair_lock_unlock(v36 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v36 + 4);
  v37 = v115;

  v38 = sub_22D6F4304(v37, a2, a3);

  v39 = *(v38 + 16);
  if (v39)
  {
    v78[1] = 0;
    v79 = a4;
    v115 = MEMORY[0x277D84F90];
    sub_22D6D3360(0, v39, 0);
    v112 = v115;
    v36 = (v38 + 64);
    v40 = -1 << *(v38 + 32);
    v41 = sub_22D72E6F0();
    v42 = 0;
    v82 = *(v38 + 36);
    v89 = v111 + 2;
    v88 = v111 + 4;
    v87 = (v9 + 16);
    v86 = (v111 + 1);
    v85 = v102 + 32;
    v43 = *(v38 + 32);
    v80 = v38 + 72;
    v81 = v39;
    v83 = (v38 + 64);
    v84 = v38;
    v44 = v97;
    while ((v41 & 0x8000000000000000) == 0 && v41 < 1 << v43)
    {
      if ((*&v36[2 * (v41 >> 6)]._os_unfair_lock_opaque & (1 << v41)) == 0)
      {
        goto LABEL_23;
      }

      v104 = 1 << v41;
      v105 = v41 >> 6;
      v103 = v42;
      v47 = v96;
      v48 = *(v96 + 48);
      v49 = v111;
      v50 = *(v38 + 48) + v111[9] * v41;
      v106 = v111[2];
      v51 = v92;
      v106(v92, v50, v44);
      v52 = *(v38 + 56);
      v53 = (type metadata accessor for Alarm(0) - 8);
      sub_22D6F37E4(v52 + *(*v53 + 72) * v41, &v51[v48]);
      v54 = v49[4];
      v107 = v41;
      v55 = v93;
      v54(v93, v51, v44);
      sub_22D6D3C4C(&v51[v48], v55 + *(v47 + 48));
      v56 = v108;
      sub_22D6D5A4C(v55, v108, &unk_27D9FF4A0, &qword_22D730510);
      v57 = v56 + *(v47 + 48);
      v106(v110, v57 + v53[7], v44);
      sub_22D6F3848(v57);
      v58 = v109;
      sub_22D6D5A4C(v55, v109, &unk_27D9FF4A0, &qword_22D730510);
      v59 = v58 + *(v47 + 48);
      sub_22D6D5A4C(v59 + v53[10], v98, &qword_27D9FF4B0, &unk_22D7301A0);
      sub_22D6F3848(v59);
      v60 = v94;
      sub_22D6D5A4C(v55, v94, &unk_27D9FF4A0, &qword_22D730510);
      v61 = v60 + *(v47 + 48);
      sub_22D6D5A4C(v61 + v53[11], v99, &qword_27D9FF310, &qword_22D7301B8);
      sub_22D6F3848(v61);
      v62 = v95;
      sub_22D6D5A4C(v55, v95, &unk_27D9FF4A0, &qword_22D730510);
      v63 = *(v47 + 48);
      v64 = v90;
      v65 = v62 + v63;
      (*v87)(v100, v62 + v63 + v53[13], v101);
      sub_22D6F3848(v65);
      sub_22D72DD00();
      sub_22D6D5984(v55, &unk_27D9FF4A0, &qword_22D730510);
      v66 = v111[1];
      v67 = v62;
      v36 = v86;
      v66(v67, v44);
      v66(v60, v44);
      v66(v109, v44);
      v66(v108, v44);
      v115 = v112;
      v69 = *(v112 + 16);
      v68 = *(v112 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22D6D3360(v68 > 1, v69 + 1, 1);
        v112 = v115;
      }

      v70 = v112;
      *(v112 + 16) = v69 + 1;
      (*(v102 + 32))(v70 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v69, v64, v91);
      v38 = v84;
      v43 = *(v84 + 32);
      v41 = 1 << v43;
      if (v107 >= 1 << v43)
      {
        goto LABEL_24;
      }

      v36 = v83;
      v71 = *&v83[2 * v105]._os_unfair_lock_opaque;
      if ((v71 & v104) == 0)
      {
        goto LABEL_25;
      }

      if (v82 != *(v84 + 36))
      {
        goto LABEL_26;
      }

      v72 = v71 & (-2 << (v107 & 0x3F));
      if (v72)
      {
        v41 = __clz(__rbit64(v72)) | v107 & 0x7FFFFFFFFFFFFFC0;
        v45 = v81;
        v46 = v103;
      }

      else
      {
        v73 = v105 << 6;
        v74 = v105 + 1;
        v75 = (v80 + 8 * v105);
        v45 = v81;
        v46 = v103;
        while (v74 < (v41 + 63) >> 6)
        {
          v77 = *v75++;
          v76 = v77;
          v73 += 64;
          ++v74;
          if (v77)
          {
            v41 = __clz(__rbit64(v76)) + v73;
            break;
          }
        }
      }

      v42 = v46 + 1;
      if (v42 == v45)
      {

        a4 = v79;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v112 = MEMORY[0x277D84F90];
LABEL_21:
  *a4 = v112;
}

void sub_22D6DF7B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v4 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - v5;
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 176), *(a1 + 200));
  v8 = *v7;
  v9 = *(*v7 + 56);
  v23 = sub_22D6D562C;
  v24 = v8;
  os_unfair_lock_lock((v9 + 16));
  sub_22D6F37CC(&v25);
  if (!v2)
  {
    os_unfair_lock_unlock((v9 + 16));
    v10 = v25;
    v25 = MEMORY[0x277D84F98];
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v10 + 64);
    v13 = (v11 + 63) >> 6;

    for (i = 0; v9; i = v15)
    {
      v15 = i;
LABEL_9:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = *(v10 + 48);
      v18 = sub_22D72D7A0();
      (*(*(v18 - 8) + 16))(v6, v17 + *(*(v18 - 8) + 72) * v16, v18);
      v19 = *(v10 + 56);
      v20 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v19 + *(*(v20 - 8) + 72) * v16, &v6[*(v22 + 48)]);
      sub_22D6DFA44(&v25, v6);
      v9 &= v9 - 1;
      sub_22D6D5984(v6, &unk_27D9FF4A0, &qword_22D730510);
    }

    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        *v21 = v25;
        return;
      }

      v9 = *(v10 + 64 + 8 * v15);
      ++i;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    sub_22D6D5984(v6, &unk_27D9FF4A0, &qword_22D730510);

    __break(1u);
  }

  os_unfair_lock_unlock((v9 + 16));
  __break(1u);
}

uint64_t sub_22D6DFA44(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22D72DD20();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v83 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = v75 - v12;
  v13 = sub_22D72D7A0();
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v13);
  v88 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72DDC0();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v79 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v78 = v75 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v87 = v75 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v95 = v75 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = v75 - v32;
  v94 = a2;
  sub_22D6D5A4C(a2, v75 - v32, &unk_27D9FF4A0, &qword_22D730510);
  v90 = v22;
  v34 = &v33[*(v22 + 48)];
  v89 = type metadata accessor for Alarm(0);
  v35 = (v34 + *(v89 + 24));
  v37 = *v35;
  v36 = v35[1];

  sub_22D6F3848(v34);
  v86 = a1;
  v38 = *a1;
  v39 = *(*a1 + 16);
  v82 = v20;
  if (v39)
  {
    v40 = sub_22D6CC714(v37, v36);
    v42 = v41;

    if (v42)
    {
      v76 = *(*(v38 + 56) + 8 * v40);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v76 = MEMORY[0x277D84F90];
LABEL_6:
  v43 = v77;
  v44 = *(v77 + 8);
  v75[1] = v77 + 8;
  v44(v33, v13);
  v45 = v13;
  v47 = v94;
  v46 = v95;
  sub_22D6D5A4C(v94, v95, &unk_27D9FF4A0, &qword_22D730510);
  v48 = v89;
  v49 = v90;
  v50 = v46 + *(v90 + 48);
  (*(v43 + 16))(v88, v50 + *(v89 + 20), v45);
  sub_22D6F3848(v50);
  v51 = v87;
  sub_22D6D5A4C(v47, v87, &unk_27D9FF4A0, &qword_22D730510);
  v52 = v51 + *(v49 + 48);
  sub_22D6D5A4C(v52 + v48[8], v80, &qword_27D9FF4B0, &unk_22D7301A0);
  sub_22D6F3848(v52);
  v53 = v78;
  sub_22D6D5A4C(v47, v78, &unk_27D9FF4A0, &qword_22D730510);
  v54 = v53 + *(v49 + 48);
  sub_22D6D5A4C(v54 + v48[9], v81, &qword_27D9FF310, &qword_22D7301B8);
  sub_22D6F3848(v54);
  v55 = v47;
  v56 = v45;
  v57 = v79;
  sub_22D6D5A4C(v55, v79, &unk_27D9FF4A0, &qword_22D730510);
  v58 = v57 + *(v49 + 48);
  (*(v84 + 16))(v83, v58 + v48[11], v85);
  sub_22D6F3848(v58);
  v59 = v91;
  sub_22D72DD00();
  v44(v57, v56);
  v44(v53, v56);
  v44(v87, v56);
  v87 = v56;
  v88 = v44;
  v44(v95, v56);
  v60 = v82;
  (*(v92 + 16))(v82, v59, v93);
  v61 = v76;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_22D6CBC98(0, v61[2] + 1, 1, v61);
  }

  v63 = v61[2];
  v62 = v61[3];
  if (v63 >= v62 >> 1)
  {
    v61 = sub_22D6CBC98(v62 > 1, v63 + 1, 1, v61);
  }

  v61[2] = v63 + 1;
  v64 = v92;
  v65 = v93;
  (*(v92 + 32))(v61 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63, v60, v93);
  v66 = v95;
  sub_22D6D5A4C(v94, v95, &unk_27D9FF4A0, &qword_22D730510);
  v67 = v66 + *(v90 + 48);
  v68 = (v67 + *(v89 + 24));
  v69 = *v68;
  v70 = v68[1];

  sub_22D6F3848(v67);
  v71 = v86;
  v72 = *v86;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v71;
  sub_22D6CF020(v61, v69, v70, isUniquelyReferenced_nonNull_native);

  *v71 = v96;
  (*(v64 + 8))(v91, v65);
  return (v88)(v66, v87);
}

uint64_t sub_22D6E01C4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a2;
  v32 = a1;
  v28 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v7 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v27 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = a3;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v33 = v5;
      v17 = v16;
LABEL_9:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = v31;
      v20 = *(v31 + 48);
      v21 = sub_22D72D7A0();
      (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
      v22 = *(v19 + 56);
      v23 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v22 + *(*(v23 - 8) + 72) * v18, &v9[*(v29 + 48)]);
      v24 = v33;
      v30(v32, v9);
      v5 = v24;
      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_22D6D5984(v9, &unk_27D9FF4A0, &qword_22D730510);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_22D6D5984(v9, &unk_27D9FF4A0, &qword_22D730510);

    v26 = sub_22D72D730();
    return (*(*(v26 - 8) + 8))(v32, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v25 = sub_22D72D730();
        return (*(*(v25 - 8) + 32))(v28, v32, v25);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v33 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D6E0460(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v8 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v27 - v9;
  v31 = a1;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v29 = a4;

  v17 = 0;
  while (v14)
  {
    v30 = v5;
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v29;
    v22 = *(v29 + 48);
    v23 = sub_22D72D7A0();
    (*(*(v23 - 8) + 16))(v10, v22 + *(*(v23 - 8) + 72) * v20, v23);
    v24 = *(v21 + 56);
    v25 = type metadata accessor for Alarm(0);
    sub_22D6F37E4(v24 + *(*(v25 - 8) + 72) * v20, &v10[*(v27 + 48)]);
    v26 = v30;
    v28(&v31, v10);
    v5 = v26;
    result = sub_22D6D5984(v10, &unk_27D9FF4A0, &qword_22D730510);
    if (v26)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v31;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v30 = v5;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22D6E0674(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v430 = v415 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF558, &qword_22D730560);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v432 = v415 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF560, &qword_22D730568);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v439 = v415 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFE60, &qword_22D730570);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v429 = v415 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v435 = v415 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF570, &qword_22D730578);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v442 = v415 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v446 = v415 - v20;
  v464 = sub_22D72DE40();
  v447 = *(v464 - 8);
  v21 = *(v447 + 64);
  v22 = MEMORY[0x28223BE20](v464);
  v428 = v415 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v441 = v415 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v434 = v415 - v27;
  MEMORY[0x28223BE20](v26);
  v445 = v415 - v28;
  v449 = sub_22D72DEA0();
  v448 = *(v449 - 8);
  v29 = *(v448 + 64);
  v30 = MEMORY[0x28223BE20](v449);
  v431 = v415 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v438 = v415 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v427 = v415 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v440 = v415 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v433 = v415 - v39;
  MEMORY[0x28223BE20](v38);
  v444 = v415 - v40;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF578, &unk_22D730580);
  v460 = *(v471 - 8);
  v41 = *(v460 + 64);
  v42 = MEMORY[0x28223BE20](v471);
  v465 = v415 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v463 = v415 - v44;
  v457 = sub_22D72D730();
  v462 = *(v457 - 8);
  v45 = *(v462 + 64);
  v46 = MEMORY[0x28223BE20](v457);
  v450 = v415 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v456 = v415 - v48;
  v452 = sub_22D72DD30();
  v451 = *(v452 - 8);
  v49 = *(v451 + 64);
  MEMORY[0x28223BE20](v452);
  v473 = v415 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = sub_22D72DDA0();
  v455 = *(v453 - 8);
  v51 = *(v455 + 64);
  MEMORY[0x28223BE20](v453);
  v454 = v415 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v459 = v415 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v58 = v415 - v57;
  v59 = sub_22D72DDB0();
  v475 = *(v59 - 1);
  v476 = v59;
  v60 = *(v475 + 8);
  v61 = MEMORY[0x28223BE20](v59);
  v461 = v415 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v474 = (v415 - v63);
  v64 = sub_22D72DEB0();
  v65 = *(v64 - 8);
  v477 = v64;
  v478 = v65;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v479 = v415 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22D72D7A0();
  v69 = *(v68 - 8);
  v468 = v68;
  v469 = v69;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v467 = v415 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22D72E190();
  v480 = *(v72 - 8);
  v481 = v72;
  v73 = *(v480 + 64);
  v74 = MEMORY[0x28223BE20](v72);
  v458 = v415 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v443 = v415 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v419 = v415 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v417 = v415 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v418 = v415 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v420 = v415 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v423 = v415 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v437 = v415 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v421 = v415 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v470 = v415 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v436 = v415 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v424 = v415 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v100 = v415 - v99;
  MEMORY[0x28223BE20](v98);
  v102 = v415 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v104 = *(*(v103 - 8) + 64);
  v105 = MEMORY[0x28223BE20](v103 - 8);
  v422 = v415 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x28223BE20](v105);
  v425 = v415 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v111 = v415 - v110;
  MEMORY[0x28223BE20](v109);
  v113 = v415 - v112;
  v114 = sub_22D72DCF0();
  v115 = *(v114 - 8);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  v118 = v415 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = a1;
  sub_22D72E150();
  v119 = v115;
  v121 = *(v115 + 48);
  v120 = v115 + 48;
  v472 = v121;
  if ((v121)(v113, 1, v114) == 1)
  {
    v470 = v114;
    sub_22D6D5984(v113, &qword_27D9FF310, &qword_22D7301B8);
    v122 = v480;
    v123 = v481;
    goto LABEL_24;
  }

  v416 = v119;
  (*(v119 + 32))(v118, v113, v114);
  v124 = COERCE_DOUBLE(sub_22D72DCD0());
  v125 = v114;
  if ((v126 & 1) == 0)
  {
    if (v124 >= 86399.0)
    {
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v268 = sub_22D72DBE0();
      __swift_project_value_buffer(v268, qword_2814580E8);
      v269 = v480;
      v270 = v481;
      (*(v480 + 16))(v100, v482, v481);
      v133 = sub_22D72DBB0();
      v271 = sub_22D72E580();
      if (!os_log_type_enabled(v133, v271))
      {

        (*(v269 + 8))(v100, v270);
        goto LABEL_107;
      }

      v272 = swift_slowAlloc();
      v475 = v272;
      v482 = swift_slowAlloc();
      v483 = v482;
      *v272 = 136446210;
      v273 = v467;
      LODWORD(v476) = v271;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v274 = v118;
      v275 = v468;
      v276 = sub_22D72E960();
      v470 = v125;
      v278 = v277;
      v279 = v275;
      v118 = v274;
      (*(v469 + 8))(v273, v279);
      (*(v269 + 8))(v100, v270);
      v280 = sub_22D72891C(v276, v278, &v483);
      v125 = v470;

      v143 = v475;
      *(v475 + 1) = v280;
      v144 = "%{public}s: Cannot schedule an alarm with a prealert countdown >=24 hours";
    }

    else
    {
      if (v124 > 0.0)
      {
        goto LABEL_4;
      }

      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v146 = sub_22D72DBE0();
      __swift_project_value_buffer(v146, qword_2814580E8);
      v147 = v480;
      v148 = v481;
      (*(v480 + 16))(v102, v482, v481);
      v133 = sub_22D72DBB0();
      v149 = sub_22D72E580();
      if (!os_log_type_enabled(v133, v149))
      {

        (*(v147 + 8))(v102, v148);
        goto LABEL_107;
      }

      v150 = swift_slowAlloc();
      v475 = v150;
      v482 = swift_slowAlloc();
      v483 = v482;
      *v150 = 136446210;
      v151 = v467;
      LODWORD(v476) = v149;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v152 = v118;
      v153 = v468;
      v154 = sub_22D72E960();
      v470 = v125;
      v156 = v155;
      v157 = v153;
      v118 = v152;
      (*(v469 + 8))(v151, v157);
      (*(v147 + 8))(v102, v148);
      v158 = sub_22D72891C(v154, v156, &v483);
      v125 = v470;

      v143 = v475;
      *(v475 + 1) = v158;
      v144 = "%{public}s: Cannot schedule an alarm with an illegal prealert value";
    }

    v145 = v476;
LABEL_58:
    v281 = v143;
    _os_log_impl(&dword_22D6B4000, v133, v145, v144, v143, 0xCu);
    v282 = v482;
    __swift_destroy_boxed_opaque_existential_1Tm(v482);
    MEMORY[0x2318D0420](v282, -1, -1);
    MEMORY[0x2318D0420](v281, -1, -1);

LABEL_107:
    (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (*(v416 + 8))(v118, v125);
    return;
  }

LABEL_4:
  v127 = COERCE_DOUBLE(sub_22D72DCE0());
  v122 = v480;
  v123 = v481;
  if ((v128 & 1) == 0)
  {
    if (v127 >= 86399.0)
    {
      v476 = v118;
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v334 = sub_22D72DBE0();
      __swift_project_value_buffer(v334, qword_2814580E8);
      v335 = v436;
      (*(v122 + 16))(v436, v482, v123);
      v336 = sub_22D72DBB0();
      v337 = sub_22D72E580();
      if (os_log_type_enabled(v336, v337))
      {
        v338 = swift_slowAlloc();
        v475 = v338;
        v482 = swift_slowAlloc();
        v483 = v482;
        *v338 = 136446210;
        v470 = v125;
        v339 = v467;
        sub_22D72E170();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v340 = v123;
        v341 = v468;
        v342 = sub_22D72E960();
        v344 = v343;
        v345 = v339;
        v125 = v470;
        (*(v469 + 8))(v345, v341);
        (*(v122 + 8))(v335, v340);
        v346 = sub_22D72891C(v342, v344, &v483);

        v347 = v475;
        *(v475 + 1) = v346;
        v348 = v347;
        _os_log_impl(&dword_22D6B4000, v336, v337, "%{public}s: Cannot schedule an alarm with a postalert countdown >=24 hours", v347, 0xCu);
        v349 = v482;
        __swift_destroy_boxed_opaque_existential_1Tm(v482);
        MEMORY[0x2318D0420](v349, -1, -1);
        MEMORY[0x2318D0420](v348, -1, -1);
      }

      else
      {

        (*(v122 + 8))(v335, v123);
      }
    }

    else
    {
      if (v127 > 0.0)
      {
        goto LABEL_5;
      }

      v476 = v118;
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v159 = sub_22D72DBE0();
      __swift_project_value_buffer(v159, qword_2814580E8);
      v160 = v424;
      (*(v122 + 16))(v424, v482, v123);
      v161 = sub_22D72DBB0();
      v162 = sub_22D72E580();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v475 = v163;
        v482 = swift_slowAlloc();
        v483 = v482;
        *v163 = 136446210;
        v164 = v467;
        sub_22D72E170();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v165 = v468;
        v166 = sub_22D72E960();
        v168 = v167;
        v169 = v165;
        v125 = v114;
        (*(v469 + 8))(v164, v169);
        (*(v122 + 8))(v160, v481);
        v170 = sub_22D72891C(v166, v168, &v483);

        v171 = v475;
        *(v475 + 1) = v170;
        v172 = v171;
        _os_log_impl(&dword_22D6B4000, v161, v162, "%{public}s: Cannot schedule an alarm with an illegal postalert value", v171, 0xCu);
        v173 = v482;
        __swift_destroy_boxed_opaque_existential_1Tm(v482);
        MEMORY[0x2318D0420](v173, -1, -1);
        MEMORY[0x2318D0420](v172, -1, -1);
      }

      else
      {

        (*(v122 + 8))(v160, v123);
      }
    }

    (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (*(v416 + 8))(v476, v125);
    return;
  }

LABEL_5:
  sub_22D72DCD0();
  if (v129)
  {
    sub_22D72DCE0();
    if (v130)
    {
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v131 = sub_22D72DBE0();
      __swift_project_value_buffer(v131, qword_2814580E8);
      v132 = v470;
      (*(v122 + 16))(v470, v482, v123);
      v133 = sub_22D72DBB0();
      v134 = sub_22D72E580();
      if (!os_log_type_enabled(v133, v134))
      {

        (*(v122 + 8))(v132, v123);
        goto LABEL_107;
      }

      v135 = swift_slowAlloc();
      v475 = v135;
      v482 = swift_slowAlloc();
      v483 = v482;
      *v135 = 136446210;
      v136 = v467;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v137 = v468;
      v138 = sub_22D72E960();
      v476 = v118;
      v139 = v125;
      v141 = v140;
      (*(v469 + 8))(v136, v137);
      (*(v122 + 8))(v132, v481);
      v142 = sub_22D72891C(v138, v141, &v483);
      v125 = v139;
      v118 = v476;

      v143 = v475;
      *(v475 + 1) = v142;
      v144 = "%{public}s: Cannot schedule an alarm with an empty countdown duration";
      v145 = v134;
      goto LABEL_58;
    }
  }

  v174 = *(v416 + 8);
  v470 = v114;
  v174(v118, v114);
LABEL_24:
  sub_22D72E180();
  v175 = v475;
  v176 = v476;
  v177 = (v475 + 12);
  v436 = *(v475 + 6);
  v178 = (v436)(v58, 1, v476);
  v179 = v473;
  v415[1] = v120;
  if (v178 == 1)
  {
    sub_22D6D5984(v58, &qword_27D9FF4B0, &unk_22D7301A0);
LABEL_26:
    v180 = v482;
LABEL_27:
    sub_22D72E150();
    v181 = (v472)(v111, 1, v470);
    sub_22D6D5984(v111, &qword_27D9FF310, &qword_22D7301B8);
    if (v181 == 1)
    {
      v182 = v459;
      sub_22D72E180();
      v183 = (v436)(v182, 1, v176);
      sub_22D6D5984(v182, &qword_27D9FF4B0, &unk_22D7301A0);
      if (v183 == 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v184 = sub_22D72DBE0();
        __swift_project_value_buffer(v184, qword_2814580E8);
        v185 = v443;
        (*(v122 + 16))(v443, v180, v123);
        v186 = sub_22D72DBB0();
        v187 = sub_22D72E580();
        if (os_log_type_enabled(v186, v187))
        {
          v188 = swift_slowAlloc();
          v482 = swift_slowAlloc();
          v483 = v482;
          *v188 = 136446210;
          v189 = v467;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v190 = v468;
          v191 = sub_22D72E960();
          v193 = v192;
          (*(v469 + 8))(v189, v190);
          (*(v122 + 8))(v185, v481);
          v194 = sub_22D72891C(v191, v193, &v483);

          *(v188 + 4) = v194;
          _os_log_impl(&dword_22D6B4000, v186, v187, "%{public}s: Cannot schedule an alarm without a schedule or countdown duration", v188, 0xCu);
          v195 = v482;
          __swift_destroy_boxed_opaque_existential_1Tm(v482);
          MEMORY[0x2318D0420](v195, -1, -1);
          MEMORY[0x2318D0420](v188, -1, -1);
        }

        else
        {

          (*(v122 + 8))(v185, v123);
        }

        (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
        sub_22D72DED0();
        sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
        swift_allocError();
        sub_22D72DEC0();
        swift_willThrow();
        return;
      }
    }

    v196 = sub_22D72D570();
    v197 = *(v196 + 48);
    v198 = *(v196 + 52);
    swift_allocObject();
    sub_22D72D560();
    v199 = sub_22D72E120();
    v201 = v200;
    sub_22D6D58D4(&unk_27D9FF580, &qword_27D9FF578, &unk_22D730580);
    v203 = v465;
    v202 = v466;
    v204 = v471;
    sub_22D72D550();
    v476 = v202;
    if (v202)
    {

      sub_22D6D5664(v199, v201);
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v205 = sub_22D72DBE0();
      __swift_project_value_buffer(v205, qword_2814580E8);
      v206 = v458;
      (*(v122 + 16))(v458, v180, v123);
      v207 = sub_22D72DBB0();
      v208 = sub_22D72E580();
      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v475 = v209;
        v482 = swift_slowAlloc();
        v483 = v482;
        *v209 = 136446210;
        v210 = v467;
        sub_22D72E170();
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v211 = v123;
        v212 = v468;
        v213 = sub_22D72E960();
        v215 = v214;
        (*(v469 + 8))(v210, v212);
        (*(v122 + 8))(v206, v211);
        v216 = sub_22D72891C(v213, v215, &v483);

        v217 = v475;
        *(v475 + 1) = v216;
        _os_log_impl(&dword_22D6B4000, v207, v208, "%{public}s: Attributes cannot be decoded", v217, 0xCu);
        v218 = v482;
        __swift_destroy_boxed_opaque_existential_1Tm(v482);
        MEMORY[0x2318D0420](v218, -1, -1);
        MEMORY[0x2318D0420](v217, -1, -1);
      }

      else
      {

        (*(v122 + 8))(v206, v123);
      }

      (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
      sub_22D72DED0();
      sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();

      return;
    }

    sub_22D6D5664(v199, v201);
    (*(v460 + 32))(v463, v203, v204);
    v242 = v444;
    sub_22D72DDE0();
    v243 = v445;
    sub_22D72DE50();
    v244 = v449;
    v474 = *(v448 + 8);
    v474(v242);
    v245 = v446;
    sub_22D72DE10();
    v475 = *(v447 + 8);
    (v475)(v243, v464);
    v246 = sub_22D72E0D0();
    v247 = *(v246 - 8);
    v473 = *(v247 + 48);
    v466 = (v247 + 48);
    v248 = (v473)(v245, 1, v246);
    sub_22D6D5984(v245, &qword_27D9FF570, &qword_22D730578);
    if (v248 != 1)
    {
      v249 = v433;
      sub_22D72DDE0();
      v250 = v434;
      sub_22D72DE50();
      (v474)(v249, v244);
      v251 = v435;
      sub_22D72DE30();
      (v475)(v250, v464);
      v252 = sub_22D72DE20();
      v253 = (*(*(v252 - 8) + 48))(v251, 1, v252);
      sub_22D6D5984(v251, &qword_27D9FFE60, &qword_22D730570);
      if (v253 == 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v254 = sub_22D72DBE0();
        __swift_project_value_buffer(v254, qword_2814580E8);
        v255 = v480;
        v256 = v481;
        v257 = v423;
        (*(v480 + 16))(v423, v482, v481);
        v258 = sub_22D72DBB0();
        v259 = sub_22D72E580();
        if (os_log_type_enabled(v258, v259))
        {
          v260 = swift_slowAlloc();
          v482 = swift_slowAlloc();
          v483 = v482;
          *v260 = 136446210;
          v261 = v467;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v262 = v468;
          v263 = sub_22D72E960();
          v265 = v264;
          (*(v469 + 8))(v261, v262);
          (*(v255 + 8))(v257, v481);
          v266 = sub_22D72891C(v263, v265, &v483);

          *(v260 + 4) = v266;
          _os_log_impl(&dword_22D6B4000, v258, v259, "%{public}s: Not scheduling an alarm with either a secondary button but no behavior", v260, 0xCu);
          v267 = v482;
          __swift_destroy_boxed_opaque_existential_1Tm(v482);
          MEMORY[0x2318D0420](v267, -1, -1);
          MEMORY[0x2318D0420](v260, -1, -1);
        }

        else
        {

          (*(v255 + 8))(v257, v256);
        }

        v412 = v463;
        (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
        sub_22D72DED0();
        sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
        swift_allocError();
        sub_22D72DEC0();
        swift_willThrow();
        (*(v460 + 8))(v412, v471);
        return;
      }
    }

    v283 = v440;
    sub_22D72DDE0();
    v284 = v441;
    sub_22D72DE50();
    v285 = v244;
    v286 = v244;
    v287 = v474;
    (v474)(v283, v286);
    v288 = v442;
    sub_22D72DE10();
    (v475)(v284, v464);
    v289 = (v473)(v288, 1, v246);
    sub_22D6D5984(v288, &qword_27D9FF570, &qword_22D730578);
    v290 = v463;
    if (v289 == 1)
    {
      v291 = v427;
      sub_22D72DDE0();
      v292 = v428;
      sub_22D72DE50();
      v287(v291, v285);
      v293 = v429;
      sub_22D72DE30();
      (v475)(v292, v464);
      v294 = sub_22D72DE20();
      v295 = (*(*(v294 - 8) + 48))(v293, 1, v294);
      sub_22D6D5984(v293, &qword_27D9FFE60, &qword_22D730570);
      if (v295 != 1)
      {
        v300 = v481;
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v404 = sub_22D72DBE0();
        __swift_project_value_buffer(v404, qword_2814580E8);
        v303 = v480;
        v305 = v420;
        (*(v480 + 16))(v420, v482, v300);
        v306 = sub_22D72DBB0();
        v307 = sub_22D72E580();
        if (os_log_type_enabled(v306, v307))
        {
          v308 = swift_slowAlloc();
          v482 = swift_slowAlloc();
          v483 = v482;
          *v308 = 136446210;
          v405 = v467;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v406 = v468;
          v407 = sub_22D72E960();
          v409 = v408;
          (*(v469 + 8))(v405, v406);
          (*(v303 + 8))(v305, v481);
          v410 = sub_22D72891C(v407, v409, &v483);
          v290 = v463;

          *(v308 + 4) = v410;
          v315 = "%{public}s: Not scheduling an alarm with a secondary button behavior but no button";
          goto LABEL_103;
        }

        goto LABEL_104;
      }
    }

    v296 = v438;
    sub_22D72DDE0();
    v297 = v439;
    sub_22D72DE90();
    v287(v296, v285);
    v298 = sub_22D72DE80();
    v299 = (*(*(v298 - 8) + 48))(v297, 1, v298);
    sub_22D6D5984(v297, &unk_27D9FF560, &qword_22D730568);
    v300 = v481;
    if (v299 != 1)
    {
      v301 = v425;
      sub_22D72E150();
      v302 = (v472)(v301, 1, v470);
      sub_22D6D5984(v301, &qword_27D9FF310, &qword_22D7301B8);
      if (v302 == 1)
      {
        v303 = v480;
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v304 = sub_22D72DBE0();
        __swift_project_value_buffer(v304, qword_2814580E8);
        v305 = v418;
        (*(v303 + 16))(v418, v482, v300);
        v306 = sub_22D72DBB0();
        v307 = sub_22D72E580();
        if (os_log_type_enabled(v306, v307))
        {
          v308 = swift_slowAlloc();
          v482 = swift_slowAlloc();
          v483 = v482;
          *v308 = 136446210;
          v309 = v467;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v310 = v468;
          v311 = sub_22D72E960();
          v313 = v312;
          (*(v469 + 8))(v309, v310);
          (*(v303 + 8))(v305, v481);
          v314 = sub_22D72891C(v311, v313, &v483);
          v290 = v463;

          *(v308 + 4) = v314;
          v315 = "%{public}s: Not scheduling an alarm with a countdown presentation but no countdown duration";
LABEL_103:
          _os_log_impl(&dword_22D6B4000, v306, v307, v315, v308, 0xCu);
          v411 = v482;
          __swift_destroy_boxed_opaque_existential_1Tm(v482);
          MEMORY[0x2318D0420](v411, -1, -1);
          MEMORY[0x2318D0420](v308, -1, -1);

LABEL_105:
          (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
          sub_22D72DED0();
          sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
          swift_allocError();
          sub_22D72DEC0();
          swift_willThrow();
          (*(v460 + 8))(v290, v471);
          return;
        }

        goto LABEL_104;
      }
    }

    v350 = v431;
    sub_22D72DDE0();
    v351 = v432;
    sub_22D72DE70();
    v287(v350, v285);
    v352 = sub_22D72DE60();
    v353 = (*(*(v352 - 8) + 48))(v351, 1, v352);
    sub_22D6D5984(v351, &qword_27D9FF558, &qword_22D730560);
    v303 = v480;
    if (v353 != 1)
    {
      v354 = v422;
      sub_22D72E150();
      v355 = (v472)(v354, 1, v470);
      sub_22D6D5984(v354, &qword_27D9FF310, &qword_22D7301B8);
      if (v355 == 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v356 = sub_22D72DBE0();
        __swift_project_value_buffer(v356, qword_2814580E8);
        v305 = v417;
        (*(v303 + 16))(v417, v482, v300);
        v306 = sub_22D72DBB0();
        v307 = sub_22D72E580();
        if (os_log_type_enabled(v306, v307))
        {
          v308 = swift_slowAlloc();
          v482 = swift_slowAlloc();
          v483 = v482;
          *v308 = 136446210;
          v357 = v467;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v358 = v468;
          v359 = sub_22D72E960();
          v361 = v360;
          (*(v469 + 8))(v357, v358);
          (*(v303 + 8))(v305, v481);
          v362 = sub_22D72891C(v359, v361, &v483);
          v290 = v463;

          *(v308 + 4) = v362;
          v315 = "%{public}s: Not scheduling an alarm with a paused presentation but no countdown duration";
          goto LABEL_103;
        }

LABEL_104:

        (*(v303 + 8))(v305, v300);
        goto LABEL_105;
      }
    }

    v363 = __swift_project_boxed_opaque_existential_1((v426 + 176), *(v426 + 200));
    v177 = *(*v363 + 56);
    MEMORY[0x28223BE20](v363);
    v415[-2] = sub_22D6F5AF8;
    v415[-1] = v364;
    os_unfair_lock_lock(v177 + 4);
    v365 = v476;
    sub_22D6F5A78(&v483);
    if (!v365)
    {
      os_unfair_lock_unlock(v177 + 4);
      v366 = v483;
      MEMORY[0x28223BE20](v367);
      v415[-2] = v482;
      v368 = v430;
      sub_22D6D5DB4(sub_22D6F4978, &v415[-4], v366, v430);

      v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      if ((*(*(v369 - 8) + 48))(v368, 1, v369) != 1)
      {
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v370 = sub_22D72DBE0();
        __swift_project_value_buffer(v370, qword_2814580E8);
        v371 = v419;
        (*(v303 + 16))(v419, v482, v300);
        v372 = sub_22D72DBB0();
        v373 = sub_22D72E580();
        if (os_log_type_enabled(v372, v373))
        {
          v374 = v371;
          v375 = swift_slowAlloc();
          v482 = swift_slowAlloc();
          v483 = v482;
          *v375 = 136446210;
          v376 = v467;
          sub_22D72E170();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v377 = v468;
          v378 = sub_22D72E960();
          v380 = v379;
          (*(v469 + 8))(v376, v377);
          (*(v303 + 8))(v374, v481);
          v381 = sub_22D72891C(v378, v380, &v483);
          v290 = v463;

          *(v375 + 4) = v381;
          _os_log_impl(&dword_22D6B4000, v372, v373, "%{public}s: Not scheduling an alarm with a duplicate ID", v375, 0xCu);
          v382 = v482;
          __swift_destroy_boxed_opaque_existential_1Tm(v482);
          v368 = v430;
          MEMORY[0x2318D0420](v382, -1, -1);
          MEMORY[0x2318D0420](v375, -1, -1);
        }

        else
        {

          (*(v303 + 8))(v371, v300);
        }

        (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
        sub_22D72DED0();
        sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
        swift_allocError();
        sub_22D72DEC0();
        swift_willThrow();
      }

      (*(v460 + 8))(v290, v471);
      sub_22D6D5984(v368, &qword_27D9FF9E0, &qword_22D730298);
      return;
    }

LABEL_118:
    os_unfair_lock_unlock(v177 + 4);
    __break(1u);
    return;
  }

  v219 = v474;
  v175[4](v474, v58, v176);
  v220 = v461;
  v175[2](v461, v219, v176);
  v221 = (v175[11])(v220, v176);
  if (v221 == *MEMORY[0x277CB9948])
  {
    (v175[12])(v220, v176);
    v222 = v462;
    v223 = v456;
    v224 = v220;
    v225 = v457;
    (*(v462 + 32))(v456, v224, v457);
    v226 = v450;
    sub_22D72D710();
    v227 = sub_22D72D6C0();
    v229 = *(v222 + 8);
    v228 = v222 + 8;
    v230 = v226;
    v231 = v229;
    (v229)(v230, v225);
    if (v227)
    {
      (v231)(v223, v225);
      (v175[1])(v474, v176);
      v123 = v481;
      v180 = v482;
      v122 = v480;
      goto LABEL_27;
    }

    v473 = v231;
    v462 = v228;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v316 = sub_22D72DBE0();
    __swift_project_value_buffer(v316, qword_2814580E8);
    v318 = v480;
    v317 = v481;
    v319 = v437;
    (*(v480 + 16))(v437, v482, v481);
    v320 = sub_22D72DBB0();
    v321 = sub_22D72E580();
    if (os_log_type_enabled(v320, v321))
    {
      v322 = swift_slowAlloc();
      v472 = v322;
      v482 = swift_slowAlloc();
      v483 = v482;
      *v322 = 136446210;
      v323 = v467;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v324 = v468;
      v325 = sub_22D72E960();
      v327 = v326;
      v328 = v323;
      v176 = v476;
      (*(v469 + 8))(v328, v324);
      (*(v318 + 8))(v319, v317);
      v329 = sub_22D72891C(v325, v327, &v483);

      v330 = v472;
      *(v472 + 1) = v329;
      v331 = v330;
      _os_log_impl(&dword_22D6B4000, v320, v321, "%{public}s: Cannot schedule an alarm with a fixed date in the past", v330, 0xCu);
      v332 = v482;
      __swift_destroy_boxed_opaque_existential_1Tm(v482);
      MEMORY[0x2318D0420](v332, -1, -1);
      MEMORY[0x2318D0420](v331, -1, -1);
    }

    else
    {

      (*(v318 + 8))(v319, v317);
    }

    v383 = v457;
    v384 = v456;
    (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (v473)(v384, v383);
    (*(v475 + 1))(v474, v176);
  }

  else
  {
    if (v221 != *MEMORY[0x277CB9960])
    {
      sub_22D72E970();
      __break(1u);
      goto LABEL_118;
    }

    (v175[12])(v220, v176);
    v232 = v455;
    v233 = v454;
    v234 = v220;
    v235 = v453;
    (*(v455 + 32))(v454, v234, v453);
    v236 = v175;
    sub_22D72DD90();
    v237 = v451;
    v238 = v452;
    if ((*(v451 + 88))(v179, v452) != *MEMORY[0x277CB9958])
    {
      (*(v232 + 8))(v233, v235);
      v333 = v476;
      v236[1](v474, v476);
      (*(v237 + 8))(v179, v238);
      v122 = v480;
      v123 = v481;
      v176 = v333;
      goto LABEL_26;
    }

    v239 = v235;
    v240 = v476;
    (*(v237 + 96))(v179, v238);
    v241 = *(*v179 + 16);

    if (v241)
    {
      (*(v455 + 8))(v454, v239);
      v176 = v240;
      (*(v475 + 1))(v474, v240);
      v122 = v480;
      v123 = v481;
      goto LABEL_26;
    }

    v385 = v480;
    v386 = v482;
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v387 = sub_22D72DBE0();
    __swift_project_value_buffer(v387, qword_2814580E8);
    v388 = v421;
    v389 = v481;
    (*(v385 + 16))(v421, v386, v481);
    v390 = sub_22D72DBB0();
    v391 = sub_22D72E580();
    if (os_log_type_enabled(v390, v391))
    {
      v392 = v388;
      v393 = swift_slowAlloc();
      v482 = swift_slowAlloc();
      v483 = v482;
      *v393 = 136446210;
      v394 = v385;
      v395 = v467;
      v396 = v392;
      sub_22D72E170();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v397 = v468;
      v398 = sub_22D72E960();
      v400 = v399;
      v401 = v395;
      v239 = v453;
      (*(v469 + 8))(v401, v397);
      (*(v394 + 8))(v396, v481);
      v402 = sub_22D72891C(v398, v400, &v483);

      *(v393 + 4) = v402;
      _os_log_impl(&dword_22D6B4000, v390, v391, "%{public}s: Cannot schedule a repeating weekly alarm without at least one day", v393, 0xCu);
      v403 = v482;
      __swift_destroy_boxed_opaque_existential_1Tm(v482);
      v240 = v476;
      MEMORY[0x2318D0420](v403, -1, -1);
      MEMORY[0x2318D0420](v393, -1, -1);
    }

    else
    {

      (*(v385 + 8))(v388, v389);
    }

    v413 = v455;
    v414 = v454;
    (*(v478 + 104))(v479, *MEMORY[0x277CB99E0], v477);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    (*(v413 + 8))(v414, v239);
    (*(v475 + 1))(v474, v240);
  }
}

uint64_t sub_22D6E40A0(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v3 = sub_22D72D7A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  sub_22D6D5A4C(a1, v21 - v14, &unk_27D9FF4A0, &qword_22D730510);
  v16 = &v15[*(v12 + 56)];
  v17 = type metadata accessor for Alarm(0);
  (*(v4 + 16))(v10, v16 + *(v17 + 20), v3);
  sub_22D6F3848(v16);
  sub_22D72E170();
  v18 = sub_22D72D780();
  v19 = *(v4 + 8);
  v19(v8, v3);
  v19(v10, v3);
  v19(v15, v3);
  return v18 & 1;
}

void sub_22D6E4294(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v224 = a4;
  v195 = a3;
  v194 = a2;
  v201 = a5;
  v198 = sub_22D72D950();
  v197 = *(v198 - 8);
  v8 = *(v197 + 64);
  MEMORY[0x28223BE20](v198);
  v196 = v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_22D72DCF0();
  v205 = *(v206 - 8);
  v10 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  v203 = v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_22D72DBA0();
  v192 = *(v193 - 8);
  v12 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v216 = v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v202 = v179 - v20;
  MEMORY[0x28223BE20](v19);
  v204 = v179 - v21;
  v225 = sub_22D72D7A0();
  v227 = *(v225 - 1);
  v22 = *(v227 + 64);
  v23 = MEMORY[0x28223BE20](v225);
  v200 = v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v207 = v179 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v191 = v179 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v212 = v179 - v29;
  MEMORY[0x28223BE20](v28);
  v210 = v179 - v30;
  v214 = type metadata accessor for Alarm(0);
  v31 = *(*(v214 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v214);
  v215 = v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v218 = v179 - v34;
  v35 = sub_22D72D730();
  v221 = *(v35 - 8);
  v222 = v35;
  v36 = *(v221 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v213 = v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v211 = v179 - v40;
  MEMORY[0x28223BE20](v39);
  v217 = v179 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v199 = v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v223 = v179 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = v179 - v48;
  v226 = sub_22D72DD20();
  v228 = *(v226 - 8);
  v50 = *(v228 + 64);
  v51 = MEMORY[0x28223BE20](v226);
  v208 = v179 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v209 = v179 - v54;
  MEMORY[0x28223BE20](v53);
  v220 = v179 - v55;
  v56 = sub_22D72E380();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = (v179 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = *(v6 + 27);
  *v60 = v61;
  (*(v57 + 104))(v60, *MEMORY[0x277D85200], v56);
  v62 = v61;
  LOBYTE(v61) = sub_22D72E390();
  v63 = (*(v57 + 8))(v60, v56);
  if (v61)
  {
    v64 = MEMORY[0x2318CFD00](v63);
    v65 = v219;
    sub_22D6E0674(a1);
    if (v65)
    {
      objc_autoreleasePoolPop(v64);
      return;
    }

    v179[0] = v22;
    v219 = 0;
    v187 = v6;
    v185 = v18;
    objc_autoreleasePoolPop(v64);
    v66 = a1;
    sub_22D72E180();
    v67 = sub_22D72DDB0();
    v68 = *(v67 - 8);
    v186 = *(v68 + 48);
    v69 = v186(v49, 1, v67);
    sub_22D6D5984(v49, &qword_27D9FF4B0, &unk_22D7301A0);
    v70 = v228;
    v71 = *(v228 + 104);
    v72 = MEMORY[0x277CB9920];
    if (v69 == 1)
    {
      v72 = MEMORY[0x277CB9918];
    }

    v73 = *v72;
    v74 = v220;
    v75 = v226;
    v183 = v228 + 104;
    v182 = v71;
    v71(v220, v73, v226);
    v76 = v217;
    sub_22D72D710();
    v77 = *(v227 + 16);
    v190 = v227 + 16;
    v189 = v77;
    v77(v210, v224, v225);
    sub_22D72E170();
    sub_22D72E180();
    v78 = v204;
    sub_22D72E150();
    v188 = v66;
    sub_22D72E160();
    v80 = *(v70 + 16);
    v79 = v70 + 16;
    v184 = v80;
    v80(v209, v74, v75);
    v81 = v222;
    v82 = *(v221 + 16);
    v82(v211, v76, v222);
    v83 = v81;
    v84 = v78;
    v82(v213, v76, v83);
    v86 = v214;
    v85 = v215;
    v87 = *(v68 + 56);
    v181 = &v215[*(v214 + 32)];
    v87();
    v88 = v205;
    v89 = *(v205 + 56);
    v180 = &v85[*(v86 + 36)];
    v90 = v206;
    v89();
    v91 = &v85[*(v86 + 40)];
    *v91 = 0;
    v91[8] = 1;
    if (v186(v223, 1, v67) == 1 && (*(v88 + 48))(v84, 1, v90) == 1)
    {
      __break(1u);
      return;
    }

    v92 = v202;
    sub_22D6D5A4C(v84, v202, &qword_27D9FF310, &qword_22D7301B8);
    v93 = (*(v88 + 48))(v92, 1, v90);
    v94 = v225;
    v95 = v203;
    v179[1] = v79;
    if (v93 == 1)
    {
      sub_22D6D5984(v92, &qword_27D9FF310, &qword_22D7301B8);
      goto LABEL_14;
    }

    (*(v88 + 32))(v203, v92, v90);
    sub_22D72DCD0();
    if (v96)
    {
      sub_22D72DCE0();
      v98 = v97;
      v99 = *(v88 + 8);
      v88 += 8;
      v99(v95, v90);
      if ((v98 & 1) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    (*(v88 + 8))(v95, v90);
LABEL_14:
    v100 = (v227 + 32);
    v101 = *(v227 + 32);
    v102 = v215;
    (v101)(v215, v210, v94);
    v103 = v214;
    v104 = v102 + *(v214 + 20);
    v105 = v212;
    v212 = v100;
    v210 = v101;
    (v101)(v104, v105, v94);
    v106 = (v102 + v103[6]);
    v107 = v195;
    *v106 = v194;
    v106[1] = v107;
    *(v102 + v103[7]) = 0;

    v108 = v223;
    sub_22D6F4888(v223, v181, &qword_27D9FF4B0, &unk_22D7301A0);
    sub_22D6F4888(v84, v180, &qword_27D9FF310, &qword_22D7301B8);
    (*(v192 + 32))(v102 + v103[12], v216, v193);
    (*(v228 + 32))(v102 + v103[11], v209, v226);
    v109 = *(v221 + 32);
    v110 = v84;
    v111 = v222;
    v109(v102 + v103[13], v211, v222);
    v109(v102 + v103[14], v213, v111);
    v112 = v218;
    sub_22D6F37E4(v102, v218);
    sub_22D6D5984(v110, &qword_27D9FF310, &qword_22D7301B8);
    sub_22D6D5984(v108, &qword_27D9FF4B0, &unk_22D7301A0);
    sub_22D6F3848(v102);
    v113 = v196;
    sub_22D72E130();
    v114 = sub_22D72E120();
    v116 = v115;
    v117 = sub_22D72E110();
    v118 = sub_22D72E140();
    v119 = type metadata accessor for Alarm.ActivityData(0);
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    v122 = swift_allocObject();
    v123 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction;
    *(v122 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction) = 0;
    v124 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction;
    *(v122 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction) = 0;
    (*(v197 + 32))(v122 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v113, v198);
    v125 = (v122 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
    *v125 = v114;
    v125[1] = v116;
    *(v122 + v123) = v117;
    *(v122 + v124) = v118;
    v126 = v187;
    v127 = __swift_project_boxed_opaque_existential_1(v187 + 22, *(v187 + 25));
    v128 = *(*v127 + 56);
    v129 = MEMORY[0x28223BE20](v127);
    v179[-4] = v130;
    v179[-3] = v112;
    v179[-2] = v122;
    MEMORY[0x28223BE20](v129);
    v179[-2] = sub_22D6F5A94;
    v179[-1] = v131;

    os_unfair_lock_lock(v128 + 4);
    v132 = v219;
    sub_22D6F5B28(v133);
    v219 = v132;
    v134 = v128 + 4;
    if (v132)
    {
      os_unfair_lock_unlock(v134);

      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v135 = sub_22D72DBE0();
      __swift_project_value_buffer(v135, qword_2814580E8);
      v136 = v191;
      v18 = v225;
      v189(v191, v224, v225);
      v137 = v219;
      v138 = v219;
      v139 = sub_22D72DBB0();
      v140 = sub_22D72E580();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v229 = v143;
        *v141 = 136446466;
        sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
        v223 = v139;
        v144 = sub_22D72E960();
        v145 = v136;
        v147 = v146;
        (*(v227 + 8))(v145, v225);
        v148 = sub_22D72891C(v144, v147, &v229);

        *(v141 + 4) = v148;
        *(v141 + 12) = 2114;
        v149 = v137;
        v150 = _swift_stdlib_bridgeErrorToNSError();
        *(v141 + 14) = v150;
        *v142 = v150;
        v151 = v223;
        _os_log_impl(&dword_22D6B4000, v223, v140, "%{public}s: Failed to update alarm in store: %{public}@", v141, 0x16u);
        sub_22D6D5984(v142, &unk_27D9FF4D0, &qword_22D730180);
        v152 = v142;
        v18 = v225;
        MEMORY[0x2318D0420](v152, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        v153 = v143;
        v126 = v187;
        MEMORY[0x2318D0420](v153, -1, -1);
        MEMORY[0x2318D0420](v141, -1, -1);
      }

      else
      {

        (*(v227 + 8))(v136, v18);
      }

      v219 = 0;
      v6 = v208;
      v154 = v182;
      v155 = MEMORY[0x277CB9918];
    }

    else
    {
      os_unfair_lock_unlock(v134);

      v18 = v225;
      v6 = v208;
      v154 = v182;
      v155 = MEMORY[0x277CB9918];
    }

    v156 = v226;
    v154(v6, *v155, v226);
    v157 = sub_22D72DD10();
    v158 = *(v228 + 8);
    v228 += 8;
    v225 = v158;
    (v158)(v6, v156);
    if (v157)
    {
      v159 = __swift_project_boxed_opaque_existential_1(v126 + 7, *(v126 + 10));
      v160 = v207;
      v189(v207, v224, v18);
      v161 = (*(v227 + 80) + 16) & ~*(v227 + 80);
      v162 = swift_allocObject();
      (v210)(v162 + v161, v160, v18);
      v163 = *v159;
      sub_22D6BB384(v218, sub_22D6F48F0, v162);
    }

    sub_22D6DAC98();
    sub_22D6D7C3C();
    if (qword_2814572C8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_25:
  v164 = sub_22D72DBE0();
  __swift_project_value_buffer(v164, qword_2814580E8);
  v165 = v200;
  v189(v200, v224, v18);
  v166 = sub_22D72DBB0();
  v167 = sub_22D72E5A0();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v169 = v165;
    v170 = swift_slowAlloc();
    v229 = v170;
    *v168 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v171 = sub_22D72E960();
    v172 = v18;
    v174 = v173;
    (*(v227 + 8))(v169, v172);
    v175 = v171;
    v6 = v208;
    v176 = sub_22D72891C(v175, v174, &v229);

    *(v168 + 4) = v176;
    _os_log_impl(&dword_22D6B4000, v166, v167, "%{public}s: Scheduled alarm", v168, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v170);
    MEMORY[0x2318D0420](v170, -1, -1);
    MEMORY[0x2318D0420](v168, -1, -1);
  }

  else
  {

    (*(v227 + 8))(v165, v18);
  }

  sub_22D72E170();
  sub_22D72E180();
  sub_22D72E150();
  v177 = v220;
  v178 = v226;
  v184(v6, v220, v226);
  sub_22D72DD00();

  sub_22D6F3848(v218);
  (*(v221 + 8))(v217, v222);
  (v225)(v177, v178);
}

void sub_22D6E56DC(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_22D72D7A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v13 = sub_22D72DBE0();
    __swift_project_value_buffer(v13, qword_2814580E8);
    (*(v9 + 16))(v12, a4, v8);
    v14 = a1;
    v15 = sub_22D72DBB0();
    v16 = sub_22D72E580();
    sub_22D6D5828(a1, a2, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v17 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v19 = sub_22D72E960();
      v21 = v20;
      (*(v9 + 8))(v12, v8);
      v22 = sub_22D72891C(v19, v21, &v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v24;
      *v18 = v24;
      _os_log_impl(&dword_22D6B4000, v15, v16, "%{public}s: Failed to start activity in countdown state for alarm: %{public}@", v17, 0x16u);
      sub_22D6D5984(v18, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v18, -1, -1);
      v25 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318D0420](v25, -1, -1);
      MEMORY[0x2318D0420](v17, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_22D6E59CC(uint64_t a1)
{
  v3 = sub_22D72DEB0();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72D730();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_22D72DD20();
  v9 = *(v74 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v74);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Alarm(0);
  v13 = *(*(v71 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v64 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = sub_22D72E380();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = v1;
  v23 = v1[27];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_22D72E390();
  (*(v19 + 8))(v22, v18);
  if (v23)
  {
    sub_22D6F37E4(a1, v17);
    if (qword_2814572C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = sub_22D72DBE0();
  v65 = __swift_project_value_buffer(v25, qword_2814580E8);
  v26 = sub_22D72DBB0();
  v27 = sub_22D72E5A0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v17;
    v30 = swift_slowAlloc();
    v73 = v30;
    *v28 = 136446210;
    swift_beginAccess();
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v31 = sub_22D72E960();
    v33 = sub_22D72891C(v31, v32, &v73);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22D6B4000, v26, v27, "%{public}s: Counting down to alarm", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v34 = v30;
    v17 = v29;
    MEMORY[0x2318D0420](v34, -1, -1);
    MEMORY[0x2318D0420](v28, -1, -1);
  }

  v35 = v71;
  swift_beginAccess();
  v36 = *(v35 + 44);
  v37 = v9[13];
  v38 = v74;
  v37(v12, *MEMORY[0x277CB9910], v74);
  LOBYTE(v36) = sub_22D72DD10();
  v39 = v9[1];
  v39(v12, v38);
  if (v36 & 1) != 0 || (v40 = *(v35 + 44), v37(v12, *MEMORY[0x277CB9920], v38), LOBYTE(v40) = sub_22D72DD10(), v39(v12, v38), (v40))
  {
    v41 = v67;
    sub_22D72D710();
    swift_beginAccess();
    v42 = v70;
    sub_22D7143F0(v41, 0.0);
    swift_endAccess();
    (*(v68 + 8))(v41, v69);
    if (!v42)
    {
      v43 = __swift_project_boxed_opaque_existential_1(v66 + 22, v66[25]);
      v44 = v64;
      v45 = sub_22D6F37E4(v17, v64);
      v46 = *(*v43 + 56);
      v47 = MEMORY[0x28223BE20](v45);
      *(&v60 - 4) = v48;
      *(&v60 - 3) = v44;
      *(&v60 - 2) = 0;
      MEMORY[0x28223BE20](v47);
      *(&v60 - 2) = sub_22D6F5A94;
      *(&v60 - 1) = v49;
      os_unfair_lock_lock(v46 + 4);
      sub_22D6F5B28(v50);
      os_unfair_lock_unlock(v46 + 4);
      sub_22D6F3848(v44);
      v58 = *__swift_project_boxed_opaque_existential_1(v66 + 7, v66[10]);
      sub_22D6BB384(v17, nullsub_1, 0);
      sub_22D6DAC98();
      sub_22D6D7C3C();
    }
  }

  else
  {
    v51 = sub_22D72DBB0();
    v52 = sub_22D72E580();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72 = v54;
      *v53 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v55 = sub_22D72E960();
      v57 = sub_22D72891C(v55, v56, &v72);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_22D6B4000, v51, v52, "%{public}s: Not counting down an alarm in the wrong state", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x2318D0420](v54, -1, -1);
      MEMORY[0x2318D0420](v53, -1, -1);
    }

    (*(v61 + 104))(v63, *MEMORY[0x277CB99E0], v62);
    sub_22D72DED0();
    sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
  }

  return sub_22D6F3848(v17);
}

void sub_22D6E63E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Alarm(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v63 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = (&v63 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = sub_22D72E380();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v3[27];
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_22D72E390();
  v25 = *(v18 + 8);
  v24 = (v18 + 8);
  v25(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v26 = v68;
  sub_22D6E81BC(a1, a2, a3, v16);
  if (v26)
  {
    return;
  }

  v21 = v16;
  v24 = v3;
  v64 = 0;
  if (qword_2814572C8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v27 = sub_22D72DBE0();
  v28 = __swift_project_value_buffer(v27, qword_2814580E8);
  v29 = v67;
  sub_22D6F37E4(v21, v67);
  v68 = v28;
  v30 = sub_22D72DBB0();
  v31 = sub_22D72E5A0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v69 = v33;
    *v32 = 136446210;
    sub_22D72D7A0();
    v34 = v21;
    v35 = v24;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v36 = sub_22D72E960();
    v38 = v37;
    sub_22D6F3848(v29);
    v39 = v36;
    v24 = v35;
    v21 = v34;
    v40 = sub_22D72891C(v39, v38, &v69);

    *(v32 + 4) = v40;
    _os_log_impl(&dword_22D6B4000, v30, v31, "%{public}s: Cancelling alarm", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x2318D0420](v33, -1, -1);
    MEMORY[0x2318D0420](v32, -1, -1);
  }

  else
  {

    sub_22D6F3848(v29);
  }

  v41 = __swift_project_boxed_opaque_existential_1(v24 + 22, v24[25]);
  v42 = *(*v41 + 56);
  v43 = MEMORY[0x28223BE20](v41);
  *(&v63 - 2) = v44;
  *(&v63 - 1) = v21;
  MEMORY[0x28223BE20](v43);
  *(&v63 - 2) = sub_22D6F5A60;
  *(&v63 - 1) = v45;
  os_unfair_lock_lock(v42 + 4);
  v46 = v64;
  sub_22D6F5B28(v47);
  v48 = v42 + 4;
  if (v46)
  {
    os_unfair_lock_unlock(v48);
    v49 = v65;
    sub_22D6F37E4(v21, v65);
    v50 = v46;
    v51 = sub_22D72DBB0();
    v52 = sub_22D72E580();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v69 = v67;
      *v53 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v54 = sub_22D72E960();
      v56 = v55;
      sub_22D6F3848(v49);
      v57 = sub_22D72891C(v54, v56, &v69);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2114;
      v58 = v46;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v59;
      v60 = v64;
      *v64 = v59;
      _os_log_impl(&dword_22D6B4000, v51, v52, "%{public}s: Failed to remove alarm from store: %{public}@", v53, 0x16u);
      sub_22D6D5984(v60, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v60, -1, -1);
      v61 = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x2318D0420](v61, -1, -1);
      MEMORY[0x2318D0420](v53, -1, -1);
    }

    else
    {

      sub_22D6F3848(v49);
    }
  }

  else
  {
    os_unfair_lock_unlock(v48);
  }

  __swift_project_boxed_opaque_existential_1(v24 + 7, v24[10]);
  v62 = off_2840CBDE8[0];
  type metadata accessor for ActivityManager();
  v62();
  sub_22D6F3848(v21);
}

void sub_22D6E6C18(uint64_t *a1)
{
  v2 = v1;
  v195 = a1;
  v172 = sub_22D72DD20();
  v3 = *(v172 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v172);
  v170 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22D72D730();
  v176 = *(v177 - 8);
  v6 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v174 = &v166 - v10;
  v11 = sub_22D72DDA0();
  v185 = *(v11 - 8);
  v12 = *(v185 + 64);
  MEMORY[0x28223BE20](v11);
  v178 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v166 - v16;
  v18 = sub_22D72DDB0();
  v19 = *(v18 - 8);
  v187 = v18;
  v188 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v180 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v166 - v23;
  v189 = type metadata accessor for Alarm(0);
  v25 = *(*(v189 - 1) + 64);
  v26 = MEMORY[0x28223BE20](v189);
  v179 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v184 = &v166 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v183 = &v166 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v168 = &v166 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v173 = (&v166 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v169 = &v166 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v166 - v38;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v40 = sub_22D72DBE0();
  v41 = __swift_project_value_buffer(v40, qword_2814580E8);
  sub_22D6F37E4(v195, v39);
  v190 = v41;
  v42 = sub_22D72DBB0();
  v43 = sub_22D72E5A0();
  v44 = os_log_type_enabled(v42, v43);
  v186 = v11;
  v171 = v3;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v182 = v24;
    v181 = v17;
    v47 = v46;
    v194[0] = v46;
    *v45 = 136446210;
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v48 = sub_22D72E960();
    v50 = v49;
    sub_22D6F3848(v39);
    v51 = sub_22D72891C(v48, v50, v194);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_22D6B4000, v42, v43, "%{public}s: Stopping alarm", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v52 = v47;
    v2 = v1;
    v17 = v181;
    v53 = v182;
    MEMORY[0x2318D0420](v52, -1, -1);
    MEMORY[0x2318D0420](v45, -1, -1);
  }

  else
  {

    sub_22D6F3848(v39);
    v53 = v24;
  }

  __swift_project_boxed_opaque_existential_1(v191 + 7, v191[10]);
  v54 = off_2840CBDE8[0];
  type metadata accessor for ActivityManager();
  v55 = v2;
  v54();
  if (v2)
  {
    v56 = 0;
    v57 = v179;
    sub_22D6F37E4(v195, v179);
    v58 = v55;
    v59 = sub_22D72DBB0();
    v60 = sub_22D72E580();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v167 = 0;
      v63 = v62;
      v166 = swift_slowAlloc();
      v194[0] = v166;
      *v61 = 136446466;
      sub_22D72D7A0();
      v182 = v53;
      v181 = v17;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v64 = sub_22D72E960();
      v66 = v65;
      sub_22D6F3848(v57);
      v67 = sub_22D72891C(v64, v66, v194);
      v68 = v182;
      v69 = v188;

      *(v61 + 4) = v67;
      v70 = v69;
      v17 = v181;
      *(v61 + 12) = 2114;
      v71 = v55;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v72;
      *v63 = v72;
      _os_log_impl(&dword_22D6B4000, v59, v60, "%{public}s: Failed to cancel activity for alarm: %{public}@", v61, 0x16u);
      sub_22D6D5984(v63, &unk_27D9FF4D0, &qword_22D730180);
      v73 = v63;
      v53 = v68;
      v56 = v167;
      MEMORY[0x2318D0420](v73, -1, -1);
      v74 = v166;
      __swift_destroy_boxed_opaque_existential_1Tm(v166);
      MEMORY[0x2318D0420](v74, -1, -1);
      MEMORY[0x2318D0420](v61, -1, -1);

      v76 = v185;
      v75 = v186;
      goto LABEL_12;
    }

    sub_22D6F3848(v57);
  }

  else
  {
    v56 = 0;
  }

  v76 = v185;
  v75 = v186;
  v70 = v188;
LABEL_12:
  sub_22D6D5A4C(v195 + v189[8], v17, &qword_27D9FF4B0, &unk_22D7301A0);
  v77 = v187;
  v78 = (*(v70 + 48))(v17, 1, v187);
  v79 = v184;
  if (v78 != 1)
  {
    (*(v70 + 32))(v53, v17, v77);
    v80 = v191;
    swift_beginAccess();
    sub_22D6D5A4C((v80 + 2), &v192, &qword_27D9FF500, &qword_22D730530);
    if (!v193)
    {
      (*(v70 + 8))(v53, v77);
      sub_22D6D5984(&v192, &qword_27D9FF500, &qword_22D730530);
      goto LABEL_21;
    }

    sub_22D6D5D34(&v192, v194);
    v81 = v180;
    (*(v70 + 16))(v180, v53, v77);
    if ((*(v70 + 88))(v81, v77) != *MEMORY[0x277CB9960])
    {
      v88 = *(v70 + 8);
      v88(v53, v77);
      v88(v180, v77);
      goto LABEL_20;
    }

    v82 = v53;
    v83 = v180;
    (*(v70 + 96))(v180, v77);
    v84 = v178;
    (*(v76 + 32))(v178, v83, v75);
    v85 = v70;
    v86 = *__swift_project_boxed_opaque_existential_1(v194, v194[3]);
    v87 = v174;
    sub_22D722F80(v84, v195 + v189[14], v174);
    if ((*(v176 + 48))(v87, 1, v177) == 1)
    {
      (*(v76 + 8))(v178, v75);
      (*(v85 + 8))(v82, v77);
      sub_22D6D5984(v87, &qword_27D9FFDD0, &qword_22D730140);
      v79 = v184;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v194);
      goto LABEL_21;
    }

    v182 = v82;
    sub_22D6D5984(v87, &qword_27D9FFDD0, &qword_22D730140);
    v122 = v169;
    sub_22D6F37E4(v195, v169);
    v123 = sub_22D72DBB0();
    v124 = sub_22D72E5A0();
    v125 = os_log_type_enabled(v123, v124);
    v167 = v56;
    if (v125)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *&v192 = v127;
      *v126 = 136446210;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v128 = sub_22D72E960();
      v130 = v129;
      sub_22D6F3848(v122);
      v131 = sub_22D72891C(v128, v130, &v192);

      *(v126 + 4) = v131;
      _os_log_impl(&dword_22D6B4000, v123, v124, "%{public}s: Rescheduling alarm as it will fire again", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      MEMORY[0x2318D0420](v127, -1, -1);
      MEMORY[0x2318D0420](v126, -1, -1);
    }

    else
    {

      sub_22D6F3848(v122);
    }

    v132 = v173;
    v133 = v172;
    v134 = v170;
    sub_22D6F37E4(v195, v173);
    sub_22D72D710();
    v135 = v189[11];
    v136 = v171;
    v137 = *(v171 + 104);
    v137(v134, *MEMORY[0x277CB9910], v133);
    v138 = sub_22D72DD10();
    v139 = *(v136 + 8);
    v139(v134, v133);
    if (v138 & 1) != 0 || (v137(v134, *MEMORY[0x277CB9908], v133), v140 = sub_22D72DD10(), v139(v134, v133), (v140) || (v137(v134, *MEMORY[0x277CB9918], v133), v141 = sub_22D72DD10(), v139(v134, v133), (v141))
    {
      v142 = v189;
      *(v132 + v189[7]) = 0;
      v143 = v132 + v142[10];
      *v143 = 0;
      v143[8] = 1;
      (*(v176 + 40))(v132 + v142[14], v175, v177);
      v139(v132 + v135, v133);
      v137(v132 + v135, *MEMORY[0x277CB9920], v133);
      v144 = __swift_project_boxed_opaque_existential_1(v191 + 22, v191[25]);
      v145 = *(*v144 + 56);
      v146 = MEMORY[0x28223BE20](v144);
      *(&v166 - 4) = v147;
      *(&v166 - 3) = v132;
      *(&v166 - 2) = 0;
      MEMORY[0x28223BE20](v146);
      *(&v166 - 2) = sub_22D6F5A94;
      *(&v166 - 1) = v148;
      os_unfair_lock_lock(v145 + 4);
      v149 = v167;
      sub_22D6F5B28(v150);
      v151 = v145 + 4;
      if (v149)
      {
        os_unfair_lock_unlock(v151);
        v152 = v168;
        sub_22D6F37E4(v195, v168);
        v153 = v149;
        v154 = sub_22D72DBB0();
        v155 = sub_22D72E580();

        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          *&v192 = v158;
          *v156 = 136446466;
          sub_22D72D7A0();
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v159 = sub_22D72E960();
          v161 = v160;
          sub_22D6F3848(v152);
          v162 = sub_22D72891C(v159, v161, &v192);

          *(v156 + 4) = v162;
          *(v156 + 12) = 2114;
          v163 = v149;
          v164 = _swift_stdlib_bridgeErrorToNSError();
          *(v156 + 14) = v164;
          *v157 = v164;
          _os_log_impl(&dword_22D6B4000, v154, v155, "%{public}s: Failed to update alarm in store: %{public}@", v156, 0x16u);
          sub_22D6D5984(v157, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v157, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v158);
          MEMORY[0x2318D0420](v158, -1, -1);
          MEMORY[0x2318D0420](v156, -1, -1);

          (*(v185 + 8))(v178, v186);
          (*(v188 + 8))(v182, v187);
          v165 = v173;
        }

        else
        {

          sub_22D6F3848(v152);
          (*(v185 + 8))(v178, v186);
          (*(v188 + 8))(v182, v187);
          v165 = v132;
        }

        sub_22D6F3848(v165);
        goto LABEL_43;
      }

      os_unfair_lock_unlock(v151);
    }

    else
    {
      sub_22D6F45E8();
      swift_allocError();
      swift_willThrow();
      (*(v176 + 8))(v175, v177);
    }

    (*(v185 + 8))(v178, v186);
    (*(v188 + 8))(v182, v187);
    sub_22D6F3848(v132);
LABEL_43:
    __swift_destroy_boxed_opaque_existential_1Tm(v194);
    return;
  }

  sub_22D6D5984(v17, &qword_27D9FF4B0, &unk_22D7301A0);
LABEL_21:
  v89 = v183;
  sub_22D6F37E4(v195, v183);
  v90 = sub_22D72DBB0();
  v91 = sub_22D72E5A0();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v56;
    v93 = v79;
    v94 = v89;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v194[0] = v96;
    *v95 = 136446210;
    sub_22D72D7A0();
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v97 = sub_22D72E960();
    v99 = v98;
    v100 = v94;
    v79 = v93;
    sub_22D6F3848(v100);
    v101 = sub_22D72891C(v97, v99, v194);
    v56 = v92;

    *(v95 + 4) = v101;
    _os_log_impl(&dword_22D6B4000, v90, v91, "%{public}s: Removing alarm as it will never fire again", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x2318D0420](v96, -1, -1);
    MEMORY[0x2318D0420](v95, -1, -1);
  }

  else
  {

    sub_22D6F3848(v89);
  }

  v102 = __swift_project_boxed_opaque_existential_1(v191 + 22, v191[25]);
  v103 = *(*v102 + 56);
  v104 = MEMORY[0x28223BE20](v102);
  *(&v166 - 2) = v105;
  *(&v166 - 1) = v195;
  MEMORY[0x28223BE20](v104);
  *(&v166 - 2) = sub_22D6F486C;
  *(&v166 - 1) = v106;
  os_unfair_lock_lock(v103 + 4);
  v107 = v56;
  sub_22D6F5B28(v108);
  v109 = v103 + 4;
  if (v56)
  {
    os_unfair_lock_unlock(v109);
    sub_22D6F37E4(v195, v79);
    v110 = v56;
    v111 = sub_22D72DBB0();
    v112 = sub_22D72E580();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v194[0] = v115;
      *v113 = 136446466;
      sub_22D72D7A0();
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v116 = sub_22D72E960();
      v118 = v117;
      sub_22D6F3848(v79);
      v119 = sub_22D72891C(v116, v118, v194);

      *(v113 + 4) = v119;
      *(v113 + 12) = 2114;
      v120 = v107;
      v121 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 14) = v121;
      *v114 = v121;
      _os_log_impl(&dword_22D6B4000, v111, v112, "%{public}s: Failed to remove alarm from store: %{public}@", v113, 0x16u);
      sub_22D6D5984(v114, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v114, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x2318D0420](v115, -1, -1);
      MEMORY[0x2318D0420](v113, -1, -1);
    }

    else
    {

      sub_22D6F3848(v79);
    }
  }

  else
  {
    os_unfair_lock_unlock(v109);
  }
}

void sub_22D6E81BC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v63 = a2;
  v59 = a1;
  v54 = a4;
  v6 = sub_22D72DEB0();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72D7A0();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v54 - v21;
  v23 = sub_22D72E380();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v4[27];
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v29 = v28;
  v30 = sub_22D72E390();
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v27, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v33 = __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
  v34 = *(*v33 + 56);
  MEMORY[0x28223BE20](v33);
  *(&v54 - 2) = sub_22D6F5AF8;
  *(&v54 - 1) = v35;
  os_unfair_lock_lock(v34 + 4);
  sub_22D6F5A78(&v64);
  if (v5)
  {
    os_unfair_lock_unlock(v34 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v34 + 4);
  v36 = v64;
  MEMORY[0x28223BE20](v37);
  v23 = v59;
  v31 = v62;
  v38 = v63;
  *(&v54 - 4) = v59;
  *(&v54 - 3) = v38;
  *(&v54 - 2) = v31;
  sub_22D6D5DB4(sub_22D6F4848, (&v54 - 6), v36, v15);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  if ((*(*(v39 - 8) + 48))(v15, 1, v39) == 1)
  {
    sub_22D6D5984(v15, &qword_27D9FF9E0, &qword_22D730298);
    v40 = type metadata accessor for Alarm(0);
    (*(*(v40 - 8) + 56))(v22, 1, 1, v40);
    v30 = v60;
    v15 = v61;
  }

  else
  {
    sub_22D6D3C4C(&v15[*(v39 + 48)], v22);
    v40 = type metadata accessor for Alarm(0);
    (*(*(v40 - 8) + 56))(v22, 0, 1, v40);
    v30 = v60;
    v41 = v15;
    v15 = v61;
    (*(v60 + 8))(v41, v61);
  }

  sub_22D6D5A4C(v22, v20, &qword_27D9FF550, &qword_22D730130);
  type metadata accessor for Alarm(0);
  if ((*(*(v40 - 8) + 48))(v20, 1, v40) != 1)
  {
    sub_22D6D5984(v22, &qword_27D9FF550, &qword_22D730130);
    sub_22D6D3C4C(v20, v54);
    return;
  }

  sub_22D6D5984(v20, &qword_27D9FF550, &qword_22D730130);
  if (qword_2814572C8 != -1)
  {
    goto LABEL_14;
  }

LABEL_8:
  v42 = sub_22D72DBE0();
  __swift_project_value_buffer(v42, qword_2814580E8);
  v43 = v55;
  (*(v30 + 16))(v55, v23, v15);

  v44 = sub_22D72DBB0();
  v45 = sub_22D72E580();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v15;
    v47 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v47 = 136446466;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v48 = sub_22D72E960();
    v49 = v43;
    v51 = v50;
    (*(v30 + 8))(v49, v46);
    v52 = sub_22D72891C(v48, v51, &v64);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2082;
    *(v47 + 14) = sub_22D72891C(v63, v31, &v64);
    _os_log_impl(&dword_22D6B4000, v44, v45, "%{public}s:%{public}s: Alarm does not exist", v47, 0x16u);
    v53 = v61;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v53, -1, -1);
    MEMORY[0x2318D0420](v47, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v43, v15);
  }

  (*(v56 + 104))(v58, *MEMORY[0x277CB99E0], v57);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
  sub_22D6D5984(v22, &qword_27D9FF550, &qword_22D730130);
}

void sub_22D6E89E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v39 = a2;
  v4 = sub_22D72DEB0();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72E380();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[27];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_22D72E390();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v20 = __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
  v21 = *(*v20 + 56);
  MEMORY[0x28223BE20](v20);
  *(&v38 - 2) = sub_22D6F5AF8;
  *(&v38 - 1) = v22;
  os_unfair_lock_lock(v21 + 4);
  sub_22D6F5A78(&v44);
  if (v3)
  {
    os_unfair_lock_unlock(v21 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v21 + 4);
  v23 = v44;
  v19 = v43;
  if (v44[2])
  {
    v24 = sub_22D6CC49C(v43);
    if (v25)
    {
      v26 = v24;
      v27 = *(v23 + 56);
      v28 = type metadata accessor for Alarm(0);
      sub_22D6F37E4(v27 + *(*(v28 - 8) + 72) * v26, v39);

      return;
    }
  }

  if (qword_2814572C8 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v29 = sub_22D72DBE0();
  __swift_project_value_buffer(v29, qword_2814580E8);
  (*(v8 + 16))(v11, v19, v7);
  v30 = sub_22D72DBB0();
  v31 = sub_22D72E580();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v32 = 136446210;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v34 = sub_22D72E960();
    v36 = v35;
    (*(v8 + 8))(v11, v7);
    v37 = sub_22D72891C(v34, v36, &v44);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_22D6B4000, v30, v31, "%{public}s: Alarm does not exist", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x2318D0420](v33, -1, -1);
    MEMORY[0x2318D0420](v32, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  (*(v40 + 104))(v42, *MEMORY[0x277CB99E0], v41);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
}

void sub_22D6E8F24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v119 = a4;
  v122 = a3;
  v110 = sub_22D72DEB0();
  v108 = *(v110 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D72D7A0();
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v13;
  MEMORY[0x28223BE20](v12);
  v118 = &v102 - v14;
  v117 = sub_22D72DDD0();
  v114 = *(v117 - 8);
  v15 = *(v114 + 64);
  v16 = MEMORY[0x28223BE20](v117);
  v109 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v103 = &v102 - v19;
  v107 = v20;
  MEMORY[0x28223BE20](v18);
  v104 = &v102 - v21;
  v22 = type metadata accessor for Alarm(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v116 = (&v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v120 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v102 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF550, &qword_22D730130);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v125 = &v102 - v37;
  v38 = *(v4 + 200);
  v113 = v4;
  v39 = __swift_project_boxed_opaque_existential_1((v4 + 176), v38);
  v40 = *v39;
  v41 = *(*v39 + 56);
  v126 = sub_22D6F5AF8;
  v127 = v40;
  os_unfair_lock_lock(v41 + 4);
  sub_22D6F5A78(&v128);
  if (v5)
  {
    os_unfair_lock_unlock(v41 + 4);
    __break(1u);
LABEL_20:
    os_unfair_lock_unlock((v23 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v41 + 4);
  v42 = v128;
  MEMORY[0x28223BE20](v43);
  v121 = a1;
  *(&v102 - 4) = a1;
  *(&v102 - 3) = a2;
  v115 = a2;
  v44 = v122;
  *(&v102 - 2) = v122;
  sub_22D6D5DB4(sub_22D6F5AAC, (&v102 - 6), v42, v31);
  v106 = 0;

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  if ((*(*(v45 - 8) + 48))(v31, 1, v45) == 1)
  {
    sub_22D6D5984(v31, &qword_27D9FF9E0, &qword_22D730298);
    v46 = v125;
    (*(v23 + 56))(v125, 1, 1, v22);
    v48 = v123;
    v47 = v124;
  }

  else
  {
    v46 = v125;
    sub_22D6D3C4C(&v31[*(v45 + 48)], v125);
    (*(v23 + 56))(v46, 0, 1, v22);
    v48 = v123;
    v49 = v31;
    v47 = v124;
    (*(v123 + 8))(v49, v124);
  }

  v50 = v116;
  sub_22D6D5A4C(v46, v36, &qword_27D9FF550, &qword_22D730130);
  if ((*(v23 + 48))(v36, 1, v22) != 1)
  {
    v64 = v36;
    v65 = v120;
    sub_22D6D3C4C(v64, v120);
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v66 = sub_22D72DBE0();
    __swift_project_value_buffer(v66, qword_2814580E8);
    sub_22D6F37E4(v65, v50);
    v67 = v114;
    v68 = v104;
    v69 = v117;
    v116 = *(v114 + 16);
    v116(v104, v119, v117);
    v70 = sub_22D72DBB0();
    v71 = sub_22D72E5A0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v50;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v128 = v74;
      *v73 = 136446466;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      LODWORD(v111) = v71;
      v75 = sub_22D72E960();
      v77 = v76;
      sub_22D6F3848(v72);
      v78 = sub_22D72891C(v75, v77, &v128);
      v67 = v114;

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = v116;
      v116(v103, v68, v69);
      v80 = sub_22D72E4C0();
      v82 = v81;
      (*(v67 + 8))(v68, v117);
      v83 = sub_22D72891C(v80, v82, &v128);
      v69 = v117;

      *(v73 + 14) = v83;
      _os_log_impl(&dword_22D6B4000, v70, v111, "%{public}s: Executing intent for action %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v74, -1, -1);
      MEMORY[0x2318D0420](v73, -1, -1);

      v84 = v79;
    }

    else
    {

      (*(v67 + 8))(v68, v69);
      sub_22D6F3848(v50);
      v84 = v116;
    }

    v117 = __swift_project_boxed_opaque_existential_1((v113 + 176), *(v113 + 200));
    v85 = v109;
    v84(v109, v119, v69);
    v87 = v123;
    v86 = v124;
    (*(v123 + 16))(v118, v121, v124);
    v88 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v89 = (v107 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = v69;
    v91 = (*(v87 + 80) + v89 + 16) & ~*(v87 + 80);
    v92 = swift_allocObject();
    (*(v67 + 32))(v92 + v88, v85, v90);
    v93 = (v92 + v89);
    v94 = v122;
    *v93 = v115;
    v93[1] = v94;
    v95 = (*(v87 + 32))(v92 + v91, v118, v86);
    v23 = *(*v117 + 56);
    v96 = MEMORY[0x28223BE20](v95);
    v97 = v120;
    *(&v102 - 4) = v98;
    *(&v102 - 3) = v97;
    *(&v102 - 2) = sub_22D6F4750;
    *(&v102 - 1) = v92;
    MEMORY[0x28223BE20](v96);
    *(&v102 - 2) = sub_22D6D3EF4;
    *(&v102 - 1) = v99;

    os_unfair_lock_lock((v23 + 16));
    v100 = v106;
    sub_22D6F5B28(v101);
    if (!v100)
    {
      os_unfair_lock_unlock((v23 + 16));

      sub_22D6D5984(v125, &qword_27D9FF550, &qword_22D730130);
      sub_22D6F3848(v97);
      return;
    }

    goto LABEL_20;
  }

  v51 = v44;
  sub_22D6D5984(v36, &qword_27D9FF550, &qword_22D730130);
  v52 = v121;
  if (qword_2814572C8 != -1)
  {
    swift_once();
  }

  v53 = sub_22D72DBE0();
  __swift_project_value_buffer(v53, qword_2814580E8);
  v54 = v105;
  (*(v48 + 16))(v105, v52, v47);

  v55 = sub_22D72DBB0();
  v56 = sub_22D72E580();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v54;
    v124 = swift_slowAlloc();
    v128 = v124;
    *v57 = 136446466;
    sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
    v59 = sub_22D72E960();
    v61 = v60;
    (*(v48 + 8))(v58, v47);
    v62 = sub_22D72891C(v59, v61, &v128);
    v46 = v125;

    *(v57 + 4) = v62;
    *(v57 + 12) = 2082;
    *(v57 + 14) = sub_22D72891C(v115, v51, &v128);
    _os_log_impl(&dword_22D6B4000, v55, v56, "%{public}s:%{public}s: Not executing intent for an alarm that does not exist", v57, 0x16u);
    v63 = v124;
    swift_arrayDestroy();
    MEMORY[0x2318D0420](v63, -1, -1);
    MEMORY[0x2318D0420](v57, -1, -1);
  }

  else
  {

    (*(v48 + 8))(v54, v47);
  }

  (*(v108 + 104))(v111, *MEMORY[0x277CB99E0], v110);
  sub_22D72DED0();
  sub_22D6F4F0C(&unk_27D9FF4C0, MEMORY[0x277CB99F0]);
  swift_allocError();
  sub_22D72DEC0();
  swift_willThrow();
  sub_22D6D5984(v46, &qword_27D9FF550, &qword_22D730130);
}

uint64_t sub_22D6E9C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = sub_22D72D7A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v27 = a1;
  sub_22D6D5A4C(a1, &v27 - v15, &unk_27D9FF4A0, &qword_22D730510);
  v17 = &v16[*(v10 + 48)];
  v18 = type metadata accessor for Alarm(0);
  (*(v6 + 16))(v9, v17 + *(v18 + 20), v5);
  sub_22D6F3848(v17);
  LOBYTE(v17) = sub_22D72D780();
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v16, v5);
  if (v17)
  {
    sub_22D6D5A4C(v27, v14, &unk_27D9FF4A0, &qword_22D730510);
    v20 = &v14[*(v10 + 48)];
    v21 = (v20 + *(v18 + 24));
    v23 = *v21;
    v22 = v21[1];

    sub_22D6F3848(v20);
    if (v23 == v28 && v22 == v29)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_22D72E980();
    }

    v19(v14, v5);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

void sub_22D6E9E94(char *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v78 = a6;
  v80 = a4;
  v81[1] = *MEMORY[0x277D85DE8];
  v79 = sub_22D72D7A0();
  v10 = *(v79 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v79);
  v14 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v73[-v15];
  v17 = sub_22D72DDD0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v22 = sub_22D72DBE0();
    __swift_project_value_buffer(v22, qword_2814580E8);
    v23 = v79;
    (*(v10 + 16))(v16, v78, v79);
    v24 = a5;

    sub_22D6D4164(a1, 1);
    v25 = sub_22D72DBB0();
    v26 = sub_22D72E580();

    sub_22D6D3F3C(a1, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v81[0] = v78;
      *v27 = 136446722;
      sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
      v29 = sub_22D72E960();
      v30 = v23;
      v31 = v24;
      v33 = v32;
      (*(v10 + 8))(v16, v30);
      v34 = sub_22D72891C(v29, v33, v81);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_22D72891C(v80, v31, v81);
      *(v27 + 22) = 2114;
      v35 = a1;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v36;
      *v28 = v36;
      _os_log_impl(&dword_22D6B4000, v25, v26, "%{public}s:%{public}s: Cannot execute intent as no activity data is available: %{public}@", v27, 0x20u);
      sub_22D6D5984(v28, &unk_27D9FF4D0, &qword_22D730180);
      MEMORY[0x2318D0420](v28, -1, -1);
      v37 = v78;
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v37, -1, -1);
      MEMORY[0x2318D0420](v27, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v16, v23);
    }

LABEL_19:
    v72 = *MEMORY[0x277D85DE8];
    return;
  }

  (*(v18 + 16))(v21, a3, v17);
  v38 = (*(v18 + 88))(v21, v17);
  if (v38 == *MEMORY[0x277CB9990])
  {
    v39 = &OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction;
    goto LABEL_11;
  }

  if (v38 == *MEMORY[0x277CB9998])
  {
    v39 = &OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction;
LABEL_11:
    v40 = *&a1[*v39];
    if (v40)
    {
      v41 = objc_allocWithZone(type metadata accessor for ExecutorDelegate());
      v42 = v40;
      v43 = [v41 init];
      v44 = objc_opt_self();
      v45 = sub_22D72E480();
      v46 = [v44 policyWithBundleIdentifier_];

      v81[0] = 0;
      v47 = [v46 connectionWithError_];
      v48 = v81[0];
      if (v47)
      {
        v49 = v47;
        v50 = objc_allocWithZone(MEMORY[0x277D23AF8]);
        v51 = v48;
        v52 = [v50 init];
        v53 = [v49 executorForAction:v42 options:v52 delegate:v43];

        [v53 perform];
      }

      else
      {
        v76 = v42;
        v77 = v43;
        v54 = v81[0];
        v55 = sub_22D72D5D0();

        swift_willThrow();
        if (qword_2814572C8 != -1)
        {
          swift_once();
        }

        v56 = sub_22D72DBE0();
        __swift_project_value_buffer(v56, qword_2814580E8);
        v57 = v10;
        v58 = v79;
        (*(v10 + 16))(v14, v78, v79);
        v59 = a5;

        v60 = v55;
        v61 = sub_22D72DBB0();
        v62 = sub_22D72E580();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v81[0] = v78;
          *v63 = 136446722;
          sub_22D6F4F0C(&qword_27D9FF298, MEMORY[0x277CC95F0]);
          v74 = v62;
          v64 = sub_22D72E960();
          v66 = v65;
          (*(v57 + 8))(v14, v58);
          v67 = sub_22D72891C(v64, v66, v81);

          *(v63 + 4) = v67;
          *(v63 + 12) = 2082;
          *(v63 + 14) = sub_22D72891C(v80, v59, v81);
          *(v63 + 22) = 2114;
          v68 = v55;
          v69 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 24) = v69;
          v70 = v75;
          *v75 = v69;
          _os_log_impl(&dword_22D6B4000, v61, v74, "%{public}s:%{public}s: Cannot execute intent: %{public}@", v63, 0x20u);
          sub_22D6D5984(v70, &unk_27D9FF4D0, &qword_22D730180);
          MEMORY[0x2318D0420](v70, -1, -1);
          v71 = v78;
          swift_arrayDestroy();
          MEMORY[0x2318D0420](v71, -1, -1);
          MEMORY[0x2318D0420](v63, -1, -1);
        }

        else
        {

          (*(v57 + 8))(v14, v58);
        }
      }
    }

    goto LABEL_19;
  }

  sub_22D72E970();
  __break(1u);
}

uint64_t sub_22D6EA708()
{
  sub_22D6D5984(v0 + 16, &qword_27D9FF500, &qword_22D730530);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

  v1 = *(v0 + 232);

  v2 = *(v0 + 248);

  v3 = *(v0 + 256);

  v4 = *(v0 + 264);

  v5 = *(v0 + 272);

  v6 = *(v0 + 280);

  sub_22D6D5984(v0 + OBJC_IVAR____TtC12AlarmKitCore12AlarmManager_queue_nextEventDate, &qword_27D9FFDD0, &qword_22D730140);
  return v0;
}

uint64_t sub_22D6EA7B8()
{
  sub_22D6EA708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlarmManager()
{
  result = qword_281457F00;
  if (!qword_281457F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D6EA864()
{
  sub_22D6EA954();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D6EA954()
{
  if (!qword_2814580B0)
  {
    sub_22D72D730();
    v0 = sub_22D72E6C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814580B0);
    }
  }
}

uint64_t sub_22D6EAB1C()
{
  v2 = *(*v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B8, &qword_22D730518);
  result = sub_22D72E600();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_22D6EAB9C()
{
  v2 = *(*v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF498, &qword_22D730508);
  result = sub_22D72E600();
  if (!v1)
  {
    return v4;
  }

  return result;
}

id sub_22D6EAC80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutorDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D6EACD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D6EAD30();
  }

  return result;
}

uint64_t sub_22D6EAD30()
{
  v1 = v0;
  v2 = sub_22D72E380();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 216);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_22D72E390();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_2814572C8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_22D72DBE0();
  __swift_project_value_buffer(v9, qword_2814580E8);
  v10 = sub_22D72DBB0();
  v11 = sub_22D72E5A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22D6B4000, v10, v11, "Received significant time change notification", v12, 2u);
    MEMORY[0x2318D0420](v12, -1, -1);
  }

  sub_22D6EAF50();
  return sub_22D6D7C3C();
}

uint64_t sub_22D6EAEFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_22D6EAF50()
{
  v1 = sub_22D72DD20();
  v86 = *(v1 - 8);
  v2 = *(v86 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Alarm(0);
  v94 = *(v90 - 8);
  v5 = *(v94 + 64);
  v6 = MEMORY[0x28223BE20](v90);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v68 - v8;
  MEMORY[0x28223BE20](v7);
  v93 = &v68 - v10;
  v91 = sub_22D72D7A0();
  v82 = *(v91 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v91);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = (&v68 - v19);
  v78 = v0;
  sub_22D6EB8F4();
  v95 = v9;
  v96 = v20;
  v88 = v18;
  v89 = v13;
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v21 + 64;
  v27 = 1 << *(v21 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v21 + 64);
  v71 = (v27 + 63) >> 6;
  v80 = v82 + 16;
  v79 = v82 + 32;
  v30 = v86;
  v86 += 88;
  v87 = (v30 + 16);
  v85 = *MEMORY[0x277CB9920];
  v74 = *MEMORY[0x277CB9918];
  v70 = *MEMORY[0x277CB9908];
  v69 = *MEMORY[0x277CB9910];
  v76 = v5;
  v73 = v5 + 7;
  v72 = v98;
  v83 = (v82 + 8);
  v81 = v21;

  v31 = 0;
  v32 = v91;
  v84 = v26;
  v92 = v1;
  v77 = v4;
  while (1)
  {
    v34 = v89;
    if (!v29)
    {
      break;
    }

    v35 = v31;
LABEL_22:
    v38 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v39 = v38 | (v35 << 6);
    v40 = v81;
    v41 = v82;
    (*(v82 + 16))(v89, *(v81 + 48) + *(v82 + 72) * v39, v32);
    v42 = v93;
    sub_22D6F37E4(*(v40 + 56) + *(v94 + 72) * v39, v93);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v44 = v32;
    v45 = *(v43 + 48);
    v46 = *(v41 + 32);
    v47 = v88;
    v46(v88, v34, v44);
    sub_22D6D3C4C(v42, v47 + v45);
    (*(*(v43 - 8) + 56))(v47, 0, 1, v43);
    v1 = v92;
LABEL_23:
    v48 = v96;
    sub_22D6D591C(v47, v96, &qword_27D9FF9E0, &qword_22D730298);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {

      return;
    }

    v50 = v48 + *(v49 + 48);
    v51 = v95;
    sub_22D6D3C4C(v50, v95);
    (*v87)(v4, v51 + *(v90 + 44), v1);
    v52 = (*v86)(v4, v1);
    if (v52 == v85)
    {
      sub_22D6F3848(v51);
    }

    else
    {
      v53 = v93;
      if (v52 != v74 && v52 != v70 && v52 != v69)
      {
        sub_22D72E970();
        __break(1u);
        return;
      }

      v54 = __swift_project_boxed_opaque_existential_1((v78 + 56), *(v78 + 80));
      v55 = v95;
      sub_22D6F37E4(v95, v53);
      v56 = *(v94 + 80);
      v57 = swift_allocObject();
      sub_22D6D3C4C(v53, v57 + ((v56 + 16) & ~v56));
      v58 = *v54;
      v59 = *(*v54 + 216);
      v60 = v75;
      sub_22D6F37E4(v55, v75);
      v61 = (v56 + 24) & ~v56;
      v62 = (v73 + v61) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      *(v63 + 16) = v58;
      sub_22D6D3C4C(v60, v63 + v61);
      v64 = (v63 + v62);
      *v64 = sub_22D6F596C;
      v64[1] = v57;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_22D6D52CC;
      *(v65 + 24) = v63;
      v98[2] = sub_22D6F5ACC;
      v98[3] = v65;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v98[0] = sub_22D6BEF78;
      v98[1] = &block_descriptor_197;
      v66 = _Block_copy(aBlock);

      dispatch_sync(v59, v66);
      _Block_release(v66);

      sub_22D6F3848(v55);
      LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

      v1 = v92;
      v4 = v77;
      v48 = v96;
      if (v58)
      {
        goto LABEL_33;
      }
    }

    v33 = v48;
    v32 = v91;
    (*v83)(v33, v91);
    v26 = v84;
  }

  if (v71 <= v31 + 1)
  {
    v36 = v31 + 1;
  }

  else
  {
    v36 = v71;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v35 >= v71)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      v47 = v88;
      (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
      v29 = 0;
      v31 = v37;
      goto LABEL_23;
    }

    v29 = *(v26 + 8 * v35);
    ++v31;
    if (v29)
    {
      v31 = v35;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  swift_once();
  v22 = sub_22D72DBE0();
  __swift_project_value_buffer(v22, qword_2814580E8);
  v96 = sub_22D72DBB0();
  v23 = sub_22D72E580();
  if (os_log_type_enabled(v96, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22D6B4000, v96, v23, "Failed to fetch alarms from store", v24, 2u);
    MEMORY[0x2318D0420](v24, -1, -1);
  }

  v25 = v96;
}

void sub_22D6EB8F4()
{
  v2 = v0;
  v3 = sub_22D72E380();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[27];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22D72E390();
  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v11(v7, v3);
  if (v8)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
    sub_22D6F5E44();
    if (!v1)
    {
      v14 = sub_22D6F38C4(v13);

      v15 = __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
      v16 = *(*v15 + 56);
      MEMORY[0x28223BE20](v15);
      *(&v19 - 2) = sub_22D6F5AF8;
      *(&v19 - 1) = v17;
      os_unfair_lock_lock(v16 + 4);
      sub_22D6F5A78(&v20);
      os_unfair_lock_unlock(v16 + 4);
      v18 = v20;

      sub_22D6F54A8(v18, v14, sub_22D6F395C, sub_22D6F395C);

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    __break(1u);
    os_unfair_lock_unlock(v10 + 4);
    __break(1u);
  }
}

void sub_22D6EBB18(void *a1)
{
  v2 = MEMORY[0x2318CFD00]();
  v3 = *(*__swift_project_boxed_opaque_existential_1(a1 + 22, a1[25]) + 56);
  os_unfair_lock_lock(v3 + 4);
  sub_22D6F5A78(&v5);
  os_unfair_lock_unlock(v3 + 4);
  v4 = a1[32];
  sub_22D72DC10();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_22D6EBBC4(uint64_t a1)
{
  result = MEMORY[0x2318CF6E0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22D6F1818(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D6EBCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22D72EA20();
  sub_22D72E4E0();
  v7 = sub_22D72EA40();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22D72E980() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_22D6EBDD8()
{
  v2 = v0;
  v3 = sub_22D72E380();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[27];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22D72E390();
  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v11(v7, v3);
  if (v8)
  {
    v12 = *__swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
    sub_22D6F5E44();
    if (!v1)
    {
      v14 = sub_22D6F38C4(v13);

      v15 = __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
      v16 = *(*v15 + 56);
      MEMORY[0x28223BE20](v15);
      *(&v19 - 2) = sub_22D6F5AF8;
      *(&v19 - 1) = v17;
      os_unfair_lock_lock(v16 + 4);
      sub_22D6F5A78(&v20);
      os_unfair_lock_unlock(v16 + 4);
      v18 = v20;

      sub_22D6F54A8(v18, v14, sub_22D6F4F64, sub_22D6F4F64);

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    __break(1u);
    os_unfair_lock_unlock(v10 + 4);
    __break(1u);
  }
}

uint64_t sub_22D6EBFFC()
{
  v1 = sub_22D72DD20();
  v100 = *(v1 - 8);
  v2 = *(v100 + 8);
  MEMORY[0x28223BE20](v1);
  v98 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Alarm(0);
  v90 = *(v103 - 1);
  v4 = *(v90 + 64);
  v5 = MEMORY[0x28223BE20](v103);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v69 - v9;
  MEMORY[0x28223BE20](v8);
  v89 = &v69 - v11;
  v104 = sub_22D72D7A0();
  v91 = *(v104 - 8);
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v104);
  v88 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v21 = sub_22D72E380();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x28223BE20](v21);
  v25 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = v0;
  v26 = *(v0 + 216);
  *v25 = v26;
  v27 = v22[13];
  v80 = *MEMORY[0x277D85200];
  v79 = v22 + 13;
  v78 = v27;
  v27(v25);
  v77 = v26;
  v28 = sub_22D72E390();
  v29 = v22[1];
  v81 = v25;
  v83 = v21;
  v82 = v22 + 1;
  v76 = v29;
  v29(v25, v21);
  if ((v28 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (qword_2814572C8 != -1)
  {
LABEL_36:
    swift_once();
  }

  v30 = sub_22D72DBE0();
  __swift_project_value_buffer(v30, qword_2814580E8);
  v31 = sub_22D72DBB0();
  v32 = sub_22D72E5A0();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v20;
  v102 = v20;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_22D6B4000, v31, v32, "Stopping inactive alarms", v35, 2u);
    v36 = v35;
    v34 = v102;
    MEMORY[0x2318D0420](v36, -1, -1);
  }

  sub_22D6EBDD8();
  v92 = 0;
  v73 = v7;
  v38 = *(v37 + 64);
  v97 = v37 + 64;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v7 = v40 & v38;
  v72 = (v39 + 63) >> 6;
  v85 = v91 + 32;
  v86 = v91 + 16;
  v96 = (v100 + 16);
  v95 = (v100 + 88);
  v94 = *MEMORY[0x277CB9920];
  v74 = *MEMORY[0x277CB9918];
  v71 = *MEMORY[0x277CB9908];
  v70 = *MEMORY[0x277CB9910];
  v93 = (v91 + 8);
  v87 = v37;

  v75 = 0;
  v20 = 0;
  v99 = v18;
  v100 = v10;
  v101 = v1;
  while (1)
  {
    if (!v7)
    {
      if (v72 <= (v20 + 1))
      {
        v42 = v20 + 1;
      }

      else
      {
        v42 = v72;
      }

      v43 = v42 - 1;
      while (1)
      {
        v41 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v41 >= v72)
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
          (*(*(v67 - 8) + 56))(v18, 1, 1, v67);
          v7 = 0;
          v20 = v43;
          goto LABEL_21;
        }

        v7 = *(v97 + 8 * v41);
        ++v20;
        if (v7)
        {
          v20 = v41;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v41 = v20;
LABEL_20:
    v44 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v45 = v44 | (v41 << 6);
    v46 = v87;
    v47 = v88;
    v48 = v91;
    v49 = v104;
    (*(v91 + 16))(v88, *(v87 + 48) + *(v91 + 72) * v45, v104);
    v50 = *(v46 + 56);
    v51 = v89;
    sub_22D6F37E4(v50 + *(v90 + 72) * v45, v89);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    v53 = *(v52 + 48);
    v54 = *(v48 + 32);
    v18 = v99;
    v54(v99, v47, v49);
    sub_22D6D3C4C(v51, v18 + v53);
    (*(*(v52 - 8) + 56))(v18, 0, 1, v52);
    v10 = v100;
    v1 = v101;
    v34 = v102;
LABEL_21:
    sub_22D6D591C(v18, v34, &qword_27D9FF9E0, &qword_22D730298);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
    if ((*(*(v55 - 8) + 48))(v34, 1, v55) == 1)
    {
      break;
    }

    sub_22D6D3C4C(v34 + *(v55 + 48), v10);
    v56 = v98;
    (*v96)(v98, &v10[v103[11]], v1);
    v57 = (*v95)(v56, v1);
    if (v57 != v94)
    {
      if (v57 != v74 && v57 != v71 && v57 != v70)
      {
        result = sub_22D72E970();
        __break(1u);
        return result;
      }

      v18 = v103[5];
      v58 = &v10[v103[6]];
      v59 = *v58;
      v1 = v58[1];
      v60 = v81;
      v61 = v77;
      *v81 = v77;
      v62 = v83;
      v78(v60, v80, v83);
      v63 = v61;
      LOBYTE(v61) = sub_22D72E390();
      v76(v60, v62);
      if ((v61 & 1) == 0)
      {
        goto LABEL_34;
      }

      v64 = &v10[v18];
      v65 = v73;
      v66 = v92;
      sub_22D6E81BC(v64, v59, v1, v73);
      v34 = v102;
      if (v66)
      {

        v92 = 0;
        v75 = 1;
        v10 = v100;
        v1 = v101;
        v18 = v99;
      }

      else
      {
        sub_22D6E6C18(v65);
        v1 = v101;
        v18 = v99;
        v92 = 0;
        sub_22D6F3848(v65);
        v75 = 1;
        v10 = v100;
      }
    }

    sub_22D6F3848(v10);
    (*v93)(v34, v104);
  }

  if (v75)
  {
    sub_22D6D7C3C();
    return sub_22D6DAC98();
  }

  return result;
}

uint64_t sub_22D6ECA00@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_22D72D730();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = sub_22D72E380();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 216);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_22D72E390();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v20 = sub_22D72DBE0();
    __swift_project_value_buffer(v20, qword_2814580E8);
    v21 = sub_22D72DBB0();
    v22 = sub_22D72E580();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_6;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Failed to fetch alarms from store";
LABEL_5:
    _os_log_impl(&dword_22D6B4000, v21, v22, v24, v23, 2u);
    MEMORY[0x2318D0420](v23, -1, -1);
LABEL_6:

    return (*(v3 + 56))(v34, 1, 1, v2);
  }

  sub_22D6EB8F4();
  v27 = v26;
  swift_beginAccess();
  sub_22D6D5A4C(v1 + 16, &v35, &qword_27D9FF500, &qword_22D730530);
  if (!v36)
  {

    sub_22D6D5984(&v35, &qword_27D9FF500, &qword_22D730530);
    if (qword_2814572C8 != -1)
    {
      swift_once();
    }

    v32 = sub_22D72DBE0();
    __swift_project_value_buffer(v32, qword_2814580E8);
    v21 = sub_22D72DBB0();
    v22 = sub_22D72E580();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_6;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Schedule resolver is not set";
    goto LABEL_5;
  }

  sub_22D6D5D34(&v35, v37);
  sub_22D72D710();
  sub_22D72D6A0();
  v28 = *(v3 + 8);
  v28(v10, v2);
  v29 = sub_22D72D680();
  MEMORY[0x28223BE20](v29);
  *(&v33 - 2) = v37;
  *(&v33 - 1) = v12;
  sub_22D6E01C4(v10, sub_22D6F463C, v27, v7);

  sub_22D72D680();
  v30 = sub_22D72D6D0();
  v28(v10, v2);
  if (v30)
  {
    v31 = v34;
    (*(v3 + 32))(v34, v7, v2);
    (*(v3 + 56))(v31, 0, 1, v2);
  }

  else
  {
    v28(v7, v2);
    (*(v3 + 56))(v34, 1, 1, v2);
  }

  v28(v12, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_22D6ECF10()
{
  sub_22D72D730();
  v0 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 216);
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v0;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_22D6F45C0;
    *(v5 + 24) = v4;
    aBlock[4] = sub_22D6F45C8;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D6BEF78;
    aBlock[3] = &block_descriptor_0;
    v6 = _Block_copy(aBlock);

    dispatch_sync(v2, v6);

    _Block_release(v6);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22D6ED0AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D72D730();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  (*(v4 + 16))(v7, a2, v3);
  sub_22D6ED1B8(v7);
  v8 = (*(v4 + 8))(v7, v3);
  return sub_22D6D7C3C(v8);
}

void sub_22D6ED1B8(uint64_t a1)
{
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v61 - v4;
  v82 = sub_22D72D730();
  v79 = *(v82 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v82);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Alarm(0);
  v76 = *(v81 - 8);
  v8 = *(v76 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v61 - v12;
  v83 = sub_22D72D7A0();
  v77 = *(v83 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v83);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = sub_22D72E380();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 216);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x277D85200], v22);
  v28 = v27;
  v29 = sub_22D72E390();
  (*(v23 + 8))(v26, v22);
  if (v29)
  {
    sub_22D6EB8F4();
    v36 = v35;
    swift_beginAccess();
    sub_22D6D5A4C(v1 + 16, &v84, &qword_27D9FF500, &qword_22D730530);
    if (!v85)
    {

      sub_22D6D5984(&v84, &qword_27D9FF500, &qword_22D730530);
      if (qword_2814572C8 != -1)
      {
        swift_once();
      }

      v60 = sub_22D72DBE0();
      __swift_project_value_buffer(v60, qword_2814580E8);
      v31 = sub_22D72DBB0();
      v32 = sub_22D72E580();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_6;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Schedule resolver is not set";
      goto LABEL_5;
    }

    v61 = v1;
    sub_22D6D5D34(&v84, &v86);
    v37 = 0;
    v73 = v36;
    v38 = v36 + 64;
    v39 = 1 << *(v36 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v36 + 64);
    v62 = (v39 + 63) >> 6;
    v67 = v77 + 16;
    v66 = v77 + 32;
    v80 = (v79 + 48);
    v64 = (v79 + 32);
    v63 = (v79 + 8);
    v79 = v77 + 8;
    v71 = v5;
    v70 = v11;
    v69 = v19;
    v68 = v21;
    v78 = v36 + 64;
    while (v41)
    {
      v42 = v37;
LABEL_23:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = v45 | (v42 << 6);
      v47 = v73;
      v48 = v77;
      v49 = v74;
      v50 = v83;
      (*(v77 + 16))(v74, *(v73 + 48) + *(v77 + 72) * v46, v83);
      v51 = *(v47 + 56) + *(v76 + 72) * v46;
      v52 = v75;
      sub_22D6F37E4(v51, v75);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      v54 = *(v53 + 48);
      v55 = *(v48 + 32);
      v19 = v69;
      v55(v69, v49, v50);
      sub_22D6D3C4C(v52, &v19[v54]);
      (*(*(v53 - 8) + 56))(v19, 0, 1, v53);
      v5 = v71;
      v11 = v70;
      v21 = v68;
LABEL_24:
      sub_22D6D591C(v19, v21, &qword_27D9FF9E0, &qword_22D730298);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
      if ((*(*(v56 - 8) + 48))(v21, 1, v56) == 1)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v86);

        return;
      }

      sub_22D6D3C4C(&v21[*(v56 + 48)], v11);
      sub_22D6D42A8(&v86, &v84);
      sub_22D713738(&v84, &v11[*(v81 + 56)], v5);
      sub_22D6D5984(&v84, &qword_27D9FF500, &qword_22D730530);
      v57 = v82;
      if ((*v80)(v5, 1, v82) == 1)
      {
        sub_22D6F3848(v11);
        sub_22D6D5984(v5, &qword_27D9FFDD0, &qword_22D730140);
      }

      else
      {
        v58 = v65;
        (*v64)(v65, v5, v57);
        sub_22D6F4F0C(&unk_27D9FF4E0, MEMORY[0x277CC9578]);
        if ((sub_22D72E3E0() & 1) == 0)
        {
          sub_22D6EDE48(v11, v58, v72);
        }

        (*v63)(v58, v82);
        sub_22D6F3848(v11);
      }

      (*v79)(v21, v83);
      v38 = v78;
    }

    if (v62 <= v37 + 1)
    {
      v43 = v37 + 1;
    }

    else
    {
      v43 = v62;
    }

    v44 = v43 - 1;
    while (1)
    {
      v42 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v42 >= v62)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF4A0, &qword_22D730510);
        (*(*(v59 - 8) + 56))(v19, 1, 1, v59);
        v41 = 0;
        v37 = v44;
        goto LABEL_24;
      }

      v41 = *(v38 + 8 * v42);
      ++v37;
      if (v41)
      {
        v37 = v42;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  __break(1u);
  swift_once();
  v30 = sub_22D72DBE0();
  __swift_project_value_buffer(v30, qword_2814580E8);
  v31 = sub_22D72DBB0();
  v32 = sub_22D72E580();
  if (!os_log_type_enabled(v31, v32))
  {
    goto LABEL_6;
  }

  v33 = swift_slowAlloc();
  *v33 = 0;
  v34 = "Failed to fetch alarms from store";
LABEL_5:
  _os_log_impl(&dword_22D6B4000, v31, v32, v34, v33, 2u);
  MEMORY[0x2318D0420](v33, -1, -1);
LABEL_6:
}