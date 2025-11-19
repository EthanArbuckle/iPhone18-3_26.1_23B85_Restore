unsigned __int8 *sub_21728AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;
  sub_217751DE8();
  result = sub_217752108();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_217752B88();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v21 != 0;
              if (!v21)
              {
                break;
              }

              v26 = *i;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_107;
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

              v28 = v14 * a3;
              if (v28 != v28)
              {
                goto LABEL_107;
              }

              v29 = v26 + v27;
              v14 = v28 + v29;
              if (__OFADD__(v28, v29))
              {
                goto LABEL_107;
              }

              --v21;
            }

            goto LABEL_108;
          }

LABEL_65:
          v14 = 0;
          v16 = 0;
LABEL_108:

          LOBYTE(v69) = v16;
          return (v14 | (v16 << 32));
        }

LABEL_127:
        v14 = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        v16 = 1;
        do
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v14 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_108;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          v36 = v30 * a3;
          if (v36 != v36)
          {
            goto LABEL_127;
          }

          v37 = v34 + v35;
          v38 = __OFADD__(v36, v37);
          v30 = v36 + v37;
          if (v38)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        v14 = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if (v19 != v19)
            {
              goto LABEL_107;
            }

            v20 = v17 + v18;
            v14 = v19 - v20;
            if (__OFSUB__(v19, v20))
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v60 = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v69;
        v16 = 1;
        do
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v63)
          {
            if (v65 < 0x41 || v65 >= v61)
            {
              v14 = 0;
              if (v65 < 0x61 || v65 >= v62)
              {
                goto LABEL_108;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v60 * a3;
          if (v67 != v67)
          {
            goto LABEL_127;
          }

          v68 = v65 + v66;
          v38 = __OFADD__(v67, v68);
          v60 = v67 + v68;
          if (v38)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v16 = 0;
        v14 = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v14 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        for (k = &v69 + 1; ; ++k)
        {
          v16 = v42 != 0;
          if (!v42)
          {
            break;
          }

          v47 = *k;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_107;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v14 * a3;
          if (v49 != v49)
          {
            goto LABEL_107;
          }

          v50 = v47 + v48;
          v14 = v49 - v50;
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_107;
          }

          --v42;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v14 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      for (m = &v69 + 1; ; ++m)
      {
        v16 = v51 != 0;
        if (!v51)
        {
          break;
        }

        v56 = *m;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
LABEL_107:
              v14 = 0;
              goto LABEL_108;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v14 * a3;
        if (v58 != v58)
        {
          goto LABEL_107;
        }

        v59 = v56 + v57;
        v14 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_107;
        }

        --v51;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21728B084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;
  sub_217751DE8();
  result = sub_217752108();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217288DA4();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_217752B88();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v21 != 0;
              if (!v21)
              {
                break;
              }

              v26 = *i;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_107;
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

              v28 = v14 * a3;
              if ((v28 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_107;
              }

              v29 = v26 + v27;
              v14 = v28 + v29;
              if (__CFADD__(v28, v29))
              {
                goto LABEL_107;
              }

              --v21;
            }

            goto LABEL_108;
          }

LABEL_65:
          v14 = 0;
          v16 = 0;
LABEL_108:

          LOBYTE(v69) = v16;
          return (v14 | (v16 << 32));
        }

LABEL_127:
        v14 = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        v16 = 1;
        do
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v14 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_108;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          v36 = v30 * a3;
          if ((v36 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v37 = v34 + v35;
          v38 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v38)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        v14 = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_107;
            }

            v20 = v17 + v18;
            v14 = v19 - v20;
            if (v19 < v20)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v60 = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v69;
        v16 = 1;
        do
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v63)
          {
            if (v65 < 0x41 || v65 >= v61)
            {
              v14 = 0;
              if (v65 < 0x61 || v65 >= v62)
              {
                goto LABEL_108;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v60 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v68 = v65 + v66;
          v38 = __CFADD__(v67, v68);
          v60 = v67 + v68;
          if (v38)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v16 = 0;
        v14 = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v14 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        for (k = &v69 + 1; ; ++k)
        {
          v16 = v42 != 0;
          if (!v42)
          {
            break;
          }

          v47 = *k;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_107;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v14 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_107;
          }

          v50 = v47 + v48;
          v14 = v49 - v50;
          if (v49 < v50)
          {
            goto LABEL_107;
          }

          --v42;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v14 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      for (m = &v69 + 1; ; ++m)
      {
        v16 = v51 != 0;
        if (!v51)
        {
          break;
        }

        v56 = *m;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
LABEL_107:
              v14 = 0;
              goto LABEL_108;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v14 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_107;
        }

        v59 = v56 + v57;
        v14 = v58 + v59;
        if (__CFADD__(v58, v59))
        {
          goto LABEL_107;
        }

        --v51;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_21728B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78[0] = a1;
  v78[1] = a2;
  sub_217751DE8();
  v6 = sub_217752108();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_132();
    sub_217288DA4();
    OUTLINED_FUNCTION_32_3();

    v7 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_0_11();
          if (v22)
          {
            OUTLINED_FUNCTION_26_5();
            while (v23)
            {
              OUTLINED_FUNCTION_8_9();
              if ((!v17 || v27 >= v26) && (v27 < 0x41 || v27 >= v25) && (v27 < 0x61 || v27 >= v24))
              {
                break;
              }

              OUTLINED_FUNCTION_21_7();
              if (v31 != v30 >> 63 || __OFADD__(v30, (v28 + v29)))
              {
                break;
              }

              OUTLINED_FUNCTION_9_7();
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_119;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_0_11();
        if (v33 ^ v34 | v32)
        {
          v38 = v41;
        }

        if (v33 ^ v34 | v32)
        {
          v39 = 65;
        }

        if (!(v33 ^ v34 | v32))
        {
          v40 = 58;
        }

        while (1)
        {
          v42 = *v35;
          if (v42 < 0x30 || v42 >= v40)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              if (v42 < 0x61 || v42 >= v38)
              {
                goto LABEL_91;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v37 * a3;
          if ((v37 * a3) >> 64 == (v37 * a3) >> 63)
          {
            v37 = v44 + (v42 + v43);
            if (!__OFADD__(v44, (v42 + v43)))
            {
              ++v35;
              if (--v36)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        if (v11)
        {
          OUTLINED_FUNCTION_26_5();
          while (v12)
          {
            OUTLINED_FUNCTION_8_9();
            if ((!v17 || v16 >= v15) && (v16 < 0x41 || v16 >= v14) && (v16 < 0x61 || v16 >= v13))
            {
              break;
            }

            OUTLINED_FUNCTION_21_7();
            if (v21 != v20 >> 63 || __OFSUB__(v20, (v18 + v19)))
            {
              break;
            }

            OUTLINED_FUNCTION_9_7();
          }
        }
      }

LABEL_91:

      return;
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  OUTLINED_FUNCTION_16_11();
  if (!v32)
  {
    if (v46 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_12_4();
        if (v66 ^ v67 | v65)
        {
          v70 = v73;
        }

        if (v66 ^ v67 | v65)
        {
          v71 = 65;
        }

        if (!(v66 ^ v67 | v65))
        {
          v72 = 58;
        }

        v74 = v78;
        while (1)
        {
          v75 = *v74;
          if (v75 < 0x30 || v75 >= v72)
          {
            if (v75 < 0x41 || v75 >= v71)
            {
              if (v75 < 0x61 || v75 >= v70)
              {
                goto LABEL_91;
              }

              v76 = -87;
            }

            else
            {
              v76 = -55;
            }
          }

          else
          {
            v76 = -48;
          }

          v77 = v69 * a3;
          if ((v69 * a3) >> 64 == (v69 * a3) >> 63)
          {
            v69 = v77 + (v75 + v76);
            if (!__OFADD__(v77, (v75 + v76)))
            {
              ++v74;
              if (--v68)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_24_7();
        while (v47)
        {
          OUTLINED_FUNCTION_8_9();
          if ((!v17 || v51 >= v50) && (v51 < 0x41 || v51 >= v49) && (v51 < 0x61 || v51 >= v48))
          {
            break;
          }

          OUTLINED_FUNCTION_21_7();
          if (v55 != v54 >> 63 || __OFSUB__(v54, (v52 + v53)))
          {
            break;
          }

          OUTLINED_FUNCTION_9_7();
        }
      }

      goto LABEL_91;
    }

    goto LABEL_118;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_24_7();
      while (v56)
      {
        OUTLINED_FUNCTION_8_9();
        if ((!v17 || v60 >= v59) && (v60 < 0x41 || v60 >= v58) && (v60 < 0x61 || v60 >= v57))
        {
          break;
        }

        OUTLINED_FUNCTION_21_7();
        if (v64 != v63 >> 63 || __OFADD__(v63, (v61 + v62)))
        {
          break;
        }

        OUTLINED_FUNCTION_9_7();
      }
    }

    goto LABEL_91;
  }

LABEL_120:
  __break(1u);
}

void sub_21728BABC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v72[0] = a1;
  v72[1] = a2;
  sub_217751DE8();
  v6 = sub_217752108();
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_132();
    sub_217288DA4();
    OUTLINED_FUNCTION_32_3();

    v7 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v8 = sub_217752B88();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          OUTLINED_FUNCTION_0_11();
          if (v20)
          {
            OUTLINED_FUNCTION_26_5();
            while (v21)
            {
              OUTLINED_FUNCTION_8_9();
              if ((!v17 || v25 >= v24) && (v25 < 0x41 || v25 >= v23) && (v25 < 0x61 || v25 >= v22))
              {
                break;
              }

              OUTLINED_FUNCTION_25_5();
              if (!v28)
              {
                break;
              }

              OUTLINED_FUNCTION_22_5();
              if (__CFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_9_7();
            }
          }
        }

        goto LABEL_95;
      }

      goto LABEL_123;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_0_11();
        if (v29 ^ v30 | v28)
        {
          v34 = v37;
        }

        if (v29 ^ v30 | v28)
        {
          v35 = 65;
        }

        if (!(v29 ^ v30 | v28))
        {
          v36 = 58;
        }

        while (1)
        {
          v38 = *v31;
          if (v38 < 0x30 || v38 >= v36)
          {
            if (v38 < 0x41 || v38 >= v35)
            {
              if (v38 < 0x61 || v38 >= v34)
              {
                goto LABEL_95;
              }

              v39 = -87;
            }

            else
            {
              v39 = -55;
            }
          }

          else
          {
            v39 = -48;
          }

          if (is_mul_ok(v33, a3))
          {
            v40 = v33 * a3;
            v41 = v38 + v39;
            v17 = __CFADD__(v40, v41);
            v33 = v40 + v41;
            if (!v17)
            {
              ++v31;
              if (--v32)
              {
                continue;
              }
            }
          }

          goto LABEL_95;
        }
      }

      goto LABEL_95;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        if (v11)
        {
          OUTLINED_FUNCTION_26_5();
          while (v12)
          {
            OUTLINED_FUNCTION_8_9();
            if ((!v17 || v16 >= v15) && (v16 < 0x41 || v16 >= v14) && (v16 < 0x61 || v16 >= v13))
            {
              break;
            }

            OUTLINED_FUNCTION_25_5();
            if (!v28)
            {
              break;
            }

            OUTLINED_FUNCTION_22_5();
            if (v19 < v18)
            {
              break;
            }

            OUTLINED_FUNCTION_9_7();
          }
        }
      }

LABEL_95:

      return;
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  OUTLINED_FUNCTION_16_11();
  if (!v28)
  {
    if (v43 != 45)
    {
      if (v42)
      {
        OUTLINED_FUNCTION_12_4();
        if (v59 ^ v60 | v58)
        {
          v63 = v66;
        }

        if (v59 ^ v60 | v58)
        {
          v64 = 65;
        }

        if (!(v59 ^ v60 | v58))
        {
          v65 = 58;
        }

        v67 = v72;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v65)
          {
            if (v68 < 0x41 || v68 >= v64)
            {
              if (v68 < 0x61 || v68 >= v63)
              {
                goto LABEL_95;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v70 = v62 * a3;
            v71 = v68 + v69;
            v17 = __CFADD__(v70, v71);
            v62 = v70 + v71;
            if (!v17)
            {
              ++v67;
              if (--v61)
              {
                continue;
              }
            }
          }

          goto LABEL_95;
        }
      }

      goto LABEL_95;
    }

    if (v42)
    {
      if (v42 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_24_7();
        while (v44)
        {
          OUTLINED_FUNCTION_8_9();
          if ((!v17 || v48 >= v47) && (v48 < 0x41 || v48 >= v46) && (v48 < 0x61 || v48 >= v45))
          {
            break;
          }

          OUTLINED_FUNCTION_25_5();
          if (!v28)
          {
            break;
          }

          OUTLINED_FUNCTION_22_5();
          if (v50 < v49)
          {
            break;
          }

          OUTLINED_FUNCTION_9_7();
        }
      }

      goto LABEL_95;
    }

    goto LABEL_122;
  }

  if (v42)
  {
    if (v42 != 1)
    {
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_24_7();
      while (v51)
      {
        OUTLINED_FUNCTION_8_9();
        if ((!v17 || v55 >= v54) && (v55 < 0x41 || v55 >= v53) && (v55 < 0x61 || v55 >= v52))
        {
          break;
        }

        OUTLINED_FUNCTION_25_5();
        if (!v28)
        {
          break;
        }

        OUTLINED_FUNCTION_22_5();
        if (__CFADD__(v57, v56))
        {
          break;
        }

        OUTLINED_FUNCTION_9_7();
      }
    }

    goto LABEL_95;
  }

LABEL_124:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t MusicLibrarySectionedRequest._library.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.itemPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.sectionPredicates.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.itemSortDescriptors.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.sectionSortDescriptors.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.containersToDonate.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = (*a1 + *MEMORY[0x277D84DE8]);
  v31 = *(v9[1] + 16);
  v10 = *(v31 + 16);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v30 - v17;
  v19 = type metadata accessor for MusicPredicateValue();
  OUTLINED_FUNCTION_43(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22, v23);
  OUTLINED_FUNCTION_21_2();
  v24 = *v9;
  v25 = *(*(a3 + 40) + 8);
  v32 = *(a3 + 24);
  v33 = v24;
  v34 = v10;
  v35 = v25;
  type metadata accessor for MusicPredicate();
  v26 = *(v12 + 16);
  v26(v4, a2, v10);
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(a1, v4);

  MEMORY[0x21CEA25D0](v27);
  sub_217204C70(*((*(v5 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_217752378();
  sub_21770B774();
  v28 = *(*(v5 + 104) + 16);
  sub_21770BAA4(v28);

  v26(v18, a2, v10);
  return sub_21770BBF4(v28, v18, (v5 + 104), v10, *(v31 + 24));
}

uint64_t MusicLibrarySectionedRequest.filterItems(matching:contains:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v9 = *(*a1 + *MEMORY[0x277D84DE8]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB24B10, &unk_217758190);
  v11 = *(*(a4 + 40) + 8);
  v15 = v10;
  v16 = v11;
  type metadata accessor for MusicPredicate();
  v14[0] = a2;
  v14[1] = a3;
  LOBYTE(v15) = 2;
  MusicPredicate.__allocating_init(_:_:)(a1, v14);
  OUTLINED_FUNCTION_24_8();
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t MusicLibrarySectionedRequest.filterItems(matching:contains:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_10(a1);
  v2 = *(v1 + 24);
  v3 = *(*(v1 + 40) + 8);
  v5 = *(v4 + *MEMORY[0x277D84DE8]);
  v6 = OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_6_4(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v14);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t sub_21728C768(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15(a1);
  v6 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v7 = type metadata accessor for MusicPredicateValue();
  OUTLINED_FUNCTION_43(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_11_15();
  (*(*(v6 - 8) + 16))(v3, a2, v6);
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v2, v3);
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t sub_21728C894(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15(a1);
  v6 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v7 = type metadata accessor for MusicPredicateValue();
  OUTLINED_FUNCTION_43(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_11_15();
  *v3 = a2;
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v2, v3);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_15_14();
  return sub_217752378();
}

uint64_t MusicLibrarySectionedRequest.filterSections<>(matching:contains:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_10(a1);
  v14 = *(v1 + 16);
  v15 = *(v2 + *MEMORY[0x277D84DE8]);
  v16 = MEMORY[0x277D837D0];
  v17 = *(v3 + 8);
  v4 = type metadata accessor for MusicPredicate();
  OUTLINED_FUNCTION_6_4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v12);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

{
  OUTLINED_FUNCTION_3_10(a1);
  v2 = *(v1 + 16);
  v4 = *(v3 + 8);
  v6 = *(v5 + *MEMORY[0x277D84DE8]);
  v7 = OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_6_4(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v15);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

uint64_t sub_21728CAF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_15(a1);
  v8 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  v9 = type metadata accessor for MusicPredicateValue();
  OUTLINED_FUNCTION_43(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_22_6(*(a3 + 16));
  (*(*(v8 - 8) + 16))(v4, a2, v8);
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v3, v4);
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v14);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

uint64_t sub_21728CC30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_15(a1);
  v8 = *(v7 + *MEMORY[0x277D84DE8] + 8);
  v9 = type metadata accessor for MusicPredicateValue();
  OUTLINED_FUNCTION_43(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_22_6(*(a3 + 16));
  *v4 = a2;
  OUTLINED_FUNCTION_86();
  swift_storeEnumTagMultiPayload();
  MusicPredicate.__allocating_init(_:_:)(v3, v4);
  sub_217751DE8();

  MEMORY[0x21CEA25D0](v14);
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_16_12();
  return sub_217752378();
}

uint64_t MusicLibrarySectionedRequest.filterSections<>(text:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_217751DE8();

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MusicLibrarySectionedRequest.sortSections<A>(by:ascending:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_15(a1);
  v3 = *(v2 + *MEMORY[0x277D84DE8]);
  type metadata accessor for MusicSortDescriptor();
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_24_8();

  MEMORY[0x21CEA25D0](v4);
  sub_217204C70(*((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_217752378();
}

uint64_t sub_21728CE28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 400);
  v10 = *v1;
  *(v2 + 408) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21728CF28()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21728CF84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v10 = *v1;
  *(v2 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21728D084()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 408);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_21728D0E0()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 424);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_21728D13C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21728D238()
{
  v56 = v0;
  v1 = v0;
  v2 = v0[67];
  v3 = v2[2];
  v0[24] = v3;
  v4 = v0 + 24;
  v5 = v0 + 69;
  v6 = v0[38];
  v44 = v0 + 38;
  v7 = v0 + 65;
  v8 = v2[4];
  v9 = v2[5];
  v4[1] = v4[44];
  v4[2] = v8;
  v4[3] = v9;
  OUTLINED_FUNCTION_25_6();
  v47 = type metadata accessor for MusicLibrarySection();
  v4[41] = sub_217752338();
  v50 = v6;
  if (*(v5 + 48) == 1)
  {
    v10 = OUTLINED_FUNCTION_36_3();
    v11 = [v10 numberOfSections];

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v12 = 0;
        v42 = v11;
        v51 = v1;
        do
        {
          v13 = OUTLINED_FUNCTION_36_3();
          v14 = [v13 numberOfItemsInSection_];

          if (v14 >= 1)
          {
            v15 = v51[68];
            v16 = *(v9 + 8);
            type metadata accessor for LegacySectionedCollectionItemLoader();
            v17 = OUTLINED_FUNCTION_36_3();
            v52 = v12;
            v53 = 0;
            v54 = &unk_28295BCF8;
            v55 = 1;
            sub_21774D4B8(v17, &v52, &v54, &v55);

            MusicItemCollection.init(_:)(v18, (v4 + 28));
            v19 = OUTLINED_FUNCTION_36_3();
            v20 = type metadata accessor for MusicItemCollection();
            v21 = v9;
            v22 = *(v20 - 8);
            (*(v22 + 16))(v44, v4 + 28, v20);
            sub_2176854D0(v44, v4);
            v23 = *(v47 - 8);
            (*(v23 + 16))(v44, v4, v47);
            OUTLINED_FUNCTION_25_6();
            sub_217752418();
            sub_2177523C8();
            v11 = v42;

            (*(v23 + 8))(v4, v47);
            v1 = v51;
            (*(v22 + 8))(v4 + 28, v20);
            v9 = v21;
          }

          ++v12;
        }

        while (v11 != v12);
      }

      v48 = 0;
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v49 = *(v1 + 601);
  v46 = v7;
  v24 = v1;
  v25 = v1[68];
  v26 = v6;
  v43 = *v5;
  v45 = *(v5 + 1);
  v27 = v8;
  v28 = [v26 results];
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  *(v29 + 24) = v25;
  v1 = v24;
  *(v29 + 32) = v27;
  *(v29 + 40) = v9;
  *(v29 + 48) = v26;
  *(v29 + 56) = v45;
  *(v29 + 72) = v43;
  *(v29 + 88) = v49;
  *(v29 + 96) = v46;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_21728FDAC;
  *(v30 + 24) = v29;
  v1[28] = sub_21728FDFC;
  v1[29] = v30;
  v1[24] = MEMORY[0x277D85DD0];
  v1[25] = 1107296256;
  v1[26] = sub_21728EAC4;
  v1[27] = &block_descriptor_18;
  v31 = _Block_copy(v4);
  v32 = v1[29];

  [v28 enumerateTitledSectionsUsingBlock_];

  _Block_release(v31);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    goto LABEL_15;
  }

  v48 = sub_21728FDAC;
LABEL_11:
  v33 = v1[73];
  v34 = v1[68];
  v35 = v1[66];
  v36 = v1[65];
  sub_217751DE8();
  v37 = [v50 results];
  v38 = v1;
  v39 = [v37 totalItemCount];

  sub_2174F2398(v36, v39, v35);
  v40 = v38[65];

  sub_2172202A4(v48);
  OUTLINED_FUNCTION_20_0();

  v41();
}

uint64_t sub_21728D780()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  swift_willThrow();
  sub_21728FC9C();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21728D830()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 536) = v2;
  *(v1 + 528) = v3;
  memcpy((v1 + 80), v0, 0x70uLL);
  *(v1 + 640) = v0[112];
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_21728D8A8()
{
  v24 = v0;
  v1 = *(*(v0 + 536) + 16);
  *(v0 + 544) = v1;
  if (!dynamic_cast_existential_1_conditional(v1) || (*(v0 + 552) = *(*(v0 + 536) + 24), (v2 = OUTLINED_FUNCTION_23_9()) == 0))
  {
    v19 = *(v0 + 536);
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD000000000000011);
    sub_217753348();
    OUTLINED_FUNCTION_20_10();

    MEMORY[0x21CEA23B0](0x6D65746920726F20, 0xEE00206570797420);
    v20 = *(v19 + 24);
    sub_217753348();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4();
  }

  v4 = v2;
  v5 = v3;
  v6 = OUTLINED_FUNCTION_23_9();
  *(v0 + 560) = v6;
  *(v0 + 568) = v7;
  if (!v6 || (v8 = OUTLINED_FUNCTION_23_9(), *(v0 + 576) = v8, *(v0 + 584) = v9, !v8))
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_0_12();
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4();
  }

  v10 = dynamic_cast_existential_1_conditional(v1);
  *(v0 + 592) = v10;
  *(v0 + 600) = v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD000000000000011);
    sub_217753348();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4();
  }

  v12 = dynamic_cast_existential_1_conditional(v1);
  *(v0 + 608) = v12;
  *(v0 + 616) = v13;
  if (!v12)
  {
    OUTLINED_FUNCTION_1_9();
    sub_217752AA8();
    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0](0xD000000000000011);
    OUTLINED_FUNCTION_27_8();
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_10_6();
    MEMORY[0x21CEA23B0]();
    return OUTLINED_FUNCTION_19_4();
  }

  v14 = *(v0 + 536);
  v15 = OUTLINED_FUNCTION_26_6();
  v16(v15);
  *(v0 + 641) = __dst[0];
  (*(v5 + 8))(__dst, v4, v5);
  *(v0 + 642) = __dst[0];
  memcpy(__dst, (v0 + 80), sizeof(__dst));
  v23 = *(v0 + 640);
  v17 = sub_21720E6A0(v14);
  *(v0 + 624) = v17;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_21728DD4C;
  swift_continuation_init();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27650, &unk_217759360);
  OUTLINED_FUNCTION_9_8(v18);
  *(v0 + 200) = 1107296256;
  OUTLINED_FUNCTION_8_10();
  [v17 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21728DD4C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 632) = *(v3 + 48);
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_21728DE48()
{
  v63 = v0;
  v1 = v0;
  v2 = *(v0 + 536);
  v3 = *(v2 + 32);
  *(v0 + 208) = v3;
  v4 = v0 + 208;
  *(v4 - 16) = *(v4 + 336);
  v5 = (v4 - 16);
  v6 = *(v4 + 96);
  v54 = (v4 + 96);
  v7 = *(v2 + 40);
  *(v4 + 8) = v7;
  aBlock = type metadata accessor for MusicLibrarySection();
  *(v4 + 312) = sub_217752338();
  v8 = *(v4 + 432);
  v9 = &selRef_playlist;
  v10 = OUTLINED_FUNCTION_34_4();
  v11 = v10;
  v56 = v7;
  if (v8 == 1)
  {
    v12 = [v10 numberOfSections];

    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = v12;
      if (v12)
      {
        v14 = 0;
        v51 = v12;
        v53 = v1;
        v52 = v6;
        do
        {
          v15 = OUTLINED_FUNCTION_34_4();
          v16 = [v15 numberOfItemsInSection_];

          if (v16 > 0 || dynamic_cast_existential_1_conditional(*(v1 + 544)) && ((*(v28 + 16))() & 1) != 0)
          {
            v17 = *(v1 + 552);
            v57 = *(v1 + 544);
            v18 = *(v56 + 8);
            OUTLINED_FUNCTION_25_6();
            type metadata accessor for LegacySectionedCollectionItemLoader();
            v19 = OUTLINED_FUNCTION_34_4();
            v59 = v14;
            v60 = 0;
            v61 = &unk_28295BD38;
            v62 = 1;
            sub_21774D4B8(v19, &v59, &v61, &v62);

            MusicItemCollection.init(_:)(v20, v4 + 208);
            v21 = OUTLINED_FUNCTION_34_4();
            OUTLINED_FUNCTION_25_6();
            v22 = type metadata accessor for MusicItemCollection();
            v23 = *(v22 - 8);
            (*(v23 + 16))(v54, v4 + 208, v22);
            sub_2176854D0(v54, v5);
            v24 = *(aBlock - 1);
            (*(v24 + 16))(v54, v5, aBlock);
            OUTLINED_FUNCTION_25_6();
            sub_217752418();
            sub_2177523C8();
            v1 = v53;

            v25 = *(v24 + 8);
            v26 = OUTLINED_FUNCTION_86();
            v13 = v51;
            v27(v26);
            (*(v23 + 8))(v4 + 208, v22);
            v6 = v52;
            v9 = &selRef_playlist;
          }

          ++v14;
        }

        while (v13 != v14);
      }

      v40 = v6;
      v58 = 0;
      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v29 = v6;
  v30 = v7;
  v31 = *(v1 + 642);
  v32 = v3;
  v33 = *(v1 + 641);
  v34 = swift_allocObject();
  v35 = *(v1 + 560);
  *(v34 + 16) = *(v1 + 544);
  v36 = *(v1 + 592);
  *(v34 + 56) = *(v1 + 576);
  *(v34 + 32) = v32;
  *(v34 + 40) = v30;
  *(v34 + 48) = v29;
  *(v34 + 72) = v35;
  *(v34 + 88) = v31;
  *(v34 + 96) = *(v1 + 608);
  *(v34 + 112) = v36;
  *(v34 + 128) = v33;
  *(v34 + 136) = v4 + 312;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_21728FE74;
  *(v37 + 24) = v34;
  *(v1 + 224) = sub_21728FF9C;
  *(v1 + 232) = v37;
  *(v1 + 192) = MEMORY[0x277D85DD0];
  *(v1 + 200) = 1107296256;
  *(v1 + 208) = sub_2174EDE10;
  *(v1 + 216) = &block_descriptor_45;
  v38 = _Block_copy((v4 - 16));
  v39 = *(v1 + 232);
  v40 = v29;
  v41 = v29;

  [v11 enumerateSectionIdentifiersUsingBlock_];

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    goto LABEL_19;
  }

  v58 = sub_21728FE74;
LABEL_15:
  v42 = *(v1 + 624);
  v43 = *(v1 + 552);
  v44 = *(v1 + 544);
  v45 = *(v1 + 528);
  v46 = *(v1 + 520);
  sub_217751DE8();
  v47 = [v40 v9[35]];
  v48 = [v47 totalItemCount];

  sub_2174F2398(v46, v48, v45);
  v49 = *(v1 + 520);

  sub_2172202A4(v58);
  v50 = *(v1 + 8);

  v50();
}

uint64_t sub_21728E3A0()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  swift_willThrow();

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 632);

  return v3();
}

void sub_21728E410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = MEMORY[0x21CEA3980]();
  sub_21728E4E4(a5, a1, a6, a7, a8, a9, a10, a2, a3, a11, a12, a13, a14, a15);

  objc_autoreleasePoolPop(v21);
}

uint64_t sub_21728E4E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v52 = a8;
  v59 = a7;
  v58 = a6;
  v57 = a5;
  v56 = a4;
  v47 = sub_2177528F8();
  v46 = *(v47 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x28223BE20](v47, v18);
  v53 = &v46 - v19;
  v51 = *(a11 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x28223BE20](v21, v22);
  v48 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v55 = &v46 - v26;
  v27 = a1;
  v67 = sub_217752338();
  v28 = [v27 results];
  v29 = swift_allocObject();
  v54 = a11;
  *(v29 + 16) = a11;
  *(v29 + 24) = a12;
  v49 = a13;
  *(v29 + 32) = a13;
  *(v29 + 40) = a14;
  v50 = a14;
  *(v29 + 48) = a2;
  *(v29 + 56) = a3;
  *(v29 + 64) = v56;
  *(v29 + 72) = v27;
  v30 = v58;
  *(v29 + 80) = v57;
  *(v29 + 88) = v30;
  *(v29 + 96) = v59;
  *(v29 + 104) = &v67;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_21728FE3C;
  *(v31 + 24) = v29;
  v65 = sub_21728FE64;
  v66 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_2174EDE10;
  v64 = &block_descriptor_28;
  v32 = _Block_copy(&aBlock);

  [v28 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v32];

  _Block_release(v32);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    aBlock = v67;
    v34 = sub_217752418();
    swift_getWitnessTable();
    if ((sub_217752738() & 1) == 0)
    {
      aBlock = v52;
      v62 = a9;
      sub_217751DE8();
      v35 = v53;
      v36 = v54;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
        v37 = v51;
        v38 = v55;
        (*(v51 + 32))(v55, v35, v36);
        v39 = v48;
        (*(v37 + 16))(v48, v38, v36);
        aBlock = v67;
        v40 = v50;
        v41 = *(v50 + 8);
        sub_217751DE8();
        WitnessTable = swift_getWitnessTable();
        MusicItemCollection.init<A>(_:)(&aBlock, a12, v34, v41, WitnessTable, v60);
        v43 = v49;
        sub_217685554(v39, v60, v36, &aBlock);
        v60[0] = v36;
        v60[1] = a12;
        v60[2] = v43;
        v60[3] = v40;
        v44 = type metadata accessor for MusicLibrarySection();
        v45 = *(v44 - 8);
        (*(v45 + 16))(v60, &aBlock, v44);
        sub_217752418();
        sub_2177523C8();
        (*(v45 + 8))(&aBlock, v44);
        (*(v37 + 8))(v55, v36);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
        (*(v46 + 8))(v35, v47);
      }
    }
  }

  return result;
}

uint64_t sub_21728EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_217751F48();
  v7(a2, v8, v9, a4);
}

void sub_21728EB38(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = MEMORY[0x21CEA3980]();
  sub_21728EC1C(a4, a1, a5, a6, a7, a8, a9, a2, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);

  objc_autoreleasePoolPop(v23);
}

uint64_t sub_21728EC1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v96 = a3;
  v91 = a8;
  LODWORD(v100) = a7;
  v98 = a5;
  v99 = a6;
  v97 = a4;
  v20 = sub_2177528F8();
  v21 = *(v20 - 8);
  v89 = v20;
  v90 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v88 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v92 = &v82 - v27;
  v95 = *(a15 - 8);
  v28 = *(v95 + 64);
  MEMORY[0x28223BE20](v29, v30);
  v86 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v83 = &v82 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v87 = &v82 - v37;
  v113 = sub_217752338();
  v38 = [a1 results];
  v39 = swift_allocObject();
  v93 = a15;
  v94 = a16;
  *(v39 + 16) = a15;
  *(v39 + 24) = a16;
  v84 = a17;
  v85 = a18;
  *(v39 + 32) = a17;
  *(v39 + 40) = a18;
  v41 = v96;
  v40 = v97;
  *(v39 + 48) = a2;
  *(v39 + 56) = v41;
  *(v39 + 64) = v40;
  *(v39 + 72) = a1;
  v42 = v99;
  *(v39 + 80) = v98;
  *(v39 + 88) = v42;
  *(v39 + 96) = v100;
  *(v39 + 104) = &v113;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_21728FED8;
  *(v43 + 24) = v39;
  v99 = v39;
  v110 = sub_21728FF9C;
  v111 = v43;
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 1107296256;
  v108[2] = sub_2174EDE10;
  v109 = &block_descriptor_57;
  v44 = _Block_copy(v108);
  v45 = a1;

  v100 = a2;
  [v38 enumerateItemIdentifiersInSectionAtIndex:a2 usingBlock:v44];

  _Block_release(v44);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    v97 = a14;
    LODWORD(v98) = a13;
    v47 = *(a10 + 8);
    v48 = v91;
    swift_unknownObjectRetain();
    v47(&v101, a9, a10);
    v104 = v101;
    v105 = v102;
    *&v107[0] = &unk_28295BE38;
    v112[0] = 4;
    sub_2172B6904(v48, &v104, v107, v112, v108);
    v49 = [v45 results];
    v50 = [v49 sectionItemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v50;
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    v47(&v104, a9, a10);
    v107[0] = v104;
    v107[1] = v105;
    v112[0] = 1;
    v51 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingSectionBlock:existingItem:typeValue:source:requestedRelationships:)();
    v55 = v54;
    v109 = v51;
    v110 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    v108[0] = v54;
    LOBYTE(v101) = v98;
    v56 = *(a12 + 24);
    *(&v105 + 1) = a11;
    v106 = a12;
    __swift_allocate_boxed_opaque_existential_0(&v104);

    v56(v108, &v101, a11, a12);
    sub_2171FF30C(&v104, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    v57 = v92;
    v58 = v93;
    if (swift_dynamicCast())
    {
      v100 = v55;
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
      v59 = v95;
      v60 = v87;
      (*(v95 + 32))(v87, v57, v58);
      v108[0] = v113;
      v61 = v94;
      v62 = sub_217752418();
      swift_getWitnessTable();
      if ((sub_217752738() & 1) == 0)
      {
        v75 = v83;
        (*(v59 + 16))(v83, v60, v58);
        v108[0] = v113;
        v76 = v85;
        v77 = *(v85 + 8);
        sub_217751DE8();
        WitnessTable = swift_getWitnessTable();
        MusicItemCollection.init<A>(_:)(v108, v61, v62, v77, WitnessTable, &v101);
        v79 = v84;
        sub_217685554(v75, &v101, v58, v108);
        *&v101 = v58;
        *(&v101 + 1) = v61;
        *&v102 = v79;
        *(&v102 + 1) = v76;
        v80 = type metadata accessor for MusicLibrarySection();
        v81 = *(v80 - 8);
        (*(v81 + 16))(&v101, v108, v80);
        sub_217752418();
        sub_2177523C8();

        (*(v81 + 8))(v108, v80);
        (*(v59 + 8))(v60, v58);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(&v104);
      }

      (*(v59 + 8))(v60, v58);
      v63 = v89;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v57, 1, 1, v58);
      v64 = v57;
      v63 = v89;
      (*(v90 + 8))(v64, v89);
      v61 = v94;
      v59 = v95;
    }

    sub_2171FF30C(&v104, v108);
    v65 = v88;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v65, 0, 1, v58);
      v66 = v86;
      (*(v59 + 32))(v86, v65, v58);
      if (dynamic_cast_existential_1_conditional(v58) && ((*(v67 + 16))() & 1) != 0)
      {
        v68 = v83;
        (*(v59 + 16))(v83, v66, v58);
        v108[0] = v113;
        v69 = sub_217752418();
        v70 = v85;
        v100 = *(v85 + 8);
        sub_217751DE8();
        v71 = swift_getWitnessTable();
        MusicItemCollection.init<A>(_:)(v108, v61, v69, v100, v71, &v101);
        v72 = v84;
        sub_217685554(v68, &v101, v58, v108);
        *&v101 = v58;
        *(&v101 + 1) = v61;
        *&v102 = v72;
        *(&v102 + 1) = v70;
        v73 = type metadata accessor for MusicLibrarySection();
        v74 = *(v73 - 8);
        (*(v74 + 16))(&v101, v108, v73);
        sub_217752418();
        sub_2177523C8();

        (*(v74 + 8))(v108, v73);
        (*(v59 + 8))(v86, v58);
      }

      else
      {
        (*(v59 + 8))(v66, v58);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v65, 1, 1, v58);
      (*(v90 + 8))(v65, v63);
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_21728F610(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = MEMORY[0x21CEA3980]();
  sub_21728F6F4(a1, a4, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v24, a16, a17, a18);

  objc_autoreleasePoolPop(v23);
}

uint64_t sub_21728F6F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v78 = a8;
  v79 = a7;
  v73 = a6;
  v80 = a1;
  v89 = a9;
  v76 = a18;
  v75 = a17;
  v81 = a16;
  v74 = a12;
  sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v69 = v23;
  v70 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26, v27);
  v77 = &v67 - v28;
  OUTLINED_FUNCTION_0();
  v71 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32, v33);
  OUTLINED_FUNCTION_31();
  v67 = v34;
  MEMORY[0x28223BE20](v35, v36);
  v68 = &v67 - v37;
  v38 = sub_217751968();
  OUTLINED_FUNCTION_0();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43, v44);
  OUTLINED_FUNCTION_31();
  v72 = v45;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v67 - v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_217759200;
  v51 = v80;
  *(v50 + 32) = a2;
  *(v50 + 40) = v51;
  MEMORY[0x21CEA1CB0]();
  v52 = *(a5 + 8);
  swift_unknownObjectRetain();
  v52(&v83, a4, a5);
  v87 = v83;
  v88 = v84;
  *&v82[0] = v81;
  v90 = 4;
  sub_2172B6904(a3, &v87, v82, &v90, v86);
  v80 = v40;
  v81 = v38;
  (*(v40 + 16))(v72, v49, v38);
  v53 = [v73 results];
  v54 = [v53 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v54;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v55 = v74;
  v52(&v87, a4, a5);
  v82[0] = v87;
  v82[1] = v88;
  v90 = 1;
  v56 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v84 + 1) = v56;
  v85 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v83 = v59;
  LOBYTE(v87) = v89;
  v61 = v78;
  v60 = v79;
  v62 = *(v78 + 24);
  v86[3] = v79;
  v86[4] = v78;
  __swift_allocate_boxed_opaque_existential_0(v86);

  v62(&v83, &v87, v60, v61);
  v63 = v77;
  sub_2171FF30C(v86, &v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v55);
    v64 = v71;
    v65 = v68;
    (*(v71 + 32))(v68, v63, v55);
    (*(v64 + 16))(v67, v65, v55);
    sub_217752418();
    sub_2177523C8();

    (*(v64 + 8))(v65, v55);
    (*(v80 + 8))(v49, v81);
  }

  else
  {
    (*(v80 + 8))(v49, v81);

    __swift_storeEnumTagSinglePayload(v63, 1, 1, v55);
    (*(v69 + 8))(v63, v70);
  }

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

id MusicLibrarySectionedRequest.legacyModelRequest.getter(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_21720E6A0(a1);
  v4 = [v3 underlyingRequest];

  return v4;
}

unint64_t sub_21728FC9C()
{
  result = qword_27CB2CD60;
  if (!qword_27CB2CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CD60);
  }

  return result;
}

uint64_t sub_21728FCF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_21728FD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21728FDFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_destroy_helper_17(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t OUTLINED_FUNCTION_11_15()
{
  v5 = *v2;
  v6 = *(*(v0 + 40) + 8);
  *(v3 - 96) = *(v0 + 24);
  *(v3 - 88) = v5;
  *(v3 - 80) = v1;
  *(v3 - 72) = v6;

  return type metadata accessor for MusicPredicate();
}

void OUTLINED_FUNCTION_20_10()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_22_6@<X0>(uint64_t a1@<X8>)
{
  v6 = *v3;
  v7 = *(v1 + 8);
  *(v4 - 112) = a1;
  *(v4 - 104) = v6;
  *(v4 - 96) = v2;
  *(v4 - 88) = v7;

  return type metadata accessor for MusicPredicate();
}

id OUTLINED_FUNCTION_34_4()
{

  return [v0 (v1 + 1672)];
}

uint64_t sub_217290064()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_2172900B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2172900F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_217290154(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = *a2;
  v24 = *(a2 + 8);
  if (v24 != 1)
  {
    v20 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_18:
    *a3 = v3;
    *(a3 + 8) = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v20;
    *(a3 + 32) = v11;
    return;
  }

  v6 = a1;
  v7 = [v6 numberOfSections];
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v8 = v7;
  if (!v7)
  {

    v11 = MEMORY[0x277D84F90];
    v20 = 1;
    goto LABEL_18;
  }

  v21 = v3;
  v22 = v5;
  v23 = a3;
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = [v6 numberOfItemsInSection_];
    if (v12 < 1)
    {
      goto LABEL_14;
    }

    v13 = v9 + v12;
    if (__OFADD__(v9, v12))
    {
      break;
    }

    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      goto LABEL_20;
    }

    if (v14 < v9)
    {
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B1944(0, *(v11 + 16) + 1, 1, v11);
      v11 = v18;
    }

    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2172B1944(v15 > 1, v16 + 1, 1, v11);
      v11 = v19;
    }

    *(v11 + 16) = v16 + 1;
    v17 = v11 + 16 * v16;
    *(v17 + 32) = v9;
    *(v17 + 40) = v14;
    v9 = v13;
LABEL_14:
    if (v8 == ++v10)
    {

      v20 = v24;
      v5 = v22;
      a3 = v23;
      v3 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_2172902F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_217751968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v48 - v13;
  if (*(v2 + 24) != 1)
  {
    v34 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
    v35 = OUTLINED_FUNCTION_2_16();
    *(v35 + 16) = xmmword_217759200;
    *(v35 + 32) = v34;
    *(v35 + 40) = a1;

LABEL_50:
    JUMPOUT(0x21CEA1CB0);
  }

  MEMORY[0x21CEA1CB0](&unk_28295BF38, v12);
  v15 = *(v2 + 32);
  v16 = *(v2 + 8);
  v17 = sub_21729093C(v16, v15);
  if ((v19 & 1) == 0 && v17 <= a1 && v18 >= a1)
  {
    v2 = a1 - v17;
    if (!__OFSUB__(a1, v17))
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  v3 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v17 = sub_21729093C(v16 + 1, v15);
  if ((v22 & 1) == 0 && v17 <= a1 && v21 >= a1)
  {
LABEL_37:
    *(v2 + 8) = v3;
    v2 = a1 - v17;
    if (!__OFSUB__(a1, v17))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v36 = OUTLINED_FUNCTION_2_16();
      *(v36 + 16) = xmmword_217759200;
      *(v36 + 32) = v3;
LABEL_41:
      *(v36 + 40) = v2;
      MEMORY[0x21CEA1CB0]();
      v37 = OUTLINED_FUNCTION_1_10();
      v38(v37);
      v39 = OUTLINED_FUNCTION_0_13();
      v40(v39);
      return (*(v7 + 32))(a2, v14, v6);
    }

    goto LABEL_47;
  }

  v24 = __OFSUB__(v16--, 1);
  if (v24)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v25 = sub_21729093C(v16, v15);
  if ((v27 & 1) == 0 && v25 <= a1 && v26 >= a1)
  {
    *(v2 + 8) = v16;
    v2 = a1 - v25;
    if (!__OFSUB__(a1, v25))
    {
LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v36 = OUTLINED_FUNCTION_2_16();
      *(v36 + 16) = xmmword_217759200;
      *(v36 + 32) = v16;
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  v29 = *(v15 + 16);
  if (v29)
  {
    v30 = 0;
    for (i = (v15 + 40); ; i += 2)
    {
      v32 = *(i - 1);
      if (v32 <= a1 && *i >= a1)
      {
        break;
      }

      if (v29 == ++v30)
      {
        return (*(v7 + 32))(a2, v14, v6);
      }
    }

    v24 = __OFSUB__(a1, v32);
    v42 = a1 - v32;
    if (!v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v43 = OUTLINED_FUNCTION_2_16();
      *(v43 + 16) = xmmword_217759200;
      *(v43 + 32) = v30;
      *(v43 + 40) = v42;
      MEMORY[0x21CEA1CB0]();
      v44 = OUTLINED_FUNCTION_1_10();
      v45(v44);
      v46 = OUTLINED_FUNCTION_0_13();
      v47(v46);
      *(v2 + 8) = v30;
      return (*(v7 + 32))(a2, v14, v6);
    }

    goto LABEL_49;
  }

  return (*(v7 + 32))(a2, v14, v6);
}

void sub_217290620(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_217751968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  OUTLINED_FUNCTION_14_2();
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v56 - v15;
  if (*(v3 + 24) != 1)
  {
    v40 = *(v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
    v41 = OUTLINED_FUNCTION_2_16();
    *(v41 + 16) = xmmword_217759200;
    *(v41 + 32) = v40;
    *(v41 + 40) = a1;
    OUTLINED_FUNCTION_13();

LABEL_50:
    JUMPOUT(0x21CEA1CB0);
  }

  MEMORY[0x21CEA1CB0](a2, v14);
  v17 = *(v3 + 32);
  v18 = *(v3 + 8);
  v19 = OUTLINED_FUNCTION_34_2();
  v21 = sub_21729093C(v19, v20);
  if ((v23 & 1) == 0 && v21 <= a1 && v22 >= a1)
  {
    v3 = a1 - v21;
    if (!__OFSUB__(a1, v21))
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  v4 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v21 = sub_21729093C(v18 + 1, v17);
  if ((v26 & 1) == 0 && v21 <= a1 && v25 >= a1)
  {
LABEL_37:
    *(v3 + 8) = v4;
    v3 = a1 - v21;
    if (!__OFSUB__(a1, v21))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v43 = OUTLINED_FUNCTION_2_16();
      *(v43 + 16) = xmmword_217759200;
      *(v43 + 32) = v4;
LABEL_41:
      *(v43 + 40) = v3;
      MEMORY[0x21CEA1CB0]();
      v44 = OUTLINED_FUNCTION_1_10();
      v45(v44);
      v46 = *(v9 + 32);
      v47 = OUTLINED_FUNCTION_16_0();
      v48(v47);
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v28 = __OFSUB__(v18--, 1);
  if (v28)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v29 = OUTLINED_FUNCTION_34_2();
  v31 = sub_21729093C(v29, v30);
  if ((v33 & 1) == 0 && v31 <= a1 && v32 >= a1)
  {
    *(v3 + 8) = v18;
    v3 = a1 - v31;
    if (!__OFSUB__(a1, v31))
    {
LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v43 = OUTLINED_FUNCTION_2_16();
      *(v43 + 16) = xmmword_217759200;
      *(v43 + 32) = v18;
      goto LABEL_41;
    }

    goto LABEL_48;
  }

  v35 = *(v17 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = (v17 + 40);
    while (1)
    {
      v38 = *(v37 - 1);
      if (v38 <= a1 && *v37 >= a1)
      {
        break;
      }

      v37 += 2;
      if (v35 == ++v36)
      {
        goto LABEL_42;
      }
    }

    v28 = __OFSUB__(a1, v38);
    v49 = a1 - v38;
    if (!v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B30, &unk_217759370);
      v50 = OUTLINED_FUNCTION_2_16();
      *(v50 + 16) = xmmword_217759200;
      *(v50 + 32) = v36;
      *(v50 + 40) = v49;
      MEMORY[0x21CEA1CB0]();
      v51 = OUTLINED_FUNCTION_1_10();
      v52(v51);
      v53 = *(v9 + 32);
      v54 = OUTLINED_FUNCTION_16_0();
      v55(v54);
      *(v3 + 8) = v36;
      goto LABEL_42;
    }

    goto LABEL_49;
  }

LABEL_42:
  (*(v9 + 32))(a3, v16, v8);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21729093C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0 || *(a2 + 16) <= a1)
  {
    return 0;
  }

  v2 = a2 + 16 * a1;
  result = *(v2 + 32);
  v4 = *(v2 + 40);
  return result;
}

void PlaylistPropertyProvider.hasOnlyExplicitContent.getter()
{
  v2 = v0;
  v3 = type metadata accessor for PlaylistPropertyProvider();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x28223BE20](v10, v11);
  MEMORY[0x28223BE20](v12, v13);
  MEMORY[0x28223BE20](v14, v15);
  v19 = &v128 - v18;
  v20 = *(v0 + 1505);
  if (v20 != 2)
  {
    if (qword_280BE8358 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v131 = v17;
  v132 = v16;
  sub_2171F50C0(v0 + *(v3 + 224), v148, &unk_27CB28A60, &qword_217770B60);
  if (!v148[11])
  {
    v62 = &unk_27CB28A60;
    v63 = &qword_217770B60;
    v64 = v148;
LABEL_35:
    sub_2171F0738(v64, v62, v63);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v65 = sub_217751AF8();
    __swift_project_value_buffer(v65, qword_280C02570);
    OUTLINED_FUNCTION_1_11();
    v66 = OUTLINED_FUNCTION_16_0();
    sub_21729C8B0(v66, v67, v68);
    v69 = sub_217751AD8();
    v70 = sub_217752828();
    if (OUTLINED_FUNCTION_39_1(v70))
    {
      v71 = OUTLINED_FUNCTION_55();
      v148[0] = OUTLINED_FUNCTION_46_5();
      *v71 = 136315394;
      v72 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
      OUTLINED_FUNCTION_37_1(v72);
      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v73);
      v74 = sub_21729C0E8(v19, v20, v148);

      *(v71 + 14) = v74;
      OUTLINED_FUNCTION_57_3();
      _os_log_impl(v75, v76, v77, v78, v71, 0x16u);
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v79);
    }

    goto LABEL_61;
  }

  v128 = v0;
  memcpy(__dst, v148, 0x68uLL);
  v21 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v21 = *(v21 + 56);
  }

  if (!*(v21 + 16))
  {
    v62 = &qword_27CB240D0;
    v63 = &unk_21775D400;
    v64 = __dst;
    goto LABEL_35;
  }

  v129 = v2;
  v130 = v3;
  v2 = &v140;
  OUTLINED_FUNCTION_75_1(__dst, &v145);
  OUTLINED_FUNCTION_75_1(&v145, v148);
  v22 = v145;
  v23 = v146;
  sub_217283C5C(v145, v146);
  sub_2171F0738(&v145, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v22, v23);
  v19 = 0;
  v149 = 0;
  v24 = v148[0];
  v25 = LOBYTE(v148[1]);
  v133 = v148[0] + 32;
  while (!v25)
  {
    v28 = *(v24 + 16);
    if (v19 == v28)
    {
LABEL_40:
      sub_2171F0738(v148, &qword_27CB27E10, &qword_21776BCB0);
      v80 = 1;
      goto LABEL_43;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    if (v19 >= v28)
    {
      goto LABEL_65;
    }

    sub_2171F50C0(v133 + (v19 << 6), &v145, &dword_27CB27E20, &unk_2177589C0);
    sub_2171F50C0(&v145, v134, &dword_27CB27E20, &unk_2177589C0);
    if (v135[41])
    {
      v29 = *(v134[0] + 16);
      v30 = *(v134[0] + 24);
      v31 = *(v134[0] + 32);
      sub_217283C5C(v24, 0);
      sub_217751DE8();
      v32 = OUTLINED_FUNCTION_1_5();
      sub_21729366C(v32);

      sub_2171F0738(&v145, &dword_27CB27E20, &unk_2177589C0);
    }

    else
    {
      sub_217751DE8();
      sub_2171F0738(&v145, &dword_27CB27E20, &unk_2177589C0);
      OUTLINED_FUNCTION_34_1();
    }

    v142[0] = *v138;
    *(v142 + 9) = *&v138[9];
    v143 = v136;
    v144 = v137;
    v33 = OUTLINED_FUNCTION_50();
    sub_21725CF00(v33, 0);
    ++v19;
LABEL_19:
    v149 = v19;
    sub_217275710(&v143, &v145);
    if (v147)
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE6D00 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v135, &v140);
      v34 = *&v142[0];
      __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      v35 = OUTLINED_FUNCTION_26_7();
      v36(v35, v34);
      v37 = *(&v137 + 1);
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      v38 = OUTLINED_FUNCTION_45_5();
      v39(v38, &type metadata for MusicVideo, &type metadata for ContentRating, v37);
      sub_217283C08(v134);
    }

    else
    {
      OUTLINED_FUNCTION_27_2();
      if (qword_280BE9878 != -1)
      {
        swift_once();
      }

      sub_21729C5E8(v135, &v140);
      v40 = *&v142[0];
      __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      v41 = OUTLINED_FUNCTION_26_7();
      v42(v41, v40);
      v43 = *(&v137 + 1);
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      v44 = OUTLINED_FUNCTION_45_5();
      v45(v44, &type metadata for Song, &type metadata for ContentRating, v43);
      sub_217283B58(v134);
    }

    __swift_destroy_boxed_opaque_existential_1(&v136);
    sub_21729C644(&v140);
    v46 = v139;
    if (v139 == 2)
    {
      sub_2171F0738(v148, &qword_27CB27E10, &qword_21776BCB0);
      sub_21727576C(&v143);
      goto LABEL_42;
    }

    sub_21727576C(&v143);
    if ((v46 & 1) == 0)
    {
      sub_2171F0738(v148, &qword_27CB27E10, &qword_21776BCB0);
LABEL_42:
      v80 = 0;
LABEL_43:
      sub_2171F50C0(&__dst[2], v148, &qword_27CB24188, &dword_217758930);
      v81 = v148[3];
      sub_2171F0738(v148, &qword_27CB24188, &dword_217758930);
      v82 = v130;
      if (v81)
      {
        if (v80)
        {
          v83 = v129;
          if (qword_280BE8358 != -1)
          {
            OUTLINED_FUNCTION_3();
          }

          v84 = sub_217751AF8();
          __swift_project_value_buffer(v84, qword_280C02570);
          OUTLINED_FUNCTION_1_11();
          v85 = v131;
          sub_21729C8B0(v83, v131, v86);
          v87 = sub_217751AD8();
          v88 = sub_217752828();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = OUTLINED_FUNCTION_55();
            v148[0] = OUTLINED_FUNCTION_46_5();
            *v89 = 136315394;
            v90 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
            OUTLINED_FUNCTION_33_5(v90);
            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v85, v91);
            v92 = OUTLINED_FUNCTION_34_2();
            v95 = sub_21729C0E8(v92, v93, v94);

            *(v89 + 14) = v95;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_28_4();
            OUTLINED_FUNCTION_28_4();
          }

          else
          {

            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v85, v127);
          }

          sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_61:
          PlaylistPropertyProvider.hasExplicitContent.getter();
          goto LABEL_62;
        }

        v109 = v129;
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v110 = sub_217751AF8();
        __swift_project_value_buffer(v110, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v99 = v132;
        sub_21729C8B0(v109, v132, v111);
        v101 = sub_217751AD8();
        v112 = sub_217752828();
        if (OUTLINED_FUNCTION_44_4(v112))
        {
          OUTLINED_FUNCTION_55();
          v148[0] = OUTLINED_FUNCTION_25_7();
          *v109 = 136315394;
          v113 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
          OUTLINED_FUNCTION_18_8(v113);
          v114 = (v99 + *(v82 + 268));
          v115 = *v114;
          v116 = v114[1];
          sub_217751DE8();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v99, v117);
          v118 = OUTLINED_FUNCTION_15();
          sub_21729C0E8(v118, v119, v120);
          OUTLINED_FUNCTION_76_2();
          *(v109 + 14) = v115;
          OUTLINED_FUNCTION_24_9();
          _os_log_impl(v121, v122, v123, v124, v125, 0x16u);
          OUTLINED_FUNCTION_41_5();
          OUTLINED_FUNCTION_23_10();
          OUTLINED_FUNCTION_22_7();

          goto LABEL_58;
        }
      }

      else
      {
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v98 = sub_217751AF8();
        __swift_project_value_buffer(v98, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v99 = v128;
        sub_21729C8B0(v129, v128, v100);
        v101 = sub_217751AD8();
        v102 = sub_217752828();
        if (OUTLINED_FUNCTION_39_1(v102))
        {
          OUTLINED_FUNCTION_73_4();
          v148[0] = OUTLINED_FUNCTION_25_7();
          MEMORY[0] = 136315650;
          v103 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
          OUTLINED_FUNCTION_18_8(v103);
          OUTLINED_FUNCTION_66_1();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v99, v104);
          sub_21729C0E8(&dword_27CB27E20, v82, v148);

          OUTLINED_FUNCTION_64_3();
          OUTLINED_FUNCTION_57_3();
          _os_log_impl(v105, v106, v107, v108, 0, 0x1Cu);
          OUTLINED_FUNCTION_40_7();
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_22_7();

LABEL_58:
          sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
          goto LABEL_62;
        }
      }

      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v99, v126);
      goto LABEL_58;
    }
  }

  swift_beginAccess();
  if (v19 == *(*(v24 + 56) + 16))
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_21_8();
  sub_217294454();
  v143 = v140;
  v144 = v141;
  v26 = OUTLINED_FUNCTION_50();
  sub_21725CF00(v26, 1);
  if (!__OFADD__(v19++, 1))
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  OUTLINED_FUNCTION_3();
LABEL_30:
  v47 = sub_217751AF8();
  __swift_project_value_buffer(v47, qword_280C02570);
  OUTLINED_FUNCTION_1_11();
  sub_21729C8B0(v2, v19, v48);
  v49 = sub_217751AD8();
  v50 = sub_217752828();
  if (OUTLINED_FUNCTION_44_4(v50))
  {
    OUTLINED_FUNCTION_73_4();
    v148[0] = OUTLINED_FUNCTION_25_7();
    *v2 = 136315650;
    v51 = OUTLINED_FUNCTION_16_6("hasOnlyExplicitContent");
    OUTLINED_FUNCTION_18_8(v51);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v19, v52);
    v53 = OUTLINED_FUNCTION_15();
    sub_21729C0E8(v53, v54, v55);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_9();
    _os_log_impl(v56, v57, v58, v59, v60, 0x1Cu);
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_22_7();
  }

  else
  {

    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v19, v61);
  }

LABEL_62:
  OUTLINED_FUNCTION_13();
}

void PlaylistPropertyProvider.hasOnlyExplicitDownloadedContent.getter()
{
  v2 = v0;
  v3 = type metadata accessor for PlaylistPropertyProvider();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v130 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v130 - v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_62_3();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v130 - v20;
  v22 = *(v0 + 1504);
  if (v22 != 2)
  {
    if (qword_280BE8358 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_27;
  }

  sub_2171F50C0(v0 + *(v3 + 224), v152, &unk_27CB28A60, &qword_217770B60);
  if (!v152[11])
  {
    v60 = &unk_27CB28A60;
    v61 = &qword_217770B60;
    v62 = v152;
LABEL_32:
    sub_2171F0738(v62, v60, v61);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v63 = sub_217751AF8();
    __swift_project_value_buffer(v63, qword_280C02570);
    OUTLINED_FUNCTION_1_11();
    v64 = OUTLINED_FUNCTION_16_0();
    sub_21729C8B0(v64, v65, v66);
    v67 = sub_217751AD8();
    v68 = sub_217752828();
    if (OUTLINED_FUNCTION_39_1(v68))
    {
      v69 = OUTLINED_FUNCTION_55();
      v152[0] = OUTLINED_FUNCTION_46_5();
      *v69 = 136315394;
      v70 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
      OUTLINED_FUNCTION_37_1(v70);
      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v71);
      v72 = sub_21729C0E8(v21, v22, v152);

      *(v69 + 14) = v72;
      OUTLINED_FUNCTION_57_3();
      _os_log_impl(v73, v74, v75, v76, v69, 0x16u);
      OUTLINED_FUNCTION_40_7();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_14();
      sub_21729C910(v1, v77);
    }

    goto LABEL_59;
  }

  v132 = v0;
  memcpy(__dst, v152, 0x68uLL);
  v23 = __dst[0];
  if (LOBYTE(__dst[1]) == 1)
  {
    OUTLINED_FUNCTION_70();
    v23 = *(v23 + 56);
  }

  if (!*(v23 + 16))
  {
    v60 = &qword_27CB240D0;
    v61 = &unk_21775D400;
    v62 = __dst;
    goto LABEL_32;
  }

  v130 = v15;
  v131 = v11;
  v133 = v3;
  v134 = v2;
  v2 = &v141;
  OUTLINED_FUNCTION_75_1(__dst, v149);
  OUTLINED_FUNCTION_75_1(v149, v152);
  v24 = *&v149[0];
  v25 = BYTE8(v149[0]);
  sub_217283C5C(*&v149[0], SBYTE8(v149[0]));
  sub_2171F0738(v149, &qword_27CB240D0, &unk_21775D400);
  sub_21725CF00(v24, v25);
  v21 = 0;
  v153 = 0;
  v26 = v152[0];
  v27 = v152[0] + 32;
  v28 = &unk_27CB24B38;
  v135 = LOBYTE(v152[1]);
  v29 = &dword_27CB27E20;
  while (v135)
  {
    swift_beginAccess();
    if (v21 == *(*(v26 + 56) + 16))
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_21_8();
    sub_217294454();
    v147 = v144;
    v148 = v145;
    v30 = OUTLINED_FUNCTION_52_3();
    sub_21725CF00(v30, 1);
    if (__OFADD__(v21++, 1))
    {
      goto LABEL_63;
    }

LABEL_19:
    v153 = v21;
    sub_217275710(&v147, v149);
    if (v151)
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283C08(v136);
    }

    else
    {
      OUTLINED_FUNCTION_29_7();
      sub_217283B58(v136);
    }

    v149[0] = v141;
    v149[1] = v142;
    v29 = v143;
    v150 = v143;
    __swift_project_boxed_opaque_existential_1(v149, *(&v142 + 1));
    v40 = OUTLINED_FUNCTION_26_7();
    v41(v40, v29);
    sub_21729C644(v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, &unk_21776C4E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *&v146[0] = 0;
      v144 = 0u;
      v145 = 0u;
LABEL_39:
      sub_2171F0738(&v144, &qword_27CB24B48, &qword_21777F0F0);
      sub_21727576C(&v147);
LABEL_40:
      v78 = 0;
LABEL_41:
      sub_2171F0738(v152, &qword_27CB27E10, &qword_21776BCB0);
      sub_2171F50C0(&__dst[2], v152, &qword_27CB24188, &dword_217758930);
      v79 = v152[3];
      sub_2171F0738(v152, &qword_27CB24188, &dword_217758930);
      v80 = v133;
      if (v79)
      {
        if (v78)
        {
          v81 = v134;
          if (qword_280BE8358 != -1)
          {
            OUTLINED_FUNCTION_3();
          }

          v82 = sub_217751AF8();
          __swift_project_value_buffer(v82, qword_280C02570);
          OUTLINED_FUNCTION_1_11();
          v83 = v132;
          sub_21729C8B0(v81, v132, v84);
          v85 = sub_217751AD8();
          v86 = sub_217752828();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = OUTLINED_FUNCTION_55();
            v152[0] = OUTLINED_FUNCTION_46_5();
            *v87 = 136315394;
            v88 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
            OUTLINED_FUNCTION_33_5(v88);
            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v83, v89);
            v90 = OUTLINED_FUNCTION_34_2();
            v93 = sub_21729C0E8(v90, v91, v92);

            *(v87 + 14) = v93;
            swift_arrayDestroy();
            OUTLINED_FUNCTION_28_4();
            OUTLINED_FUNCTION_28_4();
          }

          else
          {

            OUTLINED_FUNCTION_0_14();
            sub_21729C910(v83, v128);
          }

          sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
LABEL_59:
          PlaylistPropertyProvider.hasExplicitContent.getter();
          goto LABEL_60;
        }

        v107 = v134;
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v108 = sub_217751AF8();
        __swift_project_value_buffer(v108, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v109 = v130;
        sub_21729C8B0(v107, v130, v110);
        v111 = sub_217751AD8();
        v112 = sub_217752828();
        if (OUTLINED_FUNCTION_44_4(v112))
        {
          OUTLINED_FUNCTION_55();
          v152[0] = OUTLINED_FUNCTION_25_7();
          *v107 = 136315394;
          v113 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
          OUTLINED_FUNCTION_18_8(v113);
          v114 = (v109 + *(v80 + 268));
          v115 = v109;
          v116 = *v114;
          v117 = v114[1];
          sub_217751DE8();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v115, v118);
          v119 = OUTLINED_FUNCTION_15();
          sub_21729C0E8(v119, v120, v121);
          OUTLINED_FUNCTION_76_2();
          *(v107 + 14) = v116;
          OUTLINED_FUNCTION_24_9();
          _os_log_impl(v122, v123, v124, v125, v126, 0x16u);
          OUTLINED_FUNCTION_41_5();
          OUTLINED_FUNCTION_23_10();
          OUTLINED_FUNCTION_22_7();
        }

        else
        {

          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v109, v129);
        }
      }

      else
      {
        if (qword_280BE8358 != -1)
        {
          OUTLINED_FUNCTION_3();
        }

        v96 = sub_217751AF8();
        __swift_project_value_buffer(v96, qword_280C02570);
        OUTLINED_FUNCTION_1_11();
        v97 = v131;
        sub_21729C8B0(v134, v131, v98);
        v99 = sub_217751AD8();
        v100 = sub_217752828();
        if (OUTLINED_FUNCTION_39_1(v100))
        {
          OUTLINED_FUNCTION_73_4();
          v152[0] = OUTLINED_FUNCTION_25_7();
          MEMORY[0] = 136315650;
          v101 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
          OUTLINED_FUNCTION_18_8(v101);
          OUTLINED_FUNCTION_66_1();
          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v97, v102);
          sub_21729C0E8(v29, v80, v152);

          OUTLINED_FUNCTION_64_3();
          OUTLINED_FUNCTION_57_3();
          _os_log_impl(v103, v104, v105, v106, 0, 0x1Cu);
          OUTLINED_FUNCTION_40_7();
          OUTLINED_FUNCTION_28_4();
          OUTLINED_FUNCTION_22_7();
        }

        else
        {

          OUTLINED_FUNCTION_0_14();
          sub_21729C910(v97, v127);
        }
      }

      sub_2171F0738(__dst, &qword_27CB240D0, &unk_21775D400);
      goto LABEL_60;
    }

    v42 = *(&v145 + 1);
    if (!*(&v145 + 1))
    {
      goto LABEL_39;
    }

    v43 = *&v146[0];
    __swift_project_boxed_opaque_existential_1(&v144, *(&v145 + 1));
    v44 = (*(v43 + 104))(v42, v43);
    __swift_destroy_boxed_opaque_existential_1(&v144);
    sub_21727576C(&v147);
    v29 = &dword_27CB27E20;
    if ((v44 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v32 = *(v26 + 16);
  if (v21 == v32)
  {
LABEL_37:
    v78 = 1;
    goto LABEL_41;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21 >= v32)
    {
      goto LABEL_64;
    }

    sub_2171F50C0(v27 + (v21 << 6), v149, &dword_27CB27E20, &unk_2177589C0);
    sub_2171F50C0(v149, v136, &dword_27CB27E20, &unk_2177589C0);
    if (v137)
    {
      v33 = *(v136[0] + 16);
      v34 = *(v136[0] + 24);
      v35 = v28;
      v36 = v27;
      v37 = *(v136[0] + 32);
      sub_217283C5C(v26, 0);
      sub_217751DE8();
      v38 = OUTLINED_FUNCTION_1_5();
      v27 = v36;
      v28 = v35;
      sub_21729366C(v38);

      sub_2171F0738(v149, &dword_27CB27E20, &unk_2177589C0);
    }

    else
    {
      sub_217751DE8();
      sub_2171F0738(v149, &dword_27CB27E20, &unk_2177589C0);
      OUTLINED_FUNCTION_34_1();
    }

    v146[0] = v140[0];
    *(v146 + 9) = *(v140 + 9);
    v147 = v138;
    v148 = v139;
    v39 = OUTLINED_FUNCTION_52_3();
    sub_21725CF00(v39, 0);
    ++v21;
    goto LABEL_19;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  OUTLINED_FUNCTION_3();
LABEL_27:
  v45 = sub_217751AF8();
  __swift_project_value_buffer(v45, qword_280C02570);
  OUTLINED_FUNCTION_1_11();
  sub_21729C8B0(v2, v21, v46);
  v47 = sub_217751AD8();
  v48 = sub_217752828();
  if (OUTLINED_FUNCTION_44_4(v48))
  {
    OUTLINED_FUNCTION_73_4();
    v152[0] = OUTLINED_FUNCTION_25_7();
    *v2 = 136315650;
    v49 = OUTLINED_FUNCTION_15_11("hasOnlyExplicitDownloadedContent");
    OUTLINED_FUNCTION_18_8(v49);
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v21, v50);
    v51 = OUTLINED_FUNCTION_15();
    sub_21729C0E8(v51, v52, v53);
    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_9();
    _os_log_impl(v54, v55, v56, v57, v58, 0x1Cu);
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_22_7();
  }

  else
  {

    OUTLINED_FUNCTION_0_14();
    sub_21729C910(v21, v59);
  }

LABEL_60:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217291F64()
{
  sub_217293DCC(v4);
  v0 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v1 = OUTLINED_FUNCTION_51_2();
    v0 = v2(v1);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2171F0738(v4, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v0 & 1;
}

uint64_t sub_21729201C(void (*a1)(void *__return_ptr))
{
  sub_217293EA0(a1, v5);
  v1 = v6;
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = OUTLINED_FUNCTION_51_2();
    v1 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_2171F0738(v5, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t PlaylistPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  v1 = type metadata accessor for PlaylistPropertyProvider();
  v2 = *(v0 + *(v1 + 156));
  if (*(v0 + 1368))
  {
    if (v2 != 2)
    {
      return (*(v0 + *(v1 + 204)) & 0xFD) == 1;
    }
  }

  else if (v2 != 2 && *(v0 + 1360) <= 0)
  {
    return (*(v0 + *(v1 + 204)) & 0xFD) == 1;
  }

  return 1;
}

uint64_t PlaylistPropertyProvider.isLibraryAddedContainer.getter()
{
  v1 = type metadata accessor for PlaylistPropertyProvider();
  v2 = *(v0 + v1[37]);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = (*(v0 + v1[67] + 144) != 0) | *(v0 + v1[45]);
  }

  return v3 & 1;
}

uint64_t sub_217292370@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v13 - v7;
  v9 = *(v2 + 24);
  swift_bridgeObjectRetain_n();

  sub_217586664(v9, v2, v16);
  sub_2171F50C0(v16, v13, &qword_27CB24B50, &qword_2177595A0);
  if (v13[3])
  {
    sub_2171FF30C(v13, v14);
    sub_21729C698(v13);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB24B50, &qword_2177595A0);
    memset(v14, 0, sizeof(v14));
    v15 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27590, &qword_21776ADF0);
  v10 = type metadata accessor for MusicPersonalRecommendation();
  if (swift_dynamicCast())
  {
    sub_2171F0738(v16, &qword_27CB24B50, &qword_2177595A0);

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    return sub_21729C84C(v8, a1);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
    sub_2171F0738(v8, &qword_27CB24B58, &unk_21775A2A0);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6F2065737573694DLL, 0xEA00000000002066);
    OUTLINED_FUNCTION_20_8();
    v12 = sub_217753348();
    MEMORY[0x21CEA23B0](v12);

    MEMORY[0x21CEA23B0](0xD000000000000035, 0x80000002177AB110);
    result = OUTLINED_FUNCTION_4_0();
    __break(1u);
  }

  return result;
}

double sub_217293DCC@<D0>(uint64_t a1@<X8>)
{
  sub_21729C5E8(v1 + 16, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = OUTLINED_FUNCTION_36_4();
  v4(v3);
  sub_21729C644(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
  if ((OUTLINED_FUNCTION_56_3() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_217293EA0@<D0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = OUTLINED_FUNCTION_36_4();
  v4(v3);
  sub_21729C644(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B40, &qword_217759400);
  if ((OUTLINED_FUNCTION_56_3() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_217293F44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  sub_2171F50C0(v2, &v16 - v9, &qword_27CB24978, &qword_21776DBA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_21729C84C(v10, a1);
  }

  v11 = *v10;
  v12 = *(*v10 + 16);
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  sub_217751DE8();

  sub_217292370(a1);
}

void sub_217294230(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_48_4(a1, a2, a3, a4, a5, a6, a7, a8, v20);
  if (v23)
  {
    OUTLINED_FUNCTION_71_3(v10, v11, v12, v13, v14, v15, v16, v17, v20);

    v19 = OUTLINED_FUNCTION_1_5();
    v9(v19);
  }

  else
  {
    OUTLINED_FUNCTION_63_2(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21, v18);
    *(v8 + 48) = v22;
  }
}

__n128 sub_217294308(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_48_4(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  if (v24)
  {
    OUTLINED_FUNCTION_71_3(v10, v11, v12, v13, v14, v15, v16, v17, v21);

    v19 = OUTLINED_FUNCTION_1_5();
    v9(v19);
  }

  else
  {
    OUTLINED_FUNCTION_63_2(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v18);
    result = v23;
    *(v8 + 41) = v23;
  }

  return result;
}

uint64_t sub_2172943A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_217294DE8(v2, a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_217294454()
{
  OUTLINED_FUNCTION_47_4();

  os_unfair_lock_lock(v2);
  v3 = OUTLINED_FUNCTION_60_4();
  v0(v3);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2172944FC()
{
  OUTLINED_FUNCTION_47_4();

  os_unfair_lock_lock(v2);
  v3 = OUTLINED_FUNCTION_60_4();
  v0(v3);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_2172946AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v36 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v50 = v12;
  result = sub_2171F50C0(v17 + (a2 << 6) + 32, v49, &unk_27CB2AF10, &unk_217787490);
  if (v49[56] != 255)
  {
    v19 = *&v49[16];
    *a3 = *v49;
    a3[1] = v19;
    a3[2] = *&v49[32];
    *(a3 + 41) = *&v49[41];
    return result;
  }

  v36[2] = v3;
  sub_2171F0738(v49, &unk_27CB2AF10, &unk_217787490);
  v20 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse.TopResult);
  v37 = v21;
  v38 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  v39 = v8;
  v40 = v7;
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959F28, v16);
  swift_endAccess();
  v7 = *(a1 + 16);
  v22 = sub_217751938();
  v16 = [v7 identifiersForItemAtIndexPath_];

  v23 = qword_27CB23C48;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v48[0] = xmmword_27CB29528;
  v48[1] = xmmword_27CB29538;
  *&v45 = *(a1 + 40);
  LOBYTE(v42) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v36[1] = v16;
  sub_2172B6904(v16, v48, &v45, &v42, v49);
  memcpy(v48, v49, 0x161uLL);
  (*(v39 + 16))(v50, v12, v40);
  sub_217269EF4(v49, &v45);
  v24 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v24;
  *&v47[0] = 0;
  v45 = 0u;
  v46 = 0u;
  v42 = xmmword_27CB29528;
  v43 = xmmword_27CB29538;
  LOBYTE(v41[0]) = *(a1 + 48);
  v25 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v48[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v48[1] + 1) = v25;
  *&v48[0] = v28;
  v29 = *(v37 + 8);

  v29(v41);
  *(&v43 + 1) = &type metadata for MusicCatalogSearchResponse.TopResult;
  v44 = &protocol witness table for MusicCatalogSearchResponse.TopResult;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
  sub_2171FF30C(v48, &v45);
  MusicCatalogSearchResponse.TopResult.init(propertyProvider:)(&v45, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_2171FF30C(&v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v46 = 0u;
    memset(v47, 0, 24);
    v45 = 0u;
    BYTE8(v47[1]) = -1;
    sub_2171F0738(&v45, &unk_27CB2AF10, &unk_217787490);
    *&v48[0] = 0;
    *(&v48[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
    goto LABEL_18;
  }

  sub_217269F50(v49);
  v48[0] = v45;
  v48[1] = v46;
  v48[2] = v47[0];
  *(&v48[2] + 9) = *(v47 + 9);
  sub_217283E1C(v48, a3);
  sub_217283E1C(a3, &v45);
  swift_beginAccess();
  v31 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503448(v31);
    v31 = v35;
    *(a1 + 56) = v35;
  }

  v34 = v39;
  v33 = v40;
  if (*(v31 + 16) > a2)
  {
    sub_21729C968(&v45, v31 + (a2 << 6) + 32, &unk_27CB2AF10, &unk_217787490);
    *(a1 + 56) = v31;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_217283E78(v48);
    (*(v34 + 8))(v12, v33);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  __break(1u);
LABEL_16:
  *v49 = 0;
  *&v49[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217294DE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MusicPersonalRecommendation();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v70 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217751968();
  v72 = *(v11 - 1);
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v68 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v80 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18 - 8, v21);
  v71 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v69 = &v58 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v58 - v28;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v30 = *(a1 + 56);
  if (*(v30 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_7:
    v78[0] = xmmword_27CB29958;
    v78[1] = xmmword_27CB29968;
    *&v75 = *(a1 + 40);
    LOBYTE(v74[0]) = 4;
    sub_217751DE8();
    sub_217751DE8();
    v58 = v19;
    sub_2172B6904(v19, v78, &v75, v74, v79);
    memcpy(v78, v79, 0x161uLL);
    (*(v72 + 16))(v68, a3, v67);
    sub_217269EF4(v79, &v75);
    v38 = [v11 itemAtIndexPathBlock];
    *(swift_allocObject() + 16) = v38;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v74[0] = xmmword_27CB29958;
    v74[1] = xmmword_27CB29968;
    v73 = *(a1 + 48);
    v39 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_217751DE8();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    *(&v76 + 1) = v39;
    v77 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *&v75 = v42;
    v43 = *(v60 + 8);

    v43(v74);
    v45 = v62;
    v44 = v63;
    v46 = *(v62 + 24);
    *(&v78[1] + 1) = v63;
    *&v78[2] = v62;
    __swift_allocate_boxed_opaque_existential_0(v78);
    v46(&v75, v74, v44, v45);
    sub_2171FF30C(v78, &v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    v47 = v69;
    if (!swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v7);
      sub_2171F0738(v47, &qword_27CB24B58, &unk_21775A2A0);
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
      MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AB220);
      goto LABEL_20;
    }

    sub_217269F50(v79);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v7);
    v48 = v70;
    sub_21729C84C(v47, v70);
    v49 = v64;
    sub_21729C8B0(v48, v64, type metadata accessor for MusicPersonalRecommendation);
    v50 = v49;
    v51 = v71;
    sub_21729C8B0(v50, v71, type metadata accessor for MusicPersonalRecommendation);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v7);
    swift_beginAccess();
    v52 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v52;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503460(v52);
      v52 = v57;
      *(a1 + 56) = v57;
    }

    v54 = v67;
    v55 = v80;
    if (*(v52 + 16) > a2)
    {
      sub_21729C968(v71, v52 + v66 + v59, &qword_27CB24B58, &unk_21775A2A0);
      *(a1 + 56) = v52;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21729C910(v48, type metadata accessor for MusicPersonalRecommendation);
      (*(v72 + 8))(v55, v54);
      return __swift_destroy_boxed_opaque_existential_1(v78);
    }

    __break(1u);
    goto LABEL_17;
  }

  v66 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v31 = v19[9] * a2;
  sub_2171F50C0(v30 + v66 + v31, v29, &qword_27CB24B58, &unk_21775A2A0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v7) != 1)
  {
    return sub_21729C84C(v29, a3);
  }

  v59 = v31;
  sub_2171F0738(v29, &qword_27CB24B58, &unk_21775A2A0);
  v32 = dynamic_cast_existential_1_conditional(v7);
  if (v32)
  {
    v60 = v33;
    v61 = v32;
    v64 = a3;
    v67 = v11;
    v34 = dynamic_cast_existential_1_conditional(v7);
    v62 = v35;
    v63 = v34;
    if (!v34)
    {
      v79[0] = 0;
      v79[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AB220);
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
      goto LABEL_20;
    }

    v65 = v3;
    swift_beginAccess();
    a3 = v80;
    sub_217290620(a2, &unk_282959FB8, v80);
    swift_endAccess();
    v11 = *(a1 + 16);
    v36 = sub_217751938();
    v19 = [v11 identifiersForItemAtIndexPath_];

    v37 = qword_27CB23C90;
    swift_unknownObjectRetain();
    if (v37 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_17:
  v79[0] = 0;
  v79[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AB220);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_20:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217295738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v36 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v50 = v12;
  result = sub_2171F50C0(v17 + (a2 << 6) + 32, v49, &unk_27CB2AEA0, &unk_21775A260);
  if (v49[56] != 255)
  {
    v19 = *&v49[16];
    *a3 = *v49;
    a3[1] = v19;
    a3[2] = *&v49[32];
    *(a3 + 41) = *&v49[41];
    return result;
  }

  v36[2] = v3;
  sub_2171F0738(v49, &unk_27CB2AEA0, &unk_21775A260);
  v20 = dynamic_cast_existential_1_conditional(&type metadata for MusicPersonalRecommendation.Item);
  v37 = v21;
  v38 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  v39 = v8;
  v40 = v7;
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959F88, v16);
  swift_endAccess();
  v7 = *(a1 + 16);
  v22 = sub_217751938();
  v16 = [v7 identifiersForItemAtIndexPath_];

  v23 = qword_27CB23D08;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v48[0] = xmmword_27CB2A5E8;
  v48[1] = xmmword_27CB2A5F8;
  *&v45 = *(a1 + 40);
  LOBYTE(v42) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v36[1] = v16;
  sub_2172B6904(v16, v48, &v45, &v42, v49);
  memcpy(v48, v49, 0x161uLL);
  (*(v39 + 16))(v50, v12, v40);
  sub_217269EF4(v49, &v45);
  v24 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v24;
  *&v47[0] = 0;
  v45 = 0u;
  v46 = 0u;
  v42 = xmmword_27CB2A5E8;
  v43 = xmmword_27CB2A5F8;
  LOBYTE(v41[0]) = *(a1 + 48);
  v25 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v48[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v48[1] + 1) = v25;
  *&v48[0] = v28;
  v29 = *(v37 + 8);

  v29(v41);
  *(&v43 + 1) = &type metadata for MusicPersonalRecommendation.Item;
  v44 = &protocol witness table for MusicPersonalRecommendation.Item;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
  sub_2171FF30C(v48, &v45);
  MusicPersonalRecommendation.Item.init(propertyProvider:)(&v45, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_2171FF30C(&v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v46 = 0u;
    memset(v47, 0, 24);
    v45 = 0u;
    BYTE8(v47[1]) = -1;
    sub_2171F0738(&v45, &unk_27CB2AEA0, &unk_21775A260);
    *&v48[0] = 0;
    *(&v48[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
    goto LABEL_18;
  }

  sub_217269F50(v49);
  v48[0] = v45;
  v48[1] = v46;
  v48[2] = v47[0];
  *(&v48[2] + 9) = *(v47 + 9);
  sub_217283ECC(v48, a3);
  sub_217283ECC(a3, &v45);
  swift_beginAccess();
  v31 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503478(v31);
    v31 = v35;
    *(a1 + 56) = v35;
  }

  v34 = v39;
  v33 = v40;
  if (*(v31 + 16) > a2)
  {
    sub_21729C968(&v45, v31 + (a2 << 6) + 32, &unk_27CB2AEA0, &unk_21775A260);
    *(a1 + 56) = v31;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_217283F28(v48);
    (*(v34 + 8))(v12, v33);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  __break(1u);
LABEL_16:
  *v49 = 0;
  *&v49[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217295E5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &unk_27CB2AF80, &qword_217758C30);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &unk_27CB2AF80, &qword_217758C30);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959EF8, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE26C0;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE26C8;
  *&v45[16] = qword_280BE26D8;
  *&v45[24] = unk_280BE26E0;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE26C8;
  v38 = qword_280BE26D8;
  v39 = unk_280BE26E0;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Station;
  v40 = &protocol witness table for Station;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Station.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217283D6C(v45, a3);
    sub_217283D6C(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503490(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &unk_27CB2AF80, &qword_217758C30);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283DC8(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &unk_27CB2AF80, &qword_217758C30);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6E6F6974617453, 0xE700000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217296480@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &unk_27CB28A90, &qword_217758F90);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &unk_27CB28A90, &qword_217758F90);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959DD8, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE84D8;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE84E0;
  *&v45[16] = qword_280BE84F0;
  *&v45[24] = unk_280BE84F8;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE84E0;
  v38 = qword_280BE84F0;
  v39 = unk_280BE84F8;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Playlist;
  v40 = &protocol witness table for Playlist;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Playlist.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_2172757C0(v45, a3);
    sub_2172757C0(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034A8(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &unk_27CB28A90, &qword_217758F90);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21726B8C4(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &unk_27CB28A90, &qword_217758F90);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x7473696C79616C50, 0xE800000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217296AA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &unk_27CB275E0, &qword_2177589D0);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &unk_27CB275E0, &qword_2177589D0);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959B20, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE85B8;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE85C0;
  *&v45[16] = qword_280BE85D0;
  *&v45[24] = unk_280BE85D8;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE85C0;
  v38 = qword_280BE85D0;
  v39 = unk_280BE85D8;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Album;
  v40 = &protocol witness table for Album;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Album.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_21725CF0C(v45, a3);
    sub_21725CF0C(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034C0(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &unk_27CB275E0, &qword_2177589D0);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21725CE44(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &unk_27CB275E0, &qword_2177589D0);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6D75626C41, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2172970C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v42 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_8:
    v57[0] = xmmword_27CB2C8C8;
    v57[1] = xmmword_27CB2C8D8;
    *&v54 = *(a1 + 40);
    LOBYTE(v51) = 4;
    sub_217751DE8();
    sub_217751DE8();
    v42[0] = v16;
    sub_2172B6904(v16, v57, &v54, &v51, v58);
    memcpy(v57, v58, 0x161uLL);
    v26 = *(v48 + 16);
    v45 = v12;
    v26(v59, v12, v49);
    sub_217269EF4(v58, &v54);
    v27 = [v7 itemAtIndexPathBlock];
    *(swift_allocObject() + 16) = v27;
    *&v56[0] = 0;
    v54 = 0u;
    v55 = 0u;
    v51 = xmmword_27CB2C8C8;
    v52 = xmmword_27CB2C8D8;
    v50[0] = *(a1 + 48);
    v28 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_217751DE8();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    *&v57[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *(&v57[1] + 1) = v28;
    *&v57[0] = v31;
    v32 = *(v43 + 8);

    v32(&v54);
    v34 = v46;
    v33 = v47;
    v35 = *(v46 + 24);
    *(&v52 + 1) = v47;
    v53 = v46;
    __swift_allocate_boxed_opaque_existential_0(&v51);
    v35(v57, &v54, v33, v34);
    sub_2171FF30C(&v51, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (!swift_dynamicCast())
    {
      v55 = 0u;
      memset(v56, 0, 24);
      v54 = 0u;
      BYTE8(v56[1]) = -1;
      sub_2171F0738(&v54, &qword_27CB2CDA0, &qword_21775A310);
      *&v57[0] = 0;
      *(&v57[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
      MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
      goto LABEL_20;
    }

    sub_217269F50(v58);
    v57[0] = v54;
    v57[1] = v55;
    v57[2] = v56[0];
    *(&v57[2] + 9) = *(v56 + 9);
    sub_2172843E8(v57, a3);
    sub_2172843E8(a3, &v54);
    swift_beginAccess();
    v36 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034D8(v36);
      v36 = v41;
      *(a1 + 56) = v41;
    }

    v39 = v48;
    v38 = v49;
    v40 = v45;
    if (*(v36 + 16) > a2)
    {
      sub_21729C968(&v54, v36 + (a2 << 6) + 32, &qword_27CB2CDA0, &qword_21775A310);
      *(a1 + 56) = v36;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217284444(v57);
      (*(v39 + 8))(v40, v38);
      return __swift_destroy_boxed_opaque_existential_1(&v51);
    }

    __break(1u);
    goto LABEL_17;
  }

  v59 = v12;
  result = sub_2171F50C0(v17 + (a2 << 6) + 32, v58, &qword_27CB2CDA0, &qword_21775A310);
  if (v58[56] != 255)
  {
    v19 = *&v58[16];
    *a3 = *v58;
    a3[1] = v19;
    a3[2] = *&v58[32];
    *(a3 + 41) = *&v58[41];
    return result;
  }

  sub_2171F0738(v58, &qword_27CB2CDA0, &qword_21775A310);
  v20 = dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse.TopResult);
  v43 = v21;
  v44 = v20;
  if (v20)
  {
    v12 = v16;
    v42[1] = v3;
    v22 = dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse.TopResult);
    v46 = v23;
    v47 = v22;
    if (!v22)
    {
      *v58 = 0;
      *&v58[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
      goto LABEL_20;
    }

    v48 = v8;
    v49 = v7;
    swift_beginAccess();
    sub_217290620(a2, &unk_282959F58, v16);
    swift_endAccess();
    v7 = *(a1 + 16);
    v24 = sub_217751938();
    v16 = [v7 identifiersForItemAtIndexPath_];

    v25 = qword_27CB23E20;
    swift_unknownObjectRetain();
    if (v25 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_17:
  *v58 = 0;
  *&v58[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_20:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2172978D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &qword_27CB277F0, &unk_21775A2B0);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &qword_27CB277F0, &unk_21775A2B0);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959E08, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BEB230;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BEB238;
  *&v45[16] = qword_280BEB248;
  *&v45[24] = unk_280BEB250;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BEB238;
  v38 = qword_280BEB248;
  v39 = unk_280BEB250;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Song;
  v40 = &protocol witness table for Song;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Song.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217283AFC(v45, a3);
    sub_217283AFC(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034F0(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &qword_27CB277F0, &unk_21775A2B0);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283B58(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &qword_27CB277F0, &unk_21775A2B0);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](1735290707, 0xE400000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217297EEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &qword_27CB24550, &qword_217758A58);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &qword_27CB24550, &qword_217758A58);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959DA8, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE7F40;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE7F48;
  *&v45[16] = qword_280BE7F58;
  *&v45[24] = unk_280BE7F60;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE7F48;
  v38 = qword_280BE7F58;
  v39 = unk_280BE7F60;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for MusicVideo;
  v40 = &protocol witness table for MusicVideo;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  MusicVideo.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217283BAC(v45, a3);
    sub_217283BAC(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503508(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &qword_27CB24550, &qword_217758A58);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283C08(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &qword_27CB24550, &qword_217758A58);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x646956636973754DLL, 0xEA00000000006F65);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217298514@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &qword_27CB2CD90, &unk_21775A2C0);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &qword_27CB2CD90, &unk_21775A2C0);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959E68, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE2A18;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE2A20;
  *&v45[16] = qword_280BE2A30;
  *&v45[24] = unk_280BE2A38;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE2A20;
  v38 = qword_280BE2A30;
  v39 = unk_280BE2A38;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Artist;
  v40 = &protocol witness table for Artist;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Artist.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_21725CF68(v45, a3);
    sub_21725CF68(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503520(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &qword_27CB2CD90, &unk_21775A2C0);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217284498(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &qword_27CB2CD90, &unk_21775A2C0);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x747369747241, 0xE600000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217298B34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &unk_27CB2AF60, &qword_217758C00);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &unk_27CB2AF60, &qword_217758C00);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959EC8, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE5130;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE5138;
  *&v45[16] = qword_280BE5148;
  *&v45[24] = unk_280BE5150;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE5138;
  v38 = qword_280BE5148;
  v39 = unk_280BE5150;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for RecordLabel;
  v40 = &protocol witness table for RecordLabel;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  RecordLabel.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217283C68(v45, a3);
    sub_217283C68(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503538(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &unk_27CB2AF60, &qword_217758C00);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283CC4(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &unk_27CB2AF60, &qword_217758C00);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x614C64726F636552, 0xEB000000006C6562);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217299160@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &qword_27CB24678, &qword_217758BD0);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &qword_27CB24678, &qword_217758BD0);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959E98, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE23C0;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE23C8;
  *&v45[16] = qword_280BE23D8;
  *&v45[24] = unk_280BE23E0;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE23C8;
  v38 = qword_280BE23D8;
  v39 = unk_280BE23E0;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for RadioShow;
  v40 = &protocol witness table for RadioShow;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  RadioShow.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217284338(v45, a3);
    sub_217284338(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503550(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &qword_27CB24678, &qword_217758BD0);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217284394(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &qword_27CB24678, &qword_217758BD0);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6F68536F69646152, 0xE900000000000077);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217299788@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v36 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v51 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v50, &qword_27CB246E8, &qword_21776C140);
  if (*&v50[8])
  {
    v19 = *&v50[16];
    *a3 = *v50;
    *(a3 + 16) = v19;
    *(a3 + 32) = *&v50[32];
    *(a3 + 48) = *&v50[48];
    return result;
  }

  v36[2] = v3;
  sub_2171F0738(v50, &qword_27CB246E8, &qword_21776C140);
  v20 = dynamic_cast_existential_1_conditional(&type metadata for Curator);
  v37 = v21;
  v38 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  v39 = v8;
  v40 = v7;
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_282959E38, v16);
  swift_endAccess();
  v7 = *(a1 + 16);
  v22 = sub_217751938();
  v16 = [v7 identifiersForItemAtIndexPath_];

  v23 = qword_280BE7660;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v49[0] = xmmword_280BE7668;
  v49[1] = xmmword_280BE7678;
  *&v45 = *(a1 + 40);
  LOBYTE(v42) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v36[1] = v16;
  sub_2172B6904(v16, v49, &v45, &v42, v50);
  memcpy(v49, v50, 0x161uLL);
  (*(v39 + 16))(v51, v12, v40);
  sub_217269EF4(v50, &v45);
  v24 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v24;
  *&v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v42 = xmmword_280BE7668;
  v43 = xmmword_280BE7678;
  LOBYTE(v41[0]) = *(a1 + 48);
  v25 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v49[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v49[1] + 1) = v25;
  *&v49[0] = v28;
  v29 = *(v37 + 8);

  v29(v41);
  *(&v43 + 1) = &type metadata for Curator;
  v44 = &protocol witness table for Curator;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
  sub_2171FF30C(v49, &v45);
  Curator.init(propertyProvider:)(&v45, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_2171FF30C(&v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    sub_2171F0738(&v45, &qword_27CB246E8, &qword_21776C140);
    *&v49[0] = 0;
    *(&v49[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](0x726F7461727543, 0xE700000000000000);
    goto LABEL_18;
  }

  sub_217269F50(v50);
  v49[0] = v45;
  v49[1] = v46;
  v49[2] = v47;
  *&v49[3] = v48;
  sub_217284288(v49, a3);
  sub_217284288(a3, &v45);
  swift_beginAccess();
  v31 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503568(v31);
    v31 = v35;
    *(a1 + 56) = v35;
  }

  v34 = v39;
  v33 = v40;
  if (*(v31 + 16) > a2)
  {
    sub_21729C968(&v45, v31 + 56 * a2 + 32, &qword_27CB246E8, &qword_21776C140);
    *(a1 + 56) = v31;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_2172842E4(v49);
    (*(v34 + 8))(v12, v33);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  __break(1u);
LABEL_16:
  *v50 = 0;
  *&v50[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0x726F7461727543, 0xE700000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217299EAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = sub_217751968();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8, v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v35 - v16;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = *(a1 + 56);
  if (*(v18 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  result = sub_2171F50C0(v18 + (a2 << 6) + 32, v46, &unk_27CB28AA0, &qword_21775A020);
  if (v47[24] != 255)
  {
    v20 = v46[1];
    *a3 = v46[0];
    a3[1] = v20;
    a3[2] = *v47;
    *(a3 + 41) = *&v47[9];
    return result;
  }

  v36 = v9;
  v48 = v8;
  v35[1] = v3;
  sub_2171F0738(v46, &unk_27CB28AA0, &qword_21775A020);
  swift_beginAccess();
  sub_217290620(a2, &unk_282959FE8, v17);
  swift_endAccess();
  v9 = *(a1 + 16);
  v21 = sub_217751938();
  v22 = [v9 identifiersForItemAtIndexPath_];

  v4 = v22;
  v23 = qword_280BE8588;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v44[0] = xmmword_280BE8590;
  v44[1] = xmmword_280BE85A0;
  *&v41 = *(a1 + 40);
  LOBYTE(v38) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v35[0] = v4;
  sub_2172B6904(v4, v44, &v41, &v38, v45);
  memcpy(v44, v45, 0x161uLL);
  (v36[2])(v13, v17, v48);
  sub_217269EF4(v45, &v41);
  v24 = [v9 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v24;
  *&v43[0] = 0;
  v41 = 0u;
  v42 = 0u;
  v38 = xmmword_280BE8590;
  v39 = xmmword_280BE85A0;
  v37[0] = *(a1 + 48);
  v25 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v44[1] + 1) = v25;
  *&v44[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v44[0] = v28;
  *(&v39 + 1) = &type metadata for Track;
  v40 = &protocol witness table for Track;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v38);
  sub_2171FF30C(v44, &v41);

  Track.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_2171FF30C(&v38, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v45);
    v44[0] = v41;
    v44[1] = v42;
    v44[2] = v43[0];
    *(&v44[2] + 9) = *(v43 + 9);
    sub_217275710(v44, a3);
    sub_217275710(a3, &v41);
    swift_beginAccess();
    v30 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503580(v30);
      v30 = v34;
      *(a1 + 56) = v34;
    }

    v32 = v48;
    v33 = v36;
    if (*(v30 + 16) > a2)
    {
      sub_21729C968(&v41, v30 + (a2 << 6) + 32, &unk_27CB28AA0, &qword_21775A020);
      *(a1 + 56) = v30;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21727576C(v44);
      (v33[1])(v17, v32);
      return __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    __break(1u);
  }

  v42 = 0u;
  memset(v43, 0, 24);
  v41 = 0u;
  BYTE8(v43[1]) = -1;
  sub_2171F0738(&v41, &unk_27CB28AA0, &qword_21775A020);
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6B63617254, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729A4D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &unk_27CB27760, &unk_21775A2D0);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &unk_27CB27760, &unk_21775A2D0);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_28295A048, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE2A80;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE2A88;
  *&v45[16] = qword_280BE2A98;
  *&v45[24] = unk_280BE2AA0;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE2A88;
  v38 = qword_280BE2A98;
  v39 = unk_280BE2AA0;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Genre;
  v40 = &protocol witness table for Genre;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Genre.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217284130(v45, a3);
    sub_217284130(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503598(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &unk_27CB27760, &unk_21775A2D0);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21728418C(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &unk_27CB27760, &unk_21775A2D0);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x65726E6547, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729AAF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v33 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v49 = v12;
  result = sub_2171F50C0(v17 + 56 * a2 + 32, v47, &unk_27CB2ACC0, &qword_217758AA8);
  if (*(&v47[0] + 1))
  {
    v19 = v47[1];
    *a3 = v47[0];
    *(a3 + 16) = v19;
    *(a3 + 32) = v47[2];
    *(a3 + 48) = v48;
    return result;
  }

  v34 = v8;
  v35 = v7;
  v33[2] = v3;
  sub_2171F0738(v47, &unk_27CB2ACC0, &qword_217758AA8);
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_28295A018, v16);
  swift_endAccess();
  v8 = *(a1 + 16);
  v20 = sub_217751938();
  v16 = [v8 identifiersForItemAtIndexPath_];

  v21 = qword_280BE8508;
  swift_unknownObjectRetain();
  if (v21 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v45 = xmmword_280BE8510;
  *&v45[16] = qword_280BE8520;
  *&v45[24] = unk_280BE8528;
  *&v41 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v33[1] = v16;
  sub_2172B6904(v16, v45, &v41, &v37, v46);
  memcpy(v45, v46, sizeof(v45));
  (v34[2])(v49, v12, v35);
  sub_217269EF4(v46, &v41);
  v22 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v22;
  *&v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v37 = xmmword_280BE8510;
  v38 = qword_280BE8520;
  v39 = unk_280BE8528;
  v36[0] = *(a1 + 48);
  v23 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v45[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v45[24] = v23;
  *v45 = v26;
  v39 = &type metadata for Playlist.Entry;
  v40 = &protocol witness table for Playlist.Entry;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v45, &v41);

  Playlist.Entry.init(propertyProvider:)(&v41, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v46);
    *v45 = v41;
    *&v45[16] = v42;
    *&v45[32] = v43;
    *&v45[48] = v44;
    sub_217275858(v45, a3);
    sub_217275858(a3, &v41);
    swift_beginAccess();
    v28 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175035B0(v28);
      v28 = v32;
      *(a1 + 56) = v32;
    }

    v31 = v34;
    v30 = v35;
    if (*(v28 + 16) > a2)
    {
      sub_21729C968(&v41, v28 + 56 * a2 + 32, &unk_27CB2ACC0, &qword_217758AA8);
      *(a1 + 56) = v28;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_2172758B4(v45);
      (v31[1])(v12, v30);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    __break(1u);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  sub_2171F0738(&v41, &unk_27CB2ACC0, &qword_217758AA8);
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729B114@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = sub_217751968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v48 - v16;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = *(a1 + 56);
  if (*(v18 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    sub_21750363C(v4);
    v4 = v47;
    *(a1 + 56) = v47;
LABEL_10:
    v45 = v59;
    v46 = v57;
    if (*(v4 + 16) > v51)
    {
      sub_21729C968(&v67, v4 + (v51 << 6) + 32, &qword_27CB245B8, &qword_217758AE0);
      *(a1 + 56) = v4;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21729C748(v70);
      (*(v45 + 8))(v46, v58);
      return __swift_destroy_boxed_opaque_existential_1(&v63);
    }

    __break(1u);
    goto LABEL_16;
  }

  result = sub_2171F50C0(v18 + (a2 << 6) + 32, v71, &qword_27CB245B8, &qword_217758AE0);
  if (v71[56] != 255)
  {
    v20 = *&v71[16];
    *a3 = *v71;
    a3[1] = v20;
    a3[2] = *&v71[32];
    *(a3 + 41) = *&v71[41];
    return result;
  }

  sub_2171F0738(v71, &qword_27CB245B8, &qword_217758AE0);
  v21 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item);
  v52 = v22;
  v53 = v21;
  if (v21)
  {
    v23 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item);
    v54 = v24;
    v55 = v23;
    if (!v23)
    {
      *v71 = 0;
      *&v71[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
      goto LABEL_20;
    }

    v56 = v13;
    v48[2] = v3;
    v49 = a3;
    v58 = v8;
    v59 = v9;
    v25 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item);
    if (!v25)
    {
      *v71 = 0;
      *&v71[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
      goto LABEL_20;
    }

    v27 = v25;
    v28 = v26;
    swift_beginAccess();
    v51 = a2;
    sub_217290620(a2, &unk_28295BC18, v17);
    swift_endAccess();
    v50 = *(a1 + 16);
    v29 = v50;
    v30 = sub_217751938();
    v31 = [v29 identifiersForItemAtIndexPath_];

    v32 = *(v28 + 8);
    swift_unknownObjectRetain();
    v32(v70, v27, v28);
    v67 = *v70;
    v68 = *&v70[16];
    *&v63 = *(a1 + 40);
    LOBYTE(v60) = 4;
    sub_217751DE8();
    v48[1] = v31;
    sub_2172B6904(v31, &v67, &v63, &v60, v71);
    memcpy(v70, v71, sizeof(v70));
    v33 = *(v59 + 16);
    v57 = v17;
    v33(v56, v17, v58);
    sub_217269EF4(v71, &v67);
    v34 = [v50 itemAtIndexPathBlock];
    *(swift_allocObject() + 16) = v34;
    *&v69[0] = 0;
    v67 = 0u;
    v68 = 0u;
    v32(&v63, v27, v28);
    v60 = v63;
    v61 = v64;
    v62 = v65;
    v72 = *(a1 + 48);
    v35 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    *&v70[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *&v70[24] = v35;
    *v70 = v38;
    v39 = *(v52 + 8);

    v39(&v67);
    v41 = v54;
    v40 = v55;
    v42 = *(v54 + 24);
    v65 = v55;
    v66 = v54;
    __swift_allocate_boxed_opaque_existential_0(&v63);
    v42(v70, &v67, v40, v41);
    sub_2171FF30C(&v63, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v68 = 0u;
      memset(v69, 0, 24);
      v67 = 0u;
      BYTE8(v69[1]) = -1;
      sub_2171F0738(&v67, &qword_27CB245B8, &qword_217758AE0);
      *v70 = 0;
      *&v70[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      goto LABEL_20;
    }

    sub_217269F50(v71);
    *v70 = v67;
    *&v70[16] = v68;
    *&v70[32] = v69[0];
    *&v70[41] = *(v69 + 9);
    v43 = v49;
    sub_21729C6EC(v70, v49);
    sub_21729C6EC(v43, &v67);
    swift_beginAccess();
    v4 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_16:
  *v71 = 0;
  *&v71[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_20:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729B9C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v36 - v15;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = *(a1 + 56);
  if (*(v17 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v50 = v12;
  result = sub_2171F50C0(v17 + (a2 << 6) + 32, v49, &qword_27CB27D20, &qword_217758B80);
  if (v49[56] != 255)
  {
    v19 = *&v49[16];
    *a3 = *v49;
    a3[1] = v19;
    a3[2] = *&v49[32];
    *(a3 + 41) = *&v49[41];
    return result;
  }

  v36[2] = v3;
  sub_2171F0738(v49, &qword_27CB27D20, &qword_217758B80);
  v20 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry.Item);
  v37 = v21;
  v38 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

  v39 = v8;
  v40 = v7;
  swift_beginAccess();
  v12 = v16;
  sub_217290620(a2, &unk_28295BC48, v16);
  swift_endAccess();
  v7 = *(a1 + 16);
  v22 = sub_217751938();
  v16 = [v7 identifiersForItemAtIndexPath_];

  v23 = qword_27CB23CF0;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v48[0] = xmmword_27CB2A468;
  v48[1] = xmmword_27CB2A478;
  *&v45 = *(a1 + 40);
  LOBYTE(v42) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v36[1] = v16;
  sub_2172B6904(v16, v48, &v45, &v42, v49);
  memcpy(v48, v49, 0x161uLL);
  (*(v39 + 16))(v50, v12, v40);
  sub_217269EF4(v49, &v45);
  v24 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v24;
  *&v47[0] = 0;
  v45 = 0u;
  v46 = 0u;
  v42 = xmmword_27CB2A468;
  v43 = xmmword_27CB2A478;
  LOBYTE(v41[0]) = *(a1 + 48);
  v25 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v48[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v48[1] + 1) = v25;
  *&v48[0] = v28;
  v29 = *(v37 + 8);

  v29(v41);
  *(&v43 + 1) = &type metadata for Playlist.Entry.Item;
  v44 = &protocol witness table for Playlist.Entry.Item;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
  sub_2171FF30C(v48, &v45);
  Playlist.Entry.Item.init(propertyProvider:)(&v45, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_2171FF30C(&v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v46 = 0u;
    memset(v47, 0, 24);
    v45 = 0u;
    BYTE8(v47[1]) = -1;
    sub_2171F0738(&v45, &qword_27CB27D20, &qword_217758B80);
    *&v48[0] = 0;
    *(&v48[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
    goto LABEL_18;
  }

  sub_217269F50(v49);
  v48[0] = v45;
  v48[1] = v46;
  v48[2] = v47[0];
  *(&v48[2] + 9) = *(v47 + 9);
  sub_21729C79C(v48, a3);
  sub_21729C79C(a3, &v45);
  swift_beginAccess();
  v31 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503654(v31);
    v31 = v35;
    *(a1 + 56) = v35;
  }

  v34 = v39;
  v33 = v40;
  if (*(v31 + 16) > a2)
  {
    sub_21729C968(&v45, v31 + (a2 << 6) + 32, &qword_27CB27D20, &qword_217758B80);
    *(a1 + 56) = v31;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_21729C7F8(v48);
    (*(v34 + 8))(v12, v33);
    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  __break(1u);
LABEL_16:
  *v49 = 0;
  *&v49[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729C0E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_217751DE8();
  v6 = sub_21729C1AC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_21721E0AC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21729C1AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21729C2AC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_217752B88();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21729C2AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_21729C2F8(a1, a2);
  sub_21729C410(&unk_282959D80);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21729C2F8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_217752078())
  {
    result = sub_217288D34(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_217752A88();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_217752B88();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21729C410(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_21729C4F4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21729C4F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B00, &qword_2177591F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_21729C84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPersonalRecommendation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21729C8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_43(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21729C910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_21729C968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_22_7()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_29_7()
{
  v3 = *(v0 + 400);
  *(v0 + 48) = *(v0 + 384);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v0 + 416);
  *(v0 + 96) = *(v0 + 432);

  return sub_21729C5E8(v1 + 16, v0 + 184);
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return swift_arrayDestroy();
}

__n128 OUTLINED_FUNCTION_43_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v20[16] = a18;
  *&v20[8] = a17;
  *v20 = a16;
  result = *&v20[1];
  *(v18 + 41) = *&v20[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  v2 = *(*(v0 + 64) + 16);
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2171F50C0(v9, &a9, a1, a2);
}

void OUTLINED_FUNCTION_49_3()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 1026;
  *(v0 + 24) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_52_3()
{
  *(v0 + 352) = *(v0 + 256);
  *(v1 + 177) = *(v1 + 81);
  return v2;
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_63_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

void OUTLINED_FUNCTION_64_3()
{
  *(v0 + 14) = v2;
  *(v0 + 22) = 1024;
  *(v0 + 24) = v1;
}

void OUTLINED_FUNCTION_65_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_69_3()
{
  v3 = (v0 + *(v1 + 268));
  v4 = *v3;
  v5 = v3[1];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v10 = a9[2];
  v11 = a9[3];
  v12 = a9[4];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_73_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_74_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{

  return sub_217586664(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_76_2()
{
}

uint64_t sub_21729CCC4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    v6[0] = *a1;
    v6[1] = v2;
    v6[2] = *(a1 + 32);
    v3 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    sub_2172C7EE4();
    *v1 = v5;
  }

  else
  {
    sub_2171F0738(a1, &qword_27CB24B50, &qword_2177595A0);
    sub_2172A4D08(v6);

    return sub_2171F0738(v6, &qword_27CB24B50, &qword_2177595A0);
  }
}

_OWORD *sub_21729D124(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2172124CC(a1, v15);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_2172C84AC();
    *v2 = v13;
  }

  else
  {
    sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
    v7 = *v2;
    v8 = sub_2176327E4(a2 & 1);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v12 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C80, &unk_217759680);
      sub_217752CB8();
      sub_2172124CC((*(v14 + 56) + 32 * v10), v15);
      sub_2172A4AFC();
      sub_217752CD8();
      *v3 = v14;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_2171F0738(v15, &qword_27CB2AD40, &qword_2177583F0);
  }

  return result;
}

void sub_21729D8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_217275C90();
    v5 = sub_2172B83A4(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        sub_217751DE8();
        if (v13 >= v12 >> 1)
        {
          sub_217275C90();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_2171FADD4(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_2171FADD4(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B60, &unk_217759420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v81 - v8;
  v10 = type metadata accessor for GenrePropertyProvider();
  v11 = OUTLINED_FUNCTION_43(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v81 - v19;

  OUTLINED_FUNCTION_135_0(v100);
  v21 = [a1 respondsToSelector_];
  v90 = a1;
  if ((v21 & 1) != 0 && (v22 = [a1 musicKit_modelObjectStorageDictionary]) != 0)
  {
    v23 = v22;
    v24 = sub_217751D98();
  }

  else
  {
    v24 = sub_217751DC8();
  }

  v25 = sub_21729E6F4(v24);

  if (!*(v25 + 16))
  {

    Genre.init(identifierSet:legacyModelObject:)(v90, v91);
    return sub_2171F0738(a2, &qword_27CB27590, &qword_21776ADF0);
  }

  v89 = a2;
  OUTLINED_FUNCTION_135_0(v96);
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v94[0] = qword_280BE4BF8;
  v94[1] = unk_280BE4C00;
  LOBYTE(v94[2]) = byte_280BE4C08;
  v93[0] = qword_280BE4BF8;
  v93[1] = unk_280BE4C00;
  LOBYTE(v93[2]) = byte_280BE4C08;
  swift_bridgeObjectRetain_n();
  v101.value.rawValue._countAndFlagsBits = v94;
  v101.value.rawValue._object = v93;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v95, v101, v102);

  countAndFlagsBits = v95[0].type.rawValue._countAndFlagsBits;
  object = v95[0].type.rawValue._object;
  isLibraryType = v95[0].type.isLibraryType;
  v86 = v95[0].href.value._countAndFlagsBits;
  v87 = v95[0].id.rawValue._object;
  v88 = v95[0].href.value._object;
  sub_2171F5110(v89, v95, &qword_27CB27590, &qword_21776ADF0);
  if (!v95[0].type.rawValue._object)
  {
    sub_2171F0738(v95, &qword_27CB27590, &qword_21776ADF0);
    memset(v96, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v96, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v96[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v96, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  v27 = object;
  sub_2171F3F0C(v96, v97);
  v28 = v98;
  v29 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    sub_2172A4A44(v9, v16);
    sub_2172A4984(v16, v20);
    memcpy(v96, v100, 0x161uLL);
    v30 = v10[18];
    memcpy(v93, &v16[v30], 0x161uLL);
    memcpy(v92, &v16[v30], sizeof(v92));
    sub_217269EF4(v93, v95);
    MusicIdentifierSet.union(_:)();
    memcpy(v94, v92, 0x161uLL);
    sub_217269F50(v94);
    sub_2172A49E8(v16);
    sub_217269F50(v100);
    v31 = v10[18];
    memcpy(v96, &v20[v31], 0x161uLL);
    sub_217269F50(v96);
    memcpy(&v20[v31], v95, 0x161uLL);
    v32 = &v20[v10[19]];
    v33 = *(v32 + 1);
    sub_217751DE8();

    *v32 = countAndFlagsBits;
    *(v32 + 1) = v27;
    v32[16] = isLibraryType;
    v34 = &v20[v10[20]];
    v35 = v34[1];

    v36 = v88;
    *v34 = v86;
    v34[1] = v36;
    __swift_destroy_boxed_opaque_existential_1(v97);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v10);
  sub_2171F0738(v9, &qword_27CB24B60, &unk_217759420);
  __swift_destroy_boxed_opaque_existential_1(v97);
  object = v27;
LABEL_17:
  sub_217751DE8();
  v38 = object;
  sub_217751DE8();
  v83 = OUTLINED_FUNCTION_69_4();
  v82 = OUTLINED_FUNCTION_69_4();
  v39 = OUTLINED_FUNCTION_69_4();
  v40 = OUTLINED_FUNCTION_69_4();
  sub_2172A497C(v96);
  memcpy(v20, v96, 0x221uLL);
  *(v20 + 552) = 0u;
  *(v20 + 568) = 0u;
  *(v20 + 73) = 1;
  *(v20 + 37) = 0u;
  *(v20 + 38) = 0u;
  *(v20 + 39) = 0u;
  *(v20 + 80) = 0;
  v41 = v10[9];
  sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  memcpy(&v20[v10[10]], v96, 0x221uLL);
  v46 = &v20[v10[11]];
  *v46 = 0;
  *(v46 + 1) = 0;
  OUTLINED_FUNCTION_95_2(&v20[v10[12]]);
  v47 = v10[13];
  sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = &v20[v10[14]];
  *v52 = 0;
  *(v52 + 1) = 0;
  OUTLINED_FUNCTION_112_2(&v20[v10[15]]);
  *&v20[v10[16]] = 0;
  if (qword_280BE3A58 != -1)
  {
    OUTLINED_FUNCTION_72_3();
  }

  v53 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v81 = sub_217752D28();
    v54 = v88;

    v87 = v53;
    v53 = v81;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v54 = v88;
  }

  *&v20[v10[17]] = v53;
  v55 = &v20[v10[20]];
  memcpy(&v20[v10[18]], v100, 0x161uLL);
  v56 = &v20[v10[19]];
  *v56 = countAndFlagsBits;
  *(v56 + 1) = v38;
  v56[16] = isLibraryType;
  *v55 = v86;
  v55[1] = v54;
  v57 = v82;
  *&v20[v10[21]] = v83;
  *&v20[v10[22]] = v57;
  *&v20[v10[23]] = v39;
  *&v20[v10[24]] = v40;
LABEL_22:
  v58 = &v20[v10[11]];
  if (!v58[1])
  {
    OUTLINED_FUNCTION_63_3();
    v60 = sub_2172A3DA0(2, v25, v59);
    if (v61)
    {
      *v58 = v60;
      v58[1] = v61;
    }
  }

  v62 = &v20[v10[14]];
  if (!v62[1])
  {
    OUTLINED_FUNCTION_63_3();
    v64 = sub_2172A3DA0(3, v25, v63);
    if (v65)
    {
      *v62 = v64;
      v62[1] = v65;
    }
  }

  KeyPath = swift_getKeyPath();
  sub_2173AC988(4, v25);
  if (*(&v96[1] + 1))
  {
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v95[0].id.rawValue._countAndFlagsBits;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v95[0].id.rawValue._object;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    sub_2171F0738(v96, &qword_27CB2AD40, &qword_2177583F0);
    v68 = 0;
    v69 = 0;
  }

  sub_2173AC988(5, v25);
  if (!v94[3])
  {
    sub_2171F0738(v94, &qword_27CB2AD40, &qword_2177583F0);
    if (v69)
    {
      v72 = 0;
      v71 = 0;
      goto LABEL_48;
    }

LABEL_49:

    v95[0].id = xmmword_2177586D0;
    v95[0].type.rawValue = 0u;
    *&v95[0].type.isLibraryType = 0u;
    *&v95[0].href.value._object = 0u;
    goto LABEL_50;
  }

  v70 = swift_dynamicCast();
  if (v70)
  {
    v71 = *&v96[0];
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v72 = *(&v96[0] + 1);
  }

  else
  {
    v72 = 0;
  }

  if (v69)
  {
    goto LABEL_48;
  }

  if (!v72)
  {
    goto LABEL_49;
  }

  v72 = *(&v96[0] + 1);
LABEL_48:

  v95[0].id.rawValue._countAndFlagsBits = v68;
  v95[0].id.rawValue._object = v69;
  v95[0].type.rawValue._countAndFlagsBits = v71;
  v95[0].type.rawValue._object = v72;
  *&v95[0].type.isLibraryType = 0u;
  *&v95[0].href.value._object = 0u;
LABEL_50:
  v96[0] = v95[0].id;
  v96[1] = v95[0].type.rawValue;
  v96[2] = *&v95[0].type.isLibraryType;
  v96[3] = *&v95[0].href.value._object;
  sub_2172A06E0(KeyPath, v96, 0);

  sub_2171F0738(v95, &qword_27CB24B70, &unk_217759460);
  v73 = v91;
  v91[5] = v10;
  v73[6] = &protocol witness table for GenrePropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v73 + 2);
  sub_2172A4984(v20, boxed_opaque_existential_0);
  swift_unknownObjectRelease();
  v75 = (boxed_opaque_existential_0 + v10[18]);
  v77 = *v75;
  v76 = v75[1];
  sub_217751DE8();
  sub_2171F0738(v89, &qword_27CB27590, &qword_21776ADF0);
  *v73 = v77;
  v73[1] = v76;
  return sub_2172A49E8(v20);
}

uint64_t Genre.init(identifierSet:legacyModelObject:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for GenrePropertyProvider();
  v12 = OUTLINED_FUNCTION_43(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_135_0(v69);
  v18 = [a1 respondsToSelector_];
  v61 = a1;
  if ((v18 & 1) != 0 && (v19 = [a1 musicKit_modelObjectStorageDictionary]) != 0)
  {
    v20 = v19;
    v21 = sub_217751D98();
  }

  else
  {
    v21 = sub_217751DC8();
  }

  v59 = v10;
  v58 = sub_21729E4EC(v21);

  OUTLINED_FUNCTION_135_0(v68);
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_30_8();
  }

  v65[0] = qword_280BE4A90;
  v65[1] = *algn_280BE4A98;
  v66 = byte_280BE4AA0;
  v63[0] = qword_280BE4A90;
  v63[1] = *algn_280BE4A98;
  v64 = byte_280BE4AA0;
  swift_bridgeObjectRetain_n();
  v70.value.rawValue._countAndFlagsBits = v65;
  v70.value.rawValue._object = v63;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v67, v70, v71);

  object = v67.id.rawValue._object;
  countAndFlagsBits = v67.type.rawValue._countAndFlagsBits;
  v22 = v67.type.rawValue._object;
  isLibraryType = v67.type.isLibraryType;
  v23 = v67.href.value._object;
  v55 = v67.href.value._countAndFlagsBits;
  sub_217751DE8();
  sub_217751DE8();
  v54 = OUTLINED_FUNCTION_70_3();
  v53 = OUTLINED_FUNCTION_70_3();
  v52 = OUTLINED_FUNCTION_70_3();
  v51 = OUTLINED_FUNCTION_70_3();
  sub_2172A497C(v68);
  memcpy(v17, v68, 0x221uLL);
  *(v17 + 552) = 0u;
  *(v17 + 568) = 0u;
  *(v17 + 73) = 1;
  *(v17 + 37) = 0u;
  *(v17 + 38) = 0u;
  *(v17 + 39) = 0u;
  *(v17 + 80) = 0;
  v24 = v11[9];
  v25 = sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  memcpy(&v17[v11[10]], v68, 0x221uLL);
  v29 = &v17[v11[11]];
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_95_2(&v17[v11[12]]);
  v30 = v11[13];
  sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = &v17[v11[14]];
  *v35 = 0;
  *(v35 + 1) = 0;
  OUTLINED_FUNCTION_112_2(&v17[v11[15]]);
  *&v17[v11[16]] = 0;
  if (qword_280BE3A58 != -1)
  {
    OUTLINED_FUNCTION_72_3();
  }

  v36 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    v48 = qword_280C01FD0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FD0 < 0)
    {
      v48 = qword_280C01FD0;
    }

    v49 = v48;
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_5_4();
    sub_217751DE8();
    v49 = sub_217752D28();

    object = v36;
    v36 = v49;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *&v17[v11[17]] = v36;
  v37 = &v17[v11[20]];
  memcpy(&v17[v11[18]], v69, 0x161uLL);
  v38 = &v17[v11[19]];
  *v38 = countAndFlagsBits;
  *(v38 + 1) = v22;
  v38[16] = isLibraryType;
  v39 = v54;
  *v37 = v55;
  v37[1] = v23;
  *&v17[v11[21]] = v39;
  v40 = v52;
  *&v17[v11[22]] = v53;
  *&v17[v11[23]] = v40;
  *&v17[v11[24]] = v51;
  v41 = v58;
  v42 = sub_2172A3798(0, v58);
  if (v43)
  {
    *v29 = v42;
    v29[1] = v43;
  }

  v44 = v59;
  sub_2172A36E4(1, v41, v59);

  if (__swift_getEnumTagSinglePayload(v44, 1, v25) != 1)
  {
    v45 = v50;
    sub_2171F5110(v44, v50, &qword_27CB241C0, &qword_217759480);
    sub_2171F0738(&v17[v24], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v45, &v17[v24]);
  }

  sub_2171F0738(v44, &qword_27CB241C0, &qword_217759480);
  v67.type.rawValue._object = v11;
  *&v67.type.isLibraryType = &protocol witness table for GenrePropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v67.id.rawValue._countAndFlagsBits);
  sub_2172A4984(v17, boxed_opaque_existential_0);
  Genre.init(propertyProvider:)(&v67.id.rawValue._countAndFlagsBits, v60);
  swift_unknownObjectRelease();
  return sub_2172A49E8(v17);
}

void sub_2172A06E0(uint64_t a1, __int128 *a2, char a3)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 3);
  v6 = *(a2 + 5);
  v7 = *(a2 + 7);
  if ((a3 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_0();
    v8 = swift_getAtKeyPath();
    if (*(&v26 + 1) != 1)
    {
      OUTLINED_FUNCTION_130_0(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
      sub_2171F0738(&v18, &qword_27CB24B70, &unk_217759460);
      return;
    }

    OUTLINED_FUNCTION_130_0(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, 1, v27, *(&v27 + 1), v28);
    sub_2171F0738(&v18, &qword_27CB24B70, &unk_217759460);
  }

  if (v4 != 1)
  {
    v16 = a2[1];
    v26 = *a2;
    v27 = v16;
    v17 = a2[3];
    v28 = a2[2];
    v29 = v17;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_56_0();
    swift_setAtWritableKeyPath();
  }
}

uint64_t sub_2172A07D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_0();
    swift_getAtKeyPath();
    if (v7)
    {
    }
  }

  if (a3)
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_56_0();
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_2172A0858(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (OUTLINED_FUNCTION_56_0(), swift_getAtKeyPath(), v4 = v6[56], result = sub_2171F0738(v6, &qword_27CB27D20, &qword_217758B80), v4 == 255))
  {
    if (*(a2 + 56) != 255)
    {
      sub_2171F5110(a2, v6, &qword_27CB27D20, &qword_217758B80);
      OUTLINED_FUNCTION_56_0();
      return swift_setAtWritableKeyPath();
    }
  }

  return result;
}

uint64_t sub_2172A08F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_0();
    swift_getAtKeyPath();
    result = v6;
    if (v6)
    {
      return swift_unknownObjectRelease();
    }
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_56_0();
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_2172A0968(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (OUTLINED_FUNCTION_56_0(), swift_getAtKeyPath(), v4 = v7, result = sub_2171F0738(v6, &qword_27CB24BA8, &unk_217772FF0), !v4))
  {
    if (*(a2 + 24))
    {
      sub_2171F5110(a2, v6, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_56_0();
      return swift_setAtWritableKeyPath();
    }
  }

  return result;
}

uint64_t Genre.convertToRawDictionary(for:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 96);
  v3 = OUTLINED_FUNCTION_5_4();
  v4(v3, v1);
  v5 = v65;
  __swift_project_boxed_opaque_existential_1(&v62, v64);
  v6 = *(*(v5 + 8) + 48);
  v7 = OUTLINED_FUNCTION_5_4();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_30_8();
  }

  if (v51 == qword_280BE4A90 && v52 == *algn_280BE4A98)
  {

    goto LABEL_20;
  }

  v10 = sub_217753058();

  if (v10)
  {
LABEL_20:
    v23 = Genre.convertToSimpleLegacyModelStorageDictionary()(v11);
    v24 = sub_2172A0FAC(v23);
    goto LABEL_33;
  }

  sub_2172A4AA8();
  v67 = sub_217751DC8();
  v12 = objc_opt_self();
  v13 = [v12 rawValueForKind_];
  v14 = MEMORY[0x277D83B88];
  v64 = MEMORY[0x277D83B88];
  v62 = v13;
  sub_21729D33C(&v62, 0);
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71();
  }

  v15 = MEMORY[0x277D837D0];
  v16 = sub_2172A3F28();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  v64 = v15;
  if (v17)
  {
    v19 = v17;
  }

  v62 = v18;
  v63 = v19;
  sub_21729D33C(&v62, 2);
  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v20 = sub_2172A3F28();
  if (v21)
  {
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v66[2] = 0;
  }

  v66[0] = v20;
  v66[1] = v21;
  v66[3] = v22;
  sub_21729D33C(v66, 3);
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  v32 = qword_280C02228;
  sub_2176CAE24(qword_280C02228, v25, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62);
  v33 = v63;
  if (v63 == 1 || (v34 = v62, sub_217751DE8(), sub_2171F0738(&v62, &qword_27CB24B70, &unk_217759460), !v33))
  {
    v59 = 0u;
    v60 = 0u;
  }

  else
  {
    *(&v60 + 1) = v15;
    *&v59 = v34;
    *(&v59 + 1) = v33;
  }

  sub_21729D33C(&v59, 4);
  sub_2176CAE24(v32, v35, v36, v37, v38, v39, v40, v41, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62);
  if (v52 == 1 || (v43 = v53, v42 = v54, sub_217751DE8(), sub_2171F0738(&v51, &qword_27CB24B70, &unk_217759460), !v42))
  {
    OUTLINED_FUNCTION_94_0();
  }

  else
  {
    v50 = v15;
    v47 = v43;
    v48 = v42;
  }

  sub_21729D33C(&v47, 5);
  v44 = [v12 rawValueForSubKind_];
  v50 = v14;
  v47 = v44;
  sub_21729D33C(&v47, 6);
  sub_2172A1284(v67);
LABEL_33:
  v45 = v24;

  return v45;
}

uint64_t sub_2172A0FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return sub_2175FC8CC(v2);
  }

  v41 = MEMORY[0x277D84F90];
  sub_217276678(0, v1, 0);
  v2 = v41;
  result = sub_2172A4F50(a1);
  v6 = result;
  v8 = v7;
  v9 = 0;
  v10 = a1 + 64;
  v28 = v7;
  v29 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_27;
    }

    if (*(a1 + 36) != v8)
    {
      goto LABEL_28;
    }

    v30 = v5;
    v12 = *(a1 + 56);
    v37 = *(*(a1 + 48) + v6);
    sub_21721E0AC(v12 + 32 * v6, v38);
    v33 = v37;
    sub_2172124CC(v38, &v34);
    if (v33)
    {
      v13 = 0xD000000000000024;
    }

    else
    {
      v13 = 0xD000000000000018;
    }

    v14 = "MPModelPropertyGenreName";
    if (!v33)
    {
      v14 = "toreAssetEndpointType";
    }

    *&v39 = v13;
    *(&v39 + 1) = v14 | 0x8000000000000000;
    *(&v31[0] + 1) = v34;
    v31[1] = v35;
    v32 = v36;
    result = sub_2172124CC((v31 + 8), v40);
    v41 = v2;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_217276678(v15 > 1, v16 + 1, 1);
      v2 = v41;
    }

    *(v2 + 16) = v16 + 1;
    v17 = (v2 + 48 * v16);
    v18 = v39;
    v19 = v40[1];
    v17[3] = v40[0];
    v17[4] = v19;
    v17[2] = v18;
    v20 = 1 << *(a1 + 32);
    if (v6 >= v20)
    {
      goto LABEL_29;
    }

    v10 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v11);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_30;
    }

    if (*(a1 + 36) != v8)
    {
      goto LABEL_31;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v20 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (a1 + 72 + 8 * v11);
      while (v24 < (v20 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_2171FADD4(v6, v8, v30 & 1);
          v20 = __clz(__rbit64(v26)) + v23;
          goto LABEL_24;
        }
      }

      result = sub_2171FADD4(v6, v8, v30 & 1);
    }

LABEL_24:
    v5 = 0;
    ++v9;
    v6 = v20;
    v8 = v28;
    if (v9 == v29)
    {
      return sub_2175FC8CC(v2);
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_2172A1284(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    v27 = v7;
    sub_217276678(0, v5, 0);
    v6 = v34;
    v8 = sub_2172A4F50(v27);
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_99_4();
    while ((v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_55_3();
      if (v9 == v10)
      {
        break;
      }

      OUTLINED_FUNCTION_31_5();
      if (v11)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_116_2();
      if (!v11)
      {
        goto LABEL_32;
      }

      v26 = v12;
      v14 = *(v13 + 56);
      v32 = *(*(v13 + 48) + v8);
      sub_21721E0AC(v14 + 32 * v8, v33);
      LOBYTE(v30[0]) = v32;
      sub_2172124CC(v33, (v30 + 8));
      v15 = 0xD00000000000001ALL;
      switch(LOBYTE(v30[0]))
      {
        case 1:
          OUTLINED_FUNCTION_79_4();
          v15 = v16 + 3;
          break;
        case 2:
          OUTLINED_FUNCTION_79_4();
          break;
        case 3:
          OUTLINED_FUNCTION_79_4();
          v15 = v18 + 6;
          break;
        case 4:
          OUTLINED_FUNCTION_79_4();
          v15 = v17 + 13;
          break;
        case 5:
          OUTLINED_FUNCTION_79_4();
          v15 = v19 + 8;
          break;
        case 6:
          OUTLINED_FUNCTION_79_4();
          v15 = v20 + 4;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_87_5(v15);
      v28[0] = v30[0];
      v28[1] = v30[1];
      v29 = v31;
      OUTLINED_FUNCTION_15_15(v28);
      if (v22)
      {
        OUTLINED_FUNCTION_23_11(v21);
        v6 = v34;
      }

      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_54_4();
      if (v9 == v10)
      {
        goto LABEL_33;
      }

      if ((*(v3 + 8 * v2) & v1) == 0)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_111_1();
      if (!v11)
      {
        goto LABEL_35;
      }

      if ((v23 & (-2 << (v8 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_13_10();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        if (v25 >= v24)
        {
          OUTLINED_FUNCTION_41_6(v26);
        }

        else
        {
          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_41_6(v26);
          OUTLINED_FUNCTION_50_3();
        }
      }

      OUTLINED_FUNCTION_35_2();
      if (v4 == v5)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_29:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A1588(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v44 = MEMORY[0x277D84F90];
    sub_217276678(0, v3, 0);
    v5 = v44;
    v7 = sub_2172A4F50(a1);
    v9 = v8;
    v10 = 0;
    v33 = a1 + 64;
    v29 = v8;
    v30 = v3;
    v11 = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v11 << *(a1 + 32))
    {
      v12 = v7 >> 6;
      v13 = v11 << v7;
      if ((*(v33 + 8 * (v7 >> 6)) & (v11 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_24;
      }

      v32 = v6;
      v14 = *(a1 + 56);
      v40 = *(*(a1 + 48) + v7);
      sub_21721E0AC(v14 + 32 * v7, v41);
      v36 = v40;
      v15 = sub_2172124CC(v41, &v37);
      v42.n128_u64[0] = a2(v15);
      v42.n128_u64[1] = v16;
      *(&v34[0] + 1) = v37;
      v34[1] = v38;
      v35 = v39;
      sub_2172124CC((v34 + 8), v43);
      v17 = v5;
      v44 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_217276678(v18 > 1, v19 + 1, 1);
        v17 = v44;
      }

      *(v17 + 16) = v19 + 1;
      OUTLINED_FUNCTION_77_2((v17 + 48 * v19), v42, v43[0], v43[1]);
      v21 = 1 << *(a1 + 32);
      if (v7 >= v21)
      {
        goto LABEL_25;
      }

      if ((*(v33 + 8 * v12) & v13) == 0)
      {
        goto LABEL_26;
      }

      v5 = v20;
      if (*(a1 + 36) != v9)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_101_1();
      if (v23)
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v26 = (a1 + 72 + 8 * v12);
        while (v25 < (v21 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_2171FADD4(v7, v9, v32 & 1);
            v11 = 1;
            v21 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        sub_2171FADD4(v7, v9, v32 & 1);
        v11 = 1;
      }

      else
      {
        v21 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      v6 = 0;
      ++v10;
      v7 = v21;
      v9 = v29;
      if (v10 == v30)
      {
        v4 = v5;
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
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_2175FC8CC(v4);
  }
}

void sub_2172A184C(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    v28 = v7;
    sub_217276678(0, v5, 0);
    v6 = v35;
    v8 = sub_2172A4F50(v28);
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_99_4();
    while ((v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_55_3();
      if (v9 == v10)
      {
        break;
      }

      OUTLINED_FUNCTION_31_5();
      if (v11)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_116_2();
      if (!v11)
      {
        goto LABEL_33;
      }

      v27 = v12;
      v14 = *(v13 + 56);
      v33 = *(*(v13 + 48) + v8);
      sub_21721E0AC(v14 + 32 * v8, v34);
      LOBYTE(v31[0]) = v33;
      sub_2172124CC(v34, (v31 + 8));
      v15 = 0xD000000000000022;
      switch(LOBYTE(v31[0]))
      {
        case 1:
          OUTLINED_FUNCTION_45_6();
          v15 = v16 + 7;
          break;
        case 2:
          OUTLINED_FUNCTION_45_6();
          v15 = v17 + 14;
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_45_6();
          break;
        case 5:
          OUTLINED_FUNCTION_45_6();
          v15 = v19 + 20;
          break;
        case 6:
          OUTLINED_FUNCTION_45_6();
          v15 = v20 + 8;
          break;
        case 7:
          OUTLINED_FUNCTION_45_6();
          v15 = v18 + 17;
          break;
        case 8:
          OUTLINED_FUNCTION_45_6();
          v15 = v21 + 12;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_87_5(v15);
      v29[0] = v31[0];
      v29[1] = v31[1];
      v30 = v32;
      OUTLINED_FUNCTION_15_15(v29);
      if (v23)
      {
        OUTLINED_FUNCTION_23_11(v22);
        v6 = v35;
      }

      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_54_4();
      if (v9 == v10)
      {
        goto LABEL_34;
      }

      if ((*(v3 + 8 * v2) & v1) == 0)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_111_1();
      if (!v11)
      {
        goto LABEL_36;
      }

      if ((v24 & (-2 << (v8 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_13_10();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        if (v26 >= v25)
        {
          OUTLINED_FUNCTION_41_6(v27);
        }

        else
        {
          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_41_6(v27);
          OUTLINED_FUNCTION_50_3();
        }
      }

      OUTLINED_FUNCTION_35_2();
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
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

  else
  {
LABEL_30:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A1B58(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    sub_217276678(0, v5, 0);
    v6 = v43;
    sub_2172A4F50(a1);
    OUTLINED_FUNCTION_106_2();
    v31 = v8;
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_99_4();
    v32 = v1;
    while ((v2 & 0x8000000000000000) == 0 && v2 < 1 << *(a1 + 32))
    {
      v10 = v2 >> 6;
      v11 = 1 << v2;
      if ((*(v1 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_32;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_33;
      }

      v33 = v9;
      v12 = *(a1 + 56);
      v40 = *(*(a1 + 48) + v2);
      sub_21721E0AC(v12 + 32 * v2, v41);
      v36 = v40;
      sub_2172124CC(v41, &v37);
      v13 = 0xD00000000000001CLL;
      switch(v36)
      {
        case 1:
        case 6:
        case 7:
          OUTLINED_FUNCTION_45_6();
          break;
        case 2:
          OUTLINED_FUNCTION_45_6();
          v13 = v18 + 4;
          break;
        case 3:
          OUTLINED_FUNCTION_45_6();
          v13 = v19 + 14;
          break;
        case 4:
          OUTLINED_FUNCTION_45_6();
          v13 = v15 + 9;
          break;
        case 5:
          OUTLINED_FUNCTION_45_6();
          v13 = v20 + 18;
          break;
        case 8:
          OUTLINED_FUNCTION_45_6();
          v13 = v22 - 2;
          break;
        case 9:
          OUTLINED_FUNCTION_45_6();
          v13 = v17 + 3;
          break;
        case 10:
          OUTLINED_FUNCTION_45_6();
          v13 = v21 + 6;
          break;
        case 11:
          OUTLINED_FUNCTION_45_6();
          v13 = v14 - 6;
          break;
        case 12:
        case 13:
          OUTLINED_FUNCTION_45_6();
          v13 = v16 - 1;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_87_5(v13);
      *(&v34[0] + 1) = v37;
      v34[1] = v38;
      v35 = v39;
      sub_2172124CC((v34 + 8), v42);
      v43 = v6;
      OUTLINED_FUNCTION_104_2();
      if (v24)
      {
        OUTLINED_FUNCTION_23_11(v23);
        v6 = v43;
      }

      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_77_2(v25, v41[2], v42[0], v42[1]);
      if (v2 >= 1 << *(a1 + 32))
      {
        goto LABEL_34;
      }

      v1 = v32;
      v26 = *(v32 + 8 * v10);
      if ((v26 & v11) == 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_36;
      }

      if ((v26 & (-2 << (v2 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_13_10();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        v29 = (a1 + 72 + 8 * v10);
        do
        {
          if (v28 >= v27)
          {
            break;
          }

          v30 = *v29++;
          v11 += 64;
          ++v28;
        }

        while (!v30);
        OUTLINED_FUNCTION_41_6(v33);
      }

      OUTLINED_FUNCTION_35_2();
      v3 = v31;
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
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

  else
  {
LABEL_30:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A211C(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    sub_217276678(0, v5, 0);
    v6 = v40;
    sub_2172A4F50(a1);
    OUTLINED_FUNCTION_106_2();
    v27 = v9;
    v28 = v5;
    v10 = 1;
    v29 = v1;
    while ((v2 & 0x8000000000000000) == 0 && v2 < v10 << *(a1 + 32))
    {
      v11 = v2 >> 6;
      v12 = v10 << v2;
      if ((*(v1 + 8 * (v2 >> 6)) & (v10 << v2)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_28;
      }

      v30 = v8;
      v13 = *(a1 + 56);
      v37 = *(*(a1 + 48) + v2);
      sub_21721E0AC(v13 + 32 * v2, v38);
      v33 = v37;
      sub_2172124CC(v38, &v34);
      if (v33)
      {
        if (v33 == 1)
        {
          OUTLINED_FUNCTION_92_1();
          v15 = v14 + 8;
        }

        else
        {
          OUTLINED_FUNCTION_92_1();
        }
      }

      else
      {
        OUTLINED_FUNCTION_92_1();
        v15 = v16 + 6;
      }

      OUTLINED_FUNCTION_87_5(v15);
      *(&v31[0] + 1) = v34;
      v31[1] = v35;
      v32 = v36;
      sub_2172124CC((v31 + 8), v39);
      v40 = v6;
      OUTLINED_FUNCTION_104_2();
      if (v18)
      {
        OUTLINED_FUNCTION_23_11(v17);
        v6 = v40;
      }

      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_77_2(v19, v38[2], v39[0], v39[1]);
      OUTLINED_FUNCTION_132_0();
      if (v20 == v21)
      {
        goto LABEL_29;
      }

      v1 = v29;
      if ((*(v29 + 8 * v11) & v12) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_101_1();
      if (v22)
      {
        OUTLINED_FUNCTION_16_13();
        v25 = (a1 + 72 + 8 * v11);
        do
        {
          if (v24 >= v23)
          {
            break;
          }

          v26 = *v25++;
          v12 += 64;
          ++v24;
        }

        while (!v26);
        OUTLINED_FUNCTION_41_6(v30);
      }

      else
      {
        OUTLINED_FUNCTION_13_10();
      }

      OUTLINED_FUNCTION_35_2();
      v3 = v27;
      if (v4 == v28)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_2175FC8CC(v6);
  }
}