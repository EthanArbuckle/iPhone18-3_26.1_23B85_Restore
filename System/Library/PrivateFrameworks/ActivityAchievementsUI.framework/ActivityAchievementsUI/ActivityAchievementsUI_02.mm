uint64_t sub_23E4DA438(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

__CFString *sub_23E4DA62C(char *a1, id *a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345438);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v50 - v9;
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 < v12 >> 3)
  {
    if (a4 != a1 || &a1[8 * v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v59 = &a4[v11];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      while (1)
      {
        v14 = a2;
        v15 = a4;
        v16 = *a4;
        v17 = *a2;
        v18 = v16;
        result = AAUILocalizedModalityForAchievement(v17);
        if (!result)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v20 = result;
        v21 = sub_23E4DCD7C();
        v23 = v22;

        v57 = v21;
        v58 = v23;
        result = AAUILocalizedModalityForAchievement(v18);
        if (!result)
        {
          goto LABEL_47;
        }

        v24 = result;
        v25 = sub_23E4DCD7C();
        v27 = v26;

        v55 = v25;
        v56 = v27;
        v28 = sub_23E4DCBAC();
        v29 = v54;
        (*(*(v28 - 8) + 56))(v54, 1, 1, v28);
        sub_23E4ABBE4();
        v30 = sub_23E4DCF4C();
        sub_23E4AC750(v29, &qword_27E345438);

        if (v30 != -1)
        {
          break;
        }

        v31 = v14;
        a2 = v14 + 1;
        a4 = v15;
        if (a1 != v14)
        {
          goto LABEL_16;
        }

LABEL_17:
        a1 += 8;
        if (a4 >= v59 || a2 >= v53)
        {
          goto LABEL_40;
        }
      }

      v31 = v15;
      a4 = v15 + 1;
      a2 = v14;
      if (a1 == v15)
      {
        goto LABEL_17;
      }

LABEL_16:
      *a1 = *v31;
      goto LABEL_17;
    }

LABEL_40:
    a2 = a1;
    goto LABEL_42;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    memmove(a4, a2, 8 * v13);
  }

  v59 = &a4[v13];
  if (a3 - a2 < 8 || a2 <= a1)
  {
LABEL_42:
    if (a2 != a4 || a2 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v59 - a4));
    }

    return 1;
  }

  v51 = a1;
  v52 = a4;
LABEL_28:
  v53 = a2;
  v32 = a2 - 1;
  --a3;
  v33 = v59;
  while (1)
  {
    v34 = *--v33;
    v35 = *v32;
    v36 = v34;
    v37 = v35;
    result = AAUILocalizedModalityForAchievement(v36);
    if (!result)
    {
      goto LABEL_48;
    }

    v38 = result;
    v39 = sub_23E4DCD7C();
    v41 = v40;

    v57 = v39;
    v58 = v41;
    result = AAUILocalizedModalityForAchievement(v37);
    if (!result)
    {
      break;
    }

    v42 = result;
    v43 = sub_23E4DCD7C();
    v45 = v44;

    v55 = v43;
    v56 = v45;
    v46 = sub_23E4DCBAC();
    v47 = v54;
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
    sub_23E4ABBE4();
    v48 = sub_23E4DCF4C();
    sub_23E4AC750(v47, &qword_27E345438);

    v49 = a3 + 1;
    if (v48 == -1)
    {
      a4 = v52;
      if (v49 != v53)
      {
        *a3 = *v32;
      }

      if (v59 <= a4 || (a2 = v32, v32 <= v51))
      {
        a2 = v32;
        goto LABEL_42;
      }

      goto LABEL_28;
    }

    a4 = v52;
    if (v49 != v59)
    {
      *a3 = *v33;
    }

    --a3;
    v59 = v33;
    if (v33 <= a4)
    {
      v59 = v33;
      a2 = v53;
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_23E4DAB1C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v26;
    }

    v25 = a2;
    v44 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v43 = v14;
LABEL_27:
      __dst = v25;
      v27 = v25 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v25 - 1;
      do
      {
        v30 = v28;
        v31 = (v28 + 1);
        v32 = *(v29 - 1);
        v29 -= 8;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 template];
        v37 = [v36 displayOrder];

        v38 = [v35 template];
        v39 = [v38 displayOrder];

        if (v37 < v39)
        {
          v4 = v30;
          if (v31 != __dst)
          {
            *v30 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v25 = v42, v42 <= v5))
          {
            v25 = v42;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > v43);
      v44 = v29;
      v14 = v43;
      v25 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 template];
        v20 = [v19 displayOrder];

        v21 = [v18 template];
        v22 = [v21 displayOrder];

        if (v20 >= v22)
        {
          break;
        }

        v23 = v15;
        v24 = v5 == v15++;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v44 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v23 = v14;
      v24 = v5 == v14++;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = v5;
  }

LABEL_38:
  if (v25 != v14 || v25 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v14, 8 * ((v44 - v14) / 8));
  }

  return 1;
}

uint64_t sub_23E4DAE7C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_23E4DD12C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_23E4DD12C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_23E4DB0A4(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4, char a5, void *a6)
{
  v7 = v6;
  v9 = a4;
  v10 = a3;
  v11 = __src;
  v12 = __dst;
  v13 = __src - __dst;
  v14 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v13);
    }

    v15 = &v9[v13];
    if (v13 < 1 || v11 >= v10)
    {
LABEL_19:
      v11 = v12;
      goto LABEL_50;
    }

    while (1)
    {
      v35 = *v11;
      v34 = *v9;
      v16 = sub_23E4B7574(&v35, &v34, a5 & 1, a6);
      if (v6)
      {
        v28 = v15 - v9;
        if (v12 < v9 || v12 >= v15 || v12 != v9)
        {
          v29 = v12;
          goto LABEL_54;
        }

        goto LABEL_56;
      }

      if (v16)
      {
        v17 = v11 + 1;
        v18 = v11;
        if (v12 >= v11 && v12 < v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v9 + 1;
        v18 = v9;
        v17 = v11;
        if (v12 < v9)
        {
          ++v9;
        }

        else
        {
          ++v9;
          if (v12 < v19)
          {
            goto LABEL_17;
          }
        }
      }

      *v12 = *v18;
LABEL_17:
      ++v12;
      if (v9 < v15)
      {
        v11 = v17;
        if (v17 < v10)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v15 = &v9[v14];
  if (v14 < 1 || v11 <= v12)
  {
    goto LABEL_50;
  }

  v20 = -v9;
  v32 = a6;
LABEL_26:
  v21 = v7;
  v22 = v11 - 1;
  v23 = &v15[v20];
  --v10;
  v24 = v15;
  while (1)
  {
    v25 = *--v24;
    v37 = v25;
    v36 = *v22;
    v26 = sub_23E4B7574(&v37, &v36, a5 & 1, v32);
    if (v21)
    {
      break;
    }

    v27 = v10 + 1;
    if (v26)
    {
      if (v27 < v11 || v10 >= v11)
      {
        *v10 = *v22;
      }

      v7 = 0;
      if (v15 <= v9 || (--v11, v20 = -v9, v22 <= v12))
      {
        v11 = v22;
        goto LABEL_49;
      }

      goto LABEL_26;
    }

    if (v27 < v15 || v10 >= v15)
    {
      *v10 = *v24;
    }

    --v23;
    --v10;
    v15 = v24;
    if (v24 <= v9)
    {
      v15 = v24;
LABEL_49:
      a6 = v32;
LABEL_50:
      v28 = v15 - v9;
      if (v11 >= v9 && v11 < v15 && v11 == v9)
      {
        goto LABEL_56;
      }

      v29 = v11;
LABEL_54:
      v30 = v9;
LABEL_55:
      memmove(v29, v30, v28);
      goto LABEL_56;
    }
  }

  if (v11 < v9 || v11 >= v15)
  {
    memmove(v11, v9, v23);
    a6 = v32;
    goto LABEL_56;
  }

  a6 = v32;
  if (v11 != v9)
  {
    v29 = v11;
    v30 = v9;
    v28 = v23;
    goto LABEL_55;
  }

LABEL_56:

  return 1;
}

uint64_t sub_23E4DB388(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E4D3294(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_23E4DB414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345448);
  v2 = *v0;
  v3 = sub_23E4DD09C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_23E4DB570(void *a1, int64_t a2, char a3)
{
  result = sub_23E4DB590(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E4DB590(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E4DB6C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_23E4DB81C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_23E4DD12C() & 1;
    }
  }

  return result;
}

uint64_t sub_23E4DB890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23E4DB920(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, void *a6)
{
  v9 = a3[1];
  v101 = a6;
  v99 = a5;
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_90:
    v98 = *a1;
    if (*a1)
    {
      v101 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_92;
    }

    goto LABEL_133;
  }

  v94 = a4;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v13 = *a3;
      v105 = *(*a3 + v12);
      v104 = *(v13 + v10);
      v14 = sub_23E4B7574(&v105, &v104, a5 & 1, v101);
      if (v6)
      {
LABEL_103:

LABEL_104:

        return;
      }

      v15 = v14;
      v16 = v10;
      while (v9 - 2 != v16)
      {
        v103 = *(v13 + v16 + 2);
        v102 = *(v13 + v16++ + 1);
        if ((v15 & 1) != (sub_23E4B7574(&v103, &v102, a5 & 1, v101) & 1))
        {
          v9 = v16 + 1;
          break;
        }
      }

      if (v15)
      {
        if (v9 < v10)
        {
          goto LABEL_127;
        }

        if (v10 < v9)
        {
          v17 = v9 - 1;
          v18 = v10;
          do
          {
            if (v18 != v17)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v19 = *(v21 + v18);
              *(v21 + v18) = *(v21 + v17);
              *(v21 + v17) = v19;
            }
          }

          while (++v18 < v17--);
        }
      }

      v12 = v9;
    }

    v22 = a3[1];
    if (v12 >= v22)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v12, v10))
    {
      goto LABEL_123;
    }

    if (v12 - v10 >= v94)
    {
      goto LABEL_136;
    }

    v23 = (v10 + v94);
    if (__OFADD__(v10, v94))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:

      __break(1u);
LABEL_129:

      __break(1u);
      goto LABEL_130;
    }

    if (v23 >= v22)
    {
      v23 = a3[1];
    }

    if (v23 < v10)
    {
      goto LABEL_126;
    }

    if (v12 == v23)
    {
LABEL_136:
      if (v12 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v77 = *a3;
      v78 = (*a3 + v12);
      v79 = v10 - v12;
      v98 = v23;
      do
      {
        v97 = v12;
        v80 = *(v77 + v12);
        v81 = v79;
        v82 = v78;
        v83 = v78;
        do
        {
          v107 = v80;
          v106 = *(v83 - 1);
          v84 = sub_23E4B7574(&v107, &v106, a5 & 1, v101);
          if (v6)
          {
            goto LABEL_103;
          }

          if ((v84 & 1) == 0)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_129;
          }

          v80 = *v83;
          *v83 = *(v83 - 1);
          *--v83 = v80;
        }

        while (!__CFADD__(v81++, 1));
        v12 = v97 + 1;
        v78 = v82 + 1;
        --v79;
      }

      while ((v97 + 1) != v98);
      v12 = v98;
      if (v98 < v10)
      {
        goto LABEL_122;
      }
    }

    v96 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23E4D2FF4(0, *(v11 + 2) + 1, 1, v11);
    }

    v25 = *(v11 + 2);
    v24 = *(v11 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v11 = sub_23E4D2FF4((v24 > 1), v25 + 1, 1, v11);
    }

    *(v11 + 2) = v26;
    v27 = &v11[16 * v25];
    *(v27 + 4) = v10;
    *(v27 + 5) = v12;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v25)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v96;
    if (v96 >= v9)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v28 = v26 - 1;
    if (v26 >= 4)
    {
      v33 = &v11[16 * v26 + 32];
      v34 = *(v33 - 64);
      v35 = *(v33 - 56);
      v39 = __OFSUB__(v35, v34);
      v36 = v35 - v34;
      if (v39)
      {
        goto LABEL_109;
      }

      v38 = *(v33 - 48);
      v37 = *(v33 - 40);
      v39 = __OFSUB__(v37, v38);
      v31 = v37 - v38;
      v32 = v39;
      if (v39)
      {
        goto LABEL_110;
      }

      v40 = &v11[16 * v26];
      v42 = *v40;
      v41 = *(v40 + 1);
      v39 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v39)
      {
        goto LABEL_112;
      }

      v39 = __OFADD__(v31, v43);
      v44 = v31 + v43;
      if (v39)
      {
        goto LABEL_115;
      }

      if (v44 >= v36)
      {
        v62 = &v11[16 * v28 + 32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v39 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v39)
        {
          goto LABEL_121;
        }

        if (v31 < v65)
        {
          v28 = v26 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v26 == 3)
    {
      v29 = *(v11 + 4);
      v30 = *(v11 + 5);
      v39 = __OFSUB__(v30, v29);
      v31 = v30 - v29;
      v32 = v39;
LABEL_49:
      if (v32)
      {
        goto LABEL_111;
      }

      v45 = &v11[16 * v26];
      v47 = *v45;
      v46 = *(v45 + 1);
      v48 = __OFSUB__(v46, v47);
      v49 = v46 - v47;
      v50 = v48;
      if (v48)
      {
        goto LABEL_114;
      }

      v51 = &v11[16 * v28 + 32];
      v53 = *v51;
      v52 = *(v51 + 1);
      v39 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v39)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v49, v54))
      {
        goto LABEL_118;
      }

      if (v49 + v54 >= v31)
      {
        if (v31 < v54)
        {
          v28 = v26 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v55 = &v11[16 * v26];
    v57 = *v55;
    v56 = *(v55 + 1);
    v39 = __OFSUB__(v56, v57);
    v49 = v56 - v57;
    v50 = v39;
LABEL_63:
    if (v50)
    {
      goto LABEL_113;
    }

    v58 = &v11[16 * v28];
    v60 = *(v58 + 4);
    v59 = *(v58 + 5);
    v39 = __OFSUB__(v59, v60);
    v61 = v59 - v60;
    if (v39)
    {
      goto LABEL_116;
    }

    if (v61 < v49)
    {
      goto LABEL_3;
    }

LABEL_70:
    v66 = v28 - 1;
    if (v28 - 1 >= v26)
    {
      break;
    }

    v67 = *a3;
    if (!*a3)
    {
      goto LABEL_128;
    }

    v68 = *&v11[16 * v66 + 32];
    v69 = &v11[16 * v28 + 32];
    v71 = *v69;
    v70 = *(v69 + 1);
    v72 = v101;
    v73 = (v67 + v68);
    v74 = (v67 + v71);
    v75 = v67 + v70;
    a5 = v99;
    sub_23E4DB0A4(v73, v74, v75, v98, v99 & 1, v72);
    if (v6)
    {

      goto LABEL_104;
    }

    if (v70 < v68)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23E4D3294(v11);
    }

    if (v66 >= *(v11 + 2))
    {
      goto LABEL_108;
    }

    v76 = &v11[16 * v66];
    *(v76 + 4) = v68;
    *(v76 + 5) = v70;
    v108 = v11;
    sub_23E4DB388(v28);
    v11 = v108;
    v26 = *(v108 + 2);
    if (v26 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  v11 = sub_23E4D3294(v11);
LABEL_92:
  v108 = v11;
  v86 = *(v11 + 2);
  if (v86 < 2)
  {
LABEL_102:
  }

  else
  {
    while (1)
    {
      v87 = *a3;
      if (!*a3)
      {
        break;
      }

      v88 = *&v11[16 * v86];
      v89 = &v11[16 * v86 - 16];
      v90 = *(v89 + 4);
      v91 = *(v89 + 5);
      v92 = v101;
      sub_23E4DB0A4((v87 + v88), (v87 + v90), v87 + v91, v98, v99 & 1, v92);
      if (v6)
      {

        return;
      }

      if (v91 < v88)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_23E4D3294(v11);
      }

      if (v86 - 2 >= *(v11 + 2))
      {
        goto LABEL_120;
      }

      v93 = &v11[16 * v86];
      *v93 = v88;
      *(v93 + 1) = v91;
      v108 = v11;
      sub_23E4DB388(v86 - 1);
      v11 = v108;
      v86 = *(v108 + 2);
      if (v86 <= 1)
      {
        goto LABEL_102;
      }
    }

LABEL_130:

    __break(1u);
LABEL_131:

    __break(1u);
LABEL_132:

    __break(1u);
LABEL_133:

    __break(1u);
  }
}

unint64_t sub_23E4DBFF0()
{
  result = qword_27E345368;
  if (!qword_27E345368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E345360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E345368);
  }

  return result;
}

void AAUILocalizedActivityTypeForAchievement_cold_1(void *a1)
{
  v1 = [a1 template];
  v2 = [v1 uniqueName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23E4A3000, v3, v4, "Could not determine Localized activity type for achievement's template: %@", v5, v6, v7, v8, v9);
}

void AAUILocalizedModalityForAchievement_cold_1(void *a1)
{
  v1 = [a1 template];
  v2 = [v1 uniqueName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1(&dword_23E4A3000, v3, v4, "Could not localized Modality for template %@", v5, v6, v7, v8, v9);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}