uint64_t sub_19163CA24(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = result;

    v7 = sub_19163D640(v25, a2, 10);
    v27 = v26;

    if (v27)
    {
      return 0;
    }

LABEL_65:
    v28[0] = v7;
    sub_19163E698();
    return sub_19166B928();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_19166C108();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v7 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v29 = v3;
      if (v3)
      {
        return 0;
      }

      goto LABEL_65;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        v7 = 0;
        v22 = v28;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        v7 = 0;
        v11 = v28 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v3)
  {
    if (--v3)
    {
      v7 = 0;
      v17 = v28 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          break;
        }

        v7 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

_BYTE *_sSS15AXCoreUtilitiesE11parseBinarySiSgvg_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_19166B8E8();

  if (v4)
  {
    v6 = sub_19163E5E8(2uLL, a1, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    a1 = MEMORY[0x193AFC690](v6, v8, v10, v12);
    a2 = v13;
  }

  v14 = HIBYTE(a2) & 0xF;
  v15 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_19166C108();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 < 1)
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v28 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_86;
        }

        if (result)
        {
          v21 = 0;
          v29 = result + 1;
          while (1)
          {
            v30 = (*v29 & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
            v23 = v30;
            if (v30)
            {
              goto LABEL_81;
            }

            v21 = (*v29++ - 48) | (2 * v21);
            if (!--v28)
            {
              goto LABEL_82;
            }
          }
        }
      }

      else
      {
        if (v17 == 45)
        {
          if (v15 >= 1)
          {
            v18 = v15 - 1;
            if (v15 != 1)
            {
              if (result)
              {
                v19 = 0;
                v20 = result + 1;
                do
                {
                  v21 = 0;
                  v22 = *v20;
                  v23 = 1;
                  if ((*v20 & 0xFE) != 0x30 || v19 + 0x4000000000000000 < 0)
                  {
                    break;
                  }

                  v21 = 2 * v19 - (v22 - 48);
                  if (__OFSUB__(2 * v19, (v22 - 48)))
                  {
                    goto LABEL_86;
                  }

                  v23 = 0;
                  ++v20;
                  v19 = 2 * v19 - (v22 - 48);
                  --v18;
                }

                while (v18);
                goto LABEL_82;
              }

              goto LABEL_69;
            }

LABEL_86:
            v21 = 0;
            v23 = 1;
            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_91;
        }

        if (!v15)
        {
          goto LABEL_86;
        }

        if (result)
        {
          v21 = 0;
          while (1)
          {
            v34 = (*result & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
            v23 = v34;
            if (v34)
            {
              goto LABEL_81;
            }

            v21 = (*result++ - 48) | (2 * v21);
            if (!--v15)
            {
              goto LABEL_82;
            }
          }
        }
      }

LABEL_69:
      v21 = 0;
      v23 = 0;
LABEL_82:
      v40 = v23;
      v37 = v23;
      goto LABEL_83;
    }

    v39[0] = a1;
    v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v14)
      {
LABEL_93:
        __break(1u);
        return result;
      }

      v31 = v14 - 1;
      if (!v31)
      {
        goto LABEL_86;
      }

      v21 = 0;
      v32 = v39 + 1;
      while (1)
      {
        v33 = (*v32 & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
        v23 = v33;
        if (v33)
        {
          break;
        }

        v21 = (*v32++ - 48) | (2 * v21);
        if (!--v31)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (a1 == 45)
      {
        if (v14)
        {
          v24 = v14 - 1;
          if (v24)
          {
            v25 = 0;
            v26 = v39 + 1;
            do
            {
              v21 = 0;
              v27 = *v26;
              v23 = 1;
              if ((*v26 & 0xFE) != 0x30 || v25 + 0x4000000000000000 < 0)
              {
                break;
              }

              v21 = 2 * v25 - (v27 - 48);
              if (__OFSUB__(2 * v25, (v27 - 48)))
              {
                goto LABEL_86;
              }

              v23 = 0;
              ++v26;
              v25 = 2 * v25 - (v27 - 48);
              --v24;
            }

            while (v24);
            goto LABEL_82;
          }

          goto LABEL_86;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (!v14)
      {
        goto LABEL_86;
      }

      v21 = 0;
      v35 = v39;
      while (1)
      {
        v36 = (*v35 & 0xFE) != 0x30 || v21 + 0x4000000000000000 < 0;
        v23 = v36;
        if (v36)
        {
          break;
        }

        v21 = (*v35++ - 48) | (2 * v21);
        if (!--v14)
        {
          goto LABEL_82;
        }
      }
    }

LABEL_81:
    v21 = 0;
    goto LABEL_82;
  }

  v21 = sub_19163D640(a1, a2, 2);
  v37 = v38;
LABEL_83:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_19163D0F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    return 0;
  }

  sub_19163E698();
  return sub_19166B928();
}

void *sub_19163D158(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADAFAB8, &qword_191674CC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_19163D1CC()
{
  v0 = sub_19166B958();
  v4 = sub_19163D24C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_19163D24C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_19166B818();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_19166BF68();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_19163D158(v9, 0);
  v12 = sub_19163D3A4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_19166B818();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_19166C108();
LABEL_4:

  return sub_19166B818();
}

unint64_t sub_19163D3A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_19163D5C4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_19166B8C8();
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
          result = sub_19166C108();
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

    result = sub_19163D5C4(v12, a6, a7);
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

    result = sub_19166B8A8();
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

uint64_t sub_19163D5C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_19166B8D8();
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
    v5 = MEMORY[0x193AFC760](15, a1 >> 16);
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

unsigned __int8 *sub_19163D640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_19166B948();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_19163D1CC();
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
      result = sub_19166C108();
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

uint64_t sub_19163DBCC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_19166B0B8();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_19163E3AC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19163DD0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635028(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163DDD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635364(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163DE9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_1916356F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163DF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635364(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19163E074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_1916361B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19163E13C(uint64_t a1)
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
  v10[1] = sub_1915D4F90;

  return sub_191636650(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19163E230(const char *a1)
{
  v2 = *(v1 + 16);
  result = execve(a1, (**(v1 + 24) + 32), (**(v1 + 32) + 32));
  *v2 = result;
  return result;
}

uint64_t sub_19163E274(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_191638120(a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19163E2DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19163E32C()
{
  result = qword_1EADB0010;
  if (!qword_1EADB0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0010);
  }

  return result;
}

uint64_t sub_19163E3AC(uint64_t a1, uint64_t a2)
{
  result = sub_19166AF88();
  if (!result || (result = sub_19166AFA8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_19166AF98();
      return sub_19166B0B8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19163E440(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_19166C5E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E726177 && a2 == 0xE700000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6775626564 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_19166C5E8();

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

unint64_t sub_19163E5E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_19166B848();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_19166B958();
}

unint64_t sub_19163E698()
{
  result = qword_1EADAE858;
  if (!qword_1EADAE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE858);
  }

  return result;
}

unint64_t sub_19163E6F0()
{
  result = qword_1EADB0020;
  if (!qword_1EADB0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0020);
  }

  return result;
}

unint64_t sub_19163E744()
{
  result = qword_1EADB0028;
  if (!qword_1EADB0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0028);
  }

  return result;
}

unint64_t sub_19163E79C()
{
  result = qword_1EADB0030;
  if (!qword_1EADB0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0030);
  }

  return result;
}

unint64_t sub_19163E838()
{
  result = qword_1EADB0048;
  if (!qword_1EADB0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0048);
  }

  return result;
}

uint64_t sub_19163E8E8()
{
  result = sub_19166B088();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of AXCTLCommandProtocol.axctl_run()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1915D4F90;

  return v9(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities12AXCTLSupportO14ToolingMessageV0E0OSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19163EAA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_19163EAFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_19163EB78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19163EBC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19163EC68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19163ECB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19163ED24()
{
  sub_19166B088();
  if (v0 <= 0x3F)
  {
    sub_19163EDC0();
    if (v1 <= 0x3F)
    {
      sub_19163EE10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19163EDC0()
{
  if (!qword_1EADB0070)
  {
    v0 = sub_19166BA68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADB0070);
    }
  }
}

void sub_19163EE10()
{
  if (!qword_1EADB0078)
  {
    v0 = sub_19166B688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADB0078);
    }
  }
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

uint64_t sub_19163EED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19163EF18(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities8SWEAXErrO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19163EFB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19163F018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_19163F070(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

unint64_t sub_19163F160(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_19163F4EC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19163F1D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_27;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_19163F318(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

unint64_t sub_19163F4EC()
{
  result = qword_1EADB0100;
  if (!qword_1EADB0100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADB0100);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities25SWEAXTextFileHandleReaderC5EventO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_19163F5BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19163F604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_19163F648(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_19163F670(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_19163F700(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19163F824()
{
  result = qword_1EADB0108;
  if (!qword_1EADB0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0108);
  }

  return result;
}

unint64_t sub_19163F87C()
{
  result = qword_1EADB0110;
  if (!qword_1EADB0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0110);
  }

  return result;
}

unint64_t sub_19163F8D4()
{
  result = qword_1EADB0118;
  if (!qword_1EADB0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0118);
  }

  return result;
}

unint64_t sub_19163F92C()
{
  result = qword_1EADB0120;
  if (!qword_1EADB0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0120);
  }

  return result;
}

unint64_t sub_19163F984()
{
  result = qword_1EADB0128;
  if (!qword_1EADB0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0128);
  }

  return result;
}

unint64_t sub_19163F9DC()
{
  result = qword_1EADB0130;
  if (!qword_1EADB0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0130);
  }

  return result;
}

unint64_t sub_19163FA34()
{
  result = qword_1EADB0138;
  if (!qword_1EADB0138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0138);
  }

  return result;
}

unint64_t sub_19163FA8C()
{
  result = qword_1EADB0140;
  if (!qword_1EADB0140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0140);
  }

  return result;
}

unint64_t sub_19163FAE4()
{
  result = qword_1EADB0148;
  if (!qword_1EADB0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0148);
  }

  return result;
}

unint64_t sub_19163FB3C()
{
  result = qword_1EADB0150;
  if (!qword_1EADB0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0150);
  }

  return result;
}

unint64_t sub_19163FB94()
{
  result = qword_1EADB0158;
  if (!qword_1EADB0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0158);
  }

  return result;
}

unint64_t sub_19163FBEC()
{
  result = qword_1EADB0160;
  if (!qword_1EADB0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0160);
  }

  return result;
}

unint64_t sub_19163FC44()
{
  result = qword_1EADB0168;
  if (!qword_1EADB0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0168);
  }

  return result;
}

unint64_t sub_19163FC9C()
{
  result = qword_1EADB0170;
  if (!qword_1EADB0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0170);
  }

  return result;
}

unint64_t sub_19163FCF4()
{
  result = qword_1EADB0178;
  if (!qword_1EADB0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0178);
  }

  return result;
}

unint64_t sub_19163FD4C()
{
  result = qword_1EADB0180;
  if (!qword_1EADB0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0180);
  }

  return result;
}

unint64_t sub_19163FDA4()
{
  result = qword_1EADB0188;
  if (!qword_1EADB0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0188);
  }

  return result;
}

unint64_t sub_19163FDFC()
{
  result = qword_1EADB0190;
  if (!qword_1EADB0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0190);
  }

  return result;
}

unint64_t sub_19163FE54()
{
  result = qword_1EADB0198;
  if (!qword_1EADB0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0198);
  }

  return result;
}

unint64_t sub_19163FEAC()
{
  result = qword_1EADB01A0;
  if (!qword_1EADB01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01A0);
  }

  return result;
}

unint64_t sub_19163FF04()
{
  result = qword_1EADB01A8;
  if (!qword_1EADB01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01A8);
  }

  return result;
}

unint64_t sub_19163FF58()
{
  result = qword_1EADB01B0;
  if (!qword_1EADB01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01B0);
  }

  return result;
}

uint64_t sub_19163FFAC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  return sub_19163BF18(a1);
}

uint64_t sub_191640024(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event();
  v6 = *(sub_19166BBC8() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));
  v8 = v1[5];
  return sub_19163B334(a1, v7, v3, v4, v5);
}

uint64_t sub_1916400CC(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8) - 8) + 80);

  return sub_19163996C(a1);
}

unint64_t sub_191640148()
{
  result = qword_1EADB01D0;
  if (!qword_1EADB01D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADB01D0);
  }

  return result;
}

uint64_t sub_191640194(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1916401D0()
{
  result = qword_1EADB01D8;
  if (!qword_1EADB01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01D8);
  }

  return result;
}

uint64_t objectdestroy_231Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1916402A8(void *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01E0, &qword_191674CE8) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  [a1 setWriteabilityHandler_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01E0, &qword_191674CE8);
  return sub_19166BA98();
}

__n128 AXConcreteKey.init(key:domain:objcMode:traits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a5 + 32);
  v8 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  result = *a5;
  v10 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v10;
  *(a7 + 64) = v7;
  *(a7 + 72) = v8;
  return result;
}

uint64_t AXSettingsStore.observeWithToken(key:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_19166B1B8();
  (*(a5 + 24))(a1, a2, a3, a4, a5);
  v12 = sub_19166B1C8();
  v13 = *(*(v12 - 8) + 56);

  return v13(a6, 0, 1, v12);
}

uint64_t sub_1916404F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

double AXSettingsKey.watchKey.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_19164061C(void *a1, uint64_t *a2)
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

void *sub_19164064C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_191640678@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t AXConcreteKey.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AXConcreteKey.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AXConcreteKey.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AXConcreteKey.domain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AXConcreteKey.objcMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  return sub_191640880(v2, v3, v4, v5, v6);
}

uint64_t sub_191640880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

__n128 AXConcreteKey.objcMode.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1915DB1C0(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

__n128 AXConcreteKey.init(key:domain:objcMode:traits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a4 + 32);
  v9 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = AXCDomain.suiteName.getter(a3);
  *(a6 + 24) = v10;
  result = *a4;
  v12 = *(a4 + 16);
  *(a6 + 32) = *a4;
  *(a6 + 48) = v12;
  *(a6 + 64) = v8;
  *(a6 + 72) = v9;
  return result;
}

uint64_t AXCDomain.suiteName.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v1 = MEMORY[0x1E69E4BA8];
      v2 = *MEMORY[0x1E69E4BA8];
      if (!*MEMORY[0x1E69E4BA8])
      {
        __break(1u);
        goto LABEL_39;
      }

      v3 = *MEMORY[0x1E69E4BA8];
      v4 = AXCPCopySharedResourcesPreferencesDomainForDomain();

      if (v4)
      {
        goto LABEL_28;
      }

      v5 = *v1;
      if (!*v1)
      {
        __break(1u);
        goto LABEL_6;
      }

      goto LABEL_27;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_16;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_10;
    case 6:
      goto LABEL_24;
    case 7:
      goto LABEL_31;
    case 8:
      goto LABEL_20;
    case 9:
      goto LABEL_35;
    case 10:
      goto LABEL_14;
    case 11:
      goto LABEL_33;
    case 12:
      goto LABEL_8;
    case 13:
      goto LABEL_12;
    case 14:
      v6 = *MEMORY[0x1E69E4D40];
      if (*MEMORY[0x1E69E4D40])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_31:
      v6 = *MEMORY[0x1E69E4D98];
      if (*MEMORY[0x1E69E4D98])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_33:
      v6 = *MEMORY[0x1E69E4E10];
      if (*MEMORY[0x1E69E4E10])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_35:
      v6 = *MEMORY[0x1E69E4F38];
      if (*MEMORY[0x1E69E4F38])
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    case 15:
LABEL_6:
      v6 = *MEMORY[0x1E69E4BC0];
      if (*MEMORY[0x1E69E4BC0])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_8:
      v6 = *MEMORY[0x1E69E4F08];
      if (*MEMORY[0x1E69E4F08])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_10:
      v6 = *MEMORY[0x1E69E4D70];
      if (*MEMORY[0x1E69E4D70])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_12:
      v6 = *MEMORY[0x1E69E4F68];
      if (*MEMORY[0x1E69E4F68])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_14:
      v6 = *MEMORY[0x1E69E4F18];
      if (*MEMORY[0x1E69E4F18])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_16:
      v6 = *MEMORY[0x1E69E4FB0];
      if (*MEMORY[0x1E69E4FB0])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_18:
      v6 = *MEMORY[0x1E69E4C68];
      if (*MEMORY[0x1E69E4C68])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_20:
      v6 = *MEMORY[0x1E69E4EE0];
      if (*MEMORY[0x1E69E4EE0])
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_22:
      v6 = *MEMORY[0x1E69E4F70];
      if (*MEMORY[0x1E69E4F70])
      {
LABEL_36:
        v9 = v6;
        goto LABEL_37;
      }

      __break(1u);
LABEL_24:
      v7 = *MEMORY[0x1E69E4E98];
      if (*MEMORY[0x1E69E4E98])
      {
        v8 = *MEMORY[0x1E69E4E98];
        v4 = AXCPCopySharedResourcesPreferencesDomainForDomain();

        if (v4)
        {
LABEL_28:
          v9 = v4;
LABEL_37:
          v10 = sub_19166B748();

          return v10;
        }

        v5 = *MEMORY[0x1E69E4BA8];
        if (*MEMORY[0x1E69E4BA8])
        {
LABEL_27:
          v4 = v5;
          goto LABEL_28;
        }
      }

      else
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      result = sub_19166C218();
      __break(1u);
      return result;
    default:
      goto LABEL_42;
  }
}

uint64_t sub_191640C14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_191640C44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  return sub_191640880(v2, v3, v4, v5, v6);
}

uint64_t AXSettingsGroup.enumerateSettings(_:requiredTraits:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = *a3;
  v6 = AXSettingsGroup.settings(traits:)(v10, a4, a5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      sub_1915DB15C(v8, v10);
      a1(v10);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t AXSettingsGroup.settings(traits:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  *&v31 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF3F0, &unk_191674CF0);
  v9 = *(*(a3 + 8) + 8);
  v10 = sub_19164AB68(v8, 0, a2, v8, v9);
  *&v31 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E8, &qword_1916721B0);
  result = sub_19164AB68(v11, 0, a2, v11, v9);
  v13 = result;
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v10 + 40);
    while (v15 < *(v10 + 16))
    {
      ++v15;
      v18 = *(v16 - 1);
      v17 = *v16;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_1915DAB60(ObjectType, v17);
      *&v31 = v13;

      sub_1915E3FD0(v20);

      result = swift_unknownObjectRelease();
      v16 += 2;
      if (v14 == v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_5:

  v21 = *(v13 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v13 + 32;
    v24 = MEMORY[0x1E69E7CC0];
    while (v22 < *(v13 + 16))
    {
      sub_1915DB15C(v23, &v31);
      if (v7 && (v26 = v32, v25 = v33, __swift_project_boxed_opaque_existential_1(&v31, v32), (*(*(v25 + 8) + 32))(v30, v26), (v7 & ~*&v30[0]) != 0))
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v31);
      }

      else
      {
        sub_1915A04D0(&v31, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1915F4F74(0, *(v24 + 16) + 1, 1);
          v24 = v34;
        }

        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1915F4F74((v28 > 1), v29 + 1, 1);
          v24 = v34;
        }

        *(v24 + 16) = v29 + 1;
        result = sub_1915A04D0(v30, v24 + 40 * v29 + 32);
      }

      ++v22;
      v23 += 40;
      if (v21 == v22)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v24;
}

uint64_t static AXPreferenceContext.store.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }

  sub_191641260(a1);
}

uint64_t sub_19164102C()
{
  v7 = type metadata accessor for AXCoreSettingsStore();
  v8 = &protocol witness table for AXCoreSettingsStore;
  *&v6 = [objc_allocWithZone(v7) init];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0208, &qword_191675078);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = v3 + *(*v3 + 96);
  sub_19166B1B8();
  result = sub_1915A04D0(&v6, v3 + 16);
  qword_1ED5A8280 = v3;
  return result;
}

uint64_t static AXPreferenceContext.$store.getter()
{
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19164115C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{

  v6 = sub_1916413DC(1);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = a3(v6, v8, v10, v12);

  sub_19163E5E8(1uLL, a1, a2);

  sub_191641478();
  sub_19166B858();

  return v13;
}

uint64_t sub_191641260@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [objc_opt_self() currentThread];
  v5 = [v4 threadDictionary];

  v6 = v2 + *(*v2 + 96);
  *&v10[0] = sub_19166B178();
  *(&v10[0] + 1) = v7;
  v8 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v8)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
    sub_1915E4370(v10, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0200, &qword_191675070);
  if (swift_dynamicCast())
  {
    return sub_1915A04D0(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  return sub_1915DB15C(v2 + 16, a1);
}

uint64_t sub_1916413DC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_19166B848();

    return sub_19166B958();
  }

  return result;
}

unint64_t sub_191641478()
{
  result = qword_1EADB01E8;
  if (!qword_1EADB01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01E8);
  }

  return result;
}

unint64_t sub_1916414D0()
{
  result = qword_1EADB01F0;
  if (!qword_1EADB01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01F0);
  }

  return result;
}

unint64_t sub_191641528()
{
  result = qword_1EADB01F8;
  if (!qword_1EADB01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB01F8);
  }

  return result;
}

unint64_t sub_191641580()
{
  result = qword_1EADAE5C8;
  if (!qword_1EADAE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE5C8);
  }

  return result;
}

unint64_t sub_1916415D8()
{
  result = qword_1EADAE5C0;
  if (!qword_1EADAE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE5C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXSettingsTrait(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AXSettingsTrait(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities18AXSettingsObjCModeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_191641704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19164174C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_191641794(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1916417DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191641824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AXCoreSettingsStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_191641934()
{

  return swift_deallocClassInstance();
}

id sub_19164196C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_suiteLock);
  os_unfair_lock_lock(v1 + 4);
  sub_191643530(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = *(v4 + 16);

  return v2;
}

uint64_t sub_191641A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_cachedSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {
    v10 = *(a1 + v8);

    v11 = sub_1915DB0E4(a2, a3);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);

      goto LABEL_8;
    }
  }

  v14 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v15 = sub_19166B718();
  v16 = [v14 initWithSuiteName_];

  if (!v16)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  swift_beginAccess();

  v13 = v16;
  v17 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1915E2808(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v20;
  swift_endAccess();
LABEL_8:
  type metadata accessor for AXCoreSettingsStore.SuiteSmuggler();
  result = swift_allocObject();
  *(result + 16) = v13;
  *a4 = result;
  return result;
}

double sub_191641BD8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v3, v4);
  (*(v4 + 16))(v3, v4);
  v5 = sub_19164196C();
  if (v5)
  {
    v6 = v5;
    v7 = sub_19166B718();

    v8 = [v6 valueForKey_];

    if (v8)
    {
      sub_19166BFC8();

      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return result;
      }
    }

    else
    {
      sub_19159E780(v12, &unk_1EADB0270, &unk_191672C20);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;

  return result;
}

id sub_191641D9C(uint64_t (*a1)(void))
{
  if (geteuid())
  {
    return a1();
  }

  v2 = getpwnam("mobile");
  if (!v2 || (pw_uid = v2->pw_uid) == 0)
  {
    sub_19166BD78();
    result = AXLogSettings();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    sub_19166B528();

    return a1();
  }

  v4 = seteuid(pw_uid);
  (a1)(v4);

  return seteuid(0);
}

void sub_191641F08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  (*(v6 + 16))(v5, v6);
  v10 = sub_19164196C();
  if (v10)
  {
    v11 = v10;
    sub_1915E0A90(a3, v20, &qword_1EADAF4A8, &qword_191672420);
    if (v20[3])
    {
      v12 = sub_19166C018();
      sub_1915E0AF8(v20);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_19166B718();
    [v11 setObject:v12 forKey:v13];
    swift_unknownObjectRelease();

    v20[0] = 0xD000000000000010;
    v20[1] = 0x800000019167D6F0;
    MEMORY[0x193AFC710](v7, v9);
    v14 = sub_19166B7D8();

    notify_post((v14 + 32));

    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 32))(v20, v15, v16);
    if ((v20[0] & 4) == 0)
    {

LABEL_12:

      return;
    }

    v17 = CFNotificationCenterGetDarwinNotifyCenter();
    if (*MEMORY[0x1E69E4B88])
    {
      v18 = v17;
      v19 = *MEMORY[0x1E69E4B88];

      CFNotificationCenterPostNotification(v18, v19, 0, 0, 1u);

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_191642164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  v14 = (*(v10 + 16))(v9, v10);
  v16 = v15;
  v17 = sub_19164196C();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = type metadata accessor for AXCoreSettingsStore.Observation();
    v45 = v5;
    v46 = a4;
    v21 = objc_allocWithZone(v20);
    v22 = v18;

    sub_19166B1B8();
    v23 = &v21[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key];
    *v23 = v11;
    v23[1] = v13;
    v23[2] = v14;
    v23[3] = v16;
    v24 = &v21[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block];
    *v24 = sub_1915E4118;
    v24[1] = v19;
    *&v21[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_suite] = v22;
    v47.receiver = v21;
    v47.super_class = v20;
    v25 = v22;

    v26 = objc_msgSendSuper2(&v47, sel_init);
    v27 = *&v26[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_suite];
    v28 = &v26[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key];
    v29 = *&v26[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key];
    v30 = *&v26[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key + 8];
    v31 = v26;
    v32 = sub_19166B718();
    [v27 addObserver:v31 forKeyPath:v32 options:3 context:v31];

    MEMORY[0x193AFC710](*v28, *(v28 + 1));
    v33 = CFNotificationCenterGetDarwinNotifyCenter();
    v34 = sub_19166B718();

    CFNotificationCenterAddObserver(v33, v31, sub_191642820, v34, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v35 = *(v45 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock);
    v38 = MEMORY[0x1EEE9AC00](v36, v37);
    MEMORY[0x1EEE9AC00](v38, v39);
    os_unfair_lock_lock(v35 + 4);
    sub_191643120();
    os_unfair_lock_unlock(v35 + 4);

    v40 = OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_id;
    v41 = sub_19166B1C8();
    v42 = *(v41 - 8);
    (*(v42 + 16))(v46, &v31[v40], v41);

    return (*(v42 + 56))(v46, 0, 1, v41);
  }

  else
  {
    v44 = sub_19166B1C8();
    (*(*(v44 - 8) + 56))(a4, 1, 1, v44);
  }
}

uint64_t sub_191642548(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_id;
  v5 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observations;
  swift_beginAccess();
  v6 = a2;
  v7 = *(a1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v5);
  *(a1 + v5) = 0x8000000000000000;
  sub_1915E2980(v6, a2 + v4, isUniquelyReferenced_nonNull_native);
  *(a1 + v5) = v10;
  return swift_endAccess();
}

void sub_1916425F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock);
  os_unfair_lock_lock(v1 + 4);
  sub_191643590();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_191642664(uint64_t a1, uint64_t a2)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2);
  swift_beginAccess();
  sub_1915E0F84(0, v7);
  return swift_endAccess();
}

uint64_t sub_191642764(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v12 - v9;
  sub_191642164(a1, a2, a3, &v12 - v9);
  return sub_19159E780(v10, &qword_1EADAF4A0, &qword_191673940);
}

void sub_191642820(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block);
    v3 = *(a2 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block + 8);

    v2(v4);
  }
}

id sub_191642878()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = *&v0[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key];
  v3 = *&v0[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_key + 8];
  v4 = *&v0[OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_suite];
  v5 = v0;

  v6 = sub_19166B718();

  [v4 removeObserver:v5 forKeyPath:v6];

  v8.receiver = v5;
  v8.super_class = type metadata accessor for AXCoreSettingsStore.Observation();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_191642B88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_id;
  v5 = sub_19166B1C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id AXCoreSettingsStore.init()()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_cachedSuites;
  *&v0[v1] = sub_1916534BC(MEMORY[0x1E69E7CC0]);
  v2 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_suiteLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observations] = MEMORY[0x1E69E7CC8];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AXCoreSettingsStore();
  return objc_msgSendSuper2(&v7, sel_init);
}

id AXCoreSettingsStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXCoreSettingsStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_191642E10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v14 - v10;
  v12 = *v3;
  sub_191642164(a1, a2, a3, &v14 - v10);
  return sub_19159E780(v11, &qword_1EADAF4A0, &qword_191673940);
}

void sub_191642EF4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15AXCoreUtilities19AXCoreSettingsStore_observationLock);
  os_unfair_lock_lock(v1 + 4);
  sub_191643590();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_191642F68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

id axSwitchFromRoot<A>(_:)(uint64_t (*a1)(uint64_t))
{
  if (geteuid())
  {
    return a1(0);
  }

  v2 = getpwnam("mobile");
  if (!v2 || (pw_uid = v2->pw_uid) == 0)
  {
    sub_19166BD78();
    result = AXLogSettings();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    sub_19166B528();

    return a1(0);
  }

  seteuid(pw_uid);
  a1(1);

  return seteuid(0);
}

uint64_t type metadata accessor for AXCoreSettingsStore.Observation()
{
  result = qword_1EADAE9C8;
  if (!qword_1EADAE9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_191643120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1916432D0()
{
  result = sub_19166B1C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1916433CC(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    sub_1915E0A90(result, v6, &unk_1EADB0270, &unk_191672C20);
    if (v7)
    {
      sub_1916434C4();
      result = swift_dynamicCast();
      if (result)
      {

        v3 = *(v2 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block);
        v4 = *(v2 + OBJC_IVAR____TtCC15AXCoreUtilities19AXCoreSettingsStore11Observation_block + 8);
        return v3();
      }
    }

    else
    {
      return sub_19159E780(v6, &unk_1EADB0270, &unk_191672C20);
    }
  }

  return result;
}

uint64_t sub_19164347C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1916434C4()
{
  result = qword_1EADAE680;
  if (!qword_1EADAE680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAE680);
  }

  return result;
}

void *sub_191643530@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t AudioEffectConfiguration._bridgeToObjectiveC()()
{
  v1 = [objc_allocWithZone(AXAudioEffectConfiguration) init];
  v2 = type metadata accessor for AudioEffectConfiguration();
  [v1 setEnabled_];
  v3 = MEMORY[0x1E69E7CC0];
  sub_1916534D0(MEMORY[0x1E69E7CC0]);
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_19166B668();

  [v1 setParameters_];

  sub_1916534D0(v3);
  v6 = v4;
  v7 = sub_19166B668();

  [v1 setProperties_];

  v96 = v2;
  v97 = v0;
  v8 = *(v0 + *(v2 + 24));
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(v0 + *(v2 + 24)) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v99 = *(v0 + *(v2 + 24));

  v16 = 0;
  v102 = v1;
  v98 = v10;
  if (v14)
  {
    while (1)
    {
      v17 = v6;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v16 << 6);
      v20 = (*(v99 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v99 + 56) + 4 * v19);
      v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      LODWORD(v25) = v23;
      v26 = [v24 initWithFloat_];
      v27 = [v102 parameters];
      v28 = sub_19166B678();

      v100 = v26;
      if (v26)
      {
        break;
      }

      v6 = v17;
      v43 = sub_1915DB0E4(v21, v22);
      v45 = v44;

      if (v45)
      {
        v10 = v98;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
        }

        v46 = *(v28[6] + 16 * v43 + 8);

        sub_1916477A0(v43, v28);
        goto LABEL_25;
      }

LABEL_24:
      v10 = v98;
LABEL_25:
      v14 &= v14 - 1;
      v49 = sub_19166B668();

      [v102 setParameters_];

      if (!v14)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v21;
    v32 = sub_1915DB0E4(v21, v22);
    v33 = v28[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_57;
    }

    v36 = v31;
    if (v28[3] < v35)
    {
      sub_1916469FC(v35, isUniquelyReferenced_nonNull_native, &qword_1EADB02E0, &qword_1916751B0);
      v37 = sub_1915DB0E4(v30, v22);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_61;
      }

      v32 = v37;
      if ((v36 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:

      v47 = v28[7];
      v48 = *(v47 + 8 * v32);
      *(v47 + 8 * v32) = v100;

LABEL_23:
      v6 = MEMORY[0x1E69E6158];
      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v31)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
      if (v36)
      {
        goto LABEL_22;
      }
    }

LABEL_14:
    v28[(v32 >> 6) + 8] |= 1 << v32;
    v39 = (v28[6] + 16 * v32);
    *v39 = v30;
    v39[1] = v22;
    *(v28[7] + 8 * v32) = v100;
    v40 = v28[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_59;
    }

    v28[2] = v42;
    goto LABEL_23;
  }

  while (1)
  {
LABEL_5:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v18);
    ++v16;
    if (v14)
    {
      v17 = v6;
      v16 = v18;
      goto LABEL_9;
    }
  }

  v50 = *(v97 + *(v96 + 28));
  v53 = *(v50 + 64);
  v52 = v50 + 64;
  v51 = v53;
  v54 = 1 << *(*(v97 + *(v96 + 28)) + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v51;
  v57 = (v54 + 63) >> 6;
  v101 = *(v97 + *(v96 + 28));

  v58 = 0;
  v59 = v102;
  while (v56)
  {
LABEL_39:
    v65 = __clz(__rbit64(v56)) | (v58 << 6);
    v66 = (*(v101 + 48) + 16 * v65);
    v68 = *v66;
    v67 = v66[1];
    v69 = *(*(v101 + 56) + 4 * v65);
    v70 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v71 = [v70 initWithUnsignedInt_];
    v72 = [v59 properties];
    v73 = sub_19166B678();

    if (!v71)
    {
      v82 = sub_1915DB0E4(v68, v67);
      v84 = v83;

      if (v84)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
        }

        v85 = *(v73[6] + 16 * v82 + 8);

        sub_1916477A0(v82, v73);
      }

      goto LABEL_33;
    }

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v75 = sub_1915DB0E4(v68, v67);
    v77 = v73[2];
    v78 = (v76 & 1) == 0;
    v41 = __OFADD__(v77, v78);
    v79 = v77 + v78;
    if (v41)
    {
      goto LABEL_58;
    }

    v80 = v76;
    if (v73[3] >= v79)
    {
      if ((v74 & 1) == 0)
      {
        v89 = v75;
        sub_1916488C8(&qword_1EADB02E0, &qword_1916751B0);
        v75 = v89;
        v59 = v102;
        if (v80)
        {
LABEL_32:
          v60 = v75;

          v61 = v73[7];
          v62 = *(v61 + 8 * v60);
          *(v61 + 8 * v60) = v71;

          goto LABEL_33;
        }

        goto LABEL_50;
      }
    }

    else
    {
      sub_1916469FC(v79, v74, &qword_1EADB02E0, &qword_1916751B0);
      v75 = sub_1915DB0E4(v68, v67);
      if ((v80 & 1) != (v81 & 1))
      {
        goto LABEL_61;
      }
    }

    v59 = v102;
    if (v80)
    {
      goto LABEL_32;
    }

LABEL_50:
    v73[(v75 >> 6) + 8] |= 1 << v75;
    v86 = (v73[6] + 16 * v75);
    *v86 = v68;
    v86[1] = v67;
    *(v73[7] + 8 * v75) = v71;
    v87 = v73[2];
    v41 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v41)
    {
      goto LABEL_60;
    }

    v73[2] = v88;
LABEL_33:
    v56 &= v56 - 1;
    v63 = sub_19166B668();

    [v59 setProperties_];
  }

  while (1)
  {
    v64 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v64 >= v57)
    {

      v90 = sub_19166B188();
      [v59 setIdentifier_];

      v91 = (v97 + *(v96 + 20));
      v92 = *v91;
      v93 = v91[1];
      v94 = sub_19166B718();
      [v59 setEffectName_];

      return v59;
    }

    v56 = *(v52 + 8 * v64);
    ++v58;
    if (v56)
    {
      v58 = v64;
      goto LABEL_39;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t static AudioEffectConfiguration._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218();
    __break(1u);
  }

  return result;
}

uint64_t static AudioEffectConfiguration._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0238, &qword_191675130);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  if (a1)
  {
    v13 = type metadata accessor for AudioEffectConfiguration();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v12, 1, 1, v13);
    v15 = a1;
    if (_s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(v15, v12))
    {
      sub_1916492A8(v12, v9);
      if ((*(v14 + 48))(v9, 1, v13) != 1)
      {
        sub_19159E780(v12, &qword_1EADB0238, &qword_191675130);

        return sub_191649318(v9, a2);
      }

      sub_19159E780(v9, &qword_1EADB0238, &qword_191675130);
    }
  }

  result = sub_19166C218();
  __break(1u);
  return result;
}

uint64_t sub_191644028(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218();
    __break(1u);
  }

  return result;
}

void AXAudioEffectConfiguration.identifier.getter()
{
  v1 = [v0 _identifier];
  sub_19166B1A8();
}

uint64_t AXAudioEffectConfiguration.identifier.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19166B188();
  [v2 set:v4 identifier:?];

  v5 = sub_19166B1C8();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void sub_191644400(id *a1)
{
  v1 = [*a1 identifier];
  sub_19166B1A8();
}

uint64_t AXAudioEffectConfiguration.effectName.getter()
{
  v1 = (v0 + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t AXAudioEffectConfiguration.effectName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AXAudioEffectConfiguration_effectName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_191644600(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 effectName];
  v4 = sub_19166B748();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t AXAudioEffectConfiguration.enabled.getter()
{
  v1 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXAudioEffectConfiguration.enabled.setter(char a1)
{
  v3 = OBJC_IVAR___AXAudioEffectConfiguration_enabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1916447C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);

  v6 = sub_19166B668();

  return v6;
}

uint64_t sub_19164487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v6 = sub_19166B678();
  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
}

void sub_19164491C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v5 = sub_19166B678();

  *a3 = v5;
}

void sub_19164499C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = *a2;
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v8 = sub_19166B668();
  [v7 *a5];
}

Swift::Void __swiftcall AXAudioEffectConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 identifier];
  sub_19166B1A8();

  v11 = sub_19166B188();
  (*(v5 + 8))(v9, v4);
  v12 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = [v2 effectName];
  if (!v13)
  {
    sub_19166B748();
    v13 = sub_19166B718();
  }

  v14 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = [v2 enabled];
  v16 = sub_19166B718();
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];

  v17 = [v2 properties];
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  sub_19166B678();

  v18 = sub_19166B668();

  v19 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  v20 = [v2 parameters];
  sub_19166B678();

  v21 = sub_19166B668();

  v22 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
}

id AXAudioEffectConfiguration.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  v4 = [v2 init];
  sub_1915DAA60(0, &unk_1EADB0260, 0x1E696AFB0);
  v5 = sub_19166BF18();
  if (v5)
  {
    v6 = v5;
    sub_1915DAA60(0, &unk_1EADAFBB0, 0x1E696AEC0);
    v7 = sub_19166BF18();
    if (v7)
    {
      v10 = 0;
      v8 = v7;
      sub_19166B738();
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1916452A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_19166B1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02A0, &qword_191675188);
  v45 = a2;
  result = sub_19166C238();
  v14 = result;
  if (*(v11 + 16))
  {
    v49 = v6;
    v41 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v11;
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v22 = v46;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v48 = *(v44 + 72);
      v29 = v28 + v48 * v27;
      if (v45)
      {
        (*v47)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      else
      {
        (*v42)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      v31 = *(v14 + 40);
      sub_1916493CC();
      result = sub_19166B6B8();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v22 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v22 = v46;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v47)(*(v14 + 48) + v48 * v23, v22, v49);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v11 = v43;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_191645650(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02D0, &qword_1916751A8);
  v41 = a2;
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1915E1F90(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_191645948(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0298, &qword_1916759C0);
  v37 = a2;
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_191645BF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02F8, &qword_1916751C0);
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1915E4370(v22, v33);
      }

      else
      {
        sub_1915DFD18(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_19166C768();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1915E4370(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_191645E68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B0, &qword_191675190);
  v38 = a2;
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_191646108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC18, &qword_191672F70);
  v37 = a2;
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1916463AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B8, &qword_191675198);
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v22 = *(v8 + 40);
      sub_19166C778();
      sub_19166B3E8();
      result = sub_19166C7B8();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_191646650(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_19166B1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02E8, &qword_1916751B8);
  v45 = a2;
  result = sub_19166C238();
  v14 = result;
  if (*(v11 + 16))
  {
    v49 = v6;
    v41 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v11;
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v22 = v46;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v48 = *(v44 + 72);
      v29 = v28 + v48 * v27;
      if (v45)
      {
        (*v47)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      else
      {
        (*v42)(v22, v29, v49);
        v30 = *(*(v11 + 56) + 8 * v27);
      }

      v31 = *(v14 + 40);
      sub_1916493CC();
      result = sub_19166B6B8();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v22 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v22 = v46;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v47)(*(v14 + 48) + v48 * v23, v22, v49);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v11 = v43;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1916469FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_19166C238();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_191646C98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02C8, &qword_1916751A0);
  result = sub_19166C238();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_19166C768();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_191646F1C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_19166C238();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_1916471BC(int64_t a1, uint64_t a2)
{
  v4 = sub_19166B1C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_19166C008();
    v16 = v14;
    v40 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = *(v17 + 56);
    v38 = (v17 - 8);
    v39 = v18;
    do
    {
      v19 = v11;
      v20 = v41 * v13;
      v21 = v16;
      v22 = v17;
      v39(v10, *(a2 + 48) + v41 * v13, v4);
      v23 = *(a2 + 40);
      sub_1916493CC();
      v24 = sub_19166B6B8();
      result = (*v38)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v41 * a1;
          v29 = v28 + v20 + v41;
          v30 = v41 * a1 < v20 || result >= v29;
          v17 = v22;
          if (v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v16 = v21;
            v11 = v19;
          }

          else
          {
            v31 = v41 * a1 == v20;
            v11 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
            }
          }

          v32 = *(a2 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v13);
          if (a1 != v13 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_191647474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_19166C778();

      sub_19166B828();
      v15 = sub_19166C7B8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_191647630(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = sub_19166C768();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1916477A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_19166C778();

      sub_19166B828();
      v13 = sub_19166C7B8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_191647950(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19166C008() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_19166C768();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_191647AC0()
{
  v1 = v0;
  v35 = sub_19166B1C8();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02A0, &qword_191675188);
  v5 = *v0;
  v6 = sub_19166C228();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_191647D40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02D0, &qword_1916751A8);
  v2 = *v0;
  v3 = sub_19166C228();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1915E1F90(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_191647F1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0298, &qword_1916759C0);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_191648090()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02F8, &qword_1916751C0);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1915DFD18(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1915E4370(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_19164820C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B0, &qword_191675190);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_191648374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC18, &qword_191672F70);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_1916484DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02B8, &qword_191675198);
  v2 = *v0;
  v3 = sub_19166C228();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = swift_unknownObjectRetain();
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

char *sub_191648654()
{
  v1 = v0;
  v33 = sub_19166B1C8();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02E8, &qword_1916751B8);
  v5 = *v0;
  v6 = sub_19166C228();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1916488C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19166C228();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_191648A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB02C8, &qword_1916751A0);
  v2 = *v0;
  v3 = sub_19166C228();
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

void *sub_191648B94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19166C228();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s15AXCoreUtilities24AudioEffectConfigurationV34_conditionallyBridgeFromObjectiveC_6resultSbSo07AXAudiodE0C_ACSgztFZ_0(void *a1, uint64_t a2)
{
  sub_19159E780(a2, &qword_1EADB0238, &qword_191675130);
  v77 = a1;
  v3 = [a1 parameters];
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v4 = sub_19166B678();

  v5 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v79 = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x1E69E7CC8];
  if ((v9 & v6) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v15 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v15 >= v11)
    {
      v75 = v12;

      v37 = [v77 properties];
      v38 = sub_19166B678();

      v39 = 0;
      v41 = v38 + 64;
      v40 = *(v38 + 64);
      v78 = v38;
      v42 = 1 << *(v38 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & v40;
      v45 = (v42 + 63) >> 6;
      v46 = MEMORY[0x1E69E7CC8];
      if ((v43 & v40) != 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      while (1)
      {
        v48 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_42;
        }

        if (v48 >= v45)
        {

          v67 = [v77 identifier];
          sub_19166B1A8();

          v68 = [v77 effectName];
          v69 = sub_19166B748();
          v71 = v70;

          LOBYTE(v68) = [v77 enabled];
          v72 = type metadata accessor for AudioEffectConfiguration();
          v73 = (a2 + v72[5]);
          *v73 = v69;
          v73[1] = v71;
          *(a2 + v72[6]) = v75;
          *(a2 + v72[8]) = v68;
          *(a2 + v72[7]) = v46;
          (*(*(v72 - 1) + 56))(a2, 0, 1, v72);
          return 1;
        }

        v44 = *(v41 + 8 * v48);
        ++v39;
        if (v44)
        {
          while (1)
          {
            v49 = __clz(__rbit64(v44)) | (v48 << 6);
            v50 = (*(v78 + 48) + 16 * v49);
            v52 = *v50;
            v51 = v50[1];
            v53 = *(*(v78 + 56) + 8 * v49);

            v54 = v53;
            v80 = [v54 unsignedIntValue];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = sub_1915DB0E4(v52, v51);
            v58 = v46[2];
            v59 = (v57 & 1) == 0;
            v29 = __OFADD__(v58, v59);
            v60 = v58 + v59;
            if (v29)
            {
              goto LABEL_44;
            }

            v61 = v57;
            if (v46[3] >= v60)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v66 = v56;
                sub_19164820C();
                v56 = v66;
              }
            }

            else
            {
              sub_191645E68(v60, isUniquelyReferenced_nonNull_native);
              v56 = sub_1915DB0E4(v52, v51);
              if ((v61 & 1) != (v62 & 1))
              {
                goto LABEL_47;
              }
            }

            v44 &= v44 - 1;
            if (v61)
            {
              v47 = v56;

              *(v46[7] + 4 * v47) = v80;

              v39 = v48;
              if (!v44)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v46[(v56 >> 6) + 8] |= 1 << v56;
              v63 = (v46[6] + 16 * v56);
              *v63 = v52;
              v63[1] = v51;
              *(v46[7] + 4 * v56) = v80;

              v64 = v46[2];
              v29 = __OFADD__(v64, 1);
              v65 = v64 + 1;
              if (v29)
              {
                goto LABEL_46;
              }

              v46[2] = v65;
              v39 = v48;
              if (!v44)
              {
                goto LABEL_27;
              }
            }

LABEL_26:
            v48 = v39;
          }
        }
      }
    }

    v10 = *(v7 + 8 * v15);
    ++v5;
  }

  while (!v10);
  v14 = v12;
  while (1)
  {
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = (*(v79 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v79 + 56) + 8 * v16);

    v21 = v20;
    [v21 floatValue];
    v23 = v22;
    v12 = v14;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v12;
    v25 = sub_1915DB0E4(v19, v18);
    v27 = v12[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v12[3] >= v30)
    {
      if ((v24 & 1) == 0)
      {
        v36 = v25;
        sub_191648374();
        v25 = v36;
      }
    }

    else
    {
      sub_191646108(v30, v24);
      v25 = sub_1915DB0E4(v19, v18);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_47;
      }
    }

    v10 &= v10 - 1;
    if (v31)
    {
      v13 = v25;

      *(v81[7] + 4 * v13) = v23;
      v12 = v81;

      v5 = v15;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v12[6] + 16 * v25);
      *v33 = v19;
      v33[1] = v18;
      *(v12[7] + 4 * v25) = v23;

      v34 = v12[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_45;
      }

      v12[2] = v35;
      v5 = v15;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v14 = v12;
    v15 = v5;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t sub_1916492A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0238, &qword_191675130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191649318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1916493CC()
{
  result = qword_1EADAE9E0;
  if (!qword_1EADAE9E0)
  {
    sub_19166B1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE9E0);
  }

  return result;
}

uint64_t AccessibilityFeatureFlags.enabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for AccessibilityFeatureFlags;
  v4[4] = sub_19159DF0C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_19166B458();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

AXCoreUtilities::AccessibilityFeatureFlags_optional __swiftcall AccessibilityFeatureFlags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19166C6B8();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AccessibilityFeatureFlags.rawValue.getter()
{
  result = 0x6F72687473736170;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7361507473657567;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x726F6D646174;
      break;
    case 0xA:
    case 0xD:
      result = 0xD00000000000001FLL;
      break;
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 0xC:
      result = 0xD00000000000001DLL;
      break;
    case 0xE:
    case 0x13:
      result = 0xD00000000000001BLL;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    case 0x10:
      result = 0x7865547265766F68;
      break;
    case 0x11:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD00000000000001ELL;
      break;
    case 0x14:
    case 0x15:
      result = 0xD000000000000022;
      break;
    case 0x16:
      result = 0xD000000000000013;
      break;
    case 0x17:
      result = 0xD000000000000013;
      break;
    case 0x18:
      result = 0x7461446563696F76;
      break;
    default:
      result = 0xD000000000000025;
      break;
  }

  return result;
}

uint64_t sub_1916498C4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AccessibilityFeatureFlags.rawValue.getter();
  v4 = v3;
  if (v2 == AccessibilityFeatureFlags.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_19166C5E8();
  }

  return v7 & 1;
}

unint64_t sub_191649964()
{
  result = qword_1EADB0310;
  if (!qword_1EADB0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0310);
  }

  return result;
}

uint64_t sub_1916499B8()
{
  v1 = *v0;
  sub_19166C778();
  AccessibilityFeatureFlags.rawValue.getter();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_191649A20()
{
  v2 = *v0;
  AccessibilityFeatureFlags.rawValue.getter();
  sub_19166B828();
}

uint64_t sub_191649A84()
{
  v1 = *v0;
  sub_19166C778();
  AccessibilityFeatureFlags.rawValue.getter();
  sub_19166B828();

  return sub_19166C7B8();
}

unint64_t sub_191649AF4@<X0>(unint64_t *a1@<X8>)
{
  result = AccessibilityFeatureFlags.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191649C6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_191649CB0(a1, a2);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = *&v2[24 * v3 + 8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

char *sub_191649CB0(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 32))();

  sub_19164A1E4(&v3);

  return v3;
}

uint64_t sub_191649D5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 16);

  *(a2 + 8) = sub_19164A164;
  *(a2 + 16) = v5;
  return result;
}

uint64_t AXMigration.migrate.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AXMigration.migrate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AXMigration.init(version:migrate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t AXCodingError.hashValue.getter()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

unint64_t sub_191649EEC()
{
  result = qword_1EADB0338;
  if (!qword_1EADB0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0338);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_191649F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191649FC4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AXCodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXCodingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_19164A164(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v7 = a1;
  result = v3(&v6, &v7);
  if (!v2)
  {
    return v6;
  }

  return result;
}

uint64_t sub_19164A1AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_19164A1E4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19164AB54(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_19166C3B8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19166BA38();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_19164A33C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19164A33C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_19164AB40(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_19164A904((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            v26 = *(v23 - 24);
            v22[2] = *(v23 - 8);
            *v22 = v26;
            *(v23 - 24) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1915F46A4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1915F46A4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_19164A904((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}