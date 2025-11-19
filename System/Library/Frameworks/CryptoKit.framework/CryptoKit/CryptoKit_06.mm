uint64_t sub_1A791B224(uint64_t result, void *a2)
{
  if (*result != *a2 || *(result + 8) != a2[1])
  {
    return 0;
  }

  v2 = a2[2];
  if (!*(result + 16))
  {
    if (!v2)
    {
      return 1;
    }

    goto LABEL_25;
  }

  if (!v2)
  {
LABEL_25:
    sub_1A791B388(result, v16);
    sub_1A791B388(a2, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  v3 = *(result + 32);
  v4 = *(result + 40) >> 1;
  v5 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = a2[4];
  v7 = a2[5] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5 != v8)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v9 = *(result + 24) + v3;
  v10 = a2[3] + v6;
  result = 1;
  if (v9 != v10 && v3 != v4)
  {
    if (v3 >= v4)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    if (v6 != v7)
    {
      v11 = 0;
      if (v6 <= v7)
      {
        v12 = a2[5] >> 1;
      }

      else
      {
        v12 = a2[4];
      }

      v13 = v12 - v6;
      while (v13 != v11)
      {
        if (*(v9 + v11) != *(v10 + v11))
        {
          return 0;
        }

        if (~v3 + v4 == v11)
        {
          return 1;
        }

        v14 = v3 + v11 + 1;
        if (v14 < v3 || v14 >= v4)
        {
          goto LABEL_32;
        }

        result = 0;
        if (v8 == ++v11)
        {
          return result;
        }
      }

      goto LABEL_31;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A791B3C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = a4 >> 1;
  result = swift_unknownObjectRetain();
  v9 = MEMORY[0x1E69E7CC0];
  if (v7 != a3)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0] + 32;
    v12 = a2;
    v36 = a2 + 56;
    v37 = v4 & 1;
    v39 = a2;
    while (1)
    {
      if (a3 >= v7)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v13 = v12 + 48 * a3;
      v14 = *v13;
      v15 = a3 + 1;
      if ((*v13 & 0x20) != 0)
      {
        v17 = *(v13 + 8);
        v18 = v7;
        if (v15 != v7)
        {
          v19 = (v36 + 48 * a3);
          v18 = a3 + 1;
          while (1)
          {
            v20 = *v19;
            v19 += 6;
            if (v17 >= v20)
            {
              break;
            }

            if (v7 == ++v18)
            {
              v18 = v7;
              break;
            }
          }
        }

        if (v18 <= a3)
        {
          goto LABEL_48;
        }

        if (v7 < v18)
        {
          goto LABEL_49;
        }

        if (v18 < 0)
        {
          goto LABEL_50;
        }

        v21 = v18 - v15;
        if (__OFSUB__(v18, v15))
        {
          goto LABEL_51;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (__OFSUB__(v7, v15))
        {
          goto LABEL_53;
        }

        if (!v21 || (v22 = v7, v7 - v15 >= v21))
        {
          v22 = v18;
          if (__OFADD__(v15, v21))
          {
            goto LABEL_57;
          }

          if (v7 < v18)
          {
            goto LABEL_56;
          }
        }

        if (v22 <= a3)
        {
          goto LABEL_54;
        }

        sub_1A78BF4E8(a1, v12, a3 + 1, v37 | (2 * v18), v17, v42);
        v40 = v42[1];
        v41 = v42[0];
        v16 = v43;
        result = swift_unknownObjectRetain();
        v15 = v22;
        if (v10)
        {
          v15 = v22;
          goto LABEL_40;
        }
      }

      else
      {
        v41 = *(v13 + 16);
        result = *(v13 + 16);
        if (!v41)
        {
          goto LABEL_59;
        }

        v40 = *(v13 + 32);
        result = swift_unknownObjectRetain();
        v16 = 0;
        if (v10)
        {
          goto LABEL_40;
        }
      }

      v23 = v9[3];
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_55;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78C0, &qword_1A79446D8);
      v26 = swift_allocObject();
      v27 = (_swift_stdlib_malloc_size(v26) - 32) / 56;
      v26[2] = v25;
      v26[3] = 2 * v27;
      v28 = (v26 + 4);
      v29 = v9[3] >> 1;
      v30 = 7 * v29;
      if (v9[2])
      {
        if (v26 != v9 || v28 >= &v9[v30 + 4])
        {
          memmove(v26 + 4, v9 + 4, 56 * v29);
        }

        v9[2] = 0;
      }

      v11 = v28 + v30 * 8;
      v10 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

      v9 = v26;
LABEL_40:
      v32 = __OFSUB__(v10--, 1);
      if (v32)
      {
        goto LABEL_47;
      }

      *v11 = v14;
      *(v11 + 8) = v41;
      *(v11 + 24) = v40;
      *(v11 + 40) = v16;
      *(v11 + 48) = (v14 & 0x20) == 0;
      v11 += 56;
      a3 = v15;
      v12 = v39;
      if (v15 == v7)
      {
        goto LABEL_42;
      }
    }
  }

  v10 = 0;
LABEL_42:
  result = swift_unknownObjectRelease();
  v33 = v9[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v32 = __OFSUB__(v34, v10);
    v35 = v34 - v10;
    if (v32)
    {
      goto LABEL_58;
    }

    v9[2] = v35;
  }

  return v9;
}

uint64_t sub_1A791B6C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  result = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_17;
  }

  v6 = a3;
  result = MEMORY[0x1AC55D830](result);
  if (v4 == v6)
  {
    return result;
  }

  if (v4 <= v6)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = (a2 + 48 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    v14 = *v8;
    sub_1A793DF88();
    MEMORY[0x1AC55D830](v9);
    if (!v10)
    {
      result = sub_1A793DF88();
      goto LABEL_7;
    }

    sub_1A793DF88();
    v15 = v13 >> 1;
    result = (v13 >> 1) - v12;
    if (__OFSUB__(v13 >> 1, v12))
    {
      break;
    }

    result = MEMORY[0x1AC55D830](result);
    v16 = __OFSUB__(v15, v12);
    v17 = v15 - v12;
    if (v17)
    {
      if ((v17 < 0) ^ v16 | (v17 == 0))
      {
        goto LABEL_16;
      }

      v18 = (v11 + v12);
      do
      {
        v19 = *v18++;
        result = sub_1A793DF88();
        --v17;
      }

      while (v17);
    }

LABEL_7:
    if (++v6 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A791B7B0(char a1, char **a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  LOBYTE(v9) = a1;
  v10 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    v13 = v11 >> 1;
    v14 = v12 + 1;
    if (v11 >> 1 <= v12)
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 1, 1, v10);
      v11 = *(v10 + 3);
      v13 = v11 >> 1;
    }

    *(v10 + 2) = v14;
    v10[v12 + 32] = v9;
    v9 = v12 + 2;
    if (v13 < (v12 + 2))
    {
      v10 = sub_1A78C57C4((v11 > 1), v12 + 2, 1, v10);
    }

    *(v10 + 2) = v9;
    v10[v14 + 32] = 0;
    *a2 = v10;
    v10 = (v12 + 1);
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = (a3)(a2);
    if (v5)
    {
      return result;
    }

    a4 = *a2;
    v16 = *(*a2 + 2);
    a3 = v16 - v9;
    if ((v16 - v9) > 127)
    {
      if (v16 >= v9)
      {
        v14 = 71 - __clz(a3);
        v5 = v14 >> 3;
        sub_1A7919F9C(v14 >> 3, v9, v16);
        a4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(a4);
    a4 = result;
LABEL_11:
    if (v10 >= *(a4 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v17 = a4 + 32;
    v10[a4 + 32] = (v14 >> 3) | 0x80;
    *a2 = a4;
    if (v9 < *(a4 + 16))
    {
      *(v17 + v9) = a3 >> (8 * ((v5 - 1) & 7));
      if (v5 == 1)
      {
        goto LABEL_32;
      }

      if (v12 + 3 < *(a4 + 16))
      {
        *(v17 + v12 + 3) = a3 >> (8 * ((v5 - 2) & 7));
        if (v5 == 2)
        {
          goto LABEL_32;
        }

        if (v12 + 4 < *(a4 + 16))
        {
          *(v17 + v12 + 4) = a3 >> (8 * ((v5 - 3) & 7));
          if (v5 == 3)
          {
            goto LABEL_32;
          }

          if (v12 + 5 < *(a4 + 16))
          {
            *(v17 + v12 + 5) = a3 >> (8 * ((v5 - 4) & 7));
            if (v5 == 4)
            {
              goto LABEL_32;
            }

            if (v12 + 6 < *(a4 + 16))
            {
              *(v17 + v12 + 6) = a3 >> (8 * ((v5 - 5) & 7));
              if (v5 == 5)
              {
                goto LABEL_32;
              }

              if (v12 + 7 < *(a4 + 16))
              {
                *(v17 + v12 + 7) = a3 >> (8 * ((v5 - 6) & 7));
                if (v5 == 6)
                {
                  goto LABEL_32;
                }

                if (v12 + 8 < *(a4 + 16))
                {
                  *(v17 + v12 + 8) = a3 >> (8 * ((v5 - 7) & 7));
                  if (v5 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v12 + 9 < *(a4 + 16))
                  {
                    *(v17 + v12 + 9) = a3 >> (v14 & 0x38);
LABEL_32:
                    *a2 = a4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v10 = sub_1A78C57C4(0, *(v10 + 2) + 1, 1, v10);
  }

  v18 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(a4);
  a4 = result;
LABEL_30:
  if (v10 < *(a4 + 16))
  {
    v10[a4 + 32] = a3;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A791BAC0(char a1, char **a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A79205A0(a2, a3);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v12 = v14 - v7;
    if ((v14 - v7) > 127)
    {
      if (v14 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_1A7919F9C(v10 >> 3, v7, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v15[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v15[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v15[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v15[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v15[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v15[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v15[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v15[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
  }

  v16 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A791BDC8(char a1, char **a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v7) = a1;
  v8 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11 = v9 >> 1;
    v12 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 1, 1, v8);
      v9 = *(v8 + 3);
      v11 = v9 >> 1;
    }

    *(v8 + 2) = v12;
    v8[v10 + 32] = v7;
    v7 = v10 + 2;
    if (v11 < (v10 + 2))
    {
      v8 = sub_1A78C57C4((v9 > 1), v10 + 2, 1, v8);
    }

    *(v8 + 2) = v7;
    v8[v12 + 32] = 0;
    *a2 = v8;
    v8 = (v10 + 1);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    result = sub_1A78FF6E4(a2, a3);
    if (v4)
    {
      return result;
    }

    v4 = *a2;
    v14 = *(*a2 + 2);
    v12 = v14 - v7;
    if ((v14 - v7) > 127)
    {
      if (v14 >= v7)
      {
        v10 = 71 - __clz(v12);
        a3 = v10 >> 3;
        sub_1A7919F9C(v10 >> 3, v7, v14);
        v4 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_11;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1A78F5C2C(v4);
    v4 = result;
LABEL_11:
    if (v8 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_41;
    }

    v15 = v4 + 32;
    v8[(v4 + 32)] = (v10 >> 3) | 0x80;
    *a2 = v4;
    if (v7 < *(v4 + 2))
    {
      v15[v7] = v12 >> (8 * ((a3 - 1) & 7));
      if (a3 == 1)
      {
        goto LABEL_32;
      }

      if (v7 + 1 < *(v4 + 2))
      {
        v15[v7 + 1] = v12 >> (8 * ((a3 - 2) & 7));
        if (a3 == 2)
        {
          goto LABEL_32;
        }

        if (v7 + 2 < *(v4 + 2))
        {
          v15[v7 + 2] = v12 >> (8 * ((a3 - 3) & 7));
          if (a3 == 3)
          {
            goto LABEL_32;
          }

          if (v7 + 3 < *(v4 + 2))
          {
            v15[v7 + 3] = v12 >> (8 * ((a3 - 4) & 7));
            if (a3 == 4)
            {
              goto LABEL_32;
            }

            if (v7 + 4 < *(v4 + 2))
            {
              v15[v7 + 4] = v12 >> (8 * ((a3 - 5) & 7));
              if (a3 == 5)
              {
                goto LABEL_32;
              }

              if (v7 + 5 < *(v4 + 2))
              {
                v15[v7 + 5] = v12 >> (8 * ((a3 - 6) & 7));
                if (a3 == 6)
                {
                  goto LABEL_32;
                }

                if (v7 + 6 < *(v4 + 2))
                {
                  v15[v7 + 6] = v12 >> (8 * ((a3 - 7) & 7));
                  if (a3 == 7)
                  {
                    goto LABEL_32;
                  }

                  if (v7 + 7 < *(v4 + 2))
                  {
                    v15[v7 + 7] = v12 >> (v10 & 0x38);
LABEL_32:
                    *a2 = v4;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_35:
    v8 = sub_1A78C57C4(0, *(v8 + 2) + 1, 1, v8);
  }

  v16 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_30;
  }

LABEL_41:
  result = sub_1A78F5C2C(v4);
  v4 = result;
LABEL_30:
  if (v8 < *(v4 + 2))
  {
    v8[v4 + 32] = v12;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A791C0F8()
{
  result = qword_1EB2A6CE0;
  if (!qword_1EB2A6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6CE0);
  }

  return result;
}

uint64_t sub_1A791C168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1A791C1C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_1A791C280(_OWORD *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78CE5D4(a1);
}

void *sub_1A791C2D8(_OWORD *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1A78CE62C(a1);
}

void *sub_1A791C360(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1A78CE57C(a1, a2);
}

uint64_t HPKE.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1A793DF58();
  MEMORY[0x1AC55D830](v1);
  return sub_1A793DFA8();
}

unint64_t sub_1A791C448()
{
  result = qword_1EB2A78C8;
  if (!qword_1EB2A78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78C8);
  }

  return result;
}

__int128 *sub_1A791C4AC@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a2 - result == 20;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  if (v3)
  {
    v6 = *result;
    v5 = *(result + 4);
  }

  else
  {
    v5 = 0;
    v6 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A790C89C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.encapsulate()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v6[3] = type metadata accessor for Rng();
  v6[4] = &off_1F1A796A0;
  v6[0] = swift_allocObject();
  sub_1A790B1BC(&v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1A791C644@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v6[3] = type metadata accessor for Rng();
  v6[4] = &off_1F1A796A0;
  v6[0] = swift_allocObject();
  sub_1A790B1BC(&v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t XWingMLKEM768X25519.PrivateKey.seedRepresentation.getter()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (!cckem_xwing_mlkem768x25519())
  {
    __break(1u);
  }

  v2 = cckem_privkey_nbytes_info();
  v6[0] = sub_1A78CC5A0(v2);
  v6[1] = v3;
  sub_1A78CC640(v6, 0);
  sub_1A791D4A8(v6);
  result = v6[0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A791C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v9;
  v13 = v8;
  v10 = sub_1A790C928(a1, v12);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  if (!v4)
  {
    *a4 = v10;
  }

  return result;
}

void *XWingMLKEM768X25519.PrivateKey.decapsulate(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = v7 + 32 + *(v7 + 16);
  return sub_1A790BF88((v7 + 32), a1, a2, a3);
}

uint64_t XWingMLKEM768X25519.PrivateKey.publicKey.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3 + 32 + *(v3 + 16);
  result = sub_1A790C380(v3 + 32, &v6);
  *a1 = v6;
  return result;
}

void *sub_1A791C960@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = v7 + 32 + *(v7 + 16);
  return sub_1A790BF88((v7 + 32), a1, a2, a3);
}

uint64_t sub_1A791C9DC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3 + 32 + *(v3 + 16);
  result = sub_1A790C380(v3 + 32, &v6);
  *a1 = v6;
  return result;
}

uint64_t sub_1A791CA70@<X0>(void (*a1)(void *, uint64_t *)@<X0>, unint64_t *a2@<X8>)
{
  v9[3] = type metadata accessor for Rng();
  v9[4] = &off_1F1A796A0;
  v9[0] = swift_allocObject();
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v6 = cckem_sizeof_full_ctx();
    v8 = MEMORY[0x1EEE9AC00](v6);
    v7 = sub_1A78C05E8(v8, a1);
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    if (!v2)
    {
      *a2 = v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PrivateKey.init<A>(seedRepresentation:publicKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = a1;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  if (*v14)
  {
    *&v29 = v4;
    v25[1] = a3;
    v26 = v8;
    v27 = a4;
    v16 = sub_1A790B114();
    v18 = v17;

    result = ccsha3_256_di();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v22 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v20;
    *(inited + 24) = v22;
    v33 = inited;
    sub_1A78C0990(v16, v18);
    v23 = v29;
    sub_1A791D828(v16, v18);
    sub_1A78C0AFC(v16, v18);
    sub_1A78BD4B0(&v30);

    v24 = v16;
    v5 = v23;
    sub_1A78C0AFC(v24, v18);
    v28 = v31;
    v29 = v30;
    v8 = v26;
    a4 = v27;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  (*(v10 + 16))(v13, v8, a2);
  v31 = v28;
  v30 = v29;
  v32 = v15 == 0;
  sub_1A791C788(v13, &v30, a2, &v33);
  result = (*(v10 + 8))(v8, a2);
  if (!v5)
  {
    *a4 = v33;
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PrivateKey.init<A>(integrityCheckedRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v9;
  v48 = *(*(v9 + 8) + 8);
  *&v41 = *(v48 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v11 = *(v40 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v47 = v5;
  v22 = *(v5 + 16);
  v22(v8, a1, a2);
  v45 = v21;
  sub_1A793D8B8();
  v48 = a1;
  v23 = a1;
  v24 = v40;
  v22(v8, v23, a2);
  sub_1A793DBE8();
  v25 = *(v24 + 16);
  v43 = v19;
  v25(v16, v19, AssociatedTypeWitness);
  v26 = *(swift_getAssociatedConformanceWitness() + 8);
  v27 = sub_1A793DB38();
  v28 = *(v27 + 16);
  if (v28 == 32)
  {
    v29 = v44;
    if (v44)
    {
LABEL_10:
      result = MEMORY[0x1AC55E410](v29);
      __break(1u);
      return result;
    }

    v30 = *(v27 + 32);
    v39 = *(v27 + 48);
    v41 = v30;
  }

  else
  {
    v41 = 0u;
    v39 = 0u;
    v29 = v44;
    if (v44)
    {
      goto LABEL_10;
    }
  }

  v31 = v28 != 32;

  v32 = v42;
  v33 = v45;
  v25(v42, v45, AssociatedTypeWitness);
  v49[0] = v41;
  v49[1] = v39;
  v50 = v31;
  swift_getAssociatedConformanceWitness();
  sub_1A791C788(v32, v49, AssociatedTypeWitness, &v51);
  if (v29)
  {
    (*(v47 + 8))(v48, a2);
    v34 = *(v24 + 8);
    v34(v43, AssociatedTypeWitness);
    return (v34)(v33, AssociatedTypeWitness);
  }

  else
  {
    (*(v47 + 8))(v48, a2);
    v36 = *(v24 + 8);
    v36(v43, AssociatedTypeWitness);
    result = (v36)(v33, AssociatedTypeWitness);
    *v38 = v51;
  }

  return result;
}

uint64_t sub_1A791D168@<X0>(void (*a1)(void *, uint64_t *)@<X2>, unint64_t *a2@<X8>)
{
  v9[3] = type metadata accessor for Rng();
  v9[4] = &off_1F1A796A0;
  v9[0] = swift_allocObject();
  result = cckem_xwing_mlkem768x25519();
  if (result)
  {
    v6 = cckem_sizeof_full_ctx();
    v8 = MEMORY[0x1EEE9AC00](v6);
    v7 = sub_1A78C05E8(v8, a1);
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    if (!v2)
    {
      *a2 = v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.init<A>(_:kem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v11 == 4)
  {
    v12 = v8;
    (*(v6 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    XWingMLKEM768X25519.PublicKey.init<A>(rawRepresentation:)(v10, a3, &v16);
    result = (*(v6 + 8))(a1, a3);
    if (!v3)
    {
      *v12 = v16;
    }
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return (*(v6 + 8))(a1, a3);
  }

  return result;
}

uint64_t XWingMLKEM768X25519.PublicKey.hpkeRepresentation(kem:)(_BYTE *a1)
{
  if (*a1 == 4)
  {
    v2 = *v1;
    return sub_1A790B114();
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A791D43C(_BYTE *a1)
{
  if (*a1 == 4)
  {
    v2 = *v1;
    return sub_1A790B114();
  }

  else
  {
    sub_1A78D4960();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A791D4A8(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1A78C0AFC(v5, v4);
      LOWORD(v19) = v4;
      BYTE2(v19) = BYTE2(v4);
      HIBYTE(v19) = BYTE3(v4);
      LOBYTE(v20) = BYTE4(v4);
      HIBYTE(v20) = BYTE5(v4);
      result = cckem_export_privkey();
      if (!result)
      {
        *a1 = v5;
        a1[1] = v19 | ((v20 | (BYTE6(v4) << 16)) << 32);
LABEL_24:
        v18 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v2 = v5;
    v1 = v5 >> 32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      if (v1 < v2)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      result = sub_1A793D648();
      if (result)
      {
        if (__OFSUB__(v2, sub_1A793D678()))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_1A793D668();
        v17 = cckem_export_privkey();

        if (v17)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v11 = v12 | 0x4000000000000000;
        *a1 = v5;
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    if (v1 < v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

LABEL_17:
    v13 = sub_1A793D698();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1A793D628();

    v12 = v16;
    goto LABEL_18;
  }

  if (v6 != 2)
  {
    result = cckem_export_privkey();
    if (!result)
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = *a1;

  sub_1A78C0AFC(v5, v4);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v10 = *(v5 + 16);
  result = sub_1A793D648();
  if (result)
  {
    if (__OFSUB__(v10, sub_1A793D678()))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1A793D668();
    result = cckem_export_privkey();
    if (result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = v9 | 0x8000000000000000;
    *a1 = v5;
LABEL_23:
    a1[1] = v11;
    goto LABEL_24;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A791D828(uint64_t a1, unint64_t a2)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v8, 0, 14);
      v3 = v8;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      v8[0] = a1;
      LOWORD(v8[1]) = a2;
      BYTE2(v8[1]) = BYTE2(a2);
      BYTE3(v8[1]) = BYTE3(a2);
      BYTE4(v8[1]) = BYTE4(a2);
      BYTE5(v8[1]) = BYTE5(a2);
      v3 = v8 + BYTE6(a2);
LABEL_9:
      result = sub_1A78DA8BC(v8, v3);
      goto LABEL_10;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1A791D960(v4, v5);
LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A791D960(uint64_t a1, uint64_t a2)
{
  result = sub_1A793D648();
  v5 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1A793D668();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1A78DA8BC(v5, v11);
}

uint64_t sub_1A791DAB0(uint64_t (*a1)(void))
{
  v4 = *MEMORY[0x1E69E9840];
  if (!ccrng())
  {
    __break(1u);
  }

  result = a1();
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A791DB6C(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 112);
  return swift_endAccess();
}

uint64_t sub_1A791DBE8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1AC55E570](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1A791DC5C(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  a1(v3 + 32);
  return swift_endAccess();
}

uint64_t RSAPSSSPKI.rsaPublicKeyBytes.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t RSAPSSSPKI.rsaPublicKeyBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A78C0AFC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t static RSAPSSSPKI.serialize(_:)(uint64_t a1, unint64_t a2)
{
  v7 = sub_1A78C57C4(0, 1024, 0, MEMORY[0x1E69E7CC0]);
  sub_1A78C0990(a1, a2);
  sub_1A7917E1C(48, &v7, a1, a2);
  if (v2)
  {
  }

  v6 = sub_1A78C0DCC(v7);

  return v6;
}

uint64_t sub_1A791DE0C(uint64_t a1)
{
  if (*a1 == 48 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 24);
    v9[0] = *(a1 + 8);
    v9[1] = v5;
    v10 = v4;
    sub_1A78BF80C(a1, v8);
    swift_unknownObjectRetain();
    sub_1A791E2B8(v9, 2);
    if (v1)
    {
      swift_unknownObjectRelease();
      return sub_1A78BF494(a1);
    }

    else
    {
      sub_1A78BF874(v11);
      if (v11[48] != 255)
      {
        sub_1A791EAD8(v11);
        sub_1A78D6B80();
        swift_allocError();
        *v7 = 3;
        swift_willThrow();
      }

      sub_1A78BF494(a1);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1A791DF44(uint64_t a1)
{
  if (*a1 == 48 && (*(a1 + 48) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 24);
    v9 = *(a1 + 8);
    v10 = v5;
    v11 = v4;
    sub_1A78BF80C(a1, v8);
    swift_unknownObjectRetain();
    sub_1A791E078();
    if (v1)
    {
      swift_unknownObjectRelease();
      return sub_1A78BF494(a1);
    }

    else
    {
      sub_1A78BF874(v12);
      if (v12[48] != 255)
      {
        sub_1A791EAD8(v12);
        sub_1A78D6B80();
        swift_allocError();
        *v7 = 3;
        swift_willThrow();
      }

      sub_1A78BF494(a1);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }
}

char *sub_1A791E078()
{
  sub_1A78BF874(v9);
  if (v10 == 255)
  {
    sub_1A78D6B80();
LABEL_10:
    swift_allocError();
    v5 = 3;
LABEL_11:
    *v4 = v5;
    return swift_willThrow();
  }

  v19[0] = v9[0];
  v19[1] = v9[1];
  v19[2] = v9[2];
  v20 = v10;
  result = sub_1A78BFB00(v19, 6);
  if (v0)
  {
    return result;
  }

  v2 = sub_1A790327C(result, &unk_1F1A76D90);

  if ((v2 & 1) == 0)
  {
    sub_1A791C0F8();
    goto LABEL_10;
  }

  sub_1A78BF874(v11);
  if (v17 == 255)
  {
    sub_1A791C0F8();
    swift_allocError();
    v5 = 4;
    goto LABEL_11;
  }

  if (v11[0] == 48 && (v17 & 1) == 0)
  {
    v8[0] = v12;
    v8[1] = v13;
    v8[2] = v14;
    v8[3] = v15;
    v8[4] = v16;
    sub_1A791EB50(v11, v7);
    j__swift_unknownObjectRetain();
    sub_1A791E2B8(v8, 5);
    sub_1A78BF874(v18);
    if (v18[48] != 255)
    {
      sub_1A791EAD8(v18);
      sub_1A78D6B80();
      swift_allocError();
      *v6 = 3;
      swift_willThrow();
    }

    sub_1A791EAD8(v11);
    sub_1A791EAD8(v11);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    return sub_1A791EAD8(v11);
  }
}

void sub_1A791E2B8(uint64_t a1, char a2)
{
  sub_1A78BF874(v9);
  if (v10 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v7 = 3;
LABEL_10:
    swift_willThrow();
    return;
  }

  v12[0] = v9[0];
  v12[1] = v9[1];
  v12[2] = v9[2];
  v13 = v10;
  v4 = sub_1A78BFB00(v12, 6);
  if (v2)
  {
    return;
  }

  v5 = sub_1A790327C(v4, &unk_1F1A76C88);

  if ((v5 & 1) == 0)
  {
    sub_1A791C0F8();
    swift_allocError();
    *v8 = a2;
    goto LABEL_10;
  }

  sub_1A78BF874(v11);
  if (v11[48] != 255)
  {
    if (v11[0] != 5)
    {
      sub_1A78D6B80();
      swift_allocError();
      *v6 = 3;
      swift_willThrow();
    }

    sub_1A791EAD8(v11);
  }
}

uint64_t RSAPSSSPKI.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A78C0990(a1, a2);
  v7 = sub_1A78CE6A4(a1, a2);
  sub_1A78BDFE0(v7, v7 + 32, 0, (2 * *(v7 + 16)) | 1, v23);
  if (v3)
  {
    sub_1A78C0AFC(a1, a2);
  }

  if (v23[0] != 48 || (v27 & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    sub_1A78BF494(v23);
    return sub_1A78C0AFC(a1, a2);
  }

  v20 = v24;
  v21 = v25;
  v22 = v26;
  sub_1A78BF80C(v23, v19);
  sub_1A78BF80C(v23, v19);
  sub_1A791E880();
  sub_1A78BF874(v28);
  if (v29 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  v31[0] = v28[0];
  v31[1] = v28[1];
  v31[2] = v28[2];
  v32 = v29;
  v10 = sub_1A78C5B9C(v31, 3u);
  v14 = sub_1A78D9C70(v10, v11, v12, v13);
  v16 = v15;
  sub_1A78BF874(v30);
  if (v30[48] != 255)
  {
    sub_1A791EAD8(v30);
    sub_1A78D6B80();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    sub_1A78C0AFC(v14, v16);
LABEL_10:
    sub_1A78BF494(v23);
    sub_1A78BF494(v23);
    sub_1A78C0AFC(a1, a2);
    return swift_unknownObjectRelease();
  }

  sub_1A78C0AFC(a1, a2);
  sub_1A78BF494(v23);
  sub_1A78BF494(v23);
  result = swift_unknownObjectRelease();
  *a3 = v14;
  a3[1] = v16;
  return result;
}

uint64_t sub_1A791E6A8()
{
  sub_1A78BF874(v10);
  if (v15 == 255)
  {
    sub_1A791C0F8();
    swift_allocError();
    *v3 = 1;
    return swift_willThrow();
  }

  else if (v10[0] == 48 && (v15 & 1) == 0)
  {
    v6 = v11;
    v7 = v12;
    v8 = v13;
    v9 = v14;
    sub_1A791EB50(v10, &v5);
    j__swift_unknownObjectRetain();
    sub_1A79166F4(&v6, 0, 2u);
    if (!v0)
    {
      sub_1A7916720(&v6, 1uLL, 2u);
      sub_1A7916A60(&v6, 2uLL, 2u);
      sub_1A78BF874(v16);
      if (v16[48] != 255)
      {
        sub_1A791EAD8(v16);
        sub_1A78D6B80();
        swift_allocError();
        *v4 = 3;
        swift_willThrow();
      }
    }

    sub_1A791EAD8(v10);
    sub_1A791EAD8(v10);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    return sub_1A791EAD8(v10);
  }
}

uint64_t sub_1A791E880()
{
  sub_1A78BF874(v15);
  if (v21 == 255)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  if (v15[0] != 48 || (v21 & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    return sub_1A791EAD8(v15);
  }

  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  sub_1A78BF874(v22);
  if (v23 != 255)
  {
    v25[0] = v22[0];
    v25[1] = v22[1];
    v25[2] = v22[2];
    v26 = v23;
    sub_1A791EB50(v15, v9);
    j__swift_unknownObjectRetain();
    v4 = sub_1A78BFB00(v25, 6);
    if (!v0)
    {
      v5 = sub_1A790327C(v4, &unk_1F1A76DE8);

      if ((v5 & 1) == 0)
      {
        sub_1A791C0F8();
        swift_allocError();
        *v8 = 0;
        goto LABEL_13;
      }

      sub_1A791E6A8();
      sub_1A78BF874(v24);
      if (v24[48] != 255)
      {
        sub_1A791EAD8(v24);
        sub_1A78D6B80();
        swift_allocError();
        *v6 = 3;
LABEL_13:
        swift_willThrow();
      }
    }

    sub_1A791EAD8(v15);
    sub_1A791EAD8(v15);
    return swift_unknownObjectRelease();
  }

  sub_1A78D6B80();
  swift_allocError();
  *v7 = 3;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A791EAD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F38, &qword_1A793F4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A791EB50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A6F38, &qword_1A793F4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Curve25519.Signing.PrivateKey.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_1A793DB28();
  *(v2 + 16) = 32;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v5 = v2;
  v3 = sub_1A78E3110(0x20uLL, &v5);

  *a1 = v3;
  return result;
}

uint64_t Curve25519.Signing.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A791EF98();
  *a1 = result;
  return result;
}

uint64_t Curve25519.Signing.PrivateKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A791F1D0();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve25519.Signing.PrivateKey.rawRepresentation.getter()
{
  v1 = sub_1A793D6F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *v5 = sub_1A78DA2BC;
  v5[1] = v8;
  (*(v2 + 104))(v5, *MEMORY[0x1E6969028], v1);

  return sub_1A78DA2C4(v6 + 32, v7, v5);
}

uint64_t Curve25519.Signing.PublicKey.init<A>(rawRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A78C49E8();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t Curve25519.Signing.PublicKey.rawRepresentation.getter()
{
  v1 = *v0;
  v2 = sub_1A793DB18();
  v3 = sub_1A78C0DCC(v2);

  return v3;
}

unint64_t sub_1A791EF24()
{
  result = qword_1EB2A78D0;
  if (!qword_1EB2A78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A78D0);
  }

  return result;
}

uint64_t sub_1A791EF98()
{
  v0 = sub_1A793DB28();
  *(v0 + 16) = 32;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  if (ccsha512_di())
  {
    if (!cced25519_make_pub())
    {
      v1 = sub_1A78C66DC(v0);

      return v1;
    }

    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A791F054(void *a1, void *a2, char **a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!ccsha512_di())
  {
    goto LABEL_9;
  }

  if (!ccrng())
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (!*a1)
  {
    goto LABEL_11;
  }

  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A78C57C4(0, *(v6 + 2), 0, v6);
  }

  *a3 = v6;
  result = cced25519_make_key_pair();
  if (result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *a2 = 32;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A791F164(uint64_t result, uint64_t a2)
{
  if (!result || a2 - result != 32)
  {
    sub_1A78D6484();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A791F1D0()
{
  result = sub_1A793D6A8();
  if (!v0)
  {
    return sub_1A78C2B3C();
  }

  return result;
}

uint64_t SecureEnclave.Curve25519.Signing.PrivateKey.signature<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A793DC78();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v39 - v12;
  v41 = *(a2 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_checkMetadataState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v23 = *v3;
  v47 = v3[1];
  v48 = v23;
  v24 = v3[2];
  v45 = v3[3];
  v46 = v24;
  v56 = a3;
  sub_1A793D5A8();
  v42 = v7;
  v25 = sub_1A793DB98();
  v26 = *(v16 + 8);
  v26(v22, v15);
  if (v25 == 1)
  {
    sub_1A793D5A8();
    v27 = v43;
    sub_1A793DBC8();
    v26(v20, v15);
    v28 = AssociatedTypeWitness;
    v29 = *(AssociatedTypeWitness - 8);
    result = (*(v29 + 48))(v27, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v51 = v28;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v50);
    (*(v29 + 32))(boxed_opaque_existential_1, v27, v28);
    sub_1A78C78FC(&v50, v53);
    v32 = v54;
  }

  else
  {
    (*(v41 + 16))(v40, a1, a2);
    v33 = *(*(*(*(v56 + 8) + 8) + 8) + 8);
    v34 = sub_1A793DB38();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A6E88, qword_1A7940400);
    v54 = v32;
    v55 = sub_1A78EC320();
    v53[0] = v34;
  }

  v35 = __swift_project_boxed_opaque_existential_1(v53, v32);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v47;
  *(&v39 - 4) = v48;
  *(&v39 - 3) = v36;
  v37 = v45;
  *(&v39 - 2) = v46;
  *(&v39 - 1) = v37;
  v38 = v49;
  sub_1A793D6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v53);
  if (!v38)
  {
    return v50;
  }

  return result;
}

uint64_t sub_1A791F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, void *a4@<X8>)
{
  v9 = sub_1A793D6F8();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E6969010]);
    v15 = sub_1A78DA2C4(a1, a2 - a1, v14);
    v17 = v16;
    v18 = sub_1A791F838(a3);
    if (v4)
    {
      return sub_1A78C0AFC(v15, v17);
    }

    else
    {
      v20 = v18;
      v21 = v19;
      result = sub_1A78C0AFC(v15, v17);
      *a4 = v20;
      a4[1] = v21;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A791F818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  return sub_1A791F6D0(a1, a2, *(v3 + 40), a3);
}

void *sub_1A791F838(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A793D7B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B148])
  {
    __break(1u);
  }

  *(v3 + 32) = sub_1A793D958();
  *(v3 + 40) = v4;
  v5 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v6 = sub_1A793D878();

  v12[0] = 0;
  v7 = [a1 sign:v2 algorithms:v5 parameters:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    v9 = sub_1A793D7D8();
  }

  else
  {
    v9 = v8;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A791FA24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A791FA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A791FAD4(unsigned __int8 *a1, unsigned __int8 a2)
{
  if (*a1 != a2)
  {
    sub_1A78D6B80();
    swift_allocError();
    v10 = 1;
LABEL_16:
    *v9 = v10;
    swift_willThrow();
    sub_1A78BF494(a1);
    return;
  }

  if (a1[48])
  {
    v3 = *(a1 + 3);
    v4 = *(a1 + 4);
    v5 = v4 >> 1;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
    }

    else
    {
      if (((v4 >> 1) - v3) <= 0)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 1);
      v7 = *(a1 + 2);
      if (v3 == v5)
      {
LABEL_12:
        sub_1A791FCFC(v6, v7, v3, v4);
        return;
      }

      if (v3 < v5)
      {
        if (v3 + 1 == v5)
        {
          goto LABEL_12;
        }

        if (v3 + 1 < v5)
        {
          v8 = *(v7 + v3 + 1);
          if (*(v7 + v3))
          {
            if (*(v7 + v3) != 255 || (v8 & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_15;
          }

          if ((v8 & 0x80000000) == 0)
          {
LABEL_15:
            sub_1A78D6B80();
            swift_allocError();
            v10 = 4;
            goto LABEL_16;
          }

          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void sub_1A791FBE0(unsigned __int8 *a1, unsigned __int8 a2)
{
  if (*a1 != a2)
  {
    sub_1A78D6B80();
    swift_allocError();
    v11 = 1;
LABEL_18:
    *v10 = v11;
    swift_willThrow();
    sub_1A78BF494(a1);
    return;
  }

  if (a1[48])
  {
    v3 = *(a1 + 3);
    v4 = *(a1 + 4);
    v5 = v4 >> 1;
    if (__OFSUB__(v4 >> 1, v3))
    {
      __break(1u);
    }

    else
    {
      if (((v4 >> 1) - v3) <= 0)
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 1);
      v7 = *(a1 + 2);
      if (v3 == v5)
      {
LABEL_15:
        sub_1A7920008(v6, v7, v3, v4);
        return;
      }

      if (v3 < v5)
      {
        v8 = *(v7 + v3);
        v9 = v3 + 1;
        if (v3 + 1 == v5)
        {
          if (!*(v7 + v3))
          {
            v3 = v4 >> 1;
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (v3 + 1 < v5)
        {
          if (*(v7 + v3))
          {
            if (v8 != 255)
            {
LABEL_14:
              if ((v8 & 0x80) == 0)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            ++v3;
            if (*(v7 + v9) < 0)
            {
              goto LABEL_15;
            }
          }

LABEL_17:
          sub_1A78D6B80();
          swift_allocError();
          v11 = 4;
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1A791FCFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_unknownObjectRetain();
  sub_1A791FE90(v8, a2, a3, a4);
  if (v4 || a4 >> 1 == a3)
  {
    swift_unknownObjectRelease();
  }

  else if ((a4 >> 1) <= a3)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + a3);
    swift_unknownObjectRelease();
  }
}

void sub_1A791FE90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 > 8)
  {
    swift_unknownObjectRelease();
    sub_1A78D6B80();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_23;
  }

  v9 = sub_1A78C0234(0, 8 * v5, 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  if (a3 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 - a3 > (v10 - 1))
  {
    v12 = 0;
    v13 = (a2 + a3);
    v14 = 32;
    do
    {
      v16 = *(v9 + v14);
      v18 = *v13++;
      v17 = v18;
      if ((v16 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v15 = 0;
      }

      else if (v16 < 0)
      {
        v20 = v17 >> -v16;
        if (v16 == -64)
        {
          v15 = 0;
        }

        else
        {
          v15 = v20;
        }
      }

      else
      {
        v19 = v17 << v16;
        if (v16 == 64)
        {
          v15 = 0;
        }

        else
        {
          v15 = v19;
        }
      }

      v12 |= v15;
      v14 += 8;
      --v10;
    }

    while (v10);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

void sub_1A7920008(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5 > 8)
  {
    swift_unknownObjectRelease();
    sub_1A78D6B80();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    return;
  }

  if ((v5 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_23;
  }

  v9 = sub_1A78C0234(0, 8 * v5, 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  if (a3 <= v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = a3;
  }

  if (v11 - a3 > (v10 - 1))
  {
    v12 = 0;
    v13 = (a2 + a3);
    v14 = 32;
    do
    {
      v16 = *(v9 + v14);
      if (v16 - 65 <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v15 = 0;
      }

      else
      {
        v17 = *v13;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v19 = v17 >> -v16;
          if (v16 <= 0xFFFFFFFFFFFFFFC0)
          {
            v15 = 0;
          }

          else
          {
            v15 = v19;
          }
        }

        else
        {
          v18 = v17 << v16;
          if (v16 >= 0x40)
          {
            v15 = 0;
          }

          else
          {
            v15 = v18;
          }
        }
      }

      v12 |= v15;
      ++v13;
      v14 += 8;
      --v10;
    }

    while (v10);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

void sub_1A792016C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A78BF874(v21);
  if (v22 == 255)
  {
    goto LABEL_8;
  }

  v31[0] = v21[0];
  v31[1] = v21[1];
  v31[2] = v21[2];
  v32 = v22;
  sub_1A791FAD4(v31, 2u);
  if (v2)
  {
    return;
  }

  if (v5 != 1 || (sub_1A78BF874(v23), v28 == 255))
  {
LABEL_8:
    sub_1A78D6B80();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  else if (v23[0] == 4)
  {
    if (v28)
    {
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
      sub_1A7916DD4(a1, 0, 2u);
      v11 = v10;
      sub_1A79170A0(a1, 1uLL, 2u);
      sub_1A7920A7C(v6, v7, v8, v9, v11, v14, v15, v16, v29, v17);
      v18 = v29[5];
      *(a2 + 64) = v29[4];
      *(a2 + 80) = v18;
      *(a2 + 96) = v30;
      v19 = v29[1];
      *a2 = v29[0];
      *(a2 + 16) = v19;
      v20 = v29[3];
      *(a2 + 32) = v29[2];
      *(a2 + 48) = v20;
    }

    else
    {
      sub_1A78C2ADC(v23, &qword_1EB2A6F38, &qword_1A793F4B0);
      __break(1u);
    }
  }

  else
  {
    sub_1A78D6B80();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    sub_1A78C2ADC(v23, &qword_1EB2A6F38, &qword_1A793F4B0);
  }
}

uint64_t sub_1A7920384@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) == 7 && (v5 == &unk_1F1A76BA0 || qword_1F1A76BC0 == *(v5 + 32) && qword_1F1A76BC8 == *(v5 + 40) && qword_1F1A76BD0 == *(v5 + 48) && qword_1F1A76BD8 == *(v5 + 56) && qword_1F1A76BE0 == *(v5 + 64) && qword_1F1A76BE8 == *(v5 + 72) && qword_1F1A76BF0 == *(v5 + 80)))
  {
    if (qword_1EB2A6CC0 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1EB2ADA90;
LABEL_21:
    *a3 = *v6;
    *(a3 + 8) = *(v6 + 8);
    *(a3 + 24) = *(v6 + 24);
    swift_unknownObjectRetain();
    return sub_1A793DB18();
  }

  if (sub_1A790327C(&unk_1F1A76BF8, v5))
  {
    if (qword_1EB2A6D98 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1EB2ADAC0;
    goto LABEL_21;
  }

  if (sub_1A790327C(&unk_1F1A76C40, v5))
  {
    if (qword_1EB2A6DA0 != -1)
    {
      swift_once();
    }

    v6 = &xmmword_1EB2ADAE8;
    goto LABEL_21;
  }

  sub_1A78D6B80();
  v8 = swift_allocError();
  *v9 = 3;
  result = swift_willThrow();
  *a2 = v8;
  return result;
}

uint64_t sub_1A79205A0(char **a1, uint64_t a2)
{
  v23 = 1;
  v22[2] = &v23;
  result = sub_1A791C348(2, a1, sub_1A791C14C, v22);
  if (!v2)
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 40);
    *&v8 = MEMORY[0x1EEE9AC00](result);
    v20 = v9;
    v21 = v8;
    result = sub_1A791C348(4, a1, sub_1A78FFBF8, &v19);
    v10 = *(a2 + 16);
    v26[0] = *a2;
    v26[1] = v10;
    v27 = *(a2 + 32);
    if (*&v26[0])
    {
      v11 = *(a2 + 24);
      v38[0] = *(a2 + 8);
      v38[1] = v11;
      v30 = *&v26[0];
      v31 = v38[0];
      v32 = v11;
      v37 = *&v26[0];
      sub_1A78BF9FC(v26, &v23, &qword_1EB2A75F8, qword_1A7942108);
      sub_1A78FF910(&v37, &v23);
      sub_1A78BF9FC(v38, &v23, &qword_1EB2A6F30, &qword_1A793F4A8);
      if (qword_1EB2A6CC0 != -1)
      {
        swift_once();
      }

      v35[0] = xmmword_1EB2ADA90;
      v35[1] = *&qword_1EB2ADAA0;
      v36 = qword_1EB2ADAB0;
      v12 = sub_1A78D6980(v35, &v30);
      sub_1A78D6BD4(&v37);
      v13 = sub_1A78C2ADC(v38, &qword_1EB2A6F30, &qword_1A793F4A8);
      if (v12)
      {
        v14 = &unk_1F1A76BA0;
      }

      else
      {
        sub_1A78FF910(&v37, &v23);
        sub_1A78BF9FC(v38, &v23, &qword_1EB2A6F30, &qword_1A793F4A8);
        if (qword_1EB2A6D98 != -1)
        {
          swift_once();
        }

        v33[0] = xmmword_1EB2ADAC0;
        v33[1] = *&qword_1EB2ADAD0;
        v34 = qword_1EB2ADAE0;
        v15 = sub_1A78D6980(v33, &v30);
        sub_1A78D6BD4(&v37);
        v13 = sub_1A78C2ADC(v38, &qword_1EB2A6F30, &qword_1A793F4A8);
        if (v15)
        {
          v14 = &unk_1F1A76BF8;
        }

        else
        {
          sub_1A78FF910(&v37, &v23);
          sub_1A78BF9FC(v38, &v23, &qword_1EB2A6F30, &qword_1A793F4A8);
          if (qword_1EB2A6DA0 != -1)
          {
            swift_once();
          }

          v28[0] = xmmword_1EB2ADAE8;
          v28[1] = *&qword_1EB2ADAF8;
          v29 = qword_1EB2ADB08;
          v16 = sub_1A78D6980(v28, &v30);
          sub_1A78D6BD4(&v37);
          v13 = sub_1A78C2ADC(v38, &qword_1EB2A6F30, &qword_1A793F4A8);
          if ((v16 & 1) == 0)
          {
            sub_1A78D6B80();
            swift_allocError();
            *v18 = 3;
            swift_willThrow();
            sub_1A78D6BD4(&v37);
            return sub_1A78C2ADC(v38, &qword_1EB2A6F30, &qword_1A793F4A8);
          }

          v14 = &unk_1F1A76C40;
        }
      }

      v23 = v14;
      MEMORY[0x1EEE9AC00](v13);
      *&v21 = &v23;
      sub_1A791C348(160, a1, sub_1A7920E80, &v20);
      sub_1A78D6BD4(&v37);
      sub_1A78C2ADC(v38, &qword_1EB2A6F30, &qword_1A793F4A8);
    }

    v17 = *(a2 + 72);
    if (v17)
    {
      v24 = *(a2 + 80);
      v25 = *(a2 + 96);
      v23 = v17;
      MEMORY[0x1EEE9AC00](result);
      *&v21 = &v23;
      return sub_1A791C348(161, a1, sub_1A7920A30, &v20);
    }
  }

  return result;
}

uint64_t sub_1A7920A30(char **a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  v5[1] = *v2;
  v5[2] = v3;
  return sub_1A791C348(3, a1, sub_1A791C0D8, v5);
}

uint64_t sub_1A7920A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (a5)
  {
    v27 = a8;
    *&v29 = a5;
    sub_1A7920384(&v29, v28, v47);
    if (v10)
    {

      v48 = v28[0];
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      v39 = a1;
      v40 = a2;
      v41 = a3;
      v42 = a4;
      v43 = a6;
      v44 = a7;
      v45 = v27;
      v46 = a10;
      return sub_1A78FFBA4(&v36);
    }

    v48 = 0;

    v23 = v47[0];
    v22 = v47[1];
    v21 = v47[2];
    v20 = v47[3];
    v19 = v47[4];
    a8 = v27;
  }

  else
  {
    v48 = v10;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *&v29 = v23;
  *(&v29 + 1) = v22;
  *&v30 = v21;
  *(&v30 + 1) = v20;
  *&v31 = v19;
  *(&v31 + 1) = a1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a4;
  *(&v33 + 1) = a6;
  *&v34 = a7;
  *(&v34 + 1) = a8;
  v35 = a10;
  *&v36 = v23;
  *(&v36 + 1) = v22;
  *&v37 = v21;
  *(&v37 + 1) = v20;
  v38 = v19;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a10;
  sub_1A78FFB48(&v29, v28);
  result = sub_1A78FFBA4(&v36);
  v24 = v34;
  *(a9 + 64) = v33;
  *(a9 + 80) = v24;
  *(a9 + 96) = v35;
  v25 = v30;
  *a9 = v29;
  *(a9 + 16) = v25;
  v26 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v26;
  return result;
}

uint64_t sub_1A7920BEC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1 != a2 || (a1[48] & 1) != 0)
  {
    sub_1A78D6B80();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    return sub_1A78BF494(a1);
  }

  v8 = *(a1 + 5);
  v9 = *(a1 + 24);
  v23[0] = *(a1 + 8);
  v23[1] = v9;
  v24 = v8;
  sub_1A78BF80C(a1, v14);
  swift_unknownObjectRetain();
  sub_1A792016C(v23, &v16);
  if (v3)
  {
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF874(v25);
  if (v25[48] != 255)
  {
    sub_1A78C2ADC(v25, &qword_1EB2A6F38, &qword_1A793F4B0);
    sub_1A78D6B80();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    sub_1A78BF494(a1);
    sub_1A78BF494(a1);
    v14[4] = v20;
    v14[5] = v21;
    v15 = v22;
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_1A78FFBA4(v14);
    return swift_unknownObjectRelease();
  }

  sub_1A78BF494(a1);
  sub_1A78BF494(a1);
  result = swift_unknownObjectRelease();
  v11 = v21;
  *(a3 + 64) = v20;
  *(a3 + 80) = v11;
  *(a3 + 96) = v22;
  v12 = v17;
  *a3 = v16;
  *(a3 + 16) = v12;
  v13 = v19;
  *(a3 + 32) = v18;
  *(a3 + 48) = v13;
  return result;
}

__n128 sub_1A7920DC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 16);
  v6 = (2 * *(a1 + 16)) | 1;
  v20[0] = *a2;
  v20[1] = v5;
  v7 = *(a2 + 32);
  v8 = (2 * *(a3 + 16)) | 1;
  v13 = v20[0];
  v14 = v5;
  *&v15 = v7;
  *(&v15 + 1) = a1;
  v16 = (a1 + 32);
  *&v17 = v6;
  *(&v17 + 1) = a3;
  v18 = (a3 + 32);
  v19 = v8;
  v21 = v7;
  v22 = a1;
  v23 = a1 + 32;
  v24 = 0;
  v25 = v6;
  v26 = a3;
  v27 = a3 + 32;
  v28 = 0;
  v29 = v8;
  sub_1A78FFB48(&v13, v12);
  sub_1A78FFBA4(v20);
  v9 = v18;
  *(a4 + 64) = v17;
  *(a4 + 80) = v9;
  *(a4 + 96) = v19;
  v10 = v14;
  *a4 = v13;
  *(a4 + 16) = v10;
  result = v16;
  *(a4 + 32) = v15;
  *(a4 + 48) = result;
  return result;
}

uint64_t SecureEnclave.MLDSA65.PrivateKey.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  sub_1A78C0990(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_1A792101C(unint64_t *a1, id a2, uint64_t a3, uint64_t (*a4)(void *), void **a5, uint64_t (*a6)(uint64_t), void (*a7)(void *, uint64_t *))
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v13 = [v12 tokenIDs];
  v14 = sub_1A793DB08();

  v15 = *MEMORY[0x1E697AEE0];
  v56 = sub_1A793D958();
  v57 = v16;
  v55[2] = &v56;
  LOBYTE(a4) = sub_1A7931890(a4, v55, v14);

  if ((a4 & 1) == 0)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v44 = 0;
    *(v44 + 8) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  v17 = sub_1A79221B0(a3, 0);
  if (v7)
  {
LABEL_10:
    v45 = *MEMORY[0x1E69E9840];
    return a2;
  }

  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78E0, "<5");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7944DF0;
  v56 = *MEMORY[0x1E697AD50];
  v20 = v56;
  type metadata accessor for CFString(0);
  v22 = v21;
  sub_1A7922338();
  v23 = v20;
  result = sub_1A793DDE8();
  v25 = *a5;
  if (!*a5)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(inited + 96) = v22;
  *(inited + 72) = v25;
  v56 = *MEMORY[0x1E697AD68];
  v26 = v56;
  v27 = v25;
  result = sub_1A793DDE8();
  v28 = *MEMORY[0x1E697AD98];
  if (!*MEMORY[0x1E697AD98])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 168) = v22;
  *(inited + 144) = v28;
  v56 = *MEMORY[0x1E697ABC8];
  v29 = v56;
  v30 = v28;
  sub_1A793DDE8();
  v31 = [objc_opt_self() dataFromACL_];
  v32 = sub_1A793D7D8();
  v34 = v33;

  *(inited + 240) = MEMORY[0x1E6969080];
  *(inited + 216) = v32;
  *(inited + 224) = v34;
  sub_1A78FC2A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75C8, &qword_1A7941D78);
  swift_arrayDestroy();
  v35 = sub_1A793D878();

  v56 = 0;
  a2 = [v18 createObjectWithAttributes:v35 error:&v56];

  if (!a2)
  {
    v46 = v56;
    sub_1A793D6C8();

    swift_willThrow();
    goto LABEL_10;
  }

  v36 = v56;
  v37 = [a2 publicKey];
  if (!v37)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v47 = 2;
    *(v47 + 8) = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v38 = v37;
  v39 = sub_1A793D7D8();
  v41 = v40;

  v56 = v39;
  v57 = v41;
  v42 = sub_1A78C0990(v39, v41);
  result = a6(v42);
  if (result)
  {
    v43 = ccmldsa_sizeof_pub_ctx();
    v50 = MEMORY[0x1EEE9AC00](v43);
    v54 = sub_1A78C05E8(v50, a7);
    sub_1A78C0AFC(v56, v57);
    v48 = v18;
    v49 = [a2 objectID];
    sub_1A793D7D8();
    sub_1A78C0AFC(v39, v41);

    *a1 = v54;
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A7921508(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t (*a7)(uint64_t), void (*a8)(void *, uint64_t *))
{
  v10 = v8;
  v45 = *MEMORY[0x1E69E9840];
  v15 = [objc_allocWithZone(MEMORY[0x1E69666F8]) init];
  v16 = [v15 tokenIDs];
  v17 = sub_1A793DB08();

  v18 = *MEMORY[0x1E697AEE0];
  v43 = sub_1A793D958();
  v44 = v19;
  v42 = &v43;
  LOBYTE(a6) = sub_1A7931890(a6, v41, v17);

  if ((a6 & 1) == 0)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v20 = sub_1A79221B0(a4, a5);
  if (v8)
  {
LABEL_8:
    v33 = *MEMORY[0x1E69E9840];
    return v10;
  }

  v21 = v20;
  v22 = sub_1A793D7B8();
  v43 = 0;
  v10 = [v21 objectForObjectID:v22 error:&v43];

  if (!v10)
  {
    v35 = v43;
    sub_1A793D6C8();

    swift_willThrow();
    goto LABEL_8;
  }

  v23 = v43;
  v24 = [v10 publicKey];
  if (!v24)
  {
    sub_1A78FC3E4();
    swift_allocError();
    *v36 = 2;
    *(v36 + 8) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v25 = v24;
  v26 = sub_1A793D7D8();
  v28 = v27;

  v43 = v26;
  v44 = v28;
  v29 = sub_1A78C0990(v26, v28);
  if (a7(v29))
  {
    v30 = ccmldsa_sizeof_pub_ctx();
    v37 = MEMORY[0x1EEE9AC00](v30);
    v31 = sub_1A78C05E8(v37, a8);

    sub_1A78C0AFC(v26, v28);
    sub_1A78C0AFC(v43, v44);
    *a1 = v31;
    sub_1A78C0990(a2, a3);
    goto LABEL_8;
  }

  __break(1u);
  sub_1A78C0AFC(v43, v44);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1A79218A4(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void *)@<X2>, void **a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, unint64_t *a7@<X8>)
{
  v11 = sub_1A792101C(&v19, a1, a2, a3, a4, a5, a6);
  v13 = v12;
  v15 = v14;

  if (!v7)
  {
    v16 = v19;
    v17 = v11;
    sub_1A78C0990(v13, v15);
    sub_1A78C0AFC(v13, v15);
    v18 = v17;
    sub_1A78C0990(v13, v15);

    sub_1A78C0AFC(v13, v15);
    *a7 = v16;
    a7[1] = v13;
    a7[2] = v15;
    a7[3] = v18;
  }
}

void sub_1A79219D8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void *)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void (*a7)(void *, uint64_t *)@<X6>, unint64_t *a8@<X8>)
{
  v14 = sub_1A78C7370(a1, a3, *(*(*(*(a4 + 8) + 8) + 8) + 8));
  v16 = v15;
  v17 = sub_1A7921508(&v28, v14, v15, a2, 0, a5, a6, a7);
  if (v8)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    sub_1A78C0AFC(v14, v16);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    v22 = v19;
    (*(*(a3 - 8) + 8))(a1, a3);
    sub_1A78C0AFC(v14, v16);

    v23 = v28;
    v24 = v20;
    sub_1A78C0990(v21, v22);
    sub_1A78C0AFC(v21, v22);
    v25 = v24;
    sub_1A78C0990(v21, v22);

    sub_1A78C0AFC(v21, v22);
    *a8 = v23;
    a8[1] = v21;
    a8[2] = v22;
    a8[3] = v25;
  }
}

void *sub_1A7921B80(void *a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v7 = v20[0];
    v8 = v20[1];
    v9 = sub_1A793D7B8();
    sub_1A78C0AFC(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B168])
  {
    __break(1u);
  }

  *(v10 + 32) = sub_1A793D958();
  *(v10 + 40) = v11;
  v12 = sub_1A793DAF8();

  sub_1A78FC074(MEMORY[0x1E69E7CC0]);
  v13 = sub_1A793D878();

  v20[0] = 0;
  v14 = [a1 sign:v9 algorithms:v12 parameters:v13 error:v20];

  v15 = v20[0];
  if (v14)
  {
    v9 = sub_1A793D7D8();
  }

  else
  {
    v16 = v15;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

void *sub_1A7921DDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 72);
  if (swift_dynamicCast())
  {
    v11 = v27[0];
    v12 = v27[1];
    v13 = sub_1A793D7B8();
    sub_1A78C0AFC(v11, v12);
  }

  else
  {
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2A7410, &qword_1A7941548);
  v14 = swift_allocObject();
  v26 = xmmword_1A79414F0;
  *(v14 + 16) = xmmword_1A79414F0;
  if (!*MEMORY[0x1E697B168])
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  *(v14 + 32) = sub_1A793D958();
  *(v14 + 40) = v15;
  v16 = sub_1A793DAF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78D8, "65");
  inited = swift_initStackObject();
  *(inited + 16) = v26;
  if (!*MEMORY[0x1E697B250])
  {
    goto LABEL_11;
  }

  *(inited + 32) = sub_1A793D958();
  *(inited + 40) = v18;
  *(inited + 72) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a3, a5);
  sub_1A78FC074(inited);
  swift_setDeallocating();
  sub_1A7922128(inited + 32);
  v20 = sub_1A793D878();

  v27[0] = 0;
  v21 = [a1 sign:v13 algorithms:v16 parameters:v20 error:v27];

  v22 = v27[0];
  if (v21)
  {
    v13 = sub_1A793D7D8();
  }

  else
  {
    v23 = v22;
    sub_1A793D6C8();

    swift_willThrow();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1A7922128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A75B8, &qword_1A7941D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A79221B0(uint64_t a1, unint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED5F89A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED5FA2A0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = sub_1A78FC1A4(MEMORY[0x1E69E7CC0]);
  }

  sub_1A793DB18();
  sub_1A79345B0(v5);

  v12[0] = 0;
  v6 = objc_allocWithZone(MEMORY[0x1E69666E0]);
  v7 = sub_1A793D878();

  v8 = [v6 initWithToken:v4 LAContext:a1 parameters:v7 error:v12];

  v9 = v12[0];
  if (v12[0])
  {
    swift_willThrow();
    v9;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t sub_1A7922338()
{
  result = qword_1EB2A6D90;
  if (!qword_1EB2A6D90)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2A6D90);
  }

  return result;
}

uint64_t sub_1A7922430(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_35;
  }

  if (!a6())
  {
    goto LABEL_36;
  }

  v16 = ccmldsa_pub_ctx_init();
  v17 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v17)
    {
      result = (a6)(v16);
      if (result)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  if (v17 == 2)
  {
    v32 = a5;
    v33 = a2;
    v19 = *(a3 + 16);
    v20 = *(a3 + 24);

    a5 = sub_1A793D648();
    if (a5)
    {
      v21 = sub_1A793D678();
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_33;
      }

      a5 += v19 - v21;
    }

    v22 = __OFSUB__(v20, v19);
    a2 = (v20 - v19);
    if (!v22)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v33 = a2;
    a2 = ((a3 >> 32) - a3);
    if (a3 >> 32 >= a3)
    {
      v32 = a5;

      a5 = sub_1A793D648();
      if (!a5)
      {
LABEL_18:
        v24 = sub_1A793D668();
        if (v24 >= a2)
        {
          v25 = a2;
        }

        else
        {
          v25 = v24;
        }

        v26 = v25 + a5;
        if (a5)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        sub_1A79226E8(a5, v27, v9, a7);
        result = sub_1A78C0AFC(a3, a4);
        if (v7)
        {
          goto LABEL_31;
        }

        a5 = v32;
        a2 = v33;
        goto LABEL_30;
      }

      v23 = sub_1A793D678();
      if (!__OFSUB__(a3, v23))
      {
        a5 += a3 - v23;
        goto LABEL_18;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  result = (a6)(v16);
  if (result)
  {
LABEL_27:
    v28 = ccmldsa_import_pubkey();
    if (v28)
    {
      v29 = v28;
      sub_1A78D6484();
      swift_allocError();
      *v30 = v29;
      *(v30 + 4) = 0;
      swift_willThrow();
      result = sub_1A78C0AFC(a3, a4);
LABEL_31:
      v31 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = sub_1A78C0AFC(a3, a4);
LABEL_30:
    *a2 = a5;
    goto LABEL_31;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A79226E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = ccmldsa_import_pubkey();
  if (result)
  {
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

void (*sub_1A7922780(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a3)(void), void (*a4)(void *, uint64_t *)))(void *, uint64_t *)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1())
  {
    goto LABEL_14;
  }

  v9 = ccmldsa_seed_nbytes_params();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  v16 = off_1ED5F8A18;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v9, 0);
      v10 = v16;
      goto LABEL_8;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_8:
  v17 = v10;
  if (!a1())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v11 = ccmldsa_sizeof_full_ctx();
  v12 = ccrng();
  if (!v12)
  {
    goto LABEL_16;
  }

  a2(v11, &v17, v12, v11);
  if (!v4)
  {

    memset(v18, 0, sizeof(v18));
    v19 = 1;

    a4 = sub_1A7922958(v13, v18, a3, a4);
  }

  v14 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t sub_1A7922958(uint64_t a1, __int128 *a2, uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  v8 = a1;
  v45[4] = *MEMORY[0x1E69E9840];
  *&v43 = a1;
  if (!a3())
  {
    goto LABEL_21;
  }

  v9 = ccmldsa_seed_nbytes_params();
  v10 = swift_beginAccess();
  if (*(v8 + 16) != v9)
  {
    sub_1A78D6484();
    swift_allocError();
    *v15 = 1;
    *(v15 + 4) = 1;
    swift_willThrow();

LABEL_14:
    v19 = *MEMORY[0x1E69E9840];
    return v8;
  }

  if (!(a3)(v10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = ccmldsa_sizeof_full_ctx();
  v39 = MEMORY[0x1EEE9AC00](v11);
  sub_1A78C05E8(v39, a4);
  if (!v4)
  {
    if (a3())
    {
      v12 = ccmldsa_pubkey_nbytes_params();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v13 = v12;
        if (v12)
        {
          v14 = sub_1A793DB28();
          *(v14 + 16) = v13;
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        if (ccmldsa_public_ctx())
        {
          v16 = ccmldsa_export_pubkey();
          if (v16)
          {
            v17 = v16;
            sub_1A78D6484();
            swift_allocError();
            *v18 = v17;
            *(v18 + 4) = 0;
            swift_willThrow();
            *(v14 + 16) = v13;

            goto LABEL_14;
          }

          *(v14 + 16) = v13;
          v21 = sub_1A78C0DCC(v14);
          v23 = v22;

          v24 = ccsha3_256_di();
          if (v24)
          {
            v25 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
            inited = swift_initStackObject();
            getDigestSizeForDigestInfo();
            v27 = swift_slowAlloc();
            ccdigest_init();
            *(inited + 16) = v25;
            *(inited + 24) = v27;
            *&v41 = inited;
            sub_1A78C0990(v21, v23);
            sub_1A791D828(v21, v23);
            sub_1A78C0AFC(v21, v23);
            sub_1A78BD4B0(&v43);

            v28 = v43;
            v29 = v44;
            if ((a2[2] & 1) != 0 || (v30 = a2[1], v43 = *a2, v44 = v30, v41 = v28, v42 = v29, sub_1A78CBAB0(&v41, &v43, &v43, v45, &v40), v40 == 1))
            {
              *(&v44 + 1) = &type metadata for SHA3_256Digest;
              v45[0] = sub_1A790CAC0();
              v31 = swift_allocObject();
              *&v43 = v31;
              *(v31 + 16) = v28;
              *(v31 + 32) = v29;
              v32 = __swift_project_boxed_opaque_existential_1(&v43, &type metadata for SHA3_256Digest);
              v33 = v32[1];
              v41 = *v32;
              v42 = v33;
              v34 = sub_1A793D698();
              v35 = *(v34 + 48);
              v36 = *(v34 + 52);
              swift_allocObject();
              sub_1A793D638();
              __swift_destroy_boxed_opaque_existential_1(&v43);
              *(&v44 + 1) = &type metadata for SecureBytes;
              v45[0] = sub_1A78C7DD0();
              *&v43 = v8;
              v37 = *__swift_project_boxed_opaque_existential_1(&v43, &type metadata for SecureBytes);
              swift_beginAccess();
              sub_1A78C2D58((v37 + 32), (v37 + 32 + *(v37 + 16)), &v40);
              sub_1A78C0AFC(v21, v23);
              v8 = v40;
              __swift_destroy_boxed_opaque_existential_1(&v43);
            }

            else
            {

              sub_1A78D6484();
              swift_allocError();
              *v38 = 4;
              *(v38 + 4) = 1;
              swift_willThrow();
              sub_1A78C0AFC(v21, v23);
            }

            goto LABEL_14;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A7922E04(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t *), uint64_t (*a6)(void))
{
  v66[1] = *MEMORY[0x1E69E9840];
  sub_1A7923348(a1, a2, a4, a5);
  if (v6)
  {
    v11 = a1;
    v12 = a2;
LABEL_3:
    sub_1A78C0AFC(v11, v12);
LABEL_12:
    v19 = *MEMORY[0x1E69E9840];
    return a6;
  }

  result = a6();
  if (!result)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v14 = ccmldsa_pubkey_nbytes_params();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  a6 = v14;
  if (v14)
  {
    v15 = sub_1A793DB28();
    *(v15 + 16) = a6;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  result = ccmldsa_public_ctx();
  if (!result)
  {
    goto LABEL_51;
  }

  v16 = ccmldsa_export_pubkey();
  if (v16)
  {
    v17 = v16;
    sub_1A78D6484();
    swift_allocError();
    *v18 = v17;
    *(v18 + 4) = 0;
    swift_willThrow();
    *(v15 + 16) = a6;

    sub_1A78C0AFC(a1, a2);

    goto LABEL_12;
  }

  *(v15 + 16) = a6;
  v20 = sub_1A78C0DCC(v15);
  v22 = v21;

  result = ccsha3_256_di();
  if (result)
  {
    v23 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v25 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v23;
    *(inited + 24) = v25;
    *&v62 = inited;
    sub_1A78C0990(v20, v22);
    sub_1A791D828(v20, v22);
    v59 = v22;
    v60 = v20;
    sub_1A78C0AFC(v20, v22);
    sub_1A78BD4B0(&v64);

    v26 = v64;
    a6 = *(&v65 + 1);
    v27 = v65;
    if ((a3[2] & 1) == 0)
    {
      v28 = a3[1];
      v64 = *a3;
      v65 = v28;
      v62 = v26;
      v63 = __PAIR128__(a6, v27);
      sub_1A78CBAB0(&v62, &v64, &v64, v66, v61);
      if (LOBYTE(v61[0]) != 1)
      {
        sub_1A78C0AFC(a1, a2);
        sub_1A78D6484();
        swift_allocError();
        *v51 = 4;
        *(v51 + 4) = 1;
        swift_willThrow();
        v12 = v59;
        v11 = v60;
        goto LABEL_3;
      }
    }

    *(&v65 + 1) = &type metadata for SHA3_256Digest;
    v66[0] = sub_1A790CAC0();
    v29 = swift_allocObject();
    *&v64 = v29;
    *(v29 + 16) = v26;
    *(v29 + 32) = v27;
    *(v29 + 40) = a6;
    v30 = __swift_project_boxed_opaque_existential_1(&v64, &type metadata for SHA3_256Digest);
    v31 = v30[1];
    v62 = *v30;
    v63 = v31;
    v32 = sub_1A793D698();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_1A793D638();
    __swift_destroy_boxed_opaque_existential_1(&v64);
    *(&v65 + 1) = MEMORY[0x1E6969080];
    v66[0] = MEMORY[0x1E6969078];
    *&v64 = a1;
    *(&v64 + 1) = a2;
    v35 = __swift_project_boxed_opaque_existential_1(&v64, MEMORY[0x1E6969080]);
    v36 = *v35;
    v37 = v35[1];
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        memset(v61, 0, 14);
        v39 = v61;
        goto LABEL_43;
      }

      v40 = *(v36 + 16);
      v41 = *(v36 + 24);
      v42 = sub_1A793D648();
      if (v42)
      {
        v43 = sub_1A793D678();
        if (__OFSUB__(v40, v43))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v42 += v40 - v43;
      }

      v44 = __OFSUB__(v41, v40);
      v45 = v41 - v40;
      if (!v44)
      {
        v46 = sub_1A793D668();
        if (v46 >= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = v46;
        }

        v48 = &v42[v47];
        if (v42)
        {
          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        goto LABEL_30;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!v38)
    {
      v61[0] = *v35;
      LOWORD(v61[1]) = v37;
      BYTE2(v61[1]) = BYTE2(v37);
      BYTE3(v61[1]) = BYTE3(v37);
      BYTE4(v61[1]) = BYTE4(v37);
      BYTE5(v61[1]) = BYTE5(v37);
      v39 = v61 + BYTE6(v37);
LABEL_43:
      sub_1A78C2D58(v61, v39, &v62);
      v50 = v60;
      goto LABEL_44;
    }

    v52 = v36;
    v53 = v36 >> 32;
    v54 = v53 - v52;
    if (v53 >= v52)
    {
      v42 = sub_1A793D648();
      if (!v42)
      {
LABEL_36:
        v56 = sub_1A793D668();
        if (v56 >= v54)
        {
          v57 = v54;
        }

        else
        {
          v57 = v56;
        }

        v58 = &v42[v57];
        if (v42)
        {
          v49 = v58;
        }

        else
        {
          v49 = 0;
        }

LABEL_30:
        sub_1A78C2D58(v42, v49, &v62);
        v50 = v60;
LABEL_44:
        sub_1A78C0AFC(v50, v59);
        a6 = v62;
        __swift_destroy_boxed_opaque_existential_1(&v64);
        goto LABEL_12;
      }

      v55 = sub_1A793D678();
      if (!__OFSUB__(v52, v55))
      {
        v42 += v52 - v55;
        goto LABEL_36;
      }

LABEL_49:
      __break(1u);
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1A7923348(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  v6 = a3;
  v18[0] = a1;
  v18[1] = a2;
  result = (a3)(a1, a2);
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  result = ccmldsa_seed_nbytes_params();
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      if (!result)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 == result)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  if (BYTE6(a2) == result)
  {
LABEL_9:
    do
    {
      result = v6();
      if (!result)
      {
        goto LABEL_21;
      }

      v15 = ccmldsa_sizeof_full_ctx();
      v6 = v18;
      v17 = MEMORY[0x1EEE9AC00](v15);
      result = sub_1A78C05E8(v17, a4);
      if (!v4)
      {
        return result;
      }

      result = swift_unexpectedError();
      __break(1u);
LABEL_12:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_19;
      }
    }

    while (HIDWORD(a1) - a1 == result);
  }

LABEL_16:
  sub_1A78D6484();
  swift_allocError();
  *v16 = 1;
  *(v16 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_1A79234B8@<X0>(uint64_t result@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  result = a2();
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = ccmldsa_pubkey_nbytes_params();
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1A793DB28();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  result = ccmldsa_public_ctx();
  if (!result)
  {
    goto LABEL_14;
  }

  v6 = ccmldsa_export_pubkey();
  if (v6)
  {
    v7 = v6;
    sub_1A78D6484();
    swift_allocError();
    *v8 = v7;
    *(v8 + 4) = 0;
    swift_willThrow();
    *(v5 + 16) = v4;
  }

  else
  {
    *(v5 + 16) = v4;
    v9 = sub_1A78C0DCC(v5);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
  }

  return result;
}

uint64_t sub_1A79235C8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a5())
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  ccmldsa_full_ctx_init();
  swift_beginAccess();
  v9 = *(a3 + 16);
  if (!ccrng())
  {
    goto LABEL_10;
  }

  result = ccmldsa_derive_key_from_seed();
  if (result)
  {
    v11 = result;
    sub_1A78D6484();
    swift_allocError();
    *v12 = v11;
    *(v12 + 4) = 0;
    result = swift_willThrow();
  }

  else
  {
    *a2 = a4;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A79236F0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4())
  {
LABEL_26:
    __break(1u);
  }

  ccmldsa_full_ctx_init();
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = ccrng();
      if (!result)
      {
        goto LABEL_28;
      }

      v8 = ccmldsa_derive_key_from_seed();
      if (v8)
      {
LABEL_21:
        v14 = v8;
        sub_1A78D6484();
        swift_allocError();
        *v15 = v14;
        *(v15 + 4) = 0;
        swift_willThrow();
      }

LABEL_22:
      result = sub_1A78C0AFC(a2, a3);
      v16 = *MEMORY[0x1E69E9840];
      return result;
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);

    v11 = sub_1A793D648();
    if (v11)
    {
      v12 = sub_1A793D678();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_24;
      }

      v11 += v9 - v12;
    }

    if (!__OFSUB__(v10, v9))
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    if (a2 >> 32 >= a2)
    {

      v11 = sub_1A793D648();
      if (!v11)
      {
LABEL_18:
        sub_1A793D668();
        sub_1A79117CC(v11);
        goto LABEL_22;
      }

      v13 = sub_1A793D678();
      if (!__OFSUB__(a2, v13))
      {
        v11 += a2 - v13;
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    __break(1u);
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    goto LABEL_14;
  }

  result = ccrng();
  if (result)
  {
    v8 = ccmldsa_derive_key_from_seed();
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A79239D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  v9 = sub_1A79118F4(a1, a3, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t MLDSA65.PrivateKey.seedRepresentation.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLDSA65.PrivateKey.publicKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1A78C0990(*v1, v3);
  v5 = sub_1A7923348(v4, v3, MEMORY[0x1E69E95A0], sub_1A7924D94);
  swift_beginAccess();
  v6 = *(v5 + 16);
  sub_1A79234B8(v5 + 32, MEMORY[0x1E69E95A0], &v13);
  sub_1A78C0AFC(v4, v3);

  v7 = v13;
  v8 = v14;
  sub_1A78C0990(v13, v14);
  if (ccmldsa65())
  {
    v9 = ccmldsa_sizeof_pub_ctx();
    v12 = MEMORY[0x1EEE9AC00](v9);
    v10 = sub_1A78C05E8(v12, sub_1A7924C60);
    sub_1A78C0AFC(v7, v8);
    result = sub_1A78C0AFC(v13, v14);
    *a1 = v10;
  }

  else
  {
    __break(1u);
    sub_1A78C0AFC(v4, v8);
    swift_unexpectedError();
    __break(1u);
    sub_1A78C0AFC(v13, v14);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7923E9C(uint64_t (*a1)(void))
{
  v2 = *v1;
  result = a1();
  if (result)
  {
    v4 = ccmldsa_pubkey_nbytes_params();
    v6[0] = sub_1A78CC5A0(v4);
    v6[1] = v5;
    sub_1A78CC640(v6, 0);
    sub_1A7924820(v6);
    return v6[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1A7924010@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t)@<X1>, void (*a3)(void *, uint64_t *)@<X2>, void *a4@<X8>))(void *, uint64_t *)
{
  result = sub_1A7922780(a1, a2, a1, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1A7924084@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v30 = a8;
  if (*a2)
  {
    result = a5();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = ccmldsa_pubkey_nbytes_params();
    v28 = sub_1A78CC5A0(v15);
    v29 = v16;
    sub_1A78CC640(&v28, 0);
    sub_1A7924820(&v28);
    v17 = v29;
    v18 = v28;
  }

  else
  {
    v18 = 0;
    v17 = 0xF000000000000000;
  }

  v19 = sub_1A7911C54(a1, v18, v17, a6, a3, a7, a4);
  if (v8)
  {
    sub_1A78CEEC8(v18, v17);
    return (*(*(a3 - 8) + 8))(a1, a3);
  }

  else
  {
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    sub_1A78CEEC8(v18, v17);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    v27 = v30;
    *v30 = v23;
    v27[1] = v24;
    v27[2] = v25;
    v27[3] = v26;
  }

  return result;
}

uint64_t MLDSA87.PrivateKey.publicKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1A78C0990(*v1, v3);
  v5 = sub_1A7923348(v4, v3, MEMORY[0x1E69E95A8], sub_1A7924D30);
  swift_beginAccess();
  v6 = *(v5 + 16);
  sub_1A79234B8(v5 + 32, MEMORY[0x1E69E95A8], &v13);
  sub_1A78C0AFC(v4, v3);

  v7 = v13;
  v8 = v14;
  sub_1A78C0990(v13, v14);
  if (ccmldsa87())
  {
    v9 = ccmldsa_sizeof_pub_ctx();
    v12 = MEMORY[0x1EEE9AC00](v9);
    v10 = sub_1A78C05E8(v12, sub_1A7924C98);
    sub_1A78C0AFC(v7, v8);
    result = sub_1A78C0AFC(v13, v14);
    *a1 = v10;
  }

  else
  {
    __break(1u);
    sub_1A78C0AFC(v4, v8);
    swift_unexpectedError();
    __break(1u);
    sub_1A78C0AFC(v13, v14);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79244AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, uint64_t *a7@<X8>)
{
  if (!a4())
  {
    goto LABEL_12;
  }

  v14 = ccmldsa_seed_nbytes_params();
  v15 = *(*(*(a3 + 8) + 8) + 8);
  v16 = sub_1A793DB98();
  if (__OFADD__(v14, 32))
  {
    __break(1u);
  }

  else
  {
    if (v16 != v14 + 32)
    {
      sub_1A78D6484();
      swift_allocError();
      *v30 = 1;
      *(v30 + 4) = 1;
      swift_willThrow();
      return (*(*(a2 - 8) + 8))(a1, a2);
    }

    v46 = a6;
    v39 = a7;
    a3 = *(v15 + 8);
    v17 = sub_1A78C7370(a1, a2, a3);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_1A793D818();
      v40 = v22;
      v41 = v21;
      sub_1A78C0AFC(v19, v20);
      a3 = sub_1A78C7370(a1, a2, a3);
      v24 = v23;
      if (sub_1A793DB98() >= v14)
      {
        v25 = sub_1A793D818();
        v27 = v26;
        sub_1A78C0AFC(a3, v24);
        sub_1A78C0990(v25, v27);
        v28 = sub_1A791EBC0(v25, v27);
        sub_1A78BDA88((v28 + 32), v28 + 32 + *(v28 + 16), v42);
        a3 = v7;
        if (!v7)
        {
          v29 = v43;

          v44[1] = v42[1];
          v44[0] = v42[0];
          v45 = v29;
          v31 = sub_1A7922E04(v41, v40, v44, a5, v46, a5);
          v33 = v32;
          v35 = v34;
          v37 = v36;
          (*(*(a2 - 8) + 8))(a1, a2);
          result = sub_1A78C0AFC(v25, v27);
          *v39 = v31;
          v39[1] = v33;
          v39[2] = v35;
          v39[3] = v37;
          return result;
        }

        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  result = MEMORY[0x1AC55E410](a3);
  __break(1u);
  return result;
}

uint64_t _s9CryptoKit7MLDSA65O10PrivateKeyV30integrityCheckedRepresentation10Foundation4DataVvg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v10 = v1;
  v11 = v2;
  v9[3] = MEMORY[0x1E6969080];
  v9[4] = MEMORY[0x1E6969078];
  v9[0] = v4;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x1E6969080]);
  v6 = *v5;
  v7 = v5[1];
  sub_1A78C0990(v1, v2);
  sub_1A78C0990(v4, v3);
  sub_1A7900C14(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v10;
}

uint64_t sub_1A7924820(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1A78C0AFC(v5, v4);
      LOWORD(v19) = v4;
      BYTE2(v19) = BYTE2(v4);
      HIBYTE(v19) = BYTE3(v4);
      LOBYTE(v20) = BYTE4(v4);
      HIBYTE(v20) = BYTE5(v4);
      result = ccmldsa_export_pubkey();
      if (!result)
      {
        *a1 = v5;
        a1[1] = v19 | ((v20 | (BYTE6(v4) << 16)) << 32);
LABEL_24:
        v18 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A78C0AFC(v5, v4);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    v2 = v5;
    v1 = v5 >> 32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      if (v1 < v2)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      result = sub_1A793D648();
      if (result)
      {
        if (__OFSUB__(v2, sub_1A793D678()))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_1A793D668();
        v17 = ccmldsa_export_pubkey();

        if (v17)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v11 = v12 | 0x4000000000000000;
        *a1 = v5;
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    if (v1 < v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v5, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

LABEL_17:
    v13 = sub_1A793D698();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1A793D628();

    v12 = v16;
    goto LABEL_18;
  }

  if (v6 != 2)
  {
    result = ccmldsa_export_pubkey();
    if (!result)
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = *a1;

  sub_1A78C0AFC(v5, v4);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  sub_1A793D6D8();
  v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v10 = *(v5 + 16);
  result = sub_1A793D648();
  if (result)
  {
    if (__OFSUB__(v10, sub_1A793D678()))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1A793D668();
    result = ccmldsa_export_pubkey();
    if (result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = v9 | 0x8000000000000000;
    *a1 = v5;
LABEL_23:
    a1[1] = v11;
    goto LABEL_24;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A7924C18(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = *a1;
  if (result)
  {
    result = sub_1A79236F0(result, *a3, *(a3 + 8), a5);
    if (!v5)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7924E08(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1A78C2BF8(v5 + 32, v5 + 32 + *(v5 + 16), v8);
    v6 = v8[0];

    *v1 = v6;
    v5 = v6;
  }

  swift_beginAccess();
  return a1(v5 + 32, v5 + 32 + *(v5 + 16));
}

uint64_t MLKEM768.PublicKey.rawRepresentation.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9580];

  return sub_1A79259AC(v1);
}

uint64_t MLKEM768.PublicKey.encapsulate()@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7925AB8(MEMORY[0x1E69E9580], a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7924FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7925BB8(MEMORY[0x1E69E9580], a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static MLKEM768.PrivateKey.generate()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7925CCC(MEMORY[0x1E69E9580], sub_1A7927ED4, a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MLKEM768.PrivateKey.init<A>(seedRepresentation:publicKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1A7925DE4(a1, a2, a3, a4, MEMORY[0x1E69E9580], &type metadata for MLKEM768, &protocol witness table for MLKEM768, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MLKEM768.PrivateKey.seedRepresentation.getter()
{
  v1 = *v0;
  sub_1A78C0990(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLKEM768.PrivateKey.decapsulate<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  return sub_1A7932894(a1, *v4, v4[1], &type metadata for MLKEM768, a2, &protocol witness table for MLKEM768, a4, a3);
}

uint64_t MLKEM768.PrivateKey.publicKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A79251EC(*v1, v1[1], MEMORY[0x1E69E9580], sub_1A7927ED4, MEMORY[0x1E69E9580], sub_1A7927DE4, a1);
}

uint64_t sub_1A79251EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, void (*a4)(void *, uint64_t *)@<X5>, uint64_t (*a5)(uint64_t)@<X6>, void (*a6)(void *, uint64_t *)@<X7>, unint64_t *a7@<X8>)
{
  v10 = sub_1A7926844(a1, a2, a3, a4);
  v12 = v11;
  v18 = v11;
  v13 = sub_1A78C0990(v10, v11);
  if (a5(v13))
  {
    v14 = cckem_sizeof_pub_ctx();
    v17 = MEMORY[0x1EEE9AC00](v14);
    v15 = sub_1A78C05E8(v17, a6);
    sub_1A78C0AFC(v10, v12);
    result = sub_1A78C0AFC(v10, v18);
    *a7 = v15;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    sub_1A78C0AFC(v10, v18);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A792534C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t *))
{
  v8 = a2;
  v9 = a1;
  v52[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1A7926844(a1, a2, a4, a5);
  if (v6)
  {
    v12 = v9;
    v13 = v8;
LABEL_3:
    sub_1A78C0AFC(v12, v13);
LABEL_31:
    v45 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v14 = v10;
  v15 = v11;
  result = ccsha3_256_di();
  if (result)
  {
    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v19 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v17;
    *(inited + 24) = v19;
    *&v48 = inited;
    sub_1A78C0990(v14, v15);
    sub_1A791D828(v14, v15);
    v46 = v15;
    sub_1A78C0AFC(v14, v15);
    sub_1A78BD4B0(&v50);

    v20 = v50;
    v5 = *(&v51 + 1);
    v21 = v51;
    if ((a3[2] & 1) != 0 || (v22 = a3[1], v50 = *a3, v51 = v22, v48 = v20, v49 = __PAIR128__(v5, v21), sub_1A78CBAB0(&v48, &v50, &v50, v52, v47), LOBYTE(v47[0]) == 1))
    {
      *(&v51 + 1) = &type metadata for SHA3_256Digest;
      v52[0] = sub_1A790CAC0();
      v23 = swift_allocObject();
      *&v50 = v23;
      *(v23 + 16) = v20;
      *(v23 + 32) = v21;
      *(v23 + 40) = v5;
      v24 = __swift_project_boxed_opaque_existential_1(&v50, &type metadata for SHA3_256Digest);
      v25 = v24[1];
      v48 = *v24;
      v49 = v25;
      v26 = sub_1A793D698();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      sub_1A793D638();
      __swift_destroy_boxed_opaque_existential_1(&v50);
      *(&v51 + 1) = MEMORY[0x1E6969080];
      v52[0] = MEMORY[0x1E6969078];
      *&v50 = v9;
      *(&v50 + 1) = v8;
      v29 = __swift_project_boxed_opaque_existential_1(&v50, MEMORY[0x1E6969080]);
      v30 = *v29;
      v9 = v29[1];
      v31 = v9 >> 62;
      if ((v9 >> 62) <= 1)
      {
        if (!v31)
        {
          v47[0] = *v29;
          LOWORD(v47[1]) = v9;
          BYTE2(v47[1]) = BYTE2(v9);
          BYTE3(v47[1]) = BYTE3(v9);
          BYTE4(v47[1]) = BYTE4(v9);
          BYTE5(v47[1]) = BYTE5(v9);
          v32 = v47 + BYTE6(v9);
          v33 = v47;
LABEL_30:
          sub_1A78C2D58(v33, v32, &v48);
          sub_1A78C0AFC(v14, v46);
          v5 = v48;
          __swift_destroy_boxed_opaque_existential_1(&v50);
          goto LABEL_31;
        }

        v39 = v30;
        v40 = v30 >> 32;
        v5 = v40 - v39;
        if (v40 >= v39)
        {
          v8 = sub_1A793D648();
          if (!v8)
          {
LABEL_22:
            v42 = sub_1A793D668();
            if (v42 >= v5)
            {
              v43 = v5;
            }

            else
            {
              v43 = v42;
            }

            v44 = (v43 + v8);
            if (v8)
            {
              v32 = v44;
            }

            else
            {
              v32 = 0;
            }

            v33 = v8;
            goto LABEL_30;
          }

          v41 = sub_1A793D678();
          if (!__OFSUB__(v39, v41))
          {
            v8 += v39 - v41;
            goto LABEL_22;
          }

LABEL_34:
          __break(1u);
        }

        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v31 != 2)
      {
        memset(v47, 0, 14);
        v33 = v47;
        v32 = v47;
        goto LABEL_30;
      }

      v34 = *(v30 + 16);
      v35 = *(v30 + 24);
      v8 = sub_1A793D648();
      if (v8)
      {
        v36 = sub_1A793D678();
        if (__OFSUB__(v34, v36))
        {
          goto LABEL_33;
        }

        v8 += v34 - v36;
      }

      v37 = __OFSUB__(v35, v34);
      v5 = v35 - v34;
      if (!v37)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    sub_1A78C0AFC(v9, v8);
    sub_1A790CA04();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    v13 = v46;
    v12 = v14;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7925758@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7926408(MEMORY[0x1E69E9580], sub_1A7927ED4, a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7925824@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A79251EC(*v1, v1[1], MEMORY[0x1E69E9580], sub_1A7927ED4, MEMORY[0x1E69E9580], sub_1A7927DE4, a1);
}

uint64_t sub_1A79258AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  v9 = sub_1A7934078(a1, a3, a2, a4);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t MLKEM1024.PublicKey.rawRepresentation.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9578];

  return sub_1A79259AC(v1);
}

uint64_t sub_1A79259AC(uint64_t (*a1)(void))
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!a1())
  {
    __break(1u);
  }

  v3 = cckem_pubkey_nbytes_info();
  v7[0] = sub_1A78CC5A0(v3);
  v7[1] = v4;
  sub_1A78CC640(v7, 0);
  sub_1A790C51C(v7);
  result = v7[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MLKEM1024.PublicKey.encapsulate()@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7925AB8(MEMORY[0x1E69E9578], a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7925AB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  if (!ccrng())
  {
    __break(1u);
  }

  result = sub_1A792666C(v5 + 32, a1, a2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7925B58@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7925BB8(MEMORY[0x1E69E9578], a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7925BB8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  if (!ccrng())
  {
    __break(1u);
  }

  result = sub_1A792666C(v5 + 32, a1, a2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static MLKEM1024.PrivateKey.generate()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7925CCC(MEMORY[0x1E69E9578], sub_1A7927EBC, a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7925CCC@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void *, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = ccrng();
  if (!v7)
  {
    __break(1u);
  }

  result = sub_1A79269E4(v7, a1, a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v9;
    a3[2] = v10;
    a3[3] = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MLKEM1024.PrivateKey.init<A>(seedRepresentation:publicKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1A7925DE4(a1, a2, a3, a4, MEMORY[0x1E69E9578], &type metadata for MLKEM1024, &protocol witness table for MLKEM1024, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7925DE4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    result = a5();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = cckem_pubkey_nbytes_info();
    v29 = sub_1A78CC5A0(v15);
    v30 = v16;
    sub_1A78CC640(&v29, 0);
    sub_1A790C51C(&v29);
    v17 = v30;
    v18 = v29;
  }

  else
  {
    v18 = 0;
    v17 = 0xF000000000000000;
  }

  v19 = sub_1A79343D8(a1, v18, v17, a6, a3, a7, a4);
  if (v8)
  {
    sub_1A78CEEC8(v18, v17);
    result = (*(*(a3 - 8) + 8))(a1, a3);
  }

  else
  {
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    sub_1A78CEEC8(v18, v17);
    result = (*(*(a3 - 8) + 8))(a1, a3);
    *a8 = v23;
    a8[1] = v24;
    a8[2] = v25;
    a8[3] = v26;
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MLKEM1024.PrivateKey.decapsulate<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4[2];
  v6 = v4[3];
  return sub_1A7932894(a1, *v4, v4[1], &type metadata for MLKEM1024, a2, &protocol witness table for MLKEM1024, a4, a3);
}

uint64_t MLKEM1024.PrivateKey.publicKey.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A79251EC(*v1, v1[1], MEMORY[0x1E69E9578], sub_1A7927EBC, MEMORY[0x1E69E9578], sub_1A7927DC8, a1);
}

uint64_t sub_1A7926090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void *, uint64_t *)@<X5>, uint64_t *a7@<X8>)
{
  v14 = *(*(*(a3 + 8) + 8) + 8);
  v15 = sub_1A793DB98();
  if (!a4())
  {
    goto LABEL_14;
  }

  v16 = cckem_seed_nbytes_info();
  if (__OFADD__(v16, 32))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 != v16 + 32)
  {
    sub_1A790CA04();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  v41 = a5;
  v46 = a6;
  v17 = *(v14 + 8);
  v15 = sub_1A78C7370(a1, a2, v17);
  v19 = v18;
  if (!a4())
  {
    goto LABEL_15;
  }

  if (cckem_seed_nbytes_info() < 0)
  {
    goto LABEL_12;
  }

  v39 = a7;
  v40 = sub_1A793D818();
  v21 = v20;
  sub_1A78C0AFC(v15, v19);
  v22 = sub_1A78C7370(a1, a2, v17);
  v15 = v23;
  if (a4())
  {
    v24 = cckem_seed_nbytes_info();
    if (sub_1A793DB98() >= v24)
    {
      v25 = sub_1A793D818();
      v27 = v26;
      sub_1A78C0AFC(v22, v15);
      sub_1A78C0990(v25, v27);
      v28 = sub_1A791EBC0(v25, v27);
      sub_1A78BDA88((v28 + 32), v28 + 32 + *(v28 + 16), v42);
      v15 = v7;
      if (!v7)
      {
        v29 = v43;

        v44[1] = v42[1];
        v44[0] = v42[0];
        v45 = v29;
        v31 = sub_1A792534C(v40, v21, v44, v41, v46);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        (*(*(a2 - 8) + 8))(a1, a2);
        result = sub_1A78C0AFC(v25, v27);
        *v39 = v31;
        v39[1] = v33;
        v39[2] = v35;
        v39[3] = v37;
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = MEMORY[0x1AC55E410](v15);
  __break(1u);
  return result;
}

uint64_t sub_1A7926394@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A7926408(MEMORY[0x1E69E9578], sub_1A7927EBC, a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7926408@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(void *, uint64_t *)@<X3>, uint64_t *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = ccrng();
  if (!v7)
  {
    __break(1u);
  }

  result = sub_1A79269E4(v7, a1, a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v9;
    a3[2] = v10;
    a3[3] = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7926508@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t)@<X4>, void (*a4)(void *, uint64_t *)@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t (*a6)(uint64_t, uint64_t)@<X7>, uint64_t *a7@<X8>)
{
  v18 = *v7;
  if (a3(a1, a2))
  {
    v15 = cckem_sizeof_full_ctx();
    v17 = MEMORY[0x1EEE9AC00](v15);
    sub_1A78C05E8(v17, a4);
    if (!v8)
    {
      sub_1A7926F58(a1, a2, a5, a6, a7);
    }
  }

  else
  {
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A792660C@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1A79251EC(*v1, v1[1], MEMORY[0x1E69E9578], sub_1A7927EBC, MEMORY[0x1E69E9578], sub_1A7927DC8, a1);
}

uint64_t sub_1A792666C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  result = a2();
  if (result)
  {
    result = cckem_shared_key_nbytes_info();
    v8 = result;
    if (qword_1ED5F8A30 != -1)
    {
      result = swift_once();
    }

    v9 = off_1ED5F8A18;
    *&v20 = off_1ED5F8A18;
    if (!v8)
    {

      if ((a2)(v17))
      {
LABEL_7:
        v11 = cckem_encapsulated_key_nbytes_info();
        *&v20 = sub_1A78CC5A0(v11);
        *(&v20 + 1) = v12;
        sub_1A78CC640(&v20, 0);
        v21 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          swift_beginAccess();
          sub_1A78C2BF8((v9 + 4), v9 + v9[2] + 32, &v19);
          v13 = v19;

          v9 = v13;
        }

        swift_beginAccess();
        v14 = v9[2];
        sub_1A7927360(&v21, a1, (v9 + 4));
        if (v3)
        {

          v16 = *(&v21 + 1);
          v15 = v21;
          return sub_1A78C0AFC(v15, v16);
        }

LABEL_13:
        v18 = v21;
        *a3 = v9;
        *(a3 + 8) = v18;
        sub_1A78C0990(v18, *(&v18 + 1));
        v16 = v18 >> 64;
        v15 = v18;
        return sub_1A78C0AFC(v15, v16);
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {

      v10 = sub_1A78E00C8(v8, 0);
      v9 = v20;
      if ((a2)(v10))
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7926844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3())
  {
    goto LABEL_13;
  }

  v7 = cckem_sizeof_full_ctx();
  v14 = MEMORY[0x1EEE9AC00](v7);
  sub_1A78C05E8(v14, a4);
  if (!v4)
  {
    if (!a3())
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = cckem_pubkey_nbytes_info();
    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = v8;
      if (v8)
      {
        v10 = sub_1A793DB28();
        *(v10 + 16) = v9;
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      if (!cckem_public_ctx())
      {
LABEL_15:
        __break(1u);
      }

      if (!cckem_export_pubkey())
      {
        *(v10 + 16) = v9;
        v11 = sub_1A78C0DCC(v10);

        v12 = *MEMORY[0x1E69E9840];
        return v11;
      }
    }

    __break(1u);
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A79269E4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(void *, uint64_t *))
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a2())
  {
    goto LABEL_52;
  }

  v8 = cckem_seed_nbytes_info();
  *&v68 = sub_1A78CC5A0(v8);
  *(&v68 + 1) = v9;
  v10 = sub_1A78CC640(&v68, 0);
  v71 = v68;
  if (!(a2)(v10))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  v11 = cckem_sizeof_full_ctx();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v12 = v11;
  if (HIDWORD(v11))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v62 = a3;
  v63 = a4;
  if (v11)
  {
    v13 = (v11 - 1) | ((v11 - 1) >> 1) | (((v11 - 1) | ((v11 - 1) >> 1)) >> 2);
    v14 = v13 | (v13 >> 4) | ((v13 | (v13 >> 4)) >> 8);
    v15 = v14 | HIWORD(v14);
    if (v15 == -1)
    {
      v16 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = (v15 + 1);
    }
  }

  else
  {
    v16 = 1;
  }

  type metadata accessor for SecureBytes.Backing();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v16;
  v18 = _swift_stdlib_malloc_size(v17);
  sub_1A78C0CEC(v12, (v17 + 4), v17 + v18);
  if (!v19)
  {
    goto LABEL_54;
  }

  v20 = v19;

  if (!(a2)(v21))
  {
    goto LABEL_55;
  }

  cckem_full_ctx_init();
  sub_1A792781C(&v71);
  if (v4)
  {

    sub_1A78C0AFC(v71, *(&v71 + 1));
LABEL_15:
    v23 = *MEMORY[0x1E69E9840];
    return v20;
  }

  swift_beginAccess();
  v17[2] = v12;

  v22 = v71;
  sub_1A78C0990(v71, *(&v71 + 1));
  v25 = sub_1A7926844(v22, *(&v22 + 1), v62, v63);
  v27 = v26;
  result = ccsha3_256_di();
  if (result)
  {
    v28 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7130, &unk_1A7942DE0);
    inited = swift_initStackObject();
    getDigestSizeForDigestInfo();
    v30 = swift_slowAlloc();
    ccdigest_init();
    *(inited + 16) = v28;
    *(inited + 24) = v30;
    *&v67[0] = inited;
    sub_1A78C0990(v25, v27);
    sub_1A791D828(v25, v27);
    sub_1A78C0AFC(v25, v27);
    sub_1A78BD4B0(&v68);

    v31 = sub_1A790CAC0();
    v64 = v69;
    v65 = v68;
    *(&v69 + 1) = &type metadata for SHA3_256Digest;
    v70 = v31;
    v32 = swift_allocObject();
    *&v68 = v32;
    *(v32 + 16) = v65;
    *(v32 + 32) = v64;
    v33 = __swift_project_boxed_opaque_existential_1(&v68, &type metadata for SHA3_256Digest);
    v34 = v33[1];
    v67[0] = *v33;
    v67[1] = v34;
    v35 = sub_1A793D698();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1A793D638();
    __swift_destroy_boxed_opaque_existential_1(&v68);
    *(&v69 + 1) = MEMORY[0x1E6969080];
    v70 = MEMORY[0x1E6969078];
    v68 = v22;
    v38 = __swift_project_boxed_opaque_existential_1(&v68, MEMORY[0x1E6969080]);
    v39 = *v38;
    v40 = v38[1];
    v41 = v40 >> 62;
    if ((v40 >> 62) > 1)
    {
      if (v41 != 2)
      {
        memset(v66, 0, 14);
        v43 = v66;
        v42 = v66;
        goto LABEL_44;
      }

      v44 = *(v39 + 16);
      v45 = *(v39 + 24);
      v46 = sub_1A793D648();
      if (v46)
      {
        v47 = sub_1A793D678();
        if (__OFSUB__(v44, v47))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v46 += v44 - v47;
      }

      v48 = __OFSUB__(v45, v44);
      v49 = v45 - v44;
      if (!v48)
      {
        v50 = sub_1A793D668();
        if (v50 >= v49)
        {
          v51 = v49;
        }

        else
        {
          v51 = v50;
        }

        v52 = &v46[v51];
        if (v46)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        sub_1A78C2D58(v46, v53, v67);
        sub_1A78C0AFC(v25, v27);
        goto LABEL_45;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (!v41)
    {
      v66[0] = *v38;
      LOWORD(v66[1]) = v40;
      BYTE2(v66[1]) = BYTE2(v40);
      BYTE3(v66[1]) = BYTE3(v40);
      BYTE4(v66[1]) = BYTE4(v40);
      BYTE5(v66[1]) = BYTE5(v40);
      v42 = v66 + BYTE6(v40);
      v43 = v66;
LABEL_44:
      sub_1A78C2D58(v43, v42, v67);
      sub_1A78C0AFC(v25, v27);
LABEL_45:
      v20 = *&v67[0];
      __swift_destroy_boxed_opaque_existential_1(&v68);
      sub_1A78C0AFC(v22, *(&v22 + 1));
      goto LABEL_15;
    }

    v54 = v39;
    v55 = v39 >> 32;
    v56 = v55 - v54;
    if (v55 >= v54)
    {
      v57 = sub_1A793D648();
      if (!v57)
      {
LABEL_36:
        v59 = sub_1A793D668();
        if (v59 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v59;
        }

        v61 = (v60 + v57);
        if (v57)
        {
          v42 = v61;
        }

        else
        {
          v42 = 0;
        }

        v43 = v57;
        goto LABEL_44;
      }

      v58 = sub_1A793D678();
      if (!__OFSUB__(v54, v58))
      {
        v57 += v54 - v58;
        goto LABEL_36;
      }

      goto LABEL_51;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

void *sub_1A7926F58@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  result = a3();
  if (!result)
  {
    goto LABEL_13;
  }

  v11 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v13[0] = off_1ED5F8A18;
  if (!v11)
  {

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1A78E00C8(v11, 0);
  v12 = v13[0];
LABEL_8:
  v14 = v12;
  v13[3] = MEMORY[0x1E6969080];
  v13[4] = MEMORY[0x1E6969078];
  v13[0] = a1;
  v13[1] = a2;
  MEMORY[0x1EEE9AC00](v12);
  sub_1A78C0990(a1, a2);
  sub_1A7924E08(a4);
  if (v5)
  {
  }

  else
  {
    *a5 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1A79270CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a4())
  {
LABEL_26:
    __break(1u);
  }

  cckem_full_ctx_init();
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = ccrng();
      if (!result)
      {
        goto LABEL_28;
      }

      v8 = cckem_derive_key_from_seed();
      if (v8)
      {
LABEL_21:
        v14 = v8;
        sub_1A78D6484();
        swift_allocError();
        *v15 = v14;
        *(v15 + 4) = 0;
        swift_willThrow();
      }

LABEL_22:
      result = sub_1A78C0AFC(a2, a3);
      v16 = *MEMORY[0x1E69E9840];
      return result;
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);

    v11 = sub_1A793D648();
    if (v11)
    {
      v12 = sub_1A793D678();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_24;
      }

      v11 += v9 - v12;
    }

    if (!__OFSUB__(v10, v9))
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    if (a2 >> 32 >= a2)
    {

      v11 = sub_1A793D648();
      if (!v11)
      {
LABEL_18:
        sub_1A793D668();
        sub_1A7933F50(v11);
        goto LABEL_22;
      }

      v13 = sub_1A793D678();
      if (!__OFSUB__(a2, v13))
      {
        v11 += a2 - v13;
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    __break(1u);
    __break(1u);
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6)
  {
    goto LABEL_14;
  }

  result = ccrng();
  if (result)
  {
    v8 = cckem_derive_key_from_seed();
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1A7927360(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v32 = *MEMORY[0x1E69E9840];
  v6 = *result;
  v5 = result[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      if (a3)
      {
        result = cckem_encapsulate();
        if (result)
        {
          v20 = result;
          sub_1A78D6484();
          swift_allocError();
          *v21 = v20;
          *(v21 + 4) = 0;
          result = swift_willThrow();
        }

        goto LABEL_32;
      }

      goto LABEL_41;
    }

    sub_1A78C0AFC(v6, v5);
    *v4 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v11 = v6;
    v10 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v6 + 16);
    v13 = *(v11 + 24);
    result = sub_1A793D648();
    if (!result)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (!__OFSUB__(v12, sub_1A793D678()))
    {
      if (!__OFSUB__(v13, v12))
      {
        result = sub_1A793D668();
        if (!a3)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        result = cckem_encapsulate();
        if (result)
        {
          v14 = result;
          sub_1A78D6484();
          swift_allocError();
          *v15 = v14;
          *(v15 + 4) = 0;
          result = swift_willThrow();
        }

        v16 = v10 | 0x8000000000000000;
        *v4 = v11;
LABEL_31:
        v4[1] = v16;
LABEL_32:
        v29 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v7)
  {
    result = sub_1A78C0AFC(v6, v5);
    LOWORD(v30) = v5;
    BYTE2(v30) = BYTE2(v5);
    HIBYTE(v30) = BYTE3(v5);
    LOBYTE(v31) = BYTE4(v5);
    HIBYTE(v31) = BYTE5(v5);
    if (a3)
    {
      result = cckem_encapsulate();
      if (result)
      {
        v8 = result;
        sub_1A78D6484();
        swift_allocError();
        *v9 = v8;
        *(v9 + 4) = 0;
        result = swift_willThrow();
      }

      *v4 = v6;
      v4[1] = v30 | ((v31 | (BYTE6(v5) << 16)) << 32);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_40;
  }

  v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v6, v5);
  *v4 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v6 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v19 < v6)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (sub_1A793D648() && __OFSUB__(v6, sub_1A793D678()))
    {
LABEL_38:
      __break(1u);
    }

    v22 = sub_1A793D698();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_1A793D628();

    v17 = v25;
    v19 = v6 >> 32;
  }

  if (v19 < v6)
  {
    goto LABEL_34;
  }

  result = sub_1A793D648();
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (__OFSUB__(v6, sub_1A793D678()))
  {
    goto LABEL_36;
  }

  result = sub_1A793D668();
  if (a3)
  {
    v26 = cckem_encapsulate();
    if (v26)
    {
      v27 = v26;
      sub_1A78D6484();
      swift_allocError();
      *v28 = v27;
      *(v28 + 4) = 0;
      swift_willThrow();
    }

    v16 = v17 | 0x4000000000000000;
    *v4 = v6;
    goto LABEL_31;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1A792781C(uint64_t *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      result = cckem_generate_key_with_seed();
      if (result)
      {
        v16 = result;
        sub_1A78D6484();
        swift_allocError();
        *v17 = v16;
        *(v17 + 4) = 0;
        result = swift_willThrow();
      }

      goto LABEL_27;
    }

    v8 = *a1;

    sub_1A78C0AFC(v3, v2);
    *a1 = xmmword_1A793F230;
    sub_1A78C0AFC(0, 0xC000000000000000);
    sub_1A793D6D8();
    v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = *(v3 + 16);
    result = sub_1A793D648();
    if (!result)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v10, sub_1A793D678()))
    {
      sub_1A793D668();
      result = cckem_generate_key_with_seed();
      if (result)
      {
        v11 = result;
        sub_1A78D6484();
        swift_allocError();
        *v12 = v11;
        *(v12 + 4) = 0;
        result = swift_willThrow();
      }

      *a1 = v3;
      a1[1] = v9 | 0x8000000000000000;
      goto LABEL_27;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v4)
  {
    sub_1A78C0AFC(v3, v2);
    LOWORD(v26) = v2;
    BYTE2(v26) = BYTE2(v2);
    HIBYTE(v26) = BYTE3(v2);
    LOBYTE(v27) = BYTE4(v2);
    HIBYTE(v27) = BYTE5(v2);
    result = cckem_generate_key_with_seed();
    if (result)
    {
      v6 = result;
      sub_1A78D6484();
      swift_allocError();
      *v7 = v6;
      *(v7 + 4) = 0;
      result = swift_willThrow();
    }

    *a1 = v3;
    a1[1] = v26 | ((v27 | (BYTE6(v2) << 16)) << 32);
LABEL_27:
    v25 = *MEMORY[0x1E69E9840];
    return result;
  }

  v13 = v2 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v3, v2);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v3 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v15 < v3)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1A793D648() && __OFSUB__(v3, sub_1A793D678()))
    {
LABEL_32:
      __break(1u);
    }

    v18 = sub_1A793D698();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1A793D628();

    v13 = v21;
    v15 = v3 >> 32;
  }

  if (v15 < v3)
  {
    goto LABEL_29;
  }

  result = sub_1A793D648();
  if (result)
  {
    if (!__OFSUB__(v3, sub_1A793D678()))
    {
      sub_1A793D668();
      key_with_seed = cckem_generate_key_with_seed();
      if (key_with_seed)
      {
        v23 = key_with_seed;
        sub_1A78D6484();
        swift_allocError();
        *v24 = v23;
        *(v24 + 4) = 0;
        swift_willThrow();
      }

      *a1 = v3;
      a1[1] = v13 | 0x4000000000000000;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1A7927C8C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = *a1;
  if (result)
  {
    result = sub_1A79270CC(result, *a3, *(a3 + 8), a5);
    if (!v5)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLKEM768.PrivateKey.init()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = static MLKEM768.PrivateKey.generate()(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MLKEM1024.PrivateKey.init()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  result = static MLKEM1024.PrivateKey.generate()(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Kyber768.PublicKey.dataRepresentation.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9570];

  return sub_1A79286F0(v1);
}

uint64_t Kyber768.PrivateKey.dataRepresentation.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9570];

  return sub_1A7928E68(v1);
}

uint64_t Kyber768.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9570];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1A79293A8(v1, sub_1A7929E7C, a1);
}

uint64_t sub_1A7928300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void *, uint64_t *)@<X4>, uint64_t *a5@<X8>)
{
  result = a3();
  if (result)
  {
    v11 = cckem_sizeof_pub_ctx();
    v13 = MEMORY[0x1EEE9AC00](v11);
    v12 = sub_1A78C0EA8(v13, a4);
    if (!v5)
    {
      *a5 = v12;
    }

    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A79283E0(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = a5();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = cckem_pub_ctx_init();
  v10 = *(a3 + 16);
  result = (a5)(v9);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v11 = result;
    sub_1A78D6484();
    swift_allocError();
    *v12 = v11;
    *(v12 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = a4;
  }

  return result;
}

uint64_t sub_1A79284B8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  result = *a1;
  if (result)
  {
    return sub_1A7928508(result, a3, a2, a4, a5, a6, &v8, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7928508(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(void))
{
  result = a8();
  if (result)
  {
    v12 = cckem_pub_ctx_init();
    MEMORY[0x1EEE9AC00](v12);
    result = sub_1A793D6A8();
    if (v8)
    {
      *a7 = v8;
    }

    else
    {
      *a3 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A79285EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_import_pubkey();
  if (result)
  {
    v6 = result;
    sub_1A78D6484();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t Kyber1024.PublicKey.dataRepresentation.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9568];

  return sub_1A79286F0(v1);
}

uint64_t sub_1A79286F0(uint64_t (*a1)(void))
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  if (!a1())
  {
    __break(1u);
  }

  v3 = cckem_pubkey_nbytes_info();
  v7[0] = sub_1A78CC5A0(v3);
  v7[1] = v4;
  sub_1A78CC640(v7, 0);
  sub_1A790C51C(v7);
  result = v7[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A79287DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v10[3] = type metadata accessor for Rng();
  v10[4] = &off_1F1A796A0;
  v10[0] = swift_allocObject();
  sub_1A7928888(&v9, a1, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void *sub_1A7928888@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  result = a2();
  if (!result)
  {
    goto LABEL_13;
  }

  v10 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  *&v17 = off_1ED5F8A18;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v10, 0);
      v11 = v17;
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  v18 = v11;
  result = a2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = cckem_encapsulated_key_nbytes_info();
  *&v16 = sub_1A78CC5A0(v12);
  *(&v16 + 1) = v13;
  v14 = sub_1A78CC640(&v16, 0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v14);
  sub_1A7924E08(a3);
  if (v4)
  {

    result = sub_1A78C0AFC(v17, *(&v17 + 1));
    *a1 = v4;
  }

  else
  {
    v15 = v17;
    *a4 = v18;
    *(a4 + 8) = v15;
    sub_1A78C0990(v15, *(&v15 + 1));
    return sub_1A78C0AFC(v15, *(&v15 + 1));
  }

  return result;
}

uint64_t sub_1A7928A74@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v10[3] = type metadata accessor for Rng();
  v10[4] = &off_1F1A796A0;
  v10[0] = swift_allocObject();
  sub_1A7928888(&v9, a1, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1A7928B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, void (*a4)(void *, uint64_t *)@<X4>, unint64_t *a5@<X8>)
{
  result = a3();
  if (result)
  {
    v11 = cckem_sizeof_full_ctx();
    v13 = MEMORY[0x1EEE9AC00](v11);
    v12 = sub_1A78C05E8(v13, a4);
    if (!v5)
    {
      *a5 = v12;
    }

    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1A7928C40(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v7 = *result;
    result = sub_1A793D6A8();
    if (!v4)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7928CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!a4())
  {
    goto LABEL_17;
  }

  v7 = cckem_privkey_nbytes_info();
  if (!a4())
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = cckem_pubkey_nbytes_info();
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_19:
    result = a4();
    if (result)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 != a2 - a1)
  {
LABEL_13:
    v11 = 1;
    v12 = 1;
    goto LABEL_14;
  }

  result = a4();
  if (!result)
  {
    goto LABEL_20;
  }

  LODWORD(result) = cckem_import_privkey();
  if (!result)
  {
    result = cckem_public_ctx();
    if (result)
    {
      result = a4();
      if (result)
      {
        result = cckem_import_pubkey();
        if (!result)
        {
          return result;
        }

        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
      return result;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v11 = result;
  v12 = 0;
LABEL_14:
  sub_1A78D6484();
  swift_allocError();
  *v13 = v11;
  *(v13 + 4) = v12;
  return swift_willThrow();
}

uint64_t Kyber1024.PrivateKey.dataRepresentation.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9568];

  return sub_1A7928E68(v1);
}

uint64_t sub_1A7928E68(uint64_t (*a1)(void))
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  if (!a1())
  {
    goto LABEL_6;
  }

  v4 = cckem_privkey_nbytes_info();
  if (!a1())
  {
    goto LABEL_7;
  }

  v5 = cckem_pubkey_nbytes_info();
  v6 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v11[0] = sub_1A78CC5A0(v4 + v5);
  v11[1] = v7;
  sub_1A78CC640(v11, 0);
  v10 = v6;
  sub_1A7929970(v11, v3 + 32, &v10, v6);
  result = v11[0];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7928F80@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void *, uint64_t *)@<X1>, unint64_t *a3@<X8>)
{
  v11[3] = type metadata accessor for Rng();
  v11[4] = &off_1F1A796A0;
  v11[0] = swift_allocObject();
  result = a1();
  if (result)
  {
    v8 = cckem_sizeof_full_ctx();
    v10 = MEMORY[0x1EEE9AC00](v8);
    v9 = sub_1A78C05E8(v10, a2);
    if (!v3)
    {
      *a3 = v9;
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A7929054(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (*result)
  {
    result = a5();
    if (result)
    {
      cckem_full_ctx_init();
      v8 = a3[4];
      v9 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      MEMORY[0x1EEE9AC00](v9);
      return (*(v8 + 8))(a6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1A792916C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void **, uint64_t, unint64_t, void *)@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  swift_beginAccess();
  v12 = v11 + 32 + *(v11 + 16);
  return sub_1A7929200((v11 + 32), a1, a2, a3, a4, a5);
}

void *sub_1A7929200@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, void (*a5)(void **, uint64_t, unint64_t, void *)@<X5>, void *a6@<X8>)
{
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  result = a4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v12 = cckem_shared_key_nbytes_info();
  if (qword_1ED5F8A30 != -1)
  {
    swift_once();
  }

  result = off_1ED5F8A18;
  v14 = off_1ED5F8A18;
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {

      sub_1A78E00C8(v12, 0);
      v13 = v14;
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  v15 = v13;
  sub_1A78C0990(a2, a3);
  a5(&v15, a2, a3, v10);
  result = v15;
  if (v6)
  {
  }

  *a6 = v15;
  return result;
}

uint64_t Kyber1024.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E9568];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1A79293A8(v1, sub_1A7929F70, a1);
}

uint64_t sub_1A79293A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void *, uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *v3;
  if (!a1())
  {
    goto LABEL_12;
  }

  v8 = cckem_sizeof_pub_ctx();
  if (v8 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  v9 = v8;
  if (v8)
  {
    v10 = sub_1A793DB28();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
    goto LABEL_13;
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_11;
  }

  *(v10 + 16) = v9;
  if (!a1())
  {
    goto LABEL_14;
  }

  v11 = cckem_sizeof_pub_ctx();
  v15 = MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1A78C0EA8(v15, a2);

  *a3 = v12;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A7929530@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void *, uint64_t *)@<X3>, uint64_t *a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a2())
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v8 = cckem_sizeof_pub_ctx();
  if (v8 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  if (v8)
  {
    v10 = sub_1A793DB28();
    *(v10 + 16) = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
    goto LABEL_16;
  }

  v11 = cckem_export_pubkey();
  if (v11)
  {
    goto LABEL_13;
  }

  *(v10 + 16) = v9;
  if (!(a2)(v11, v12))
  {
    goto LABEL_17;
  }

  v13 = cckem_sizeof_pub_ctx();
  v18 = MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1A78C0EA8(v18, a3);
  if (v4)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v15 = v14;

    *a4 = v15;
    v17 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1A7929718@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(void *, uint64_t *)@<X3>, unint64_t *a3@<X8>)
{
  v11[3] = type metadata accessor for Rng();
  v11[4] = &off_1F1A796A0;
  v11[0] = swift_allocObject();
  result = a1();
  if (result)
  {
    v8 = cckem_sizeof_full_ctx();
    v10 = MEMORY[0x1EEE9AC00](v8);
    v9 = sub_1A78C05E8(v10, a2);
    if (!v3)
    {
      *a3 = v9;
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1A792982C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, void (*a4)(void **, uint64_t, unint64_t, void *)@<X5>, void *a5@<X8>)
{
  v11 = *v5;
  swift_beginAccess();
  v12 = v11 + 32 + *(v11 + 16);
  return sub_1A7929200((v11 + 32), a1, a2, a3, a4, a5);
}

uint64_t sub_1A79298F0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void *, uint64_t *)@<X3>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = v7 + 32 + *(v7 + 16);
  return sub_1A7929530(v7 + 32, a1, a2, a3);
}

uint64_t sub_1A7929970(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *a1;

      sub_1A78C0AFC(v9, v8);
      *a1 = xmmword_1A793F230;
      sub_1A78C0AFC(0, 0xC000000000000000);
      sub_1A793D6D8();
      v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v15 = *(v9 + 16);
      result = sub_1A793D648();
      if (result)
      {
        if (!__OFSUB__(v15, sub_1A793D678()))
        {
          sub_1A793D668();
          if (!cckem_export_privkey())
          {
            if (__OFSUB__(v5, *a3))
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v28 = v5 - *a3;
            result = cckem_public_ctx();
            if (result)
            {
              v16 = *a3;
              result = cckem_export_pubkey();
              if (!result)
              {
                *a1 = v9;
                a1[1] = v14 | 0x8000000000000000;
                goto LABEL_35;
              }

              goto LABEL_47;
            }

            goto LABEL_56;
          }

          goto LABEL_42;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (cckem_export_privkey())
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v5, *a3))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v29 = v5 - *a3;
    result = cckem_public_ctx();
    if (!result)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v18 = *a3;
    result = cckem_export_pubkey();
    if (!result)
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_26;
  }

  v26 = a4;
  if (!v10)
  {
    sub_1A78C0AFC(v9, v8);
    LOWORD(v31) = v8;
    BYTE2(v31) = BYTE2(v8);
    HIBYTE(v31) = BYTE3(v8);
    LOBYTE(v32) = BYTE4(v8);
    HIBYTE(v32) = BYTE5(v8);
    if (!cckem_export_privkey())
    {
      if (!__OFSUB__(v26, *a3))
      {
        v27 = v26 - *a3;
        result = cckem_public_ctx();
        if (result)
        {
          v12 = *a3;
          result = cckem_export_pubkey();
          if (!result)
          {
            *a1 = v9;
            a1[1] = v31 | ((v32 | (BYTE6(v8) << 16)) << 32);
LABEL_35:
            v25 = *MEMORY[0x1E69E9840];
            return result;
          }

          goto LABEL_44;
        }

        goto LABEL_54;
      }

      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  v17 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1A78C0AFC(v9, v8);
  *a1 = xmmword_1A793F230;
  sub_1A78C0AFC(0, 0xC000000000000000);
  v5 = v9;
  v4 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v4 < v9)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (sub_1A793D648() && __OFSUB__(v9, sub_1A793D678()))
    {
LABEL_51:
      __break(1u);
    }

LABEL_26:
    v19 = sub_1A793D698();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1A793D628();

    v17 = v22;
  }

  if (v4 < v5)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_1A793D648();
  if (!result)
  {
    goto LABEL_53;
  }

  if (__OFSUB__(v5, sub_1A793D678()))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1A793D668();
  if (cckem_export_privkey())
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (__OFSUB__(v26, *a3))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v30 = v26 - *a3;
  result = cckem_public_ctx();
  if (result)
  {
    v23 = *a3;
    v24 = cckem_export_pubkey();

    if (!v24)
    {
      *a1 = v9;
      a1[1] = v17 | 0x4000000000000000;
      goto LABEL_35;
    }

    goto LABEL_49;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t *sub_1A7929E04(uint64_t *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1A7928C40(a1, a2, v2[4], v2[5]);
}

uint64_t *sub_1A7929EF8(uint64_t *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1A7928C40(a1, a2, v2[4], v2[5]);
}

uint64_t sub_1A792A138(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_1A78C9770(a3);
}

uint64_t sub_1A792A1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v11 = v7[3];
  v12 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v11);
  v14[2] = v8;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v10;
  v14[6] = v9;
  return (*(v12 + 8))(a3, v14, v11, v12);
}

uint64_t sub_1A792A28C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  result = sub_1A78CE858(a1, a2, a3, a4, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792A368@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = result;
  *a5 = xmmword_1A793F230;
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
LABEL_12:
          result = v10 + (result & 0xFFFFFFFFFFFFLL);
          if (!__OFADD__(v10, v8 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }

LABEL_17:
        v13 = HIBYTE(a2) & 0xF;
        v14 = __OFADD__(v10, v13);
        result = v10 + v13;
        if (!v14)
        {
LABEL_18:
          sub_1A793D768();
          sub_1A793B930(v8, a2);
          v19[3] = MEMORY[0x1E6969080];
          v19[4] = MEMORY[0x1E6969078];
          v19[0] = a3;
          v19[1] = a4;
          v15 = __swift_project_boxed_opaque_existential_1(v19, MEMORY[0x1E6969080]);
          v16 = *v15;
          v17 = v15[1];
          sub_1A78C0990(a3, a4);
          sub_1A7900C14(v16, v17);
          return __swift_destroy_boxed_opaque_existential_1(v19);
        }

        goto LABEL_21;
      }

LABEL_19:
      v18 = sub_1A793D9D8();
      v14 = __OFADD__(v10, v18);
      result = v10 + v18;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
LABEL_10:
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_17;
      }

      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    v10 = HIDWORD(a3) - a3;
    goto LABEL_10;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t P256.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6 >> 60)
  {
    goto LABEL_20;
  }

  if (v6 >> 57)
  {
    goto LABEL_21;
  }

  if (!v6)
  {

    sub_1A78D6484();
    swift_allocError();
    *v31 = 1;
    *(v31 + 4) = 1;
    return swift_willThrow();
  }

  v34 = a2;
  sub_1A78F6AF0(v4 + 32, v4 + 32 + v6, &v36);
  v7 = v2;

  v38 = v36;
  v35 = v37;
  v8 = sub_1A792A7D8(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v36, v37);
  v10 = v9;
  v11 = 0;
  while (2)
  {
    v12 = sub_1A78FE770(v11, 1);
    v14 = v13;
    v15 = sub_1A792B19C(v8, v10, 0x74616469646E6163, 0xE900000000000065, v12, v13, 0x20uLL, 0x10uLL, sub_1A78D0038);
    v17 = v16;
    sub_1A78C0AFC(v12, v14);
    result = sub_1A791EBC0(v15, v17);
    if (!*(result + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A78F5C2C(v18);
    }

    v18[32] = v19;
    v20 = (v18 + 32);
    v21 = *(v18 + 2);
    do
    {
      if (!v21)
      {

        goto LABEL_6;
      }

      v22 = *v20++;
      --v21;
    }

    while (!v22);
    v23 = sub_1A793DB18();
    v24 = sub_1A78C0DCC(v23);
    v26 = v25;

    v36 = v24;
    v37 = v26;
    result = MEMORY[0x1AC55DAD0](v27);
    if (!result)
    {
      goto LABEL_22;
    }

    v28 = getccec_full_ctx_size();
    v33 = MEMORY[0x1EEE9AC00](v28);
    v29 = sub_1A78C05E8(v33, sub_1A792BCE0);
    if (!v7)
    {
      v32 = v29;
      sub_1A78C0AFC(v8, v10);
      sub_1A78C0AFC(v38, v35);
      sub_1A78C0AFC(v36, v37);

      *v34 = v32;
      return result;
    }

    sub_1A78C0AFC(v36, v37);
    MEMORY[0x1AC55E410](v7);

    v7 = 0;
LABEL_6:
    if (++v11 != 256)
    {
      continue;
    }

    break;
  }

  sub_1A78D6484();
  swift_allocError();
  *v30 = 1;
  *(v30 + 4) = 1;
  swift_willThrow();
  sub_1A78C0AFC(v8, v10);
  return sub_1A78C0AFC(v38, v35);
}

uint64_t sub_1A792A7D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = *MEMORY[0x1E69E9840];
  v49 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x10uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v47 + 1) = MEMORY[0x1E6969080];
  v48 = MEMORY[0x1E6969078];
  *&v46 = v10;
  *(&v46 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v46, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_1A793B930(a3, a4);
  *(&v47 + 1) = v13;
  v48 = v14;
  *&v46 = a5;
  *(&v46 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v46, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v46);
  v21 = v49;
  v22 = sub_1A78F3E70(v49, *(&v49 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();
  v23 = v22[2];

  sub_1A7901B88(v24, &v45);
  v25 = sub_1A793DAE8();
  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v25, v26);
  v27 = v45;
  sub_1A78BD4B0(&v46);
  v44 = v27;
  v41[0] = v46;
  v41[1] = v47;

  _s9CryptoKit6SHA256V6update13bufferPointerySW_tF_0(v41, &v42);

  sub_1A78BD4B0(&v42);

  v38 = v43;
  v40 = v42;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A7560, &qword_1A7941C70);
  *(&v47 + 1) = v28;
  v48 = sub_1A792BD94(&qword_1EB2A7568, &qword_1EB2A7560, &qword_1A7941C70);
  v29 = swift_allocObject();
  *&v46 = v29;
  *(v29 + 16) = v40;
  *(v29 + 32) = v38;
  v30 = __swift_project_boxed_opaque_existential_1(&v46, v28);
  v31 = v30[1];
  v42 = *v30;
  v43 = v31;
  v32 = sub_1A793D698();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  v35 = *MEMORY[0x1E69E9840];
  return 0x2000000000;
}

uint64_t P384.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6 >> 60)
  {
    goto LABEL_20;
  }

  if (v6 >> 57)
  {
    goto LABEL_21;
  }

  if (!v6)
  {

    sub_1A78D6484();
    swift_allocError();
    *v31 = 1;
    *(v31 + 4) = 1;
    return swift_willThrow();
  }

  v34 = a2;
  sub_1A78F6AF0(v4 + 32, v4 + 32 + v6, &v36);
  v7 = v2;

  v38 = v36;
  v35 = v37;
  v8 = sub_1A792AE48(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v36, v37);
  v10 = v9;
  v11 = 0;
  while (2)
  {
    v12 = sub_1A78FE770(v11, 1);
    v14 = v13;
    v15 = sub_1A792B19C(v8, v10, 0x74616469646E6163, 0xE900000000000065, v12, v13, 0x30uLL, 0x11uLL, sub_1A78D0BBC);
    v17 = v16;
    sub_1A78C0AFC(v12, v14);
    result = sub_1A791EBC0(v15, v17);
    if (!*(result + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1A78F5C2C(v18);
    }

    v18[32] = v19;
    v20 = (v18 + 32);
    v21 = *(v18 + 2);
    do
    {
      if (!v21)
      {

        goto LABEL_6;
      }

      v22 = *v20++;
      --v21;
    }

    while (!v22);
    v23 = sub_1A793DB18();
    v24 = sub_1A78C0DCC(v23);
    v26 = v25;

    v36 = v24;
    v37 = v26;
    result = MEMORY[0x1AC55DAE0](v27);
    if (!result)
    {
      goto LABEL_22;
    }

    v28 = getccec_full_ctx_size();
    v33 = MEMORY[0x1EEE9AC00](v28);
    v29 = sub_1A78C05E8(v33, sub_1A792BCFC);
    if (!v7)
    {
      v32 = v29;
      sub_1A78C0AFC(v8, v10);
      sub_1A78C0AFC(v38, v35);
      sub_1A78C0AFC(v36, v37);

      *v34 = v32;
      return result;
    }

    sub_1A78C0AFC(v36, v37);
    MEMORY[0x1AC55E410](v7);

    v7 = 0;
LABEL_6:
    if (++v11 != 256)
    {
      continue;
    }

    break;
  }

  sub_1A78D6484();
  swift_allocError();
  *v30 = 1;
  *(v30 + 4) = 1;
  swift_willThrow();
  sub_1A78C0AFC(v8, v10);
  return sub_1A78C0AFC(v38, v35);
}

uint64_t sub_1A792AE48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v54 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x11uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v52 + 1) = MEMORY[0x1E6969080];
  *&v53 = MEMORY[0x1E6969078];
  *&v51 = v10;
  *(&v51 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  sub_1A793B930(a3, a4);
  *(&v52 + 1) = v13;
  *&v53 = v14;
  *&v51 = a5;
  *(&v51 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v51, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  v21 = v54;
  v22 = sub_1A78F3E70(v54, *(&v54 + 1));
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();
  v23 = v22[2];

  sub_1A79018A8(v24, &v46);
  v25 = sub_1A793DAE8();
  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v25, v26);
  v27 = v46;
  sub_1A78C4BA4(&v51);
  v45 = v27;
  v44[0] = v51;
  v44[1] = v52;
  v44[2] = v53;

  _s9CryptoKit6SHA384V6update13bufferPointerySW_tF_0(v44, &v45);

  sub_1A78C4BA4(&v47);

  v28 = v49;
  v29 = v50;
  v41 = v48;
  v43 = v47;

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78F8, &qword_1A79452B8);
  *(&v48 + 1) = v30;
  v49 = sub_1A792BD94(&qword_1EB2A7900, &qword_1EB2A78F8, &qword_1A79452B8);
  v31 = swift_allocObject();
  *&v47 = v31;
  *(v31 + 16) = v43;
  *(v31 + 32) = v41;
  *(v31 + 48) = v28;
  *(v31 + 56) = v29;
  v32 = __swift_project_boxed_opaque_existential_1(&v47, v30);
  v33 = v32[1];
  v34 = v32[2];
  v51 = *v32;
  v52 = v33;
  v53 = v34;
  v35 = sub_1A793D698();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  sub_1A78C0AFC(v21, *(&v21 + 1));
  v38 = *MEMORY[0x1E69E9840];
  return 0x3000000000;
}

uint64_t sub_1A792B19C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, void (*a9)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, unint64_t, unint64_t))
{
  v12 = sub_1A78FE770(a8, 2);
  v14 = v13;
  sub_1A792A368(5064011, 0xE300000000000000, v12, v13, &v42);
  sub_1A78C0AFC(v12, v14);
  v15 = v42;
  v16 = sub_1A78FE770(a7, 2);
  v18 = v17;
  v45 = v16;
  v46 = v17;
  sub_1A78C0990(v16, v17);
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A78C0AFC(v16, v18);
  v19 = v45;
  v20 = v46;
  v47 = v45;
  v48 = v46;
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  v43 = MEMORY[0x1E6969080];
  v44 = MEMORY[0x1E6969078];
  v42 = v15;
  v23 = __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1A78C0990(v19, v20);
  sub_1A78C0990(v15, *(&v15 + 1));
  sub_1A7900C14(v24, v25);
  sub_1A78C0AFC(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v26 = v47;
  v27 = v48;
  v45 = v47;
  v46 = v48;
  sub_1A78C0990(v47, v48);
  sub_1A793B930(a3, a4);
  sub_1A78C0AFC(v26, v27);
  v28 = v45;
  v29 = v46;
  v47 = v45;
  v48 = v46;
  v43 = v21;
  v44 = v22;
  *&v42 = a5;
  *(&v42 + 1) = a6;
  v30 = __swift_project_boxed_opaque_existential_1(&v42, v21);
  v31 = *v30;
  v32 = v30[1];
  sub_1A78C0990(v28, v29);
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v31, v32);
  sub_1A78C0AFC(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v33 = v47;
  v34 = v48;
  sub_1A78C0990(v47, v48);
  a9(&v42, a1, a2, v33, v34, a7);
  sub_1A78C0AFC(v33, v34);
  v35 = v42;
  swift_beginAccess();
  sub_1A78F6AF0(v35 + 32, v35 + 32 + *(v35 + 16), &v47);
  sub_1A78C0AFC(v33, v34);
  sub_1A78C0AFC(v15, *(&v15 + 1));

  return v47;
}

uint64_t P521.KeyAgreement.PrivateKey.init(ikm:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6 >> 60)
  {
    goto LABEL_20;
  }

  if (v6 >> 57)
  {
    goto LABEL_21;
  }

  if (v6 <= 1)
  {

    sub_1A78D6484();
    swift_allocError();
    *v7 = 1;
    *(v7 + 4) = 1;
    return swift_willThrow();
  }

  v33 = a2;
  sub_1A78F6AF0(v4 + 32, v4 + 32 + v6, &v35);
  v8 = v2;

  v37 = v35;
  v34 = v36;
  v9 = sub_1A792B744(0, 0xC000000000000000, 0x6B72705F706B64, 0xE700000000000000, v35, v36);
  v11 = v10;
  v12 = 0;
  while (2)
  {
    v13 = sub_1A78FE770(v12, 1);
    v15 = v14;
    v16 = sub_1A792B19C(v9, v11, 0x74616469646E6163, 0xE900000000000065, v13, v14, 0x42uLL, 0x12uLL, sub_1A78D0FB0);
    v18 = v17;
    sub_1A78C0AFC(v13, v15);
    result = sub_1A791EBC0(v16, v18);
    if (!*(result + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v19 = result;
    v20 = *(result + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1A78F5C2C(v19);
    }

    v19[32] = v20 & 1;
    v21 = (v19 + 32);
    v22 = *(v19 + 2);
    do
    {
      if (!v22)
      {

        goto LABEL_7;
      }

      v23 = *v21++;
      --v22;
    }

    while (!v23);
    v24 = sub_1A793DB18();
    v25 = sub_1A78C0DCC(v24);
    v27 = v26;

    v35 = v25;
    v36 = v27;
    result = ccec_cp_521();
    if (!result)
    {
      goto LABEL_22;
    }

    v28 = getccec_full_ctx_size();
    v32 = MEMORY[0x1EEE9AC00](v28);
    v29 = sub_1A78C05E8(v32, sub_1A792BD28);
    if (!v8)
    {
      v31 = v29;
      sub_1A78C0AFC(v9, v11);
      sub_1A78C0AFC(v37, v34);
      sub_1A78C0AFC(v35, v36);

      *v33 = v31;
      return result;
    }

    sub_1A78C0AFC(v35, v36);
    MEMORY[0x1AC55E410](v8);

    v8 = 0;
LABEL_7:
    if (++v12 != 256)
    {
      continue;
    }

    break;
  }

  sub_1A78D6484();
  swift_allocError();
  *v30 = 1;
  *(v30 + 4) = 1;
  swift_willThrow();
  sub_1A78C0AFC(v9, v11);
  return sub_1A78C0AFC(v37, v34);
}

uint64_t sub_1A792B744(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = xmmword_1A793F230;
  sub_1A793D768();
  sub_1A793B930(0x31762D454B5048, 0xE700000000000000);
  sub_1A793B930(5064011, 0xE300000000000000);
  v10 = sub_1A78FE770(0x12uLL, 2);
  v12 = v11;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  *(&v44 + 1) = MEMORY[0x1E6969080];
  *&v45 = MEMORY[0x1E6969078];
  *&v43 = v10;
  *(&v43 + 1) = v11;
  v15 = __swift_project_boxed_opaque_existential_1(&v43, MEMORY[0x1E6969080]);
  v16 = *v15;
  v17 = v15[1];
  sub_1A78C0990(v10, v12);
  sub_1A7900C14(v16, v17);
  sub_1A78C0AFC(v10, v12);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  sub_1A793B930(a3, a4);
  *(&v44 + 1) = v13;
  *&v45 = v14;
  *&v43 = a5;
  *(&v43 + 1) = a6;
  v18 = __swift_project_boxed_opaque_existential_1(&v43, v13);
  v19 = *v18;
  v20 = v18[1];
  sub_1A78C0990(a5, a6);
  sub_1A7900C14(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  v21 = sub_1A78F3E70(0, 0xC000000000000000);
  sub_1A78C0990(a1, a2);
  sub_1A78F3E70(a1, a2);
  sub_1A78C0AFC(a1, a2);
  swift_beginAccess();
  v22 = v21[2];

  sub_1A79015B8(v23, v39);
  v24 = sub_1A793DAE8();
  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(v24, v25);
  v26 = *&v39[0];
  sub_1A78C465C(&v43);
  v41[0] = v26;

  _s9CryptoKit6SHA512V6update13bufferPointerySW_tF_0(&v43, &v47);

  sub_1A78C465C(v40);

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2A78E8, "~2");
  v41[3] = v27;
  v41[4] = sub_1A792BD94(&qword_1EB2A78F0, &qword_1EB2A78E8, "~2");
  v28 = swift_allocObject();
  v41[0] = v28;
  v29 = v40[1];
  v28[1] = v40[0];
  v28[2] = v29;
  v30 = v40[3];
  v28[3] = v40[2];
  v28[4] = v30;
  v31 = __swift_project_boxed_opaque_existential_1(v41, v27);
  v46 = v31[3];
  v45 = v31[2];
  v44 = v31[1];
  v43 = *v31;
  v39[0] = v43;
  v39[1] = v44;
  v39[2] = v45;
  v39[3] = v46;
  v32 = sub_1A793D698();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1A793D638();
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_1A78C0AFC(0, 0xC000000000000000);
  v35 = *MEMORY[0x1E69E9840];
  return 0x4000000000;
}

uint64_t sub_1A792BA90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      result = a4(v11, v6);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1A792BBB8(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_1A793D648();
  v10 = result;
  if (result)
  {
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_1A793D668();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_1A792BC64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1A793D698();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1A793D638();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A793D738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1A792BD54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = sub_1A792BA90(*v6, *(v6 + 8), a1, a3, a3);
  if (!v4)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1A792BD94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A792BDE8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = v11;
  }

LABEL_10:
  if (v11 < 1)
  {
    goto LABEL_17;
  }

  result = MEMORY[0x1AC55DB30](a5);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  return a6(v9, a2, a3, a4, 2 * result);
}

uint64_t sub_1A792BECC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = a6();
  if (!v12)
  {
    goto LABEL_13;
  }

  sub_1A792BDE8(a2, a3, a4, a5, v12, a7);
  v13 = getccec_pub_ctx_size();
  if (v13 < 0)
  {
    __break(1u);
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13)
  {
    v14 = v13;
    v15 = sub_1A793DB28();
    *(v15 + 16) = v14;
    bzero((v15 + 32), v14);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  init_ccec_ctx_pub();
  swift_beginAccess();
  v16 = *(v21 + 16);
  if (!ccrng())
  {
LABEL_14:
    __break(1u);
  }

  if (ccec_diversify_pub_twin())
  {
    goto LABEL_11;
  }

  v17 = ccec_export_pub_size((v15 + 32));
  v18 = sub_1A793DB28();
  *(v18 + 16) = v17;
  bzero((v18 + 32), v17);
  if (ccec_export_pub())
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t sub_1A792C0F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  result = a5();
  if (result)
  {
    v15 = result;
    v16 = *v7;
    sub_1A792BDE8(a1, a2, a3, a4, result, a6);
    v17 = getccec_full_ctx_size();
    swift_beginAccess();
    v18 = sub_1A78E3294(v17, v15, v19, (v16 + 32), v17);

    *a7 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A792C384@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  v11 = sub_1A792BECC(*v8, a1, a2, a3, a4, a5, a6);
  result = a7(v11);
  *a8 = result;
  return result;
}

uint64_t ChaChaPoly.Nonce.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() == 12)
  {
    v8 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v10 = v9;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v8;
    a4[1] = v10;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

uint64_t AES.GCM.Nonce.init<A>(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(*(a3 + 8) + 8) + 8);
  if (sub_1A793DB98() >= 12)
  {
    v10 = sub_1A78C7370(a1, a2, *(v7 + 8));
    v12 = v11;
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a4 = v10;
    a4[1] = v12;
  }

  else
  {
    sub_1A78D6484();
    swift_allocError();
    *v8 = 1;
    *(v8 + 4) = 1;
    swift_willThrow();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

  return result;
}

double ChaChaPoly.Nonce.init()@<D0>(__int128 *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1A793F380;
  sub_1A78CBB34(&v4);
  result = *&v4;
  *a1 = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ChaChaPoly.Nonce.withUnsafeBytes<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A793D7A8();
}

void *ChaChaPoly.Nonce.makeIterator()()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A792C740();
}

void *sub_1A792C740()
{
  __src[2] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(__src, 0, 14);
      v19 = __src;
      v18 = __src;
LABEL_24:
      result = sub_1A78BDB94(v19, v18);
      goto LABEL_25;
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = sub_1A793D648();
    if (v8)
    {
      v9 = sub_1A793D678();
      v1 = v6 - v9;
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_28;
      }

      v8 += v1;
    }

    v10 = __OFSUB__(v7, v6);
    v11 = v7 - v6;
    if (!v10)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v12 = v1;
    v13 = v1 >> 32;
    v11 = v13 - v12;
    if (v13 >= v12)
    {
      v8 = sub_1A793D648();
      if (!v8)
      {
LABEL_16:
        v15 = sub_1A793D668();
        if (v15 >= v11)
        {
          v16 = v11;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v16 + v8);
        if (v8)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = v8;
        goto LABEL_24;
      }

      v14 = sub_1A793D678();
      if (!__OFSUB__(v12, v14))
      {
        v8 += v12 - v14;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v3)
  {
    goto LABEL_12;
  }

  __src[0] = *v0;
  LOWORD(__src[1]) = v2;
  BYTE2(__src[1]) = BYTE2(v2);
  BYTE3(__src[1]) = BYTE3(v2);
  BYTE4(__src[1]) = BYTE4(v2);
  BYTE5(__src[1]) = BYTE5(v2);
  if (BYTE6(v2))
  {
    v4 = sub_1A78BDC10(BYTE6(v2), 0);
    memcpy(v4 + 4, __src, BYTE6(v2));
    result = v4;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792C910(int *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_1A793D708();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(a1 + 1);

  if (!sub_1A793D648())
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (__OFSUB__(v2, sub_1A793D678()))
  {
    goto LABEL_11;
  }

  v5 = v3 - v2;
  v6 = sub_1A793D668();
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7 < 12)
  {
    goto LABEL_12;
  }

  if (!ccrng())
  {
    goto LABEL_14;
  }

  ccrng_generate_bridge();

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A792CA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A793D648();
  if (v5)
  {
    v6 = v5;
    result = sub_1A793D678();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_10;
    }

    v8 = a1 - result + v6;
  }

  else
  {
    v8 = 0;
  }

  result = sub_1A793D668();
  if (qword_1EB2A6D80 == -1)
  {
    if (v8)
    {
LABEL_7:
      v9 = *(a3 + 16);
      return ccchacha20poly1305_setnonce();
    }
  }

  else
  {
    result = swift_once();
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void *AES.GCM.Nonce.makeIterator()()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return ChaChaPoly.Nonce.makeIterator()();
}

double AES.GCM.Nonce.init()@<D0>(__int128 *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return ChaChaPoly.Nonce.init()(a1);
}

uint64_t sub_1A792CBEC()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v6 = *v0;
  v7[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v6, v7);
  v6 = v1;
  sub_1A793B52C(&v6, v7);
  v6 = v2;
  sub_1A793B52C(&v6, v7);
  v6 = v3;
  sub_1A793B52C(&v6, v7);
  result = v7[0];
  *(v7[0] + 16);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA256Digest.description.getter()
{
  v18 = 0x6420363532414853;
  v19 = 0xEF203A7473656769;
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  result = sub_1A792CBEC();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v17, &v16);
  swift_unknownObjectRelease();
  v12 = *(*&v17[0] + 16);
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v18;
}

uint64_t SHA256Digest.hash(into:)()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A792E56C();
}

uint64_t SHA256Digest.hashValue.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A792E5DC();
}

uint64_t sub_1A792CEF8()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v8 = *v0;
  v9[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v8, v9);
  v8 = v1;
  sub_1A793B52C(&v8, v9);
  v8 = v2;
  sub_1A793B52C(&v8, v9);
  v8 = v3;
  sub_1A793B52C(&v8, v9);
  v8 = v4;
  sub_1A793B52C(&v8, v9);
  v8 = v5;
  sub_1A793B52C(&v8, v9);
  result = v9[0];
  *(v9[0] + 16);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA384Digest.description.getter()
{
  v18 = 0x6420343833414853;
  v19 = 0xEF203A7473656769;
  v1 = v0[1];
  v17[0] = *v0;
  v17[1] = v1;
  v17[2] = v0[2];
  result = sub_1A792CEF8();
  v6 = (v5 >> 1) - v4;
  if (__OFSUB__(v5 >> 1, v4))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = 2 * v6;
  if (((2 * v6) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (v7)
  {
    v11 = sub_1A793DB28();
    *(v11 + 16) = v7;
    bzero((v11 + 32), v7);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v16 = 0;
  *&v17[0] = v11;
  sub_1A793DDA8();
  sub_1A78DCF04(v8, v9, v10, v17, &v16);
  swift_unknownObjectRelease();
  v12 = *(*&v17[0] + 16);
  v13 = sub_1A793D998();
  v15 = v14;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v13, v15);

  return v18;
}

uint64_t SHA384Digest.hash(into:)()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A792EA58();
}

uint64_t SHA384Digest.hashValue.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1A792EAD0();
}

void *sub_1A792D22C()
{
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  v3[2] = v0[2];
  return sub_1A791C280(v3);
}

uint64_t sub_1A792D260(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  return sub_1A78E3808(a1, a2, a3);
}

uint64_t sub_1A792D29C()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v10 = *v0;
  v11[0] = MEMORY[0x1E69E7CC0];
  sub_1A793B52C(&v10, v11);
  v10 = v1;
  sub_1A793B52C(&v10, v11);
  v10 = v2;
  sub_1A793B52C(&v10, v11);
  v10 = v3;
  sub_1A793B52C(&v10, v11);
  v10 = v4;
  sub_1A793B52C(&v10, v11);
  v10 = v5;
  sub_1A793B52C(&v10, v11);
  v10 = v6;
  sub_1A793B52C(&v10, v11);
  v10 = v7;
  sub_1A793B52C(&v10, v11);
  result = v11[0];
  *(v11[0] + 16);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SHA512Digest.description.getter()
{
  v1 = v0[1];
  v18[0] = *v0;
  v18[1] = v1;
  v2 = v0[3];
  v18[2] = v0[2];
  v18[3] = v2;
  v19 = 0x6420323135414853;
  v20 = 0xEF203A7473656769;
  result = sub_1A792D29C();
  v7 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 + 0x4000000000000000) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = 2 * v7;
  if (((2 * v7) & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v8)
  {
    v12 = sub_1A793DB28();
    *(v12 + 16) = v8;
    bzero((v12 + 32), v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  *&v18[0] = v12;
  sub_1A793DDA8();
  sub_1A78DCF04(v9, v10, v11, v18, &v17);
  swift_unknownObjectRelease();
  v13 = *(*&v18[0] + 16);
  v14 = sub_1A793D998();
  v16 = v15;
  swift_unknownObjectRelease();

  MEMORY[0x1AC55D280](v14, v16);

  return v19;
}