uint64_t sub_2380B0F98(uint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_23815544C();
        v3 = v21;
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
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
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
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
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
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2380B1398(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2380B1298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2380B22A0(v5, v7) & 1;
}

uint64_t sub_2380B12E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2381527EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unsigned __int8 *sub_2380B1398(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_238154E7C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2380B1EA8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_23815544C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2380B191C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_238154E7C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2380B1EA8();
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
      result = sub_23815544C();
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

uint64_t sub_2380B1EA8()
{
  v0 = sub_238154E8C();
  v4 = sub_2380B1F28(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2380B1F28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_238154D6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_23815531C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_23813189C(v9, 0);
  v12 = sub_2380B2080(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_238154D6C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_23815544C();
LABEL_4:

  return sub_238154D6C();
}

unint64_t sub_2380B2080(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_23812976C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_238154E3C();
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
          result = sub_23815544C();
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

    result = sub_23812976C(v12, a6, a7);
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

    result = sub_238154E1C();
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

uint64_t sub_2380B22A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  if (v7 <= 2)
  {
    if (!*(a1 + 32))
    {
      if (!*(a2 + 32))
      {
        if (v8 = a1[3], v9 = *(a1 + 23), v10 = *(a1 + 21), v11 = *(a1 + 17), v12 = *(a2 + 16), v13 = *(a2 + 24), v4 == *a2) && v5 == *(a2 + 8) || (sub_2381555CC())
        {
          if (((v11 << 8) | ((v10 | (v9 << 16)) << 40) | v6) == v12 && v8 == v13)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }

      goto LABEL_34;
    }

    if (v7 == 1)
    {
      if (*(a2 + 32) == 1)
      {
        goto LABEL_31;
      }

LABEL_34:
      v17 = 0;
      return v17 & 1;
    }

    if (*(a2 + 32) != 2)
    {
      goto LABEL_34;
    }

    v15 = *(a2 + 16);
    if (v4 != *a2 || v5 != *(a2 + 8))
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v7 == 3)
  {
    if (*(a2 + 32) != 3)
    {
      goto LABEL_34;
    }

    v15 = *(a2 + 16);
    if (v4 != *a2 || v5 != *(a2 + 8))
    {
LABEL_28:
      if ((sub_2381555CC() & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_29:
    v17 = v6 ^ v15 ^ 1;
    return v17 & 1;
  }

  if (v7 == 4)
  {
    if (*(a2 + 32) != 4)
    {
      goto LABEL_34;
    }
  }

  else if (*(a2 + 32) != 5)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (v4 == *a2 && v5 == *(a2 + 8))
  {
LABEL_33:
    v17 = 1;
    return v17 & 1;
  }

LABEL_36:

  return sub_2381555CC();
}

uint64_t sub_2380B2454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeViewModel();
  v5 = a1 + v4[5];
  v20 = *(v5 + 32);
  v6 = *(v5 + 16);
  v19[0] = *v5;
  v19[1] = v6;
  v7 = a2 + v4[5];
  v22 = *(v7 + 32);
  v8 = *(v7 + 16);
  v21[0] = *v7;
  v21[1] = v8;
  if (sub_2380B22A0(v19, v21) & 1) != 0 && (sub_2381527AC() & 1) != 0 && (sub_2380B0B30(*(a2 + v4[6]), *(a1 + v4[6])))
  {
    v9 = v4[10];
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    v12 = v11 == 107 && v10 == 107;
    if (v10 != 107 && v11 != 107)
    {
      v13 = sub_23807CC40(v10);
      v15 = v14;
      if (v13 == sub_23807CC40(v11) && v15 == v16)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_2381555CC();
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2380B258C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380B25FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380B2660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v221 = a1;
  v217 = a2;
  v2 = sub_23815367C();
  v208 = *(v2 - 8);
  v3 = *(v208 + 8);
  v4 = MEMORY[0x28223BE20](v2);
  v206 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v202 = &v193 - v7;
  MEMORY[0x28223BE20](v6);
  v211 = &v193 - v8;
  v9 = sub_23815371C();
  v10 = *(v9 - 8);
  v204 = v9;
  v205 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v209 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBE8, &unk_23815A9A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v193 - v15;
  v17 = sub_238152BFC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v201 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v200 = &v193 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v214 = &v193 - v25;
  MEMORY[0x28223BE20](v24);
  v219 = &v193 - v26;
  v27 = sub_238152BAC();
  v28 = *(v27 - 1);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v207 = (&v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v197 = &v193 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v195 = &v193 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v196 = &v193 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v198 = &v193 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v199 = &v193 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v193 - v42;
  if (qword_27DEEA060 != -1)
  {
    swift_once();
  }

  v44 = sub_23815293C();
  v45 = __swift_project_value_buffer(v44, qword_27DEEBBB0);
  v212 = v28[2];
  v213 = v28 + 2;
  v212(v43, v221, v27);
  v220 = v45;
  v46 = sub_23815291C();
  v47 = sub_2381550FC();
  v48 = os_log_type_enabled(v46, v47);
  v218 = v17;
  v203 = v2;
  v215 = v28;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v210 = v18;
    v50 = v27;
    v51 = v49;
    v52 = swift_slowAlloc();
    v223[0] = v52;
    *v51 = 136315138;
    v53 = sub_238152B3C();
    v55 = v54;
    v216 = v28[1];
    v216(v43, v50);
    v56 = sub_238085EAC(v53, v55, v223);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_238060000, v46, v47, "Creating ddNodeViewModel for endpoint: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v57 = v52;
    v17 = v218;
    MEMORY[0x2383EA8A0](v57, -1, -1);
    v58 = v51;
    v27 = v50;
    v18 = v210;
    MEMORY[0x2383EA8A0](v58, -1, -1);
  }

  else
  {

    v216 = v28[1];
    v216(v43, v27);
  }

  sub_238152B9C();
  v59 = (*(v18 + 48))(v16, 1, v17);
  v60 = v214;
  if (v59 == 1)
  {
    sub_238071284(v16, &qword_27DEEBBE8, &unk_23815A9A0);
    v61 = v207;
    v212(v207, v221, v27);
    v62 = sub_23815291C();
    v63 = sub_2381550DC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v223[0] = v65;
      *v64 = 136315138;
      v66 = sub_238152B3C();
      v68 = v67;
      v69 = v61;
      v70 = v216;
      v216(v69, v27);
      v71 = sub_238085EAC(v66, v68, v223);

      *(v64 + 4) = v71;
      _os_log_impl(&dword_238060000, v62, v63, "Endpoint is missing txt record. Skipping {endpoint: %s}", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x2383EA8A0](v65, -1, -1);
      MEMORY[0x2383EA8A0](v64, -1, -1);

      result = v70(v221, v27);
    }

    else
    {

      v87 = v216;
      v216(v221, v27);
      result = v87(v61, v27);
    }

    goto LABEL_70;
  }

  v73 = v219;
  (*(v18 + 32))(v219, v16, v17);
  v74 = *(v18 + 16);
  v74(v60, v73, v17);
  v75 = sub_23815291C();
  v76 = sub_2381550FC();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v194 = v77;
    v207 = swift_slowAlloc();
    v223[0] = v207;
    *v77 = 136315138;
    sub_238152BEC();
    v193 = sub_238154C2C();
    v78 = v74;
    v79 = v27;
    v80 = v17;
    v82 = v81;

    v83 = v80;
    v27 = v79;
    v74 = v78;
    v214 = *(v18 + 8);
    (v214)(v60, v83);
    v84 = sub_238085EAC(v193, v82, v223);

    v85 = v194;
    *(v194 + 1) = v84;
    _os_log_impl(&dword_238060000, v75, v76, "%s", v85, 0xCu);
    v86 = v207;
    __swift_destroy_boxed_opaque_existential_1(v207);
    MEMORY[0x2383EA8A0](v86, -1, -1);
    MEMORY[0x2383EA8A0](v85, -1, -1);
  }

  else
  {

    v214 = *(v18 + 8);
    (v214)(v60, v17);
  }

  v88 = sub_238152B5C();
  if (v89 >> 60 != 15)
  {
    sub_238087244(v88, v89);
    v103 = sub_23812F9BC();
    if (v104)
    {
      v105 = v103;
    }

    else
    {
      v105 = 0x206E776F6E6B6E55;
    }

    if (v104)
    {
      v106 = v104;
    }

    else
    {
      v106 = 0xEE00656369766544;
    }

    v107 = sub_238152B5C();
    if (v108 >> 60 == 15)
    {
      v216(v221, v27);
      result = (v214)(v219, v218);
    }

    else
    {
      v126 = v107;
      v127 = v108;
      v128 = sub_23812C2C8(&unk_284AEE928);
      v130 = v129;
      v131 = sub_23812C45C(v126, v127, v128, v129);
      sub_238085CA0(v128, v130);
      sub_238087244(v126, v127);
      v216(v221, v27);
      result = (v214)(v219, v218);
      if (v131)
      {
        v132 = 0;
        v133 = 0;
        v134 = 4;
        goto LABEL_71;
      }
    }

    v132 = 0;
    v133 = 0;
    v134 = 5;
    goto LABEL_71;
  }

  v207 = v27;
  v91 = v218;
  v90 = v219;
  v74(v200, v219, v218);
  sub_23815370C();
  sub_2381536FC();
  v92 = v201;
  v74(v201, v90, v91);
  v93 = sub_23815291C();
  v94 = sub_2381550FC();
  v95 = os_log_type_enabled(v93, v94);
  v210 = v18;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v223[0] = v97;
    *v96 = 136315138;
    sub_238152BEC();
    v98 = v91;
    v99 = sub_238154C2C();
    v101 = v100;

    (v214)(v92, v98);
    v102 = sub_238085EAC(v99, v101, v223);

    *(v96 + 4) = v102;
    _os_log_impl(&dword_238060000, v93, v94, "Text Record: %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x2383EA8A0](v97, -1, -1);
    MEMORY[0x2383EA8A0](v96, -1, -1);
  }

  else
  {

    (v214)(v92, v91);
  }

  v109 = v203;
  v110 = *MEMORY[0x277D54BB0];
  v111 = v208;
  v112 = *(v208 + 13);
  v113 = v202;
  v112(v202, v110, v203);
  sub_2380B3D68(&qword_27DEEBBF0, MEMORY[0x277D54BC0]);
  v114 = v211;
  sub_238154EAC();
  sub_238154EAC();
  v117 = *(v111 + 1);
  v116 = v111 + 8;
  v115 = v117;
  v117(v113, v109);
  v118 = MEMORY[0x277D54BA0];
  if (v223[0] == v222)
  {
    v119 = sub_238152C0C();
    if (v120)
    {
      v121 = sub_2380B0F98(v119, v120);
      if ((v122 & 1) == 0)
      {
        if ((v121 & 0x80000) != 0)
        {
          v115(v114, v109);
          v125 = *v118;
        }

        else
        {
          sub_238131110(v221);
          v124 = v123;
          v115(v114, v109);
          if (v124)
          {

            v125 = *MEMORY[0x277D54BA8];
          }

          else
          {
            v125 = v110;
          }
        }

        v112(v114, v125, v109);
      }
    }
  }

  v135 = v208;
  v136 = v206;
  (*(v208 + 2))(v206, v114, v109);
  v137 = (*(v135 + 11))(v136, v109);
  if (v137 == *v118)
  {
    v138 = sub_238152B0C();
    v140 = v199;
    if (!v139)
    {
      goto LABEL_54;
    }

    v105 = v138;
    v106 = v139;
    v141 = sub_2381310F8(v221);
    if (!v142)
    {
LABEL_53:

LABEL_54:
      v208 = v115;
      v149 = v207;
      v212(v140, v221, v207);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v223[0] = v153;
        *v152 = 136315138;
        v154 = sub_238152B3C();
        v155 = v140;
        v157 = v156;
        v158 = v216;
        v220 = v116;
        v216(v155, v149);
        v159 = sub_238085EAC(v154, v157, v223);

        *(v152 + 4) = v159;
        v160 = "Same account endpoint is missing device name and model. Skipping {endpoint: %s}";
LABEL_56:
        _os_log_impl(&dword_238060000, v150, v151, v160, v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x2383EA8A0](v153, -1, -1);
        MEMORY[0x2383EA8A0](v152, -1, -1);

        v158(v221, v149);
        v208(v211, v109);
LABEL_69:
        (*(v205 + 8))(v209, v204);
        result = (v214)(v219, v218);
LABEL_70:
        v105 = 0;
        v106 = 0;
        v132 = 0;
        v133 = 0;
        v134 = -1;
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    v132 = v141;
    v133 = v142;
    if (v141 == 63 && v142 == 0xE100000000000000 || (sub_2381555CC() & 1) != 0)
    {

      goto LABEL_53;
    }

    v216(v221, v207);
    v115(v114, v109);
    (*(v205 + 8))(v209, v204);
    result = (v214)(v219, v218);
    v134 = 0;
  }

  else if (v137 == *MEMORY[0x277D54BA8])
  {
    v143 = sub_238131110(v221);
    if (!v144)
    {
      v208 = v115;
      v140 = v198;
      v149 = v207;
      v212(v198, v221, v207);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v223[0] = v153;
        *v152 = 136315138;
        v161 = sub_238152B3C();
        v162 = v140;
        v164 = v163;
        v158 = v216;
        v220 = v116;
        v216(v162, v149);
        v165 = sub_238085EAC(v161, v164, v223);

        *(v152 + 4) = v165;
        v160 = "Contact endpoint is missing contact ID. Skipping {endpoint: %s}";
        goto LABEL_56;
      }

LABEL_68:

      v191 = v216;
      v216(v221, v149);
      v191(v140, v149);
      v208(v114, v109);
      goto LABEL_69;
    }

    v105 = v143;
    v106 = v144;
    v216(v221, v207);
    v115(v114, v109);
    (*(v205 + 8))(v209, v204);
    result = (v214)(v219, v218);
    v132 = 0;
    v133 = 0;
    v134 = 1;
  }

  else if (v137 == v110)
  {
    v145 = sub_238152B0C();
    if (!v146)
    {
      v208 = v115;
      v140 = v196;
      v149 = v207;
      v212(v196, v221, v207);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v223[0] = v153;
        *v152 = 136315138;
        v179 = sub_238152B3C();
        v180 = v140;
        v182 = v181;
        v158 = v216;
        v220 = v116;
        v216(v180, v149);
        v183 = sub_238085EAC(v179, v182, v223);

        *(v152 + 4) = v183;
        v160 = "Stranger endpoint is missing device name. Skipping {endpoint: %s}";
        goto LABEL_56;
      }

      goto LABEL_68;
    }

    v105 = v145;
    v106 = v146;
    v216(v221, v207);
    v115(v114, v109);
    (*(v205 + 8))(v209, v204);
    result = (v214)(v219, v218);
    v132 = 0;
    v133 = 0;
    v134 = 2;
  }

  else
  {
    if (v137 != *MEMORY[0x277D54BB8])
    {
      v208 = v115;
      v166 = v197;
      v167 = v207;
      v212(v197, v221, v207);
      v168 = sub_23815291C();
      v169 = sub_2381550EC();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v223[0] = v171;
        *v170 = 136315138;
        v172 = sub_238152B3C();
        v173 = v166;
        v175 = v174;
        v176 = v216;
        v220 = v116;
        v216(v173, v167);
        v177 = sub_238085EAC(v172, v175, v223);

        *(v170 + 4) = v177;
        _os_log_impl(&dword_238060000, v168, v169, "Receive endpoint with unknown device relationship. Dropping. {endpoint: %s}", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v171);
        MEMORY[0x2383EA8A0](v171, -1, -1);
        MEMORY[0x2383EA8A0](v170, -1, -1);

        v176(v221, v167);
        v178 = v211;
      }

      else
      {

        v184 = v216;
        v216(v221, v167);
        v184(v166, v167);
        v178 = v114;
      }

      v185 = v208;
      v208(v178, v109);
      (*(v205 + 8))(v209, v204);
      (v214)(v219, v218);
      result = v185(v206, v109);
      goto LABEL_70;
    }

    v147 = sub_238152B0C();
    if (!v148)
    {
      v208 = v115;
      v140 = v195;
      v149 = v207;
      v212(v195, v221, v207);
      v150 = sub_23815291C();
      v151 = sub_2381550DC();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v223[0] = v153;
        *v152 = 136315138;
        v186 = sub_238152B3C();
        v187 = v140;
        v189 = v188;
        v158 = v216;
        v220 = v116;
        v216(v187, v149);
        v190 = sub_238085EAC(v186, v189, v223);

        *(v152 + 4) = v190;
        v160 = "Classroom endpoint is missing device name. Skipping {endpoint: %s}";
        goto LABEL_56;
      }

      goto LABEL_68;
    }

    v105 = v147;
    v106 = v148;
    v216(v221, v207);
    v115(v114, v109);
    (*(v205 + 8))(v209, v204);
    result = (v214)(v219, v218);
    v133 = 0;
    v134 = 3;
    v132 = 1;
  }

LABEL_71:
  v192 = v217;
  *v217 = v105;
  v192[1] = v106;
  v192[2] = v132;
  v192[3] = v133;
  *(v192 + 32) = v134;
  return result;
}

uint64_t sub_2380B3D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2380B3DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2380B3E18(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2380B3E24(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_2380B3E3C(a1, a2 & 1);
  }
}

void sub_2380B3E3C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2380B3E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 5)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_2380B3EB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2380B3F10(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

void sub_2380B3F60(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_2380B3F78(a1, a2, a3, a4 & 1);
  }
}

void sub_2380B3F78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_2380B3FC8()
{
  v1 = sub_238152BDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController;
  if (!*&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController])
  {
    aBlock[4] = sub_238066EF4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2380B4734;
    aBlock[3] = &block_descriptor_1;
    v7 = _Block_copy(aBlock);
    [v0 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v7);
    v8 = sub_238154C8C();
    v9 = [objc_opt_self() identityForAngelJobLabel_];

    v10 = objc_allocWithZone(MEMORY[0x277D761F8]);
    v11 = v9;
    v12 = [v10 init];
    v13 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithProcessIdentity:v11 sceneSpecification:v12];
    v62 = v11;

    v14 = *&v0[v6];
    *&v0[v6] = v13;
    v15 = v13;

    if (v15)
    {
      v60 = v2;
      [v15 setDelegate_];
      if (qword_27DEEA048 != -1)
      {
        swift_once();
      }

      v16 = sub_23815293C();
      __swift_project_value_buffer(v16, qword_27DEF31C8);
      v17 = v0;
      v18 = sub_23815291C();
      v19 = sub_2381550BC();

      v20 = &qword_27DEEB000;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        v59 = v15;
        v22 = v21;
        v23 = swift_slowAlloc();
        v61 = v17;
        v24 = v23;
        aBlock[0] = v23;
        *v22 = 136315138;
        v25 = *&v61[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider + 32];
        __swift_project_boxed_opaque_existential_1(&v61[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider], *&v61[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider + 24]);
        sub_238152D1C();
        v26 = sub_238152BBC();
        v28 = v27;
        v29 = v60;
        (*(v60 + 8))(v5, v1);
        v30 = sub_238085EAC(v26, v28, aBlock);

        *(v22 + 4) = v30;
        v20 = &qword_27DEEB000;
        _os_log_impl(&dword_238060000, v18, v19, "Updating with listenerProvider: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v31 = v24;
        v17 = v61;
        MEMORY[0x2383EA8A0](v31, -1, -1);
        v32 = v22;
        v15 = v59;
        MEMORY[0x2383EA8A0](v32, -1, -1);
      }

      else
      {

        v29 = v60;
      }

      v33 = &v17[v20[384]];
      v34 = *(v33 + 4);
      __swift_project_boxed_opaque_existential_1(v33, *(v33 + 3));
      sub_238152D1C();
      v35 = sub_238152BCC();
      v37 = v36;
      (*(v29 + 8))(v5, v1);
      sub_2380FFC44(v15, v35, v37);

      v38 = [v15 sceneViewController];
      [v17 addChildViewController_];
      v39 = [v38 view];
      if (v39)
      {
        v40 = v39;
        v41 = [v17 view];
        if (v41)
        {
          v42 = v41;
          [v41 addSubview_];
          [v40 setTranslatesAutoresizingMaskIntoConstraints_];
          v43 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_23815A9C0;
          v45 = [v40 topAnchor];
          v46 = [v42 topAnchor];
          v61 = v17;
          v47 = v15;
          v48 = [v45 constraintEqualToAnchor_];

          *(v44 + 32) = v48;
          v49 = [v40 leadingAnchor];
          v50 = [v42 leadingAnchor];
          v51 = [v49 constraintEqualToAnchor_];

          *(v44 + 40) = v51;
          v52 = [v40 trailingAnchor];
          v53 = [v42 trailingAnchor];
          v54 = [v52 constraintEqualToAnchor_];

          *(v44 + 48) = v54;
          v55 = [v40 bottomAnchor];
          v56 = [v42 bottomAnchor];
          v57 = [v55 constraintEqualToAnchor_];

          *(v44 + 56) = v57;
          sub_2380B4930();
          v58 = sub_238154ECC();

          [v43 activateConstraints_];

          [v38 didMoveToParentViewController_];
          v62 = v47;
          v15 = v38;
          v38 = v40;
          v40 = v42;
        }

        v62 = v15;
        v15 = v38;
        v38 = v40;
      }

      v62 = v38;
    }
  }
}

uint64_t sub_2380B4734(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2380B4930()
{
  result = qword_27DEEBC10;
  if (!qword_27DEEBC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEBC10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySo7UIImageCSgGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2380B4994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_2380B49F0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2380B4A70()
{
  v0 = sub_23815459C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_23815464C();
  qword_27DEF3208 = result;
  return result;
}

double sub_2380B4B4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v7 = sub_238153D3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_23815468C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = v8;
    *&v39 = v34;
    *(&v39 + 1) = a2;
    *&v40 = a3;
    v33 = a3;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC60, &qword_23815AB20);
    MEMORY[0x2383E8E00](&KeyPath, v20);
    if (KeyPath)
    {
      v21 = KeyPath;
      sub_23815466C();
      (*(v16 + 104))(v19, *MEMORY[0x277CE0FE0], v15);
      v22 = sub_2381546CC();
      v31 = a4;
      v23 = v22;

      (*(v16 + 8))(v19, v15);
      sub_238153D2C();
      v24 = v32;
      (*(v32 + 16))(v12, v14, v7);
      sub_2380B5184();
      v25 = sub_23815390C();
      (*(v24 + 8))(v14, v7);
      KeyPath = v23;
      v36 = xmmword_23815AA00;
      v37 = v25;
      v38 = 0;
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC20, &qword_23815AAF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC28, &qword_23815AB00);
      sub_2380B4F90();
      sub_2380B50CC();
      sub_238153ECC();

      a4 = v31;

      goto LABEL_8;
    }
  }

  if (qword_27DEEA068 != -1)
  {
    swift_once();
  }

  v26 = qword_27DEF3208;
  KeyPath = swift_getKeyPath();
  v36 = v26;
  v37 = 0;
  v38 = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC20, &qword_23815AAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBC28, &qword_23815AB00);
  sub_2380B4F90();
  sub_2380B50CC();
  sub_238153ECC();
LABEL_8:
  result = *&v39;
  v28 = v40;
  v29 = v41;
  *a4 = v39;
  *(a4 + 16) = v28;
  *(a4 + 32) = v29;
  return result;
}

unint64_t sub_2380B4F90()
{
  result = qword_27DEEBC30;
  if (!qword_27DEEBC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC20, &qword_23815AAF8);
    sub_2380B5048();
    sub_2380711D4(&qword_27DEEBC48, &qword_27DEEBC50, &unk_23815AB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC30);
  }

  return result;
}

unint64_t sub_2380B5048()
{
  result = qword_27DEEBC38;
  if (!qword_27DEEBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC40, &qword_23815AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC38);
  }

  return result;
}

unint64_t sub_2380B50CC()
{
  result = qword_27DEEBC58;
  if (!qword_27DEEBC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC28, &qword_23815AB00);
    sub_23809BC14();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC58);
  }

  return result;
}

unint64_t sub_2380B5184()
{
  result = qword_27DEEBC68;
  if (!qword_27DEEBC68)
  {
    sub_238153D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC68);
  }

  return result;
}

unint64_t sub_2380B51E0()
{
  result = qword_27DEEBC70;
  if (!qword_27DEEBC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBC78, &qword_23815AB28);
    sub_2380B4F90();
    sub_2380B50CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC70);
  }

  return result;
}

id sub_2380B526C()
{
  v1 = v0;
  v2 = sub_2381526CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11];
  v13 = sub_238154C8C();
  v14 = sub_238154C8C();
  v15 = [v1 URLForResource:v13 withExtension:v14];

  if (!v15)
  {
    return 0;
  }

  sub_2381526AC();

  (*(v3 + 32))(v12, v10, v2);
  sub_23807A3F8(0, &qword_27DEEBCC8, 0x277CD9F28);
  (*(v3 + 16))(v7, v12, v2);
  v16 = *MEMORY[0x277CDA7F8];
  v17 = sub_238154CCC();
  v20 = sub_2380B7104(v7, v17, v18, 0);
  (*(v3 + 8))(v12, v2);
  result = v20;
  if (!v20)
  {
    return 0;
  }

  return result;
}

void sub_2380B54AC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 24);
  if (!v2)
  {
    return;
  }

  v16 = v1;
  v3 = [v2 rootLayer];
  if (v3)
  {
    v4 = v3;
    v5 = sub_238154C8C();
    v6 = [v4 stateWithName_];

    if (!v6)
    {
      v7 = v16;
      v16 = v4;
LABEL_15:

      goto LABEL_16;
    }

    v7 = v4;
    v8 = [v16 stateOfLayer_];
    if (v8)
    {
      v9 = v8;
      sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
      v10 = v6;
      v11 = sub_23815523C();

      if (v11)
      {
        v12 = v7;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v13 = v6;
    }

    v14 = [objc_opt_self() areAnimationsEnabled];
    v15 = 0.0;
    if (v14)
    {
      *&v15 = 1.0;
    }

    [v16 setState:v6 ofLayer:v7 transitionSpeed:v15];
    v10 = v16;
    v12 = v6;
    v16 = v7;
    goto LABEL_14;
  }

LABEL_16:
}

void sub_2380B5660()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];
      v5 = v0[2];
      v0[2] = v4;

      v6 = v0[3];
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = [v6 rootLayer];
      if (!v7 || (v8 = v7, v9 = [v7 states], v8, !v9) || (v10 = sub_238154EDC(), v9, v11 = sub_2380B5814(v10), , !v11))
      {
LABEL_7:

        v11 = MEMORY[0x277D84F90];
      }

      if (v11 >> 62)
      {
        if (sub_2381554FC())
        {
          goto LABEL_10;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2383E9A70](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[4];
      v0[4] = v13;
      v15 = v13;
      sub_2380B5920(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[2];
  v0[2] = 0;
LABEL_18:
}

uint64_t sub_2380B5814(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23815547C();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_238086370(i, v6);
    sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23815545C();
    v4 = *(v7 + 16);
    sub_23815548C();
    sub_23815549C();
    sub_23815546C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_2380B5920(void *a1)
{
  v2 = v1;
  v4 = v2[4];
  if (v4)
  {
    if (a1)
    {
      sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
      v5 = v4;
      v6 = a1;
      v7 = sub_23815523C();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v2[2];
  if (v8)
  {
    v9 = v2[4];
    if (v9)
    {
      v10 = v2[3];
      if (v10)
      {
        v11 = v9;
        v18 = v8;
        v12 = [v10 rootLayer];
        if (v12)
        {
          v13 = v12;
          v14 = objc_opt_self();
          v15 = v11;
          v11 = v13;
          v16 = [v14 areAnimationsEnabled];
          v17 = 0.0;
          if (v16)
          {
            *&v17 = 1.0;
          }

          [v18 setState:v15 ofLayer:v11 transitionSpeed:v17];

          v18 = v11;
        }
      }
    }
  }
}

uint64_t sub_2380B5AA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2380B5B0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewState();
  result = sub_2381529DC();
  *a1 = result;
  return result;
}

double sub_2380B5B4C()
{
  type metadata accessor for AnimatedViewState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_2380B5B80()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = *(v1 + 40);
  v23 = *(v1 + 32);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  type metadata accessor for AnimatedViewState();
  sub_2380B73F8(&qword_27DEEBCA0, type metadata accessor for AnimatedViewState);

  v9 = sub_23815381C();
  type metadata accessor for ViewState();
  sub_2380B73F8(&qword_27DEEBCA8, type metadata accessor for ViewState);

  v10 = sub_2381539BC();
  v12 = v11;
  if (!*(v9 + 24))
  {
    v13 = sub_2380B526C();
    v14 = *(v9 + 24);
    *(v9 + 24) = v13;
    v15 = v13;

    sub_2380B5660();
  }

  v16 = swift_allocObject();
  v17 = *(v1 + 48);
  *(v16 + 48) = *(v1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(v1 + 64);
  v18 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  v25 = v23;
  v26 = v5;
  v27 = v10;
  v28 = v12;
  v29 = sub_2380B79AC;
  v30 = v16;
  v31 = 0;
  v32 = 0;
  v24[71] = *(v1 + 24);
  v19 = swift_allocObject();
  v20 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v1 + 64);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  sub_2380B74B4(v1, v24);
  sub_2380B74B4(v1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBCB0, &qword_23815ACD8);
  sub_2380B74EC();
  sub_23815456C();
}

uint64_t sub_2380B5E00(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 48);
    v2 = *(result + 56);
    v3 = *(result + 64);
    type metadata accessor for AnimatedViewState();
    sub_2380B73F8(&qword_27DEEBCA0, type metadata accessor for AnimatedViewState);
    sub_23815381C();
    sub_2380B6320();
  }

  return result;
}

uint64_t sub_2380B5EAC()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 64);
  v2 = *v0;
  v3 = v0[1];
  return sub_2380B5B80();
}

void sub_2380B5EF0()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 24);
  v29 = *(v0 + 32);
  if (!v2)
  {
    v9 = v1;
LABEL_9:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v3 = v1;
  v4 = [v2 rootLayer];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 states];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_238154EDC();

  v8 = sub_2380B5814(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = sub_2380B6210(v29, v8);
  v12 = v11;

  v13 = v29;
  if ((v12 & 1) == 0)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 24);
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = [v15 rootLayer];
      if (!v16)
      {
        goto LABEL_17;
      }

      v10 = v16;
      v17 = [v16 states];

      if (v17 && (v10 = sub_238154EDC(), v17, v18 = sub_2380B5814(v10), , v18))
      {
        v13 = v18;
      }

      else
      {
LABEL_17:

        v13 = MEMORY[0x277D84F90];
      }

      if (!(v13 >> 62))
      {
        v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }
    }

    v10 = v13;
    v19 = sub_2381554FC();

    if (v19)
    {
LABEL_20:
      if (v14 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_41;
      }

      v19 = v14 % v19;
      v20 = *(v0 + 24);
      if (!v20)
      {
        goto LABEL_26;
      }

      v21 = [v20 rootLayer];
      if (!v21 || (v22 = v21, v23 = [v21 states], v22, !v23) || (v24 = sub_238154EDC(), v23, v10 = sub_2380B5814(v24), , !v10))
      {
LABEL_26:

        v10 = MEMORY[0x277D84F90];
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        if (v19 < 0)
        {
          __break(1u);
        }

        else if (v19 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v10 + 8 * v19 + 32);
LABEL_31:
          v26 = v25;

          v27 = *(v0 + 32);
          *(v0 + 32) = v26;
          v28 = v26;
          sub_2380B5920(v27);

          sub_2380B6320();
          v13 = v28;
          goto LABEL_32;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_38:
      v25 = MEMORY[0x2383E9A70](v19, v10);
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_32:
}

unint64_t sub_2380B6210(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_2381554FC();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383E9A70](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_23807A3F8(0, &qword_27DEEBC98, 0x277CD9FA8);
    v8 = sub_23815523C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_2380B6320()
{
  v1 = sub_2381549FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238154A2C();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2381549EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_238154A4C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v22 = &v44 - v21;
  v23 = *(v0 + 32);
  if (!v23)
  {
    return;
  }

  v46 = v20;
  v47 = v19;
  v49 = v2;
  v50 = v1;
  v24 = *(v0 + 24);
  v48 = v5;
  v53 = v23;
  if (!v24)
  {
    v31 = v23;
LABEL_8:

    v30 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v25 = v23;
  v26 = [v24 rootLayer];
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  v28 = [v26 states];

  if (!v28)
  {
    goto LABEL_8;
  }

  v29 = sub_238154EDC();

  v30 = sub_2380B5814(v29);

  if (!v30)
  {
    goto LABEL_8;
  }

LABEL_9:
  v32 = sub_2380B6210(v53, v30);
  v34 = v33;

  if (v34)
  {
    v35 = v53;
  }

  else
  {
    if (v32)
    {
      v36 = 2500;
    }

    else
    {
      v36 = 4000;
    }

    sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
    v45 = sub_23815517C();
    sub_238154A3C();
    *v13 = v36;
    (*(v10 + 104))(v13, *MEMORY[0x277D85178], v9);
    MEMORY[0x2383E9090](v18, v13);
    (*(v10 + 8))(v13, v9);
    v46 = *(v46 + 8);
    v37 = v18;
    v38 = v47;
    (v46)(v37, v47);
    v39 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2380B7304;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238106D10;
    aBlock[3] = &block_descriptor_2;
    v40 = _Block_copy(aBlock);

    sub_238154A0C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2380B73F8(&qword_27DEEBC88, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
    sub_2380711D4(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
    v41 = v52;
    v42 = v50;
    sub_23815537C();
    v43 = v45;
    MEMORY[0x2383E9780](v22, v8, v41, v40);

    _Block_release(v40);
    (*(v49 + 8))(v41, v42);
    (*(v51 + 8))(v8, v48);
    (v46)(v22, v38);
  }
}

uint64_t sub_2380B68E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2380B5EF0();
  }

  return result;
}

uint64_t sub_2380B6948()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2380B69BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBCD0, &qword_23815AD68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  type metadata accessor for CAPackageViewLayer();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  sub_2381538DC();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v14 = &v11[*(v8 + 36)];
  *v14 = sub_2380B7708;
  *(v14 + 1) = v13;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v17[0] = a1;
  v17[1] = a2;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
  sub_2380B7780();
  sub_2380B7838();
  sub_23815456C();

  return sub_2380B78B4(v11);
}

void sub_2380B6BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  if (v5)
  {
    v6 = [v5 rootLayer];
    if (v6)
    {
      v7 = v6;
      v8 = v6;
      sub_2380B6C44(v7);
    }
  }
}

void sub_2380B6C44(void *a1)
{
  v2 = OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_2380B6CDC()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v29, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_80F91FDBE7F6653CDE609CAC9E4568F918CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Width = CGRectGetWidth(v30);
    v24 = v4;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v25 = v10;
    v31.size.width = v8;
    v31.size.height = v10;
    v19 = Width / CGRectGetHeight(v31);
    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = v16;
    v32.size.height = v18;
    v20 = CGRectGetWidth(v32);
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    if (v19 >= v20 / CGRectGetHeight(v33))
    {
      v36.origin.x = v24;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v25;
      Height = CGRectGetHeight(v36);
      v37.origin.x = v12;
      v37.origin.y = v14;
      v37.size.width = v16;
      v37.size.height = v18;
      v22 = CGRectGetHeight(v37);
    }

    else
    {
      v34.origin.x = v24;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v25;
      Height = CGRectGetWidth(v34);
      v35.origin.x = v12;
      v35.origin.y = v14;
      v35.size.width = v16;
      v35.size.height = v18;
      v22 = CGRectGetWidth(v35);
    }

    CGAffineTransformMakeScale(&v27, Height / v22, Height / v22);
    *&m.a = *&v27.m11;
    *&m.c = *&v27.m13;
    *&m.tx = *&v27.m21;
    CATransform3DMakeAffineTransform(&v27, &m);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v38);
    [v0 bounds];
    [v2 setPosition_];
  }
}

id sub_2380B7098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2380B7104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23815269C();
  v7 = sub_238154C8C();

  if (a4)
  {
    v8 = sub_238154C0C();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_2381526CC();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_23815266C();

    swift_willThrow();
    v15 = sub_2381526CC();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2380B72CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2380B7330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2380B7378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2380B73F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_23809BD58();

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_2380B74EC()
{
  result = qword_27DEEBCB8;
  if (!qword_27DEEBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCB0, &qword_23815ACD8);
    sub_2380B7578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBCB8);
  }

  return result;
}

unint64_t sub_2380B7578()
{
  result = qword_27DEEBCC0;
  if (!qword_27DEEBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBCC0);
  }

  return result;
}

uint64_t sub_2380B75CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2380B7614(uint64_t result, int a2, int a3)
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

uint64_t sub_2380B7664()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCB0, &qword_23815ACD8);
  sub_2380B74EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2380B774C()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[5];
    sub_2380B54AC();
  }
}

unint64_t sub_2380B7780()
{
  result = qword_27DEEBCD8;
  if (!qword_27DEEBCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCD0, &qword_23815AD68);
    sub_2380711D4(&qword_27DEEBCE0, &qword_27DEEBCE8, &qword_23815AD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBCD8);
  }

  return result;
}

unint64_t sub_2380B7838()
{
  result = qword_27DEEBCF0;
  if (!qword_27DEEBCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEECE00, &qword_23815AD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBCF0);
  }

  return result;
}

uint64_t sub_2380B78B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBCD0, &qword_23815AD68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380B791C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBCD0, &qword_23815AD68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEECE00, &qword_23815AD70);
  sub_2380B7780();
  sub_2380B7838();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380B79C0(uint64_t a1, int a2)
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

uint64_t sub_2380B7A08(uint64_t result, int a2, int a3)
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

uint64_t sub_2380B7A74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _DDListNodeView();
  sub_2380712E4(v1 + *(v12 + 32), v11, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153A2C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_2380B7C7C()
{
  v1 = sub_238153CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for _DDListNodeView() + 40));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_2381550EC();
  v9 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();
  sub_2380700D8(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_2380B7DD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _DDListNodeView();
  sub_2380712E4(v1 + *(v12 + 44), v11, &qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2381537EC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2380B7FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_2381537EC();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238153A2C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = type metadata accessor for _DDNodeViewModel();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v45 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = type metadata accessor for _DDListNodeView();
  v25 = (a1 + *(v24 + 20));
  if (v25[1])
  {
    v26 = *v25;
    v51 = v25[1];
  }

  else
  {
    sub_2380712E4(a1, v16, &qword_27DEEBB68, &unk_23815A780);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_238071284(v16, &qword_27DEEBB68, &unk_23815A780);
      v26 = 0;
      v51 = 0xE000000000000000;
    }

    else
    {
      sub_2380B9C50(v16, v23, type metadata accessor for _DDNodeViewModel);
      v27 = sub_2380B7C7C();
      sub_2380B7A74(v9);
      v43 = v6;
      v28 = v47;
      sub_2380B7DD8(v47);
      v26 = sub_2380B0104(v9, v28, v27);
      v44 = v29;
      v51 = v30;
      v31 = v28;
      v6 = v43;
      (*(v48 + 8))(v31, v49);
      (*(v46 + 8))(v9, v6);
      if (v26)
      {

        v26 = v44;
      }

      else
      {
        v51 = 0xE000000000000000;
      }

      sub_2380B9CB8(v23);
    }
  }

  v32 = *(a1 + *(v24 + 24));
  if (!v32)
  {
    v44 = v26;
    sub_2380712E4(a1, v14, &qword_27DEEBB68, &unk_23815A780);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {

      sub_238071284(v14, &qword_27DEEBB68, &unk_23815A780);
    }

    else
    {
      v34 = v45;
      sub_2380B9C50(v14, v45, type metadata accessor for _DDNodeViewModel);

      v35 = sub_2380B7C7C();
      sub_2380B7A74(v9);
      v36 = v47;
      sub_2380B7DD8(v47);
      v33 = sub_2380B0104(v9, v36, v35);
      (*(v48 + 8))(v36, v49);
      (*(v46 + 8))(v9, v6);
      sub_2380B9CB8(v34);
      if (v33)
      {

LABEL_16:
        v26 = v44;
        goto LABEL_17;
      }
    }

    v37 = [objc_opt_self() avatarImageRender];
    v38 = [v37 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
    v33 = sub_23815466C();

    goto LABEL_16;
  }

  v33 = v32;
LABEL_17:
  v39 = v50;
  v40 = v51;
  *v50 = v26;
  v39[1] = v40;
  v39[2] = v33;
}

uint64_t sub_2380B8528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_238153A6C();
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v20[0]);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBD78, &unk_23815AEB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_2380B9700(v2, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_2380B9C50(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for _DDListNodeView);
  v21 = v2;
  sub_2380B9BA4();
  sub_23815474C();
  sub_238153A5C();
  sub_2380711D4(&qword_27DEEBD88, &qword_27DEEBD78, &unk_23815AEB0);
  sub_2380B9BF8();
  v18 = v20[0];
  sub_2381543DC();
  (*(v4 + 8))(v8, v18);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2380B8804@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_238153D1C();
  v24 = 0;
  sub_2380B899C(&v16);
  v29 = v20;
  v30 = v21;
  v31[0] = v22[0];
  *(v31 + 9) = *(v22 + 9);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v32[0] = v16;
  v32[1] = v17;
  v32[2] = v18;
  v32[3] = v19;
  v32[4] = v20;
  v32[5] = v21;
  v33[0] = v22[0];
  *(v33 + 9) = *(v22 + 9);
  sub_2380712E4(&v25, &v15, &qword_27DEEBCF8, &qword_23815AE18);
  sub_238071284(v32, &qword_27DEEBCF8, &qword_23815AE18);
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[103] = v31[0];
  *&v23[112] = *(v31 + 9);
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v23[39] = v27;
  *&v23[55] = v28;
  v3 = v24;
  v4 = sub_2381540EC();
  LOBYTE(v16) = 1;
  v5 = sub_23815415C();
  result = sub_23815377C();
  v7 = *&v23[80];
  *(a1 + 81) = *&v23[64];
  *(a1 + 97) = v7;
  v8 = *&v23[112];
  *(a1 + 113) = *&v23[96];
  *(a1 + 129) = v8;
  v9 = *&v23[16];
  *(a1 + 17) = *v23;
  *(a1 + 33) = v9;
  v10 = *&v23[48];
  *(a1 + 49) = *&v23[32];
  *a1 = v2;
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = v3;
  *(a1 + 65) = v10;
  *(a1 + 152) = v4;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1;
  *(a1 + 200) = v5;
  *(a1 + 208) = v11;
  *(a1 + 216) = v12;
  *(a1 + 224) = v13;
  *(a1 + 232) = v14;
  *(a1 + 240) = 0;
  return result;
}

uint64_t sub_2380B899C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_238153D7C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23815468C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v32 = sub_2381546CC();
  (*(v4 + 8))(v7, v3);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v39) = 1;
  *&v36[3] = *&v36[27];
  *&v36[11] = *&v36[35];
  *&v36[19] = *&v36[43];
  v31 = sub_2381540FC();
  sub_238153D6C();
  sub_238153D5C();
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v8 = sub_23815436C();
  v10 = v9;
  v12 = v11;
  sub_23815419C();
  v13 = sub_23815435C();
  v15 = v14;
  LOBYTE(v3) = v16;

  sub_238070490(v8, v10, v12 & 1);

  sub_2381541FC();
  v17 = sub_2381542FC();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_238070490(v13, v15, v3 & 1);

  v23 = v32;
  v37[0] = v32;
  v37[1] = 0;
  LOWORD(v38[0]) = 1;
  *(&v38[2] + 2) = *&v36[16];
  *(&v38[1] + 2) = *&v36[8];
  *(v38 + 2) = *v36;
  *&v38[3] = *&v36[23];
  LOBYTE(v15) = v31;
  BYTE8(v38[3]) = v31;
  *(&v38[3] + 9) = 256;
  *(v42 + 11) = *(&v38[2] + 11);
  v41 = v38[1];
  v42[0] = v38[2];
  v39 = v32;
  v40 = v38[0];
  v35 = v7 & 1;
  v34 = 1;
  v24 = v32;
  v25 = v38[0];
  v26 = v42[1];
  v27 = v33;
  *(v33 + 48) = v38[2];
  *(v27 + 64) = v26;
  v28 = v41;
  *(v27 + 16) = v25;
  *(v27 + 32) = v28;
  *v27 = v24;
  *(v27 + 80) = v17;
  *(v27 + 88) = v19;
  *(v27 + 96) = v7 & 1;
  *(v27 + 104) = v22;
  *(v27 + 112) = 0;
  *(v27 + 120) = 1;
  sub_2380712E4(v37, v43, &qword_27DEEBD00, &qword_23815AE20);
  sub_238070430(v17, v19, v7 & 1);

  sub_238070490(v17, v19, v7 & 1);

  v43[0] = v23;
  v43[1] = 0;
  v44 = 1;
  v45 = *v36;
  v46 = *&v36[8];
  *v47 = *&v36[16];
  *&v47[14] = *&v36[23];
  v48 = v15;
  v49 = 256;
  return sub_238071284(v43, &qword_27DEEBD00, &qword_23815AE20);
}

uint64_t sub_2380B8D98@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_2380B8804(a1);
}

uint64_t sub_2380B8DB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[7]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_2380B8FB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB68, &unk_23815A780);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for _DDListNodeView()
{
  result = qword_27DEEBD08;
  if (!qword_27DEEBD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380B91F0()
{
  sub_2380B9480(319, &qword_27DEEBD18, type metadata accessor for _DDNodeViewModel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2380B9430(319, &qword_27DEED710, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2380B9430(319, &qword_27DEEBD20, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_238067930();
        if (v3 <= 0x3F)
        {
          sub_2380B9480(319, &qword_27DEEA358, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2380B9480(319, &qword_27DEEA360, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2380B9430(319, &qword_27DEEA368, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2380B9480(319, &qword_27DEEA910, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
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
}

void sub_2380B9430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2380B9480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2380B94E8()
{
  result = qword_27DEEBD28;
  if (!qword_27DEEBD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD30, &qword_23815AE38);
    sub_2380B95A0();
    sub_2380711D4(&qword_27DEEBD68, &qword_27DEEBD70, qword_23815AE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBD28);
  }

  return result;
}

unint64_t sub_2380B95A0()
{
  result = qword_27DEEBD38;
  if (!qword_27DEEBD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD40, &qword_23815AE40);
    sub_2380B962C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBD38);
  }

  return result;
}

unint64_t sub_2380B962C()
{
  result = qword_27DEEBD48;
  if (!qword_27DEEBD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD50, &qword_23815AE48);
    sub_2380711D4(&qword_27DEEBD58, &qword_27DEEBD60, &qword_23815AE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBD48);
  }

  return result;
}

uint64_t sub_2380B9700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDListNodeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380B9764()
{
  v1 = type metadata accessor for _DDListNodeView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for _DDNodeViewModel();
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_2381527EC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = v5 + v6[5];
    sub_238070070(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
    v9 = *(v5 + v6[6]);

    v10 = v6[7];
    v11 = v0;
    v12 = v4;
    v13 = sub_23815278C();
    v14 = *(*(v13 - 8) + 8);
    v14(v5 + v10, v13);
    v14(v5 + v6[8], v13);
    v15 = v6[9];
    v16 = sub_238152BAC();
    v17 = v5 + v15;
    v4 = v12;
    v0 = v11;
    v3 = (v2 + 16) & ~v2;
    (*(*(v16 - 8) + 8))(v17, v16);
    v18 = *(v5 + v6[11]);

    v19 = *(v5 + v6[12]);

    v20 = *(v5 + v6[13] + 8);
  }

  v21 = *(v5 + v1[5] + 8);

  v22 = *(v5 + v1[6]);

  v23 = *(v5 + v1[7] + 8);

  v24 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_238153A2C();
    (*(*(v25 - 8) + 8))(v5 + v24, v25);
  }

  else
  {
    v26 = *(v5 + v24);
  }

  v27 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_238153A0C();
    (*(*(v28 - 8) + 8))(v5 + v27, v28);
  }

  else
  {
    v29 = *(v5 + v27);
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v30 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_2381537EC();
    (*(*(v31 - 8) + 8))(v5 + v30, v31);
  }

  else
  {
    v32 = *(v5 + v30);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2380B9B30()
{
  v1 = type metadata accessor for _DDListNodeView();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_2380B9BA4()
{
  result = qword_27DEEBD80;
  if (!qword_27DEEBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBD80);
  }

  return result;
}

unint64_t sub_2380B9BF8()
{
  result = qword_27DEEA3C8;
  if (!qword_27DEEA3C8)
  {
    sub_238153A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA3C8);
  }

  return result;
}

uint64_t sub_2380B9C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380B9CB8(uint64_t a1)
{
  v2 = type metadata accessor for _DDNodeViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380B9D14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBD78, &unk_23815AEB0);
  sub_238153A6C();
  sub_2380711D4(&qword_27DEEBD88, &qword_27DEEBD78, &unk_23815AEB0);
  sub_2380B9BF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380B9DF0()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBD90);
  __swift_project_value_buffer(v0, qword_27DEEBD90);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t _DDNodeAskRequestDecorationViewModel.init(transferID:prompt:payloadItems:payloadURLItems:acceptActions:declineAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v83 = a7;
  v86 = a5;
  v85 = a4;
  v82 = a3;
  v81 = a2;
  v80 = a1;
  v84 = a8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v9 = *(v108 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x28223BE20](v108);
  v97 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDB0, &qword_23815AEC8);
  v17 = *(v96 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v79 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDB8, &unk_23815AED0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v109 = MEMORY[0x277D84F90];
  v25 = *(a6 + 16);
  v98 = v9;
  v106 = v25;
  if (v25)
  {
    v26 = 0;
    v105 = a6 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v103 = v21 + 88;
    v104 = v21 + 16;
    v102 = *MEMORY[0x277D54B60];
    v89 = (v21 + 8);
    v100 = (v21 + 96);
    v92 = *MEMORY[0x277D54B68];
    v88 = (v17 + 32);
    v87 = (v17 + 8);
    v101 = (v9 + 32);
    v91 = (v9 + 16);
    v27 = MEMORY[0x277D84F90];
    v90 = v9 + 8;
    v93 = v20;
    v94 = a6;
    v99 = v21;
    do
    {
      if (v26 >= *(a6 + 16))
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
        goto LABEL_52;
      }

      (*(v21 + 16))(v24, v105 + *(v21 + 72) * v26, v20);
      v28 = (*(v21 + 88))(v24, v20);
      if (v28 == v102)
      {
        (*v100)(v24, v20);
        v29 = *v101;
        v30 = v108;
        (*v101)(v16, v24, v108);
        (*v91)(v107, v16, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2380BB6B4(0, *(v27 + 2) + 1, 1, v27);
        }

        v32 = *(v27 + 2);
        v31 = *(v27 + 3);
        if (v32 >= v31 >> 1)
        {
          v27 = sub_2380BB6B4(v31 > 1, v32 + 1, 1, v27);
        }

        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDC0, &qword_23815E770) + 48);
        v34 = v98;
        v35 = v16;
        v36 = v16;
        v37 = v108;
        v98[1](v35, v108);
        *(v27 + 2) = v32 + 1;
        v38 = v37;
        v16 = v36;
        v29(&v27[((*(v34 + 80) + 32) & ~*(v34 + 80)) + v34[9] * v32], v107, v38);
        v109 = v27;
        v39 = sub_2381527EC();
        (*(*(v39 - 8) + 8))(&v24[v33], v39);
        v20 = v93;
        a6 = v94;
        v21 = v99;
      }

      else if (v28 == v92)
      {
        (*v100)(v24, v20);
        (*v88)(v95, v24, v96);
        v40 = sub_2381535BC();
        v41 = *(v40 + 16);
        v42 = *(v27 + 2);
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_48;
        }

        v44 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v43 > *(v27 + 3) >> 1)
        {
          if (v42 <= v43)
          {
            v46 = v42 + v41;
          }

          else
          {
            v46 = v42;
          }

          v27 = sub_2380BB6B4(isUniquelyReferenced_nonNull_native, v46, 1, v27);
        }

        v21 = v99;
        if (*(v44 + 16))
        {
          if ((*(v27 + 3) >> 1) - *(v27 + 2) < v41)
          {
            goto LABEL_50;
          }

          v47 = (*(v98 + 80) + 32) & ~*(v98 + 80);
          v48 = v98[9];
          swift_arrayInitWithCopy();

          if (v41)
          {
            v49 = *(v27 + 2);
            v50 = __OFADD__(v49, v41);
            v51 = v49 + v41;
            if (v50)
            {
              goto LABEL_51;
            }

            *(v27 + 2) = v51;
          }
        }

        else
        {

          if (v41)
          {
            goto LABEL_49;
          }
        }

        v109 = v27;
        v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDC8, &qword_23815AEE0) + 48);
        (*v87)(v95, v96);
        v57 = sub_2381527EC();
        (*(*(v57 - 8) + 8))(&v24[v56], v57);
      }

      else
      {
        if (qword_27DEEA070 != -1)
        {
          swift_once();
        }

        v52 = sub_23815293C();
        __swift_project_value_buffer(v52, qword_27DEEBD90);
        v53 = sub_23815291C();
        v54 = sub_2381550EC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_238060000, v53, v54, "Unknown accept action type", v55, 2u);
          MEMORY[0x2383EA8A0](v55, -1, -1);
        }

        (*v89)(v24, v20);
      }

      ++v26;
    }

    while (v106 != v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v58 = *(v27 + 2);
  v24 = v98;
  if (!v58)
  {
    if (qword_27DEEA070 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_53;
  }

  v59 = 0;
  v60 = v97;
  do
  {
    if (v59 >= *(v27 + 2))
    {
      goto LABEL_47;
    }

    v61 = v108;
    (*(v24 + 2))(v60, &v27[((v24[80] + 32) & ~v24[80]) + *(v24 + 9) * v59], v108);
    v62 = sub_23815359C();
    (*(v24 + 1))(v60, v61);
    if (v62)
    {
      goto LABEL_44;
    }

    ++v59;
  }

  while (v58 != v59);
  while (1)
  {
    v59 = 0;
LABEL_44:
    v67 = type metadata accessor for _DDNodeAskRequestDecorationViewModel();
    if (v59 < *(v27 + 2))
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
LABEL_40:
    v63 = sub_23815293C();
    __swift_project_value_buffer(v63, qword_27DEEBD90);
    v64 = sub_23815291C();
    v65 = sub_2381550DC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_238060000, v64, v65, "No prominent accept action found", v66, 2u);
      MEMORY[0x2383EA8A0](v66, -1, -1);
    }
  }

  v68 = v67;
  v69 = &v27[((v24[80] + 32) & ~v24[80]) + *(v24 + 9) * v59];
  v70 = v84;
  v71 = v108;
  (*(v24 + 2))(v84 + *(v67 + 32), v69, v108);
  v72 = v97;
  sub_2380BA8B0(v59, v97);
  (*(v24 + 1))(v72, v71);
  v73 = sub_2381536AC();
  (*(*(v73 - 8) + 32))(v70, v80, v73);
  v74 = (v70 + v68[5]);
  v75 = v82;
  *v74 = v81;
  v74[1] = v75;
  *(v70 + v68[9]) = v109;
  v76 = v68[10];
  v77 = sub_23815361C();
  result = (*(*(v77 - 8) + 32))(v70 + v76, v83, v77);
  *(v70 + v68[6]) = v85;
  *(v70 + v68[7]) = v86;
  return result;
}

uint64_t type metadata accessor for _DDNodeAskRequestDecorationViewModel()
{
  result = qword_27DEEBDD0;
  if (!qword_27DEEBDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2380BA8B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23811D2B8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2380BA9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23815321C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_2380BC598(&qword_27DEEBDE8, MEMORY[0x277D54A00]);
      v28 = sub_238154C3C();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_2380BC598(&qword_27DEEBE68, MEMORY[0x277D54A00]);
        v33 = sub_238154C7C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380BAD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381526CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_2380BC598(&qword_27DEEBDF8, MEMORY[0x277CC9260]);
      v28 = sub_238154C3C();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_2380BC598(&qword_27DEEBE60, MEMORY[0x277CC9260]);
        v33 = sub_238154C7C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380BB128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_2380BC534();
    v22 = sub_238154C7C();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

char *sub_2380BB31C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE80, &qword_23815AF88);
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

char *sub_2380BB438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE30, &qword_23815AF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380BB558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACC8, &qword_238158830);
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

size_t sub_2380BB6B4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE70, &qword_23815AF78);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0) - 8);
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

char *sub_2380BB8A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE78, &qword_23815AF80);
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

char *sub_2380BB9A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE40, &qword_23815AF60);
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

size_t sub_2380BBB04(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t _s17DeviceDiscoveryUI36_DDNodeAskRequestDecorationViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_2381527AC())
  {
    v4 = type metadata accessor for _DDNodeAskRequestDecorationViewModel();
    v5 = v4[5];
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_2381555CC()) && (sub_2380BA9C8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && (sub_2380BAD78(*(a1 + v4[7]), *(a2 + v4[7])))
    {
      v10 = v4[8];
      sub_23815323C();
      v11 = MEMORY[0x277D54A20];
      sub_2380BC598(&qword_27DEEBE08, MEMORY[0x277D54A20]);
      sub_2380BC598(&qword_27DEEBE10, v11);
      sub_2380BC598(&qword_27DEEBE18, v11);
      if (sub_23815357C() & 1) != 0 && (sub_2380BB128(*(a1 + v4[9]), *(a2 + v4[9])))
      {
        v12 = v4[10];

        JUMPOUT(0x2383E7C30);
      }
    }
  }

  return 0;
}

uint64_t sub_2380BBE9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2381536AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_23815361C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2380BC034(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2381536AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_23815361C();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_2380BC1B8()
{
  sub_2381536AC();
  if (v0 <= 0x3F)
  {
    sub_2380BC2A4();
    if (v1 <= 0x3F)
    {
      sub_2380BC338();
      if (v2 <= 0x3F)
      {
        sub_2380BC3CC();
        if (v3 <= 0x3F)
        {
          sub_2380BC4D0();
          if (v4 <= 0x3F)
          {
            sub_23815361C();
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

void sub_2380BC2A4()
{
  if (!qword_27DEEBDE0)
  {
    sub_23815321C();
    sub_2380BC598(&qword_27DEEBDE8, MEMORY[0x277D54A00]);
    v0 = sub_23815504C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEBDE0);
    }
  }
}

void sub_2380BC338()
{
  if (!qword_27DEEBDF0)
  {
    sub_2381526CC();
    sub_2380BC598(&qword_27DEEBDF8, MEMORY[0x277CC9260]);
    v0 = sub_23815504C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEBDF0);
    }
  }
}

void sub_2380BC3CC()
{
  if (!qword_27DEEBE00)
  {
    sub_23815323C();
    v0 = MEMORY[0x277D54A20];
    sub_2380BC598(&qword_27DEEBE08, MEMORY[0x277D54A20]);
    sub_2380BC598(&qword_27DEEBE10, v0);
    sub_2380BC598(&qword_27DEEBE18, v0);
    v1 = sub_2381535AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEBE00);
    }
  }
}

void sub_2380BC4D0()
{
  if (!qword_27DEEBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBDA8, &qword_23815AEC0);
    v0 = sub_238154F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEBE20);
    }
  }
}

unint64_t sub_2380BC534()
{
  result = qword_27DEEBE58;
  if (!qword_27DEEBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBDA8, &qword_23815AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBE58);
  }

  return result;
}

uint64_t sub_2380BC598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2380BC5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_23815568C();
  sub_238154C5C();
  v7 = sub_2381556BC();
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
    if (v12 || (sub_2381555CC() & 1) != 0)
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

uint64_t sub_2380BC6D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_238154B2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_2380BD1D8(&qword_27DEEBE90), v9 = sub_238154C3C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_2380BD1D8(&qword_27DEEBE98);
      v17 = sub_238154C7C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static DDDevicePairingViewController.isSupported(_:)()
{
  v0 = sub_238154B2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238154B1C();
  (*(v1 + 104))(v4, *MEMORY[0x277CE3920], v0);
  v6 = sub_2380BC6D8(v4, v5);

  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t DDDevicePairingViewController.init(listenerProvider:access:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2380BCB50(a1, v12);
  v5 = type metadata accessor for DDDeviceAdvertiserSceneViewController();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_hostingController] = 0;
  sub_2380BCB50(v12, &v6[OBJC_IVAR____TtC17DeviceDiscoveryUI37DDDeviceAdvertiserSceneViewController_listenerProvider]);
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  sub_2380B3FC8();

  __swift_destroy_boxed_opaque_existential_1(v12);
  *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI29DDDevicePairingViewController_childViewController] = v7;
  if (sub_2380BDBF0())
  {
    v10.receiver = v2;
    v10.super_class = ObjectType;
    v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v8;
  }

  else
  {
    result = sub_2381554EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2380BCB50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall DDDevicePairingViewController.viewDidLoad()()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI29DDDevicePairingViewController_childViewController];
  [v0 addChildViewController_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v3 addSubview_];

  [v1 didMoveToParentViewController_];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23815A9C0;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 topAnchor];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v8 + 32) = v15;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [v0 view];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v8 + 40) = v22;
  v23 = [v1 view];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v8 + 48) = v29;
  v30 = [v1 view];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v0 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v8 + 56) = v37;
    sub_2380B4930();
    v38 = sub_238154ECC();

    [v35 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

id DDDevicePairingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_238154C8C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DDDevicePairingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2380BD1D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_238154B2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380BD248()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBEA0);
  __swift_project_value_buffer(v0, qword_27DEEBEA0);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

void sub_2380BD2A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBEF0, &qword_23815B090);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_2381526CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA078 != -1)
  {
    swift_once();
  }

  v9 = sub_23815293C();
  __swift_project_value_buffer(v9, qword_27DEEBEA0);
  v10 = sub_23815291C();
  v11 = sub_2381550FC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238060000, v10, v11, "Tapped on Settings Link", v12, 2u);
    MEMORY[0x2383EA8A0](v12, -1, -1);
  }

  sub_2381526BC();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2380BD8F0(v3);
    v13 = sub_23815291C();
    v14 = sub_2381550DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238060000, v13, v14, "Unable to create URL for settings pane", v15, 2u);
      MEMORY[0x2383EA8A0](v15, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;
      v18 = sub_23815269C();
      sub_2380EEBEC(MEMORY[0x277D84F90]);
      v19 = sub_238154C0C();

      v20 = [v17 openSensitiveURL:v18 withOptions:v19];

      if ((v20 & 1) == 0)
      {
        v21 = sub_23815291C();
        v22 = sub_2381550DC();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_238060000, v21, v22, "Failed to navigate to the Paired Devices pane in Settings", v23, 2u);
          MEMORY[0x2383EA8A0](v23, -1, -1);
        }
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2380BD664()
{
  sub_2381542BC();
  swift_getKeyPath();
  sub_238153F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBEB8, &qword_23815B070);
  sub_2380BD72C();
  sub_23815441C();
}

unint64_t sub_2380BD72C()
{
  result = qword_27DEEBEC0;
  if (!qword_27DEEBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBEB8, &qword_23815B070);
    sub_2380BD7E4();
    sub_2380711D4(&qword_27DEEBEE0, &qword_27DEEBEE8, &qword_23815B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBEC0);
  }

  return result;
}

unint64_t sub_2380BD7E4()
{
  result = qword_27DEEBEC8;
  if (!qword_27DEEBEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBED0, &unk_23815B078);
    sub_2380BD89C();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBEC8);
  }

  return result;
}

unint64_t sub_2380BD89C()
{
  result = qword_27DEEBED8;
  if (!qword_27DEEBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBED8);
  }

  return result;
}

uint64_t sub_2380BD8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBEF0, &qword_23815B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380BD958()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEBEB8, &qword_23815B070);
  sub_2380BD72C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2380BD9BC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2380BDA68()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBEF8);
  __swift_project_value_buffer(v0, qword_27DEEBEF8);
  return sub_23815292C();
}

void sub_2380BDAE8()
{
  v0 = sub_238154C8C();
  v1 = MGCopyAnswer();

  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return;
  }

  v2 = sub_238154C8C();
  v3 = MGCopyAnswer();

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_dynamicCast();
}

uint64_t sub_2380BDBF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    if (qword_27DEEA080 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_86;
  }

  v2 = sub_238154CCC();
  v4 = v3;

  v5 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (!v5)
  {
    if (qword_27DEEA080 != -1)
    {
      swift_once();
    }

    v14 = sub_23815293C();
    __swift_project_value_buffer(v14, qword_27DEEBEF8);

    v6 = sub_23815291C();
    v15 = sub_2381550DC();

    if (!os_log_type_enabled(v6, v15))
    {

      goto LABEL_48;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v79 = v17;
    *v16 = 136315138;
    v18 = sub_238085EAC(v2, v4, &v79);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_238060000, v6, v15, "Unable to get app record for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2383EA8A0](v17, -1, -1);
    v13 = v16;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 infoDictionary];
  v8 = sub_238154C8C();
  sub_23807A3F8(0, &qword_27DEEBF10, 0x277CBEAC0);
  v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

  if (v9)
  {
    sub_23815534C();
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  v79 = v77;
  v80 = v78;
  if (!*(&v78 + 1))
  {
    sub_2380BE888(&v79);
LABEL_19:
    if (qword_27DEEA080 != -1)
    {
      swift_once();
    }

    v22 = sub_23815293C();
    __swift_project_value_buffer(v22, qword_27DEEBEF8);

    v23 = sub_23815291C();
    v24 = sub_2381550DC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v79 = v26;
      *v25 = 136315138;
      v27 = sub_238085EAC(v2, v4, &v79);

      *(v25 + 4) = v27;
      v28 = "Unable to get services for %s";
      goto LABEL_44;
    }

LABEL_46:

LABEL_47:

    goto LABEL_48;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF20, &unk_23815B0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = [v6 entitlements];
  v20 = sub_238154C8C();
  sub_23807A3F8(0, &qword_27DEEBF28, 0x277CBEA60);
  v21 = [v19 objectForKey:v20 ofClass:swift_getObjCClassFromMetadata()];

  if (v21)
  {
    sub_23815534C();
    swift_unknownObjectRelease();
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
  }

  v79 = v77;
  v80 = v78;
  if (!*(&v78 + 1))
  {

    sub_2380BE888(&v79);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:
    if (qword_27DEEA080 != -1)
    {
      swift_once();
    }

    v39 = sub_23815293C();
    __swift_project_value_buffer(v39, qword_27DEEBEF8);

    v23 = sub_23815291C();
    v24 = sub_2381550DC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v79 = v26;
      *v25 = 136315138;
      v40 = sub_238085EAC(v2, v4, &v79);

      *(v25 + 4) = v40;
      v28 = "Unable to get entitlements for %s";
LABEL_44:
      _os_log_impl(&dword_238060000, v23, v24, v28, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2383EA8A0](v26, -1, -1);
      v41 = v25;
LABEL_45:
      MEMORY[0x2383EA8A0](v41, -1, -1);
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v74 = "WiFiAwareServices";

  v75 = v76;
  v29 = v76 + 64;
  v30 = 1 << *(v76 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v76 + 64);
  v33 = (v30 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v34 = 0;
  while (v32)
  {
LABEL_35:
    v36 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    if (*(*(*(v76 + 56) + ((v34 << 9) | (8 * v36))) + 16))
    {

      sub_2380E6CD8(0x616873696C627550, 0xEB00000000656C62);
      v38 = v37;

      if (v38)
      {
        v73 = 0;
LABEL_50:

        v43 = 1 << *(v76 + 32);
        v44 = -1;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        v45 = v44 & *(v76 + 64);
        v46 = (v43 + 63) >> 6;

        v47 = 0;
        while (1)
        {
          if (!v45)
          {
            while (1)
            {
              v48 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_85;
              }

              if (v48 >= v46)
              {
                v52 = 1;
                goto LABEL_62;
              }

              v45 = *(v29 + 8 * v48);
              ++v47;
              if (v45)
              {
                v47 = v48;
                break;
              }
            }
          }

          v49 = __clz(__rbit64(v45));
          v45 &= v45 - 1;
          if (*(*(*(v76 + 56) + ((v47 << 9) | (8 * v49))) + 16))
          {

            sub_2380E6CD8(0x6269726373627553, 0xEC000000656C6261);
            v51 = v50;

            if (v51)
            {
              break;
            }
          }
        }

        v52 = 0;
LABEL_62:

        *&v79 = 0x6873696C627550;
        *(&v79 + 1) = 0xE700000000000000;
        MEMORY[0x28223BE20](v53);
        v72 = &v79;
        v54 = v75;
        v55 = sub_2380BD9BC(sub_2380BE8F0, v71, v75);
        v56 = v55;
        *&v79 = 0x6269726373627553;
        *(&v79 + 1) = 0xE900000000000065;
        MEMORY[0x28223BE20](v55);
        v72 = &v79;
        v57 = sub_2380BD9BC(sub_2380BE964, v71, v54);

        if (v56 & 1) != 0 || (v57)
        {
          if ((v73 | v56))
          {
            if ((v52 | v57))
            {
              if (qword_27DEEA080 != -1)
              {
                swift_once();
              }

              v65 = sub_23815293C();
              __swift_project_value_buffer(v65, qword_27DEEBEF8);
              v66 = sub_23815291C();
              v67 = sub_2381550FC();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                *v68 = 0;
                _os_log_impl(&dword_238060000, v66, v67, "WiFi Aware entitlements validated.", v68, 2u);
                MEMORY[0x2383EA8A0](v68, -1, -1);
              }

              return 1;
            }

            if (qword_27DEEA080 != -1)
            {
              swift_once();
            }

            v70 = sub_23815293C();
            __swift_project_value_buffer(v70, qword_27DEEBEF8);
            v23 = sub_23815291C();
            v59 = sub_2381550DC();
            if (os_log_type_enabled(v23, v59))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *&v79 = v63;
              *v62 = 136315138;
              *(v62 + 4) = sub_238085EAC(0x6269726373627553, 0xE900000000000065, &v79);
              v64 = "Missing entitlement for Wi-Fi Aware Subscriber '%s'";
              goto LABEL_83;
            }
          }

          else
          {
            if (qword_27DEEA080 != -1)
            {
              swift_once();
            }

            v69 = sub_23815293C();
            __swift_project_value_buffer(v69, qword_27DEEBEF8);
            v23 = sub_23815291C();
            v59 = sub_2381550DC();
            if (os_log_type_enabled(v23, v59))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *&v79 = v63;
              *v62 = 136315138;
              *(v62 + 4) = sub_238085EAC(0x6873696C627550, 0xE700000000000000, &v79);
              v64 = "Missing entitlement for Wi-Fi Aware Publisher '%s'";
              goto LABEL_83;
            }
          }
        }

        else
        {
          if (qword_27DEEA080 != -1)
          {
            swift_once();
          }

          v58 = sub_23815293C();
          __swift_project_value_buffer(v58, qword_27DEEBEF8);
          v23 = sub_23815291C();
          v59 = sub_2381550DC();
          v60 = os_log_type_enabled(v23, v59);
          v61 = v74;
          if (v60)
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *&v79 = v63;
            *v62 = 136315138;
            *(v62 + 4) = sub_238085EAC(0xD00000000000001ELL, v61 | 0x8000000000000000, &v79);
            v64 = "Need at least Publish or Subscribe entitlement for '%s'";
LABEL_83:
            _os_log_impl(&dword_238060000, v23, v59, v64, v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            MEMORY[0x2383EA8A0](v63, -1, -1);
            v41 = v62;
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {
      v73 = 1;
      goto LABEL_50;
    }

    v32 = *(v29 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_6:
  v10 = sub_23815293C();
  __swift_project_value_buffer(v10, qword_27DEEBEF8);
  v6 = sub_23815291C();
  v11 = sub_2381550DC();
  if (os_log_type_enabled(v6, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_238060000, v6, v11, "Unable to get current bundle ID", v12, 2u);
    v13 = v12;
LABEL_12:
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

LABEL_48:

  return 0;
}

uint64_t sub_2380BE888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF18, &qword_23815B098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380BE90C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2381555CC() & 1;
  }
}

uint64_t sub_2380BE980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  v3 = sub_2381527EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v30 = sub_23815364C();
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v2;
  sub_238152A8C();

  v14 = v29;

  v15 = v32;
  if (*(v32 + 16) && (v16 = sub_2380E6AE8(v14), (v17 & 1) != 0))
  {
    v18 = v30;
    (*(v10 + 16))(v13, *(v15 + 56) + *(v10 + 72) * v16, v30);

    v19 = v31;
    (*(v10 + 32))(v31, v13, v18);
    v20 = v18;
    v21 = v19;
    v22 = 0;
  }

  else
  {

    v23 = sub_238154FBC();
    v22 = 1;
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    (*(v4 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v3);
    v24 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v28;
    (*(v4 + 32))(&v25[v24], &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    sub_2380D2A4C(0, 0, v9, &unk_23815B6A0, v25);

    v20 = v30;
    v21 = v31;
  }

  return (*(v10 + 56))(v21, v22, 1, v20);
}

uint64_t sub_2380BECE0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - v10;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v12 = v23;
  if (*(v23 + 16) && (v13 = sub_2380E6BBC(a1, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 16 * v13;
    v16 = *v15;
    sub_2380B3E18(*v15, *(v15 + 8));

    return v16;
  }

  else
  {

    v17 = sub_238154FBC();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    sub_238154F8C();

    v19 = sub_238154F7C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a3;

    sub_2380D2A4C(0, 0, v11, &unk_23815B4F8, v20);

    return 0;
  }
}

uint64_t sub_2380BEF4C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEBF30);
  __swift_project_value_buffer(v0, qword_27DEEBF30);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_2380BEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA8, &unk_23815A800) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_2381527EC();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2380BF0B4, 0, 0);
}

uint64_t sub_2380BF0B4()
{
  v1 = v0[6];
  (*(v0[10] + 16))(v0[11], v0[7], v0[9]);
  v2 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient);
  v3 = *(MEMORY[0x277D549B8] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_2380BF174;
  v6 = v0[7];
  v5 = v0[8];

  return MEMORY[0x2821B5F70](v5, v6);
}

uint64_t sub_2380BF174()
{
  v2 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2380BF3C8;
  }

  else
  {
    v3 = sub_2380BF28C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2380BF28C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = sub_23815364C();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_238152A7C();
  sub_23809FA28(v2, v1);
  v5(v0 + 2, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2380BF3C8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = sub_23815364C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_238152A7C();
  sub_23809FA28(v2, v1);
  v5(v0 + 2, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2380BF504()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache__endpointMetadatas;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC088, &qword_23815B5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2380BF5E4()
{
  sub_2380AAE3C(319, &qword_27DEEBF68, &qword_27DEEBF70, &qword_23815BE80);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2380BF698(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23807A3F8(0, &qword_27DEEBFF0, 0x277D82BB8);
  v4 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient);
  v5 = *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient);
  return sub_23815523C() & 1;
}

uint64_t sub_2380BF6F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23815568C();
  if (v2)
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  return sub_2381556BC();
}

uint64_t sub_2380BF768()
{
  if (!v0[1])
  {
    return MEMORY[0x2383E9CD0](0);
  }

  v1 = *v0;
  MEMORY[0x2383E9CD0](1);

  return sub_238154C5C();
}

uint64_t sub_2380BF7E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23815568C();
  if (v2)
  {
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  return sub_2381556BC();
}

uint64_t sub_2380BF84C()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = 25965;
  }

  return v1;
}

uint64_t sub_2380BF890(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_2381555CC();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_2380BF8D4()
{
  sub_23815541C();
  MEMORY[0x2383E9410](0xD000000000000010, 0x8000000238162340);
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v2 = 0xE200000000000000;
    v1 = 25965;
  }

  MEMORY[0x2383E9410](v1, v2);

  MEMORY[0x2383E9410](32, 0xE100000000000000);
  v10 = v0[2];
  v3 = sub_23815559C();
  MEMORY[0x2383E9410](v3);

  MEMORY[0x2383E9410](120, 0xE100000000000000);
  v11 = v0[3];
  v4 = sub_23815559C();
  MEMORY[0x2383E9410](v4);

  MEMORY[0x2383E9410](64, 0xE100000000000000);
  v12 = v0[4];
  v5 = sub_23815559C();
  MEMORY[0x2383E9410](v5);

  MEMORY[0x2383E9410](32, 0xE100000000000000);
  v6 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v7 = *(v6 + 32);
  sub_238153A2C();
  sub_2381554DC();
  MEMORY[0x2383E9410](46, 0xE100000000000000);
  v8 = *(v6 + 36);
  sub_2381537EC();
  sub_2381554DC();
  MEMORY[0x2383E9410](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_2380BFADC()
{
  sub_23815568C();
  if (v0[1])
  {
    v1 = *v0;
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](v0[2]);
  MEMORY[0x2383E9CD0](v0[3]);
  MEMORY[0x2383E9CD0](v0[4]);
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v3 = *(v2 + 32);
  sub_238153A2C();
  sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0]);
  sub_238154C4C();
  v4 = *(v2 + 36);
  sub_2381537EC();
  sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0]);
  sub_238154C4C();
  return sub_2381556BC();
}

uint64_t sub_2380BFC3C(uint64_t a1, uint64_t a2)
{
  if (v2[1])
  {
    v4 = *v2;
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](v2[2]);
  MEMORY[0x2383E9CD0](v2[3]);
  MEMORY[0x2383E9CD0](v2[4]);
  v5 = *(a2 + 32);
  sub_238153A2C();
  sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0]);
  sub_238154C4C();
  v6 = *(a2 + 36);
  sub_2381537EC();
  sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0]);
  return sub_238154C4C();
}

uint64_t sub_2380BFD78(uint64_t a1, uint64_t a2)
{
  sub_23815568C();
  if (v2[1])
  {
    v4 = *v2;
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](v2[2]);
  MEMORY[0x2383E9CD0](v2[3]);
  MEMORY[0x2383E9CD0](v2[4]);
  v5 = *(a2 + 32);
  sub_238153A2C();
  sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0]);
  sub_238154C4C();
  v6 = *(a2 + 36);
  sub_2381537EC();
  sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0]);
  sub_238154C4C();
  return sub_2381556BC();
}

void *sub_2380BFED8()
{
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[15] = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v0[16] = [objc_opt_self() avatarImageRender];
  v1 = MEMORY[0x277D84F90];
  v0[17] = sub_2380F06E4(MEMORY[0x277D84F90]);
  v0[18] = sub_2380F08C8(v1);
  return v0;
}

uint64_t sub_2380BFF78(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  swift_beginAccess();
  v12 = *(v1 + 136);
  if (*(v12 + 16) && (v13 = sub_2380E6968(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v16 = sub_238154FBC();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    sub_2380C90BC(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    sub_2380C9188(v7, v19 + v18, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v15 = sub_2381351D8(0, 0, v11, &unk_23815B590, v19);
    swift_beginAccess();

    v20 = *(v2 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 136);
    *(v2 + 136) = 0x8000000000000000;
    sub_2380C7D30(v15, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 136) = v23;
    swift_endAccess();
  }

  return v15;
}

uint64_t sub_2380C0220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2380C0244, 0, 0);
}

uint64_t sub_2380C0244()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2380C03A4, Strong, 0);
  }

  else
  {
    v3 = sub_238152FBC();
    sub_2380C8B98(&qword_27DEEC018, MEMORY[0x277D548A0]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D54898], v3);
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2380C03A4()
{
  v1 = *(v0 + 64);
  sub_2380C0528(*(v0 + 56));
  *(v0 + 72) = 0;
  *(v0 + 80) = v3;
  *(v0 + 88) = v2;
  *(v0 + 96) = v4;

  return MEMORY[0x2822009F8](sub_2380C0438, 0, 0);
}

uint64_t sub_2380C0438()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v6 = *(v0 + 80);

  *v3 = v1;
  *(v3 + 8) = vextq_s8(v6, v6, 8uLL);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2380C04C4()
{
  v1 = v0[8];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

void sub_2380C0528(char *a1)
{
  v2 = v1;
  v84 = *MEMORY[0x277D85DE8];
  v4 = sub_238153A2C();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2381537EC();
  v75 = *(v70 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v70);
  v74 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v10 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA088 != -1)
  {
    swift_once();
  }

  v13 = sub_23815293C();
  __swift_project_value_buffer(v13, qword_27DEEBF30);
  sub_2380C90BC(a1, v12, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  v14 = sub_23815291C();
  v15 = sub_2381550FC();
  v16 = os_log_type_enabled(v14, v15);
  v71 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v82 = v18;
    *v17 = 136315138;
    v19 = sub_2380BF8D4();
    v21 = v20;
    sub_2380C8F60(v12);
    v22 = sub_238085EAC(v19, v21, &v82);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238060000, v14, v15, "Generating contact avatar {key: %s}", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EA8A0](v18, -1, -1);
    MEMORY[0x2383EA8A0](v17, -1, -1);
  }

  else
  {

    sub_2380C8F60(v12);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23815B0B0;
  v25 = v2[16];
  *(v24 + 32) = [v25 descriptorForRequiredKeys];
  v26 = v2[15];
  *(v24 + 40) = [v26 descriptorForRequiredKeys];
  if (*(a1 + 1))
  {
    v27 = *a1;
    v28 = v2[14];
    v29 = sub_238154C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC00, &unk_23815B5A0);
    v30 = sub_238154ECC();

    v82 = 0;
    v31 = [v28 unifiedContactWithIdentifier:v29 keysToFetch:v30 error:&v82];

    v32 = v82;
    if (v31)
    {
      goto LABEL_8;
    }

LABEL_11:
    v38 = v32;
    sub_23815266C();

    swift_willThrow();
    goto LABEL_26;
  }

  v36 = v2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC00, &unk_23815B5A0);
  v37 = sub_238154ECC();

  v82 = 0;
  v31 = [v36 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

  v32 = v82;
  if (!v31)
  {
    goto LABEL_11;
  }

LABEL_8:
  v69[3] = v23;
  v33 = v32;
  v34 = v31;
  [v34 mutableCopy];

  sub_23815534C();
  swift_unknownObjectRelease();
  sub_23807A3F8(0, &qword_27DEEC050, 0x277CBDB38);
  v35 = v77;
  sub_23815346C();
  if (!v35)
  {
    __swift_destroy_boxed_opaque_existential_1(&v82);
    v39 = v80;
    v40 = sub_238154C8C();
    v77 = v39;
    [v39 setMiddleName_];

    v41 = [v26 stringFromContact_];
    if (v41)
    {
      v42 = v41;
      v43 = sub_238154CCC();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v80 = v43;
    v81 = v45;
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_23815541C();

    v78 = 0xD00000000000002FLL;
    v79 = 0x80000002381622C0;
    v46 = [v34 identifier];
    v47 = sub_238154CCC();
    v49 = v48;

    MEMORY[0x2383E9410](v47, v49);

    MEMORY[0x2383E9410](125, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
    sub_2381552FC();

    v69[1] = v82;
    v69[2] = v83;
    v50 = v75;
    v51 = v74;
    v52 = v70;
    (*(v75 + 16))(v74, &a1[*(v76 + 36)], v70);
    v53 = (*(v50 + 88))(v51, v52);
    if (v53 == *MEMORY[0x277CDF3D0])
    {
      v54 = 3;
      v56 = v72;
      v55 = v73;
      v57 = v71;
    }

    else
    {
      v56 = v72;
      v55 = v73;
      v57 = v71;
      if (v53 == *MEMORY[0x277CDF3C0])
      {
        v54 = 4;
      }

      else
      {
        (*(v75 + 8))(v74, v52);
        v54 = 3;
      }
    }

    (*(v56 + 16))(v57, &a1[*(v76 + 32)], v55);
    v58 = (*(v56 + 88))(v57, v55);
    if (v58 != *MEMORY[0x277CDFA88])
    {
      if (v58 == *MEMORY[0x277CDFA90])
      {
        v59 = 1;
LABEL_25:
        v60 = [objc_opt_self() scopeWithPointSize:v59 scale:1 rightToLeft:v54 style:*(a1 + 2) backgroundStyle:{*(a1 + 3), *(a1 + 4)}];
        v78 = v60;
        v82 = 0;
        v83 = 0xE000000000000000;
        sub_23815541C();

        v82 = 0xD00000000000002DLL;
        v83 = 0x80000002381622F0;
        v61 = sub_2380BF8D4();
        MEMORY[0x2383E9410](v61);

        MEMORY[0x2383E9410](125, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC060, &unk_23815B5B0);
        sub_2381552FC();

        v62 = v80;
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_2381590E0;
        *(v63 + 32) = v34;
        sub_23807A3F8(0, &qword_27DEEE300, 0x277CBDA58);
        v64 = v34;
        v65 = sub_238154ECC();

        v66 = [v25 avatarImageForContacts:v65 scope:v62];

        v78 = v66;
        v82 = 0;
        v83 = 0xE000000000000000;
        sub_23815541C();

        v82 = 0xD00000000000001ELL;
        v83 = 0x8000000238162320;
        v67 = sub_2380BF8D4();
        MEMORY[0x2383E9410](v67);

        MEMORY[0x2383E9410](125, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC070, &qword_238158CA8);
        sub_2381552FC();

        sub_23815466C();
        goto LABEL_26;
      }

      (*(v56 + 8))(v57, v55);
    }

    v59 = 0;
    goto LABEL_25;
  }

  __swift_destroy_boxed_opaque_existential_1(&v82);

LABEL_26:
  v68 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2380C1008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  swift_beginAccess();
  v12 = *(v3 + 144);
  if (*(v12 + 16) && (v13 = sub_2380E6BBC(a1, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v16 = sub_238154FBC();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = a1;
    v18[6] = a2;
    v18[7] = a3;
    v15 = sub_238135490(0, 0, v11, &unk_23815B518, v18);
    swift_beginAccess();

    v19 = *(v4 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 144);
    *(v4 + 144) = 0x8000000000000000;
    sub_2380C7ED4(v15, a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *(v4 + 144) = v22;
    swift_endAccess();
  }

  return v15;
}

uint64_t sub_2380C1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_2380C122C, 0, 0);
}

uint64_t sub_2380C122C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2380C138C, Strong, 0);
  }

  else
  {
    v3 = sub_238152FBC();
    sub_2380C8B98(&qword_27DEEC018, MEMORY[0x277D548A0]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D54898], v3);
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2380C138C()
{
  v1 = v0[10];
  v0[11] = sub_2380C1470(v0[7], v0[8], v0[9]);
  v0[12] = 0;

  return MEMORY[0x2822009F8](sub_2380C1404, 0, 0);
}

uint64_t sub_2380C1404()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];

  *v3 = v2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_2380C1470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27DEEA088 != -1)
  {
    swift_once();
  }

  v8 = sub_23815293C();
  __swift_project_value_buffer(v8, qword_27DEEBF30);
  v9 = sub_23815291C();
  v10 = sub_2381550FC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = sub_2380C1610();
    v15 = v4;
    v16 = sub_238085EAC(v13, v14, &v19);

    *(v11 + 4) = v16;
    v4 = v15;
    _os_log_impl(&dword_238060000, v9, v10, "Generating placeholder {key: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v17 = [*(v4 + 128) placeholderImageForSize:a1 scale:{a2, a3}];
  return sub_23815466C();
}

unint64_t sub_2380C1610()
{
  sub_23815541C();

  v0 = sub_23815559C();
  MEMORY[0x2383E9410](v0);

  MEMORY[0x2383E9410](120, 0xE100000000000000);
  v1 = sub_23815559C();
  MEMORY[0x2383E9410](v1);

  MEMORY[0x2383E9410](64, 0xE100000000000000);
  v2 = sub_23815559C();
  MEMORY[0x2383E9410](v2);

  MEMORY[0x2383E9410](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2380C1744()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2380C17A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  MEMORY[0x2383E9CD0](v2);
  MEMORY[0x2383E9CD0](v3);
  return sub_2381556BC();
}

uint64_t sub_2380C1814()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x2383E9CD0](*v0);
  MEMORY[0x2383E9CD0](v1);
  return MEMORY[0x2383E9CD0](v2);
}

uint64_t sub_2380C185C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  MEMORY[0x2383E9CD0](v2);
  MEMORY[0x2383E9CD0](v3);
  return sub_2381556BC();
}

unint64_t sub_2380C18C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_2380C1610();
}

uint64_t sub_2380C1928()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  *(v0 + 24) = 0;
  type metadata accessor for _DDContactInfoCache.Loader();
  v6 = swift_allocObject();
  sub_2380BFED8();
  *(v1 + 16) = v6;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2380F09FC(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBFA8, &qword_23815B120);
  sub_238152A5C();
  swift_endAccess();
  v9 = sub_2380F0BF8(v7);
  swift_beginAccess();
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBFB8, &qword_23815B128);
  sub_238152A5C();
  swift_endAccess();
  v10 = sub_238154FBC();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_238154F8C();

  v12 = sub_238154F7C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;

  v15 = sub_2380D2A4C(0, 0, v5, &unk_23815B610, v13);
  v16 = *(v1 + 24);
  *(v1 + 24) = v15;

  return v1;
}

uint64_t sub_2380C1B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0D0, &qword_23815B618) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v6 = sub_2381551BC();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v8 = *(v7 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = sub_238154F8C();
  v4[21] = sub_238154F7C();
  v10 = sub_238154F3C();
  v4[22] = v10;
  v4[23] = v9;

  return MEMORY[0x2822009F8](sub_2380C1CA0, v10, v9);
}

uint64_t sub_2380C1CA0()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CBD140];
  sub_2381551CC();

  sub_2381551AC();
  swift_beginAccess();
  swift_beginAccess();
  v5 = v0[20];
  v0[24] = sub_238154F7C();
  v6 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_2380C1E08;
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_2380C1E08()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380C22BC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380C1FA0;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2380C1FA0()
{
  v1 = v0[24];

  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_2380C2004, v2, v3);
}

uint64_t sub_2380C2004()
{
  v1 = v0[16];
  v2 = sub_23815257C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[15];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + 16);
      v0[27] = v8;

      return MEMORY[0x2822009F8](sub_2380C2348, v8, 0);
    }

    else
    {
      v9 = v0[15];
      v10 = swift_weakLoadStrong();
      v0[28] = v10;
      if (v10)
      {
        v11 = swift_task_alloc();
        v0[29] = v11;
        *v11 = v0;
        v11[1] = sub_2380C26A4;

        return sub_2380C28E4(0xD00000000000001CLL, 0x8000000238162360);
      }

      else
      {
        sub_238071284(v0[16], &qword_27DEEC0D0, &qword_23815B618);
        v12 = v0[20];
        v0[24] = sub_238154F7C();
        v13 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68]);
        v14 = *(MEMORY[0x277D856D0] + 4);
        v15 = swift_task_alloc();
        v0[25] = v15;
        *v15 = v0;
        v15[1] = sub_2380C1E08;
        v16 = v0[19];
        v17 = v0[16];
        v18 = v0[17];

        return MEMORY[0x282200308](v17, v18, v13);
      }
    }
  }
}

uint64_t sub_2380C22BC()
{
  *(v0 + 112) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2380C2348()
{
  v14 = v0;
  if (qword_27DEEA088 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  __swift_project_value_buffer(v1, qword_27DEEBF30);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_238085EAC(0xD00000000000001CLL, 0x8000000238162360, &v13);
    _os_log_impl(&dword_238060000, v2, v3, "Clearning _DDContactInfoCache.Loader.tasks {reason: %s}", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x2383EA8A0](v5, -1, -1);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v6 = v0[27];
  swift_beginAccess();
  v7 = *(v6 + 136);
  v8 = MEMORY[0x277D84F98];
  *(v6 + 136) = MEMORY[0x277D84F98];

  swift_beginAccess();
  v9 = *(v6 + 144);
  *(v6 + 144) = v8;

  v10 = v0[22];
  v11 = v0[23];

  return MEMORY[0x2822009F8](sub_2380C2514, v10, v11);
}

uint64_t sub_2380C2514()
{
  v1 = v0[15];
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[29] = v3;
    *v3 = v0;
    v3[1] = sub_2380C26A4;

    return sub_2380C28E4(0xD00000000000001CLL, 0x8000000238162360);
  }

  else
  {
    sub_238071284(v0[16], &qword_27DEEC0D0, &qword_23815B618);
    v5 = v0[20];
    v0[24] = sub_238154F7C();
    v6 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68]);
    v7 = *(MEMORY[0x277D856D0] + 4);
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_2380C1E08;
    v9 = v0[19];
    v10 = v0[16];
    v11 = v0[17];

    return MEMORY[0x282200308](v10, v11, v6);
  }
}

uint64_t sub_2380C26A4()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_2380C27E8, v5, v4);
}

uint64_t sub_2380C27E8()
{
  sub_238071284(v0[16], &qword_27DEEC0D0, &qword_23815B618);
  v1 = v0[20];
  v0[24] = sub_238154F7C();
  v2 = sub_2380C8B98(&qword_27DEEC0D8, MEMORY[0x277CC9D68]);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_2380C1E08;
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];

  return MEMORY[0x282200308](v6, v7, v2);
}

uint64_t sub_2380C28E4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E0, &qword_23815B628);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E8, &qword_23815B630) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = *(type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_238154F8C();
  v3[21] = sub_238154F7C();
  v11 = sub_238154F3C();
  v3[22] = v11;
  v3[23] = v10;

  return MEMORY[0x2822009F8](sub_2380C2A9C, v11, v10);
}

uint64_t sub_2380C2A9C()
{
  v72 = v0;
  v1 = v0;
  if (qword_27DEEA088 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v2 = v1[10];
    v3 = sub_23815293C();
    __swift_project_value_buffer(v3, qword_27DEEBF30);

    v4 = sub_23815291C();
    v5 = sub_2381550FC();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v1[9];
      v6 = v1[10];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v71 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_238085EAC(v7, v6, &v71);
      _os_log_impl(&dword_238060000, v4, v5, "Resetting contact info cache {reason: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2383EA8A0](v9, -1, -1);
      MEMORY[0x2383EA8A0](v8, -1, -1);
    }

    v66 = v1[14];
    v67 = v1[18];
    v10 = v1[11];
    v69 = v1[12];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v11 = v1[6];
    v12 = v11 + 64;
    v13 = -1;
    v14 = -1 << *(v11 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v11 + 64);
    v16 = (63 - v14) >> 6;
    v17 = v1[6];

    v18 = 0;
    v63 = v16;
    v64 = v11 + 64;
    v68 = v11;
    v65 = v1;
    if (v15)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v36 = v1[17];
        v38 = v1[12];
        v37 = v1[13];

        (*(v37 + 56))(v36, 1, 1, v38);
        goto LABEL_15;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  while (1)
  {
    v19 = v18;
LABEL_11:
    v21 = v1[15];
    v20 = v1[16];
    v22 = v1[14];
    v23 = __clz(__rbit64(v15)) | (v19 << 6);
    sub_2380C90BC(*(v11 + 48) + *(v67 + 72) * v23, v20, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v24 = *(v11 + 56) + 32 * v23;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = v20 + *(v69 + 48);
    *v29 = v25;
    *(v29 + 8) = v26;
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    sub_2380C92F8(v20, v21);
    v70 = v22;
    sub_2380C9368(v21, v22);
    v30 = v22 + *(v69 + 48);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    LOBYTE(v23) = *(v30 + 24);
    sub_2380B3F10(v25, v26, v27, v28);
    sub_2380B3F78(v31, v32, v33, v23);
    v34 = *(v66 + 8);

    sub_2380C8F60(v70);
    if (!v34)
    {
      break;
    }

    v1 = v65;
    v35 = v65[15];

    v15 &= v15 - 1;
    sub_238071284(v35, &qword_27DEEC0E0, &qword_23815B628);
    v18 = v19;
    v11 = v68;
    v16 = v63;
    v12 = v64;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v1 = v65;
  v59 = v65[17];
  v60 = v65[15];
  v61 = v65[12];
  v62 = v65[13];

  sub_2380C92F8(v60, v59);
  (*(v62 + 56))(v59, 0, 1, v61);
LABEL_15:
  v39 = v1[17];
  v40 = v1[12];
  v41 = v1[13];

  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    v42 = v1[21];
    v43 = v1[17];
    v44 = v1[11];

    sub_238071284(v43, &qword_27DEEC0E8, &qword_23815B630);
    v45 = sub_2380F09FC(MEMORY[0x277D84F90]);
    swift_getKeyPath();
    swift_getKeyPath();
    v1[7] = v45;

    sub_238152A9C();
    v47 = v1[19];
    v46 = v1[20];
    v49 = v1[16];
    v48 = v1[17];
    v51 = v1[14];
    v50 = v1[15];

    v52 = v1[1];

    return v52();
  }

  else
  {
    v54 = v1[19];
    v55 = v1[20];
    v56 = v1[17];
    v57 = v1[11];
    sub_2380B3F78(*(v56 + *(v69 + 48)), *(v56 + *(v69 + 48) + 8), *(v56 + *(v69 + 48) + 16), *(v56 + *(v69 + 48) + 24));
    sub_2380C9188(v56, v54, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    sub_2380C9188(v54, v55, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    v58 = *(v57 + 16);
    v1[24] = v58;

    return MEMORY[0x2822009F8](sub_2380C3038, v58, 0);
  }
}

uint64_t sub_2380C3038()
{
  v1 = *(v0 + 192);
  v2 = sub_2380BFF78(*(v0 + 160));
  *(v0 + 200) = v2;
  v3 = *(MEMORY[0x277D857D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  *v4 = v0;
  v4[1] = sub_2380C3110;
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 16, v2, &type metadata for _DDContactInfoCache.ContactInfo, v5, v6);
}

uint64_t sub_2380C3110()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_2380C3254, v5, v4);
}

uint64_t sub_2380C3254()
{
  v1 = v0;
  v2 = *(v0 + 160);
  v22 = *(v0 + 88);

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0F0, &qword_23815B638);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0F8, &qword_23815B640) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_238157F20;
  v11 = v10 + v9;
  v12 = v10 + v9 + v7[14];
  sub_2380C90BC(v2, v11, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  *v12 = v3;
  *(v12 + 8) = v4;
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  sub_2380B3F10(v3, v4, v5, v6);
  v13 = sub_2380F09FC(v10);
  swift_setDeallocating();
  sub_238071284(v11, &qword_27DEEC0F8, &qword_23815B640);
  swift_deallocClassInstance();
  swift_getKeyPath();
  swift_getKeyPath();
  v1[8] = v13;

  sub_238152A9C();
  sub_2380B3F78(v3, v4, v5, v6);
  sub_2380C8F60(v2);
  v15 = v1[19];
  v14 = v1[20];
  v17 = v1[16];
  v16 = v1[17];
  v19 = v1[14];
  v18 = v1[15];

  v20 = v1[1];

  return v20();
}

uint64_t sub_2380C34B0()
{
  if (*(v0 + 3))
  {
    v1 = *(v0 + 3);

    sub_238154FCC();

    v2 = *(v0 + 3);
  }

  *(v0 + 3) = 0;

  v3 = *(v0 + 2);

  v4 = *(v0 + 3);

  v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI19_DDContactInfoCache__contactInfos;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC078, &qword_23815B5C0);
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI19_DDContactInfoCache__placeholders;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC080, &qword_23815B5C8);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2380C3628()
{
  sub_2380AAE3C(319, &qword_27DEEBFA0, &qword_27DEEBFA8, &qword_23815B120);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2380AAE3C(319, &qword_27DEEBFB0, &qword_27DEEBFB8, &qword_23815B128);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for _DDContactInfoCache.PlaceholderImageKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _DDContactInfoCache.PlaceholderImageKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2380C37DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_238153A2C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_2381537EC();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2380C3920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_238153A2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2381537EC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2380C3A64()
{
  result = sub_238153A2C();
  if (v1 <= 0x3F)
  {
    result = sub_2381537EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2380C3B04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2380C3B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2380C3BA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2380C3BC0(void *result, int a2)
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

unint64_t sub_2380C3BF4()
{
  result = qword_27DEEBFD8;
  if (!qword_27DEEBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBFD8);
  }

  return result;
}

unint64_t sub_2380C3C94()
{
  result = qword_27DEEBFE8;
  if (!qword_27DEEBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBFE8);
  }

  return result;
}

void *sub_2380C3CE8(uint64_t *a1)
{
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v10 = v23;
  if (*(v23 + 16) && (v11 = sub_2380E6968(a1), (v12 & 1) != 0))
  {
    v13 = *(v10 + 56) + 32 * v11;
    v14 = *v13;
    sub_2380B3F10(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));

    return v14;
  }

  else
  {

    v16 = sub_238154FBC();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    sub_2380C90BC(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    sub_238154F8C();

    v18 = sub_238154F7C();
    v19 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v18;
    v20[3] = v21;
    v20[4] = v17;
    sub_2380C9188(v5, v20 + v19, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);

    sub_2380D2A4C(0, 0, v9, &unk_23815B578, v20);

    return 0;
  }
}

uint64_t sub_2380C3FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  sub_238154F8C();
  v5[15] = sub_238154F7C();
  v7 = sub_238154F3C();
  v5[16] = v7;
  v5[17] = v6;

  return MEMORY[0x2822009F8](sub_2380C4060, v7, v6);
}

uint64_t sub_2380C4060()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v0[19] = v3;

    return MEMORY[0x2822009F8](sub_2380C4134, v3, 0);
  }

  else
  {
    v4 = v0[15];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2380C4134()
{
  v1 = *(v0 + 152);
  v2 = sub_2380BFF78(*(v0 + 112));
  *(v0 + 160) = v2;

  v3 = *(MEMORY[0x277D857D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  *v4 = v0;
  v4[1] = sub_2380C4214;
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 48, v2, &type metadata for _DDContactInfoCache.ContactInfo, v5, v6);
}

uint64_t sub_2380C4214()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_2380C4358, v5, v4);
}

uint64_t sub_2380C4358()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v14 = *(v0 + 112);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380B3F10(v3, v4, v5, v6);
  v13 = sub_238152A7C();
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_2380C8050(v3, v4, v5, v6, v14, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v13(v0 + 16, 0);

  sub_2380B3F78(v3, v4, v5, v6);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2380C44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  sub_238154F8C();
  v7[15] = sub_238154F7C();
  v9 = sub_238154F3C();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x2822009F8](sub_2380C4560, v9, v8);
}

uint64_t sub_2380C4560()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 16);
    v0[19] = v3;

    return MEMORY[0x2822009F8](sub_2380C4634, v3, 0);
  }

  else
  {
    v4 = v0[15];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2380C4634()
{
  v1 = v0[19];
  v2 = sub_2380C1008(v0[12], v0[13], v0[14]);
  v0[20] = v2;

  v3 = *(MEMORY[0x277D857D0] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  *v4 = v0;
  v4[1] = sub_2380C4718;
  v6 = MEMORY[0x277CE1088];
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 9, v2, v6, v5, v7);
}

uint64_t sub_2380C4718()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_2380C485C, v5, v4);
}

uint64_t sub_2380C485C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v12 = *(v0 + 96);

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380B3E18(v3, v4);
  v5 = sub_238152A7C();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_2380C822C(v3, v4, v12, v13, v14, isUniquelyReferenced_nonNull_native);
  *v7 = v15;
  v5(v0 + 16, 0);

  sub_2380B3E3C(v3, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2380C49C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380C4A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_2380C4B0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2380C4B4C(uint64_t a1)
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
  v10[1] = sub_238088780;

  return sub_2380C44C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2380C4C20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC100, &qword_23815B648);
  result = sub_23815551C();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = 16 * (v18 | (v9 << 6));
      v32 = *(*(v5 + 56) + v21);
      v33 = *(*(v5 + 48) + v21);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_23815568C();
      MEMORY[0x2383E9CE0](v33 >> 14);
      MEMORY[0x2383E9CE0](*(&v33 + 1) >> 14);
      result = sub_2381556BC();
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
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v33;
      *(*(v8 + 56) + v17) = v32;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}