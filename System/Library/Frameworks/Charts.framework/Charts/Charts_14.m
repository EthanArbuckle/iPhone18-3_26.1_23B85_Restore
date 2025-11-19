unsigned __int8 *sub_1AADAA60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1AAF8F724();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AADAAB98();
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
      result = sub_1AAF90164();
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

uint64_t sub_1AADAAB98()
{
  v0 = sub_1AAF8F734();
  v4 = sub_1AADAAC18(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1AADAAC18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AAF8FE84();
    if (!v9 || (v10 = v9, v11 = sub_1AADAAD70(v9, 0), v12 = sub_1AADAADFC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1AAF8F694();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AAF8F694();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1AAF90164();
LABEL_4:

  return sub_1AAF8F694();
}

void *sub_1AADAAD70(uint64_t a1, uint64_t a2)
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

  sub_1AADABC68(0, &qword_1EB4245B8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1AADAADFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1AADAB01C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AAF8F704();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1AAF90164();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1AADAB01C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1AAF8F6E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1AADAB01C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AAF8F714();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC598310](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1AADAB098(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = sub_1AAF90684();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_1AADAB254(v8, a2, v10, a3);
}

uint64_t sub_1AADAB254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1AADABBAC(0, &qword_1EB4240D0, MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  result = sub_1AAF900A4();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1AAF90684();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1AADAB50C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v12 = v5;
    v13 = v6;
    v7 = result;
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = (*(a5 + 56) + 544 * a2);
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v7, v9, 0x220uLL);
    sub_1AADABF88(__dst, &v10);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AADAB5C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AADAB648(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADABC00(0, &qword_1EB4240B0, sub_1AAD57C40, &type metadata for AnyEntity, MEMORY[0x1E69E6A10]);
    v3 = sub_1AAF900A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v10);
      result = sub_1AAF906F4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
        swift_unknownObjectRetain();
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1AADAB7B8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1AAF8FFB4();
    if (result)
    {
LABEL_3:
      sub_1AAD81614();
      result = sub_1AAF900A4();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1AAF8FFB4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1AC598D40](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1AAF8D094();
    sub_1AADAB5C0(&qword_1EB4240B8, MEMORY[0x1E697A3A8]);
    result = sub_1AAF8F474();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1AADAB5C0(&qword_1EB4240C0, MEMORY[0x1E697A3A8]);
      do
      {
        result = sub_1AAF8F5F4();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1AADABA9C()
{
  result = qword_1ED9B4470;
  if (!qword_1ED9B4470)
  {
    sub_1AADABC00(255, &qword_1ED9B4468, sub_1AAD46810, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4470);
  }

  return result;
}

uint64_t sub_1AADABB2C(uint64_t a1)
{
  sub_1AADABC68(0, &qword_1ED9B2790, MEMORY[0x1E69E63B0], type metadata accessor for AnyFormatStyle.Wrapper);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADABBAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6530]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AADABC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AADABC68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AADABCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AADABD50()
{
  if (!qword_1EB4245C8)
  {
    type metadata accessor for DateBins(255);
    sub_1AADAB5C0(&qword_1ED9B12A0, type metadata accessor for DateBins);
    v0 = sub_1AAF90294();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4245C8);
    }
  }
}

uint64_t sub_1AADABDE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADABE4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1AADABEAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1AADABEC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1AADABF08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADABF88(uint64_t a1, uint64_t a2)
{
  sub_1AADABCEC(0, &qword_1ED9AED80, sub_1AADAC01C, type metadata accessor for WeightedSum.Element);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AADAC01C()
{
  if (!qword_1ED9AE8D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AE8D8);
    }
  }
}

uint64_t sub_1AADAC07C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADAC0EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AADAC13C@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetValue();

  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  sub_1AAF8ED54();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  result = (*(v3 + 8))(v5, v2);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

uint64_t sub_1AADAC28C()
{
  v0 = sub_1AAF8D014();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADACAE0(0, &qword_1EB4245D0, MEMORY[0x1E69E6AA0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1AADACAE0(0, &qword_1EB4245E0, MEMORY[0x1E69E6A98]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  sub_1AAF8D094();
  swift_unknownObjectRetain();
  sub_1AAF8CC34();
  swift_unknownObjectRelease();
  sub_1AADACF74(0, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
  v11 = *AGGraphGetValue();
  (*(v1 + 32))(v3, v6, v0);
  sub_1AADACBC8(&qword_1EB423F70, MEMORY[0x1E697A360]);

  sub_1AAF8F744();
  v19 = v8;
  v12 = &v10[*(v8 + 52)];
  *v12 = v11;
  *(v12 + 1) = 0;
  sub_1AAD77B28();
  sub_1AADACBC8(&qword_1EB423F78, sub_1AAD77B28);
  result = sub_1AAF8FE94();
  if (v23)
  {
    v14 = 0;
    v15 = (v11 + 64);
    while (1)
    {
      v16 = *(v11 + 16);
      if (v14 == v16)
      {

        goto LABEL_8;
      }

      if (v14 >= v16)
      {
        break;
      }

      ++v14;
      v17 = *v15;
      v21 = *(v15 - 1);
      v22 = v17;
      v20 = *(v15 - 2);
      *(v12 + 1) = v14;
      sub_1AAF8FCC4();
      sub_1AAF8CC84();

      result = sub_1AAF8FE94();
      v15 += 3;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v10[*(v19 + 56)] = 1;
    return sub_1AADACC10(v10);
  }

  return result;
}

uint64_t sub_1AADAC608()
{
  sub_1AAF90694();
  sub_1AAF8ED74();
  return sub_1AAF906F4();
}

uint64_t sub_1AADAC67C()
{
  sub_1AAF90694();
  sub_1AAF8ED74();
  return sub_1AAF906F4();
}

void sub_1AADAC6F4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1AADAC700@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  result = sub_1AADACC88();
  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AADAC76C()
{
  v1 = *v0;
  v2 = *(AGGraphGetValue() + 16);

  sub_1AADAC7CC(v1, v2);
}

uint64_t sub_1AADAC7CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8CF34();
  v4 = sub_1AAF8CDC4();
  v5 = sub_1AAF8CF54();
  if ((*(*(v4 - 8) + 48))(v6, 1, v4))
  {
    v5(v17, 0);
    return v3(v18, 0);
  }

  else
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1AAD410F0(0, v8, 0);
      v9 = v16;
      v10 = a2 + 32;
      do
      {
        sub_1AADAC9C8(v10, v14);
        sub_1AACED35C(v14, &v13);
        sub_1AADACA00();
        swift_dynamicCast();
        v16 = v9;
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1AAD410F0((v11 > 1), v12 + 1, 1);
          v9 = v16;
        }

        *(v9 + 16) = v12 + 1;
        sub_1AACBB198(&v15, v9 + 40 * v12 + 32);
        v10 += 32;
        --v8;
      }

      while (v8);
    }

    sub_1AAF8CDB4();
    v5(v17, 0);
    return v3(v18, 0);
  }
}

unint64_t sub_1AADACA00()
{
  result = qword_1EB424650;
  if (!qword_1EB424650)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424650);
  }

  return result;
}

unint64_t sub_1AADACA64()
{
  result = qword_1EB4245D8;
  if (!qword_1EB4245D8)
  {
    sub_1AADACF74(255, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4245D8);
  }

  return result;
}

void sub_1AADACAE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_1AAF8D014();
    sub_1AADACF74(255, &qword_1EB4235E0, &type metadata for Transform, MEMORY[0x1E69E62F8]);
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = sub_1AADACBC8(&qword_1EB423F70, MEMORY[0x1E697A360]);
    v10[3] = sub_1AADACA64();
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AADACBC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AADACC10(uint64_t a1)
{
  sub_1AADACAE0(0, &qword_1EB4245E0, MEMORY[0x1E69E6A98]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADACC88()
{
  v0 = sub_1AAF8D624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8CD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADACF28();
  sub_1AAF8ED94();
  sub_1AAF8FE34();
  sub_1AAF8CD54();
  sub_1AAF8D614();
  (*(v1 + 104))(v3, *MEMORY[0x1E697A6E8], v0);
  sub_1AAF8CD64();
  sub_1AADACF74(0, &qword_1EB423610, &type metadata for AnyMaterial, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AAF92AB0;
  v16 = v4;
  v17 = MEMORY[0x1E697A178];
  v9 = sub_1AACB2508(v15);
  (*(v5 + 16))(v9, v7, v4);
  v10 = v16;
  v11 = sub_1AACBB42C(v15, v16);
  *(v8 + 56) = v10;
  v12 = sub_1AACB2508((v8 + 32));
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  sub_1AACB634C(v15);
  (*(v5 + 8))(v7, v4);
  return v8;
}

unint64_t sub_1AADACF28()
{
  result = qword_1EB423608;
  if (!qword_1EB423608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB423608);
  }

  return result;
}

void sub_1AADACF74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AADACFC4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1AADACFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1AADAD030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AADAD080(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AADAD0B4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1AADAD11C()
{
  result = qword_1EB4245E8;
  if (!qword_1EB4245E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4245E8);
  }

  return result;
}

uint64_t sub_1AADAD184(uint64_t result, double a2, double a3, double a4, double a5, double a6)
{
  v6 = *(result + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = 0;
  v12 = a5 - a4;
  v13 = result + 80;
  v55 = MEMORY[0x1E69E7CC0];
  v48 = result + 80;
  v49 = *(result + 16);
  while (2)
  {
    for (i = (v13 + 56 * v11); ; i += 7)
    {
      if (v11 >= v6)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
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
        return result;
      }

      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_44;
      }

      v16 = *(i - 6);
      v17 = *(i - 4);
      v52 = *(i - 5);
      v53 = *(i - 3);
      v18 = *(i - 2);
      v54 = *(i - 1);
      if (*i)
      {
        break;
      }

      v19 = trunc(v12 / *&v16);
      if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_45;
      }

      if (v19 <= -9.22337204e18)
      {
        goto LABEL_46;
      }

      if (v19 >= 9.22337204e18)
      {
        goto LABEL_47;
      }

      v20 = v19 - 2;
      if (v19 >= 2)
      {
        v50 = v11 + 1;
        sub_1AADAD8B0(v16, v52, v17, v53, v18, v54, 0);
        sub_1AADAD8B0(v16, v52, v17, v53, v18, v54, 0);
        sub_1AADAD8EC();
        for (j = 1; ; ++j)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AAF92AB0;
          *(inited + 32) = v11;
          *(inited + 72) = 0;
          result = sub_1AAD674F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          if (*(result + 16) >= *(result + 24) >> 1)
          {
            break;
          }

          v41 = result;
          swift_arrayInitWithCopy();

          ++*(v41 + 16);
          v42 = swift_initStackObject();
          *(v42 + 32) = j;
          *(v42 + 16) = xmmword_1AAF92AB0;
          *(v42 + 72) = 0;
          v43 = *(v41 + 16);
          if (*(v41 + 24) >> 1 <= v43)
          {
            result = sub_1AAD674F0(1, v43 + 1, 1, v41);
            v41 = result;
            if (*(result + 24) >> 1 <= *(result + 16))
            {
              goto LABEL_49;
            }
          }

          swift_arrayInitWithCopy();

          ++*(v41 + 16);
          sub_1AADAD8B0(v16, v52, v17, v53, v18, v54, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_1AAD689F8(0, *(v55 + 2) + 1, 1, v55);
          }

          v45 = *(v55 + 2);
          v44 = *(v55 + 3);
          if (v45 >= v44 >> 1)
          {
            v55 = sub_1AAD689F8((v44 > 1), v45 + 1, 1, v55);
          }

          v46 = (*&v16 * j + a4) * a2 + a3;
          *(v55 + 2) = v45 + 1;
          v47 = &v55[56 * v45];
          *(v47 + 4) = v41;
          *(v47 + 5) = (v46 + 0.5) * a6;
          *(v47 + 6) = v52;
          *(v47 + 7) = v17;
          *(v47 + 8) = v53;
          *(v47 + 9) = v18;
          *(v47 + 10) = v54;
          if (!v20)
          {
            sub_1AADAD93C(v16, v52, v17, v53, v18, v54, 0);
            result = sub_1AADAD93C(v16, v52, v17, v53, v18, v54, 0);
            goto LABEL_39;
          }

          --v20;
        }

        goto LABEL_48;
      }

      sub_1AADAD8B0(v16, v52, v17, v53, v18, v54, 0);
      result = sub_1AADAD93C(v16, v52, v17, v53, v18, v54, 0);
      ++v11;
      if (v15 == v6)
      {
        return v55;
      }
    }

    v50 = v11 + 1;
    v21 = *(v16 + 16);
    result = sub_1AADAD8B0(v16, v52, v17, v53, v18, v54, 1);
    v51 = v21;
    if (v21)
    {
      v22 = 0;
      v23 = (v16 + 32);
      while (v22 < *(v16 + 16))
      {
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[3];
        v57[2] = v23[2];
        v57[3] = v26;
        v57[0] = v24;
        v57[1] = v25;
        v27 = v23[4];
        v28 = v23[5];
        v29 = v23[7];
        v57[6] = v23[6];
        v57[7] = v29;
        v57[4] = v27;
        v57[5] = v28;
        memmove(__dst, v23, 0x80uLL);
        sub_1AADAD8EC();
        v30 = swift_initStackObject();
        *(v30 + 16) = xmmword_1AAF92AB0;
        *(v30 + 32) = v11;
        *(v30 + 72) = 0;
        sub_1AAD57B20(v57, v56);
        result = sub_1AAD674F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        if (*(result + 16) >= *(result + 24) >> 1)
        {
          goto LABEL_51;
        }

        v31 = result;
        swift_arrayInitWithCopy();

        ++*(v31 + 16);
        v32 = swift_initStackObject();
        *(v32 + 32) = v22;
        *(v32 + 16) = xmmword_1AAF92AB0;
        *(v32 + 72) = 0;
        v33 = *(v31 + 16);
        if (*(v31 + 24) >> 1 <= v33)
        {
          result = sub_1AAD674F0(1, v33 + 1, 1, v31);
          v31 = result;
          if (*(result + 24) >> 1 <= *(result + 16))
          {
            goto LABEL_52;
          }
        }

        swift_arrayInitWithCopy();

        ++*(v31 + 16);
        sub_1AAD57B7C(__dst);
        v34 = v59;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AAD689F8(0, *(v55 + 2) + 1, 1, v55);
          v55 = result;
        }

        v36 = *(v55 + 2);
        v35 = *(v55 + 3);
        if (v36 >= v35 >> 1)
        {
          result = sub_1AAD689F8((v35 > 1), v36 + 1, 1, v55);
          v55 = result;
        }

        v37 = v34 * a2 + a3;
        *(v55 + 2) = v36 + 1;
        v38 = &v55[56 * v36];
        *(v38 + 4) = v31;
        *(v38 + 5) = (v37 + 0.5) * a6;
        *(v38 + 6) = v52;
        ++v22;
        *(v38 + 7) = v17;
        *(v38 + 8) = v53;
        *(v38 + 9) = v18;
        *(v38 + 10) = v54;
        v23 += 8;
        if (v51 == v22)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_50;
    }

LABEL_26:
    result = sub_1AADAD93C(v16, v52, v17, v53, v18, v54, 1);
LABEL_39:
    v6 = v49;
    v11 = v50;
    v13 = v48;
    if (v50 != v49)
    {
      continue;
    }

    return v55;
  }
}

uint64_t sub_1AADAD8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

void sub_1AADAD8EC()
{
  if (!qword_1ED9AD750)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD750);
    }
  }
}

uint64_t sub_1AADAD93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

uint64_t sub_1AADAD978(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if ((a3 | 2) != 2)
  {
    goto LABEL_30;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = a2 + 27;
  v21 = a2 + 37;
  v4 = (a1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4[1])
    {
      goto LABEL_6;
    }

    v10 = *(v4 + 1);
    v9 = *(v4 + 2);
    v11 = *(v4 + 3);
    v12 = *(v4 + 4);
    v13 = *(v4 + 5);
    v28 = *v4;
    if ((*v4 & 1) == 0)
    {
      v26 = *(v4 - 1);
      if (v12)
      {
        v25 = v9;
        v24 = HIDWORD(v9);
        v27 = *(v4 + 4);
      }

      else
      {
        sub_1AAF8D914();
        v10 = v35;
        v25 = v36;
        v24 = v37;
        v11 = v38;
        v27 = v39;
        v13 = v40;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AAD68228(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1AAD68228((v15 > 1), v16 + 1, 1, v5);
      }

      v7 = v24;
      v6 = v25;
      goto LABEL_5;
    }

    if (!a3)
    {
      v14 = v20;
      if (!a2[26])
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v14 = v21;
    if (!a2[36])
    {
      break;
    }

LABEL_15:
    v26 = *v14;

    if (v12)
    {
      v6 = v9;
      v7 = HIDWORD(v9);
      v27 = v12;
    }

    else
    {
      sub_1AAF8D914();
      v10 = v29;
      v6 = v30;
      v7 = v31;
      v11 = v32;
      v27 = v33;
      v13 = v34;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AAD68228(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v18 = *(v5 + 3);
    v17 = v16 + 1;
    if (v16 >= v18 >> 1)
    {
      v5 = sub_1AAD68228((v18 > 1), v16 + 1, 1, v5);
    }

LABEL_5:
    *(v5 + 2) = v17;
    v8 = &v5[56 * v16];
    *(v8 + 4) = v26;
    *(v8 + 5) = v10;
    *(v8 + 6) = v6 | (v7 << 32);
    *(v8 + 7) = v11;
    *(v8 + 8) = v27;
    *(v8 + 9) = v13;
    v8[80] = v28 & 1;
LABEL_6:
    v4 += 56;
    if (!--v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void *sub_1AADADC74@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (!a2)
  {
    sub_1AAD9A96C(__src, v13);
    v8 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AADADDA4(__src);
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  sub_1AAD9A96C(__src, v13);
  v8 = sub_1AADAD978(a2, __src, 0);

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1AADAD978(a3, __src, 2u);
  sub_1AADADDA4(__src);

LABEL_6:
  memcpy(__srca, __dst, 0x1C8uLL);
  __srca[57] = v8;
  __srca[58] = MEMORY[0x1E69E7CC0];
  __srca[59] = v9;
  memcpy(v13, __dst, sizeof(v13));
  v14 = v8;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = v9;
  sub_1AADADDF8(__srca, v11);
  sub_1AAD9A9C8(v13);
  return memcpy(a4, __srca, 0x1E0uLL);
}

__n128 sub_1AADADE3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AADADE58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AADADEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AADADF18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
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

uint64_t sub_1AADADF60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
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
      *(result + 480) = 1;
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

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADAE02C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AADAE074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADAE0D0(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1AACE8B84(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD93B78();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for CalendarCache.Key(0);
      sub_1AADB3134(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for CalendarCache.Key);
      sub_1AAD919A8(v8, v10);
      result = sub_1AADB3134(a3, type metadata accessor for CalendarCache.Key);
      *v4 = v10;
    }

    else
    {
      return sub_1AADB3134(a3, type metadata accessor for CalendarCache.Key);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1AADD20A8(a1, a3, v15);
    result = sub_1AADB3134(a3, type metadata accessor for CalendarCache.Key);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1AADAE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1AADD2208(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1AAD9DF94(a1, &qword_1EB4246A0);
    sub_1AAD72828(a2, a3, v10);

    return sub_1AAD9DF94(v10, &qword_1EB4246A0);
  }

  return result;
}

uint64_t sub_1AADAE2E4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1AADB0964(a3, MEMORY[0x1E6981500], sub_1AADB1460);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD9445C();
        v10 = v14;
      }

      sub_1AAD91F68(v8, v10);

      *v4 = v10;
    }

    else
    {
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1AADD2388(a1, a3, v13);

    *v3 = v15;
  }

  return result;
}

uint64_t sub_1AADAE404(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1AACED27C(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD951A4();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1AAF8CBA4();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1AAD92A64(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1AAF8CBA4();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1AADD27B0(a1, a3, v17);
    v18 = sub_1AAF8CBA4();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1AADAE5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AADAF800(0, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ChartContentRenderContext.Bins(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1AADB3240(a1, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
    v13 = sub_1AACC147C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD975B8();
        v17 = v21;
      }

      sub_1AADB329C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ChartContentRenderContext.Bins);
      sub_1AAD93234(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1AADB3240(v8, &qword_1ED9B0F08, type metadata accessor for ChartContentRenderContext.Bins);
  }

  else
  {
    sub_1AADB329C(a1, v12, type metadata accessor for ChartContentRenderContext.Bins);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1AADD351C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1AADAE834(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AADAF800(0, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ChartAccessibilityContent.Builder.Bins(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1AADB3240(a1, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    v14 = sub_1AACC147C(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD98EC4();
        v18 = v22;
      }

      sub_1AADB329C(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      sub_1AAD937D4(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1AADB3240(v8, &qword_1EB4246C0, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
  }

  else
  {
    sub_1AADB329C(a1, v13, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1AADD3E4C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

unint64_t sub_1AADAEAB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 40) == 255)
  {
    sub_1AAD9DF94(a1, qword_1ED9B4010);
    v8 = sub_1AACC147C(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD99120();
        v12 = v17;
      }

      v13 = (*(v12 + 56) + 48 * v10);
      v14 = *(v13 + 25);
      v15 = v13[1];
      *v18 = *v13;
      *&v18[16] = v15;
      *&v18[25] = v14;
      sub_1AAD939C4(v10, v12);
      *v3 = v12;
    }

    else
    {
      memset(v18, 0, 40);
      v18[40] = -1;
    }

    return sub_1AAD9DF94(v18, qword_1ED9B4010);
  }

  else
  {
    v5 = *(a1 + 16);
    *v18 = *a1;
    *&v18[16] = v5;
    *&v18[25] = *(a1 + 25);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1AADD3FA8(v18, a2, v6);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1AADAEBD8()
{
  type metadata accessor for MetalEnvironment();
  swift_allocObject();
  result = sub_1AADAEC14();
  qword_1EB432078 = result;
  return result;
}

uint64_t sub_1AADAEC14()
{
  v1 = v0;
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    *(v0 + 16) = v2;
  }

  else
  {
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED9C36C8;
    sub_1AAF8FD04();
    sub_1AAD0D380(0, &qword_1ED9AEE70, &qword_1ED9AEE60, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AAF92AB0;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD000000000000047, 0x80000001AAFCDEB0);
    v5 = MTLCopyAllDevices();
    v6 = sub_1AADB3304();
    v7 = sub_1AAF8F834();

    v8 = MEMORY[0x1AC598460](v7, v6);
    v10 = v9;

    MEMORY[0x1AC5982F0](v8, v10);

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1AAD6E644();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_1AAF8D7B4();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_1AADAEE30()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1AADAEE68()
{
  result = sub_1AADF6E30(MEMORY[0x1E69E7CC0]);
  off_1EB4245F8 = result;
  return result;
}

double BasicChart3DSurfaceStyle._resolve(in:)@<D0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v2 = sub_1AAF8D4F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8D484();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADAF800(0, &qword_1EB424600, MEMORY[0x1E697A490]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v45 - v7;
  v8 = sub_1AAF8D4C4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1AAF8D524();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1AAF8CE04();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADAF800(0, &qword_1EB424608, MEMORY[0x1E697A1E0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v45 - v13;
  v14 = sub_1AAF8CE24();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1AAF8F044();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  if (qword_1EB422B50 != -1)
  {
    swift_once();
  }

  if (v18)
  {
    v19 = 0x6142746867696568;
  }

  else
  {
    v19 = 0x61426C616D726F6ELL;
  }

  swift_beginAccess();
  v20 = off_1EB4245F8;
  if (*(off_1EB4245F8 + 2))
  {
    v21 = sub_1AADB05C0(v19, 0xEB00000000646573);
    v23 = v22;

    if (v23)
    {
      sub_1AAD9BDF8(v20[7] + 32 * v21, &v62);
      v66 = v62;
      v67 = v63;
      goto LABEL_11;
    }
  }

  else
  {
  }

  swift_endAccess();
  sub_1AADAF854(v18, &v66);
  sub_1AAD9BDF8(&v66, &v62);
  swift_beginAccess();
  sub_1AADAE214(&v62, v19, 0xEB00000000646573);
LABEL_11:
  swift_endAccess();
  if (v18)
  {
    sub_1AAF8F034();
    v24 = sub_1AAF8F054();
    (*(v57 + 8))(v17, v58);

    sub_1AAF8F124();
    sub_1AAF8DA24();
    *&v62 = v24;
    *(&v62 + 1) = v68;
    LOBYTE(v63) = v69;
    *(&v63 + 1) = v70;
    LOBYTE(v64) = v71;
    v65 = v72;
    sub_1AADB0638();
    swift_allocObject();

    MEMORY[0x1AC5966E0](&v62);
    v25 = sub_1AAF8DA94();

    if (v25)
    {
      sub_1AAF8CE44();
      v26 = *MEMORY[0x1E697A1D0];
      v27 = sub_1AAF8CE34();
      v28 = *(v27 - 8);
      v29 = v46;
      (*(v28 + 104))(v46, v26, v27);
      (*(v28 + 56))(v29, 0, 1, v27);
      (*(v48 + 104))(v47, *MEMORY[0x1E697A1C8], v49);
      v30 = v25;
      sub_1AAF8CE14();
      sub_1AAF8CDF4();

      sub_1AACED220(&v66, v60);
      sub_1AAD45E1C(0, &qword_1EB424650);
      swift_dynamicCast();
      v31 = v53;
      v32 = v56;
      swift_dynamicCast();

      v33 = v51;
      sub_1AAF8D3D4();
      v34 = sub_1AAF8D3C4();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v35 = [objc_opt_self() whiteColor];
      sub_1AAF8D4B4();
      sub_1AAF8D504();
      sub_1AAF8D464();
      sub_1AAF8D4A4();
      sub_1AAF8D464();
      sub_1AAF8D514();
      *(&v63 + 1) = v32;
      v64 = MEMORY[0x1E697A488];
      v36 = sub_1AACB2508(&v62);
      v37 = v54;
      (*(v54 + 16))(v36, v31, v32);
      sub_1AACAEF68(&v62, v60);
      v38 = v61;
      v39 = sub_1AACBB42C(v60, v61);
      v40 = v59;
      v59[3] = v38;
      v41 = sub_1AACB2508(v40);
      (*(*(v38 - 8) + 16))(v41, v39, v38);

      sub_1AAD9A5F8(&v66);
      sub_1AACB634C(&v62);
      sub_1AACB634C(v60);
      (*(v37 + 8))(v31, v32);
      return result;
    }
  }

  result = *&v66;
  v43 = v67;
  v44 = v59;
  *v59 = v66;
  *(v44 + 1) = v43;
  return result;
}

void sub_1AADAF800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AADAF854@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1AAF8D5D4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1AAF8D3F4();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADAF800(0, &qword_1EB4246A8, MEMORY[0x1E697A4C0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  sub_1AADAF800(0, &qword_1EB4246B0, MEMORY[0x1E697A4B8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  sub_1AADAF800(0, &qword_1EB4246B8, MEMORY[0x1E697A4F8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_1AAF8D524();
  v18 = *(v17 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  if (a1)
  {
    v22 = 0x6142746867696568;
  }

  else
  {
    v22 = 0x61426C616D726F6ELL;
  }

  MEMORY[0x1AC5982F0](v22, 0xEB00000000646573, v19);

  v24 = v42;
  v23 = v43;

  v33 = v24;
  sub_1AAF8D404();
  v25 = sub_1AAF8D414();
  if ((*(*(v25 - 8) + 48))(v13, 1, v25) == 1)
  {
    __break(1u);

    (*(v18 + 56))(v16, 1, 1, v17);
    sub_1AADB3240(v16, &qword_1EB4246B8, MEMORY[0x1E697A4F8]);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0x2720726564616853, 0xE800000000000000);
    MEMORY[0x1AC5982F0](v33, v23);
    MEMORY[0x1AC5982F0](0xD000000000000039, 0x80000001AAFCDE70);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v26 = sub_1AAF8D434();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    (*(v34 + 104))(v7, *MEMORY[0x1E697A4B0], v35);
    sub_1AAF8D424();

    (*(v18 + 56))(v16, 0, 1, v17);
    (*(v18 + 32))(v21, v16, v17);
    (*(v37 + 104))(v36, *MEMORY[0x1E697A630], v38);
    sub_1AAF8D3E4();
    v44 = v17;
    v45 = MEMORY[0x1E697A488];
    v27 = sub_1AACB2508(&v42);
    (*(v18 + 16))(v27, v21, v17);
    sub_1AACAEF68(&v42, v40);
    v28 = v41;
    v29 = sub_1AACBB42C(v40, v41);
    v30 = v39;
    v39[3] = v28;
    v31 = sub_1AACB2508(v30);
    (*(*(v28 - 8) + 16))(v31, v29, v28);
    (*(v18 + 8))(v21, v17);
    sub_1AACB634C(&v42);
    return sub_1AACB634C(v40);
  }

  return result;
}

BOOL static BasicChart3DSurfaceStyle.== infix(_:_:)(uint64_t a1, double *a2)
{
  v3 = *a2;
  if (*a1)
  {
    if (v3 != 0.0)
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      v6 = a2[1];
      v7 = a2[2];
      v8 = *(a2 + 24);
      v9 = *(a1 + 24);
      if (MEMORY[0x1AC597C80]())
      {
        if (v9)
        {
          if (v8)
          {
            return 1;
          }
        }

        else if ((v8 & 1) == 0 && v4 == v6 && v5 == v7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return v3 == 0.0;
}

uint64_t BasicChart3DSurfaceStyle.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x1AC5992C0](0);
  }

  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1AC5992C0](1);
  sub_1AAF8F084();
  if (v3)
  {
    return sub_1AAF906B4();
  }

  sub_1AAF906B4();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1AC5992F0](*&v5);
  if (v1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1;
  }

  return MEMORY[0x1AC5992F0](*&v6);
}

uint64_t BasicChart3DSurfaceStyle.hashValue.getter()
{
  v1 = *v0;
  v3 = v0[1];
  v2 = v0[2];
  v4 = *(v0 + 24);
  sub_1AAF90694();
  if (v1 == 0.0)
  {
    MEMORY[0x1AC5992C0](0);
  }

  else
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    if (v4)
    {
      sub_1AAF906B4();
    }

    else
    {
      sub_1AAF906B4();
      if (v3 == 0.0)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v3;
      }

      MEMORY[0x1AC5992F0](*&v5);
      if (v2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = v2;
      }

      MEMORY[0x1AC5992F0](*&v6);
    }
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AADB00B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AAF90694();
  if (v1 == 0.0)
  {
    MEMORY[0x1AC5992C0](0);
  }

  else
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    sub_1AAF906B4();
    if ((v4 & 1) == 0)
    {
      sub_1AADB2B58(v2, v3);
    }
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AADB0158()
{
  if (!*v0)
  {
    return MEMORY[0x1AC5992C0](0);
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1AC5992C0](1);
  sub_1AAF8F084();
  if (v3)
  {
    return sub_1AAF906B4();
  }

  sub_1AAF906B4();
  return sub_1AADB2B58(v1, v2);
}

uint64_t sub_1AADB01F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AAF90694();
  if (v1 == 0.0)
  {
    MEMORY[0x1AC5992C0](0);
  }

  else
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF8F084();
    sub_1AAF906B4();
    if ((v4 & 1) == 0)
    {
      sub_1AADB2B58(v2, v3);
    }
  }

  return sub_1AAF906F4();
}

BOOL sub_1AADB0294(uint64_t a1, double *a2)
{
  v3 = *a2;
  if (*a1)
  {
    if (v3 != 0.0)
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
      v6 = a2[1];
      v7 = a2[2];
      v8 = *(a2 + 24);
      v9 = *(a1 + 24);
      if (MEMORY[0x1AC597C80]())
      {
        if (v9)
        {
          if (v8)
          {
            return 1;
          }
        }

        else if ((v8 & 1) == 0 && v4 == v6 && v5 == v7)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return v3 == 0.0;
}

uint64_t static Chart3DSurfaceStyle<>.heightBased.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_1EB4245F0;
  if (!qword_1EB4245F0)
  {
    sub_1AADB8BFC();
    v2 = sub_1AAF8F094();
    qword_1EB4245F0 = v2;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  *(a1 + 24) = 1;
}

uint64_t static Chart3DSurfaceStyle<>.heightBased(_:yRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
}

uint64_t static Chart3DSurfaceStyle<>.heightBased(yRange:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = qword_1EB4245F0;
  if (!qword_1EB4245F0)
  {
    sub_1AADB8BFC();
    v6 = sub_1AAF8F094();
    qword_1EB4245F0 = v6;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
}

void static Chart3DSurfaceStyle<>.normalBased.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

unint64_t sub_1AADB0454(unsigned __int8 *a1)
{
  sub_1AAF90694();
  v2 = a1[2];
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v11 = *(a1 + 6);
  v12 = *(a1 + 5);
  v10 = *(a1 + 7);
  v6 = a1[32];
  v7 = a1[64];
  MEMORY[0x1AC5992C0](*a1);
  sub_1AAF8E7A4();
  sub_1AAF906B4();
  MEMORY[0x1AC5992C0](v2);
  sub_1AAF0A240(v13, v3, v4, v5, v6);
  sub_1AAF04AC0(v13, v12, v11, v10, v7);
  v8 = sub_1AAF906F4();

  return sub_1AADB0F58(a1, v8);
}

unint64_t sub_1AADB0548(double a1)
{
  v2 = sub_1AAF90684();

  return sub_1AADB13F8(v2, a1);
}

unint64_t sub_1AADB05C0(uint64_t a1, uint64_t a2)
{
  sub_1AAF90694();
  sub_1AAF8F6C4();
  v4 = sub_1AAF906F4();

  return sub_1AADB1518(a1, a2, v4);
}

void sub_1AADB0638()
{
  if (!qword_1EB424610)
  {
    sub_1AADB069C();
    sub_1AADB07B4();
    v0 = sub_1AAF8DAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424610);
    }
  }
}

void sub_1AADB069C()
{
  if (!qword_1EB424618)
  {
    sub_1AADB06FC();
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424618);
    }
  }
}

void sub_1AADB06FC()
{
  if (!qword_1EB424620)
  {
    sub_1AADB075C();
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424620);
    }
  }
}

void sub_1AADB075C()
{
  if (!qword_1EB424628)
  {
    v0 = sub_1AAF8E5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424628);
    }
  }
}

unint64_t sub_1AADB07B4()
{
  result = qword_1EB424630;
  if (!qword_1EB424630)
  {
    sub_1AADB069C();
    sub_1AADB0834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424630);
  }

  return result;
}

unint64_t sub_1AADB0834()
{
  result = qword_1EB424638;
  if (!qword_1EB424638)
  {
    sub_1AADB06FC();
    sub_1AADB08E4();
    sub_1AADB31F8(&qword_1EB424648, sub_1AADB075C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424638);
  }

  return result;
}

unint64_t sub_1AADB08E4()
{
  result = qword_1EB424640;
  if (!qword_1EB424640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424640);
  }

  return result;
}

uint64_t sub_1AADB0964(uint64_t a1, void (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1AAF90694();
  a2(v8, a1);
  v5 = sub_1AAF906F4();

  return a3(a1, v5);
}

unint64_t sub_1AADB09E4(uint64_t a1)
{
  v2 = sub_1AAF8FFE4();

  return sub_1AADB1688(a1, v2);
}

unint64_t sub_1AADB0A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1AAF90694();
  v8 = sub_1AAF906F4();

  return sub_1AADB1750(a1, a2, a3 & 1, a4, v8);
}

unint64_t sub_1AADB0AA8(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAE48C88(v4);
  v2 = sub_1AAF906F4();

  return sub_1AADB1870(a1, v2);
}

unint64_t sub_1AADB0B14(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAE5E610(v4);
  v2 = sub_1AAF906F4();

  return sub_1AADB192C(a1, v2);
}

unint64_t sub_1AADB0B80(double a1, double a2)
{
  sub_1AAF90694();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1AC5992F0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1AC5992F0](*&v5);
  v6 = sub_1AAF906F4();

  return sub_1AADB19F0(v6, a1, a2);
}

unint64_t sub_1AADB0C18(uint64_t a1)
{
  sub_1AAF90694();
  v2 = sub_1AAF906F4();

  return sub_1AADB1A68(a1, v2);
}

uint64_t sub_1AADB0C78(uint64_t a1)
{
  sub_1AAF90694();
  v2 = *(a1 + 16);
  MEMORY[0x1AC5992C0](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 112);
      v12[6] = *(v3 + 96);
      v12[7] = v4;
      v12[8] = *(v3 + 128);
      v13 = *(v3 + 144);
      v5 = *(v3 + 48);
      v12[2] = *(v3 + 32);
      v12[3] = v5;
      v6 = *(v3 + 80);
      v12[4] = *(v3 + 64);
      v12[5] = v6;
      v7 = *(v3 + 16);
      v12[0] = *v3;
      v12[1] = v7;
      sub_1AAD81BF4(v12, &v10);
      sub_1AAF70EE0(v11);
      sub_1AAD81C50(v12);
      v3 += 152;
      --v2;
    }

    while (v2);
  }

  v8 = sub_1AAF906F4();
  return sub_1AADB1CC8(a1, v8);
}

unint64_t sub_1AADB0D50(__int128 *a1)
{
  sub_1AAF90694();
  sub_1AAF70EE0(v4);
  v2 = sub_1AAF906F4();

  return sub_1AADB1E8C(a1, v2);
}

uint64_t sub_1AADB0DBC(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAD7A698(v4, *(a1 + 32));
  sub_1AAF906B4();
  v2 = sub_1AAF906F4();

  return sub_1AADB1F8C(a1, v2);
}

unint64_t sub_1AADB0E38(uint64_t a1)
{
  sub_1AAF90694();
  v2 = *a1;
  v3 = *(a1 + 56);
  if (v3 < 0)
  {
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    v14 = *(a1 + 64);
    v5 = *(a1 + 40);
    v12 = *(a1 + 48);
    v6 = *(a1 + 32);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *(a1 + 24);
    v13 = *(a1 + 88);
    MEMORY[0x1AC5992C0](1);
    sub_1AAF04AC0(v17, v2, v8, v7, v9);
    sub_1AAF04AC0(v17, v6, v5, v12, v3);
    sub_1AAF04AC0(v17, v14, v15, v16, v13);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1AC5992F0](v4);
  }

  v10 = sub_1AAF906F4();

  return sub_1AADB261C(a1, v10);
}

unint64_t sub_1AADB0F58(unsigned __int8 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    do
    {
      v8 = *(v2 + 48) + 72 * v4;
      v57 = *v8;
      v10 = *(v8 + 32);
      v9 = *(v8 + 48);
      v11 = *(v8 + 16);
      v61 = *(v8 + 64);
      v59 = v10;
      v60 = v9;
      v58 = v11;
      if (v57 != v7)
      {
        goto LABEL_5;
      }

      sub_1AAD9B9C0(&v57, v51);
      v12 = sub_1AAF8E7A4();
      if (v12 != sub_1AAF8E7A4() || BYTE2(v57) != a1[2])
      {
        goto LABEL_4;
      }

      v13 = v59;
      v15 = *(a1 + 1);
      v14 = *(a1 + 2);
      v16 = *(a1 + 3);
      v17 = a1[32];
      if (v59 < 0)
      {
        if ((v17 & 0x80000000) == 0 || *(&v57 + 1) != v15 || *&v58 != v14 || v16 != BYTE8(v58))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v17 < 0 || *(&v57 + 1) != v15)
        {
          goto LABEL_4;
        }

        if (*(&v58 + 1))
        {
          if (!v16 || v58 != __PAIR128__(v16, *&v14) && (sub_1AAF904F4() & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (v16)
        {
          goto LABEL_4;
        }

        if (v13 != v17)
        {
          goto LABEL_4;
        }
      }

      v18 = *(&v59 + 1);
      v19 = *(&v60 + 1);
      v20 = *(a1 + 5);
      v21 = *(a1 + 6);
      v22 = *(a1 + 7);
      v23 = a1[64];
      if (v61 > 0xFBu)
      {
        v36 = *(&v59 + 1);
        v39 = *(a1 + 6);
        v42 = v60;
        v45 = a1[64];
        v49 = v61;
        v24 = *(a1 + 5);
        v25 = *(a1 + 7);
        sub_1AADB3078(v20, v21, v22, v23);
        sub_1AADB3024(&v57);
        v26 = v45;
        if (v45 > 0xFB)
        {
          return v4;
        }

        goto LABEL_28;
      }

      if (v23 > 0xFB)
      {
        v36 = *(&v59 + 1);
        v39 = *(a1 + 6);
        v24 = *(a1 + 5);
        v42 = v60;
        v46 = a1[64];
        v49 = v61;
        v25 = *(a1 + 7);
        sub_1AADB308C(*(&v59 + 1), v60, *(&v60 + 1), v61);
        sub_1AADB3024(&v57);
        v26 = v46;
LABEL_28:
        v51[0] = v36;
        v51[1] = v42;
        v51[2] = v19;
        v52 = v49;
        v53 = v24;
        v54 = v39;
        v55 = v25;
        v56 = v26;
        sub_1AADB3134(v51, sub_1AADB309C);
        goto LABEL_5;
      }

      if ((v61 & 0x80) != 0)
      {
        v37 = *(a1 + 5);
        v40 = *(a1 + 6);
        v43 = *&v60;
        v28 = v61;
        v48 = a1[64];
        v34 = *(a1 + 7);
        sub_1AADB3078(v20, v21, v22, v23);
        LOBYTE(v50) = v28;
        sub_1AADB3078(v18, v43, v19, v28);
        sub_1AADB3024(&v57);
        if ((v48 & 0x80) == 0)
        {
          sub_1AADB3110(v37, v40, v34, v48);
          v29 = v18;
          v30 = v43;
          goto LABEL_38;
        }

        v30 = v43;
        v32 = v28;
        if (*&v18 != *&v37)
        {
          v29 = v18;
          v31 = v19;
          goto LABEL_40;
        }

        sub_1AADB3110(v18, v43, v19, v28);
        if (*&v43 == *&v40 && v34 == v19)
        {
          return v4;
        }
      }

      else
      {
        if ((v23 & 0x80) != 0)
        {
          sub_1AADB308C(v20, *(a1 + 6), *(a1 + 7), a1[64]);
LABEL_4:
          sub_1AADB3024(&v57);
          goto LABEL_5;
        }

        if (*(&v59 + 1) != *&v20)
        {
          goto LABEL_4;
        }

        v27 = v60;
        if (*(&v60 + 1))
        {
          if (!v22)
          {
            goto LABEL_4;
          }

          v47 = a1[64];
          v50 = v61;
          if (v60 == __PAIR128__(v22, v21))
          {
            sub_1AADB308C(*(&v59 + 1), v60, *(&v60 + 1), v61);
            sub_1AADB3024(&v57);
          }

          else
          {
            v44 = sub_1AAF904F4();
            sub_1AADB308C(v18, v27, v19, v50);
            sub_1AADB3024(&v57);
            if ((v44 & 1) == 0)
            {
              v29 = v18;
              v30 = v27;
LABEL_38:
              v31 = v19;
              goto LABEL_39;
            }
          }
        }

        else
        {
          v38 = *(a1 + 5);
          v41 = *(a1 + 6);
          v47 = a1[64];
          v50 = v61;
          v35 = *(a1 + 7);
          sub_1AADB3078(v20, v21, v22, v23);
          sub_1AADB3078(v18, v27, 0, v50);
          sub_1AADB3024(&v57);
          if (v35)
          {
            sub_1AADB3110(v38, v41, v35, v47);
            v29 = v18;
            v30 = v27;
            v31 = 0;
LABEL_39:
            v32 = v50;
LABEL_40:
            sub_1AADB3110(v29, v30, v31, v32);
            goto LABEL_5;
          }

          sub_1AADB3110(v38, v41, 0, v47);
        }

        sub_1AADB3110(v18, v27, v19, v50);
        if (v50 == v47)
        {
          return v4;
        }
      }

LABEL_5:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB13F8(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AADB1460(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {

      v6 = sub_1AAF8EC64();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB1518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AAF904F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1AADB15D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_1AAD79EF4(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB1688(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1AAD9AB20(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC598C20](v9, a1);
      sub_1AAD80E08(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v5 + 48) + 32 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_1AACD7304(*v9, v11, v12);

      v13 = sub_1AAF8EA14();
      sub_1AAD04750(v10, v11, v12);

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1AADB1870(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = (*(v2 + 48) + 48 * v4);
      v8 = v7[1];
      v10 = *v7;
      v11[0] = v8;
      *(v11 + 9) = *(v7 + 25);
      if (sub_1AAE48ED0(&v10, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB192C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 72 * v4;
      v8 = *(v7 + 48);
      v11[2] = *(v7 + 32);
      v11[3] = v8;
      v12 = *(v7 + 64);
      v9 = *(v7 + 16);
      v11[0] = *v7;
      v11[1] = v9;
      if (sub_1AAE5E8E0(v11, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1AADB19F0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1AADB1A68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v15 = *(a1 + 49) | ((*(a1 + 53) | (*(a1 + 55) << 16)) << 32);
    do
    {
      v6 = (*(v2 + 48) + (v4 << 6));
      v8 = v6[2];
      v7 = v6[3];
      v9 = v6[1];
      v19[0] = *v6;
      v19[1] = v9;
      v20 = v8;
      v21 = v7;
      if ((((v7 >> 8) | (((DWORD1(v7) >> 8) | (SBYTE7(v7) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          v11 = v20;
          v12 = v21;
          sub_1AACD7304(*&v19[0], *(&v19[0] + 1), v9 & 1);

          sub_1AACD7304(v11, *(&v11 + 1), v12 & 1);

          if (sub_1AAF8EA14())
          {
            v13 = sub_1AAF8EA14();
            sub_1AAD81A30(v19);
            v2 = v16;
            if (v13)
            {
              return v4;
            }
          }

          else
          {
            sub_1AAD81A30(v19);
            v2 = v16;
          }
        }
      }

      else if ((*(a1 + 48) & 0x8000000000000000) == 0)
      {
        sub_1AACD7304(*&v19[0], *(&v19[0] + 1), v9 & 1);

        v2 = v16;
        v10 = sub_1AAF8EA14();
        sub_1AAD81A30(v19);
        if (v10)
        {
          return v4;
        }
      }

      v4 = (v4 + 1) & v17;
    }

    while (((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1AADB1CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v6 = ~v3;
  v7 = *(a1 + 16);
  v24 = ~v3;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v4);
    if (*(v8 + 16) == v7)
    {
      break;
    }

LABEL_4:
    v4 = (v4 + 1) & v6;
    if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  if (!v7 || v8 == a1)
  {
    return v4;
  }

  v10 = 0;
  v11 = 32;
  while (v10 < *(v8 + 16))
  {
    v12 = *(v8 + v11 + 16);
    v26[0] = *(v8 + v11);
    v26[1] = v12;
    v13 = *(v8 + v11 + 32);
    v14 = *(v8 + v11 + 48);
    v15 = *(v8 + v11 + 80);
    v26[4] = *(v8 + v11 + 64);
    v26[5] = v15;
    v26[2] = v13;
    v26[3] = v14;
    v16 = *(v8 + v11 + 96);
    v17 = *(v8 + v11 + 112);
    v18 = *(v8 + v11 + 128);
    v27 = *(v8 + v11 + 144);
    v26[7] = v17;
    v26[8] = v18;
    v26[6] = v16;
    if (v7 == v10)
    {
      goto LABEL_16;
    }

    v19 = *(a1 + v11 + 112);
    v28[6] = *(a1 + v11 + 96);
    v28[7] = v19;
    v28[8] = *(a1 + v11 + 128);
    v29 = *(a1 + v11 + 144);
    v20 = *(a1 + v11 + 48);
    v28[2] = *(a1 + v11 + 32);
    v28[3] = v20;
    v21 = *(a1 + v11 + 80);
    v28[4] = *(a1 + v11 + 64);
    v28[5] = v21;
    v22 = *(a1 + v11 + 16);
    v28[0] = *(a1 + v11);
    v28[1] = v22;
    sub_1AAD81BF4(v26, v25);
    sub_1AAD81BF4(v28, v25);
    v23 = sub_1AAF72168(v26, v28);
    sub_1AAD81C50(v28);
    result = sub_1AAD81C50(v26);
    if ((v23 & 1) == 0)
    {

      v6 = v24;
      goto LABEL_4;
    }

    ++v10;
    v11 += 152;
    if (v7 == v10)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1AADB1E8C(__int128 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 152 * v4;
      v8 = *(v7 + 16);
      v18[0] = *v7;
      v18[1] = v8;
      v9 = *(v7 + 80);
      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v18[4] = *(v7 + 64);
      v18[5] = v9;
      v18[2] = v11;
      v18[3] = v10;
      v13 = *(v7 + 112);
      v12 = *(v7 + 128);
      v14 = *(v7 + 96);
      v19 = *(v7 + 144);
      v18[7] = v13;
      v18[8] = v12;
      v18[6] = v14;
      sub_1AAD81BF4(v18, v17);
      v15 = sub_1AAF72168(v18, a1);
      sub_1AAD81C50(v18);
      if (v15)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1AADB1F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v37 = ~v4;
    v38 = v3;
    while (1)
    {
      v7 = *(v52 + 48) + 48 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 32);
      v53 = *(v7 + 40);
      sub_1AACD7304(*v7, v8, v10);

      result = sub_1AAF8EA14();
      if ((result & 1) == 0 || (v49 = v9, v50 = v8, v51 = v10, v13 = *(a1 + 32), v14 = *(v11 + 16), v14 != *(v13 + 16)))
      {
        sub_1AAD04750(v9, v8, v10);

        goto LABEL_4;
      }

      if (!v14 || v11 == v13)
      {
        sub_1AAD04750(v9, v8, v10);

LABEL_62:

        if (v53 != (*(a1 + 40) & 1))
        {
          goto LABEL_5;
        }

        return v5;
      }

      v39 = v5;
      if (!*(v11 + 16))
      {
LABEL_72:
        __break(1u);
        return result;
      }

      v15 = 0;
      v16 = (v11 + 32);
      v17 = (v13 + 32);
      v43 = v14 - 1;
      v45 = v11;
      while (1)
      {
        v55 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[4];
        v58 = v16[3];
        v59 = v20;
        v56 = v18;
        v57 = v19;
        v21 = v17[4];
        v23 = v17[1];
        v22 = v17[2];
        v62 = v17[3];
        v63 = v21;
        v60[1] = v23;
        v61 = v22;
        v60[0] = *v17;
        if (v55 != LOBYTE(v60[0]))
        {
          goto LABEL_69;
        }

        v24 = v57;
        v25 = *&v58;
        v26 = BYTE8(v59);
        v47 = v15;
        v48 = *(&v57 + 1);
        if ((*(&v59 + 1) & 0x8000000000000000) != 0)
        {
          break;
        }

        if ((*(&v63 + 1) & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        v27 = v58;
        v28 = BYTE8(v56);
        v29 = BYTE8(v62);
        v42 = *&v62;
        v44 = *(&v61 + 1);
        sub_1AAD81924(&v55, v54);
        sub_1AAD81924(v60, v54);
        v54[0] = v28 & 1;
        if ((sub_1AAF8EA14() & 1) == 0)
        {
LABEL_64:
          sub_1AAD81980(v60);
          sub_1AAD81980(&v55);
LABEL_65:
          sub_1AAD04750(v49, v50, v51);
LABEL_66:

          v3 = v38;
          v5 = v39;
          v6 = v37;
          goto LABEL_4;
        }

        if (SBYTE8(v27) < 0)
        {
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_64;
          }

          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          if (BYTE8(v27))
          {
            v34 = v48;
            if ((v29 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v34 = v48;
            if (v29)
            {
              goto LABEL_69;
            }
          }

          if (v34 != v44)
          {
            goto LABEL_69;
          }

          v35 = *&v27 == v42;
          goto LABEL_51;
        }

        if (v29 < 0)
        {
          goto LABEL_64;
        }

        if (!BYTE8(v27))
        {
          if (v29)
          {
            goto LABEL_64;
          }

          v30 = v48;
LABEL_43:
          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          v35 = v30 == v44;
LABEL_51:
          v15 = v47;
          if (!v35)
          {
            goto LABEL_65;
          }

          goto LABEL_57;
        }

        if (BYTE8(v27) == 1)
        {
          if (v29 != 1)
          {
            goto LABEL_64;
          }

          v30 = v48;
          goto LABEL_43;
        }

        if (v29 != 2)
        {
          sub_1AAD81980(v60);
          sub_1AAD81980(&v55);
          sub_1AAD04750(v49, v50, v51);
          goto LABEL_66;
        }

        if (*&v48 == *&v44 && v27 == *&v42)
        {
          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          v15 = v47;
        }

        else
        {
          v36 = sub_1AAF904F4();
          sub_1AAD81980(v60);
          result = sub_1AAD81980(&v55);
          v15 = v47;
          if ((v36 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

LABEL_57:
        if (v43 == v15)
        {
          sub_1AAD04750(v49, v50, v51);

          v3 = v38;
          v5 = v39;
          v6 = v37;
          goto LABEL_62;
        }

        v16 += 5;
        v17 += 5;
        if (++v15 >= *(v45 + 16))
        {
          goto LABEL_72;
        }
      }

      v31 = BYTE8(v63);
      if ((*(&v63 + 1) & 0x8000000000000000) == 0 || *(v60 + 1) != *(&v55 + 1))
      {
        goto LABEL_65;
      }

      v32 = *(&v58 + 1);
      v33 = v62;
      v40 = v63;
      v41 = v59;
      sub_1AAD81924(&v55, v54);
      sub_1AAD81924(v60, v54);
      v54[0] = v24 & 1;
      if ((sub_1AAF8EA14() & 1) == 0)
      {
        goto LABEL_64;
      }

      if ((v26 & 0x80) == 0)
      {
        break;
      }

      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      if (v25 == *&v33)
      {
        sub_1AAD81980(v60);
        result = sub_1AAD81980(&v55);
        if (v32 != *(&v33 + 1))
        {
          goto LABEL_69;
        }

        v35 = (v40 ^ v41) == 0;
        goto LABEL_51;
      }

      sub_1AAD81980(v60);
      sub_1AAD81980(&v55);
LABEL_69:
      sub_1AAD04750(v49, v50, v51);

      v3 = v38;
      v5 = v39;
      v6 = v37;
LABEL_4:

LABEL_5:
      v5 = (v5 + 1) & v6;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (v31 < 0 || v25 != *&v33)
    {
      goto LABEL_64;
    }

    if (v41)
    {
      if (!v40 || __PAIR128__(v41, *&v32) != __PAIR128__(v40, *(&v33 + 1)) && (sub_1AAF904F4() & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else if (v40)
    {
      goto LABEL_64;
    }

    sub_1AAD81980(v60);
    result = sub_1AAD81980(&v55);
    if (((v31 ^ v26) & 0x7F) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  return v5;
}

unint64_t sub_1AADB261C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v74 = ~v4;
    do
    {
      v9 = *(v2 + 48) + 96 * v5;
      v10 = *v9;
      v11 = *(v9 + 56);
      if (v11 < 0)
      {
        v8 = *(a1 + 56);
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }

        v13 = *(v9 + 8);
        v12 = *(v9 + 16);
        v14 = *(v9 + 24);
        v16 = *(v9 + 40);
        v15 = *(v9 + 48);
        v17 = *(v9 + 64);
        v18 = *(v9 + 72);
        v19 = *(v9 + 80);
        v20 = *(v9 + 88);
        v22 = *a1;
        v21 = *(a1 + 8);
        v23 = *(a1 + 40);
        v75 = *(a1 + 32);
        v76 = *(v9 + 32);
        v24 = *(a1 + 48);
        v25 = *(a1 + 64);
        v26 = *(a1 + 72);
        v27 = *(a1 + 80);
        v28 = *(a1 + 88);
        v30 = *(a1 + 16);
        v29 = *(a1 + 24);
        if (v14 <= 0xFBu)
        {
          if (*(a1 + 24) > 0xFBu)
          {
LABEL_17:
            v77 = *v9;
            v78 = v13;
            v79 = v12;
            v80 = v14;
            v81 = v22;
            v82 = v21;
            v83 = v30;
            v84 = v29;
            sub_1AADB3078(v10, v13, v12, v14);
            v31 = *&v22;
            v32 = *&v21;
            v33 = v30;
            v34 = v29;
LABEL_29:
            sub_1AADB3078(v31, v32, v33, v34);
            sub_1AADB3134(&v77, sub_1AADB309C);
            v7 = v74;
            v3 = v2 + 64;
            goto LABEL_4;
          }

          if ((v14 & 0x80) != 0)
          {
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_4;
            }

            v36 = (v30 ^ v12);
            v37 = *&v10 == v22 && *&v13 == v21;
            if (!v37 || v36 != 0)
            {
              goto LABEL_4;
            }
          }

          else
          {
            if ((v29 & 0x80) != 0 || *&v10 != v22)
            {
              goto LABEL_4;
            }

            if (v12)
            {
              if (!v30)
              {
                goto LABEL_4;
              }

              if (v13 == *&v21 && v12 == v30)
              {
                if (((v29 ^ v14) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                v70 = *(v9 + 72);
                v72 = *(v9 + 64);
                v67 = *(v9 + 80);
                v68 = *(a1 + 64);
                v66 = *(v9 + 88);
                v48 = *(a1 + 88);
                v64 = *(a1 + 80);
                v65 = *(a1 + 48);
                v49 = *(a1 + 72);
                v50 = *(v9 + 48);
                v63 = *(v9 + 40);
                v51 = sub_1AAF904F4();
                v16 = v63;
                v27 = v64;
                v24 = v65;
                v25 = v68;
                v18 = v70;
                v7 = v74;
                v3 = v2 + 64;
                v19 = v67;
                v20 = v66;
                v52 = v51;
                v17 = v72;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_4;
                }

                v15 = v50;
                v26 = v49;
                v28 = v48;
                if (((v29 ^ v14) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }
              }
            }

            else if (v30 | (v29 ^ v14) & 0x7F)
            {
              goto LABEL_4;
            }
          }
        }

        else if (*(a1 + 24) <= 0xFBu)
        {
          goto LABEL_17;
        }

        if (v11 <= 0xFBu)
        {
          if (v8 > 0xFBu)
          {
LABEL_28:
            v77 = *&v76;
            v78 = v16;
            v79 = v15;
            v80 = v11;
            v81 = v75;
            v82 = v23;
            v83 = v24;
            v84 = v8;
            v35 = v24;
            sub_1AADB3078(v76, v16, v15, v11);
            v31 = *&v75;
            v32 = *&v23;
            v33 = v35;
            v34 = v8;
            goto LABEL_29;
          }

          if ((v11 & 0x80) != 0)
          {
            if ((v8 & 0x80) == 0)
            {
              goto LABEL_4;
            }

            v43 = *&v76 == v75 && *&v16 == v23;
            if (!v43 || (v24 ^ v15) != 0)
            {
              goto LABEL_4;
            }
          }

          else
          {
            if ((v8 & 0x80) != 0 || *&v76 != v75)
            {
              goto LABEL_4;
            }

            if (v15)
            {
              if (!v24)
              {
                goto LABEL_4;
              }

              if (v16 == *&v23 && v15 == v24)
              {
                if (((v8 ^ v11) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }
              }

              else
              {
                v71 = v18;
                v73 = v17;
                v55 = v19;
                v56 = v20;
                v69 = v25;
                v57 = v28;
                v58 = v27;
                v59 = v26;
                v60 = sub_1AAF904F4();
                v25 = v69;
                v18 = v71;
                v7 = v74;
                v3 = v2 + 64;
                v61 = v60;
                v17 = v73;
                if (((v8 ^ v11) & 0x7F) != 0)
                {
                  goto LABEL_4;
                }

                v26 = v59;
                v27 = v58;
                v28 = v57;
                v19 = v55;
                v20 = v56;
                if ((v61 & 1) == 0)
                {
                  goto LABEL_4;
                }
              }
            }

            else if ((v8 ^ v11) & 0x7F | v24)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v8 <= 0xFBu)
        {
          goto LABEL_28;
        }

        if (v20 > 0xFB)
        {
          if (v28 > 0xFB)
          {
            return v5;
          }

LABEL_50:
          v77 = *&v17;
          v78 = v18;
          v79 = v19;
          v80 = v20;
          v81 = v25;
          v82 = v26;
          v83 = v27;
          v84 = v28;
          v39 = v28;
          v40 = v27;
          v41 = *&v26;
          v42 = *&v25;
          sub_1AADB3078(v17, v18, v19, v20);
          sub_1AADB3078(v42, v41, v40, v39);
          sub_1AADB3134(&v77, sub_1AADB309C);
          v7 = v74;
          v3 = v2 + 64;
          goto LABEL_4;
        }

        if (v28 > 0xFB)
        {
          goto LABEL_50;
        }

        if ((v20 & 0x80) != 0)
        {
          v7 = v74;
          v3 = v2 + 64;
          if ((v28 & 0x80) != 0)
          {
            v53 = *&v17 == v25 && *&v18 == v26;
            if (v53 && (v27 ^ v19) == 0)
            {
              return v5;
            }
          }
        }

        else
        {
          v7 = v74;
          v3 = v2 + 64;
          if ((v28 & 0x80) != 0 || *&v17 != v25)
          {
            goto LABEL_4;
          }

          if (!v19)
          {
            if (v27)
            {
              goto LABEL_4;
            }

LABEL_92:
            if (v20 == v28)
            {
              return v5;
            }

            goto LABEL_4;
          }

          if (!v27)
          {
            goto LABEL_4;
          }

          if (v18 == *&v26 && v19 == v27)
          {
            goto LABEL_92;
          }

          v45 = v20;
          v46 = v28;
          v47 = sub_1AAF904F4();
          v7 = v74;
          v3 = v2 + 64;
          if ((v47 & 1) != 0 && v45 == v46)
          {
            return v5;
          }
        }
      }

      else if ((*(a1 + 56) & 0x8000000000000000) == 0 && *a1 == *&v10)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1AADB2B58(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1AC5992F0](*&v3);
}

BOOL sub_1AADB2BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a1)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if ((MEMORY[0x1AC597C80]() & 1) == 0)
  {
    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return (a8 & 1) == 0 && *&a2 == *&a6 && *&a3 == *&a7;
  }

  return (a8 & 1) != 0;
}

unint64_t sub_1AADB2C5C(uint64_t a1)
{
  result = sub_1AADB2C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AADB2C84()
{
  result = qword_1EB424658;
  if (!qword_1EB424658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424658);
  }

  return result;
}

unint64_t sub_1AADB2CDC()
{
  result = qword_1EB424660;
  if (!qword_1EB424660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424660);
  }

  return result;
}

__n128 sub_1AADB2D54(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1AADB2D68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AADB2DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AADB2E50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADB2EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AADB2EFC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1AADB2F34()
{
  result = qword_1EB424668;
  if (!qword_1EB424668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424668);
  }

  return result;
}

uint64_t sub_1AADB2F88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1AAD0E818(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AADB2F9C(uint64_t a1)
{
  sub_1AAD0D380(0, &unk_1EB424678, &qword_1ED9B37E0, &protocol descriptor for ParameterSignalContainable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADB3078(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1AADB308C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1AADB308C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

void sub_1AADB309C()
{
  if (!qword_1EB424688)
  {
    sub_1AACB1BC0(255, &unk_1EB424690);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424688);
    }
  }
}

uint64_t sub_1AADB3110(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 <= 0xFBu)
  {
    return sub_1AADB3124(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1AADB3124(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1AADB3134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AADB3194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarCache.Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADB31F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AADB3240(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AADAF800(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AADB329C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AADB3304()
{
  result = qword_1EB4246C8;
  if (!qword_1EB4246C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB4246C8);
  }

  return result;
}

uint64_t sub_1AADB3374()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1AADF6D50(MEMORY[0x1E69E7CC0]);
  sub_1AADB89A8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AAF977C0;
  *(v2 + 32) = v0;
  *(v2 + 40) = -1;
  *(v2 + 48) = -1;
  *(v2 + 56) = v1;
  swift_beginAccess();
  pthread_key_create((v2 + 16), sub_1AAF8AEF0);
  result = swift_endAccess();
  off_1EB4246D0 = v2;
  return result;
}

uint64_t sub_1AADB3424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D1>)
{
  v7 = *(a1 + 8);
  sub_1AAF8F124();
  sub_1AAF8DA24();
  *&v9[6] = v10;
  *&v9[22] = v11;
  *&v9[38] = v12;
  *(a3 + 10) = *v9;
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v9[16];
  *(a3 + 42) = *&v9[32];
  *(a3 + 56) = *(&v12 + 1);
  *(a3 + 64) = v7;
  *(a3 + 72) = a4 * 0.5;
}

uint64_t sub_1AADB34F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *(a1 + 8);
  sub_1AAF8F124();
  sub_1AAF8DA24();
  *&v9[6] = v10;
  *&v9[22] = v11;
  *&v9[38] = v12;
  *(a3 + 10) = *v9;
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v9[16];
  *(a3 + 42) = *&v9[32];
  *(a3 + 56) = *(&v12 + 1);
  *(a3 + 64) = a4 * 0.5;
  *(a3 + 72) = v7;
}

uint64_t sub_1AADB35BC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, double *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v375 = a8;
  v376 = a3;
  v341 = a7;
  v399 = a6;
  v377 = a5;
  v398 = a4;
  v367 = a2;
  v395 = a1;
  v401 = a9;
  v362 = sub_1AAF8D454();
  v360 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v359 = v336 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1AADB6684(0, &qword_1EB4246D8, MEMORY[0x1E697A4D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v336 - v12;
  v354 = sub_1AAF8D484();
  v352 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354);
  v355 = v336 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424600, MEMORY[0x1E697A490], v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v351 = v336 - v16;
  sub_1AADB6684(0, &qword_1EB4246E0, MEMORY[0x1E697A4F0], v10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v350 = v336 - v18;
  v19 = sub_1AAF8D4F4();
  v347 = *(v19 - 8);
  v348 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v349 = v336 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_1AAF8D524();
  v357 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353);
  v22 = v336 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB66E8();
  v368 = *(v23 - 8);
  v369 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v340 = v336 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424718, sub_1AADB66E8, v10);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v364 = v336 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v361 = v336 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v378 = v336 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v383 = v336 - v32;
  sub_1AADB6950();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v365 = v336 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v397 = (v336 - v36);
  v394 = sub_1AAF8D5B4();
  v386 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v374 = v336 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1AAF8CE04();
  v371 = *(v38 - 8);
  v372 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v373 = v336 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424608, MEMORY[0x1E697A1E0], v10);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v370 = v336 - v41;
  v42 = sub_1AAF8CE24();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v363 = v336 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v344 = v336 - v45;
  v46 = sub_1AAF8D5D4();
  v381 = *(v46 - 8);
  v382 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v380 = v336 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1AAF8D694();
  MEMORY[0x1EEE9AC00](v48 - 8);
  v379 = v336 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1AAF8D624();
  v390 = *(v50 - 8);
  v391 = v50;
  MEMORY[0x1EEE9AC00](v50);
  v389 = v336 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADB6684(0, &qword_1EB424750, MEMORY[0x1E697A6F0], v10);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = v336 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v346 = v336 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v337 = v336 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v339 = v336 - v60;
  v61 = sub_1AAF8D654();
  v62 = *(v61 - 8);
  v387 = v61;
  v388 = v62;
  MEMORY[0x1EEE9AC00](v61);
  v366 = v336 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v345 = v336 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v336[1] = v336 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v338 = v336 - v69;
  sub_1AADB6684(0, &qword_1EB424758, MEMORY[0x1E697A538], v10);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v400 = v336 - v71;
  sub_1AADB6684(0, &qword_1EB424760, MEMORY[0x1E697A720], v10);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v358 = v336 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = (v336 - v75);
  MEMORY[0x1EEE9AC00](v77);
  v79 = v336 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v336 - v81;
  v83 = sub_1AAF8D6C4();
  v84 = *(v83 - 8);
  v384 = v83;
  v385 = v84;
  MEMORY[0x1EEE9AC00](v83);
  v356 = v336 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v343 = v336 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v336[0] = v336 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v92 = v336 - v91;
  v93 = sub_1AAF8D704();
  v94 = *(v93 - 8);
  v392 = v93;
  v393 = v94;
  MEMORY[0x1EEE9AC00](v93);
  v396 = v336 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v98 = v336 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v342 = v336 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v336 - v102;
  sub_1AADB6B90(v395, v407);
  if (v408 > 1u)
  {
    if (v408 != 2)
    {
      v173 = v13;
      sub_1AACBB198(v407, v415);
      v174 = *(&v415[1] + 1);
      v175 = *&v415[2];
      sub_1AACBB42C(v415, *(&v415[1] + 1));
      (*(v175 + 16))(&v409, v375, v174, v175);
      sub_1AACED220(&v409, &v402);
      sub_1AADACA00();
      swift_dynamicCast();
      v176 = v22;
      v177 = v353;
      swift_dynamicCast();
      if (v398)
      {
        v179 = v347;
        v178 = v348;
        v180 = v350;
        (*(v347 + 56))(v350, 1, 1, v348);
        sub_1AAF8D464();
        v181 = (*(v179 + 48))(v180, 1, v178);
        v182 = v401;
        v183 = v355;
        if (v181 != 1)
        {
          sub_1AADB6D8C(v180, &qword_1EB4246E0, MEMORY[0x1E697A4F0]);
        }
      }

      else
      {
        v221 = sub_1AAF8D3C4();
        (*(*(v221 - 8) + 56))(v351, 1, 1, v221);
        v222 = v350;
        sub_1AAF8D474();
        v224 = v347;
        v223 = v348;
        (*(v347 + 56))(v222, 0, 1, v348);
        (*(v224 + 32))(v349, v222, v223);
        v182 = v401;
        v183 = v355;
      }

      sub_1AAF8D514();
      if (v399)
      {
        v225 = v352;
        v226 = v173;
        v227 = v173;
        v228 = v354;
        (*(v352 + 56))(v227, 1, 1, v354);
        sub_1AAF8D464();
        if ((*(v225 + 48))(v226, 1, v228) != 1)
        {
          sub_1AADB6D8C(v226, &qword_1EB4246D8, MEMORY[0x1E697A4D0]);
        }
      }

      else
      {
        v229 = sub_1AAF8D3C4();
        (*(*(v229 - 8) + 56))(v351, 1, 1, v229);
        v230 = v173;
        sub_1AAF8D474();
        v231 = v352;
        v232 = v173;
        v233 = v354;
        (*(v352 + 56))(v232, 0, 1, v354);
        (*(v231 + 32))(v183, v230, v233);
      }

      sub_1AAF8D4A4();
      v234 = v359;
      sub_1AAF8D444();
      (*(v360 + 104))(v234, *MEMORY[0x1E697A4C8], v362);
      sub_1AAF8D494();
      *(&v414[1] + 1) = v177;
      *&v414[2] = MEMORY[0x1E697A488];
      v235 = sub_1AACB2508(v414);
      v236 = v357;
      (*(v357 + 16))(v235, v176, v177);
      sub_1AACAEF68(v414, &v402);
      v237 = *(&v403 + 1);
      v238 = sub_1AACBB42C(&v402, *(&v403 + 1));
      v182[3] = v237;
      v239 = sub_1AACB2508(v182);
      (*(*(v237 - 8) + 16))(v239, v238, v237);
      sub_1AAD9A5F8(&v409);
      sub_1AACB634C(v414);
      sub_1AACB634C(&v402);
      (*(v236 + 8))(v176, v177);
      v240 = v415;
      return sub_1AACB634C(v240);
    }

    v362 = v54;
    v137 = *&v407[0];
    sub_1AAF8D6F4();
    v138 = sub_1AAF8F0B4();
    v139 = v397;
    *v397 = v138;
    v139[1] = v140;
    v375 = sub_1AAF8ED04();
    sub_1AAF8F124();
    sub_1AAF8DA24();
    v360 = v409;
    LODWORD(v359) = BYTE8(v409);
    v357 = v410;
    LODWORD(v355) = v411;
    v353 = v413;
    v354 = v412;
    v141 = v367;
    memcpy(v415, v367, sizeof(v415));
    v142 = sub_1AAD00C24(v415);
    v395 = v137;
    if (v142 == 1 || (v143 = *(&v415[28] + 1), !*(*(&v415[28] + 1) + 16)))
    {
      v150 = v369;
      v153 = *(v368 + 56);
      v153(v383, 1, 1, v369);
    }

    else
    {
      v144 = v341[2];
      v145 = v341[3];
      v146 = v341[4];
      v147 = v341[5];

      sub_1AADB6C84(v141, v414, &qword_1EB424780, &type metadata for Chart3DContours, MEMORY[0x1E69E6720], sub_1AADB8798);
      *&v414[0] = sub_1AADAD184(v143, v144, v145, v146, v147, 512.0);
      v148 = swift_allocObject();
      *(v148 + 16) = v375;
      *(v148 + 24) = xmmword_1AAF977D0;
      sub_1AADB8798(0, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
      sub_1AADB67A4(0);
      sub_1AADB68D4();
      sub_1AADB8608(&qword_1EB424788, sub_1AADB67A4, sub_1AADB82B8);
      sub_1AADB8368();

      v149 = v340;
      sub_1AAF8EFD4();
      sub_1AADB83BC(v141, &qword_1EB424780, &type metadata for Chart3DContours);
      v151 = v368;
      v150 = v369;
      v152 = v383;
      (*(v368 + 32))(v383, v149, v369);
      v153 = *(v151 + 56);
      v153(v152, 0, 1, v150);
    }

    memcpy(v414, v141, sizeof(v414));
    if (sub_1AAD00C24(v414) == 1 || (v184 = *(&v414[29] + 1), !*(*(&v414[29] + 1) + 16)))
    {
      v192 = 1;
    }

    else
    {
      v185 = v341[12];
      v186 = v341[13];
      v187 = v341[14];
      v188 = v341[15];
      sub_1AADB6C84(v141, &v402, &qword_1EB424780, &type metadata for Chart3DContours, MEMORY[0x1E69E6720], sub_1AADB8798);
      *&v402 = sub_1AADAD184(v184, v185, v186, v187, v188, 512.0);
      v189 = swift_allocObject();
      *(v189 + 16) = v375;
      *(v189 + 24) = xmmword_1AAF977E0;
      sub_1AADB8798(0, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
      sub_1AADB67A4(0);
      sub_1AADB68D4();
      sub_1AADB8608(&qword_1EB424788, sub_1AADB67A4, sub_1AADB82B8);
      sub_1AADB8368();

      v190 = v340;
      v191 = v368;
      v150 = v369;
      sub_1AAF8EFD4();
      sub_1AADB83BC(v141, &qword_1EB424780, &type metadata for Chart3DContours);
      (*(v191 + 32))(v378, v190, v150);
      v192 = 0;
    }

    v193 = v378;
    v153(v378, v192, 1, v150);
    sub_1AADB6BEC();
    v195 = v397 + *(v194 + 44);
    v196 = MEMORY[0x1E69E6720];
    v197 = v361;
    sub_1AADB6C84(v383, v361, &qword_1EB424718, sub_1AADB66E8, MEMORY[0x1E69E6720], sub_1AADB6684);
    v198 = v193;
    v199 = v364;
    sub_1AADB6C84(v198, v364, &qword_1EB424718, sub_1AADB66E8, v196, sub_1AADB6684);
    v200 = v360;
    *v195 = v395;
    *(v195 + 1) = v200;
    v195[16] = v359;
    *(v195 + 3) = v357;
    v195[32] = v355;
    v201 = v353;
    *(v195 + 5) = v354;
    *(v195 + 6) = v201;
    sub_1AADB69E4();
    v203 = v202;
    sub_1AADB6C84(v197, &v195[*(v202 + 48)], &qword_1EB424718, sub_1AADB66E8, v196, sub_1AADB6684);
    sub_1AADB6C84(v199, &v195[*(v203 + 64)], &qword_1EB424718, sub_1AADB66E8, v196, sub_1AADB6684);

    sub_1AADB6D8C(v378, &qword_1EB424718, sub_1AADB66E8);
    sub_1AADB6D8C(v383, &qword_1EB424718, sub_1AADB66E8);
    sub_1AADB6D8C(v199, &qword_1EB424718, sub_1AADB66E8);
    sub_1AADB6D8C(v197, &qword_1EB424718, sub_1AADB66E8);

    v204 = v365;
    sub_1AADB8A64(v397, v365, sub_1AADB6950);
    sub_1AADB6CF8();
    swift_allocObject();
    MEMORY[0x1AC5966E0](v204);
    v205 = sub_1AAF8DA94();

    if (v205)
    {
      sub_1AAF8CE44();
      v206 = *MEMORY[0x1E697A1D0];
      v207 = sub_1AAF8CE34();
      v208 = *(v207 - 8);
      v209 = v370;
      (*(v208 + 104))(v370, v206, v207);
      (*(v208 + 56))(v209, 0, 1, v207);
      (*(v371 + 104))(v373, *MEMORY[0x1E697A1C8], v372);
      v210 = v205;
      sub_1AAF8CE14();
      sub_1AAF8CDF4();
      v211 = v401;
      v212 = v400;
      sub_1AADB8B34(v397, sub_1AADB6950);

      v213 = v374;
      sub_1AAF8D5C4();
      v214 = v386;
      v215 = v394;
      (*(v386 + 16))(v212, v213, v394);
      v216 = *(v214 + 56);
      v216(v212, 0, 1, v215);
      v217 = [objc_opt_self() whiteColor];
      sub_1AAF8D684();
      sub_1AAF8D6D4();

      (*(v214 + 8))(v213, v215);
      if (v398)
      {
        v219 = v384;
        v218 = v385;
        v220 = v358;
        (*(v385 + 56))(v358, 1, 1, v384);
        sub_1AAF8D614();
        if ((*(v218 + 48))(v220, 1, v219) != 1)
        {
          sub_1AADB6D8C(v220, &qword_1EB424760, MEMORY[0x1E697A720]);
        }
      }

      else
      {
        v250 = v376;
        v216(v212, 1, 1, v215);
        v251 = v358;
        MEMORY[0x1AC5962D0](v212, v250);
        v253 = v384;
        v252 = v385;
        (*(v385 + 56))(v251, 0, 1, v384);
        (*(v252 + 32))(v356, v251, v253);
      }

      sub_1AAF8D6E4();
      if (v399)
      {
        v255 = v387;
        v254 = v388;
        v256 = v362;
        (*(v388 + 56))(v362, 1, 1, v387);
        sub_1AAF8D614();
        if ((*(v254 + 48))(v256, 1, v255) != 1)
        {
          sub_1AADB6D8C(v256, &qword_1EB424750, MEMORY[0x1E697A6F0]);
        }
      }

      else
      {
        v267 = v377;
        v216(v212, 1, 1, v394);
        v268 = v362;
        MEMORY[0x1AC596260](v212, v267);
        v270 = v387;
        v269 = v388;
        (*(v388 + 56))(v268, 0, 1, v387);
        (*(v269 + 32))(v366, v268, v270);
      }

      v271 = v396;
      sub_1AAF8D674();
      v272 = v389;
      sub_1AAF8D614();
      (*(v390 + 104))(v272, *MEMORY[0x1E697A6E8], v391);
      sub_1AAF8D664();
      (*(v381 + 104))(v380, *MEMORY[0x1E697A630], v382);
      sub_1AAF8D604();
      v273 = v392;
      *(&v403 + 1) = v392;
      v404 = MEMORY[0x1E697A6A0];
      v274 = sub_1AACB2508(&v402);
      v275 = v393;
      (*(v393 + 16))(v274, v271, v273);
      sub_1AACAEF68(&v402, v405);
      v276 = v406;
      v277 = sub_1AACBB42C(v405, v406);
      v211[3] = v276;
      v278 = sub_1AACB2508(v211);
      (*(*(v276 - 8) + 16))(v278, v277, v276);

      (*(v275 + 8))(v271, v273);
      sub_1AACB634C(&v402);
      v240 = v405;
      return sub_1AACB634C(v240);
    }

    sub_1AADB8B34(v397, sub_1AADB6950);
LABEL_73:
    sub_1AAF902C4();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v408)
  {
    v154 = *&v407[0];
    sub_1AAF8D6F4();

    sub_1AAF8F124();
    sub_1AAF8DA24();
    *&v415[0] = v154;
    *(&v415[0] + 1) = *&v414[0];
    LOBYTE(v415[1]) = BYTE8(v414[0]);
    *(&v415[1] + 1) = *&v414[1];
    LOBYTE(v415[2]) = BYTE8(v414[1]);
    *(&v415[2] + 8) = v414[2];
    sub_1AADB8438();
    swift_allocObject();

    MEMORY[0x1AC5966E0](v415);
    v155 = sub_1AAF8DA94();

    if (v155)
    {
      v397 = v76;
      sub_1AAF8CE44();
      v156 = *MEMORY[0x1E697A1D0];
      v157 = sub_1AAF8CE34();
      v158 = *(v157 - 8);
      v159 = v370;
      (*(v158 + 104))(v370, v156, v157);
      (*(v158 + 56))(v159, 0, 1, v157);
      (*(v371 + 104))(v373, *MEMORY[0x1E697A1C8], v372);
      v160 = v155;
      sub_1AAF8CE14();
      sub_1AAF8CDF4();

      swift_bridgeObjectRelease_n();

      v161 = v374;
      sub_1AAF8D5C4();
      v162 = v386;
      v163 = v400;
      v164 = v394;
      (*(v386 + 16))(v400, v161, v394);
      v165 = *(v162 + 56);
      (v165)(v163, 0, 1, v164);
      v166 = [objc_opt_self() whiteColor];
      sub_1AAF8D684();
      sub_1AAF8D6D4();

      (*(v162 + 8))(v161, v164);
      v396 = v165;
      if (v398)
      {
        v168 = v384;
        v167 = v385;
        v169 = v397;
        (*(v385 + 56))(v397, 1, 1, v384);
        sub_1AAF8D614();
        v170 = (*(v167 + 48))(v169, 1, v168);
        v171 = v401;
        v172 = v345;
        if (v170 != 1)
        {
          sub_1AADB6D8C(v169, &qword_1EB424760, MEMORY[0x1E697A720]);
        }
      }

      else
      {
        v241 = v376;
        (v165)(v163, 1, 1, v164);
        v242 = v397;
        MEMORY[0x1AC5962D0](v163, v241);
        v244 = v384;
        v243 = v385;
        (*(v385 + 56))(v242, 0, 1, v384);
        (*(v243 + 32))(v343, v242, v244);
        v171 = v401;
        v172 = v345;
      }

      sub_1AAF8D6E4();
      v245 = v346;
      if (v399)
      {
        v247 = v387;
        v246 = v388;
        (*(v388 + 56))(v346, 1, 1, v387);
        sub_1AAF8D614();
        v248 = (*(v246 + 48))(v245, 1, v247);
        v249 = v392;
        if (v248 != 1)
        {
          sub_1AADB6D8C(v245, &qword_1EB424750, MEMORY[0x1E697A6F0]);
        }
      }

      else
      {
        v257 = v377;
        v258 = v400;
        (v396)(v400, 1, 1, v164);
        MEMORY[0x1AC596260](v258, v257);
        v260 = v387;
        v259 = v388;
        (*(v388 + 56))(v245, 0, 1, v387);
        (*(v259 + 32))(v172, v245, v260);
        v249 = v392;
      }

      sub_1AAF8D674();
      v261 = v389;
      sub_1AAF8D614();
      (*(v390 + 104))(v261, *MEMORY[0x1E697A6E8], v391);
      sub_1AAF8D664();
      (*(v381 + 104))(v380, *MEMORY[0x1E697A630], v382);
      sub_1AAF8D604();
      *(&v415[1] + 1) = v249;
      *&v415[2] = MEMORY[0x1E697A6A0];
      v262 = sub_1AACB2508(v415);
      v263 = v393;
      (*(v393 + 16))(v262, v98, v249);
      sub_1AACAEF68(v415, &v402);
      v264 = *(&v403 + 1);
      v265 = sub_1AACBB42C(&v402, *(&v403 + 1));
      v171[3] = v264;
      v266 = sub_1AACB2508(v171);
      (*(*(v264 - 8) + 16))(v266, v265, v264);
      (*(v263 + 8))(v98, v249);
      sub_1AACB634C(v415);
      v240 = &v402;
      return sub_1AACB634C(v240);
    }

    goto LABEL_73;
  }

  v396 = v79;
  v104 = *&v407[0];
  v105 = v401;
  if (qword_1EB422B58 != -1)
  {
    swift_once();
  }

  v106 = off_1EB4246D0;
  swift_beginAccess();
  v107 = *(v106 + 2);

  v108 = pthread_getspecific(v107);
  v109 = v400;
  v397 = v104;
  if (!v108)
  {
    v110 = swift_slowAlloc();
    pthread_setspecific(*(v106 + 2), v110);
    sub_1AADB88C4(0, &qword_1EB4247E0, type metadata accessor for LRUCache);
    *(&v415[1] + 1) = v111;
    v112 = swift_allocObject();
    *&v415[0] = v112;
    v113 = *(v106 + 4);
    v114 = *(v106 + 7);
    v115 = *(v106 + 40);
    *(v112 + 16) = *(v106 + 3);
    *(v112 + 24) = v113;
    *(v112 + 32) = v115;
    *(v112 + 48) = v114;
    sub_1AACED35C(v415, v110);
    v104 = v397;

    v109 = v400;

    v108 = v110;
  }

  sub_1AACED220(v108, &v409);
  sub_1AADB88C4(0, &qword_1EB4247E0, type metadata accessor for LRUCache);
  v116 = v104;
  v118 = v117;
  swift_dynamicCast();
  v119 = v116;
  v120 = v105;
  v121 = v109;
  sub_1AADB6DFC(v119, v414);
  v395 = *(&v415[0] + 1);
  v122 = *&v415[0];
  v378 = *(&v415[1] + 1);
  v383 = *&v415[1];
  v374 = *&v415[2];
  v123 = pthread_getspecific(*(v106 + 2));
  if (!v123)
  {
    v123 = swift_slowAlloc();
    pthread_setspecific(*(v106 + 2), v123);
    v411 = v118;
    v124 = swift_allocObject();
    *&v409 = v124;
    v125 = *(v106 + 4);
    v126 = *(v106 + 7);
    v127 = *(v106 + 40);
    *(v124 + 16) = *(v106 + 3);
    *(v124 + 24) = v125;
    *(v124 + 32) = v127;
    *(v124 + 48) = v126;
    sub_1AACED35C(&v409, v123);
    v120 = v401;

    v121 = v400;
  }

  v411 = v118;
  v128 = swift_allocObject();
  *&v409 = v128;
  v129 = v395;
  v128[2] = v122;
  v128[3] = v129;
  v130 = v378;
  v128[4] = v383;
  v128[5] = v130;
  v128[6] = v374;
  sub_1AACB634C(v123);
  sub_1AACED35C(&v409, v123);

  v131 = v396;
  if (*(&v414[1] + 1))
  {
    v402 = v414[0];
    v403 = v414[1];
    sub_1AACED220(&v402, v414);
    sub_1AADACA00();
    swift_dynamicCast();
    v132 = v392;
    swift_dynamicCast();
    if (v398)
    {
      v134 = v384;
      v133 = v385;
      (*(v385 + 56))(v82, 1, 1, v384);
      sub_1AAF8D614();
      v135 = (*(v133 + 48))(v82, 1, v134);
      v136 = v394;
      if (v135 != 1)
      {
        sub_1AADB6D8C(v82, &qword_1EB424760, MEMORY[0x1E697A720]);
      }
    }

    else
    {
      v285 = v376;
      v136 = v394;
      (*(v386 + 56))(v121, 1, 1, v394);
      MEMORY[0x1AC5962D0](v121, v285);
      v287 = v384;
      v286 = v385;
      (*(v385 + 56))(v82, 0, 1, v384);
      (*(v286 + 32))(v92, v82, v287);
    }

    sub_1AAF8D6E4();
    if (v399)
    {
      v289 = v387;
      v288 = v388;
      v290 = v339;
      (*(v388 + 56))(v339, 1, 1, v387);
      sub_1AAF8D614();
      if ((*(v288 + 48))(v290, 1, v289) != 1)
      {
        sub_1AADB6D8C(v290, &qword_1EB424750, MEMORY[0x1E697A6F0]);
      }
    }

    else
    {
      v291 = v377;
      (*(v386 + 56))(v121, 1, 1, v136);
      v292 = v339;
      MEMORY[0x1AC596260](v121, v291);
      v294 = v387;
      v293 = v388;
      (*(v388 + 56))(v292, 0, 1, v387);
      (*(v293 + 32))(v338, v292, v294);
    }

    sub_1AAF8D674();
    sub_1AAF8ED54();
    v295 = v389;
    sub_1AAF8D614();
    (*(v390 + 104))(v295, *MEMORY[0x1E697A6E8], v391);
    sub_1AAF8D664();
    *(&v415[1] + 1) = v132;
    *&v415[2] = MEMORY[0x1E697A6A0];
    v296 = sub_1AACB2508(v415);
    v297 = v393;
    (*(v393 + 16))(v296, v103, v132);
    sub_1AACAEF68(v415, v414);
    v298 = *(&v414[1] + 1);
    v299 = sub_1AACBB42C(v414, *(&v414[1] + 1));
    v120[3] = v298;
    v300 = sub_1AACB2508(v120);
    (*(*(v298 - 8) + 16))(v300, v299, v298);

    sub_1AAD9A5F8(&v402);
    sub_1AACB634C(v415);
    sub_1AACB634C(v414);
    return (*(v297 + 8))(v103, v132);
  }

  else
  {
    v400 = v118;
    sub_1AADB83BC(v414, &qword_1EB4246A0, &type metadata for _Chart3DResolvedSurfaceStyle);
    v280 = v342;
    sub_1AAF8D6F4();
    v281 = v392;
    v282 = v386;
    if (v398)
    {
      v284 = v384;
      v283 = v385;
      (*(v385 + 56))(v131, 1, 1, v384);
      sub_1AAF8D614();
      if ((*(v283 + 48))(v131, 1, v284) != 1)
      {
        sub_1AADB6D8C(v131, &qword_1EB424760, MEMORY[0x1E697A720]);
      }
    }

    else
    {
      v301 = v376;
      (*(v386 + 56))(v121, 1, 1, v394);
      MEMORY[0x1AC5962D0](v121, v301);
      v303 = v384;
      v302 = v385;
      (*(v385 + 56))(v131, 0, 1, v384);
      (*(v302 + 32))(v336[0], v131, v303);
    }

    sub_1AAF8D6E4();
    if (v399)
    {
      v305 = v387;
      v304 = v388;
      v306 = v337;
      (*(v388 + 56))(v337, 1, 1, v387);
      sub_1AAF8D614();
      v307 = (*(v304 + 48))(v306, 1, v305);
      v308 = v394;
      if (v307 != 1)
      {
        sub_1AADB6D8C(v306, &qword_1EB424750, MEMORY[0x1E697A6F0]);
      }
    }

    else
    {
      v309 = v377;
      v308 = v394;
      (*(v282 + 56))(v121, 1, 1, v394);
      v310 = v337;
      MEMORY[0x1AC596260](v121, v309);
      v311 = v388;
      (*(v388 + 56))(v310, 0, 1, v387);
      (*(v311 + 32))();
    }

    sub_1AAF8D674();
    sub_1AADACF28();
    v312 = v397;

    sub_1AAF8FE34();
    (*(v282 + 56))(v121, 1, 1, v308);
    sub_1AAF8D684();
    sub_1AAF8D6D4();
    sub_1AAF8ED54();
    v313 = v389;
    sub_1AAF8D614();
    (*(v390 + 104))(v313, *MEMORY[0x1E697A6E8], v391);
    sub_1AAF8D664();
    (*(v381 + 104))(v380, *MEMORY[0x1E697A630], v382);
    sub_1AAF8D604();
    *(&v415[1] + 1) = v281;
    *&v415[2] = MEMORY[0x1E697A6A0];
    v314 = sub_1AACB2508(v415);
    (*(v393 + 16))(v314, v280, v281);
    sub_1AACAEF68(v415, v414);
    v315 = *(&v414[1] + 1);
    v316 = sub_1AACBB42C(v414, *(&v414[1] + 1));
    v120[3] = v315;
    v317 = sub_1AACB2508(v120);
    (*(*(v315 - 8) + 16))(v317, v316, v315);
    sub_1AACB634C(v415);
    sub_1AACB634C(v414);
    v318 = off_1EB4246D0;
    swift_beginAccess();
    v319 = *(v318 + 2);

    v320 = pthread_getspecific(v319);
    if (!v320)
    {
      v321 = swift_slowAlloc();
      pthread_setspecific(*(v318 + 2), v321);
      *(&v415[1] + 1) = v400;
      v322 = swift_allocObject();
      *&v415[0] = v322;
      v323 = *(v318 + 4);
      v324 = *(v318 + 7);
      v325 = *(v318 + 40);
      *(v322 + 16) = *(v318 + 3);
      *(v322 + 24) = v323;
      *(v322 + 32) = v325;
      *(v322 + 48) = v324;
      sub_1AACED35C(v415, v321);

      v281 = v392;

      v320 = v321;
    }

    sub_1AACED220(v320, v414);
    v326 = v400;
    swift_dynamicCast();
    sub_1AADB6EDC(v120, v312);
    v327 = v415[0];
    v328 = v415[1];
    v329 = *&v415[2];
    v330 = pthread_getspecific(*(v318 + 2));
    if (!v330)
    {
      v330 = swift_slowAlloc();
      pthread_setspecific(*(v318 + 2), v330);
      *(&v414[1] + 1) = v326;
      v331 = swift_allocObject();
      *&v414[0] = v331;
      v332 = *(v318 + 4);
      v333 = *(v318 + 7);
      v334 = *(v318 + 40);
      *(v331 + 16) = *(v318 + 3);
      *(v331 + 24) = v332;
      *(v331 + 32) = v334;
      *(v331 + 48) = v333;
      sub_1AACED35C(v414, v330);

      v326 = v400;
      v281 = v392;
    }

    *(&v414[1] + 1) = v326;
    v335 = swift_allocObject();
    *&v414[0] = v335;
    *(v335 + 16) = v327;
    *(v335 + 32) = v328;
    *(v335 + 48) = v329;
    sub_1AACB634C(v330);
    sub_1AACED35C(v414, v330);

    return (*(v393 + 8))(v342, v281);
  }
}

void sub_1AADB6684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AADB66E8()
{
  if (!qword_1EB4246E8)
  {
    sub_1AADB8798(255, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
    sub_1AADB67A4(255);
    sub_1AADB68D4();
    sub_1AAD80D58();
    v0 = sub_1AAF8EFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4246E8);
    }
  }
}

void sub_1AADB67F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8DF74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AADB6858()
{
  if (!qword_1EB424708)
  {
    sub_1AACCC830();
    v0 = sub_1AAF8D884();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424708);
    }
  }
}

unint64_t sub_1AADB68D4()
{
  result = qword_1EB424710;
  if (!qword_1EB424710)
  {
    sub_1AADB8798(255, &qword_1EB4246F0, &type metadata for Chart3DContours.IdentifiableContour, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424710);
  }

  return result;
}

void sub_1AADB6950()
{
  if (!qword_1EB424720)
  {
    sub_1AADB6684(255, &qword_1EB424728, sub_1AADB69E4, MEMORY[0x1E6981F40]);
    sub_1AADB6B08();
    v0 = sub_1AAF8EF34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424720);
    }
  }
}

void sub_1AADB69E4()
{
  if (!qword_1EB424730)
  {
    sub_1AADB6A88();
    sub_1AADB6684(255, &qword_1EB424718, sub_1AADB66E8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB424730);
    }
  }
}

void sub_1AADB6A88()
{
  if (!qword_1EB424738)
  {
    sub_1AADB8554(255, &qword_1EB424740, &qword_1ED9AF4E8);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424738);
    }
  }
}

unint64_t sub_1AADB6B08()
{
  result = qword_1EB424748;
  if (!qword_1EB424748)
  {
    sub_1AADB6684(255, &qword_1EB424728, sub_1AADB69E4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424748);
  }

  return result;
}

void sub_1AADB6BEC()
{
  if (!qword_1EB424768)
  {
    sub_1AADB6684(255, &qword_1EB424728, sub_1AADB69E4, MEMORY[0x1E6981F40]);
    v0 = sub_1AAF8DBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424768);
    }
  }
}

uint64_t sub_1AADB6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AADB6CF8()
{
  if (!qword_1EB424770)
  {
    sub_1AADB6950();
    sub_1AADB8A1C(&qword_1EB424778, sub_1AADB6950);
    v0 = sub_1AAF8DAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424770);
    }
  }
}

uint64_t sub_1AADB6D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AADB6684(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1AADB6DFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = sub_1AADB0594(a1), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 8 * v6), (v8 & 0x8000000000000000) == 0))
  {
    v9 = *(v3 + 8);
    if (v8 == *(v3 + 16))
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v11 = v9[2];
      v13[0] = (v9 + 4);
      v13[1] = v11;
      sub_1AADB7024(v13, v8, v3);
      *(v3 + 8) = v9;
LABEL_7:
      if (v8 < v9[2])
      {
        break;
      }

      __break(1u);
LABEL_12:
      v9 = sub_1AADB8108(v9);
      *(v3 + 8) = v9;
    }

    sub_1AAD9BDF8(&v9[8 * v8 + 7], a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1AADB6EDC(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  if (*(v4 + 16) && (v5 = a2, v6 = sub_1AADB0594(a2), v8 = v7, a2 = v5, (v8 & 1) != 0) && (v9 = *(*(v4 + 56) + 8 * v6), (v9 & 0x8000000000000000) == 0))
  {
    v10 = v2[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AADB8108(v10);
      v10 = result;
    }

    if (v9 >= v10[2])
    {
      __break(1u);
    }

    else
    {
      result = sub_1AADB87E8(a1, &v10[8 * v9 + 7]);
      v2[1] = v10;
      if (v9 != v2[2])
      {
        v12 = v10[2];
        v13[0] = (v10 + 4);
        v13[1] = v12;
        result = sub_1AADB7024(v13, v9, v2);
        v2[1] = v10;
      }
    }
  }

  else
  {

    return sub_1AADB768C(a1, a2, 0);
  }

  return result;
}

uint64_t *sub_1AADB7024(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + (a2 << 6));
  v5 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    *(v3 + (v5 << 6) + 8) = v4[1];
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(v3 + (v6 << 6)) = v5;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v4;
  }

  *v4 = -1;
  *(v3 + (*(a3 + 16) << 6)) = a2;
  v4[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1AADB70B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a5(0);
  v10 = *(v8 - 8);
  result = v8 - 8;
  v11 = *(v10 + 72);
  v12 = (v7 + v11 * a2);
  v13 = *v12;
  if ((*v12 & 0x8000000000000000) == 0)
  {
    *(v7 + v13 * v11 + 8) = v12[1];
  }

  v14 = v12[1];
  if ((v14 & 0x8000000000000000) == 0)
  {
    *(v7 + v14 * v11) = v13;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v12;
  }

  *v12 = -1;
  *(v7 + *(a3 + 16) * v11) = a2;
  v12[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

uint64_t *sub_1AADB7168(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = (*result + 48 * a2);
  v5 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    *(v3 + 48 * v5 + 8) = v4[1];
  }

  v6 = v4[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    *(v3 + 48 * v6) = v5;
  }

  if (*(a3 + 24) == a2)
  {
    *(a3 + 24) = *v4;
  }

  *v4 = -1;
  *(v3 + 48 * *(a3 + 16)) = a2;
  v4[1] = *(a3 + 16);
  *(a3 + 16) = a2;
  return result;
}

size_t sub_1AADB71DC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8DEC();
  v12 = v11;
  v13 = *(v11 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v34 - v16);
  v18 = v4[1];
  v19 = v18[2];
  if (v19 < *v4)
  {
    sub_1AADB8A64(a2, v17 + v12[12], type metadata accessor for CalendarCache.Key);
    sub_1AADB8A64(a1, v17 + v12[13], type metadata accessor for CalendarCache.Value);
    *(v17 + v12[14]) = a3 & 1;
    v20 = v4[2];
    *v17 = -1;
    v17[1] = v20;
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v25 = v4[3];
  if (v25 >= v19)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v18 = sub_1AAD67488(0, v18[2] + 1, 1, v18);
LABEL_9:
    v24 = v18[2];
    v23 = v18[3];
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1AAD67488(v23 > 1, v24 + 1, 1, v18);
    }

    sub_1AADB8B34(v17, sub_1AACE8DEC);
    v18[2] = v24 + 1;
    sub_1AADB8B94(v10, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, sub_1AACE8DEC);
    v4[1] = v18;
    return v19;
  }

  v17 = a2;
  a2 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = v18 + a2;
  v27 = *(v13 + 72);
  v13 = v27 * v25;
  v28 = (v18 + a2 + v27 * v25);
  v29 = v12[14];
  v30 = *(v28 + v29);
  v34 = a1;
  if (v30 == 1)
  {
    do
    {
      v25 = *v28;
      if (*v28 >= v19)
      {
        goto LABEL_23;
      }

      v13 = v27 * v25;
      v28 = &v26[v27 * v25];
    }

    while ((*(v28 + v29) & 1) != 0);
  }

  v19 = v25;
  sub_1AADB8A64(&v26[v12[12] + v13], v10, type metadata accessor for CalendarCache.Key);
  sub_1AADAE0D0(0, 1, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = v4[4];
  v20 = v37;
  sub_1AADD20A8(v19, v17, isUniquelyReferenced_nonNull_native);
  v4[4] = v37[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AADB80F4(v18);
  }

  if (v19 >= v18[2])
  {
    __break(1u);
  }

  else
  {
    v20 = v18 + a2;
    v32 = v18 + a2 + v13;
    sub_1AADB8ACC(v17, &v32[v12[12]], type metadata accessor for CalendarCache.Key);
    if (v19 < v18[2])
    {
      sub_1AADB8ACC(v34, &v32[v12[13]], type metadata accessor for CalendarCache.Value);
      v4[1] = v18;
      if (v19 != v4[2])
      {
        v33 = v18[2];
        v37[0] = v18 + a2;
        v37[1] = v33;
        sub_1AADB70B4(v37, v19, v4, v36, sub_1AACE8DEC);
        v4[1] = v18;
        return v4[2];
      }

      return v19;
    }
  }

  __break(1u);
LABEL_27:
  result = sub_1AADB80F4(v18);
  v18 = result;
LABEL_4:
  if (v20 < v18[2])
  {
    *(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v20) = v19;
LABEL_6:
    v4[2] = v19;
    if (v4[3] < 0)
    {
      v4[3] = v19;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v4[4];
    sub_1AADD20A8(v19, a2, v22);
    v4[4] = v37[0];
    v10 = v35;
    sub_1AADB8A64(v17, v35, sub_1AACE8DEC);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AADB768C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = v3[1];
  v7 = v6[2];
  if (v7 >= *v3)
  {
    v18 = (v3 + 3);
    do
    {
      v19 = *v18;
      if (*v18 >= v7)
      {
        __break(1u);
        goto LABEL_24;
      }

      v18 = &v6[8 * v19 + 4];
    }

    while ((*(v18 + 56) & 1) != 0);
    v7 = a1;
    v20 = *(v18 + 16);

    sub_1AADAE2E4(0, 1, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v3[4];
    v9 = &v26;
    sub_1AADD2388(v19, a2, isUniquelyReferenced_nonNull_native);
    v4[4] = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1AADB8108(v6);
    }

    if (v19 >= v6[2])
    {
      __break(1u);
    }

    else
    {
      v22 = &v6[8 * v19 + 4];
      v9 = *(v22 + 16);
      *(v22 + 16) = a2;

      if (v19 < v6[2])
      {
        sub_1AADB87E8(v7, v22 + 24);
        v4[1] = v6;
        if (v19 == v4[2])
        {
          return v19;
        }

        v23 = v6[2];
        v26 = (v6 + 4);
        v27 = v23;
        sub_1AADB7024(&v26, v19, v4);
        v4[1] = v6;
        return v4[2];
      }
    }

    __break(1u);
LABEL_27:
    result = sub_1AADB8108(v6);
    v6 = result;
    goto LABEL_4;
  }

  sub_1AAD9BDF8(a1, v29);
  v29[32] = a3 & 1;
  v27 = v4[2];
  v9 = v27;
  v28 = a2;
  v26 = -1;

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_6:
    v4[2] = v7;
    if (v4[3] < 0)
    {
      v4[3] = v7;
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    *&v24[0] = v4[4];
    sub_1AADD2388(v7, a2, v11);
    v4[4] = *&v24[0];
    sub_1AADB8844(&v26, v24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_24:
      v6 = sub_1AAD68364(0, v6[2] + 1, 1, v6);
    }

    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      v6 = sub_1AAD68364((v12 > 1), v13 + 1, 1, v6);
    }

    sub_1AADB8930(&v26);
    v6[2] = v13 + 1;
    v14 = &v6[8 * v13];
    v16 = v24[1];
    v15 = v25[0];
    v17 = v24[0];
    *(v14 + 73) = *(v25 + 9);
    v14[3] = v16;
    v14[4] = v15;
    v14[2] = v17;
    v4[1] = v6;
    return v7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  if (v9 < v6[2])
  {
    v6[8 * v9 + 4] = v7;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

size_t sub_1AADB7940(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v36) = a3;
  v7 = sub_1AAF8CBA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD6CE20();
  v12 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = v4[1];
  v19 = *(v18 + 16);
  if (v19 < *v4)
  {
    v34 = v15;
    (*(v8 + 16))(&v17[v12[12]], a2, v7);
    *&v17[v12[13]] = a1;
    v17[v12[14]] = v36 & 1;
    v20 = v4[2];
    *v17 = -1;
    *(v17 + 1) = v20;

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_6;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v35 = a2;
  v36 = v7;
  v25 = v4[3];
  if (v25 >= v19)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v18 = sub_1AAD68DC0(0, *(v18 + 16) + 1, 1, v18);
LABEL_9:
    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1AAD68DC0(v23 > 1, v24 + 1, 1, v18);
    }

    sub_1AADB8B34(v17, sub_1AAD6CE20);
    *(v18 + 16) = v24 + 1;
    sub_1AADB8B94(a2, v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24, sub_1AAD6CE20);
    v4[1] = v18;
    return v19;
  }

  v17 = ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v26 = &v17[v18];
  v27 = *(v15 + 72);
  a2 = v27 * v25;
  v28 = &v17[v18 + v27 * v25];
  v29 = v12[14];
  if (*(v28 + v29) == 1)
  {
    do
    {
      v25 = *v28;
      if (*v28 >= v19)
      {
        goto LABEL_23;
      }

      a2 = v27 * v25;
      v28 = &v26[v27 * v25];
    }

    while ((*(v28 + v29) & 1) != 0);
  }

  v19 = v25;
  (*(v8 + 16))(v10, &v26[v12[12] + a2], v36);
  sub_1AADAE404(0, 1, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = v4[4];
  v20 = v38;
  v31 = v35;
  sub_1AADD27B0(v19, v35, isUniquelyReferenced_nonNull_native);
  v4[4] = v38[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AADB8158(v18);
  }

  if (v19 >= *(v18 + 16))
  {
    __break(1u);
  }

  else
  {
    v17 += v18;
    (*(v8 + 24))(&v17[a2 + v12[12]], v31, v36);
    if (v19 < *(v18 + 16))
    {
      *&v17[a2 + v12[13]] = a1;

      v4[1] = v18;
      if (v19 != v4[2])
      {
        v32 = *(v18 + 16);
        v38[0] = v17;
        v38[1] = v32;
        sub_1AADB70B4(v38, v19, v4, v37, sub_1AAD6CE20);
        v4[1] = v18;
        return v4[2];
      }

      return v19;
    }
  }

  __break(1u);
LABEL_27:
  result = sub_1AADB8158(v18);
  v18 = result;
LABEL_4:
  if (v20 < *(v18 + 16))
  {
    *(v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20) = v19;
LABEL_6:
    v4[2] = v19;
    if (v4[3] < 0)
    {
      v4[3] = v19;
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v4[4];
    sub_1AADD27B0(v19, a2, v22);
    v4[4] = v38[0];
    a2 = v35;
    sub_1AADB8A64(v17, v35, sub_1AAD6CE20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AADB7E10(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v6 = v4;
  v10 = v4[1];
  v11 = v10[2];
  if (v11 >= *v4)
  {
    a2 = v4[3];
    if (a2 < v11)
    {
      v17 = v10 + 4;
      v5 = 48 * a2;
      if (LOBYTE(v10[6 * a2 + 9]) != 1)
      {
LABEL_16:
        v18 = sub_1AADB0B80(*(v17 + v5 + 16), *(v17 + v5 + 24));
        if ((v19 & 1) == 0)
        {
          goto LABEL_19;
        }

        v11 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v4[4];
        v26[0] = v6[4];
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        goto LABEL_32;
      }

      while (1)
      {
        a2 = v17[6 * a2];
        if (a2 >= v11)
        {
          break;
        }

        v5 = 48 * a2;
        if ((v10[6 * a2 + 9] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    v10 = sub_1AAD69BDC(0, v10[2] + 1, 1, v10);
LABEL_9:
    v15 = v10[2];
    v14 = v10[3];
    if (v15 >= v14 >> 1)
    {
      v10 = sub_1AAD69BDC((v14 > 1), v15 + 1, 1, v10);
    }

    v10[2] = v15 + 1;
    v16 = &v10[6 * v15];
    v16[4] = NAN;
    *(v16 + 5) = v5;
    v16[6] = a3;
    v16[7] = a4;
    *(v16 + 8) = a1;
    *(v16 + 72) = a2 & 1;
    v6[1] = v10;
    return v11;
  }

  v5 = v4[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_6:
    v6[2] = v11;
    if ((v6[3] & 0x8000000000000000) != 0)
    {
      v6[3] = v11;
    }

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v6[4];
    sub_1AADD3678(v11, v13, a3, a4);
    v6[4] = v26[0];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (v5 < v10[2])
    {
      v10[6 * v5 + 4] = v11;
      goto LABEL_6;
    }

    __break(1u);
LABEL_32:
    sub_1AAD97814();
    v21 = v26[0];
LABEL_18:
    sub_1AAD9324C(v11, v21);
    v6[4] = v21;
LABEL_19:
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v6[4];
    sub_1AADD3678(a2, v22, a3, a4);
    v6[4] = v26[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AADB81BC(v10);
    }

    if (a2 < v10[2])
    {
      break;
    }

    __break(1u);
LABEL_30:
    v10 = sub_1AADB81BC(v10);
  }

  v23 = (v10 + v5 + 32);
  v23[2] = a3;
  v23[3] = a4;
  *(v23 + 4) = a1;

  v6[1] = v10;
  if (a2 == v6[2])
  {
    return a2;
  }

  v24 = v10[2];
  v26[0] = (v10 + 4);
  v26[1] = v24;
  sub_1AADB7168(v26, a2, v6);
  v6[1] = v10;
  return v6[2];
}

unint64_t sub_1AADB82B8()
{
  result = qword_1EB424790;
  if (!qword_1EB424790)
  {
    sub_1AADB67CC(255);
    sub_1AADB8A1C(&qword_1EB424798, sub_1AADB6858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424790);
  }

  return result;
}

unint64_t sub_1AADB8368()
{
  result = qword_1EB4247A0;
  if (!qword_1EB4247A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4247A0);
  }

  return result;
}

uint64_t sub_1AADB83BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AADB8798(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AADB8438()
{
  if (!qword_1EB4247A8)
  {
    sub_1AADB84D4();
    sub_1AADB8608(&qword_1EB4247C8, sub_1AADB84D4, sub_1AADB8688);
    v0 = sub_1AAF8DAE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4247A8);
    }
  }
}

void sub_1AADB84D4()
{
  if (!qword_1EB4247B0)
  {
    sub_1AADB8554(255, &qword_1EB4247B8, &qword_1EB4247C0);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4247B0);
    }
  }
}

void sub_1AADB8554(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AADB85B8(255, a3);
    v4 = sub_1AAF8DF74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AADB85B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AAF8E5F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1AADB8608(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AADB8688()
{
  result = qword_1EB4247D0;
  if (!qword_1EB4247D0)
  {
    sub_1AADB8554(255, &qword_1EB4247B8, &qword_1EB4247C0);
    sub_1AADB08E4();
    sub_1AADB8728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4247D0);
  }

  return result;
}

unint64_t sub_1AADB8728()
{
  result = qword_1EB4247D8;
  if (!qword_1EB4247D8)
  {
    sub_1AADB85B8(255, &qword_1EB4247C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4247D8);
  }

  return result;
}

void sub_1AADB8798(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AADB8844(uint64_t a1, uint64_t a2)
{
  sub_1AADB88C4(0, &qword_1EB423A70, type metadata accessor for LRUCache.Element);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AADB88C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAD68514();
    v7 = a3(a1, MEMORY[0x1E69815C0], &type metadata for _Chart3DResolvedSurfaceStyle, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AADB8930(uint64_t a1)
{
  sub_1AADB88C4(0, &qword_1EB423A70, type metadata accessor for LRUCache.Element);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AADB89A8()
{
  if (!qword_1EB4247E8)
  {
    sub_1AADB88C4(255, &qword_1EB4247E0, type metadata accessor for LRUCache);
    v0 = type metadata accessor for ThreadSpecific();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4247E8);
    }
  }
}

uint64_t sub_1AADB8A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AADB8A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADB8ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADB8B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AADB8B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AADB8BFC()
{
  v0 = sub_1AAF8EC54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v264 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBDD9C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AAF977F0;
  v5 = *MEMORY[0x1E69814D8];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 32) = sub_1AAF8F074();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 48) = sub_1AAF8F074();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 64) = sub_1AAF8F074();
  *(v4 + 72) = v9;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 80) = sub_1AAF8F074();
  *(v4 + 88) = v10;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 96) = sub_1AAF8F074();
  *(v4 + 104) = v11;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 112) = sub_1AAF8F074();
  *(v4 + 120) = v12;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 128) = sub_1AAF8F074();
  *(v4 + 136) = v13;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 144) = sub_1AAF8F074();
  *(v4 + 152) = v14;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 160) = sub_1AAF8F074();
  *(v4 + 168) = v15;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 176) = sub_1AAF8F074();
  *(v4 + 184) = v16;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 192) = sub_1AAF8F074();
  *(v4 + 200) = v17;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 208) = sub_1AAF8F074();
  *(v4 + 216) = v18;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 224) = sub_1AAF8F074();
  *(v4 + 232) = v19;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 240) = sub_1AAF8F074();
  *(v4 + 248) = v20;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 256) = sub_1AAF8F074();
  *(v4 + 264) = v21;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 272) = sub_1AAF8F074();
  *(v4 + 280) = v22;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 288) = sub_1AAF8F074();
  *(v4 + 296) = v23;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 304) = sub_1AAF8F074();
  *(v4 + 312) = v24;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 320) = sub_1AAF8F074();
  *(v4 + 328) = v25;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 336) = sub_1AAF8F074();
  *(v4 + 344) = v26;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 352) = sub_1AAF8F074();
  *(v4 + 360) = v27;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 368) = sub_1AAF8F074();
  *(v4 + 376) = v28;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 384) = sub_1AAF8F074();
  *(v4 + 392) = v29;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 400) = sub_1AAF8F074();
  *(v4 + 408) = v30;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 416) = sub_1AAF8F074();
  *(v4 + 424) = v31;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 432) = sub_1AAF8F074();
  *(v4 + 440) = v32;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 448) = sub_1AAF8F074();
  *(v4 + 456) = v33;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 464) = sub_1AAF8F074();
  *(v4 + 472) = v34;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 480) = sub_1AAF8F074();
  *(v4 + 488) = v35;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 496) = sub_1AAF8F074();
  *(v4 + 504) = v36;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 512) = sub_1AAF8F074();
  *(v4 + 520) = v37;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 528) = sub_1AAF8F074();
  *(v4 + 536) = v38;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 544) = sub_1AAF8F074();
  *(v4 + 552) = v39;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 560) = sub_1AAF8F074();
  *(v4 + 568) = v40;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 576) = sub_1AAF8F074();
  *(v4 + 584) = v41;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 592) = sub_1AAF8F074();
  *(v4 + 600) = v42;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 608) = sub_1AAF8F074();
  *(v4 + 616) = v43;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 624) = sub_1AAF8F074();
  *(v4 + 632) = v44;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 640) = sub_1AAF8F074();
  *(v4 + 648) = v45;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 656) = sub_1AAF8F074();
  *(v4 + 664) = v46;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 672) = sub_1AAF8F074();
  *(v4 + 680) = v47;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 688) = sub_1AAF8F074();
  *(v4 + 696) = v48;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 704) = sub_1AAF8F074();
  *(v4 + 712) = v49;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 720) = sub_1AAF8F074();
  *(v4 + 728) = v50;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 736) = sub_1AAF8F074();
  *(v4 + 744) = v51;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 752) = sub_1AAF8F074();
  *(v4 + 760) = v52;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 768) = sub_1AAF8F074();
  *(v4 + 776) = v53;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 784) = sub_1AAF8F074();
  *(v4 + 792) = v54;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 800) = sub_1AAF8F074();
  *(v4 + 808) = v55;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 816) = sub_1AAF8F074();
  *(v4 + 824) = v56;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 832) = sub_1AAF8F074();
  *(v4 + 840) = v57;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 848) = sub_1AAF8F074();
  *(v4 + 856) = v58;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 864) = sub_1AAF8F074();
  *(v4 + 872) = v59;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 880) = sub_1AAF8F074();
  *(v4 + 888) = v60;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 896) = sub_1AAF8F074();
  *(v4 + 904) = v61;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 912) = sub_1AAF8F074();
  *(v4 + 920) = v62;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 928) = sub_1AAF8F074();
  *(v4 + 936) = v63;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 944) = sub_1AAF8F074();
  *(v4 + 952) = v64;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 960) = sub_1AAF8F074();
  *(v4 + 968) = v65;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 976) = sub_1AAF8F074();
  *(v4 + 984) = v66;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 992) = sub_1AAF8F074();
  *(v4 + 1000) = v67;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1008) = sub_1AAF8F074();
  *(v4 + 1016) = v68;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1024) = sub_1AAF8F074();
  *(v4 + 1032) = v69;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1040) = sub_1AAF8F074();
  *(v4 + 1048) = v70;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1056) = sub_1AAF8F074();
  *(v4 + 1064) = v71;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1072) = sub_1AAF8F074();
  *(v4 + 1080) = v72;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1088) = sub_1AAF8F074();
  *(v4 + 1096) = v73;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1104) = sub_1AAF8F074();
  *(v4 + 1112) = v74;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1120) = sub_1AAF8F074();
  *(v4 + 1128) = v75;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1136) = sub_1AAF8F074();
  *(v4 + 1144) = v76;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1152) = sub_1AAF8F074();
  *(v4 + 1160) = v77;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1168) = sub_1AAF8F074();
  *(v4 + 1176) = v78;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1184) = sub_1AAF8F074();
  *(v4 + 1192) = v79;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1200) = sub_1AAF8F074();
  *(v4 + 1208) = v80;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1216) = sub_1AAF8F074();
  *(v4 + 1224) = v81;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1232) = sub_1AAF8F074();
  *(v4 + 1240) = v82;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1248) = sub_1AAF8F074();
  *(v4 + 1256) = v83;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1264) = sub_1AAF8F074();
  *(v4 + 1272) = v84;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1280) = sub_1AAF8F074();
  *(v4 + 1288) = v85;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1296) = sub_1AAF8F074();
  *(v4 + 1304) = v86;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1312) = sub_1AAF8F074();
  *(v4 + 1320) = v87;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1328) = sub_1AAF8F074();
  *(v4 + 1336) = v88;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1344) = sub_1AAF8F074();
  *(v4 + 1352) = v89;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1360) = sub_1AAF8F074();
  *(v4 + 1368) = v90;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1376) = sub_1AAF8F074();
  *(v4 + 1384) = v91;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1392) = sub_1AAF8F074();
  *(v4 + 1400) = v92;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1408) = sub_1AAF8F074();
  *(v4 + 1416) = v93;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1424) = sub_1AAF8F074();
  *(v4 + 1432) = v94;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1440) = sub_1AAF8F074();
  *(v4 + 1448) = v95;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1456) = sub_1AAF8F074();
  *(v4 + 1464) = v96;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1472) = sub_1AAF8F074();
  *(v4 + 1480) = v97;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1488) = sub_1AAF8F074();
  *(v4 + 1496) = v98;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1504) = sub_1AAF8F074();
  *(v4 + 1512) = v99;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1520) = sub_1AAF8F074();
  *(v4 + 1528) = v100;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1536) = sub_1AAF8F074();
  *(v4 + 1544) = v101;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1552) = sub_1AAF8F074();
  *(v4 + 1560) = v102;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1568) = sub_1AAF8F074();
  *(v4 + 1576) = v103;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1584) = sub_1AAF8F074();
  *(v4 + 1592) = v104;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1600) = sub_1AAF8F074();
  *(v4 + 1608) = v105;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1616) = sub_1AAF8F074();
  *(v4 + 1624) = v106;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1632) = sub_1AAF8F074();
  *(v4 + 1640) = v107;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1648) = sub_1AAF8F074();
  *(v4 + 1656) = v108;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1664) = sub_1AAF8F074();
  *(v4 + 1672) = v109;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1680) = sub_1AAF8F074();
  *(v4 + 1688) = v110;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1696) = sub_1AAF8F074();
  *(v4 + 1704) = v111;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1712) = sub_1AAF8F074();
  *(v4 + 1720) = v112;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1728) = sub_1AAF8F074();
  *(v4 + 1736) = v113;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1744) = sub_1AAF8F074();
  *(v4 + 1752) = v114;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1760) = sub_1AAF8F074();
  *(v4 + 1768) = v115;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1776) = sub_1AAF8F074();
  *(v4 + 1784) = v116;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1792) = sub_1AAF8F074();
  *(v4 + 1800) = v117;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1808) = sub_1AAF8F074();
  *(v4 + 1816) = v118;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1824) = sub_1AAF8F074();
  *(v4 + 1832) = v119;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1840) = sub_1AAF8F074();
  *(v4 + 1848) = v120;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1856) = sub_1AAF8F074();
  *(v4 + 1864) = v121;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1872) = sub_1AAF8F074();
  *(v4 + 1880) = v122;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1888) = sub_1AAF8F074();
  *(v4 + 1896) = v123;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1904) = sub_1AAF8F074();
  *(v4 + 1912) = v124;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1920) = sub_1AAF8F074();
  *(v4 + 1928) = v125;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1936) = sub_1AAF8F074();
  *(v4 + 1944) = v126;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1952) = sub_1AAF8F074();
  *(v4 + 1960) = v127;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1968) = sub_1AAF8F074();
  *(v4 + 1976) = v128;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 1984) = sub_1AAF8F074();
  *(v4 + 1992) = v129;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2000) = sub_1AAF8F074();
  *(v4 + 2008) = v130;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2016) = sub_1AAF8F074();
  *(v4 + 2024) = v131;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2032) = sub_1AAF8F074();
  *(v4 + 2040) = v132;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2048) = sub_1AAF8F074();
  *(v4 + 2056) = v133;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2064) = sub_1AAF8F074();
  *(v4 + 2072) = v134;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2080) = sub_1AAF8F074();
  *(v4 + 2088) = v135;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2096) = sub_1AAF8F074();
  *(v4 + 2104) = v136;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2112) = sub_1AAF8F074();
  *(v4 + 2120) = v137;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2128) = sub_1AAF8F074();
  *(v4 + 2136) = v138;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2144) = sub_1AAF8F074();
  *(v4 + 2152) = v139;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2160) = sub_1AAF8F074();
  *(v4 + 2168) = v140;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2176) = sub_1AAF8F074();
  *(v4 + 2184) = v141;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2192) = sub_1AAF8F074();
  *(v4 + 2200) = v142;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2208) = sub_1AAF8F074();
  *(v4 + 2216) = v143;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2224) = sub_1AAF8F074();
  *(v4 + 2232) = v144;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2240) = sub_1AAF8F074();
  *(v4 + 2248) = v145;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2256) = sub_1AAF8F074();
  *(v4 + 2264) = v146;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2272) = sub_1AAF8F074();
  *(v4 + 2280) = v147;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2288) = sub_1AAF8F074();
  *(v4 + 2296) = v148;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2304) = sub_1AAF8F074();
  *(v4 + 2312) = v149;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2320) = sub_1AAF8F074();
  *(v4 + 2328) = v150;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2336) = sub_1AAF8F074();
  *(v4 + 2344) = v151;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2352) = sub_1AAF8F074();
  *(v4 + 2360) = v152;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2368) = sub_1AAF8F074();
  *(v4 + 2376) = v153;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2384) = sub_1AAF8F074();
  *(v4 + 2392) = v154;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2400) = sub_1AAF8F074();
  *(v4 + 2408) = v155;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2416) = sub_1AAF8F074();
  *(v4 + 2424) = v156;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2432) = sub_1AAF8F074();
  *(v4 + 2440) = v157;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2448) = sub_1AAF8F074();
  *(v4 + 2456) = v158;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2464) = sub_1AAF8F074();
  *(v4 + 2472) = v159;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2480) = sub_1AAF8F074();
  *(v4 + 2488) = v160;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2496) = sub_1AAF8F074();
  *(v4 + 2504) = v161;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2512) = sub_1AAF8F074();
  *(v4 + 2520) = v162;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2528) = sub_1AAF8F074();
  *(v4 + 2536) = v163;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2544) = sub_1AAF8F074();
  *(v4 + 2552) = v164;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2560) = sub_1AAF8F074();
  *(v4 + 2568) = v165;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2576) = sub_1AAF8F074();
  *(v4 + 2584) = v166;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2592) = sub_1AAF8F074();
  *(v4 + 2600) = v167;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2608) = sub_1AAF8F074();
  *(v4 + 2616) = v168;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2624) = sub_1AAF8F074();
  *(v4 + 2632) = v169;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2640) = sub_1AAF8F074();
  *(v4 + 2648) = v170;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2656) = sub_1AAF8F074();
  *(v4 + 2664) = v171;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2672) = sub_1AAF8F074();
  *(v4 + 2680) = v172;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2688) = sub_1AAF8F074();
  *(v4 + 2696) = v173;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2704) = sub_1AAF8F074();
  *(v4 + 2712) = v174;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2720) = sub_1AAF8F074();
  *(v4 + 2728) = v175;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2736) = sub_1AAF8F074();
  *(v4 + 2744) = v176;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2752) = sub_1AAF8F074();
  *(v4 + 2760) = v177;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2768) = sub_1AAF8F074();
  *(v4 + 2776) = v178;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2784) = sub_1AAF8F074();
  *(v4 + 2792) = v179;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2800) = sub_1AAF8F074();
  *(v4 + 2808) = v180;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2816) = sub_1AAF8F074();
  *(v4 + 2824) = v181;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2832) = sub_1AAF8F074();
  *(v4 + 2840) = v182;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2848) = sub_1AAF8F074();
  *(v4 + 2856) = v183;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2864) = sub_1AAF8F074();
  *(v4 + 2872) = v184;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2880) = sub_1AAF8F074();
  *(v4 + 2888) = v185;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2896) = sub_1AAF8F074();
  *(v4 + 2904) = v186;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2912) = sub_1AAF8F074();
  *(v4 + 2920) = v187;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2928) = sub_1AAF8F074();
  *(v4 + 2936) = v188;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2944) = sub_1AAF8F074();
  *(v4 + 2952) = v189;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2960) = sub_1AAF8F074();
  *(v4 + 2968) = v190;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2976) = sub_1AAF8F074();
  *(v4 + 2984) = v191;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 2992) = sub_1AAF8F074();
  *(v4 + 3000) = v192;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3008) = sub_1AAF8F074();
  *(v4 + 3016) = v193;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3024) = sub_1AAF8F074();
  *(v4 + 3032) = v194;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3040) = sub_1AAF8F074();
  *(v4 + 3048) = v195;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3056) = sub_1AAF8F074();
  *(v4 + 3064) = v196;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3072) = sub_1AAF8F074();
  *(v4 + 3080) = v197;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3088) = sub_1AAF8F074();
  *(v4 + 3096) = v198;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3104) = sub_1AAF8F074();
  *(v4 + 3112) = v199;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3120) = sub_1AAF8F074();
  *(v4 + 3128) = v200;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3136) = sub_1AAF8F074();
  *(v4 + 3144) = v201;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3152) = sub_1AAF8F074();
  *(v4 + 3160) = v202;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3168) = sub_1AAF8F074();
  *(v4 + 3176) = v203;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3184) = sub_1AAF8F074();
  *(v4 + 3192) = v204;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3200) = sub_1AAF8F074();
  *(v4 + 3208) = v205;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3216) = sub_1AAF8F074();
  *(v4 + 3224) = v206;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3232) = sub_1AAF8F074();
  *(v4 + 3240) = v207;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3248) = sub_1AAF8F074();
  *(v4 + 3256) = v208;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3264) = sub_1AAF8F074();
  *(v4 + 3272) = v209;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3280) = sub_1AAF8F074();
  *(v4 + 3288) = v210;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3296) = sub_1AAF8F074();
  *(v4 + 3304) = v211;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3312) = sub_1AAF8F074();
  *(v4 + 3320) = v212;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3328) = sub_1AAF8F074();
  *(v4 + 3336) = v213;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3344) = sub_1AAF8F074();
  *(v4 + 3352) = v214;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3360) = sub_1AAF8F074();
  *(v4 + 3368) = v215;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3376) = sub_1AAF8F074();
  *(v4 + 3384) = v216;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3392) = sub_1AAF8F074();
  *(v4 + 3400) = v217;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3408) = sub_1AAF8F074();
  *(v4 + 3416) = v218;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3424) = sub_1AAF8F074();
  *(v4 + 3432) = v219;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3440) = sub_1AAF8F074();
  *(v4 + 3448) = v220;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3456) = sub_1AAF8F074();
  *(v4 + 3464) = v221;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3472) = sub_1AAF8F074();
  *(v4 + 3480) = v222;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3488) = sub_1AAF8F074();
  *(v4 + 3496) = v223;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3504) = sub_1AAF8F074();
  *(v4 + 3512) = v224;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3520) = sub_1AAF8F074();
  *(v4 + 3528) = v225;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3536) = sub_1AAF8F074();
  *(v4 + 3544) = v226;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3552) = sub_1AAF8F074();
  *(v4 + 3560) = v227;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3568) = sub_1AAF8F074();
  *(v4 + 3576) = v228;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3584) = sub_1AAF8F074();
  *(v4 + 3592) = v229;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3600) = sub_1AAF8F074();
  *(v4 + 3608) = v230;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3616) = sub_1AAF8F074();
  *(v4 + 3624) = v231;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3632) = sub_1AAF8F074();
  *(v4 + 3640) = v232;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3648) = sub_1AAF8F074();
  *(v4 + 3656) = v233;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3664) = sub_1AAF8F074();
  *(v4 + 3672) = v234;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3680) = sub_1AAF8F074();
  *(v4 + 3688) = v235;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3696) = sub_1AAF8F074();
  *(v4 + 3704) = v236;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3712) = sub_1AAF8F074();
  *(v4 + 3720) = v237;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3728) = sub_1AAF8F074();
  *(v4 + 3736) = v238;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3744) = sub_1AAF8F074();
  *(v4 + 3752) = v239;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3760) = sub_1AAF8F074();
  *(v4 + 3768) = v240;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3776) = sub_1AAF8F074();
  *(v4 + 3784) = v241;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3792) = sub_1AAF8F074();
  *(v4 + 3800) = v242;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3808) = sub_1AAF8F074();
  *(v4 + 3816) = v243;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3824) = sub_1AAF8F074();
  *(v4 + 3832) = v244;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3840) = sub_1AAF8F074();
  *(v4 + 3848) = v245;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3856) = sub_1AAF8F074();
  *(v4 + 3864) = v246;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3872) = sub_1AAF8F074();
  *(v4 + 3880) = v247;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3888) = sub_1AAF8F074();
  *(v4 + 3896) = v248;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3904) = sub_1AAF8F074();
  *(v4 + 3912) = v249;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3920) = sub_1AAF8F074();
  *(v4 + 3928) = v250;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3936) = sub_1AAF8F074();
  *(v4 + 3944) = v251;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3952) = sub_1AAF8F074();
  *(v4 + 3960) = v252;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3968) = sub_1AAF8F074();
  *(v4 + 3976) = v253;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 3984) = sub_1AAF8F074();
  *(v4 + 3992) = v254;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4000) = sub_1AAF8F074();
  *(v4 + 4008) = v255;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4016) = sub_1AAF8F074();
  *(v4 + 4024) = v256;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4032) = sub_1AAF8F074();
  *(v4 + 4040) = v257;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4048) = sub_1AAF8F074();
  *(v4 + 4056) = v258;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4064) = sub_1AAF8F074();
  *(v4 + 4072) = v259;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4080) = sub_1AAF8F074();
  *(v4 + 4088) = v260;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4096) = sub_1AAF8F074();
  *(v4 + 4104) = v261;
  v6(v3, v5, v0);
  sub_1AAF8ED84();
  *(v4 + 4112) = sub_1AAF8F074();
  *(v4 + 4120) = v262;
  return v4;
}

void sub_1AADBDD9C()
{
  if (!qword_1EB4247F0)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4247F0);
    }
  }
}

void sub_1AADBDDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - 2;
  if (__OFSUB__(a2, 2))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = a3 - 2;
  if (__OFSUB__(a3, 2))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((a3 | a2) < 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v55 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  v8 = 0;
  v53 = *(v3 + 24);
  v54 = *(v3 + 16);
  v57 = *(v3 + 64);
  v58 = *(v3 + 56);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v52 = *(v3 + 32);
  v51 = (*(v3 + 40) - v52) / v4;
  v11 = *(v3 + 112);
  *&v19 = (v10 - v9) * 0.1;
  v12 = v9 - *&v19;
  v50 = v4;
  v13 = v10 + *&v19;
  v14 = *v3;
  v56 = v11;
  v15 = (*(v3 + 120) - v11) / v6;
  v16 = *(v3 + 96);
  v49 = v11 - v15;
  v17 = *(v3 + 104);
  *&v19 = v17 + v16 * (v11 - v15);
  v48 = v19;
  v18 = v6;
  v47 = 0.0 / v6;
  *(&v19 + 1) = 0;
  do
  {
    v20 = v55 * v8;
    if ((v55 * v8) >> 64 != (v55 * v8) >> 63)
    {
      goto LABEL_51;
    }

    v21 = v52 + v51 * (v8 - 1);
    *&v19 = v53 + v54 * v21;
    *&v19 = *&v19;
    v60 = v19;
    *&v19 = ((v8 - 1) & ~((v8 - 1) >> 63)) / v50;
    v59 = v19;
    v22 = v14(v21, v49);
    if (v12 > v22)
    {
      v22 = v12;
    }

    if (v22 >= v13)
    {
      v22 = v13;
    }

    v23 = v57 + v58 * v22;
    v24 = v60;
    *(&v24 + 1) = v23;
    DWORD2(v24) = v48;
    v19 = v59;
    *(&v19 + 1) = v47;
    v25 = a1 + 48 * v20;
    *v25 = v24;
    *(v25 + 16) = xmmword_1AAF93880;
    *(v25 + 32) = v19;
    if (a3)
    {
      v26 = 1;
      while (!__OFADD__(v26, v20))
      {
        v27 = v26 - 1;
        v28 = v14(v21, v56 + v15 * (v26 - 1));
        if (v12 > v28)
        {
          v28 = v12;
        }

        if (v28 >= v13)
        {
          v28 = v13;
        }

        v29 = v57 + v58 * v28;
        v30 = v60;
        *(&v30 + 1) = v29;
        v31 = v17 + v16 * (v56 + v15 * (v26 - 1));
        *(&v30 + 2) = v31;
        LODWORD(v32) = v59;
        *(&v32 + 1) = v27 / v18;
        v33 = a1 + 48 * (v26 + v20);
        v19 = xmmword_1AAF93880;
        *v33 = v30;
        *(v33 + 16) = xmmword_1AAF93880;
        *(v33 + 32) = v32;
        if (v26 == a3)
        {
          goto LABEL_22;
        }

        ++v26;
        if (__OFADD__(v27 + 1, 1))
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
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
      goto LABEL_54;
    }

LABEL_22:
    if (v8 == a2)
    {
      goto LABEL_26;
    }
  }

  while (!__OFADD__(v8++, 1));
  __break(1u);
LABEL_26:
  if (a2 < 1)
  {
    goto LABEL_58;
  }

  if (a2 != 1)
  {
    if (a3 < 1)
    {
      goto LABEL_59;
    }

    v35 = 1;
    while (v35 != a2)
    {
      if (a3 != 1)
      {
        v37 = v55 * v35;
        if ((v55 * v35) >> 64 != (v55 * v35) >> 63)
        {
          goto LABEL_53;
        }

        v38 = 1;
        while (1)
        {
          v39 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            goto LABEL_46;
          }

          if (__OFADD__(v39, 1))
          {
            goto LABEL_47;
          }

          if (__OFSUB__(v39, 1))
          {
            goto LABEL_48;
          }

          if (__OFADD__(v39, a3))
          {
            goto LABEL_49;
          }

          if (__OFSUB__(v39, a3))
          {
            goto LABEL_50;
          }

          v40 = vsubq_f32(*(a1 + 48 * (v39 - 1)), *(a1 + 48 * (v39 + 1)));
          v41 = vsubq_f32(*(a1 + 48 * (v39 - a3)), *(a1 + 48 * (v39 + a3)));
          v42 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
          v43 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
          v44 = vmulq_f32(v42, v42);
          *&v45 = v44.f32[1] + (v44.f32[2] + v44.f32[0]);
          *v44.f32 = vrsqrte_f32(v45);
          *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
          v36 = vmulq_n_f32(v43, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
          v36.i32[3] = HIDWORD(v19);
          ++v38;
          *(a1 + 16 + 48 * v39) = v36;
          if (a3 == v38)
          {
            goto LABEL_32;
          }
        }
      }

      v36 = v19;
LABEL_32:
      ++v35;
      v19 = v36;
      if (v35 == a2)
      {
        return;
      }
    }

    goto LABEL_52;
  }
}

uint64_t sub_1AADBE22C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 < 0)
  {
    goto LABEL_51;
  }

  if (a2)
  {
    if (a3 < 0)
    {
LABEL_52:
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a3 + 1;
    v8 = __OFADD__(a3, 1);
    v9 = a3 + 1;
    while (1)
    {
      v10 = v6 + 1;
      if (a3)
      {
        break;
      }

LABEL_8:
      v4 += v7;
      v9 += v7;
      v6 = v10;
      if (v10 == a2)
      {
        return result;
      }
    }

    if (!v8)
    {
      if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v11 = a3;
      v12 = v4;
      v13 = v9;
      if ((v10 * v7) >> 64 != (v10 * v7) >> 63)
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      while ((v4 & 0x8000000000000000) == 0)
      {
        if (v12 >> 16)
        {
          goto LABEL_33;
        }

        if (((v12 + a4) & 0x10000) != 0)
        {
          goto LABEL_34;
        }

        *(result + 2 * v5) = v12 + a4;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_35;
        }

        if ((v12 + 1) >> 16)
        {
          goto LABEL_36;
        }

        v14 = (v12 + 1) + a4;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_37;
        }

        *(result + 2 * (v5 + 1)) = v14;
        if (__OFADD__(v5, 2))
        {
          goto LABEL_38;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v13 >> 16)
        {
          goto LABEL_40;
        }

        if (((v13 + a4) & 0x10000) != 0)
        {
          goto LABEL_41;
        }

        *(result + 2 * (v5 + 2)) = v13 + a4;
        if (__OFADD__(v5, 3))
        {
          goto LABEL_42;
        }

        *(result + 2 * (v5 + 3)) = v14;
        if (__OFADD__(v5, 4))
        {
          goto LABEL_43;
        }

        if ((v13 + 1) >> 16)
        {
          goto LABEL_44;
        }

        v15 = (v13 + 1) + a4;
        if ((v15 & 0x10000) != 0)
        {
          goto LABEL_45;
        }

        *(result + 2 * (v5 + 4)) = v15;
        if (__OFADD__(v5, 5))
        {
          goto LABEL_46;
        }

        *(result + 2 * (v5 + 5)) = v13 + a4;
        v16 = v5 + 6;
        if (__OFADD__(v5, 6))
        {
          goto LABEL_47;
        }

        v5 += 6;
        ++v13;
        ++v12;
        if (!--v11)
        {
          v5 = v16;
          goto LABEL_8;
        }
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
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    __break(1u);
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_1AADBE3C4()
{
  v0 = sub_1AAF8D304();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBE5B4();
  sub_1AAF8D3A4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AAF99670;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x1E697A420], v0);
  sub_1AAF8D394();
  v5(v3, *MEMORY[0x1E697A418], v0);
  sub_1AAF8D394();
  v5(v3, *MEMORY[0x1E697A410], v0);
  result = sub_1AAF8D394();
  qword_1EB432080 = v4;
  return result;
}

void sub_1AADBE5B4()
{
  if (!qword_1EB4247F8)
  {
    sub_1AAF8D3A4();
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4247F8);
    }
  }
}

uint64_t sub_1AADBE660(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADBE67C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AADBE6D0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 616) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AADBE7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = sub_1AAF8D554();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1AAF8D5F4();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1AAF8CFB4();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADBF02C(a2 + 448, v38);
  v14 = *(a3 + 184);
  if (v14)
  {
    if (*(a3 + 152))
    {
      if (*(a3 + 176))
      {
        v15 = 0;
        v16 = *(v14 + 16);
        if (v16)
        {
          v17 = *(a3 + 184);
        }

        else
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = 2;
        }

        else
        {
          v18 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        v17 = *(a3 + 160);
        v15 = *(a3 + 168);
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
      v17 = *(a3 + 136);
      v15 = *(a3 + 144);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v18 = 255;
  }

  sub_1AAD9C220(v36, v38, v17, v15, v18);
  sub_1AAD9A5B4(v37);
  memcpy(v39, v37, 0x1E0uLL);
  sub_1AADB35BC(v36, v39, *(a2 + 528), *(a2 + 536), *(a2 + 544), *(a2 + 552), a3, a4, v35);
  swift_unknownObjectRetain();
  v19 = sub_1AAF8CF34();
  v20 = sub_1AAF8CDC4();
  v21 = sub_1AAF8CF54();
  if (!(*(*(v20 - 8) + 48))(v22, 1, v20))
  {
    sub_1AAD9A6F4();
    *(swift_allocObject() + 16) = xmmword_1AAF92AB0;
    sub_1AACED220(v35, &v32);
    sub_1AAD45E1C(0, &qword_1EB424650);
    swift_dynamicCast();
    sub_1AAF8CDB4();
  }

  v21(&v33, 0);
  v19(&v34, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1AAF8CF44();
  swift_unknownObjectRelease();
  if (qword_1EB422B40 != -1)
  {
    swift_once();
  }

  v23 = v31;
  v24 = sub_1AAD0F5D8(v31, qword_1EB432060);
  (*(v29 + 16))(v8, v24, v23);
  sub_1AAF8D5E4();
  v25 = v30;
  sub_1AAF8CF94();
  (*(v28 + 8))(v10, v25);
  (*(v11 + 8))(v13, v27);
  sub_1AAD9A5F8(v35);
  sub_1AAD9A64C(v36);
  return sub_1AADBF0E0(v38);
}

uint64_t sub_1AADBEC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACAEF68(a1 + 568, v48);
  sub_1AAD45E1C(0, &qword_1EB424800);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (LOBYTE(v47[0]) > 1u)
  {
    sub_1AAF8CD24();
    if (LOBYTE(v47[0]) == 2)
    {
      sub_1AAF8CC94();
    }

    else
    {
      sub_1AAF8CCD4();
    }
  }

  else
  {
    if (!LOBYTE(v47[0]))
    {
LABEL_4:
      sub_1AAF8CD24();
      sub_1AAF8CD04();
      goto LABEL_5;
    }

    sub_1AAF8CD24();
    sub_1AAF8CCA4();
  }

LABEL_5:
  sub_1AAF8CC04();
  swift_allocObject();

  v6 = sub_1AAF8CBF4();

  sub_1AAF8D064();
  sub_1AAF8D074();

  v36 = v6;
  v7 = *(a2 + 32);
  v43 = *(a2 + 16);
  v44 = v7;
  v45 = *(a2 + 48);
  v8 = *(a1 + 128);
  v48[6] = *(a1 + 112);
  v48[7] = v8;
  v48[8] = *(a1 + 144);
  v9 = *(a1 + 64);
  v48[2] = *(a1 + 48);
  v48[3] = v9;
  v10 = *(a1 + 96);
  v48[4] = *(a1 + 80);
  v48[5] = v10;
  v11 = *(a1 + 32);
  v48[0] = *(a1 + 16);
  v48[1] = v11;

  v33 = sub_1AADC6AE0(v48);
  v12 = *(a2 + 72);
  v40 = *(a2 + 56);
  v41 = v12;
  v42 = *(a2 + 88);
  v13 = *(a1 + 272);
  v47[6] = *(a1 + 256);
  v47[7] = v13;
  v47[8] = *(a1 + 288);
  v14 = *(a1 + 208);
  v47[2] = *(a1 + 192);
  v47[3] = v14;
  v15 = *(a1 + 240);
  v47[4] = *(a1 + 224);
  v47[5] = v15;
  v16 = *(a1 + 176);
  v47[0] = *(a1 + 160);
  v47[1] = v16;
  v32 = sub_1AADC6AE0(v47);
  v17 = *(a2 + 112);
  v37 = *(a2 + 96);
  v38 = v17;
  v39 = *(a2 + 128);
  v18 = *(a1 + 416);
  v46[6] = *(a1 + 400);
  v46[7] = v18;
  v46[8] = *(a1 + 432);
  v19 = *(a1 + 352);
  v46[2] = *(a1 + 336);
  v46[3] = v19;
  v20 = *(a1 + 384);
  v46[4] = *(a1 + 368);
  v46[5] = v20;
  v21 = *(a1 + 320);
  v46[0] = *(a1 + 304);
  v46[1] = v21;
  v22 = sub_1AADC6AE0(v46);
  *&v23 = __PAIR64__(v32, v33);
  *(&v23 + 1) = v22;
  v34 = v23;

  sub_1AAF8D094();
  v24 = sub_1AAF8CC64();
  *(v25 + 32) = v34;
  v24(v35, 0);

  if ((*(a1 + 624) & 1) == 0)
  {
    v26 = *(a1 + 608);
    v27 = a3;
    v28 = *(a1 + 616);

    v29 = sub_1AAF8CC64();
    *(v30 + 16) = v26;
    *(v30 + 24) = v28;
    a3 = v27;
    v29(v35, 0);
  }

  sub_1AADBE7F0(&v36, a1, a2, a3);

  sub_1AAF8CC24();

  return v6;
}

uint64_t sub_1AADBF02C(uint64_t a1, uint64_t a2)
{
  sub_1AADBF090();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AADBF090()
{
  if (!qword_1EB423648)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB423648);
    }
  }
}

uint64_t sub_1AADBF0E0(uint64_t a1)
{
  sub_1AADBF090();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AADBF154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 577))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AADBF1A8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 568) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 576) = 0;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 577) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 577) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}