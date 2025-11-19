char *sub_18B53BE1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_18B53BF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_18B53C014(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_18B53C138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BA8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_18B53C23C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5088);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_18B53C2B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_18B53C340(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5030);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_18B53C3D8(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_18:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = v4 - 1;
      if (v4 - 1 >= (a3 - 1))
      {
        v5 = a3 - 1;
      }

      v6 = v5 + 1;
      if (v6 > 0x10 && &a2[-a4 - 32] >= 0x10)
      {
        v9 = a2;
        v10 = v6 & 0xF;
        if ((v6 & 0xF) == 0)
        {
          v10 = 16;
        }

        v7 = v6 - v10;
        v8 = v7 + 1;
        a2 += v7;
        v11 = v7;
        v12 = (a4 + 32);
        do
        {
          v13 = *v12++;
          *v9++ = v13;
          v11 -= 16;
        }

        while (v11);
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }

      while (1)
      {
        *a2 = *(a4 + 32 + v7);
        if (a3 == v8)
        {
          break;
        }

        v7 = v8;
        ++a2;
        if (v4 + 1 == ++v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      a3 = v4;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void *sub_18B53C4A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_18B4D1D10(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_18B4A31D4(v20, v21);
      sub_18B4A31D4(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_18B53C60C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_18B4A63EC(*(a4 + 56) + 72 * (v17 | (v12 << 6)), v23, &qword_1EA9C5038);
      *v11 = v23[0];
      v18 = v23[3];
      v19 = v23[2];
      v20 = v23[1];
      *(v11 + 64) = v24;
      *(v11 + 32) = v19;
      *(v11 + 48) = v18;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 72;
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
        goto LABEL_26;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_18B53C794(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18B53D670(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_18B53C800(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_18B53C800(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_18B6C5CBC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5038);
        v5 = sub_18B6C579C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_18B53CA7C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_18B53C908(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18B53C908(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 72 * a3;
    v6 = result - a3;
LABEL_5:
    v26 = a3;
    v7 = v6;
    v18 = v5;
    while (1)
    {
      sub_18B4A63EC(v5, &v21, &qword_1EA9C5038);
      v8 = (v5 - 72);
      sub_18B4A63EC(v5 - 72, v19, &qword_1EA9C5038);
      v9 = *(&v23 + 1);
      v10 = v20;
      sub_18B4A6454(v19, &qword_1EA9C5038);
      result = sub_18B4A6454(&v21, &qword_1EA9C5038);
      if (v9 >= v10)
      {
LABEL_4:
        a3 = v26 + 1;
        v5 = v18 + 72;
        --v6;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v22 = *(v5 + 16);
      v23 = *(v5 + 32);
      v24 = *(v5 + 48);
      v25 = *(v5 + 64);
      v21 = *v5;
      v11 = *(v5 - 24);
      *(v5 + 32) = *(v5 - 40);
      *(v5 + 48) = v11;
      *(v5 + 64) = *(v5 - 8);
      v12 = *(v5 - 56);
      *v5 = *v8;
      *(v5 + 16) = v12;
      *v8 = v21;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      *(v5 - 8) = v25;
      *(v5 - 40) = v14;
      *(v5 - 24) = v15;
      *(v5 - 56) = v13;
      v5 -= 72;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18B53CA7C(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v87 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v6 = *v87;
    if (!*v87)
    {
      goto LABEL_130;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_124:
      result = sub_18B53D65C(v4);
    }

    v105 = result;
    v78 = *(result + 16);
    if (v78 >= 2)
    {
      v4 = 72;
      while (*a3)
      {
        v79 = *(result + 16 * v78);
        v80 = result;
        v81 = *(result + 16 * (v78 - 1) + 40);
        sub_18B53D248((*a3 + 72 * v79), (*a3 + 72 * *(result + 16 * (v78 - 1) + 32)), (*a3 + 72 * v81), v6);
        if (v7)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_18B53D65C(v80);
        }

        if (v78 - 2 >= *(v80 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v80[16 * v78];
        *v82 = v79;
        *(v82 + 1) = v81;
        v105 = v80;
        sub_18B53D5D0(v78 - 1);
        v7 = 0;
        result = v105;
        v78 = *(v105 + 16);
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    v88 = v10;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v4 = *a3;
      sub_18B4A63EC(*a3 + 72 * v12, &v100, &qword_1EA9C5038);
      v89 = 72 * v11;
      v13 = v4 + 72 * v11;
      sub_18B4A63EC(v13, v98, &qword_1EA9C5038);
      v92 = v99;
      __dst = *(&v102 + 1);
      sub_18B4A6454(v98, &qword_1EA9C5038);
      result = sub_18B4A6454(&v100, &qword_1EA9C5038);
      v85 = v11;
      v14 = (v11 + 2);
      v15 = v13 + 144;
      while (v8 != v14)
      {
        sub_18B4A63EC(v15, &v100, &qword_1EA9C5038);
        sub_18B4A63EC(v15 - 72, v98, &qword_1EA9C5038);
        v4 = *(&v102 + 1);
        v6 = v99;
        sub_18B4A6454(v98, &qword_1EA9C5038);
        result = sub_18B4A6454(&v100, &qword_1EA9C5038);
        ++v14;
        v15 += 72;
        if (__dst < v92 == v4 >= v6)
        {
          v8 = (v14 - 1);
          break;
        }
      }

      v11 = v85;
      if (__dst < v92)
      {
        if (v8 < v85)
        {
          goto LABEL_121;
        }

        if (v85 < v8)
        {
          v4 = 72 * v8 - 72;
          v6 = v8;
          v16 = v89;
          do
          {
            if (v11 != --v6)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = v19 + v4;
              v101 = *(v19 + v16 + 16);
              v102 = *(v19 + v16 + 32);
              v103 = *(v19 + v16 + 48);
              v104 = *(v19 + v16 + 64);
              v100 = *(v19 + v16);
              v18 = v16;
              result = memmove((v19 + v16), (v19 + v4), 0x48uLL);
              v16 = v18;
              *(v17 + 16) = v101;
              *(v17 + 32) = v102;
              *(v17 + 48) = v103;
              *(v17 + 64) = v104;
              *v17 = v100;
            }

            ++v11;
            v4 -= 72;
            v16 += 72;
          }

          while (v11 < v6);
          v11 = v85;
        }
      }
    }

    v20 = a3[1];
    if (v8 < v20)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_120;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 < v20)
        {
          v20 = v11 + a4;
        }

        if (v20 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v8 != v20)
        {
          break;
        }
      }
    }

    v21 = v8;
    if (v8 < v11)
    {
      goto LABEL_119;
    }

LABEL_28:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v10 = v88;
    }

    else
    {
      result = sub_18B53C138(0, *(v88 + 16) + 1, 1, v88);
      v10 = result;
    }

    v4 = *(v10 + 16);
    v22 = *(v10 + 24);
    v23 = v4 + 1;
    if (v4 >= v22 >> 1)
    {
      result = sub_18B53C138((v22 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v23;
    v24 = v10 + 16 * v4;
    *(v24 + 32) = v11;
    *(v24 + 40) = v21;
    __dsta = *v87;
    if (!*v87)
    {
      goto LABEL_129;
    }

    v90 = v21;
    if (v4)
    {
      while (1)
      {
        v25 = v23 - 1;
        if (v23 >= 4)
        {
          break;
        }

        if (v23 == 3)
        {
          v26 = *(v10 + 32);
          v27 = *(v10 + 40);
          v36 = __OFSUB__(v27, v26);
          v28 = v27 - v26;
          v29 = v36;
LABEL_47:
          if (v29)
          {
            goto LABEL_108;
          }

          v42 = (v10 + 16 * v23);
          v44 = *v42;
          v43 = v42[1];
          v45 = __OFSUB__(v43, v44);
          v46 = v43 - v44;
          v47 = v45;
          if (v45)
          {
            goto LABEL_111;
          }

          v48 = (v10 + 32 + 16 * v25);
          v50 = *v48;
          v49 = v48[1];
          v36 = __OFSUB__(v49, v50);
          v51 = v49 - v50;
          if (v36)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v46, v51))
          {
            goto LABEL_115;
          }

          if (v46 + v51 >= v28)
          {
            if (v28 < v51)
            {
              v25 = v23 - 2;
            }

            goto LABEL_68;
          }

          goto LABEL_61;
        }

        v52 = (v10 + 16 * v23);
        v54 = *v52;
        v53 = v52[1];
        v36 = __OFSUB__(v53, v54);
        v46 = v53 - v54;
        v47 = v36;
LABEL_61:
        if (v47)
        {
          goto LABEL_110;
        }

        v55 = v10 + 16 * v25;
        v57 = *(v55 + 32);
        v56 = *(v55 + 40);
        v36 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v36)
        {
          goto LABEL_113;
        }

        if (v58 < v46)
        {
          goto LABEL_3;
        }

LABEL_68:
        v4 = v25 - 1;
        if (v25 - 1 >= v23)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
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
          goto LABEL_123;
        }

        if (!*a3)
        {
          goto LABEL_126;
        }

        v63 = v10;
        v64 = *(v10 + 32 + 16 * v4);
        v6 = *(v10 + 32 + 16 * v25 + 8);
        sub_18B53D248((*a3 + 72 * v64), (*a3 + 72 * *(v10 + 32 + 16 * v25)), (*a3 + 72 * v6), __dsta);
        if (v7)
        {
        }

        if (v6 < v64)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_18B53D65C(v63);
        }

        if (v4 >= *(v63 + 2))
        {
          goto LABEL_105;
        }

        v65 = &v63[16 * v4];
        *(v65 + 4) = v64;
        *(v65 + 5) = v6;
        v105 = v63;
        v4 = 0;
        result = sub_18B53D5D0(v25);
        v7 = 0;
        v10 = v105;
        v23 = *(v105 + 16);
        if (v23 <= 1)
        {
          goto LABEL_3;
        }
      }

      v30 = v10 + 32 + 16 * v23;
      v31 = *(v30 - 64);
      v32 = *(v30 - 56);
      v36 = __OFSUB__(v32, v31);
      v33 = v32 - v31;
      if (v36)
      {
        goto LABEL_106;
      }

      v35 = *(v30 - 48);
      v34 = *(v30 - 40);
      v36 = __OFSUB__(v34, v35);
      v28 = v34 - v35;
      v29 = v36;
      if (v36)
      {
        goto LABEL_107;
      }

      v37 = (v10 + 16 * v23);
      v39 = *v37;
      v38 = v37[1];
      v36 = __OFSUB__(v38, v39);
      v40 = v38 - v39;
      if (v36)
      {
        goto LABEL_109;
      }

      v36 = __OFADD__(v28, v40);
      v41 = v28 + v40;
      if (v36)
      {
        goto LABEL_112;
      }

      if (v41 >= v33)
      {
        v59 = (v10 + 32 + 16 * v25);
        v61 = *v59;
        v60 = v59[1];
        v36 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v36)
        {
          goto LABEL_116;
        }

        if (v28 < v62)
        {
          v25 = v23 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v90;
    if (v90 >= v8)
    {
      goto LABEL_90;
    }
  }

  v91 = v20;
  v83 = v7;
  v66 = v8;
  v67 = *a3;
  v68 = *a3 + 72 * v66;
  v86 = v11;
  __dstb = v66;
  v6 = v11 - v66;
LABEL_80:
  v4 = v6;
  v93 = v68;
  while (1)
  {
    sub_18B4A63EC(v68, &v100, &qword_1EA9C5038);
    v69 = (v68 - 72);
    sub_18B4A63EC(v68 - 72, v98, &qword_1EA9C5038);
    v70 = *(&v102 + 1);
    v71 = v99;
    sub_18B4A6454(v98, &qword_1EA9C5038);
    result = sub_18B4A6454(&v100, &qword_1EA9C5038);
    if (v70 >= v71)
    {
LABEL_79:
      v68 = v93 + 72;
      --v6;
      if (++__dstb != v91)
      {
        goto LABEL_80;
      }

      v7 = v83;
      v21 = v91;
      v11 = v86;
      if (v91 < v86)
      {
        goto LABEL_119;
      }

      goto LABEL_28;
    }

    if (!v67)
    {
      break;
    }

    v101 = *(v68 + 16);
    v102 = *(v68 + 32);
    v103 = *(v68 + 48);
    v104 = *(v68 + 64);
    v100 = *v68;
    v72 = *(v68 - 24);
    *(v68 + 32) = *(v68 - 40);
    *(v68 + 48) = v72;
    *(v68 + 64) = *(v68 - 8);
    v73 = *(v68 - 56);
    *v68 = *v69;
    *(v68 + 16) = v73;
    *v69 = v100;
    v74 = v101;
    v75 = v102;
    v76 = v103;
    *(v68 - 8) = v104;
    *(v68 - 40) = v75;
    *(v68 - 24) = v76;
    *(v68 - 56) = v74;
    v68 -= 72;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_18B53D248(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[72 * v11] <= __dst)
    {
      memmove(__dst, a2, 72 * v11);
    }

    v12 = &v4[72 * v11];
    if (v10 < 72 || v6 <= v7)
    {
      v17 = v6;
      goto LABEL_35;
    }

    v28 = v7;
    v29 = v4;
    while (1)
    {
      v18 = (v6 - 72);
      v19 = v12 - 72;
      v5 -= 72;
      while (1)
      {
        v22 = v19 + 72;
        v23 = v5 + 72;
        sub_18B4A63EC(v19, v32, &qword_1EA9C5038);
        v24 = v18;
        sub_18B4A63EC(v18, v30, &qword_1EA9C5038);
        v34 = v33;
        v25 = v31;
        sub_18B4A6454(v30, &qword_1EA9C5038);
        sub_18B4A6454(v32, &qword_1EA9C5038);
        if (v34 < v25)
        {
          break;
        }

        if (v23 != v22)
        {
          memmove(v5, v19, 0x48uLL);
        }

        v20 = v19 - 72;
        v5 -= 72;
        v21 = v19 > v29;
        v19 -= 72;
        v18 = v24;
        if (!v21)
        {
          v12 = v20 + 72;
          v17 = v6;
          v4 = v29;
          goto LABEL_35;
        }
      }

      v16 = v23 == v6;
      v17 = v24;
      if (!v16)
      {
        memmove(v5, v24, 0x48uLL);
      }

      v4 = v29;
      if (v22 > v29)
      {
        v12 = v19 + 72;
        v6 = v17;
        if (v17 > v28)
        {
          continue;
        }
      }

      v12 = v19 + 72;
      goto LABEL_35;
    }
  }

  if (__dst != __src || &__src[72 * v9] <= __dst)
  {
    memmove(__dst, __src, 72 * v9);
  }

  v12 = &v4[72 * v9];
  if (v8 < 72 || v6 >= v5)
  {
    v17 = v7;
    goto LABEL_35;
  }

  do
  {
    sub_18B4A63EC(v6, v32, &qword_1EA9C5038);
    sub_18B4A63EC(v4, v30, &qword_1EA9C5038);
    v13 = v33;
    v14 = v31;
    sub_18B4A6454(v30, &qword_1EA9C5038);
    sub_18B4A6454(v32, &qword_1EA9C5038);
    if (v13 < v14)
    {
      v15 = v6;
      v16 = v7 == v6;
      v6 += 72;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v15, 0x48uLL);
      goto LABEL_13;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 72;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_13:
    v7 += 72;
  }

  while (v4 < v12 && v6 < v5);
  v17 = v7;
LABEL_35:
  v26 = (v12 - v4) / 72;
  if (v17 != v4 || v17 >= &v4[72 * v26])
  {
    memmove(v17, v4, 72 * v26);
  }

  return 1;
}

uint64_t sub_18B53D5D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18B53D65C(v3);
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

uint64_t sub_18B53D684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_18B4AF1A4(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4318);
  if (swift_dynamicCast())
  {
    sub_18B4A31D4(v13, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v9 = sub_18B6C443C();
    v11 = v10;
    sub_18B4D1D10(v20, v13);
    v15 = a5;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    swift_beginAccess();
    sub_18B6C450C();
    sub_18B4F28D0(v13, v9, v11);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_18B4A6454(v13, &qword_1EA9C4320);
  }
}

uint64_t sub_18B53D7CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B28);
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v38 - v2;
  v4 = sub_18B6C455C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C456C();
  v9 = MEMORY[0x1E6982A90];
  v38 = v3;
  MEMORY[0x18CFF6100](v8, v4, MEMORY[0x1E6982A90]);
  (*(v5 + 8))(v8, v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B30);
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v39 = &v38 - v13;
  v14 = sub_18B6C457C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B6C458C();
  MEMORY[0x18CFF6100](v18, v14, MEMORY[0x1E6982AB8]);
  (*(v15 + 8))(v18, v14);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B38);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v38 - v22;
  v44 = v4;
  v45 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v3;
  v26 = v43;
  MEMORY[0x18CFF6130](v25, v43, OpaqueTypeConformance2);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B40);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v38 - v30;
  v44 = v26;
  v45 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v44 = v14;
  v45 = MEMORY[0x1E6982AB8];
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v39;
  v34 = v40;
  sub_18B6C453C();
  v44 = v19;
  v45 = v34;
  v46 = v32;
  v47 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = sub_18B6C452C();
  (*(v28 + 8))(v31, v27);
  (*(v20 + 8))(v23, v19);
  (*(v41 + 8))(v35, v34);
  (*(v42 + 8))(v38, v43);
  return v36;
}

uint64_t sub_18B53DCB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18B4CC5A0;

  return sub_18B539690(a1, v4, v5, v7, v6);
}

uint64_t sub_18B53DD78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B53AFEC(a1, v4, v5, v6);
}

unint64_t sub_18B53DE2C()
{
  result = qword_1EA9C3D08;
  if (!qword_1EA9C3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3D08);
  }

  return result;
}

uint64_t sub_18B53DE80()
{
  v2 = [*v0 inputDevice];
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_18B53DEF0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a2)
  {
    v5 = sub_18B6C55FC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 userPreferredInputDevice_];

  v7 = *(v3 + 8);

  return v7(v6);
}

uint64_t sub_18B53DF88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B53E044;

  return sub_18B53E3E8(a1, a2);
}

uint64_t sub_18B53E044(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_18B53E140(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_18B53E1A4(uint64_t a1, uint64_t a2)
{
  sub_18B53E220(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

id sub_18B53E220(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = sub_18B6C55FC();
  }

  else
  {
    v3 = 0;
  }

  v7[0] = 0;
  v4 = [v2 clearUserPreferredInputDevice:v3 error:v7];

  if (v4)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_18B6C405C();

  return swift_willThrow();
}

id sub_18B53E30C()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ([v0 setInputGain:v3 error:?])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_18B6C405C();

  return swift_willThrow();
}

uint64_t sub_18B53E3E8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  if (a2)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey(0);
    sub_18B53E674();
    v5 = sub_18B6C55AC();
  }

  v3[19] = v5;
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_18B53E550;
  v7 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BD0);
  v3[10] = MEMORY[0x1E69E9820];
  v3[11] = 1107296256;
  v3[12] = sub_18B53E140;
  v3[13] = &block_descriptor_8;
  v3[14] = v7;
  [v4 setInputDevice:a1 options:v5 completionHandler:v3 + 10];

  return MEMORY[0x1EEE6DEC8](v3 + 2);
}

uint64_t sub_18B53E550()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

unint64_t sub_18B53E674()
{
  result = qword_1EA9C39D8;
  if (!qword_1EA9C39D8)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C39D8);
  }

  return result;
}

uint64_t *sub_18B53E6CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_18B53E6E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BD8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v14 - v7;
  if (a3 == 1)
  {
    v9 = a1;
    sub_18B6C439C();
    v10 = sub_18B6C43AC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
LABEL_5:
    sub_18B6C5A2C();

    return;
  }

  if (!a3)
  {
    v11 = sub_18B6C43AC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = a1;
    goto LABEL_5;
  }

  v14[1] = a3;
  v13 = a1;
  sub_18B6C5CFC();
  __break(1u);
}

unint64_t sub_18B53E850()
{
  result = qword_1EA9C5BE0;
  if (!qword_1EA9C5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5BE0);
  }

  return result;
}

uint64_t sub_18B53E8A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B53E8EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_18B53E940()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(AVPlayerViewController) init];
  v3 = [v1 player];
  [v2 setPlayer_];

  v4 = [v2 player];
  [v4 play];

  [v2 setShowsPlaybackControls_];
  return v2;
}

void sub_18B53EAB4()
{
  sub_18B53EADC();
  sub_18B6C4E2C();
  __break(1u);
}

unint64_t sub_18B53EADC()
{
  result = qword_1EA9C5BE8;
  if (!qword_1EA9C5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5BE8);
  }

  return result;
}

void sub_18B53EB30(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = [a1 player];
  if (v6)
  {
    v7 = (a4 & 1) == 0;
    v8 = v6;
    [v6 setMuted_];
  }

  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1EA9CE408 + 16);
  swift_getKeyPath();
  sub_18B51E108();

  sub_18B6C421C();

  if (*(v9 + 16))
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  sub_18B6C421C();

  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = v10 == a3;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = [a3 player];
    if (v12)
    {
      v13 = v12;
      [v12 setMuted_];
    }

LABEL_6:

    return;
  }

  v14 = v10;
  v15 = [a3 player];
  if (v15)
  {
    v16 = v15;
    [v15 setMuted_];
  }
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EA9C8E00 == -1)
  {
    if (qword_1EA9C8E08)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EA9C8E08)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EA9C8DF8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EA9C8DEC > a3)
      {
        return 1;
      }

      if (dword_1EA9C8DEC >= a3)
      {
        return dword_1EA9C8DF0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EA9C8E08;
  if (qword_1EA9C8E08)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EA9C8E08 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x18CFF8820](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EA9C8DEC, &dword_1EA9C8DF0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

id getVKCImageAnalyzerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVKCImageAnalyzerClass_softClass;
  v7 = getVKCImageAnalyzerClass_softClass;
  if (!getVKCImageAnalyzerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVKCImageAnalyzerClass_block_invoke;
    v3[3] = &unk_1E7209BC8;
    v3[4] = &v4;
    __getVKCImageAnalyzerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B53F794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVKCImageAnalyzerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionKitCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72071C8;
    v6 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VisionKitCoreLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getVKCImageAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B540C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ObservationForSharedAVKitSetting(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E696ADA8];
  v9 = AVKitUserDefaults();
  v10 = [v8 keyPathWithRootObject:v9 path:{objc_msgSend(v6, "cStringUsingEncoding:", 4)}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ObservationForSharedAVKitSetting_block_invoke;
  v16[3] = &unk_1E72071A8;
  v17 = v6;
  v18 = v5;
  v19 = v7;
  v20 = 0;
  v11 = v7;
  v12 = v5;
  v13 = v6;
  v14 = [v10 addObserverBlock:v16];

  return v14;
}

uint64_t __AVAppStorePlayerViewUsePlayerLayerOnly_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"com.apple.avkit", @"appStorePlayerViewPlayerLayerOnly", 0);
  AVAppStorePlayerViewUsePlayerLayerOnly_AVAppStorePlayerViewUsePlayerLayerOnly = result != 0;
  return result;
}

uint64_t __AVAppStorePlayerViewDisableVideo_block_invoke()
{
  result = CFPreferencesGetAppBooleanValue(@"com.apple.avkit", @"appStorePlayerViewDisableVideo", 0);
  AVAppStorePlayerViewDisableVideo_AVAppStorePlayerViewDisableVideo = result != 0;
  return result;
}

void sub_18B543D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _AVMethodProem(void *a1)
{
  v1 = a1;
  v2 = _NSFullMethodName();
  v3 = [v2 rangeOfString:@" "];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v2 substringToIndex:v3];
    v7 = [v2 substringFromIndex:v4 + 1];
    v8 = [v5 stringWithFormat:@"%@ (%p) %@", v6, v1, v7];

    v2 = v8;
  }

  return v2;
}

void sub_18B549ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B54A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak((v45 + 56));
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v46 - 168));
  _Unwind_Resume(a1);
}

void sub_18B54E14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5501B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B552FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B553DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5565E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B556864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B556EB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_18B559AD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_18B55AAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B55B658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B55BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B55CCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = v12;
    if (v11)
    {
      v14 = MEMORY[0x1E696ABC0];
      a10 = *MEMORY[0x1E696A578];
      v15 = [v12 reason];
      a11 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      *v11 = [v14 errorWithDomain:@"AVKitErrorDomain" code:-1000 userInfo:v16];
    }

    objc_end_catch();
    JUMPOUT(0x18B55CC78);
  }

  _Unwind_Resume(exception_object);
}

id NSStringFromVideoGravity(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_1E72074D8 + a1 - 1);
  }

  return v2;
}

uint64_t AVVideoGravityFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69874E8]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69874F0]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69874E0]])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_18B55EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B55FE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B565A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 48));
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _UpdatePreferredMediaSelectionOptions(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v9 = [v8 extendedLanguageTag];
        if (v9)
        {
          [v2 addObject:v9];
        }

        [v8 avkit_setPreferredSortIndex:0x7FFFFFFFFFFFFFFFLL];
        [v8 avkit_setBestChoiceForRecentLanguage:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v5);
  }

  v10 = +[AVKitGlobalSettings shared];
  v11 = [v10 preferredLanguages];

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [v3 firstObject];
  v33 = [v13 avkit_recentLanguageCode];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v34 = v2;
  v38 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v38)
  {
    v14 = 0;
    v36 = 0;
    v37 = *v40;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * j);
        v17 = _MediaOptionIndexesFromAvailableOptionsForPreferredLanguage(v2, v16);
        if ([v17 count])
        {
          v18 = [v17 firstIndex];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (k = v18; k != 0x7FFFFFFFFFFFFFFFLL; k = [v17 indexGreaterThanIndex:k])
            {
              v20 = [v3 objectAtIndexedSubscript:{k, v33}];
              v21 = [v12 containsObject:v20];
              v22 = _AVLog();
              v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
              if (v21)
              {
                if (v23)
                {
                  *buf = 136315394;
                  v48 = "void _UpdatePreferredMediaSelectionOptions(NSArray<AVMediaSelectionOption *> *__strong)";
                  v49 = 2114;
                  v50 = v20;
                  _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s NOT adding preferred option %{public}@ because we already have it!", buf, 0x16u);
                }
              }

              else
              {
                if (v23)
                {
                  *buf = 136315394;
                  v48 = "void _UpdatePreferredMediaSelectionOptions(NSArray<AVMediaSelectionOption *> *__strong)";
                  v49 = 2114;
                  v50 = v20;
                  _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s Adding preferred option %{public}@", buf, 0x16u);
                }

                [v12 addObject:v20];
                ++v14;
              }

              [v20 avkit_setPreferredSortIndex:v14];
            }

            v2 = v34;
          }
        }

        else
        {
          if ((v36 & 1) == 0)
          {
            v24 = _AVLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v48 = "void _UpdatePreferredMediaSelectionOptions(NSArray<AVMediaSelectionOption *> *__strong)";
              v49 = 2112;
              v50 = v2;
              _os_log_impl(&dword_18B49C000, v24, OS_LOG_TYPE_DEFAULT, "%s Media option languages: %@", buf, 0x16u);
            }
          }

          v25 = _AVLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v48 = "void _UpdatePreferredMediaSelectionOptions(NSArray<AVMediaSelectionOption *> *__strong)";
            v49 = 2114;
            v50 = v16;
            _os_log_impl(&dword_18B49C000, v25, OS_LOG_TYPE_DEFAULT, "%s It appears none of the options matches preferred language %{public}@", buf, 0x16u);
          }

          v36 = 1;
        }
      }

      v38 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v38);
  }

  v26 = _MediaOptionIndexesFromAvailableOptionsForPreferredLanguage(v2, v33);
  if ([v26 count])
  {
    v27 = [v26 firstIndex];
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = v27;
      v29 = 0;
      do
      {
        v30 = [v3 objectAtIndexedSubscript:{v28, v33}];
        if ([v30 avkit_preferredSortIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v30 avkit_setBestChoiceForRecentLanguage:1];
        }

        else
        {
          if ((v29 & 1) == 0)
          {
            v31 = _AVLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v48 = "void _UpdatePreferredMediaSelectionOptions(NSArray<AVMediaSelectionOption *> *__strong)";
              v49 = 2114;
              v50 = v33;
              _os_log_impl(&dword_18B49C000, v31, OS_LOG_TYPE_DEFAULT, "%s The best choice for the recent language (%{public}@) is already in the preferred list", buf, 0x16u);
            }
          }

          v29 = 1;
        }

        v28 = [v26 indexGreaterThanIndex:v28];
      }

      while (v28 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v32 = _AVLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "void _UpdatePreferredMediaSelectionOptions(NSArray<AVMediaSelectionOption *> *__strong)";
      v49 = 2114;
      v50 = v33;
      _os_log_impl(&dword_18B49C000, v32, OS_LOG_TYPE_DEFAULT, "%s It appears none of the options matches recent language %{public}@", buf, 0x16u);
    }
  }
}

id _MediaOptionIndexesFromAvailableOptionsForPreferredLanguage(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = MEMORY[0x1E696AAE8];
    v21[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v7 = [v5 preferredLocalizationsFromArray:v3 forPreferences:v6];

    v8 = [v7 firstObject];
    v9 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v8];
    v10 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v9];
    v11 = *MEMORY[0x1E695D9B0];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695D9B0]];

    v13 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v4];
    v14 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v13];
    v15 = [v14 objectForKeyedSubscript:v11];

    v16 = 0;
    if (v15 && v12)
    {
      if ([v15 isEqualToString:v12])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = ___MediaOptionIndexesFromAvailableOptionsForPreferredLanguage_block_invoke;
        v18[3] = &unk_1E7207608;
        v19 = v8;
        v20 = v9;
        v16 = [v3 indexesOfObjectsPassingTest:v18];
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v16;
}

void sub_18B56735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _isNetworkAvailable()
{
  v6 = *MEMORY[0x1E69E9840];
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v0 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &address);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  flags = 0;
  if (SCNetworkReachabilityGetFlags(v0, &flags))
  {
    v2 = (flags & 6) == 2 && (flags & 0x10) == 0;
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void sub_18B56A36C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B56CB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B56D43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B56DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B56E648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B572D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B573B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B574490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B57AECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B57BDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B57E6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B57EC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_18B57F574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B580380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVKCImageAnalyzerClass_block_invoke_5716(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKCImageAnalyzerClass_softClass_5715 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(AVVideoFrameVisualAnalyzer *)v3 _imageAnalysisQueue];
  }

  return result;
}

uint64_t VisionKitCoreLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary_5719)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __VisionKitCoreLibraryCore_block_invoke_5720;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7207988;
    v5 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary_5719 = _sl_dlopen();
    v1 = v3[0];
    v0 = VisionKitCoreLibraryCore_frameworkLibrary_5719;
    if (VisionKitCoreLibraryCore_frameworkLibrary_5719)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return VisionKitCoreLibraryCore_frameworkLibrary_5719;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke_5720()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary_5719 = result;
  return result;
}

void sub_18B580A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B5810A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVKCImageAnalyzerRequestClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  result = objc_getClass("VKCImageAnalyzerRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKCImageAnalyzerRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __54__AVVideoFrameVisualAnalyzer__startVideoFrameAnalysis__block_invoke_2(v3);
  }

  return result;
}

void *__getvk_imageOrientationFromTransformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionKitCoreLibrary();
  result = dlsym(v2, "vk_imageOrientationFromTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getvk_imageOrientationFromTransformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL AVMobileGlassControlsLayoutConfigurationsEqual(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16) == *(a2 + 16) && *a1 == *a2 && *(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72))))) & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 88), *(a2 + 88)), vceqq_f64(*(a1 + 104), *(a2 + 104))))) & 1) != 0 && *(a1 + 136) == *(a2 + 136);

  return v3;
}

void sub_18B5857F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_18B585C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5860F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, char a30)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6096(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AVCaptureEventPhaseFromPhysicalButtonState(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result == 3)
    {
      return 2;
    }

    else
    {
      if (result != 2)
      {
        v2 = result;
        v1 = _AVLog();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v4 = v2;
          _os_log_impl(&dword_18B49C000, v1, OS_LOG_TYPE_DEFAULT, "Invalid _UIPhysicalButtonState %ld. Cannot be converted to AVCaptureEventPhase.", buf, 0xCu);
        }

        __assert_rtn("AVCaptureEventPhaseFromPhysicalButtonState", "AVCaptureEvent.m", 161, "NO");
      }

      return 1;
    }
  }

  return result;
}

void sub_18B5899A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B58DE60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL isRunningEventThread()
{
  v0 = [MEMORY[0x1E696AF00] currentThread];
  v1 = +[AVAirTransport eventThread];
  v2 = v0 == v1;

  return v2;
}

void sub_18B590E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7313(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B592B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B595098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _avairlog()
{
  if (_avairlog_onceToken != -1)
  {
    dispatch_once(&_avairlog_onceToken, &__block_literal_global_8155);
  }

  v1 = _avairlog__log;

  return v1;
}

uint64_t ___avairlog_block_invoke()
{
  v0 = os_log_create("com.apple.avkit", "Air");
  v1 = _avairlog__log;
  _avairlog__log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_18B597D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B598D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 __copy_assignment_8_8_s0_s8_t16w16(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

void __destructor_8_s0_s8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_18B5A0DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5A82A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5AA868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5AC170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, id a62, uint64_t a63)
{
  objc_destroyWeak(&a16);
  objc_destroyWeak((v73 + 40));
  objc_destroyWeak((v73 + 32));
  objc_destroyWeak((v72 + 40));
  objc_destroyWeak((v72 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a50);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a55);
  objc_destroyWeak(&a62);
  objc_destroyWeak(&a61);
  objc_destroyWeak(&a67);
  objc_destroyWeak(&a72);
  objc_destroyWeak((v74 - 120));
  objc_destroyWeak((v74 - 128));
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x248]);
  objc_destroyWeak(&STACK[0x250]);
  objc_destroyWeak(&STACK[0x258]);
  _Unwind_Resume(a1);
}

void sub_18B5AE904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5AF984(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_18B5B28BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5B4B98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18B5B59C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_18B5B9D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_18B5BA0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BA524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BA800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BBBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BC770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BD600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BE8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BF258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5BF8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5C0EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_18B5C1994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5C3194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5C3828(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18B5C42DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_18B5C4940(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B5C7CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5C9600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11392(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B5CB51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5CC898(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B5D008C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B5D2680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CMTime *AVTimeIntervalToCMTime(CMTime *retstr, Float64 a2)
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (a2 == INFINITY)
  {
    v2 = MEMORY[0x1E6960C88];
LABEL_7:
    *retstr = *v2;
    return retstr;
  }

  if (a2 == -INFINITY)
  {
    v2 = MEMORY[0x1E6960C80];
    goto LABEL_7;
  }

  if (a2 == 0.0)
  {
    v2 = MEMORY[0x1E6960CC0];
    goto LABEL_7;
  }

  return CMTimeMakeWithSeconds(retstr, a2, 90000);
}

void sub_18B5D5224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5D6DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12021(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B5D9944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5DBD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5DD634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_18B5DE488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5DEAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5DEE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E0CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E0DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E1410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E1694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E18B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E2248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E2A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E2F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E30C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E323C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E3364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E3D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E6350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E7DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18B5E8BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E8F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E930C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E9608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E979C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5E9930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5EA048(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B5EA2C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B5EC8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5ECE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5F1420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _ClassAndPointer(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v1 stringWithFormat:@"%@ %p", v4, v2];

  return v5;
}

void sub_18B5F46C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AVRequestConcreteImplementation(void *a1, const char *a2, objc_class *a3)
{
  v12 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = *MEMORY[0x1E695D940];
  if (v5 == a3)
  {
    [MEMORY[0x1E695DF30] raise:v8 format:{@"*** -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v7, v6, v10, v11}];
  }

  else
  {
    v9 = 45;
    if (v5 == v12)
    {
      v9 = 43;
    }

    [MEMORY[0x1E695DF30] raise:v8 format:{@"*** -%@ only defined for abstract class.  Define %c[%@ %@]!", v7, v9, v6, v7}];
  }
}

void __AVSecondScreenDebugHUDEnabled_block_invoke()
{
  if (AVSecondScreenExperimentsAllowed_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenExperimentsAllowed_onceToken, &__block_literal_global_151);
  }

  v0 = AVSecondScreenExperimentsAllowed_AVSecondScreenExperimentsAllowed == 1 && CFPreferencesGetAppBooleanValue(@"enableSecondScreenHUD", @"com.apple.avkit", 0) != 0;
  AVSecondScreenDebugHUDEnabled__Enabled = v0;
}

uint64_t __AVSecondScreenExperimentsAllowed_block_invoke()
{
  if (AVSecondScreenTVSupportEnabled_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenTVSupportEnabled_onceToken, &__block_literal_global_125);
  }

  if (AVSecondScreenTVSupportEnabled_AVSecondScreenTVSupportEnabled == 1)
  {
    result = MGGetBoolAnswer();
  }

  else
  {
    result = 0;
  }

  AVSecondScreenExperimentsAllowed_AVSecondScreenExperimentsAllowed = result;
  return result;
}

void __AVSecondScreenTVSupportEnabled_block_invoke()
{
  if (AVSecondScreenSupportsExternalHDR_onceToken != -1)
  {
    dispatch_once(&AVSecondScreenSupportsExternalHDR_onceToken, &__block_literal_global_120_13936);
  }

  if (AVSecondScreenSupportsExternalHDR_AVSecondScreenSupportsExternalHDR)
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v0 = [v1 bundleIdentifier];
    AVSecondScreenTVSupportEnabled_AVSecondScreenTVSupportEnabled = [v0 hasPrefix:@"com.apple.springboard"] ^ 1;
  }

  else
  {
    AVSecondScreenTVSupportEnabled_AVSecondScreenTVSupportEnabled = 0;
  }
}

uint64_t __AVSecondScreenSupportsExternalHDR_block_invoke()
{
  result = MGGetBoolAnswer();
  AVSecondScreenSupportsExternalHDR_AVSecondScreenSupportsExternalHDR = result;
  return result;
}

void sub_18B5FBAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5FCE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5FD5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B5FFBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

int64x2_t _CommonInit(uint64_t a1)
{
  *(a1 + 152) = 0x4028000000000000;
  *(a1 + 160) = 0x4018000000000000;
  *(a1 + 120) = xmmword_18B6EC500;
  *(a1 + 136) = xmmword_18B6EC510;
  *(a1 + 256) = 0x4018000000000000;
  *(a1 + 264) = 0x4028000000000000;
  *(a1 + 272) = 0x4043000000000000;
  *(a1 + 280) = 0x4046000000000000;
  *(a1 + 384) = xmmword_18B6EC520;
  *(a1 + 400) = xmmword_18B6EC520;
  *(a1 + 416) = xmmword_18B6EC520;
  *(a1 + 432) = xmmword_18B6EC520;
  *(a1 + 448) = xmmword_18B6EC520;
  *(a1 + 464) = xmmword_18B6EC520;
  *(a1 + 480) = xmmword_18B6EC530;
  *(a1 + 496) = xmmword_18B6EC530;
  *(a1 + 512) = xmmword_18B6EC4A0;
  *(a1 + 528) = xmmword_18B6EC4A0;
  *(a1 + 544) = xmmword_18B6EC4A0;
  *(a1 + 560) = xmmword_18B6EC530;
  *(a1 + 288) = 0x403A000000000000;
  *(a1 + 304) = 0x403E000000000000;
  *(a1 + 296) = 0x4020000000000000;
  *(a1 + 312) = 0x4026000000000000;
  *(a1 + 320) = vdupq_n_s64(0x4057000000000000uLL);
  *(a1 + 336) = vdupq_n_s64(0x4050000000000000uLL);
  *(a1 + 352) = vdupq_n_s64(0x4052000000000000uLL);
  result = vdupq_n_s64(0x404A000000000000uLL);
  *(a1 + 368) = result;
  return result;
}

void _PadInit(void *a1)
{
  v1 = a1;
  _CommonInit(v1);
  *(v1 + 56) = xmmword_18B6EC540;
  *(v1 + 72) = xmmword_18B6EC550;
  *(v1 + 88) = xmmword_18B6EC540;
  *(v1 + 104) = xmmword_18B6EC550;
  v1[36] = xmmword_18B6EC540;
  v1[37] = xmmword_18B6EC540;
}

void sub_18B602704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B602A14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_18B603890(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B607210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B60AE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B60BF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 56));
  objc_destroyWeak(&a37);
  objc_destroyWeak((v38 - 176));
  objc_destroyWeak((v38 - 160));
  _Unwind_Resume(a1);
}

void sub_18B60F704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B621F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B622550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

Class __getMPMediaControlsConfigurationClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPMediaControlsConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaControlsConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getMPMediaControlsClass_block_invoke(v3);
  }

  return result;
}

Class __getMPMediaControlsClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  result = objc_getClass("MPMediaControls");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaControlsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __87__AVExternalPlaybackController_willBeginPlaybackFromAppWithBundleID_completionHandler___block_invoke(v3);
  }

  return result;
}

void MediaPlayerLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MediaPlayerLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7208970;
    v3 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (MediaPlayerLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void _CommonInit_19613(void *a1, __int128 *a2)
{
  v3 = a1;
  *(v3 + 2) = 0xBFF0000000000000;
  if ((*(a2 + 3) & 1) == 0 || (*(a2 + 9) & 1) == 0 || *(a2 + 5) || (*(a2 + 3) & 0x8000000000000000) != 0)
  {
    start = **&MEMORY[0x1E6960CC0];
    duration = start;
    p_start = &start;
    p_duration = &duration;
  }

  else
  {
    if ((*(a2 + 3) & 0x1D) == 1 && (*(a2 + 9) & 0x1D) == 1 || (dyld_program_sdk_at_least() & 1) == 0)
    {
      v10 = *a2;
      v11 = a2[1];
      *(v3 + 104) = a2[2];
      *(v3 + 88) = v11;
      *(v3 + 72) = v10;
      goto LABEL_7;
    }

    if ((*(a2 + 3) & 0x1D) != 1)
    {
      v12 = MEMORY[0x1E6960CA8];
      v13 = *(MEMORY[0x1E6960CA8] + 16);
      *(v3 + 72) = *MEMORY[0x1E6960CA8];
      *(v3 + 88) = v13;
      v7 = *(v12 + 32);
      goto LABEL_6;
    }

    v8 = *(a2 + 9);
    if ((v8 & 0x1D) == 1 || (v8 & 0x11) == 0x11)
    {
      *&start.value = *(a2 + 24);
      v9 = *(a2 + 5);
    }

    else
    {
      *&start.value = *MEMORY[0x1E6960CC0];
      v9 = *(MEMORY[0x1E6960CC0] + 16);
    }

    start.epoch = v9;
    duration = *a2;
    v14 = *&start.value;
    v15 = v9;
    p_start = &duration;
    p_duration = &v14;
  }

  CMTimeRangeMake(&v17, p_start, p_duration);
  v6 = *&v17.start.epoch;
  *(v3 + 72) = *&v17.start.value;
  *(v3 + 88) = v6;
  v7 = *&v17.duration.timescale;
LABEL_6:
  *(v3 + 104) = v7;
LABEL_7:
  v3[9] = 1;
  *(v3 + 6) = 0x7FF0000000000000;
  *(v3 + 7) = 0;
}

void sub_18B6280FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _bestMatch(void *a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (![v11 length])
  {
    __assert_rtn("_bestMatch", "AVRatingProviders.m", 98, "[countryCode length]");
  }

  if (a4)
  {
    if (a4 == 2)
    {
      v12 = v10;
      v13 = v11;
      v14 = 2;
      goto LABEL_7;
    }

    if (a4 == 1)
    {
      v12 = v9;
      v13 = v11;
      v14 = 1;
LABEL_7:
      v15 = _bestMatchForDomain(v12, v13, v14);
      goto LABEL_19;
    }

    v15 = 0;
  }

  else
  {
    v16 = v9;
    v17 = v10;
    v18 = v11;
    if (![v18 length])
    {
      __assert_rtn("_bestMatchForCountry", "AVRatingProviders.m", 89, "[countryCode length] > 0");
    }

    v19 = _bestMatchForDomain(v16, v18, 1);
    v20 = _bestMatchForDomain(v17, v18, 2);
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v19;
    }

    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v20;
    }

    if (!a5)
    {
      v22 = v23;
    }

    v15 = v22;
  }

LABEL_19:

  return v15;
}

AVMediaContentRating *_bestMatchForDomain(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (![v6 length])
  {
    __assert_rtn("_bestMatchForDomain", "AVRatingProviders.m", 72, "[countryCode length] > 0 && domain != AVMediaContentRatingDomainUnknown");
  }

  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"ratingString"];
    v9 = -[AVMediaContentRating initWithRating:rank:countryCode:domain:]([AVMediaContentRating alloc], "initWithRating:rank:countryCode:domain:", v8, [v7 integerValue], v6, a3);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id _KeyForRating(void *a1)
{
  v1 = [a1 uppercaseString];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"-" withString:&stru_1EFED57D8];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:&stru_1EFED57D8];
  v4 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1EFED57D8];

  return v4;
}

void _MakeReverseDictionaryForRatingDictionary(void *a1, void *a2, void *a3)
{
  v15 = a1;
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"rank"];
  v8 = [v6 objectForKeyedSubscript:@"rating"];

  v9 = _KeyForRating(v8);
  if (v8 && v7)
  {
    v10 = [v5 objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [v15 uppercaseString];
      [v11 setObject:v7 forKeyedSubscript:v12];
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = [v15 uppercaseString];
      v11 = [v13 initWithObjectsAndKeys:{v7, v14, 0}];

      [v5 setObject:v11 forKeyedSubscript:v9];
    }

    [v11 setObject:v8 forKeyedSubscript:@"ratingString"];
  }
}

void sub_18B62C6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B62E1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B62E500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v18 - 104));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B62F5C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B62F954(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(v2);
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_18B6316D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B63191C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B633250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B635498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B635FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B636B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B636F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21241(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getMPMediaControlsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaControlsClass_softClass_21250;
  v7 = getMPMediaControlsClass_softClass_21250;
  if (!getMPMediaControlsClass_softClass_21250)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaControlsClass_block_invoke_21251;
    v3[3] = &unk_1E7209BC8;
    v3[4] = &v4;
    __getMPMediaControlsClass_block_invoke_21251(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B63701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaControlsClass_block_invoke_21251(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_21252)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_21253;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7208BD0;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_21252 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_21252)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPMediaControls");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getMPMediaControlsClass_softClass_21250 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_21253()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_21252 = result;
  return result;
}

void _CommonInit_21292(void *a1)
{
  v1 = a1;
  v2 = [[AVObservationController alloc] initWithOwner:v1];
  v3 = v1[57];
  v1[57] = v2;

  [v1 _createOrUpdateRoutePickerButton];
  v4 = [v1 _defaultActiveTintColor];
  [v1 setActiveTintColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel__routePickerButtonTapped_];
  [v1 addGestureRecognizer:v5];
  [v1 _setupOutputContext];
  [v1 _registerNotifications];
  [v1 _updateAirPlayActive];
}

void sub_18B63C038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18B63D068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak((v55 + 40));
  objc_destroyWeak((v55 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a38);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a49);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&location);
  objc_destroyWeak((v56 - 128));
  _Unwind_Resume(a1);
}

void sub_18B63EA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak((v42 + 40));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v44 + 40));
  objc_destroyWeak((v44 + 32));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak(&a35);
  objc_destroyWeak(&a40);
  objc_destroyWeak((v45 - 176));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v45 - 128));
  _Unwind_Resume(a1);
}

void sub_18B63F5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B640198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B641228(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_18B644050(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_18B64603C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void AVPlayerControllerTimeResolverUpdate(void *a1)
{
  v1 = a1;
  AVPlayerControllerTimeResolverUpdateTime(v1);
  v2 = v1;
  v3 = [v2[1] timing];
  v4 = [v2[1] minTiming];
  v5 = [v2[1] maxTiming];
  if (v3)
  {
    [v3 rate];
    v8 = fabs(v7);
    v6 = 0.0;
    v9 = v8;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0.0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if ([v2[1] hasSeekableLiveStreamingContent])
  {
    [v4 rate];
    v10 = fabs(v6);
    if (v9 < v10)
    {
      v9 = v10;
    }
  }

LABEL_8:
  if (v5)
  {
    if ([v2[1] hasSeekableLiveStreamingContent])
    {
      [v5 rate];
      v12 = fabs(v11);
      if (v9 < v12)
      {
        v9 = v12;
      }
    }
  }

  v13 = AVPlayerControllerTimeResolverGetEffectiveInterval(v2) / v9;
  v14 = v13 * 0.5;
  v15 = v2[5];
  if (COERCE__INT64(fabs(v13 * 0.5)) < 0x7FF0000000000000 || v15 == 0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v13 * 0.5)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v15)
      {
        [v15 interval];
        if (v17 == v14)
        {
          goto LABEL_22;
        }

        v15 = v2[5];
      }

      [v15 invalidate];
      objc_initWeak(&location, v2);
      v18 = [AVTimer alloc];
      v19 = MEMORY[0x1E69E96A0];
      v20 = MEMORY[0x1E69E96A0];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __AVPlayerControllerTimeResolverUpdateTimer_block_invoke;
      v24[3] = &unk_1E7209EA8;
      objc_copyWeak(&v25, &location);
      v21 = [(AVTimer *)v18 initWithTimeInterval:v19 queue:v24 block:1 repeats:v14];
      v22 = v2[5];
      v2[5] = v21;

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [v15 invalidate];
    v23 = v2[5];
    v2[5] = 0;
  }

LABEL_22:
}

void sub_18B647664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void AVPlayerControllerTimeResolverUpdateTime(void *a1)
{
  v35 = a1;
  +[AVValueTiming currentTimeStamp];
  v2 = v1;
  v3 = [v35[1] timing];
  [v3 anchorTimeStamp];
  v5 = v4;
  v6 = [v35[1] timing];
  v7 = v6;
  if (v2 <= v5)
  {
    [v6 anchorValue];
  }

  else
  {
    [v6 valueForTimeStamp:v2];
  }

  v9 = v8;

  EffectiveInterval = AVPlayerControllerTimeResolverGetEffectiveInterval(v35);
  v11 = EffectiveInterval * round(v9 / EffectiveInterval);
  v12 = v9 - v11;
  v13 = [v35[1] hasSeekableLiveStreamingContent];
  v14 = v35[1];
  if (v13)
  {
    v15 = [v14 minTiming];
    v16 = v35[1];
    if (v15)
    {
      v17 = [v16 minTiming];
      [v17 valueForTimeStamp:v2];
      v19 = v18 - v12;
    }

    else
    {
      [v16 minTime];
      v19 = v21;
    }
  }

  else
  {
    [v14 minTime];
    v19 = v20;
  }

  v22 = [v35[1] hasSeekableLiveStreamingContent];
  v23 = v35[1];
  if (v22)
  {
    v24 = [v23 maxTiming];
    v25 = v35[1];
    if (v24)
    {
      v26 = [v25 maxTiming];
      [v26 valueForTimeStamp:v2];
      v28 = v27 - v12;
    }

    else
    {
      [v25 maxTime];
      v28 = v30;
    }
  }

  else
  {
    [v23 maxTime];
    v28 = v29;
  }

  v31 = fmax(v19, fmin(v11, v28));
  v32 = v35;
  v33 = v28 == *(v35 + 7);
  if (v31 == *(v35 + 4))
  {
    v34 = 1;
    if (v19 == *(v35 + 6))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v34 = 0;
  if (v19 != *(v35 + 6))
  {
LABEL_18:
    [v35 willChangeValueForKey:@"minTime"];
    *(v35 + 6) = v19;
    [v35 didChangeValueForKey:@"minTime"];
    v32 = v35;
  }

LABEL_19:
  if (v33)
  {
    if (v34)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [v35 willChangeValueForKey:@"maxTime"];
  *(v35 + 7) = v28;
  [v35 didChangeValueForKey:@"maxTime"];
  v32 = v35;
  if ((v34 & 1) == 0)
  {
LABEL_21:
    [v35 willChangeValueForKey:@"currentTime"];
    *(v35 + 4) = v31;
    [v35 didChangeValueForKey:@"currentTime"];
    v32 = v35;
  }

LABEL_22:
}

double AVPlayerControllerTimeResolverGetEffectiveInterval(void *a1)
{
  v1 = a1;
  v2 = *(v1 + 1);
  if (v2)
  {
    if ([v2 hasSeekableLiveStreamingContent])
    {
      [v1 seekableTimeRangeDuration];
    }

    else
    {
      [*(v1 + 1) contentDuration];
    }

    v5 = ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
    v6 = *(v1 + 2);
    if (v5)
    {
      v4 = fmax(v6, 1.0);
    }

    else
    {
      v4 = fmin(v6, v3 / *(v1 + 3));
    }
  }

  else
  {
    v4 = *(v1 + 2);
  }

  return v4;
}

void __AVPlayerControllerTimeResolverUpdateTimer_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    AVPlayerControllerTimeResolverUpdateTime(WeakRetained);
    WeakRetained = v2;
  }
}

void sub_18B6510FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B653348(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B659DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B65A788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __MapImageNameNumberAware_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EFF12F38];
  v1 = MapImageNameNumberAware_sDigitAwareSet;
  MapImageNameNumberAware_sDigitAwareSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_18B65CACC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B65D444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B65F74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66065C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 144));
  _Unwind_Resume(a1);
}

void sub_18B6613C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B663618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66389C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B663AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B664450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B664C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B665B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B667F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B669964(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18B66A6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66AB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66AF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66B218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66B3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66B540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B66BB94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_18B66BE14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18B66E120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25553(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B671208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B673EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMPVolumeHUDControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPVolumeHUDControllerClass_softClass;
  v7 = getMPVolumeHUDControllerClass_softClass;
  if (!getMPVolumeHUDControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMPVolumeHUDControllerClass_block_invoke;
    v3[3] = &unk_1E7209BC8;
    v3[4] = &v4;
    __getMPVolumeHUDControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B674F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPVolumeHUDControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26449)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_26450;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7209470;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26449 = _sl_dlopen();
    v2 = v4[0];
    if (MediaPlayerLibraryCore_frameworkLibrary_26449)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MPVolumeHUDController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getMPVolumeHUDControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_26450()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_26449 = result;
  return result;
}

void sub_18B675CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B67AD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B67CBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B67CEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v18 - 104));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B681DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6827BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6835C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B684108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL AVInputIsValidBundleID()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E4A8]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopySigningIdentifier(v0, 0);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = @"com.apple.springboard";
  v4 = v2;
  v7.length = CFStringGetLength(v4);
  v7.location = 0;
  v5 = CFStringCompareWithOptionsAndLocale(v4, @"com.apple.springboard", v7, 2uLL, 0);

  return v5 == kCFCompareEqualTo;
}

void sub_18B684814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B687944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVKCImageAnalysisInteractionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary_28921)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionKitCoreLibraryCore_block_invoke_28922;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72096D0;
    v6 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary_28921 = _sl_dlopen();
    v2 = v4[0];
    if (VisionKitCoreLibraryCore_frameworkLibrary_28921)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VKCImageAnalysisInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getVKCImageAnalysisInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke_28922()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary_28921 = result;
  return result;
}

void sub_18B692748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6949A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B694E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_18B695248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_18B69546C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_18B6955DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30772(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B696B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B696F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B699338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 160), 8);
  _Unwind_Resume(a1);
}

void __mainVideoTrackForPlayerItem_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) tracks];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x1E6987608];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 assetTrack];
        if ([v8 isEnabled])
        {
          v10 = [v9 mediaType];
          if ([v10 isEqualToString:v6])
          {
            v11 = [v9 isEnabled];

            if (v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = 0;
LABEL_14:

  (*(*(a1 + 40) + 16))();
}

void sub_18B69A88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B69C4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B69C66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void playbackMinTimeForPlayerItem(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (!v3 || (v5 = v3, [v3 reversePlaybackEndTime], v3 = v5, (*(a1 + 12) & 1) == 0))
  {
    v4 = MEMORY[0x1E6960CC0];
    *a1 = *MEMORY[0x1E6960CC0];
    *(a1 + 16) = *(v4 + 16);
  }
}

void playbackMaxTimeForPlayerItemAndContentDuration(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (!v5 || (v6 = v5, [v5 forwardPlaybackEndTime], v5 = v6, (*(a1 + 12) & 1) == 0))
  {
    *a1 = *a3;
    *(a1 + 16) = *(a3 + 16);
  }
}

void sub_18B6A1E34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 208));
  _Unwind_Resume(a1);
}

void sub_18B6A2F80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_18B6A3C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6A3F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6A4CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _captionAppearanceSettingsChangeNotificationCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  DisplayType = MACaptionAppearanceGetDisplayType(kMACaptionAppearanceDomainUser);
  if (DisplayType != [v3 captionAppearanceDisplayType])
  {
    [v3 setCaptionAppearanceDisplayType:DisplayType];
  }

  [v3 reloadLegibleOptions];
}

void sub_18B6A792C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6AD980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 40; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_18B6B0E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6B1068(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18B6B1CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6B2A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6B3DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6B7E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6B86DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B6B9858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33301(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B6BA7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AVBundle()
{
  if (AVBundle_onceToken != -1)
  {
    dispatch_once(&AVBundle_onceToken, &__block_literal_global_33894);
  }

  v1 = AVBundle_bundle;

  return v1;
}

uint64_t __AVBundle_block_invoke()
{
  v0 = +[_AVKitBundle bundle];
  v1 = AVBundle_bundle;
  AVBundle_bundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t AVApplicationIdentifier()
{
  if (AVApplicationIdentifier_createMainAppBundleOnceToken != -1)
  {
    dispatch_once(&AVApplicationIdentifier_createMainAppBundleOnceToken, &__block_literal_global_8);
  }

  v1 = AVApplicationIdentifier_mainAppBundle;

  return [v1 bundleIdentifier];
}

uint64_t __AVApplicationIdentifier_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = AVApplicationIdentifier_mainAppBundle;
  AVApplicationIdentifier_mainAppBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id AVLocalizedString(void *a1)
{
  v1 = a1;
  v2 = AVBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFED57D8 table:0];

  return v3;
}

void AVAsynchronousLocalizedString(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [a3 copy];
  if (AVAsynchronousLocalizedString_createQueueOnceToken != -1)
  {
    dispatch_once(&AVAsynchronousLocalizedString_createQueueOnceToken, &__block_literal_global_13_33910);
  }

  v8 = AVAsynchronousLocalizedString_localizedStringBackgroundQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AVAsynchronousLocalizedString_block_invoke_2;
  block[3] = &unk_1E720A068;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __AVAsynchronousLocalizedString_block_invoke_2(uint64_t a1)
{
  v2 = AVLocalizedString(*(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __AVAsynchronousLocalizedString_block_invoke_3;
  v5[3] = &unk_1E720A040;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __AVAsynchronousLocalizedString_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.avkit.localizedStringBundleQueue", v2);
  v1 = AVAsynchronousLocalizedString_localizedStringBackgroundQ;
  AVAsynchronousLocalizedString_localizedStringBackgroundQ = v0;
}

id AVKitUserDefaults()
{
  if (AVKitUserDefaults_initializeAVKitUserDefaultsOnceToken != -1)
  {
    dispatch_once(&AVKitUserDefaults_initializeAVKitUserDefaultsOnceToken, &__block_literal_global_16_33915);
  }

  v1 = AVKitUserDefaults_AVKitUserDefaults;

  return v1;
}

uint64_t __AVKitUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.avkit"];
  v1 = AVKitUserDefaults_AVKitUserDefaults;
  AVKitUserDefaults_AVKitUserDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_18B6C1EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v58 - 248), 8);
  _Block_object_dispose((v58 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_18B6C2BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x1EEDE99E0](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}