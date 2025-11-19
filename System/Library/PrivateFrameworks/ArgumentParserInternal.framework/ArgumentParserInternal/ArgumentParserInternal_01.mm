unsigned __int8 *sub_240FE9B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
    v40 = v39;

    v5 = v40;
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
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_126;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_126;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
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

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_126;
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

          v49 = v31 * a3;
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
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

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_126;
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

        v58 = v31 * a3;
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEA0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
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
      result = sub_2410470B8();
      v7 = v60;
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
                    goto LABEL_125;
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
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
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

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
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
                  goto LABEL_125;
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
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
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

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEA634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
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
      result = sub_2410470B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }
          }

          else
          {
            v33 = -48;
          }

          v34 = v28 * a3;
          if ((v34 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
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

          v60 = v28 * a3;
          if ((v60 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v28) = 0;
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
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
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

          v45 = v28 * a3;
          if ((v45 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFFFF00) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOBYTE(v28) = 0;
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
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFF00) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 >> 8))
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
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
      result = sub_2410470B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }
          }

          else
          {
            v33 = -48;
          }

          v34 = v28 * a3;
          if ((v34 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
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

          v60 = v28 * a3;
          if ((v60 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v28) = 0;
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
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
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

          v45 = v28 * a3;
          if ((v45 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOWORD(v28) = 0;
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
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFFFF0000) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 & 0x10000) != 0)
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
    v40 = v39;

    v5 = v40;
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
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2410470B8();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_128;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_127;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_127;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_128;
          }

          goto LABEL_66;
        }

LABEL_127:
        v18 = 0;
        v15 = 1;
        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_128;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v38 = v35 + v36;
          v21 = __CFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_127;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_128;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_127;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_127;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_128:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_128;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if ((v66 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v67 = v64 + v65;
          v21 = __CFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_127;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
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

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_128;
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

          v49 = v31 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v47 + v48;
          v21 = v49 >= v50;
          v31 = v49 - v50;
          if (!v21)
          {
            goto LABEL_127;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
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

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_128;
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

        v58 = v31 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_127;
        }

        v59 = v56 + v57;
        v21 = __CFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_127;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_126:
      v15 = 0;
      v18 = v31;
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_133:
  __break(1u);
  return result;
}

unsigned __int8 *sub_240FEB734(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_241046C68();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE875C();
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
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
      result = sub_2410470B8();
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
                    goto LABEL_127;
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
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
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

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
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
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
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
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
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
              goto LABEL_127;
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

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_240FEBCB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v3 || (sub_241047428() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    v6 = sub_241047428();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

_BYTE *sub_240FEBDE8@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_240FEBE74@<X0>(_BYTE *a1@<X8>)
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

uint64_t sub_240FEBEB8(uint64_t result, unint64_t a2)
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
    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE8F84(result, a2, 10);

    v24 = (v6 >> 8) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
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

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
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

LABEL_61:
        LOBYTE(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = (10 * v6);
          if (v20 != 10 * v6)
          {
            break;
          }

          v6 = v20 + v19;
          if ((v20 + v19) != v6)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
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

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
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
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
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
        LOBYTE(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
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

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
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

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_240FEC1E4(uint64_t result, unint64_t a2)
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
    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FE9564(result, a2, 10);

    v24 = HIWORD(v6) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
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

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
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

LABEL_61:
        LOWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = (10 * v6);
          if (v20 != 10 * v6)
          {
            break;
          }

          v6 = v20 + v19;
          if ((v20 + v19) != v6)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
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

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
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
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
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
        LOWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
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

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
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

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_240FEC510(uint64_t result, unint64_t a2)
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
    v6 = sub_240FE9B44(result, a2, 10);

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
      result = sub_2410470B8();
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

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if (v20 != v20)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__OFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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

uint64_t sub_240FEC7E8(uint64_t result, unint64_t a2)
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
        result = sub_2410470B8();
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

LABEL_61:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_62;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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

  v6 = sub_240FEA0B4(result, a2, 10);
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

uint64_t sub_240FECAE4(uint64_t result, unint64_t a2)
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

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FEA634(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOBYTE(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        while (1)
        {
          v15 = *result - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v15;
          if ((v6 >> 8))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
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

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
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
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
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
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_240FECDF8(uint64_t result, unint64_t a2)
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

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_240FEABFC(result, a2, 10);

    v18 = HIWORD(v6) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2410470B8();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        LOWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        while (1)
        {
          v15 = *result - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v15;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
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

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFF0000) != 0)
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
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
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
        LOWORD(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF0000) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 & 0x10000) != 0)
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_240FED10C(uint64_t result, unint64_t a2)
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
    v6 = sub_240FEB1C4(result, a2, 10);

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
      result = sub_2410470B8();
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
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
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

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__CFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
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
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
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
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
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
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
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

uint64_t sub_240FED3E4(uint64_t result, unint64_t a2)
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
        result = sub_2410470B8();
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

LABEL_63:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_64;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v16 = *result - 48;
            if (v16 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v16);
            v6 = 10 * v6 + v16;
            if (v9)
            {
              break;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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

  v6 = sub_240FEB734(result, a2, 10);
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

uint64_t sub_240FED714(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  ParsableCommand.run()();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t static AsyncParsableCommand.main(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_240FED7B4, 0, 0);
}

uint64_t sub_240FED7B4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(*(v0 + 192) + 8);
  *(v0 + 208) = v4;
  static ParsableCommand.parseAsRoot(_:)(v2, v4, v0 + 16);
  sub_240FEDBC4(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E8, &qword_2410482E0);
  if (swift_dynamicCast())
  {
    sub_240FDDF54((v0 + 136), v0 + 56);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v5);
    v7 = *(v6 + 16);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_240FEDA30;

    return v14(v5, v6);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_240FEDC28(v0 + 136);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v11);
    (*(v12 + 32))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_240FEDA30()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_240FEDB44;
  }

  else
  {
    v3 = sub_240FEE7A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_240FEDB44()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  MEMORY[0x245CD7E90](v1);
  v5 = *(v3 + 8);

  static ParsableArguments.exit(withError:)(v1, v4, v5);
}

uint64_t sub_240FEDBC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240FEDC28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4F0, &qword_2410482E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AsyncParsableCommand.main()(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x2822009F8](sub_240FEDCB4, 0, 0);
}

uint64_t sub_240FEDCB4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(*(v0 + 184) + 8);
  *(v0 + 200) = v3;
  static ParsableCommand.parseAsRoot(_:)(0, v3, v0 + 16);
  sub_240FEDBC4(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E8, &qword_2410482E0);
  if (swift_dynamicCast())
  {
    sub_240FDDF54((v0 + 136), v0 + 56);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v4);
    v6 = *(v5 + 16);
    v13 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *v8 = v0;
    v8[1] = sub_240FEDF34;

    return v13(v4, v5);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_240FEDC28(v0 + 136);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v10);
    (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_240FEDF34()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_240FEE048;
  }

  else
  {
    v3 = sub_240FEE7A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_240FEE048()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  MEMORY[0x245CD7E90](v1);
  v5 = *(v3 + 8);

  static ParsableArguments.exit(withError:)(v1, v4, v5);
}

uint64_t static AsyncMainProtocol.main()(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x2822009F8](sub_240FEE0E8, 0, 0);
}

uint64_t sub_240FEE0E8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  *(v0 + 192) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 200) = AssociatedConformanceWitness;
  static ParsableCommand.parseAsRoot(_:)(0, AssociatedConformanceWitness, v0 + 16);
  sub_240FEDBC4(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E0, &unk_241047C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F4E8, &qword_2410482E0);
  if (swift_dynamicCast())
  {
    sub_240FDDF54((v0 + 136), v0 + 56);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v4);
    v6 = *(v5 + 16);
    v13 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 208) = v8;
    *v8 = v0;
    v8[1] = sub_240FEE3A8;

    return v13(v4, v5);
  }

  else
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_240FEDC28(v0 + 136);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v10);
    (*(v11 + 32))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_240FEE3A8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_240FEE524;
  }

  else
  {
    v3 = sub_240FEE4BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240FEE4BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];

  return v1();
}

void sub_240FEE524()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[27];
  v4 = v0 + 24;
  v3 = v0[24];
  v2 = v4[1];
  MEMORY[0x245CD7E90](v1);
  v5 = *(v2 + 8);

  static ParsableArguments.exit(withError:)(v1, v3, v5);
}

uint64_t dispatch thunk of AsyncParsableCommand.run()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240FEE6B4;

  return v9(a1, a2);
}

uint64_t sub_240FEE6B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240FEE7AC(uint64_t a1)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_57;
  }

  v4 = a1;
  v6 = (a1 + 16 + 16 * v5);
  v7 = *v6;
  v8 = v6[1];
  *&v119[0] = sub_240FF2D04(a1);
  *(&v119[0] + 1) = v9;
  v10 = 0xE100000000000000;
  *&v109 = 45;
  *(&v109 + 1) = 0xE100000000000000;
  *&v107[0] = 95;
  *(&v107[0] + 1) = 0xE100000000000000;
  sub_240FE05E8();
  *(&v94 + 1) = sub_241046EE8();
  v12 = v11;

  v95 = v12;
  if (v5 == 1)
  {
    *&v94 = 49;
    v13 = 50;
    v92 = 0xE100000000000000;
  }

  else
  {
    v10 = 0xE900000000000029;
    v92 = 0xE200000000000000;
    v13 = 0x29312B3124282824;
    *&v94 = 12580;
  }

  v91 = v13;
  (*(v8 + 16))(&v109, v7, v8);
  v119[6] = v115;
  v119[7] = v116;
  v119[8] = v117;
  v119[2] = v111;
  v119[3] = v112;
  v119[4] = v113;
  v119[5] = v114;
  v119[0] = v109;
  v119[1] = v110;
  v107[6] = v115;
  v107[7] = v116;
  v107[8] = v117;
  v107[2] = v111;
  v107[3] = v112;
  v107[4] = v113;
  v107[5] = v114;
  v120 = v118;
  v108 = v118;
  v107[0] = v109;
  v107[1] = v110;
  CommandConfiguration.subcommands.getter();
  v15 = v14;
  sub_240FE724C(v119);
  v16 = *(v15 + 16);
  v96 = v5;
  if (v16)
  {
    v17 = v16 - 1;
    v2 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 16)
    {
      v97 = *(v15 + i);
      (*(*(v15 + i + 8) + 16))(v99);
      v102 = v99[6];
      v103 = v99[7];
      v104 = v99[8];
      v105 = v100;
      v101[2] = v99[2];
      v101[3] = v99[3];
      v101[4] = v99[4];
      v101[5] = v99[5];
      v101[0] = v99[0];
      v101[1] = v99[1];
      sub_240FE724C(v101);
      if (v102 == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FE42D8(0, *(v2 + 2) + 1, 1);
          v2 = v106;
        }

        v21 = *(v2 + 2);
        v20 = *(v2 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_240FE42D8((v20 > 1), v21 + 1, 1);
          v2 = v106;
        }

        *(v2 + 2) = v21 + 1;
        *&v2[16 * v21 + 32] = v97;
      }

      if (!v17)
      {
        break;
      }

      --v17;
    }

    v5 = v96;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(&v94 + 1);
  v93 = v10;
  if (v5 != 1)
  {
    goto LABEL_23;
  }

  v1 = *(v2 + 2);
  if (!v1)
  {
    goto LABEL_23;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v23 = *(v2 + 2);
    v22 = *(v2 + 3);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_240FE2D64((v22 > 1), v23 + 1, 1, v2);
    }

    v24 = sub_240FF0C78();
    *(v2 + 2) = v23 + 1;
    v25 = &v2[16 * v23];
    *(v25 + 4) = &type metadata for HelpCommand;
    *(v25 + 5) = v24;
LABEL_23:
    v98 = v4;
    v26 = sub_240FEFFD0(v4);
    v27 = *(v2 + 2);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      *&v109 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v27, 0);
      v28 = v109;
      v31 = v2 + 40;
      do
      {
        v32 = (*(*v31 + 24))(*(v31 - 1), *v31, v29, v30);
        v34 = v33;
        *&v109 = v28;
        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_240FE41A0((v35 > 1), v36 + 1, 1);
          v28 = v109;
        }

        *(v28 + 16) = v36 + 1;
        v37 = v28 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v31 += 2;
        --v27;
      }

      while (v27);
      v5 = v96;
      v3 = *(&v94 + 1);
    }

    *&v109 = v26;
    sub_240FE2060(v28);
    v38 = v109;
    v39 = sub_240FF030C(v98);
    *&v109 = v3;
    *(&v109 + 1) = v95;

    MEMORY[0x245CD70E0](0xA7B202928, 0xE500000000000000);
    if (v5 == 1)
    {
      v40 = sub_240FF4B40(4, 0xD000000000000050, 0x800000024104DEE0);
      MEMORY[0x245CD70E0](v40);
    }

    strcpy(v107, "    opts=");
    BYTE11(v107[0]) = 0;
    HIDWORD(v107[0]) = -369098752;
    *&v101[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v41 = sub_241046AA8();
    v43 = v42;

    MEMORY[0x245CD70E0](v41, v43);

    MEMORY[0x245CD70E0](2594, 0xE200000000000000);
    MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

    v44 = *(v39 + 16);
    if (v44)
    {
      v45 = (v39 + 40);
      do
      {
        v46 = *(v45 - 1);
        v47 = *v45;
        *&v107[0] = 0;
        *(&v107[0] + 1) = 0xE000000000000000;

        sub_241047058();

        *&v107[0] = 0xD000000000000010;
        *(&v107[0] + 1) = 0x800000024104DDC0;
        MEMORY[0x245CD70E0](v46, v47);

        MEMORY[0x245CD70E0](2594, 0xE200000000000000);
        MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

        v45 += 2;
        --v44;
      }

      while (v44);
    }

    *&v107[0] = 0;
    *(&v107[0] + 1) = 0xE000000000000000;
    sub_241047058();
    MEMORY[0x245CD70E0](0xD00000000000001ALL, 0x800000024104DDE0);
    MEMORY[0x245CD70E0](v94, v92);
    MEMORY[0x245CD70E0](0xD000000000000057, 0x800000024104DE00);
    MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

    v48 = v98;
    v49 = sub_240FF06F4(v98);
    v51 = v50;
    v52 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v53 = v49;
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0xE000000000000000;
      sub_241047058();

      strcpy(v107, "case $prev in\n");
      HIBYTE(v107[0]) = -18;
      v54 = sub_240FF4B40(4, v53, v51);
      v56 = v55;

      MEMORY[0x245CD70E0](v54, v56);

      MEMORY[0x245CD70E0](0x636173650ALL, 0xE500000000000000);
      v57 = sub_240FF4B40(4, *&v107[0], *(&v107[0] + 1));
      v59 = v58;

      *&v107[0] = v57;
      *(&v107[0] + 1) = v59;

      MEMORY[0x245CD70E0](10, 0xE100000000000000);

      MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));
    }

    v60 = v93;

    if (*(v2 + 2))
    {
      *&v107[0] = 0;
      *(&v107[0] + 1) = 0xE000000000000000;
      sub_241047058();

      *&v107[0] = 0xD000000000000016;
      *(&v107[0] + 1) = 0x800000024104DE60;
      MEMORY[0x245CD70E0](v94, v92);

      MEMORY[0x245CD70E0](0xA6E69207D5DLL, 0xE600000000000000);
      MEMORY[0x245CD70E0](*&v107[0], *(&v107[0] + 1));

      v92 = v2;
      v61 = *(v2 + 2);
      if (v61)
      {
        v62 = (v2 + 40);
        do
        {
          v63 = v60;
          v64 = *(v62 - 1);
          v65 = *v62;
          *&v107[0] = 0;
          *(&v107[0] + 1) = 0xE000000000000000;
          sub_241047058();

          *&v107[0] = 40;
          *(&v107[0] + 1) = 0xE100000000000000;
          v66 = *(v65 + 24);
          v67 = v66(v64, v65);
          MEMORY[0x245CD70E0](v67);

          MEMORY[0x245CD70E0](0x202020200A29, 0xE600000000000000);
          MEMORY[0x245CD70E0](*(&v94 + 1), v95);
          MEMORY[0x245CD70E0](95, 0xE100000000000000);
          v68 = v65;
          v60 = v63;
          v69 = v66(v64, v68);
          MEMORY[0x245CD70E0](v69);

          MEMORY[0x245CD70E0](32, 0xE100000000000000);
          MEMORY[0x245CD70E0](v91, v63);
          MEMORY[0x245CD70E0](0xD000000000000013, 0x800000024104DE80);
          v70 = sub_240FF4B40(8, *&v107[0], *(&v107[0] + 1));
          v72 = v71;

          MEMORY[0x245CD70E0](v70, v72);

          v62 += 2;
          --v61;
        }

        while (v61);
      }

      MEMORY[0x245CD70E0](0x6361736520202020, 0xE90000000000000ALL);
      v48 = v98;
    }

    else
    {
    }

    MEMORY[0x245CD70E0](0xD000000000000034, 0x800000024104DEA0);
    v73 = *(&v109 + 1);
    v74 = v109;
    v75 = *(v2 + 2);
    if (!v75)
    {
      break;
    }

    v94 = v109;
    *&v107[0] = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v75, 0);
    v3 = *&v107[0];
    v5 = 32;
    v4 = &qword_2410480F0;
    v95 = 1;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
      v76 = swift_allocObject();
      *(v76 + 32) = *&v2[v5];
      v77 = (v76 + 32);
      *(v76 + 16) = xmmword_241047BF0;

      v78 = swift_isUniquelyReferenced_nonNull_native();
      if (!v78 || (v79 = *(v48 + 24) >> 1, v1 = v48, v79 <= v96))
      {
        v1 = sub_240FE2D64(v78, v96 + 1, 1, v48);
        v79 = *(v1 + 3) >> 1;
      }

      v80 = *(v1 + 2);
      if (v79 <= v80)
      {
        break;
      }

      *&v1[16 * v80 + 32] = *v77;

      ++*(v1 + 2);
      v81 = sub_240FEE7AC(v1);
      v83 = v82;

      *&v107[0] = v3;
      v85 = *(v3 + 16);
      v84 = *(v3 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_240FE41A0((v84 > 1), v85 + 1, 1);
        v3 = *&v107[0];
      }

      *(v3 + 16) = v85 + 1;
      v86 = v3 + 16 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v83;
      v5 += 16;
      --v75;
      v48 = v98;
      if (!v75)
      {

        v73 = *(&v94 + 1);
        v74 = v94;
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v2 = sub_240FE2D64(0, (v1 + 1), 1, v2);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_55:
  *&v107[0] = v3;
  v87 = sub_241046AA8();
  v89 = v88;

  *&v107[0] = v74;
  *(&v107[0] + 1) = v73;

  MEMORY[0x245CD70E0](v87, v89);

  return *&v107[0];
}

uint64_t sub_240FEF444()
{
  if (*(v0 + 104))
  {
    return MEMORY[0x277D84F90];
  }

  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
  if (*v0 >= 2uLL)
  {
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    sub_240FE41A0(0, v4, 0);
    v1 = v2;
    v5 = (v3 + 48);
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      if (!(v8 >> 6))
      {
        break;
      }

      if (v8 >> 6 != 1)
      {
        v14 = 45;
        v9 = 0xE100000000000000;
        goto LABEL_12;
      }

      v14 = 0;
      v15 = 0xE000000000000000;

      MEMORY[0x245CD70E0](45, 0xE100000000000000);
      sub_241046A98();
LABEL_13:
      sub_240FF0D30(v7, v6, v8);
      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_240FE41A0((v10 > 1), v11 + 1, 1);
      }

      v5 += 24;
      *(v1 + 16) = v11 + 1;
      v12 = v1 + 16 * v11;
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      if (!--v4)
      {

        return v1;
      }
    }

    v14 = 11565;
    v9 = 0xE200000000000000;
LABEL_12:
    v15 = v9;
    sub_240FF0D90(v7, v6, v8);
    MEMORY[0x245CD70E0](v7, v6);
    goto LABEL_13;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_240FEF608(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 144);
  if (v3 > 1)
  {
    v4 = *(v1 + 17);
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        sub_241047058();
        v92 = v79;
        MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104DF40);
        v83 = v1[4];
        v84 = v1[5];
        v85 = v1[6];
        v86 = v1[7];
        v79 = *v1;
        v80 = v1[1];
        v81 = v1[2];
        v82 = v1[3];
        v87 = v2;
        v88 = v4;
        v89 = 3;
        v90 = *(v1 + 145);
        *v91 = *(v1 + 161);
        *&v91[15] = v1[11];
        v6 = sub_240FF2EF0(a1);
        MEMORY[0x245CD70E0](v6);

        MEMORY[0x245CD70E0](0xD000000000000022, 0x800000024104DF70);
        return v92;
      }

      else if (v2 | v4)
      {
        return 0xD000000000000065;
      }

      else
      {
        return 0;
      }
    }

    sub_241047058();

    strcpy(&v79, "COMPREPLY=( $(");
    HIBYTE(v79) = -18;
    MEMORY[0x245CD70E0](v2, v4);
    v9 = 2695209;
    v10 = 0xE300000000000000;
LABEL_61:
    MEMORY[0x245CD70E0](v9, v10);
    return v79;
  }

  if (!*(v1 + 144))
  {
    sub_241047058();

    *&v79 = 0xD00000000000001ALL;
    *(&v79 + 1) = 0x800000024104DFA0;
    *&v92 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v8 = sub_241046AA8();
    MEMORY[0x245CD70E0](v8);

    v9 = 0x632422202D2D2022;
    v10 = 0xEE00292029227275;
    goto LABEL_61;
  }

  v11 = *(v2 + 16);
  if (!v11)
  {
    return 0xD000000000000062;
  }

  *&v92 = MEMORY[0x277D84F90];
  sub_240FE41A0(0, v11, 0);
  v12 = 0;
  result = v92;
  v74 = v2 + 32;
  v75 = v2;
  v73 = v11;
  while (1)
  {
    if (v12 >= *(v75 + 16))
    {
      goto LABEL_65;
    }

    v76 = result;
    v13 = (v74 + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v14 & 0xFFFFFFFFFFFFLL;
    }

    *&v79 = v14;
    *(&v79 + 1) = v15;
    *&v80 = 0;
    *(&v80 + 1) = v16;
    swift_bridgeObjectRetain_n();
    v17 = sub_241046BD8();
    if (v18)
    {
      break;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_38:

    *&v79 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F500, "lx");
    sub_240FF0D48(&qword_27E51F508, &qword_27E51F500, "lx");
    v30 = sub_241046C58();
    v32 = v31;

    result = v76;
    *&v92 = v76;
    v34 = *(v76 + 16);
    v33 = *(v76 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_240FE41A0((v33 > 1), v34 + 1, 1);
      result = v92;
    }

    ++v12;
    *(result + 16) = v34 + 1;
    v35 = result + 16 * v34;
    *(v35 + 32) = v30;
    *(v35 + 40) = v32;
    if (v12 == v73)
    {
      v78 = result;
      *&v79 = MEMORY[0x277D84F90];

      sub_240FE41A0(0, v34 + 1, 0);
      v37 = v79;
      v38 = v34 + 1;
      v39 = (v36 + 40);
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        v42 = sub_241046A38();
        *&v79 = v37;
        v45 = *(v37 + 16);
        v44 = *(v37 + 24);
        if (v45 >= v44 >> 1)
        {
          v47 = v42;
          v48 = v43;
          sub_240FE41A0((v44 > 1), v45 + 1, 1);
          v43 = v48;
          v42 = v47;
          v37 = v79;
        }

        *(v37 + 16) = v45 + 1;
        v46 = v37 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v43;
        v39 += 2;
        --v38;
      }

      while (v38);

      sub_240FE2060(v37);
      *&v79 = 0;
      *(&v79 + 1) = 0xE000000000000000;
      sub_241047058();
      MEMORY[0x245CD70E0](0xD00000000000002ALL, 0x800000024104E030);
      v49 = v78;
      v50 = *(v78 + 16);
      v51 = MEMORY[0x277D84F90];
      if (v50)
      {
        v77 = MEMORY[0x277D84F90];
        sub_240FE41A0(0, v50, 0);
        v52 = v77;
        v53 = (v78 + 40);
        v54 = v50;
        do
        {
          v55 = *(v53 - 1);
          v56 = *v53;
          *&v92 = 0x726964656C69665FLL;
          *(&v92 + 1) = 0xEA00000000002720;

          MEMORY[0x245CD70E0](v55, v56);
          MEMORY[0x245CD70E0](39, 0xE100000000000000);

          v57 = v92;
          v59 = *(v77 + 16);
          v58 = *(v77 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_240FE41A0((v58 > 1), v59 + 1, 1);
          }

          *(v77 + 16) = v59 + 1;
          *(v77 + 16 * v59 + 32) = v57;
          v53 += 2;
          --v54;
        }

        while (v54);
        v49 = v78;
        v51 = MEMORY[0x277D84F90];
      }

      else
      {
        v52 = MEMORY[0x277D84F90];
      }

      *&v92 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
      v60 = sub_241046AA8();
      v62 = v61;

      MEMORY[0x245CD70E0](v60, v62);

      MEMORY[0x245CD70E0](0xD000000000000026, 0x800000024104E060);
      if (v50)
      {
        sub_240FE41A0(0, v50, 0);
        v63 = v51;
        v64 = (v49 + 40);
        do
        {
          v65 = *(v64 - 1);
          v66 = *v64;

          sub_241047058();

          *&v92 = 0xD000000000000014;
          *(&v92 + 1) = 0x800000024104E090;
          MEMORY[0x245CD70E0](v65, v66);
          MEMORY[0x245CD70E0](0x632422202D2D2027, 0xEC00000029227275);

          v67 = v92;
          v69 = *(v63 + 16);
          v68 = *(v63 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_240FE41A0((v68 > 1), v69 + 1, 1);
          }

          *(v63 + 16) = v69 + 1;
          *(v63 + 16 * v69 + 32) = v67;
          v64 += 2;
          --v50;
        }

        while (v50);
      }

      else
      {

        v63 = MEMORY[0x277D84F90];
      }

      *&v92 = v63;
      v70 = sub_241046AA8();
      v72 = v71;

      MEMORY[0x245CD70E0](v70, v72);

      v9 = 0xD000000000000023;
      v10 = 0x800000024104E0B0;
      goto LABEL_61;
    }
  }

  v19 = v17;
  v20 = v18;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v19 == 39 && v20 == 0xE100000000000000 || (sub_241047428() & 1) != 0)
    {

      v23 = qword_2852DA598;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F438, &qword_241048070);
      result = swift_allocObject();
      *(result + 16) = xmmword_241047BF0;
      *(result + 32) = v19;
      *(result + 40) = v20;
      v23 = 1;
    }

    v24 = *(v21 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v25 <= *(v21 + 24) >> 1)
    {
      if (!v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_240FE3ED4(result, v26, 1, v21);
      v21 = result;
      if (!v23)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    if ((*(v21 + 24) >> 1) - *(v21 + 16) < v23)
    {
      goto LABEL_63;
    }

    swift_arrayInitWithCopy();

    v27 = *(v21 + 16);
    v28 = __OFADD__(v27, v23);
    v29 = v27 + v23;
    if (v28)
    {
      goto LABEL_64;
    }

    *(v21 + 16) = v29;
LABEL_19:
    v19 = sub_241046BD8();
    v20 = v22;
    if (!v22)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_240FEFFD0(uint64_t a1)
{
  result = sub_240FF4E24(0, a1);
  v2 = result;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_37:

    return v6;
  }

  v5 = 0;
  v40 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v38 = *(result + 16);
  v39 = result;
  while (v5 < *(v2 + 16))
  {
    v7 = (v40 + 192 * v5);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    v44[2] = v7[2];
    v44[3] = v10;
    v44[0] = v8;
    v44[1] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    v45 = v7[6];
    v46 = v13;
    v44[4] = v11;
    v44[5] = v12;
    v14 = v7[8];
    v15 = v7[9];
    v16 = v7[11];
    v49 = v7[10];
    v50 = v16;
    v47 = v14;
    v48 = v15;
    v17 = v4;
    if (BYTE8(v45))
    {
      goto LABEL_23;
    }

    if (*&v44[0] >= 2uLL)
    {
      v18 = *&v44[0];
    }

    else
    {
      v18 = v4;
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      sub_240FF0D20(*&v44[0]);
      sub_240FE0990(v44, &v41);
      v43 = v4;
      sub_240FE41A0(0, v19, 0);
      v17 = v43;
      v20 = (v18 + 48);
      while (1)
      {
        v21 = *(v20 - 2);
        v22 = *(v20 - 1);
        v23 = *v20;
        if (!(v23 >> 6))
        {
          break;
        }

        if (v23 >> 6 != 1)
        {
          v41 = 45;
          v24 = 0xE100000000000000;
          goto LABEL_17;
        }

        v41 = 0;
        v42 = 0xE000000000000000;

        MEMORY[0x245CD70E0](45, 0xE100000000000000);
        sub_241046A98();
LABEL_18:
        sub_240FF0D30(v21, v22, v23);
        v25 = v41;
        v26 = v42;
        v43 = v17;
        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_240FE41A0((v27 > 1), v28 + 1, 1);
          v17 = v43;
        }

        v20 += 24;
        *(v17 + 16) = v28 + 1;
        v29 = v17 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        if (!--v19)
        {

          result = sub_240FF0CCC(v44);
          v3 = v38;
          v2 = v39;
          v4 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      v41 = 11565;
      v24 = 0xE200000000000000;
LABEL_17:
      v42 = v24;

      MEMORY[0x245CD70E0](v21, v22);
      goto LABEL_18;
    }

    sub_240FF0D20(*&v44[0]);

    v17 = v4;
LABEL_23:
    v30 = *(v17 + 16);
    v31 = *(v6 + 16);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v33 = *(v6 + 24) >> 1, v33 >= v32))
    {
      if (!*(v17 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      result = sub_240FE2E68(result, v34, 1, v6);
      v6 = result;
      v33 = *(result + 24) >> 1;
      if (!*(v17 + 16))
      {
LABEL_3:

        if (v30)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if (v33 - *(v6 + 16) < v30)
    {
      goto LABEL_41;
    }

    swift_arrayInitWithCopy();

    if (v30)
    {
      v35 = *(v6 + 16);
      v36 = __OFADD__(v35, v30);
      v37 = v35 + v30;
      if (v36)
      {
        goto LABEL_42;
      }

      *(v6 + 16) = v37;
    }

LABEL_4:
    if (++v5 == v3)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_240FF030C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = (result + 16 + 16 * v1);
    v4 = *v3;
    v5 = *(v3[1] + 8);
    LOBYTE(v47) = 0;
    result = sub_240FDF86C(v4, v5, &v47, 0, 0, 0);
    v7 = v6;
    v8 = *(result + 16);
    if (!v8)
    {
      v13 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0x800000024104E150;
    v11 = "$(${COMP_WORDS[0]} ";
    v12 = result + 32;
    v13 = MEMORY[0x277D84F90];
    v14 = v8 - 1;
    while (1)
    {
      v15 = (v12 + 192 * v9);
      v16 = v9;
      while (1)
      {
        if (v16 >= *(result + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v17 = *v15;
        v18 = v15[1];
        v19 = v15[3];
        v49 = v15[2];
        v50 = v19;
        v47 = v17;
        v48 = v18;
        v20 = v15[4];
        v21 = v15[5];
        v22 = v15[7];
        v53 = v15[6];
        v54 = v22;
        v51 = v20;
        v52 = v21;
        v23 = v15[8];
        v24 = v15[9];
        v25 = v15[11];
        v57 = v15[10];
        v58 = v25;
        v55 = v23;
        v56 = v24;
        if (v47)
        {
          goto LABEL_7;
        }

        v26 = v55;
        if (v56 > 1u)
        {
          break;
        }

        if (v56 != 1)
        {
          v40 = v14;
          v41 = v12;
          v42 = v7;
          v43 = result;
          v45 = v55;
          sub_240FE0990(&v47, v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
          sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
          v30 = sub_241046AA8();
          v32 = v31;
          sub_240FF0CCC(&v47);
          goto LABEL_16;
        }

LABEL_7:
        ++v16;
        v15 += 12;
        if (v8 == v16)
        {
          goto LABEL_23;
        }
      }

      if (v56 == 4)
      {
        goto LABEL_7;
      }

      v40 = v14;
      v41 = v12;
      v42 = v7;
      v43 = result;
      if (v56 == 2)
      {
        v27 = *(&v55 + 1);
        v45 = 10276;
        v46 = 0xE200000000000000;
        sub_240FE0990(&v47, v44);
        MEMORY[0x245CD70E0](v26, v27);
        v28 = 41;
        v29 = 0xE100000000000000;
      }

      else
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_240FE0990(&v47, v44);
        sub_241047058();

        v45 = 0xD000000000000015;
        v46 = v10;
        v44[8] = v55;
        v44[9] = v56;
        v44[10] = v57;
        v44[11] = v58;
        v44[4] = v51;
        v44[5] = v52;
        v44[6] = v53;
        v44[7] = v54;
        v44[0] = v47;
        v44[1] = v48;
        v44[2] = v49;
        v44[3] = v50;
        v33 = sub_240FF2EF0(v2);
        MEMORY[0x245CD70E0](v33);

        v29 = v11 | 0x8000000000000000;
        v28 = 0xD000000000000014;
      }

      MEMORY[0x245CD70E0](v28, v29);
      sub_240FF0CCC(&v47);
      v30 = v45;
      v32 = v46;
LABEL_16:
      v34 = v11;
      v35 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_240FE2E68(0, *(v13 + 2) + 1, 1, v13);
      }

      v37 = *(v13 + 2);
      v36 = *(v13 + 3);
      result = v43;
      v14 = v40;
      if (v37 >= v36 >> 1)
      {
        v39 = sub_240FE2E68((v36 > 1), v37 + 1, 1, v13);
        v14 = v40;
        v13 = v39;
        result = v43;
      }

      v9 = v16 + 1;
      *(v13 + 2) = v37 + 1;
      v38 = &v13[16 * v37];
      *(v38 + 4) = v30;
      *(v38 + 5) = v32;
      v10 = v35;
      v11 = v34;
      v12 = v41;
      v7 = v42;
      if (v14 == v16)
      {
LABEL_23:

        return v13;
      }
    }
  }

LABEL_25:
  __break(1u);
  return result;
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

uint64_t sub_240FF06F4(uint64_t result)
{
  v46 = result;
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v2 = (result + 16 + 16 * v1);
  v3 = *v2;
  v4 = *(v2[1] + 8);
  LOBYTE(v64) = 0;
  v5 = sub_240FDF86C(v3, v4, &v64, 0, 0, 0);
  v6 = *(v5 + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v47 = MEMORY[0x277D84F90];
    v48 = v5 + 32;
    v49 = v5;
    v50 = v6;
    while (v8 < *(v5 + 16))
    {
      v10 = (v9 + 192 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[3];
      v66 = v10[2];
      v67 = v13;
      v64 = v11;
      v65 = v12;
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[7];
      v70 = v10[6];
      v71 = v16;
      v68 = v14;
      v69 = v15;
      v17 = v10[8];
      v18 = v10[9];
      v19 = v10[11];
      v74 = v10[10];
      v75 = v19;
      v72 = v17;
      v73 = v18;
      if (BYTE8(v70))
      {
        sub_240FE0990(&v64, &v52);
        goto LABEL_8;
      }

      v21 = v64;
      if (v64 >= 2)
      {
        v22 = v64;
      }

      else
      {
        v22 = v7;
      }

      v23 = *(v22 + 16);
      if (v23)
      {
        sub_240FE0990(&v64, &v52);
        sub_240FF0D20(v21);
        sub_240FE41A0(0, v23, 0);
        v20 = v7;
        v24 = (v22 + 48);
        while (1)
        {
          v26 = *(v24 - 2);
          v25 = *(v24 - 1);
          v27 = *v24;
          if (!(v27 >> 6))
          {
            break;
          }

          if (v27 >> 6 != 1)
          {
            *&v52 = 45;
            v28 = 0xE100000000000000;
            goto LABEL_19;
          }

          *&v52 = 0;
          *(&v52 + 1) = 0xE000000000000000;

          MEMORY[0x245CD70E0](45, 0xE100000000000000);
          sub_241046A98();
LABEL_20:
          sub_240FF0D30(v26, v25, v27);
          v29 = v52;
          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_240FE41A0((v30 > 1), v31 + 1, 1);
          }

          v24 += 24;
          *(v20 + 16) = v31 + 1;
          *(v20 + 16 * v31 + 32) = v29;
          if (!--v23)
          {

            v5 = v49;
            v6 = v50;
            v7 = MEMORY[0x277D84F90];
            v9 = v48;
            goto LABEL_24;
          }
        }

        *&v52 = 11565;
        v28 = 0xE200000000000000;
LABEL_19:
        *(&v52 + 1) = v28;

        MEMORY[0x245CD70E0](v26, v25);
        goto LABEL_20;
      }

      sub_240FE0990(&v64, &v52);
      sub_240FF0D20(v21);

LABEL_8:
      v20 = v7;
LABEL_24:
      ++v8;
      v32 = *(v20 + 16);

      if (v32 && BYTE8(v74) == 1)
      {
        v33 = v9;
        *&v52 = 0;
        *(&v52 + 1) = 0xE000000000000000;
        sub_241047058();
        v60 = v72;
        v61 = v73;
        v62 = v74;
        v63 = v75;
        v56 = v68;
        v57 = v69;
        v58 = v70;
        v59 = v71;
        v52 = v64;
        v53 = v65;
        v54 = v66;
        v55 = v67;
        *&v52 = sub_240FEF444();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
        sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
        v34 = sub_241046AA8();
        v36 = v35;

        v51 = v36;
        MEMORY[0x245CD70E0](2601, 0xE200000000000000);
        v60 = v72;
        v61 = v73;
        v62 = v74;
        v63 = v75;
        v56 = v68;
        v57 = v69;
        v58 = v70;
        v59 = v71;
        v52 = v64;
        v53 = v65;
        v54 = v66;
        v55 = v67;
        v37 = sub_240FEF608(v46);
        v39 = sub_240FF4B40(4, v37, v38);
        v41 = v40;

        MEMORY[0x245CD70E0](v39, v41);

        MEMORY[0x245CD70E0](0x746572202020200ALL, 0xEE003B3B0A6E7275);
        sub_240FF0CCC(&v64);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_240FE2E68(0, *(v47 + 16) + 1, 1, v47);
          v47 = result;
        }

        v43 = *(v47 + 16);
        v42 = *(v47 + 24);
        if (v43 >= v42 >> 1)
        {
          result = sub_240FE2E68((v42 > 1), v43 + 1, 1, v47);
          v47 = result;
        }

        *(v47 + 16) = v43 + 1;
        v44 = v47 + 16 * v43;
        *(v44 + 32) = v34;
        *(v44 + 40) = v51;
        v6 = v50;
        v9 = v33;
        if (v8 == v50)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = sub_240FF0CCC(&v64);
        if (v8 == v6)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_34:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *&v64 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
  v45 = sub_241046AA8();

  return v45;
}

unint64_t sub_240FF0C78()
{
  result = qword_280CC1E48;
  if (!qword_280CC1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC1E48);
  }

  return result;
}

unint64_t sub_240FF0D20(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_240FF0D30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_240FF0D48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_240FF0D90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_240FF0DA8(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_241048380;
  *(v7 + 32) = sub_240FF25C4(v4, v6);
  *(v7 + 40) = v8;
  v9 = sub_240FF26E4(v4, v6);
  v11 = v10;

  *(v7 + 48) = v9;
  *(v7 + 56) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_241047BF0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  sub_240FF0F74(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
  sub_240FF28F0();
  v13 = sub_241046AA8();

  MEMORY[0x245CD70E0](2570, 0xE200000000000000);

  v14 = sub_241046AA8();
  v16 = v15;

  MEMORY[0x245CD70E0](v14, v16);

  return v13;
}

uint64_t *sub_240FF0F74(void *a1)
{
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_93;
  }

  v7 = a1;
  v3 = v138;
  v10 = a1 + 4;
  v9 = a1[4];
  v11 = &v10[2 * v8];
  v13 = *(v11 - 2);
  v12 = *(v11 - 1);
  v5 = (*(v10[1] + 24))();
  v4 = v14;
  (*(v12 + 16))(&v145, v13, v12);
  v163[6] = v151;
  v163[7] = v152;
  v163[8] = v153;
  v163[2] = v147;
  v163[3] = v148;
  v163[4] = v149;
  v163[5] = v150;
  v163[0] = v145;
  v163[1] = v146;
  v143[6] = v151;
  v143[7] = v152;
  v143[8] = v153;
  v143[2] = v147;
  v143[3] = v148;
  v143[4] = v149;
  v143[5] = v150;
  v164 = v154;
  v144 = v154;
  v143[0] = v145;
  v143[1] = v146;
  CommandConfiguration.subcommands.getter();
  v16 = v15;
  sub_240FE724C(v163);
  v17 = *(v16 + 16);
  if (v17)
  {
    v135 = v5;
    v18 = v8;
    v19 = v17 - 1;
    v20 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 16)
    {
      v136 = *(v16 + i);
      (*(*(v16 + i + 8) + 16))(v161);
      v139 = v161[6];
      v140 = v161[7];
      v141 = v161[8];
      v142 = v162;
      v138[2] = v161[2];
      v138[3] = v161[3];
      v138[4] = v161[4];
      v138[5] = v161[5];
      v138[0] = v161[0];
      v138[1] = v161[1];
      sub_240FE724C(v138);
      if (v139 == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v160 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240FE42D8(0, *(v20 + 16) + 1, 1);
          v20 = v160;
        }

        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        v25 = v20;
        if (v24 >= v23 >> 1)
        {
          sub_240FE42D8((v23 > 1), v24 + 1, 1);
          v25 = v160;
        }

        *(v25 + 16) = v24 + 1;
        *(v25 + 16 * v24 + 32) = v136;
        v20 = v25;
      }

      if (!v19)
      {
        break;
      }

      --v19;
    }

    v8 = v18;
    v5 = v135;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  if (v8 != 1)
  {
    v137 = v20;
    goto LABEL_23;
  }

  v26 = v20;
  v1 = *(v20 + 16);
  if (!v1)
  {
    v137 = v26;
    goto LABEL_23;
  }

  v2 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_94;
  }

  for (j = v2; ; j = sub_240FE2D64(0, (v1 + 1), 1, v2))
  {
    v29 = *(j + 2);
    v28 = *(j + 3);
    v137 = j;
    if (v29 >= v28 >> 1)
    {
      v137 = sub_240FE2D64((v28 > 1), v29 + 1, 1, j);
    }

    v30 = sub_240FF0C78();
    *(v137 + 2) = v29 + 1;
    v31 = &v137[16 * v29];
    *(v31 + 4) = &type metadata for HelpCommand;
    *(v31 + 5) = v30;
LABEL_23:
    strcpy(&v145, "_swift_");
    *(&v145 + 1) = 0xE700000000000000;
    MEMORY[0x245CD70E0](v5, v4);

    MEMORY[0x245CD70E0](0x635F676E6973755FLL, 0xEE00646E616D6D6FLL);

    v33 = *(&v145 + 1);
    v32 = v145;
    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_241047058();

    strcpy(&v145, "complete -c ");
    BYTE13(v145) = 0;
    HIWORD(v145) = -5120;
    MEMORY[0x245CD70E0](v5, v4);

    MEMORY[0x245CD70E0](0x27206E2D20, 0xE500000000000000);
    MEMORY[0x245CD70E0](v32, v33);

    MEMORY[0x245CD70E0](8736, 0xE200000000000000);
    *&v143[0] = v6;
    sub_240FE41A0(0, v8, 0);
    v36 = *&v143[0];
    v37 = v7 + 5;
    v133 = v8;
    v38 = v8;
    do
    {
      v39 = (*(*v37 + 24))(*(v37 - 1), *v37, v34, v35);
      *&v143[0] = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        v44 = v39;
        v45 = v40;
        sub_240FE41A0((v41 > 1), v42 + 1, 1);
        v40 = v45;
        v39 = v44;
        v36 = *&v143[0];
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v37 += 2;
      --v38;
    }

    while (v38);
    *&v143[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF28F0();
    v46 = sub_241046AA8();
    v48 = v47;

    MEMORY[0x245CD70E0](v46, v48);

    MEMORY[0x245CD70E0](34, 0xE100000000000000);
    v160 = v145;
    v49 = v137;
    v50 = *(v137 + 2);
    if (v50)
    {
      *&v145 = 8736;
      *(&v145 + 1) = 0xE200000000000000;
      *&v143[0] = v6;
      sub_240FE41A0(0, v50, 0);
      v53 = *&v143[0];
      v54 = v137 + 40;
      do
      {
        v55 = (*(*v54 + 24))(*(v54 - 1), *v54, v51, v52);
        *&v143[0] = v53;
        v58 = *(v53 + 16);
        v57 = *(v53 + 24);
        if (v58 >= v57 >> 1)
        {
          v60 = v55;
          v61 = v56;
          sub_240FE41A0((v57 > 1), v58 + 1, 1);
          v56 = v61;
          v55 = v60;
          v53 = *&v143[0];
        }

        *(v53 + 16) = v58 + 1;
        v59 = v53 + 16 * v58;
        *(v59 + 32) = v55;
        *(v59 + 40) = v56;
        v54 += 2;
        --v50;
      }

      while (v50);
      *&v143[0] = v53;
      v62 = sub_241046AA8();
      v64 = v63;

      MEMORY[0x245CD70E0](v62, v64);

      MEMORY[0x245CD70E0](34, 0xE100000000000000);
      MEMORY[0x245CD70E0](v145, *(&v145 + 1));

      v49 = v137;
    }

    v2 = &v160;
    MEMORY[0x245CD70E0](39, 0xE100000000000000);
    v65 = *(v49 + 2);
    v134 = v7;
    if (v65)
    {
      v159 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v65, 0);
      v66 = v159;
      swift_beginAccess();
      v67 = v49 + 40;
      do
      {
        v68 = *(v67 - 1);
        v69 = *v67;
        (*(*v67 + 16))(v143, v68, *v67);
        v70 = v3[19];
        v3[30] = v3[18];
        v3[31] = v70;
        v3[32] = v3[20];
        v154 = v144;
        v71 = v3[15];
        v3[26] = v3[14];
        v3[27] = v71;
        v72 = v3[17];
        v3[28] = v3[16];
        v3[29] = v72;
        v73 = v3[13];
        v3[24] = v3[12];
        v3[25] = v73;
        v74 = *(&v147 + 1);
        v75 = v147;

        sub_240FE724C(&v145);
        v138[0] = __PAIR128__(v74, v75);
        v157 = 39;
        v158 = 0xE100000000000000;
        v155 = 10076;
        v156 = 0xE200000000000000;
        sub_240FE05E8();
        v76 = sub_241046EE8();
        v78 = v77;

        *&v143[0] = 0;
        *(&v143[0] + 1) = 0xE000000000000000;
        sub_241047058();

        *&v143[0] = 0x2720612D20662DLL;
        *(&v143[0] + 1) = 0xE700000000000000;
        v79 = (*(v69 + 24))(v68, v69);
        MEMORY[0x245CD70E0](v79);

        MEMORY[0x245CD70E0](0x2720642D2027, 0xE600000000000000);
        MEMORY[0x245CD70E0](v76, v78);

        MEMORY[0x245CD70E0](39, 0xE100000000000000);
        v80 = v143[0];
        v143[0] = v160;

        MEMORY[0x245CD70E0](32, 0xE100000000000000);
        v2 = v143;
        MEMORY[0x245CD70E0](v80, *(&v80 + 1));

        v81 = v143[0];
        v159 = v66;
        v83 = *(v66 + 16);
        v82 = *(v66 + 24);
        if (v83 >= v82 >> 1)
        {
          v2 = &v159;
          sub_240FE41A0((v82 > 1), v83 + 1, 1);
          v66 = v159;
        }

        *(v66 + 16) = v83 + 1;
        *(v66 + 16 * v83 + 32) = v81;
        v67 += 2;
        --v65;
      }

      while (v65);
      v132 = v66;
      v7 = v134;
    }

    else
    {
      v132 = MEMORY[0x277D84F90];
    }

    v84 = sub_240FF4E24(0, v7);
    v85 = v84;
    v86 = *(v84 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v86)
    {
      v6 = 0;
      v4 = (v84 + 32);
      do
      {
        v1 = &v4[12 * v6];
        v5 = v6;
        while (1)
        {
          if (v5 >= *(v85 + 16))
          {
            __break(1u);
            goto LABEL_88;
          }

          v87 = *v1;
          v88 = *(v1 + 1);
          v89 = *(v1 + 3);
          v3[26] = *(v1 + 2);
          v3[27] = v89;
          v3[24] = v87;
          v3[25] = v88;
          v90 = *(v1 + 4);
          v91 = *(v1 + 5);
          v92 = *(v1 + 7);
          v3[30] = *(v1 + 6);
          v3[31] = v92;
          v3[28] = v90;
          v3[29] = v91;
          v93 = *(v1 + 8);
          v94 = *(v1 + 9);
          v95 = *(v1 + 11);
          v3[34] = *(v1 + 10);
          v3[35] = v95;
          v3[32] = v93;
          v3[33] = v94;
          v6 = (v5 + 1);
          v96 = v3[33];
          v3[20] = v3[32];
          v3[21] = v96;
          v97 = v3[35];
          v3[22] = v3[34];
          v3[23] = v97;
          v98 = v3[29];
          v3[16] = v3[28];
          v3[17] = v98;
          v99 = v3[31];
          v3[18] = v3[30];
          v3[19] = v99;
          v100 = v3[25];
          v3[12] = v3[24];
          v3[13] = v100;
          v101 = v3[27];
          v3[14] = v3[26];
          v3[15] = v101;
          sub_240FE0990(&v145, v138);
          v2 = sub_240FF1DF4(v7);
          sub_240FF0CCC(&v145);
          if (v2)
          {
            break;
          }

          v1 += 192;
          ++v5;
          if (v86 == v6)
          {
            goto LABEL_52;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_240FE3C9C(0, *(v8 + 16) + 1, 1, v8);
        }

        v103 = *(v8 + 16);
        v102 = *(v8 + 24);
        if (v103 >= v102 >> 1)
        {
          v8 = sub_240FE3C9C((v102 > 1), v103 + 1, 1, v8);
        }

        *(v8 + 16) = v103 + 1;
        *(v8 + 8 * v103 + 32) = v2;
        v7 = v134;
      }

      while ((v86 - 1) != v5);
    }

LABEL_52:

    v104 = *(v8 + 16);
    if (v104)
    {
      *&v145 = MEMORY[0x277D84F90];
      sub_240FE41A0(0, v104, 0);
      v105 = 32;
      v106 = v145;
      do
      {
        *&v143[0] = *(v8 + v105);

        v107 = sub_241046AA8();
        v109 = v108;

        *&v145 = v106;
        v111 = v106[2];
        v110 = v106[3];
        if (v111 >= v110 >> 1)
        {
          sub_240FE41A0((v110 > 1), v111 + 1, 1);
          v106 = v145;
        }

        v106[2] = v111 + 1;
        v112 = &v106[2 * v111];
        v112[4] = v107;
        v112[5] = v109;
        v105 += 8;
        --v104;
      }

      while (v104);

      v113 = v106[2];
      if (!v113)
      {
LABEL_64:

        v5 = MEMORY[0x277D84F90];
        goto LABEL_65;
      }
    }

    else
    {

      v106 = MEMORY[0x277D84F90];
      v113 = *(MEMORY[0x277D84F90] + 16);
      if (!v113)
      {
        goto LABEL_64;
      }
    }

    *&v138[0] = MEMORY[0x277D84F90];
    sub_240FE41A0(0, v113, 0);
    v5 = *&v138[0];
    swift_beginAccess();
    v114 = v106 + 5;
    do
    {
      v115 = *(v114 - 1);
      v116 = *v114;
      v143[0] = v160;

      MEMORY[0x245CD70E0](32, 0xE100000000000000);
      MEMORY[0x245CD70E0](v115, v116);

      v117 = v143[0];
      *&v138[0] = v5;
      v119 = *(v5 + 16);
      v118 = *(v5 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_240FE41A0((v118 > 1), v119 + 1, 1);
        v5 = *&v138[0];
      }

      *(v5 + 16) = v119 + 1;
      *(v5 + 16 * v119 + 32) = v117;
      v114 += 2;
      --v113;
    }

    while (v113);

LABEL_65:
    v3 = *(v137 + 2);
    if (!v3)
    {
      break;
    }

    v4 = v137 + 32;
    v2 = MEMORY[0x277D84F90];
    v6 = &qword_27E51F2E8;
    v8 = &qword_2410480F0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
      v120 = swift_allocObject();
      *(v120 + 32) = *v4;
      v7 = (v120 + 32);
      *(v120 + 16) = xmmword_241047BF0;

      v121 = swift_isUniquelyReferenced_nonNull_native();
      if (!v121 || (v122 = v134[3] >> 1, v1 = v134, v122 <= v133))
      {
        v1 = sub_240FE2D64(v121, v133 + 1, 1, v134);
        v122 = *(v1 + 3) >> 1;
      }

      v123 = *(v1 + 2);
      if (v122 <= v123)
      {
        break;
      }

      *&v1[16 * v123 + 32] = *v7;

      ++*(v1 + 2);
      v7 = sub_240FF0F74(v1);

      v124 = v7[2];
      v1 = v2[2];
      v125 = &v1[v124];
      if (__OFADD__(v1, v124))
      {
        goto LABEL_89;
      }

      v126 = swift_isUniquelyReferenced_nonNull_native();
      if (!v126 || v125 > (v2[3] >> 1))
      {
        if (v1 <= v125)
        {
          v127 = &v1[v124];
        }

        else
        {
          v127 = v1;
        }

        v2 = sub_240FE2E68(v126, v127, 1, v2);
      }

      v1 = v137;
      if (v7[2])
      {
        if (((v2[3] >> 1) - v2[2]) < v124)
        {
          goto LABEL_91;
        }

        swift_arrayInitWithCopy();

        if (v124)
        {
          v128 = v2[2];
          v129 = __OFADD__(v128, v124);
          v130 = v128 + v124;
          if (v129)
          {
            goto LABEL_92;
          }

          v2[2] = v130;
        }
      }

      else
      {

        if (v124)
        {
          goto LABEL_90;
        }
      }

      ++v4;
      v3 = (v3 - 1);
      if (!v3)
      {
        goto LABEL_86;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_86:

  sub_240FE2060(v5);
  sub_240FE2060(v132);

  return v2;
}

uint64_t sub_240FF1DF4(void *a1)
{
  v2 = *v1;
  v83 = *(v1 + 8);
  v84 = *(v1 + 24);
  v85 = *(v1 + 40);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v81 = *(v1 + 72);
  v82 = *(v1 + 88);
  v5 = *(v1 + 128);
  *(v80 + 15) = *(v1 + 120);
  v80[0] = *(v1 + 105);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 145);
  *(v79 + 15) = *(v1 + 176);
  v78 = *(v1 + 145);
  v79[0] = *(v1 + 161);
  if (*(v1 + 104))
  {
    return 0;
  }

  v10 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  if (v2 >= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  sub_240FF0D20(v2);

  v56 = v5;
  if (v12)
  {
    v15 = v5;
    v55 = v7;
    v16 = v11;
    v17 = *(v11 + 16);
    if (v17)
    {
      v53 = v3;
      v50 = v2;
      v51 = v6;
      sub_240FF0D20(v2);
      v75 = v10;
      sub_240FE41A0(0, v17, 0);
      v18 = v10;
      v49 = v16;
      v19 = (v16 + 48);
      while (1)
      {
        v20 = *(v19 - 2);
        v21 = *(v19 - 1);
        v22 = *v19;
        if (!(v22 >> 6))
        {
          break;
        }

        if (v22 >> 6 != 1)
        {
          v57[0] = 2125613;
          goto LABEL_14;
        }

        v57[0] = 0;
        v57[1] = 0xE000000000000000;
        sub_240FF0D90(v20, v21, v22);
        MEMORY[0x245CD70E0](2126637, 0xE300000000000000);
        sub_241046A98();
LABEL_15:
        sub_240FF0D30(v20, v21, v22);
        v23 = v57[0];
        v24 = v57[1];
        v75 = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_240FE41A0((v25 > 1), v26 + 1, 1);
          v18 = v75;
        }

        v19 += 24;
        *(v18 + 16) = v26 + 1;
        v27 = v18 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        if (!--v17)
        {
          v11 = v49;

          v5 = v56;
          v2 = v50;
          v6 = v51;
          v3 = v53;
          goto LABEL_20;
        }
      }

      v57[0] = 2124845;
LABEL_14:
      v57[1] = 0xE300000000000000;
      sub_240FF0D90(v20, v21, v22);
      MEMORY[0x245CD70E0](v20, v21);
      goto LABEL_15;
    }

    sub_240FF0D20(v2);

    v18 = MEMORY[0x277D84F90];
    v11 = v16;
    v5 = v15;
LABEL_20:
    result = sub_240FE2060(v18);
    v7 = v55;
  }

  v28 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v28 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v29 = v11;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    v57[0] = 656434221;
    v57[1] = 0xE400000000000000;
    v75 = v3;
    v76 = v4;
    v73 = 39;
    v74 = 0xE100000000000000;
    v71 = 10076;
    v72 = 0xE200000000000000;
    sub_240FE05E8();
    v31 = sub_241046EE8();
    MEMORY[0x245CD70E0](v31);

    MEMORY[0x245CD70E0](39, 0xE100000000000000);
    *(inited + 32) = 656434221;
    *(inited + 40) = v57[1];
    v32 = inited;
    v11 = v29;
    v5 = v56;
    result = sub_240FE2060(v32);
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_241047BF0;
      sub_241047058();

      strcpy(v57, "-r -f -k -a '");
      HIWORD(v57[1]) = -4864;
      v75 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
      sub_240FF28F0();
      v41 = sub_241046AA8();
      MEMORY[0x245CD70E0](v41);

      MEMORY[0x245CD70E0](39, 0xE100000000000000);
      v42 = v57[1];
      *(v40 + 32) = v57[0];
      *(v40 + 40) = v42;
      v39 = v40;
      goto LABEL_37;
    }

    v75 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF28F0();
    v46 = sub_241046AA8();
    MEMORY[0x245CD70E0](v46);

    MEMORY[0x245CD70E0](125, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_241047BF0;
    sub_241047058();

    v57[0] = 0xD000000000000014;
    v57[1] = 0x800000024104E1D0;
    MEMORY[0x245CD70E0](8072746, 0xE300000000000000);

    v44 = 0x24206F686365203BLL;
    v45 = 0xEF2729646E653B69;
LABEL_36:
    MEMORY[0x245CD70E0](v44, v45);
    v47 = v57[1];
    *(v43 + 32) = v57[0];
    *(v43 + 40) = v47;
    v39 = v43;
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_241047BF0;
    strcpy(v57, "-r -f -a '(");
    HIDWORD(v57[1]) = -352321536;
    MEMORY[0x245CD70E0](v5, v6);
    v44 = 10025;
    v45 = 0xE200000000000000;
    goto LABEL_36;
  }

  if (v7 == 3)
  {
    v52 = v4;
    if (a1[2])
    {
      v33 = v2;
      v34 = (*(a1[5] + 24))(a1[4], a1[5], v13, v14);
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_241047BF0;
      sub_241047058();
      v76 = 0xE000000000000000;
      MEMORY[0x245CD70E0](0xD000000000000013, 0x800000024104E190);
      MEMORY[0x245CD70E0](v34, v36);

      MEMORY[0x245CD70E0](32, 0xE100000000000000);
      *&v57[1] = v83;
      v58 = v84;
      v59 = v85;
      v62 = v81;
      v63 = v82;
      *v65 = v80[0];
      v69 = v78;
      v57[0] = v33;
      v60 = v3;
      v61 = v52;
      v64 = 0;
      *&v65[15] = *(v80 + 15);
      v66 = v5;
      v67 = v6;
      v68 = 3;
      *v70 = v79[0];
      *&v70[15] = *(v79 + 15);
      v38 = sub_240FF2EF0(a1);
      MEMORY[0x245CD70E0](v38);

      MEMORY[0x245CD70E0](0xD00000000000001CLL, 0x800000024104E1B0);
      *(v37 + 32) = 0;
      *(v37 + 40) = v76;
      v39 = v37;
LABEL_37:
      sub_240FE2060(v39);
      return v77;
    }

    __break(1u);
  }

  else
  {
    if (v5 | v6)
    {
      v39 = &unk_2852DA5C8;
      goto LABEL_37;
    }

    v48 = *(v11 + 16);
    sub_240FF0D20(v2);

    if (v48)
    {
      return v77;
    }

    return 0;
  }

  return result;
}

uint64_t sub_240FF25C4(uint64_t a1, uint64_t a2)
{
  sub_241047058();
  MEMORY[0x245CD70E0](0xD00000000000004ELL, 0x800000024104E530);
  sub_241047058();

  MEMORY[0x245CD70E0](a1, a2);
  MEMORY[0x245CD70E0](0x636F72706572705FLL, 0xED0000726F737365);
  MEMORY[0x245CD70E0](0x5F74666977735FLL, 0xE700000000000000);

  MEMORY[0x245CD70E0](0xD0000000000000C7, 0x800000024104E580);
  return 0;
}

uint64_t sub_240FF26E4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x245CD70E0]();

  MEMORY[0x245CD70E0](0x635F676E6973755FLL, 0xEE00646E616D6D6FLL);

  sub_241047058();

  MEMORY[0x245CD70E0](a1, a2);
  MEMORY[0x245CD70E0](0x636F72706572705FLL, 0xED0000726F737365);
  sub_241047058();
  MEMORY[0x245CD70E0](0x6E6F6974636E7566, 0xE900000000000020);
  MEMORY[0x245CD70E0](0x5F74666977735FLL, 0xE700000000000000);

  MEMORY[0x245CD70E0](0xD00000000000001DLL, 0x800000024104E1F0);
  MEMORY[0x245CD70E0](0x5F74666977735FLL, 0xE700000000000000);

  MEMORY[0x245CD70E0](0xD000000000000040, 0x800000024104E210);
  MEMORY[0x245CD70E0](32, 0xE100000000000000);
  MEMORY[0x245CD70E0](0xD000000000000032, 0x800000024104E260);
  MEMORY[0x245CD70E0](32, 0xE100000000000000);
  MEMORY[0x245CD70E0](0xD00000000000028DLL, 0x800000024104E2A0);
  return 0;
}

unint64_t sub_240FF28F0()
{
  result = qword_27E51F4F8;
  if (!qword_27E51F4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F448, &qword_241048080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F4F8);
  }

  return result;
}

uint64_t sub_240FF2954()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*v0 == 6845306 && v2 == 0xE300000000000000)
  {
    return sub_240FF4FCC(v4, v3);
  }

  v6 = *v0;
  v7 = v0[1];
  if (sub_241047428())
  {
    return sub_240FF4FCC(v4, v3);
  }

  sub_241047428();
  if (v1 == 1752392034 && v2 == 0xE400000000000000 || (sub_241047428() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F2E8, &qword_2410480F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_240FF2D04(inited);
    swift_setDeallocating();
    sub_240FE05E8();
    v10 = sub_241046EE8();
    v12 = v11;

    sub_241047058();

    strcpy(v18, "#!/bin/bash\n\n");
    HIWORD(v18[1]) = -4864;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_241047BF0;
    *(v13 + 32) = v4;
    *(v13 + 40) = v3;
    v14 = sub_240FEE7AC(v13);
    v16 = v15;

    MEMORY[0x245CD70E0](v14, v16);

    MEMORY[0x245CD70E0](0x656C706D6F630A0ALL, 0xEE0020462D206574);
    MEMORY[0x245CD70E0](v10, v12);

    MEMORY[0x245CD70E0](32, 0xE100000000000000);
    v17 = (*(v3 + 24))(v4, v3);
    MEMORY[0x245CD70E0](v17);

    return v18[0];
  }

  else
  {
    if ((sub_241047428() & 1) == 0)
    {
      sub_241047428();
    }

    if (v1 == 1752394086 && v2 == 0xE400000000000000 || (sub_241047428() & 1) != 0)
    {
      return sub_240FF0DA8(v4, v3);
    }

    else
    {
      sub_241047058();
      MEMORY[0x245CD70E0](0xD000000000000019, 0x800000024104E6A0);
      sub_241047128();
      result = sub_2410471B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_240FF2D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_19:
    sub_240FF3CCC(v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v13 = sub_241046AA8();
    v15 = v14;

    MEMORY[0x245CD70E0](v13, v15);

    return 95;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_240FF3910(*(v2 - 1), *v2);
    v5 = *(result + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_240FE2E68(result, v9, 1, v3);
      v3 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 2;
    if (!--v1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_240FF2EF0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  v4 = *(a1 + 16);
  v5 = v4 != 0;
  v6 = MEMORY[0x277D84F90];
  if (v4 >= 2)
  {
    v34[0] = MEMORY[0x277D84F90];
    result = sub_240FE41A0(0, (v4 - v5) & ~((v4 - v5) >> 63), 0);
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      v6 = v34[0];
      v12 = a1 + 16 * v5 + 40;
      while (v5 < v4)
      {
        v13 = *(v12 - 8);
        result = (*(*v12 + 24))();
        v34[0] = v6;
        v16 = *(v6 + 16);
        v15 = *(v6 + 24);
        if (v16 >= v15 >> 1)
        {
          v18 = result;
          v19 = v14;
          sub_240FE41A0((v15 > 1), v16 + 1, 1);
          v14 = v19;
          result = v18;
          v6 = v34[0];
        }

        *(v6 + 16) = v16 + 1;
        v17 = v6 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v5;
        v12 += 16;
        if (v4 == v5)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    v34[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F448, &qword_241048080);
    sub_240FF0D48(&qword_27E51F4F8, &qword_27E51F448, &qword_241048080);
    v7 = sub_241046AA8();
    v9 = v8;

    if (v2 >= 2)
    {
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v20 = sub_24102BED8(v2);
    v22 = v21;
    v24 = v23;
    v25 = v23;

    if (v25 <= 0xFD)
    {
      v30 = sub_241034020(v20, v22, v24);
      v32 = v33;
      sub_240FF47C4(v20, v22, v24);
    }

    else if (v3[2])
    {
      v26 = v3[4];
      v27 = v3[5];
      v28 = v3[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_241047BF0;
      *(inited + 32) = v26;
      *(inited + 40) = v27;
      v34[0] = v28;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_240FE2060(inited);
      v30 = sub_241046AA8();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 2960685;
    }

    sub_241047058();

    strcpy(v34, "---completion ");
    HIBYTE(v34[1]) = -18;
    MEMORY[0x245CD70E0](v7, v9);

    MEMORY[0x245CD70E0](539831584, 0xE400000000000000);
    MEMORY[0x245CD70E0](v30, v32);

    return v34[0];
  }

  return result;
}

uint64_t CompletionShell.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CompletionShell.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

ArgumentParserInternal::CompletionShell_optional __swiftcall CompletionShell.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 6845306 && rawValue._object == 0xE300000000000000;
  if (v5 || (rawValue._countAndFlagsBits = sub_241047428(), (rawValue._countAndFlagsBits & 1) != 0) || countAndFlagsBits == 1752392034 && object == 0xE400000000000000 || ((rawValue._countAndFlagsBits = sub_241047428(), countAndFlagsBits == 1752394086) ? (v7 = object == 0xE400000000000000) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), (rawValue._countAndFlagsBits & 1) != 0 || (v8 & 1) != 0 || (rawValue._countAndFlagsBits = sub_241047428(), (rawValue._countAndFlagsBits & 1) != 0)))
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {

    *v4 = 0;
    v4[1] = 0;
  }

  result.value.rawValue = rawValue;
  result.is_nil = v6;
  return result;
}

uint64_t static CompletionShell.bash.getter@<X0>(void *a1@<X8>)
{
  result = sub_241047428();
  *a1 = 1752392034;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t static CompletionShell.fish.getter@<X0>(void *a1@<X8>)
{
  result = sub_241047428();
  if ((result & 1) == 0)
  {
    result = sub_241047428();
  }

  *a1 = 1752394086;
  a1[1] = 0xE400000000000000;
  return result;
}

unint64_t static CompletionShell.autodetected()@<X0>(void *a1@<X8>)
{
  result = getenv("SHELL");
  if (result)
  {
    v3 = sub_241046BC8();
    v19[0] = 47;
    v19[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v3);
    v17[2] = v19;
    v6 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF466C, v17, v4, v5, &v18);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 32 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      swift_bridgeObjectRetain_n();

      v13 = MEMORY[0x245CD7040](v9, v10, v11, v12);
      v15 = v14;
      swift_bridgeObjectRelease_n();
      v16._countAndFlagsBits = v13;
      v16._object = v15;
      return CompletionShell.init(rawValue:)(v16);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_240FF35E0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_240FF35EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2410475A8();
  sub_241046A88();
  return sub_2410475E8();
}

uint64_t sub_240FF3638()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_241046A88();
}

uint64_t sub_240FF3640()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2410475A8();
  sub_241046A88();
  return sub_2410475E8();
}

uint64_t sub_240FF3698(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_241047428();
  }
}

uint64_t sub_240FF36C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = result;
  if (!a4)
  {
    result = sub_24100C97C();
    if (v14)
    {
      v9 = result;
      v8 = v14;
      v10 = 6845306;
      if (result == 6845306 && v14 == 0xE300000000000000)
      {
        goto LABEL_22;
      }

      result = sub_241047428();
      if (result)
      {
        goto LABEL_21;
      }

      v10 = 1752392034;
      if (v9 == 1752392034 && v8 == 0xE400000000000000)
      {
        goto LABEL_22;
      }

      result = sub_241047428();
      v15 = v9 == 1752394086 && v8 == 0xE400000000000000;
      v16 = v15;
      if (result)
      {
        goto LABEL_21;
      }

      if (v16)
      {
        goto LABEL_21;
      }

      result = sub_241047428();
      if (result)
      {
        goto LABEL_21;
      }
    }

    sub_240FDEE00();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    goto LABEL_36;
  }

  v8 = a4;
  v9 = a3;
  v10 = 6845306;
  if (a3 == 6845306 && a4 == 0xE300000000000000)
  {
    goto LABEL_22;
  }

  result = sub_241047428();
  if (result)
  {
    goto LABEL_21;
  }

  v10 = 1752392034;
  if (v9 == 1752392034 && v8 == 0xE400000000000000)
  {
    goto LABEL_22;
  }

  result = sub_241047428();
  v11 = v9 == 1752394086 && v8 == 0xE400000000000000;
  v12 = v11;
  if (result & 1) != 0 || v12 || (result = sub_241047428(), (result))
  {
LABEL_21:
    v10 = v9;
LABEL_22:
    *a5 = v10;
    a5[1] = v8;
    a5[2] = v6;
    a5[3] = a2;
    return result;
  }

  sub_240FDEE00();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = v8;
LABEL_36:
  *(v13 + 16) = v17;
  *(v13 + 32) = v18;
  *(v13 + 48) = v19;
  *(v13 + 64) = v20;
  *(v13 + 80) = 3;
  return swift_willThrow();
}

uint64_t sub_240FF3910(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v49);
  v5 = v49[2];
  v4 = v49[3];

  sub_240FE724C(v49);
  if (!v4)
  {
    v26 = (*(a2 + 24))(a1, a2);
    v47 = 32;
    v48 = 0xE100000000000000;
    MEMORY[0x28223BE20](v26);
    v45 = &v47;
    v29 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF4830, v44, v27, v28, v46);
    v30 = *(v29 + 16);
    if (v30)
    {
      v47 = MEMORY[0x277D84F90];
      result = sub_240FE41A0(0, v30, 0);
      v31 = 0;
      v32 = v47;
      v33 = (v29 + 56);
      while (v31 < *(v29 + 16))
      {
        v34 = *(v33 - 3);
        v35 = *(v33 - 2);
        v36 = *(v33 - 1);
        v37 = *v33;

        v38 = MEMORY[0x245CD7040](v34, v35, v36, v37);
        v40 = v39;

        v47 = v32;
        v42 = *(v32 + 16);
        v41 = *(v32 + 24);
        if (v42 >= v41 >> 1)
        {
          result = sub_240FE41A0((v41 > 1), v42 + 1, 1);
          v32 = v47;
        }

        ++v31;
        *(v32 + 16) = v42 + 1;
        v43 = v32 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v33 += 4;
        if (v30 == v31)
        {

          return v32;
        }
      }

      goto LABEL_21;
    }

    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_241047BF0;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  v7 = (*(a2 + 24))(a1, a2);
  v47 = 32;
  v48 = 0xE100000000000000;
  MEMORY[0x28223BE20](v7);
  v45 = &v47;
  v10 = sub_240FF3E4C(0x7FFFFFFFFFFFFFFFLL, 1, sub_240FF4830, v44, v8, v9, v46);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_17:
    v47 = v6;
    sub_240FE2060(v14);
    return v47;
  }

  v46[0] = v6;
  v47 = MEMORY[0x277D84F90];
  result = sub_240FE41A0(0, v11, 0);
  v13 = 0;
  v14 = v47;
  v15 = (v10 + 56);
  while (v13 < *(v10 + 16))
  {
    v16 = *(v15 - 3);
    v17 = *(v15 - 2);
    v18 = *(v15 - 1);
    v19 = *v15;

    v20 = MEMORY[0x245CD7040](v16, v17, v18, v19);
    v22 = v21;

    v47 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_240FE41A0((v23 > 1), v24 + 1, 1);
      v14 = v47;
    }

    ++v13;
    *(v14 + 16) = v24 + 1;
    v25 = v14 + 16 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v15 += 4;
    if (v11 == v13)
    {

      v6 = v46[0];
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_240FF3CCC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a1[4];
  v3 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_241047BF0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  result = swift_bridgeObjectRetain_n();
  if (v1 != 1)
  {
    v7 = a1 + 5;
    v8 = 1;
    v21 = a1 + 5;
    do
    {
      v9 = (v5 + 16);
      v10 = &v7[2 * v8];
      v11 = v8;
      while (1)
      {
        if (v11 >= v1)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_22;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = *v9;
        if (!*v9)
        {
          break;
        }

        v15 = &v9[2 * v14];
        result = *v15;
        if (*v15 != v12 || v15[1] != v13)
        {
          v17 = *(v10 - 1);
          v18 = *v10;
          result = sub_241047428();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v10 += 2;
        if (v8 == v1)
        {
          goto LABEL_3;
        }
      }

      v19 = *(v5 + 24);

      if (v14 >= v19 >> 1)
      {
        result = sub_240FE2E68((v19 > 1), v14 + 1, 1, v5);
        v5 = result;
      }

      v7 = v21;
      *(v5 + 16) = v14 + 1;
      v20 = v5 + 16 * v14;
      *(v20 + 32) = v12;
      *(v20 + 40) = v13;
    }

    while (v8 != v1);
  }

LABEL_3:

  return v5;
}

unint64_t sub_240FF3E4C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_241046C78();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_240FE33DC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_240FE33DC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_241046C48();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_241046B68();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_241046B68();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_241046C78();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_240FE33DC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_241046C78();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_240FE33DC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_240FE33DC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_241046B68();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_240FF420C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x277D84F90];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_241046EB8();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_241046E68() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_241046E68();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_241046ED8();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_240FE33DC(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_240FE33DC((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_241046E68();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_241046ED8();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_240FE33DC((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_240FE33DC(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_241046ED8();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_240FE33DC(0, 1, 1, MEMORY[0x277D84F90]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}