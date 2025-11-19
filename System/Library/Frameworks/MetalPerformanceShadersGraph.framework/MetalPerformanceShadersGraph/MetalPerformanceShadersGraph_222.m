void *doinsert(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v4 = *(result + 4);
    v5 = *(result + 5);
    v6 = (v4 + 1) / 2;
    v7 = ((v4 + 1 + ((v4 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v6;
    if (v5 < v4 || v4 >= v7)
    {
LABEL_6:
      v9 = *(result + 3);
      v10 = *(result + 5);
      *(result + 5) = v10 + 1;
      *(v9 + 8 * v10) = a3 | a2;
      v11 = *(v9 + 8 * v5);
      v12 = *(result + 9);
      if (v12 >= a4)
      {
        *(result + 9) = v12 + 1;
        v13 = *(result + 19);
        if (v13 < a4)
        {
LABEL_8:
          v14 = *(result + 10);
          if (v14 < a4)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = *(result + 19);
        if (v13 < a4)
        {
          goto LABEL_8;
        }
      }

      *(result + 19) = v13 + 1;
      v14 = *(result + 10);
      if (v14 < a4)
      {
LABEL_9:
        v15 = *(result + 20);
        if (v15 < a4)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(result + 10) = v14 + 1;
      v15 = *(result + 20);
      if (v15 < a4)
      {
LABEL_10:
        v16 = *(result + 11);
        if (v16 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(result + 20) = v15 + 1;
      v16 = *(result + 11);
      if (v16 < a4)
      {
LABEL_11:
        v17 = *(result + 21);
        if (v17 < a4)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(result + 11) = v16 + 1;
      v17 = *(result + 21);
      if (v17 < a4)
      {
LABEL_12:
        v18 = *(result + 12);
        if (v18 < a4)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(result + 21) = v17 + 1;
      v18 = *(result + 12);
      if (v18 < a4)
      {
LABEL_13:
        v19 = *(result + 22);
        if (v19 < a4)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(result + 12) = v18 + 1;
      v19 = *(result + 22);
      if (v19 < a4)
      {
LABEL_14:
        v20 = *(result + 13);
        if (v20 < a4)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }

LABEL_33:
      *(result + 22) = v19 + 1;
      v20 = *(result + 13);
      if (v20 < a4)
      {
LABEL_15:
        v21 = *(result + 23);
        if (v21 < a4)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

LABEL_34:
      *(result + 13) = v20 + 1;
      v21 = *(result + 23);
      if (v21 < a4)
      {
LABEL_16:
        v22 = *(result + 14);
        if (v22 < a4)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }

LABEL_35:
      *(result + 23) = v21 + 1;
      v22 = *(result + 14);
      if (v22 < a4)
      {
LABEL_17:
        v23 = *(result + 24);
        if (v23 < a4)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      *(result + 14) = v22 + 1;
      v23 = *(result + 24);
      if (v23 < a4)
      {
LABEL_18:
        v24 = *(result + 15);
        if (v24 < a4)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }

LABEL_37:
      *(result + 24) = v23 + 1;
      v24 = *(result + 15);
      if (v24 < a4)
      {
LABEL_19:
        v25 = *(result + 25);
        if (v25 < a4)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }

LABEL_38:
      *(result + 15) = v24 + 1;
      v25 = *(result + 25);
      if (v25 < a4)
      {
LABEL_20:
        v26 = *(result + 16);
        if (v26 < a4)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

LABEL_39:
      *(result + 25) = v25 + 1;
      v26 = *(result + 16);
      if (v26 < a4)
      {
LABEL_21:
        v27 = *(result + 26);
        if (v27 < a4)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(result + 16) = v26 + 1;
      v27 = *(result + 26);
      if (v27 < a4)
      {
LABEL_22:
        v28 = *(result + 17);
        if (v28 < a4)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(result + 26) = v27 + 1;
      v28 = *(result + 17);
      if (v28 < a4)
      {
LABEL_23:
        v29 = *(result + 27);
        if (v29 < a4)
        {
LABEL_25:
          v30 = 8 * a4;
          v31 = result;
          result = memmove((v9 + 8 * a4 + 8), (v9 + 8 * a4), 8 * (*(result + 5) + ~a4));
          *(v31[3] + v30) = v11;
          return result;
        }

LABEL_24:
        *(result + 27) = v29 + 1;
        goto LABEL_25;
      }

LABEL_42:
      *(result + 17) = v28 + 1;
      v29 = *(result + 27);
      if (v29 < a4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v7 >> 61)
    {
      goto LABEL_45;
    }

    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = result;
    v36 = realloc(*(result + 3), 24 * v6);
    if (v36)
    {
      v37 = v36;
      result = v35;
      *(v35 + 3) = v37;
      *(v35 + 4) = v7;
      a4 = v34;
      a3 = v33;
      a2 = v32;
      goto LABEL_6;
    }

    result = v35;
    a4 = v34;
    a3 = v33;
    a2 = v32;
    if (!*(v35 + 4))
    {
LABEL_45:
      *(result + 4) = 12;
    }

    *result = &nuls;
    *(result + 1) = &nuls;
    goto LABEL_6;
  }

  return result;
}

void p_bracket(uint64_t a1, double a2, double a3, double a4, int32x4_t a5)
{
  v6 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (strncmp(*a1, "[:<:]]", 6uLL))
    {
      if (strncmp(v6, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      if (!*(a1 + 16))
      {
        v30 = *(a1 + 32);
        if (*(a1 + 40) < v30)
        {
          goto LABEL_249;
        }

        v31 = (v30 + 1) / 2;
        v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
        if (v30 >= v32)
        {
          goto LABEL_249;
        }

        if (v32 >> 61)
        {
          goto LABEL_30;
        }

        v114 = realloc(*(a1 + 24), 24 * v31);
        if (v114)
        {
          *(a1 + 24) = v114;
          *(a1 + 32) = v32;
          v6 = *a1;
          goto LABEL_249;
        }

        if (!*(a1 + 16))
        {
LABEL_30:
          *(a1 + 16) = 12;
        }

        v6 = &nuls;
        *(a1 + 8) = &nuls;
LABEL_249:
        v95 = *(a1 + 24);
        v96 = *(a1 + 40);
        *(a1 + 40) = v96 + 1;
        v97 = 2684354560;
        goto LABEL_250;
      }

LABEL_251:
      *a1 = v6 + 6;
      return;
    }

    if (*(a1 + 16))
    {
      goto LABEL_251;
    }

    v27 = *(a1 + 32);
    if (*(a1 + 40) >= v27)
    {
      v28 = (v27 + 1) / 2;
      v29 = ((v27 + 1 + ((v27 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28;
      if (v27 < v29)
      {
        if (v29 >> 61)
        {
          goto LABEL_24;
        }

        v94 = realloc(*(a1 + 24), 24 * v28);
        if (v94)
        {
          *(a1 + 24) = v94;
          *(a1 + 32) = v29;
          v6 = *a1;
          goto LABEL_225;
        }

        if (!*(a1 + 16))
        {
LABEL_24:
          *(a1 + 16) = 12;
        }

        v6 = &nuls;
        *(a1 + 8) = &nuls;
      }
    }

LABEL_225:
    v95 = *(a1 + 24);
    v96 = *(a1 + 40);
    *(a1 + 40) = v96 + 1;
    v97 = 2550136832;
LABEL_250:
    *(v95 + 8 * v96) = v97;
    goto LABEL_251;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v8 = *(v7 + 20);
  v9 = *(v7 + 16);
  *(v7 + 20) = v8 + 1;
  v10 = *(a1 + 48);
  if (v8 < v10)
  {
    v11 = *(v7 + 24);
    if (!v11)
    {
      goto LABEL_187;
    }

    goto LABEL_6;
  }

  v21 = (v10 + 8);
  *(a1 + 48) = v21;
  if (v10 < -8)
  {
    goto LABEL_187;
  }

  v22 = realloc(*(v7 + 24), 32 * (v10 + 8));
  v7 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_187;
  }

  v23 = (v21 >> 3) * v9;
  *(v7 + 24) = v22;
  v24 = realloc(*(v7 + 32), v23);
  v7 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_187;
  }

  *(v7 + 32) = v24;
  if (v8 >= 1)
  {
    v25 = *(v7 + 24);
    if (v8 == 1)
    {
      v26 = 0;
LABEL_184:
      v81 = (v25 + 32 * v26);
      do
      {
        *v81 = &v24[(v26 >> 3) * v9];
        v81 += 4;
        ++v26;
      }

      while (v8 != v26);
      goto LABEL_186;
    }

    v78 = 0;
    v26 = v8 & 0x7FFFFFFE;
    v79 = (v25 + 32);
    do
    {
      v80 = &v24[(v78 >> 3) * v9];
      *(v79 - 4) = v80;
      *v79 = v80;
      v79 += 8;
      v78 += 2;
    }

    while (v26 != v78);
    if (v26 != v8)
    {
      goto LABEL_184;
    }
  }

LABEL_186:
  bzero(&v24[v23 - v9], v9);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_187;
  }

LABEL_6:
  v12 = *(v7 + 32);
  if (v12)
  {
    v13 = (v11 + 32 * v8);
    v14 = v12 + v9 * (v8 / 8);
    *v13 = v14;
    v15 = 1;
    v16 = 1 << (v8 & 7);
    *(v13 + 4) = v16;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    v17 = *a1;
    v18 = *(a1 + 8);
    if (v18 - *a1 < 1)
    {
      goto LABEL_34;
    }

    v19 = *v17;
    v15 = v19 != 94;
    if (v19 == 94)
    {
      *a1 = ++v17;
      if (v18 - v17 < 1)
      {
        v15 = 0;
        v34 = *a1;
        v33 = *(a1 + 8);
        v35 = &v33[-*a1];
        if (v35 < 1)
        {
          goto LABEL_191;
        }

LABEL_35:
        v36 = "NUL";
        v37 = MEMORY[0x1E69E9830];
        do
        {
          v38 = *v34;
          if (v38 == 93)
          {
            break;
          }

          if (v35 != 1 && v38 == 45)
          {
            if (v34[1] != 93)
            {
LABEL_78:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 11;
              }

              goto LABEL_38;
            }

            *a1 = v34 + 1;
            *(*v13 + 45) |= v13[8];
            v13[9] += 45;
            v34 = *a1;
            v33 = *(a1 + 8);
            break;
          }

          if (v38 == 45)
          {
            goto LABEL_78;
          }

          if (v38 == 91 && v35 != 1)
          {
            v45 = v34[1];
            if (v45 == 61)
            {
              v53 = v34 + 2;
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v53 = &nuls;
              }

              v54 = *v53;
              if (v54 == 93 || v54 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 3;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v53 = &nuls;
              }

              v55 = v33 - v53;
              if (v55 < 1)
              {
LABEL_102:
                if (!*(a1 + 16))
                {
                  v61 = 7;
                  goto LABEL_104;
                }

LABEL_105:
                v60 = 0;
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

              else
              {
                v56 = 0;
                v57 = 0;
                while (v55 - 1 == v57 || v53[v57] != 61 || v53[v57 + 1] != 93)
                {
                  *a1 = &v53[++v57];
                  --v56;
                  if (v55 + v56 <= 0)
                  {
                    goto LABEL_102;
                  }
                }

                v58 = &off_1E86D3C78;
                while (strncmp(v36, v53, v57) || strlen(v36) != v57)
                {
                  v59 = *v58;
                  v58 += 2;
                  v36 = v59;
                  if (!v59)
                  {
                    if (v57 == 1)
                    {
                      v60 = *v53;
                      v36 = "NUL";
                      goto LABEL_106;
                    }

                    v36 = "NUL";
                    if (!*(a1 + 16))
                    {
                      v61 = 3;
LABEL_104:
                      *(a1 + 16) = v61;
                    }

                    goto LABEL_105;
                  }
                }

                v60 = *(v58 - 8);
                v36 = "NUL";
              }

LABEL_106:
              *(*v13 + v60) |= v13[8];
              v13[9] += v60;
              v62 = *a1;
              v33 = *(a1 + 8);
              if (&v33[-*a1] < 1)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v62 = &nuls;
                v33 = &nuls;
              }

              if (v33 - v62 > 1 && *v62 == 61 && v62[1] == 93)
              {
                goto LABEL_180;
              }

              if (!*(a1 + 16))
              {
                *(a1 + 16) = 3;
              }

              goto LABEL_38;
            }

            if (v45 == 58)
            {
              v46 = (v34 + 2);
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v46 = &nuls;
              }

              v47 = *v46;
              if (v47 == 93 || v47 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 4;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v46 = &nuls;
              }

              if (&v33[-v46] < 1)
              {
                v52 = v46;
                goto LABEL_118;
              }

              v48 = v36;
              v49 = -v46;
              v50 = (v46 + 1);
              while (1)
              {
                v51 = *(v50 - 1);
                if (v51 < 0)
                {
                  if (!__maskrune(*(v50 - 1), 0x100uLL))
                  {
LABEL_116:
                    v52 = *a1;
LABEL_117:
                    v36 = v48;
LABEL_118:
                    v63 = v52 - v46;
                    if (!strncmp("alnum", v46, v52 - v46) && !aAlnum[v63])
                    {
                      v64 = cclasses;
                    }

                    else if (!strncmp("alpha", v46, v63) && !aAlpha[v63])
                    {
                      v64 = off_1E86D3B48;
                    }

                    else if (!strncmp("blank", v46, v63) && !aBlank[v63])
                    {
                      v64 = off_1E86D3B60;
                    }

                    else if (!strncmp("cntrl", v46, v63) && !aCntrl[v63])
                    {
                      v64 = off_1E86D3B78;
                    }

                    else if (!strncmp("digit", v46, v63) && !aDigit[v63])
                    {
                      v64 = off_1E86D3B90;
                    }

                    else if (!strncmp("graph", v46, v63) && !aGraph[v63])
                    {
                      v64 = off_1E86D3BA8;
                    }

                    else if (!strncmp("lower", v46, v63) && !aLower[v63])
                    {
                      v64 = off_1E86D3BC0;
                    }

                    else if (!strncmp("print", v46, v63) && !aPrint[v63])
                    {
                      v64 = off_1E86D3BD8;
                    }

                    else if (!strncmp("punct", v46, v63) && !aPunct[v63])
                    {
                      v64 = off_1E86D3BF0;
                    }

                    else if (!strncmp("space", v46, v63) && !aSpace[v63])
                    {
                      v64 = off_1E86D3C08;
                    }

                    else if (!strncmp("upper", v46, v63) && !aUpper[v63])
                    {
                      v64 = off_1E86D3C20;
                    }

                    else
                    {
                      if (strncmp("xdigit", v46, v63) || aXdigit[v63])
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 4;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        goto LABEL_173;
                      }

                      v64 = off_1E86D3C38;
                    }

                    v65 = v64[1];
                    v66 = *v65;
                    if (*v65)
                    {
                      v67 = (v65 + 1);
                      do
                      {
                        *(*v13 + v66) |= v13[8];
                        v13[9] += v66;
                        v68 = *v67++;
                        v66 = v68;
                      }

                      while (v68);
                    }

                    v69 = v64[2];
                    if (*v69)
                    {
                      do
                      {
                        while (1)
                        {
                          v72 = *(v13 + 2);
                          v73 = v72 + strlen(v69) + 1;
                          *(v13 + 2) = v73;
                          v74 = realloc(*(v13 + 3), v73);
                          if (!v74)
                          {
                            break;
                          }

                          *(v13 + 3) = v74;
                          llvm_strlcpy(&v74[v72 - 1], v69, *(v13 + 2) - v72 + 1);
                          v70 = &v69[strlen(v69)];
                          v71 = *(v70 + 1);
                          v69 = v70 + 1;
                          if (!v71)
                          {
                            goto LABEL_173;
                          }
                        }

                        v75 = *(v13 + 3);
                        if (v75)
                        {
                          free(v75);
                        }

                        *(v13 + 3) = 0;
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 12;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        v76 = &v69[strlen(v69)];
                        v77 = *(v76 + 1);
                        v69 = v76 + 1;
                      }

                      while (v77);
                    }

LABEL_173:
                    v62 = *a1;
                    v33 = *(a1 + 8);
                    if (&v33[-*a1] < 1)
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 7;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                      v62 = &nuls;
                      v33 = &nuls;
                    }

                    if (v33 - v62 > 1 && *v62 == 58 && v62[1] == 93)
                    {
LABEL_180:
                      v34 = v62 + 2;
                      *a1 = v34;
                      goto LABEL_39;
                    }

                    if (!*(a1 + 16))
                    {
                      *(a1 + 16) = 4;
                    }

LABEL_38:
                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                    v34 = &nuls;
                    v33 = &nuls;
                    goto LABEL_39;
                  }
                }

                else if ((*(v37 + 4 * v51 + 60) & 0x100) == 0)
                {
                  goto LABEL_116;
                }

                *a1 = v50;
                --v49;
                ++v50;
                if (*(a1 + 8) + v49 <= 0)
                {
                  v52 = -v49;
                  goto LABEL_117;
                }
              }
            }
          }

          v40 = p_b_symbol(a1);
          v41 = v40;
          v42 = *a1;
          v43 = *(a1 + 8);
          if (v43 - *a1 >= 2 && *v42 == 45)
          {
            v44 = v42 + 1;
            if (v42[1] != 93)
            {
              *a1 = v44;
              if (v43 - v44 >= 1 && *v44 == 45)
              {
                *a1 = v42 + 2;
                v40 = 45;
              }

              else
              {
                v40 = p_b_symbol(a1);
              }

              if (v41 > v40)
              {
                goto LABEL_78;
              }
            }
          }

          do
          {
            *(*v13 + v41) |= v13[8];
            v13[9] += v41++;
          }

          while (v40 + 1 != v41);
          v34 = *a1;
          v33 = *(a1 + 8);
LABEL_39:
          v35 = v33 - v34;
        }

        while (v33 - v34 > 0);
LABEL_191:
        if (v33 - v34 >= 1 && (*a1 = v34 + 1, *v34 == 93))
        {
          if (!*(a1 + 16))
          {
            v83 = *(a1 + 56);
            if ((*(v83 + 40) & 2) != 0)
            {
              v84 = *(v83 + 16);
              if (v84 >= 1)
              {
                v85 = MEMORY[0x1E69E9830];
                while (1)
                {
                  v86 = v84 - 1;
                  v87 = (v84 - 1);
                  if ((v13[8] & *(*v13 + v87)) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v84 > 0x80)
                  {
                    if (!__maskrune(v84 - 1, 0x100uLL))
                    {
                      goto LABEL_197;
                    }
                  }

                  else if ((*(v85 + 4 * v84 + 56) & 0x100) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v86 > 0x7Fu)
                  {
                    if (__maskrune(v86, 0x8000uLL))
                    {
LABEL_207:
                      v89 = __tolower(v86);
                      if (v86 != v89)
                      {
                        goto LABEL_214;
                      }

                      goto LABEL_197;
                    }

                    v88 = __maskrune(v86, 0x1000uLL);
                  }

                  else
                  {
                    if ((*(v85 + 4 * v87 + 60) & 0x8000) != 0)
                    {
                      goto LABEL_207;
                    }

                    v88 = *(v85 + 4 * v87 + 60) & 0x1000;
                  }

                  if (v88)
                  {
                    v89 = __toupper(v86);
                    if (v86 != v89)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v89 = v86;
                    if (v86 != v86)
                    {
LABEL_214:
                      *(*v13 + v89) |= v13[8];
                      v13[9] += v89;
                    }
                  }

LABEL_197:
                  v84 = v86;
                  if (v86 + 1 <= 1)
                  {
                    v83 = *(a1 + 56);
                    break;
                  }
                }
              }
            }

            if (!v15)
            {
              v98 = *(v83 + 16);
              if (v98 >= 1)
              {
                v99 = v98 + 1;
                do
                {
                  while (1)
                  {
                    v100 = v99 - 2;
                    v101 = *v13;
                    v102 = (v99 - 2);
                    v103 = *(*v13 + v102);
                    v104 = v13[8];
                    if ((v104 & v103) == 0)
                    {
                      break;
                    }

                    *(v101 + v102) = v103 & ~v104;
                    v13[9] -= v100;
                    if (--v99 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  *(v101 + v102) = v104 | v103;
                  v13[9] += v100;
                  --v99;
                }

                while (v99 > 1);
LABEL_233:
                v83 = *(a1 + 56);
              }

              if ((*(v83 + 40) & 8) != 0)
              {
                *(*v13 + 10) &= ~v13[8];
                v13[9] -= 10;
                v83 = *(a1 + 56);
              }
            }

            v105 = *(v83 + 16);
            v106 = v105;
            if (!v105)
            {
              v111 = *(v83 + 20);
              if (v111 >= 1)
              {
                v112 = *(v83 + 24);
                v113 = &v112[32 * v111];
                while (v112 == v13 || v112[9] != v13[9])
                {
                  v112 += 32;
                  if (v112 >= v113)
                  {
                    goto LABEL_285;
                  }
                }

                goto LABEL_279;
              }

LABEL_285:
              v112 = v13;
              goto LABEL_286;
            }

            v107 = 0;
            v108 = 0;
            v109 = *v13;
            v110 = v13[8];
            if (v106 >= 4 && (v106 - 257) >= 0xFFFFFFFFFFFFFF00)
            {
              if (v106 < 0x20)
              {
                v108 = 0;
                v107 = 0;
LABEL_259:
                v133 = v107;
                v107 = v106 & 0x1FC;
                v134 = v108;
                v135 = vdup_n_s16(v110);
                v136.i64[0] = 0x100000001;
                v136.i64[1] = 0x100000001;
                do
                {
                  a5.i32[0] = *(v109 + (v133 & 0xFC));
                  a5 = vandq_s8(vmovl_u16(vtst_s16(*&vmovl_u8(*a5.i8), v135)), v136);
                  v134 = vaddq_s32(v134, a5);
                  v133 += 4;
                }

                while (v107 != v133);
                v108 = vaddvq_s32(v134);
                if (v107 == v106)
                {
                  goto LABEL_265;
                }

                goto LABEL_262;
              }

              v115 = 0;
              v116 = vdupq_n_s8(v110);
              v117 = 0uLL;
              v118.i64[0] = 0x100000001;
              v118.i64[1] = 0x100000001;
              v107 = v106 & 0x1E0;
              v119 = 0uLL;
              v120 = 0uLL;
              v121 = 0uLL;
              v122 = 0uLL;
              v123 = 0uLL;
              v124 = 0uLL;
              v125 = 0uLL;
              do
              {
                v126 = (v109 + (v115 & 0xE0));
                v127 = vtstq_s8(*v126, v116);
                v128 = vmovl_u8(*v127.i8);
                v129 = vmovl_high_u8(v127);
                v130 = vtstq_s8(v126[1], v116);
                v131 = vmovl_u8(*v130.i8);
                v132 = vmovl_high_u8(v130);
                v121 = vaddq_s32(v121, vandq_s8(vmovl_high_u16(v129), v118));
                v120 = vaddq_s32(v120, vandq_s8(vmovl_u16(*v129.i8), v118));
                v119 = vaddq_s32(v119, vandq_s8(vmovl_high_u16(v128), v118));
                v117 = vaddq_s32(v117, vandq_s8(vmovl_u16(*v128.i8), v118));
                v125 = vaddq_s32(v125, vandq_s8(vmovl_high_u16(v132), v118));
                v124 = vaddq_s32(v124, vandq_s8(vmovl_u16(*v132.i8), v118));
                v123 = vaddq_s32(v123, vandq_s8(vmovl_high_u16(v131), v118));
                v122 = vaddq_s32(v122, vandq_s8(vmovl_u16(*v131.i8), v118));
                v115 += 32;
              }

              while (v107 != v115);
              a5 = vaddq_s32(v124, v120);
              v108 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v122, v117), a5), vaddq_s32(vaddq_s32(v123, v119), vaddq_s32(v125, v121))));
              if (v107 == v106)
              {
                goto LABEL_265;
              }

              if ((v106 & 0x1C) != 0)
              {
                goto LABEL_259;
              }
            }

            do
            {
LABEL_262:
              if ((*(v109 + v107) & v110) != 0)
              {
                ++v108;
              }

              ++v107;
            }

            while (v106 != v107);
LABEL_265:
            if (v108 == 1)
            {
              v137 = 0;
              v138 = 0;
              while ((*(v109 + v138) & v110) == 0)
              {
                ++v138;
                v137 += 0x1000000;
                if (v106 == v138)
                {
                  v139 = 0;
                  goto LABEL_293;
                }
              }

              v139 = v137 >> 24;
LABEL_293:
              v147 = *(v83 + 88);
              if ((*(v83 + 40) & 2) == 0)
              {
                goto LABEL_310;
              }

              if (v139 > 0x7Fu)
              {
                if (!__maskrune(v139, 0x100uLL))
                {
                  goto LABEL_310;
                }

                if (!__maskrune(v139, 0x8000uLL))
                {
                  v149 = __maskrune(v139, 0x1000uLL);
LABEL_307:
                  v150 = v139;
                  if (v149)
                  {
                    v150 = __toupper(v139);
                  }

LABEL_309:
                  if (v139 != v150)
                  {
                    bothcases(a1, v139);
                    v159 = *(a1 + 56);
                    v155 = *(v159 + 16);
                    v92 = *(v159 + 24) + 32 * *(v159 + 20);
                    if (!v155)
                    {
LABEL_221:
                      if ((v92 - 32) == v13)
                      {
                        --*(*(a1 + 56) + 20);
                      }

                      return;
                    }

LABEL_325:
                    for (i = 0; i != v155; ++i)
                    {
                      *(*v13 + i) &= ~v13[8];
                      v13[9] -= i;
                    }

                    goto LABEL_221;
                  }

LABEL_310:
                  if (*(a1 + 16))
                  {
                    if (*(v147 + v139))
                    {
                      goto LABEL_312;
                    }

                    goto LABEL_324;
                  }

                  v156 = *(a1 + 32);
                  if (*(a1 + 40) >= v156)
                  {
                    v157 = (v156 + 1) / 2;
                    v158 = ((v156 + 1 + ((v156 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v157;
                    if (v156 < v158)
                    {
                      if (v158 >> 61)
                      {
LABEL_317:
                        *(a1 + 16) = 12;
LABEL_318:
                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        goto LABEL_323;
                      }

                      v160 = realloc(*(a1 + 24), 24 * v157);
                      if (!v160)
                      {
                        if (*(a1 + 16))
                        {
                          goto LABEL_318;
                        }

                        goto LABEL_317;
                      }

                      *(a1 + 24) = v160;
                      *(a1 + 32) = v158;
                    }
                  }

LABEL_323:
                  v161 = *(a1 + 24);
                  v162 = *(a1 + 40);
                  *(a1 + 40) = v162 + 1;
                  *(v161 + 8 * v162) = v139 | 0x10000000u;
                  if (*(v147 + v139))
                  {
LABEL_312:
                    v154 = *(a1 + 56);
                    v155 = *(v154 + 16);
                    v92 = *(v154 + 24) + 32 * *(v154 + 20);
                    if (!v155)
                    {
                      goto LABEL_221;
                    }

                    goto LABEL_325;
                  }

LABEL_324:
                  v163 = *(a1 + 56);
                  v164 = *(v163 + 84);
                  *(v163 + 84) = v164 + 1;
                  *(v147 + v139) = v164;
                  v165 = *(a1 + 56);
                  v155 = *(v165 + 16);
                  v92 = *(v165 + 24) + 32 * *(v165 + 20);
                  if (!v155)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_325;
                }
              }

              else
              {
                v148 = *(MEMORY[0x1E69E9830] + 4 * v139 + 60);
                if ((v148 & 0x100) == 0)
                {
                  goto LABEL_310;
                }

                if ((v148 & 0x8000) == 0)
                {
                  v149 = *(MEMORY[0x1E69E9830] + 4 * v139 + 60) & 0x1000;
                  goto LABEL_307;
                }
              }

              v150 = __tolower(v139);
              goto LABEL_309;
            }

            v140 = *(v83 + 20);
            if (v140 >= 1)
            {
              v112 = *(v83 + 24);
              v113 = &v112[32 * v140];
              while (1)
              {
                if (v112 != v13 && v112[9] == v13[9])
                {
                  v141 = 0;
                  while (((*(*v112 + v141) & v112[8]) != 0) != ((*(*v13 + v141) & v13[8]) == 0))
                  {
                    if (v106 == ++v141)
                    {
                      goto LABEL_279;
                    }
                  }

                  if (v106 == v141)
                  {
                    break;
                  }
                }

                v112 += 32;
                if (v112 >= v113)
                {
                  goto LABEL_285;
                }
              }

LABEL_279:
              if (v106)
              {
                for (j = 0; j != v106; ++j)
                {
                  *(*v13 + j) &= ~v13[8];
                  v13[9] -= j;
                }

                v83 = *(a1 + 56);
              }

              if (v113 - 32 == v13)
              {
                --*(v83 + 20);
              }

LABEL_286:
              if (*(a1 + 16))
              {
                return;
              }

              v143 = (&v112[-*(v83 + 24)] >> 5);
              v144 = *(a1 + 32);
              if (*(a1 + 40) >= v144)
              {
                v145 = (v144 + 1) / 2;
                v146 = ((v144 + 1 + ((v144 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v145;
                if (v144 < v146)
                {
                  if (v146 >> 61)
                  {
                    goto LABEL_290;
                  }

                  v151 = realloc(*(a1 + 24), 24 * v145);
                  if (v151)
                  {
                    *(a1 + 24) = v151;
                    *(a1 + 32) = v146;
                    goto LABEL_305;
                  }

                  if (!*(a1 + 16))
                  {
LABEL_290:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }

LABEL_305:
              v152 = *(a1 + 24);
              v153 = *(a1 + 40);
              *(a1 + 40) = v153 + 1;
              *(v152 + 8 * v153) = v143 | 0x30000000;
              return;
            }

            goto LABEL_285;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        v90 = *(a1 + 56);
        v91 = *(v90 + 16);
        v92 = *(v90 + 24) + 32 * *(v90 + 20);
        if (v91)
        {
          for (k = 0; k != v91; ++k)
          {
            *(*v13 + k) &= ~v13[8];
            v13[9] -= k;
          }
        }

        goto LABEL_221;
      }

      v19 = *v17;
    }

    if (v19 == 93)
    {
      v20 = 93;
    }

    else
    {
      if (v19 != 45)
      {
        goto LABEL_34;
      }

      v20 = 45;
    }

    *a1 = v17 + 1;
    *(v14 + v20) |= v16;
    v13[9] += v19;
LABEL_34:
    v34 = *a1;
    v33 = *(a1 + 8);
    v35 = &v33[-*a1];
    if (v35 < 1)
    {
      goto LABEL_191;
    }

    goto LABEL_35;
  }

LABEL_187:
  free(*(v7 + 24));
  v82 = *(a1 + 56);
  *(v82 + 24) = 0;
  free(*(v82 + 32));
  *(*(a1 + 56) + 32) = 0;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 12;
  }

  *a1 = &nuls;
  *(a1 + 8) = &nuls;
}

__n128 ordinary(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v8 = *(a1 + 56);
  v9 = *(v8 + 88);
  v10 = a2;
  if ((*(v8 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v10, 0x8000uLL))
    {
      v14 = __maskrune(v10, 0x1000uLL);
      v12 = a2;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v12 = __tolower(v10);
    goto LABEL_12;
  }

  v11 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60);
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v12 = a2;
  if ((v11 & 0x1000) != 0)
  {
LABEL_11:
    v12 = __toupper(v10);
  }

LABEL_12:
  if (a2 != v12)
  {
    v26 = a2;
    v27 = 93;
    v23 = *a1;
    v25 = *a1;
    *a1 = &v26;
    *(a1 + 8) = &v27 + 1;
    p_bracket(a1, v23.n128_f64[0], a4, a5, a6);
    result = v25;
    *a1 = v25;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v9 + a2))
    {
      return result;
    }

LABEL_21:
    v21 = *(a1 + 56);
    v22 = *(v21 + 84);
    *(v21 + 84) = v22 + 1;
    *(v9 + a2) = v22;
    return result;
  }

  v15 = *(a1 + 32);
  v16 = (v15 + 1) / 2;
  v17 = ((v15 + 1 + ((v15 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v16;
  if (*(a1 + 40) >= v15 && v15 < v17)
  {
    if (v17 >> 61)
    {
      goto LABEL_24;
    }

    v24 = realloc(*(a1 + 24), 24 * v16);
    if (v24)
    {
      *(a1 + 24) = v24;
      *(a1 + 32) = v17;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
  }

LABEL_20:
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  *(a1 + 40) = v20 + 1;
  *(v19 + 8 * v20) = v10 | 0x10000000u;
  if (!*(v9 + a2))
  {
    goto LABEL_21;
  }

  return result;
}

_DWORD *repeat(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[4])
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 5);
LABEL_3:
  while (2)
  {
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      v10 = a3 - 1;
      v11 = a2;
      while (1)
      {
        v13 = v11;
        v11 = v7;
        if (a3 == 256)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (a3 < 2)
        {
          v14 = a3;
        }

        v15 = v9 + 8 * v14;
        if (v15 != 19)
        {
          if (v15 <= 8)
          {
            if ((v15 - 1) >= 3)
            {
              if (v15)
              {
                goto LABEL_127;
              }

              v11 = v13;
LABEL_114:
              v6[5] = v11;
              return result;
            }

LABEL_106:
            doinsert(v6, 2013265920, v11 - v13 + 1, v13);
            result = repeat(v6, v13 + 1, 1, a4);
            if (*(v6 + 4))
            {
              return result;
            }

            v47 = v6[4];
            v46 = v6[5];
            v48 = v46 - v13;
            if (v46 < v47 || (v49 = (v47 + 1) / 2, v50 = ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v49, v47 >= v50))
            {
              result = v6[3];
              v52 = v6[5];
              v6[5] = v52 + 1;
              *&result[2 * v52] = v48 | 0x80000000;
            }

            else
            {
              if (v50 >> 61)
              {
LABEL_110:
                *(v6 + 4) = 12;
LABEL_111:
                *v6 = &nuls;
                v6[1] = &nuls;
                v51 = v48 | 0x80000000;
LABEL_148:
                v69 = v6[3];
                v70 = v6[5];
                v6[5] = v70 + 1;
                *(v69 + 8 * v70) = v51;
                return result;
              }

              result = realloc(v6[3], 24 * v49);
              if (!result)
              {
                if (*(v6 + 4))
                {
                  goto LABEL_111;
                }

                goto LABEL_110;
              }

              v6[3] = result;
              v6[4] = v50;
              v60 = *(v6 + 4);
              v61 = v6[5];
              v6[5] = v61 + 1;
              *&result[2 * v61] = v48 | 0x80000000;
              if (v60)
              {
                return result;
              }
            }

            *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (v6[5] - v13);
            v53 = v6[4];
            if (v6[5] < v53 || (v54 = (v53 + 1) / 2, v55 = ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v54, v53 >= v55))
            {
              v56 = v6[5];
              v6[5] = v56 + 1;
              *&result[2 * v56] = 2281701376;
            }

            else
            {
              if (v55 >> 61)
              {
                *(v6 + 4) = 12;
                *v6 = &nuls;
                v6[1] = &nuls;
LABEL_152:
                v71 = v6[5];
                v6[5] = v71 + 1;
                v72 = 2281701376;
LABEL_157:
                *&result[2 * v71] = v72;
                return result;
              }

              result = realloc(result, 24 * v54);
              if (!result)
              {
                if (!*(v6 + 4))
                {
                  *(v6 + 4) = 12;
                }

                *v6 = &nuls;
                v6[1] = &nuls;
                result = v6[3];
                goto LABEL_152;
              }

              v6[3] = result;
              v6[4] = v55;
              v62 = *(v6 + 4);
              v63 = v6[5];
              v6[5] = v63 + 1;
              *&result[2 * v63] = 2281701376;
              if (v62)
              {
                return result;
              }
            }

            *&result[2 * v6[5] - 2] = *&result[2 * v6[5] - 2] & 0xF8000000 | 1;
            v57 = v6[4];
            if (v6[5] >= v57)
            {
              v58 = (v57 + 1) / 2;
              v59 = ((v57 + 1 + ((v57 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v58;
              if (v57 < v59)
              {
                if (v59 >> 61)
                {
                  *(v6 + 4) = 12;
                  *v6 = &nuls;
                  v6[1] = &nuls;
                }

                else
                {
                  result = realloc(result, 24 * v58);
                  if (result)
                  {
                    v6[3] = result;
                    v6[4] = v59;
                  }

                  else
                  {
                    if (!*(v6 + 4))
                    {
                      *(v6 + 4) = 12;
                    }

                    *v6 = &nuls;
                    v6[1] = &nuls;
                    result = v6[3];
                  }
                }
              }
            }

            v71 = v6[5];
            v6[5] = v71 + 1;
            v72 = 2415919106;
            goto LABEL_157;
          }

          if (v15 <= 10)
          {
            if (v15 == 9)
            {
              return result;
            }

            goto LABEL_29;
          }

          if (v15 == 11)
          {
LABEL_135:
            result = doinsert(v6, 1207959552, v11 - v13 + 1, v13);
            if (*(v6 + 4))
            {
              return result;
            }

            v65 = v6[4];
            v64 = v6[5];
            v66 = v64 - v13;
            if (v64 < v65)
            {
              goto LABEL_147;
            }

            v67 = (v65 + 1) / 2;
            v68 = ((v65 + 1 + ((v65 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
            if (v65 >= v68)
            {
              goto LABEL_147;
            }

            if (v68 >> 61)
            {
              goto LABEL_139;
            }

            result = realloc(v6[3], 24 * v67);
            if (result)
            {
              v6[3] = result;
              v6[4] = v68;
              goto LABEL_147;
            }

            if (!*(v6 + 4))
            {
LABEL_139:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
LABEL_147:
            v51 = v66 | 0x50000000;
            goto LABEL_148;
          }

          if (v15 != 18)
          {
            goto LABEL_127;
          }

          v7 = v11;
          v26 = v11 - v13;
          if (v11 == v13)
          {
            goto LABEL_64;
          }

          if (v26 >= 1)
          {
            v27 = v6[4] + v26;
            if (v27 >> 61)
            {
              goto LABEL_50;
            }

            v33 = realloc(v6[3], 8 * v27);
            if (v33)
            {
              v6[3] = v33;
              v6[4] = v27;
              goto LABEL_63;
            }

            if (!*(v6 + 4))
            {
LABEL_50:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
          }

LABEL_63:
          result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v26);
          v7 = v6[5] + v26;
          v6[5] = v7;
LABEL_64:
          --a3;
          a2 = v11;
          a4 = (a4 - 1);
          if (!*(v6 + 4))
          {
            goto LABEL_3;
          }

          return result;
        }

        v16 = v11 - v13;
        if (v11 == v13)
        {
          break;
        }

        if (v16 >= 1)
        {
          v17 = v6[4] + v16;
          if (v17 >> 61)
          {
            goto LABEL_22;
          }

          v12 = realloc(v6[3], 8 * v17);
          if (!v12)
          {
            if (!*(v6 + 4))
            {
LABEL_22:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
            goto LABEL_12;
          }

          v6[3] = v12;
          v6[4] = v17;
        }

LABEL_12:
        result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v16);
        v7 = v6[5] + v16;
        v6[5] = v7;
        --a3;
        --v10;
        if (*(v6 + 4))
        {
          return result;
        }
      }

      do
      {
        if (v10 == 256)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        if (v10 + 1 >= 3)
        {
          v24 = v23;
        }

        else
        {
          v24 = v10;
        }

        v25 = v9 + 8 * v24;
        --v10;
      }

      while (v25 == 19);
      if (v25 <= 8)
      {
        v13 = v11;
        if ((v25 - 1) >= 3)
        {
          if (v25)
          {
            goto LABEL_127;
          }

          goto LABEL_114;
        }

        goto LABEL_106;
      }

      if (v25 > 10)
      {
        if (v25 != 11)
        {
          if (v25 == 18)
          {
            a3 = v10 + 1;
            v7 = v11;
            goto LABEL_64;
          }

LABEL_127:
          *(v6 + 4) = 15;
          *v6 = &nuls;
          v6[1] = &nuls;
          return result;
        }

        v13 = v11;
        goto LABEL_135;
      }

      if (v25 == 9)
      {
        return result;
      }

      v13 = v11;
LABEL_29:
      v18 = v11 - v13;
      result = doinsert(v6, 2013265920, v11 - v13 + 1, v13);
      a2 = v6[5];
      if (*(v6 + 4))
      {
        goto LABEL_83;
      }

      v19 = v6[4];
      if (a2 < v19 || (v20 = (v19 + 1) / 2, v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20, v19 >= v21))
      {
        v22 = 1;
      }

      else
      {
        if (v21 >> 61)
        {
          v22 = 0;
          *(v6 + 4) = 12;
          goto LABEL_98;
        }

        v38 = v6[5];
        v39 = realloc(v6[3], 24 * v20);
        if (v39)
        {
          v6[3] = v39;
          v6[4] = v21;
          v22 = *(v6 + 4) == 0;
          a2 = v38;
        }

        else
        {
          a2 = v38;
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          v22 = 0;
LABEL_98:
          *v6 = &nuls;
          v6[1] = &nuls;
        }
      }

      result = v6[3];
      v28 = v6[5];
      v6[5] = v28 + 1;
      *&result[2 * v28] = (a2 - v13) | 0x80000000;
      a2 = v6[5];
      if (!v22)
      {
        goto LABEL_83;
      }

      *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (a2 - v13);
      v29 = v6[4];
      if (v6[5] < v29 || (v30 = (v29 + 1) / 2, v31 = ((v29 + 1 + ((v29 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v30, v29 >= v31))
      {
        v34 = v6[5];
        v6[5] = v34 + 1;
        *&result[2 * v34] = 2281701376;
        a2 = v6[5];
LABEL_67:
        *&result[2 * a2 - 2] = *&result[2 * a2 - 2] & 0xF8000000 | 1;
        v35 = v6[4];
        if (v6[5] < v35 || (v36 = (v35 + 1) / 2, v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36, v35 >= v37))
        {
LABEL_81:
          v32 = 2415919106;
        }

        else
        {
          if (v37 >> 61)
          {
            *(v6 + 4) = 12;
            v32 = 2415919106;
LABEL_71:
            *v6 = &nuls;
            v6[1] = &nuls;
            goto LABEL_82;
          }

          result = realloc(result, 24 * v36);
          if (result)
          {
            v6[3] = result;
            v6[4] = v37;
            goto LABEL_81;
          }

          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &nuls;
          v6[1] = &nuls;
          v32 = 2415919106;
          result = v6[3];
        }

LABEL_82:
        v42 = v6[5];
        v6[5] = v42 + 1;
        *&result[2 * v42] = v32;
        a2 = v6[5];
        goto LABEL_83;
      }

      if (v31 >> 61)
      {
        *(v6 + 4) = 12;
        v32 = 2281701376;
        goto LABEL_71;
      }

      result = realloc(result, 24 * v30);
      if (!result)
      {
        if (!*(v6 + 4))
        {
          *(v6 + 4) = 12;
        }

        *v6 = &nuls;
        v6[1] = &nuls;
        v32 = 2281701376;
        result = v6[3];
        goto LABEL_82;
      }

      v6[3] = result;
      v6[4] = v31;
      v40 = *(v6 + 4);
      v41 = v6[5];
      a2 = v41 + 1;
      v6[5] = v41 + 1;
      *&result[2 * v41] = 2281701376;
      if (!v40)
      {
        goto LABEL_67;
      }

LABEL_83:
      if (v11 == v13)
      {
        break;
      }

      v43 = a2;
      if (v18 >= 1)
      {
        v44 = v6[4] + v18;
        if (v44 >> 61 || (v45 = realloc(v6[3], 8 * v44)) == 0)
        {
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &nuls;
          v6[1] = &nuls;
        }

        else
        {
          v6[3] = v45;
          v6[4] = v44;
        }
      }

      result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13 + 8), 8 * v18);
      v7 = v6[5] + v18;
      v6[5] = v7;
      a3 = 1;
      a2 = v43;
      a4 = (a4 - 1);
      if (*(v6 + 4))
      {
        return result;
      }
    }

    a3 = 1;
    v7 = a2;
    a4 = (a4 - 1);
    if (!*(v6 + 4))
    {
      continue;
    }

    return result;
  }
}

uint64_t p_b_symbol(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 - *a1 < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v1 = &nuls;
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    goto LABEL_16;
  }

  v3 = v2 - v1;
  if (v2 - v1 <= 1 || *v1 != 91 || v1[1] != 46)
  {
LABEL_16:
    *a1 = v1 + 1;
    return *v1;
  }

  v4 = v1 + 2;
  *a1 = v1 + 2;
  if (v2 - (v1 + 2) < 1)
  {
LABEL_23:
    if (*(a1 + 16))
    {
      goto LABEL_26;
    }

    v15 = 7;
  }

  else
  {
    v5 = 0;
    v6 = -2;
    while (1)
    {
      v7 = &v1[v5];
      if (v3 - 3 != v5 && v7[2] == 46 && v1[v5 + 3] == 93)
      {
        break;
      }

      *a1 = v7 + 3;
      ++v5;
      --v6;
      if (v3 + v6 <= 0)
      {
        goto LABEL_23;
      }
    }

    v8 = a1;
    v9 = &v1[v5 + 2];
    v10 = "NUL";
    v11 = &off_1E86D3C78;
    do
    {
      if (!strncmp(v10, v4, v5) && strlen(v10) == v5)
      {
        v12 = *(v11 - 8);
        a1 = v8;
        if (v2 - v9 <= 1)
        {
          goto LABEL_32;
        }

LABEL_27:
        if (*v9 == 46 && v9[1] == 93)
        {
          *a1 = v9 + 2;
          return v12;
        }

        goto LABEL_32;
      }

      v14 = *v11;
      v11 += 2;
      v10 = v14;
    }

    while (v14);
    if (v5 == 1)
    {
      v12 = *v4;
      a1 = v8;
      if (v2 - v9 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    a1 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_26;
    }

    v15 = 3;
  }

  *(a1 + 16) = v15;
LABEL_26:
  v12 = 0;
  *a1 = &nuls;
  *(a1 + 8) = &nuls;
LABEL_32:
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 3;
  }

  *a1 = &nuls;
  *(a1 + 8) = &nuls;
  return v12;
}

__n128 bothcases(__n128 *a1, char a2)
{
  v5 = a2;
  v6 = 93;
  v4 = *a1;
  a1->n128_u64[0] = &v5;
  a1->n128_u64[1] = &v6 + 1;
  p_bracket();
  result = v4;
  *a1 = v4;
  return result;
}

size_t llvm_regerror(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (!strcmp("REG_NOMATCH", v6))
    {
      v12 = 1;
    }

    else if (!strcmp("REG_BADPAT", v6))
    {
      v12 = 2;
    }

    else if (!strcmp("REG_ECOLLATE", v6))
    {
      v12 = 3;
    }

    else if (!strcmp("REG_ECTYPE", v6))
    {
      v12 = 4;
    }

    else if (!strcmp("REG_EESCAPE", v6))
    {
      v12 = 5;
    }

    else if (!strcmp("REG_ESUBREG", v6))
    {
      v12 = 6;
    }

    else if (!strcmp("REG_EBRACK", v6))
    {
      v12 = 7;
    }

    else if (!strcmp("REG_EPAREN", v6))
    {
      v12 = 8;
    }

    else if (!strcmp("REG_EBRACE", v6))
    {
      v12 = 9;
    }

    else if (!strcmp("REG_BADBR", v6))
    {
      v12 = 10;
    }

    else if (!strcmp("REG_ERANGE", v6))
    {
      v12 = 11;
    }

    else if (!strcmp("REG_ESPACE", v6))
    {
      v12 = 12;
    }

    else if (!strcmp("REG_BADRPT", v6))
    {
      v12 = 13;
    }

    else if (!strcmp("REG_EMPTY", v6))
    {
      v12 = 14;
    }

    else if (!strcmp("REG_ASSERT", v6))
    {
      v12 = 15;
    }

    else
    {
      if (strcmp("REG_INVARG", v6))
      {
        v7 = "0";
        goto LABEL_48;
      }

      v12 = 16;
    }

    v16 = v12;
    v13 = "%d";
  }

  else
  {
    v8 = &rerrs;
    do
    {
      v10 = *v8;
      v8 += 6;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == (a1 & 0xFFFFFEFF);
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    if ((a1 & 0x100) == 0)
    {
      v7 = *(v8 - 1);
      goto LABEL_48;
    }

    if (v9)
    {
      v7 = __str;
      llvm_strlcpy(__str, *(v8 - 2), 50);
      goto LABEL_48;
    }

    v16 = a1 & 0xFFFFFEFF;
    v13 = "REG_0x%x";
  }

  v7 = __str;
  snprintf(__str, 0x32uLL, v13, v16);
LABEL_48:
  v14 = strlen(v7);
  if (a4)
  {
    llvm_strlcpy(a3, v7, a4);
  }

  return v14 + 1;
}

uint64_t llvm_regexec(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v134 = v5;
  v135 = v6;
  v7 = *(a1 + 24);
  if (*v7 != 53829 || (*(v7 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v7 + 48);
  v10 = __s;
  if (v9 > 64)
  {
    v20 = *(v7 + 56);
    v19 = *(v7 + 64);
    if ((*(v7 + 40) & 4) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    v119 = v21;
    if ((a5 & 4) != 0)
    {
      v23 = a4[1];
      v24 = &__s[*a4];
      v25 = &__s[v23];
      if (&__s[v23] < v24)
      {
        return 16;
      }
    }

    else
    {
      v22 = a4;
      v23 = strlen(__s);
      a4 = v22;
      __s = v10;
      v24 = v10;
      v25 = &v10[v23];
      if (&v10[v23] < v10)
      {
        return 16;
      }
    }

    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v35 = *(v7 + 96);
    v125 = v25;
    v116 = a4;
    if (v35)
    {
      v36 = v24;
      if (v24 < v25)
      {
        __dsta = v8;
        v37 = v7;
        v38 = *v35;
        v39 = (__s - v24 + v23);
        v110 = &__s[v23];
        v113 = v20;
        v40 = (&__s[v23] - v24);
        v36 = v24;
        do
        {
          if (*v36 == v38)
          {
            v41 = *(v37 + 104);
            if (v40 >= v41)
            {
              v42 = memcmp(v36, v35, v41);
              __s = v10;
              if (!v42)
              {
                goto LABEL_151;
              }
            }
          }

          ++v36;
          --v40;
          --v39;
        }

        while (v39);
        v36 = v110;
LABEL_151:
        v7 = v37;
        v25 = v125;
        v8 = __dsta;
        v20 = v113;
      }

      if (v36 == v25)
      {
        return 1;
      }
    }

    v126 = v7;
    LODWORD(v127) = v8;
    *&v128 = __s;
    *(&v128 + 1) = v24;
    *&v130 = 0;
    *&v129 = v25;
    v76 = malloc(4 * v9);
    v131[0] = v76;
    if (!v76)
    {
      return 12;
    }

    v77 = v20 + 1;
    *&v132 = &v76[v9];
    *(&v132 + 1) = &v76[2 * v9];
    v131[1] = v76;
    *(&v130 + 1) = 4;
    v133 = &v76[3 * v9];
    bzero(v133, v9);
    v118 = v7;
LABEL_156:
    if (*(&v128 + 1) == v24)
    {
      v78 = 128;
    }

    else
    {
      v78 = *(v24 - 1);
    }

    v79 = v132;
    v80 = v131[1];
    bzero(v131[1], *(v126 + 48));
    v80[v77] = 1;
    lstep(v126, v77, v19, v80, 132, v80);
    memmove(v79, v80, *(v126 + 48));
    v81 = 0;
    if (v24 != v129)
    {
LABEL_160:
      v82 = *v24;
      goto LABEL_162;
    }

    while (1)
    {
      v82 = 128;
LABEL_162:
      v83 = v126;
      if (!memcmp(v80, v79, *(v126 + 48)))
      {
        v81 = v24;
      }

      if (v78 == 128)
      {
        if (v127)
        {
          goto LABEL_167;
        }
      }

      else if (v78 != 10 || (*(v83 + 40) & 8) == 0)
      {
LABEL_167:
        v84 = 0;
        v85 = 0;
        v86 = 130;
        if (v82 == 128)
        {
          goto LABEL_174;
        }

        goto LABEL_168;
      }

      v85 = *(v83 + 76);
      v84 = 129;
      v86 = 131;
      if (v82 == 128)
      {
LABEL_174:
        if ((v127 & 2) != 0)
        {
          goto LABEL_170;
        }

        goto LABEL_175;
      }

LABEL_168:
      if (v82 != 10 || (*(v83 + 40) & 8) == 0)
      {
LABEL_170:
        v86 = v84;
        if (v85 < 1)
        {
          goto LABEL_178;
        }

        goto LABEL_176;
      }

LABEL_175:
      v85 += *(v83 + 80);
      if (v85 < 1)
      {
        goto LABEL_178;
      }

LABEL_176:
      v87 = v85 + 1;
      do
      {
        lstep(v126, v77, v19, v80, v86, v80);
        --v87;
      }

      while (v87 > 1);
LABEL_178:
      if (v86 == 129)
      {
        if (v82 == 128)
        {
          v86 = 129;
          if (v78 == 128)
          {
            goto LABEL_209;
          }
        }

        else
        {
LABEL_189:
          if (v82 > 0x7Fu)
          {
            v90 = __maskrune(v82, 0x500uLL);
            if (v82 == 95 || v90 != 0)
            {
              v86 = 133;
            }

            if (v78 == 128)
            {
              goto LABEL_209;
            }
          }

          else
          {
            if (v82 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v82 + 60) & 0x500) != 0)
            {
              v86 = 133;
            }

            if (v78 == 128)
            {
              goto LABEL_209;
            }
          }
        }

        v88 = v78;
        goto LABEL_204;
      }

      if (v78 == 128)
      {
        goto LABEL_209;
      }

      v88 = v78;
      if (v78 > 0x7Fu)
      {
        if (__maskrune(v78, 0x500uLL))
        {
          goto LABEL_204;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v78 + 60) & 0x500) != 0)
      {
        goto LABEL_204;
      }

      if (v78 != 95 && v82 != 128)
      {
        goto LABEL_189;
      }

LABEL_204:
      if (v88 > 0x7F)
      {
        if (!__maskrune(v88, 0x500uLL))
        {
LABEL_208:
          if (v78 != 95)
          {
            goto LABEL_209;
          }
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v88 + 60) & 0x500) == 0)
      {
        goto LABEL_208;
      }

      if (v86 == 130 || v82 != 128 && (v82 > 0x7Fu ? (v92 = __maskrune(v82, 0x500uLL)) : (v92 = *(MEMORY[0x1E69E9830] + 4 * v82 + 60) & 0x500), !v92 && v82 != 95))
      {
        v86 = 134;
LABEL_213:
        lstep(v126, v77, v19, v80, v86, v80);
        goto LABEL_214;
      }

LABEL_209:
      if ((v86 - 133) <= 1)
      {
        goto LABEL_213;
      }

LABEL_214:
      if (v24 == v125 || v80[v19])
      {
        *(&v129 + 1) = v81;
        if (!v80[v19])
        {
          free(*(&v127 + 1));
          free(v130);
          v109 = 1;
          goto LABEL_262;
        }

        v93 = v119;
        if (!v119 && !*(v118 + 120))
        {
          goto LABEL_257;
        }

        for (i = lslow(&v126, v81, v125, v77, v19); !i; i = lslow(&v126, *(&v129 + 1), v125, v77, v19))
        {
          ++*(&v129 + 1);
        }

        v95 = i;
        if (v119 == 1 && !*(v118 + 120))
        {
          goto LABEL_252;
        }

        v96 = *(&v127 + 1);
        v97 = *(v126 + 112);
        if (!*(&v127 + 1))
        {
          v96 = malloc(16 * v97 + 16);
          *(&v127 + 1) = v96;
          if (!v96)
          {
            v109 = 12;
            goto LABEL_262;
          }
        }

        if (v97)
        {
          v98 = 2;
          if ((v97 + 1) > 2)
          {
            v98 = v97 + 1;
          }

          memset(v96 + 16, 255, 16 * v98 - 16);
        }

        if (*(v118 + 120) || (BYTE1(v127) & 4) != 0)
        {
          v100 = *(v118 + 128);
          v101 = v130;
          if (v100 >= 1 && !v130)
          {
            v101 = malloc(8 * v100 + 8);
            *&v130 = v101;
          }

          if (v100 < 1 || v101)
          {
            v99 = sbackref(&v126, *(&v129 + 1), v95, v77, v19, 0, 0);
            goto LABEL_247;
          }

          free(v96);
          v109 = 12;
          goto LABEL_262;
        }

        v99 = ldissect(&v126, *(&v129 + 1), v95, v77, v19);
LABEL_247:
        if (v99)
        {
          goto LABEL_251;
        }

        while (1)
        {
          v102 = *(&v129 + 1);
          if (v95 <= *(&v129 + 1))
          {
            break;
          }

          v95 = lslow(&v126, *(&v129 + 1), v95 - 1, v77, v19);
          v102 = *(&v129 + 1);
          if (!v95)
          {
            break;
          }

          if (sbackref(&v126, *(&v129 + 1), v95, v77, v19, 0, 0))
          {
            goto LABEL_251;
          }
        }

        v24 = v102 + 1;
        if (v102 == v125)
        {
LABEL_251:
          v93 = v119;
          if (v119)
          {
LABEL_252:
            v103 = &v95[-v128];
            *v116 = *(&v129 + 1) - v128;
            v116[1] = v103;
            if (v93 >= 2)
            {
              v104 = v126;
              v105 = (*(&v127 + 1) + 16);
              v106 = v116 + 2;
              for (j = 1; j != v93; ++j)
              {
                while (j > *(v104 + 112))
                {
                  *v106 = -1;
                  v106[1] = -1;
                  v106 += 2;
                  ++j;
                  ++v105;
                  if (v93 == j)
                  {
                    goto LABEL_257;
                  }
                }

                v108 = *v105++;
                *v106 = v108;
                v106 += 2;
              }
            }
          }

LABEL_257:
          if (*(&v127 + 1))
          {
            free(*(&v127 + 1));
          }

          if (v130)
          {
            free(v130);
          }

          v109 = 0;
LABEL_262:
          free(v131[0]);
          return v109;
        }

        goto LABEL_156;
      }

      memmove(*(&v79 + 1), v80, *(v126 + 48));
      memmove(v80, v79, *(v126 + 48));
      lstep(v126, v77, v19, *(&v79 + 1), v82, v80);
      ++v24;
      v78 = v82;
      if (v24 != v129)
      {
        goto LABEL_160;
      }
    }
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  if ((*(v7 + 40) & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  if ((a5 & 4) == 0)
  {
    v14 = a4;
    v15 = strlen(__s);
    a4 = v14;
    __s = v10;
    v16 = v10;
    v17 = &v10[v15];
    if (&v10[v15] >= v10)
    {
      goto LABEL_21;
    }

    return 16;
  }

  v15 = a4[1];
  v16 = &__s[*a4];
  v17 = &__s[v15];
  if (&__s[v15] < v16)
  {
    return 16;
  }

LABEL_21:
  v115 = a4;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v26 = *(v7 + 96);
  v124 = v17;
  if (v26)
  {
    v27 = v16;
    if (v16 < v17)
    {
      v120 = v12;
      __dst = v8;
      v28 = v13;
      v29 = v7;
      v30 = *v26;
      v31 = (__s - v16 + v15);
      v112 = &__s[v15];
      v32 = (&__s[v15] - v16);
      v27 = v16;
      while (1)
      {
        if (*v27 == v30)
        {
          v33 = *(v29 + 104);
          if (v32 >= v33)
          {
            v34 = memcmp(v27, v26, v33);
            __s = v10;
            if (!v34)
            {
              break;
            }
          }
        }

        ++v27;
        --v32;
        if (!--v31)
        {
          v27 = v112;
          break;
        }
      }

      v7 = v29;
      v13 = v28;
      v17 = v124;
      v8 = __dst;
      v12 = v120;
    }

    if (v27 == v17)
    {
      return 1;
    }
  }

  v43 = v12 + 1;
  v126 = v7;
  LODWORD(v127) = v8;
  *&v128 = __s;
  *(&v128 + 1) = v16;
  *&v129 = v17;
  v111 = v13;
  v114 = 1 << (v12 + 1);
  *v131 = 0u;
  v132 = 0u;
  v117 = v7;
  while (2)
  {
    if (*(&v128 + 1) == v16)
    {
      v44 = 128;
    }

    else
    {
      v44 = *(v16 - 1);
    }

    v45 = v126;
    v46 = sstep(v126, v43, v11, v114, 132, v114);
    v47 = 0;
    v48 = v46;
    v121 = v46;
    if (v16 != v129)
    {
LABEL_48:
      v49 = *v16;
      if (v48 == v46)
      {
        v47 = v16;
      }

      if (v44 == 128)
      {
        goto LABEL_61;
      }

LABEL_51:
      if (v44 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_62;
      }

LABEL_53:
      v50 = 0;
      v51 = 0;
      v52 = 130;
      if (v49 == 128)
      {
        goto LABEL_63;
      }

LABEL_54:
      if (v49 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_64;
      }

LABEL_56:
      v52 = v50;
      v53 = v47;
      if (v51 >= 1)
      {
LABEL_65:
        v54 = v51 + 1;
        do
        {
          v48 = sstep(v45, v43, v11, v48, v52, v48);
          --v54;
        }

        while (v54 > 1);
      }

      goto LABEL_67;
    }

    while (1)
    {
      v49 = 128;
      if (v48 == v46)
      {
        v47 = v16;
      }

      if (v44 != 128)
      {
        goto LABEL_51;
      }

LABEL_61:
      if (v127)
      {
        goto LABEL_53;
      }

LABEL_62:
      v51 = *(v45 + 76);
      v50 = 129;
      v52 = 131;
      if (v49 != 128)
      {
        goto LABEL_54;
      }

LABEL_63:
      if ((v127 & 2) != 0)
      {
        goto LABEL_56;
      }

LABEL_64:
      v51 += *(v45 + 80);
      v53 = v47;
      if (v51 >= 1)
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v52 == 129)
      {
        v47 = v53;
        if (v49 == 128)
        {
          v52 = 129;
          if (v44 == 128)
          {
            goto LABEL_98;
          }
        }

        else
        {
LABEL_78:
          if (v49 > 0x7Fu)
          {
            v57 = __maskrune(v49, 0x500uLL);
            if (v49 == 95 || v57 != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v49 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x500) != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }
        }

        v55 = v44;
        goto LABEL_93;
      }

      v47 = v53;
      if (v44 == 128)
      {
        goto LABEL_98;
      }

      v55 = v44;
      if (v44 > 0x7Fu)
      {
        if (__maskrune(v44, 0x500uLL))
        {
          goto LABEL_93;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x500) != 0)
      {
        goto LABEL_93;
      }

      if (v44 != 95 && v49 != 128)
      {
        goto LABEL_78;
      }

LABEL_93:
      if (v55 > 0x7F)
      {
        if (!__maskrune(v55, 0x500uLL))
        {
LABEL_97:
          if (v44 != 95)
          {
            goto LABEL_98;
          }
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v55 + 60) & 0x500) == 0)
      {
        goto LABEL_97;
      }

      if (v52 == 130 || v49 != 128 && (v49 > 0x7Fu ? (v60 = __maskrune(v49, 0x500uLL)) : (v60 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x500), !v60 && v49 != 95))
      {
        v52 = 134;
LABEL_102:
        v48 = sstep(v126, v43, v11, v48, v52, v48);
        goto LABEL_103;
      }

LABEL_98:
      if ((v52 - 133) <= 1)
      {
        goto LABEL_102;
      }

LABEL_103:
      v59 = v48 & (1 << v11);
      if (v16 == v124 || v59)
      {
        break;
      }

      v45 = v126;
      v46 = v121;
      v48 = sstep(v126, v43, v11, v48, v49, v121);
      ++v16;
      v44 = v49;
      if (v16 != v129)
      {
        goto LABEL_48;
      }
    }

    *(&v129 + 1) = v47;
    if (!v59)
    {
      free(*(&v127 + 1));
      free(v130);
      return 1;
    }

    if (!v111 && !*(v117 + 120))
    {
      goto LABEL_146;
    }

    for (k = sslow(&v126, v47, v124, v43, v11); !k; k = sslow(&v126, *(&v129 + 1), v124, v43, v11))
    {
      ++*(&v129 + 1);
    }

    v62 = k;
    if (v111 == 1 && !*(v117 + 120))
    {
      goto LABEL_141;
    }

    v63 = *(&v127 + 1);
    v64 = *(v126 + 112);
    if (!*(&v127 + 1))
    {
      v63 = malloc(16 * v64 + 16);
      *(&v127 + 1) = v63;
      if (!v63)
      {
        return 12;
      }
    }

    if (v64)
    {
      v65 = 2;
      if ((v64 + 1) > 2)
      {
        v65 = v64 + 1;
      }

      memset(v63 + 16, 255, 16 * v65 - 16);
    }

    if (*(v117 + 120) || (BYTE1(v127) & 4) != 0)
    {
      v67 = *(v117 + 128);
      v68 = v130;
      if (v67 >= 1 && !v130)
      {
        v68 = malloc(8 * v67 + 8);
        *&v130 = v68;
      }

      if (v67 >= 1 && !v68)
      {
        free(v63);
        return 12;
      }

      v66 = sbackref(&v126, *(&v129 + 1), v62, v43, v11, 0, 0);
    }

    else
    {
      v66 = sdissect(&v126, *(&v129 + 1), v62, v43, v11);
    }

    if (!v66)
    {
      while (1)
      {
        v69 = *(&v129 + 1);
        if (v62 <= *(&v129 + 1))
        {
          break;
        }

        v62 = sslow(&v126, *(&v129 + 1), v62 - 1, v43, v11);
        v69 = *(&v129 + 1);
        if (!v62)
        {
          break;
        }

        if (sbackref(&v126, *(&v129 + 1), v62, v43, v11, 0, 0))
        {
          goto LABEL_140;
        }
      }

      v16 = v69 + 1;
      if (v69 != v124)
      {
        continue;
      }
    }

    break;
  }

LABEL_140:
  if (!v111)
  {
    goto LABEL_146;
  }

LABEL_141:
  v70 = &v62[-v128];
  *v115 = *(&v129 + 1) - v128;
  v115[1] = v70;
  if (v111 >= 2)
  {
    v71 = v126;
    v72 = (*(&v127 + 1) + 16);
    v73 = v115 + 2;
    for (m = 1; m != v111; ++m)
    {
      while (m > *(v71 + 112))
      {
        *v73 = -1;
        v73[1] = -1;
        v73 += 2;
        ++m;
        ++v72;
        if (v111 == m)
        {
          goto LABEL_146;
        }
      }

      v75 = *v72++;
      *v73 = v75;
      v73 += 2;
    }
  }

LABEL_146:
  if (*(&v127 + 1))
  {
    free(*(&v127 + 1));
  }

  result = v130;
  if (v130)
  {
    free(v130);
    return 0;
  }

  return result;
}

char *sslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = *(*(*a1 + 8) + 8 * v6);
    v9 = v8 & 0xF8000000;
    if ((v8 & 0xF8000000) == 0x70000000 || v9 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v9 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v8)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v26 = a1[12];
      if (a2 == a1[4])
      {
        v13 = 128;
      }

      else
      {
        v13 = *(a2 - 1);
      }

      v14 = *a1;
      v15 = sstep(*a1, v6, a5, 1 << v6, 132, 1 << v6);
      v11 = 0;
      v27 = 1 << a5;
      v16 = a1;
      if (a2 == a1[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      v17 = *a2;
      if (v13 != 128)
      {
LABEL_20:
        if (v13 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_29;
        }

LABEL_22:
        v18 = 0;
        v19 = 0;
        v20 = 130;
        if (v17 == 128)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (v17 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_31;
        }

LABEL_25:
        v20 = v18;
        if (v19 >= 1)
        {
LABEL_32:
          v21 = v19 + 1;
          do
          {
            v15 = sstep(v14, v6, a5, v15, v20, v15);
            --v21;
          }

          while (v21 > 1);
        }

        goto LABEL_34;
      }

      while (1)
      {
        if (v16[1])
        {
          goto LABEL_22;
        }

LABEL_29:
        v19 = *(v14 + 76);
        v18 = 129;
        v20 = 131;
        if (v17 != 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if ((v16[1] & 2) != 0)
        {
          goto LABEL_25;
        }

LABEL_31:
        v19 += *(v14 + 80);
        if (v19 >= 1)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v20 == 129)
        {
          v16 = a1;
          if (v17 == 128)
          {
            v20 = 129;
            if (v13 == 128)
            {
              goto LABEL_65;
            }
          }

          else
          {
LABEL_45:
            if (v17 > 0x7Fu)
            {
              v24 = __maskrune(v17, 0x500uLL);
              if (v17 == 95 || v24 != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v17 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x500) != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }
          }

          v22 = v13;
          goto LABEL_60;
        }

        v16 = a1;
        if (v13 == 128)
        {
          goto LABEL_65;
        }

        v22 = v13;
        if (v13 > 0x7Fu)
        {
          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_60;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x500) != 0)
        {
          goto LABEL_60;
        }

        if (v13 != 95 && v17 != 128)
        {
          goto LABEL_45;
        }

LABEL_60:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_70;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_70;
        }

        if (v13 != 95)
        {
          goto LABEL_65;
        }

LABEL_70:
        if (v20 == 130)
        {
          goto LABEL_71;
        }

        if (v17 != 128)
        {
          if (v17 > 0x7Fu)
          {
            if (__maskrune(v17, 0x500uLL))
            {
              goto LABEL_65;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x500) != 0)
          {
            goto LABEL_65;
          }

          if (v17 != 95)
          {
LABEL_71:
            v20 = 134;
            goto LABEL_72;
          }
        }

LABEL_65:
        if ((v20 - 133) > 1)
        {
          if ((v15 & v27) != 0)
          {
            v11 = a2;
          }

          if (a2 == a3)
          {
            return v11;
          }

          goto LABEL_75;
        }

LABEL_72:
        v15 = sstep(*v16, v6, a5, v15, v20, v15);
        if ((v15 & v27) != 0)
        {
          v11 = a2;
        }

        if (a2 == a3)
        {
          return v11;
        }

LABEL_75:
        if (v15 == v26)
        {
          return v11;
        }

        v14 = *v16;
        v15 = sstep(*v16, v6, a5, v15, v17, v26);
        ++a2;
        v13 = v17;
        if (a2 != v16[5])
        {
          goto LABEL_19;
        }

LABEL_27:
        v17 = 128;
        if (v13 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sdissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sslow(a1, v5, a3, v11, v16 + 1); sslow(a1, i, a3, v16 + 1, a5) != a3; i = sslow(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sslow(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sdissect(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sslow(a1, v5, v31, v11, v16 + 1);
            v32 = sslow(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sslow(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sdissect(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sslow(a1, v5, a3, v11, v16 + 1); sslow(a1, i, a3, v16 + 1, a5) != a3; i = sslow(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (sslow(a1, v5, i, v11 + 1, v16))
        {
          sdissect(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t sbackref(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_5;
          }

          if (v18 == 14)
          {
            ++v14;
            v31 = *(v16 + 8 * v14);
            do
            {
              v14 += v31 & 0x7FFFFFF;
              v31 = *(v16 + 8 * v14);
            }

            while ((v31 & 0xF8000000) != 0x90000000);
            goto LABEL_5;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_5;
            case 0x11uLL:
              v34 = a1[4];
              if (a2 != v34 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v34)
                {
                  return 0;
                }

                v35 = *(a2 - 1);
                if (v35 < 0)
                {
                  v36 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v36 = *(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x500;
                }

                result = 0;
                if (v35 == 95 || v36)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v38 = *a2;
              if ((v38 & 0x8000000000000000) == 0)
              {
                goto LABEL_76;
              }

LABEL_82:
              v39 = __maskrune(v38, 0x500uLL);
              if (v38 == 95)
              {
                goto LABEL_5;
              }

LABEL_83:
              if (!v39)
              {
                return 0;
              }

              goto LABEL_5;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 == v21 && (a1[1] & 2) == 0)
              {
                goto LABEL_80;
              }

              if (a2 >= v21)
              {
                return 0;
              }

              v22 = *a2;
              if (v22 == 10)
              {
                if ((*(v15 + 40) & 8) != 0)
                {
LABEL_80:
                  if (a2 <= a1[4])
                  {
                    return 0;
                  }

                  v38 = *(a2 - 1);
                  if (v38 < 0)
                  {
                    goto LABEL_82;
                  }

LABEL_76:
                  v39 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x500;
                  if (v38 == 95)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_83;
                }

LABEL_69:
                v37 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x500;
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              else
              {
                if ((v22 & 0x80) == 0)
                {
                  goto LABEL_69;
                }

                v37 = __maskrune(*a2, 0x500uLL);
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              if (v37)
              {
                return result;
              }

              goto LABEL_80;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v33 = *a2++;
          if (v33 != v17)
          {
            return 0;
          }

          goto LABEL_5;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5] || *(a2 - 1) != 10)
            {
              return 0;
            }

LABEL_4:
            if ((*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_5:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v32 = a1[5];
            if (a2 != v32 || (a1[1] & 2) != 0)
            {
              if (a2 >= v32 || *a2 != 10)
              {
                return 0;
              }

              goto LABEL_4;
            }

            goto LABEL_5;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_5;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_5;
        }
      }

      v12 = v14 + 1;
      v23 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v23 == 4)
      {
        result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v23 == 6)
          {
            v47 = 16 * (v17 & 0x7FFFFFF);
            v48 = a1[2];
            v49 = *(v48 + v47);
            *(v48 + v47) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v49;
            }
          }

          else if (v23 == 7)
          {
            v50 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v51 = *(v50 + 8);
            *(v50 + 8) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v51;
            }
          }

          else
          {
            result = 0;
            if (v23 == 8)
            {
              result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v41 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v42 = *(*a1 + 8);
                  if ((*(v42 + 8 * v41) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v43 = *(v42 + 8 * (v41 + 1)) & 0x7FFFFFFLL;
                  v44 = v43 + v41 + 1;
                  v45 = v43 + v41;
                  if ((*(v42 + 8 * v44) & 0xF8000000) == 0x88000000)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = v44;
                  }

                  result = sbackref(a1, a2, a3, v41 + 2, a5, a6, a7);
                  v41 = v46;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v23)
        {
          if (v23 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
            if (v12 < a5)
            {
              goto LABEL_3;
            }
          }

          else
          {
            result = 0;
            if (v23 != 3)
            {
              return result;
            }

            v40 = a1[7];
            if (a2 == *(v40 + 8 * a6))
            {
              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }

            else
            {
              *(v40 + 8 * a6) = a2;
              result = sbackref(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }

              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }
          }

          break;
        }

        v25 = v17 & 0x7FFFFFF;
        v26 = (a1[2] + 16 * v25);
        v27 = v26[1];
        if (v27 == -1)
        {
          return 0;
        }

        v28 = *v26;
        v29 = v27 - v28;
        if (v27 == v28)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v29] || memcmp(a2, (a1[3] + v28), v29))
        {
          return 0;
        }

        do
        {
          v30 = *(v16 + 8 * v14++);
        }

        while (v30 != (v25 | 0x40000000));
        a2 += v29;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

unint64_t sstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v8 = (*(a1 + 8) + 8 * a2);
      v9 = *v8;
      switch(((*v8 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v7 = a5 == v9;
          goto LABEL_4;
        case 2uLL:
          v7 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_4;
        case 3uLL:
          v7 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_4;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v11 = *(a1 + 24) + 32 * (*v8 & 0x7FFFFFF);
          if ((*(v11 + 8) & *(*v11 + a5)) == 0)
          {
            break;
          }

          v10 = v6 & a4;
LABEL_10:
          a6 |= 2 * v10;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v10 = v6 & a6;
          goto LABEL_10;
        case 9uLL:
          v12 = a6 | (2 * (v6 & a6));
          a6 = ((v12 & v6) >> v9) | v12;
          if (((v6 >> v9) & v12) == 0 && (a6 & (v6 >> v9)) != 0)
          {
            a2 += ~(*v8 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (v6 & a6))) & v6) << v9) | (2 * (v6 & a6));
          break;
        case 0xFuLL:
          if ((v6 & a6) != 0)
          {
            v14 = v8[1];
            if ((v14 & 0xF8000000) == 0x90000000)
            {
              LOBYTE(v15) = 1;
            }

            else
            {
              v15 = 1;
              do
              {
                v15 += v14 & 0x7FFFFFF;
                v14 = v8[v15];
              }

              while ((v14 & 0xF8000000) != 0x90000000);
            }

            a6 |= (v6 & a6) << v15;
          }

          break;
        case 0x10uLL:
          a6 |= 2 * (v6 & a6);
          if ((v8[*v8 & 0x7FFFFFF] & 0xF8000000) != 0x90000000)
          {
            a6 |= (a6 & v6) << v9;
          }

          break;
        case 0x12uLL:
          v7 = a5 == 133;
          goto LABEL_4;
        case 0x13uLL:
          v7 = a5 == 134;
LABEL_4:
          if (v7)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *lslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v14 = a1[10];
      __dst = a1[12];
      __s2 = a1[13];
      if (a2 == a1[4])
      {
        v15 = 128;
      }

      else
      {
        v15 = *(a2 - 1);
      }

      bzero(v14, *(*a1 + 48));
      *(v14 + v6) = 1;
      lstep(*a1, v6, a5, v14, 132, v14);
      v12 = 0;
      if (a2 == a1[5])
      {
        goto LABEL_25;
      }

LABEL_19:
      v16 = *a2;
      if (v15 != 128)
      {
LABEL_20:
        if (v15 == 10 && (*(*a1 + 40) & 8) != 0)
        {
          v17 = *(*a1 + 76);
          v18 = 129;
          v19 = 131;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_29:
          v18 = 0;
          v17 = 0;
          v19 = 130;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if ((a1[1] & 2) != 0)
        {
          goto LABEL_32;
        }

        v20 = *a1;
LABEL_34:
        v17 += *(v20 + 80);
        if (v17 < 1)
        {
          goto LABEL_37;
        }

LABEL_35:
        v21 = v17 + 1;
        do
        {
          lstep(*a1, v6, a5, v14, v19, v14);
          --v21;
        }

        while (v21 > 1);
        goto LABEL_37;
      }

      while (1)
      {
        if (a1[1])
        {
          goto LABEL_29;
        }

        v17 = *(*a1 + 76);
        v18 = 129;
        v19 = 131;
        if (v16 == 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if (v16 == 10)
        {
          v20 = *a1;
          if ((*(*a1 + 40) & 8) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        v19 = v18;
        if (v17 >= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v19 == 129)
        {
          if (v16 == 128)
          {
            v19 = 129;
            if (v15 == 128)
            {
              goto LABEL_68;
            }
          }

          else
          {
LABEL_48:
            if (v16 > 0x7Fu)
            {
              v24 = __maskrune(v16, 0x500uLL);
              if (v16 == 95 || v24 != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
LABEL_68:
                v26 = __s2;
LABEL_69:
                if ((v19 - 133) > 1)
                {
                  goto LABEL_74;
                }

                goto LABEL_73;
              }
            }

            else
            {
              if (v16 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x500) != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
                goto LABEL_68;
              }
            }
          }

          v22 = v15;
          goto LABEL_63;
        }

        if (v15 == 128)
        {
          goto LABEL_68;
        }

        v22 = v15;
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_63;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x500) != 0)
        {
          goto LABEL_63;
        }

        if (v15 != 95 && v16 != 128)
        {
          goto LABEL_48;
        }

LABEL_63:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_71;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_71;
        }

        if (v15 != 95)
        {
          goto LABEL_68;
        }

LABEL_71:
        if (v19 == 130)
        {
          v19 = 134;
          v26 = __s2;
        }

        else
        {
          v26 = __s2;
          if (v16 == 128)
          {
            goto LABEL_69;
          }

          if (v16 > 0x7Fu)
          {
            if (__maskrune(v16, 0x500uLL))
            {
              goto LABEL_69;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x500) != 0)
          {
            goto LABEL_69;
          }

          if (v16 == 95)
          {
            goto LABEL_69;
          }

          v19 = 134;
        }

LABEL_73:
        lstep(*a1, v6, a5, v14, v19, v14);
LABEL_74:
        if (*(v14 + a5))
        {
          v12 = a2;
        }

        v27 = *(*a1 + 48);
        v28 = memcmp(v14, v26, v27);
        if (a2 == a3 || !v28)
        {
          return v12;
        }

        memmove(__dst, v14, v27);
        memmove(v14, v26, *(*a1 + 48));
        lstep(*a1, v6, a5, __dst, v16, v14);
        ++a2;
        v15 = v16;
        if (a2 != a1[5])
        {
          goto LABEL_19;
        }

LABEL_25:
        v16 = 128;
        if (v15 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *ldissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = lslow(a1, v5, a3, v11, v16 + 1); lslow(a1, i, a3, v16 + 1, a5) != a3; i = lslow(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = lslow(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          ldissect(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = lslow(a1, v5, v31, v11, v16 + 1);
            v32 = lslow(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (lslow(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          ldissect(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = lslow(a1, v5, a3, v11, v16 + 1); lslow(a1, i, a3, v16 + 1, a5) != a3; i = lslow(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (lslow(a1, v5, i, v11 + 1, v16))
        {
          ldissect(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t lstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_3;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_3;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_3;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_3;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_3;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_8;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_8:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_3;
        case 0x13uLL:
          if (a5 != 134)
          {
            break;
          }

LABEL_3:
          *(a6 + 1 + a2) |= *(a4 + a2);
          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

void llvm_regfree(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

unsigned __int8 *llvm_strlcpy(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (v4)
    {
      v5 = *v3++;
      *a1++ = v5;
      --v4;
      if (!v5)
      {
        return &v3[~a2];
      }
    }

    *a1 = 0;
  }

    ;
  }

  return &v3[~a2];
}

uint64_t llvm::xxh3_64bits(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (a2 > 0x10)
  {
    if (a2 <= 0x80)
    {
      v4 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2;
      v5 = a1 + a2;
      v6 = (((*(a1 + a2 - 8) ^ 0x1F67B3B7A4A44072uLL) * (*(a1 + a2 - 16) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(a1 + a2 - 8) ^ 0x1F67B3B7A4A44072) * (*(a1 + a2 - 16) ^ 0xDB979083E96DD4DELL));
      if (a2 >= 0x21)
      {
        v4 += (((*(a1 + 3) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 3) ^ 0x2172FFCC7DD05A82) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBLL));
        v6 += (((*(v5 - 3) ^ 0x4C263A81E69035E0uLL) * (*(v5 - 4) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(v5 - 3) ^ 0x4C263A81E69035E0) * (*(v5 - 4) ^ 0x8E2443F7744608B8));
        if (a2 >= 0x41)
        {
          v4 += (((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL));
          v6 += (((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471));
          if (a2 >= 0x61)
          {
            v4 += (((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9uLL) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8));
            v6 += (((*(v5 - 7) ^ 0x647378D9C97E9FC8uLL) * (*(v5 - 8) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(v5 - 7) ^ 0x647378D9C97E9FC8) * (*(v5 - 8) ^ 0x3159B4CD4BE0518ALL));
          }
        }
      }

      v3 = v6 + v4;
      return (0x165667919E3779F9 * (v3 ^ (v3 >> 37))) ^ ((0x165667919E3779F9 * (v3 ^ (v3 >> 37))) >> 32);
    }

    if (a2 > 0xF0)
    {
      return XXH3_hashLong_64b(a1, a2, a3);
    }

    else
    {
      return XXH3_len_129to240_64b(a1, a2, a3);
    }
  }

  else
  {
    if (a2 >= 9)
    {
      v3 = bswap64(*a1 ^ 0x6782737BEA4239B9) + a2 + (*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) + ((((*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9uLL)) >> 64) ^ ((*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9)));
      return (0x165667919E3779F9 * (v3 ^ (v3 >> 37))) ^ ((0x165667919E3779F9 * (v3 ^ (v3 >> 37))) >> 32);
    }

    if (a2 < 4)
    {
      if (a2)
      {
        return XXH3_len_1to3_64b(a1, a2, a3);
      }

      else
      {
        return 0x2D06800538D394C2;
      }
    }

    else
    {
      v8 = (*(a1 + a2 - 4) | (*a1 << 32)) ^ 0xC73AB174C5ECD5A2;
      v9 = 0x9FB21C651E98DF25 * (__ROR8__(v8, 15) ^ __ROR8__(v8, 40) ^ v8);
      return (0x9FB21C651E98DF25 * ((a2 + (v9 >> 35)) ^ v9)) ^ ((0x9FB21C651E98DF25 * ((a2 + (v9 >> 35)) ^ v9)) >> 28);
    }
  }
}

unint64_t XXH3_len_129to240_64b(const unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = *(a1 + 12) ^ 0x3F349CE33F76FAA8;
  v4 = *(a1 + 13) ^ 0x1D4F0BC7C7BBDCF9;
  v5 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2 + ((((*(a1 + 3) ^ 0x1F67B3B7A4A44072uLL) * (*(a1 + 2) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(a1 + 3) ^ 0x1F67B3B7A4A44072) * (*(a1 + 2) ^ 0xDB979083E96DD4DELL))) + ((((*(a1 + 5) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 4) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 5) ^ 0x2172FFCC7DD05A82) * (*(a1 + 4) ^ 0x78E5C0CC4EE679CBLL))) + ((((*(a1 + 7) ^ 0x4C263A81E69035E0uLL) * (*(a1 + 6) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(a1 + 7) ^ 0x4C263A81E69035E0) * (*(a1 + 6) ^ 0x8E2443F7744608B8))) + ((((*(a1 + 9) ^ 0xA32E531B8B65D088) * (*(a1 + 8) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 9) ^ 0xA32E531B8B65D088) * (*(a1 + 8) ^ 0xCB00C391BB52283CLL))) + ((((*(a1 + 11) ^ 0xD8ACDEA946EF1938) * (*(a1 + 10) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(a1 + 11) ^ 0xD8ACDEA946EF1938) * (*(a1 + 10) ^ 0x4EF90DA297486471))) + (((v4 * v3) >> 64) ^ (v4 * v3));
  v6 = (((*(a1 + 15) ^ 0x647378D9C97E9FC8uLL) * (*(a1 + 14) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(a1 + 15) ^ 0x647378D9C97E9FC8) * (*(a1 + 14) ^ 0x3159B4CD4BE0518ALL));
  v7 = 0x165667919E3779F9 * ((v5 + v6) ^ ((v5 + v6) >> 37));
  v8 = v7 ^ HIDWORD(v7);
  if (a2 >= 0x90)
  {
    if ((a2 >> 4) <= 9)
    {
      v9 = 9;
    }

    else
    {
      v9 = (a2 >> 4);
    }

    v10 = a1 + 128;
    v11 = v9 - 8;
    v12 = &unk_1E099EAA0;
    do
    {
      v13 = *v10;
      v10 += 16;
      v14 = veorq_s8(v13, *(v12 - 125));
      v8 += ((v14.u64[1] * v14.u64[0]) >> 64) ^ (v14.i64[1] * v14.i64[0]);
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  v15 = (((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831));
  v16 = 0x165667919E3779F9 * ((v8 + v15) ^ ((v8 + v15) >> 37));
  return v16 ^ HIDWORD(v16);
}

unint64_t XXH3_hashLong_64b(const unsigned __int8 *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= 0x400)
  {
    v8 = 0;
    v4 = xmmword_1E099E910;
    v5 = xmmword_1E099E920;
    v6 = xmmword_1E099E930;
    v7 = xmmword_1E099E940;
    v9 = a1 + 32;
    v10 = vdup_n_s32(0x9E3779B1);
    do
    {
      v11 = v9;
      v12 = &xmmword_1E099EA40;
      v13 = 16;
      do
      {
        v14 = v11[-2];
        v15 = v11[-1];
        v16 = vextq_s8(v14, v14, 8uLL);
        v17 = vextq_s8(v15, v15, 8uLL);
        v18 = veorq_s8(v12[-2], v14);
        v19 = veorq_s8(v12[-1], v15);
        v20 = vuzp1q_s32(v18, v19);
        v21 = vuzp2q_s32(v18, v19);
        v4 = vaddq_s64(vmlal_u32(v16, *v20.i8, *v21.i8), v4);
        v5 = vaddq_s64(vmlal_high_u32(v17, v20, v21), v5);
        v22 = *v11;
        v23 = v11[1];
        v11 += 4;
        v24 = vextq_s8(v22, v22, 8uLL);
        v25 = vextq_s8(v23, v23, 8uLL);
        v26 = veorq_s8(*v12, v22);
        v27 = veorq_s8(v12[1], v23);
        v28 = vuzp1q_s32(v26, v27);
        v29 = vuzp2q_s32(v26, v27);
        v6 = vaddq_s64(vmlal_u32(v24, *v28.i8, *v29.i8), v6);
        v7 = vaddq_s64(vmlal_high_u32(v25, v28, v29), v7);
        v12 = (v12 + 8);
        --v13;
      }

      while (v13);
      v30 = veorq_s8(vshrq_n_u64(v4, 0x2FuLL), veorq_s8(v4, xmmword_1E099E950));
      v4 = vmlal_u32(vmulq_s32(v30, xmmword_1E099E960), vmovn_s64(v30), v10);
      v31 = veorq_s8(vshrq_n_u64(v5, 0x2FuLL), veorq_s8(v5, xmmword_1E099E970));
      v5 = vmlal_u32(vmulq_s32(v31, xmmword_1E099E960), vmovn_s64(v31), v10);
      v32 = veorq_s8(vshrq_n_u64(v6, 0x2FuLL), veorq_s8(v6, xmmword_1E099E980));
      v6 = vmlal_u32(vmulq_s32(v32, xmmword_1E099E960), vmovn_s64(v32), v10);
      v33 = veorq_s8(vshrq_n_u64(v7, 0x2FuLL), veorq_s8(v7, xmmword_1E099E990));
      v7 = vmlal_u32(vmulq_s32(v33, xmmword_1E099E960), vmovn_s64(v33), v10);
      ++v8;
      v9 += 1024;
    }

    while (v8 != v3 >> 10);
  }

  else
  {
    v4 = xmmword_1E099E910;
    v5 = xmmword_1E099E920;
    v6 = xmmword_1E099E930;
    v7 = xmmword_1E099E940;
  }

  v34 = (v3 >> 6) & 0xF;
  if (v34)
  {
    v35 = &a1[(v3 & 0xFFFFFFFFFFFFFC00) + 32];
    v36 = &xmmword_1E099EA40;
    do
    {
      v37 = *(v35 - 2);
      v38 = *(v35 - 1);
      v39 = vextq_s8(v37, v37, 8uLL);
      v40 = vextq_s8(v38, v38, 8uLL);
      v41 = veorq_s8(v36[-2], v37);
      v42 = veorq_s8(v36[-1], v38);
      v43 = vuzp1q_s32(v41, v42);
      v44 = vuzp2q_s32(v41, v42);
      v4 = vaddq_s64(vmlal_u32(v39, *v43.i8, *v44.i8), v4);
      v5 = vaddq_s64(vmlal_high_u32(v40, v43, v44), v5);
      v45 = *v35;
      v46 = *(v35 + 1);
      v35 += 64;
      v47 = vextq_s8(v45, v45, 8uLL);
      v48 = vextq_s8(v46, v46, 8uLL);
      v49 = veorq_s8(*v36, v45);
      v50 = veorq_s8(v36[1], v46);
      v51 = vuzp1q_s32(v49, v50);
      v52 = vuzp2q_s32(v49, v50);
      v6 = vaddq_s64(vmlal_u32(v47, *v51.i8, *v52.i8), v6);
      v7 = vaddq_s64(vmlal_high_u32(v48, v51, v52), v7);
      v36 = (v36 + 8);
      --v34;
    }

    while (v34);
  }

  v53 = *&a1[a2 - 64];
  v54 = *&a1[a2 - 48];
  v55 = vextq_s8(v53, v53, 8uLL);
  v56 = vextq_s8(v54, v54, 8uLL);
  v57 = veorq_s8(v53, xmmword_1E099E9A0);
  v58 = veorq_s8(v54, xmmword_1E099E9B0);
  v59 = vuzp1q_s32(v57, v58);
  v60 = vuzp2q_s32(v57, v58);
  v61 = vaddq_s64(vmlal_u32(v55, *v59.i8, *v60.i8), v4);
  v62 = vaddq_s64(vmlal_high_u32(v56, v59, v60), v5);
  v63 = *&a1[a2 - 32];
  v64 = *&a1[a2 - 16];
  v65 = vextq_s8(v63, v63, 8uLL);
  v66 = vextq_s8(v64, v64, 8uLL);
  v67 = veorq_s8(v63, xmmword_1E099E9C0);
  v68 = veorq_s8(v64, xmmword_1E099E9D0);
  v69 = vuzp1q_s32(v67, v68);
  v70 = vuzp2q_s32(v67, v68);
  v71 = veorq_s8(v61, xmmword_1E099E9E0);
  v72 = (((v71.u64[1] * v71.u64[0]) >> 64) ^ (v71.i64[1] * v71.i64[0])) - 0x61C8864E7A143579 * a2;
  v73 = veorq_s8(v62, xmmword_1E099E9F0);
  v74 = veorq_s8(vaddq_s64(vmlal_u32(v65, *v69.i8, *v70.i8), v6), xmmword_1E099EA00);
  v75 = ((v74.u64[1] * v74.u64[0]) >> 64) ^ (v74.i64[1] * v74.i64[0]);
  v76 = veorq_s8(vaddq_s64(vmlal_high_u32(v66, v69, v70), v7), xmmword_1E099EA10);
  v77 = (((v73.u64[1] * v73.u64[0]) >> 64) ^ (v73.i64[1] * v73.i64[0])) + v75;
  v78 = ((v76.u64[1] * v76.u64[0]) >> 64) ^ (v76.i64[1] * v76.i64[0]);
  v79 = (v72 + v77 + v78) ^ ((v72 + v77 + v78) >> 37);
  return (0x165667919E3779F9 * v79) ^ ((0x165667919E3779F9 * v79) >> 32);
}

uint64_t llvm::sys::StrError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this)
  {
    __strerrbuf[0] = 0;
    strerror_r(this, __strerrbuf, 0x7CFuLL);
    return MEMORY[0x1E12E55D0](a2, __strerrbuf);
  }

  return this;
}

uint64_t llvm::sys::Memory::allocateMappedMemory@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = std::system_category();
  *a4 = 0;
  *(a4 + 8) = result;
  if (!a1)
  {
    goto LABEL_21;
  }

  v11 = result;
  v12 = dword_1E099EAE0[(((a3 & 0x7000000u) - 0x1000000) >> 24)];
  if (a2)
  {
    v13 = a2[1] + *a2;
    v14 = a1 - 1;
    if (atomic_load_explicit(&qword_1EE17D260, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    v14 = a1 - 1;
    if (atomic_load_explicit(&qword_1EE17D260, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  v19 = v12;
  llvm::sys::Memory::allocateMappedMemory();
  v12 = v19;
LABEL_4:
  v15 = (v14 + qword_1EE17D258) / qword_1EE17D258;
  v16 = qword_1EE17D258 + v13 - v13 % qword_1EE17D258;
  if (!(v13 % qword_1EE17D258))
  {
    v16 = v13;
  }

  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = mmap(v17, v15 * qword_1EE17D258, v12, 4098, -1, 0);
  if (result != -1)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  *a4 = 0;
  *(a4 + 8) = v11;
  v20 = dword_1E099EAE0[(((a3 & 0x7000000u) - 0x1000000) >> 24)];
  if ((atomic_load_explicit(&qword_1EE17D260, memory_order_acquire) & 1) == 0)
  {
    v22 = v20;
    llvm::sys::Memory::allocateMappedMemory();
    v20 = v22;
  }

  v15 = (v14 + qword_1EE17D258) / qword_1EE17D258;
  result = mmap(0, v15 * qword_1EE17D258, v20, 4098, -1, 0);
  if (result == -1)
  {
LABEL_20:
    v21 = *__error();
    result = std::generic_category();
    *a4 = v21;
    *(a4 + 8) = result;
  }

  else
  {
LABEL_10:
    *&v23 = result;
    *(&v23 + 1) = qword_1EE17D258 * v15;
    LODWORD(v24) = a3;
    if ((a3 & 0x4000000) == 0 || (result = llvm::sys::Memory::protectMappedMemory(&v23, a3), *a4 = result, *(a4 + 8) = v18, v11 == v18) && !result)
    {
      *a5 = v23;
      *(a5 + 16) = v24;
      return result;
    }
  }

LABEL_21:
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t llvm::sys::Memory::protectMappedMemory(void *a1, int a2)
{
  if (atomic_load_explicit(&qword_1EE17D268, memory_order_acquire))
  {
    v2 = *a1;
    if (!*a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = a1;
    v24 = a2;
    llvm::sys::Memory::protectMappedMemory();
    a2 = v24;
    a1 = v23;
    v2 = *v23;
    if (!*v23)
    {
      goto LABEL_17;
    }
  }

  v3 = a1[1];
  if (v3)
  {
    if (!a2)
    {
      v10 = 22;
LABEL_15:
      std::generic_category();
      return v10;
    }

    v4 = (a2 & 0x7000000) - 0x1000000;
    v5 = dword_1E099EAE0[SHIBYTE(v4)];
    v6 = v2 + (-1 << _MergedGlobals_60) + (1 << _MergedGlobals_60);
    v7 = -(1 << _MergedGlobals_60);
    v8 = v6 & v7;
    v9 = ((1 << _MergedGlobals_60) - 1 + v2 + v3) & v7;
    if ((a2 & 0x4000000) == 0)
    {
      if (!mprotect((v6 & v7), v9 - v8, v5))
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v11 = a1;
    v12 = v9 - v8;
    if ((v4 & 0x5000000) == 0x1000000)
    {
      v13 = dword_1E099EAE0[SHIBYTE(v4)];
      v14 = (v6 & v7);
      v15 = v9 - v8;
      if (!mprotect((v6 & v7), v12, v5 | 1))
      {
        v16 = v11;
        v17 = *v11;
        v18 = v16[1];
        sys_icache_invalidate(v17, v18);
        MPSGraphDelegateCompiler.precompilationDescriptor.modify(v17, v18);
        if (!mprotect(v14, v15, v13))
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    if (mprotect((v6 & v7), v12, v5))
    {
LABEL_14:
      v10 = *__error();
      goto LABEL_15;
    }

    v20 = v11;
    v21 = *v11;
    v22 = v20[1];
    sys_icache_invalidate(v21, v22);
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v21, v22);
  }

LABEL_17:
  std::system_category();
  return 0;
}

uint64_t llvm::sys::Memory::releaseMappedMemory(void *a1)
{
  v2 = *a1;
  if (v2 && (v3 = a1[1]) != 0)
  {
    v4 = a1;
    if (munmap(v2, v3))
    {
      v5 = *__error();
      std::generic_category();
      return v5;
    }

    else
    {
      std::system_category();
      result = 0;
      *v4 = 0;
      v4[1] = 0;
    }
  }

  else
  {
    std::system_category();
    return 0;
  }

  return result;
}

unsigned __int8 *llvm::sys::path::begin@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  v29 = result;
  v30 = a2;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_49;
  }

  if (a3 >= 2)
  {
    v4 = *result;
    if (a2 == 1)
    {
      goto LABEL_35;
    }

    if ((v4 & 0x80) != 0)
    {
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = a4;
      v10 = __maskrune(*result, 0x100uLL);
      a2 = v7;
      a4 = v9;
      a3 = v8;
      v11 = v10;
      result = v6;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    if (result[1] == 58)
    {
      v5 = 2;
      goto LABEL_49;
    }
  }

LABEL_11:
  LODWORD(v4) = *result;
  if (a2 >= 3)
  {
    v12 = a3 > 1 && v4 == 92;
    v13 = v12;
    v14 = v4 != 47 && !v13;
    if (!v14 && v4 == result[1])
    {
      v15 = result[2];
      v16 = a3 > 1 && v15 == 92;
      v17 = v16;
      if (v15 != 47 && !v17)
      {
        v18 = 1;
        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v18 = 2;
          v19 = "\\/";
        }

        v20 = a3;
        v21 = v18;
        v22 = 2;
LABEL_47:
        v26 = a4;
        first_of = llvm::StringRef::find_first_of(&v29, v19, v21, v22);
        a4 = v26;
        a3 = v20;
        v28 = first_of;
        result = v29;
        v5 = v30;
        if (v30 >= v28)
        {
          v5 = v28;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_35:
  v24 = a3 > 1 && v4 == 92;
  v5 = 1;
  if (v4 != 47 && !v24)
  {
    v25 = 1;
    if (a3 <= 1)
    {
      v19 = "/";
    }

    else
    {
      v25 = 2;
      v19 = "\\/";
    }

    v20 = a3;
    v21 = v25;
    v22 = 0;
    goto LABEL_47;
  }

LABEL_49:
  *(a4 + 16) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

void *llvm::sys::path::const_iterator::operator++(void *result)
{
  v1 = result[3];
  v2 = result[4] + v1;
  result[4] = v2;
  v3 = result[1];
  if (v2 == v3)
  {
    result[2] = 0;
    result[3] = 0;
    return result;
  }

  if (v1 <= 2)
  {
    v10 = 0;
    v6 = *(result + 10);
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = result[2];
    v5 = *v4;
    v6 = *(result + 10);
    if (v5 == 47 || (v5 == 92 ? (v7 = v6 >= 2) : (v7 = 0), v7))
    {
      if (v4[1] == v5)
      {
        v8 = v4[2];
        v10 = v6 < 2 || v8 != 92;
        if (v8 == 47)
        {
          v10 = 0;
        }

        v11 = *result;
        v12 = *(*result + v2);
        if (v12 == 47)
        {
          goto LABEL_43;
        }

LABEL_24:
        if (v12 != 92 || v6 < 2)
        {
          goto LABEL_28;
        }

        goto LABEL_43;
      }
    }

    v10 = 0;
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

LABEL_43:
  if (v10 || v1 && v6 >= 2 && *(result[2] + v1 - 1) == 58)
  {
    v20 = v3 > v2;
    if (v3 < v2)
    {
      v2 = result[1];
    }

    v21 = v11 + v2;
    v22 = v20;
    result[2] = v21;
    result[3] = v22;
    return result;
  }

  while (1)
  {
    v23 = *(v11 + v2);
    v24 = v6 > 1 && v23 == 92;
    v25 = v24;
    if (v23 != 47 && !v25)
    {
      break;
    }

    result[4] = ++v2;
    if (v3 == v2)
    {
      if (v1 != 1 || *result[2] != 47)
      {
        result[4] = v3 - 1;
        result[2] = ".";
        result[3] = 1;
        return result;
      }

      goto LABEL_29;
    }
  }

LABEL_28:
  v3 = v2;
LABEL_29:
  if (v6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v6 <= 1)
  {
    v15 = "/";
  }

  else
  {
    v15 = "\\/";
  }

  v16 = result;
  first_of = llvm::StringRef::find_first_of(result, v15, v14, v3);
  result = v16;
  v18 = v16[1];
  if (v18 >= v16[4])
  {
    v19 = v16[4];
  }

  else
  {
    v19 = v16[1];
  }

  if (v19 > first_of)
  {
    first_of = v16[4];
  }

  if (first_of >= v18)
  {
    first_of = v16[1];
  }

  v16[2] = *v16 + v19;
  v16[3] = first_of - v19;
  return result;
}

unsigned __int8 **llvm::sys::path::reverse_iterator::operator++(unsigned __int8 **result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(result + 10);
  v45 = *result;
  v46 = v2;
  if (v3 >= 2)
  {
    if (v2 < 3)
    {
      goto LABEL_33;
    }

    if (v1[1] == 58)
    {
      v4 = v1[2];
      first_of = 2;
      if (v4 == 47 || v4 == 92)
      {
        goto LABEL_44;
      }
    }
  }

  if (v2 >= 4)
  {
    v6 = *v1;
    v8 = v3 > 1 && v6 == 92;
    v9 = v6 != 47 && !v8;
    if (!v9 && v6 == v1[1])
    {
      v10 = v1[2];
      v11 = v3 > 1 && v10 == 92;
      v12 = v11;
      if (v10 != 47 && !v12)
      {
        if (v3 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        if (v3 <= 1)
        {
          v14 = "/";
        }

        else
        {
          v14 = "\\/";
        }

        v15 = result;
        first_of = llvm::StringRef::find_first_of(&v45, v14, v13, 2uLL);
        result = v15;
        goto LABEL_44;
      }
    }

    goto LABEL_35;
  }

LABEL_33:
  if (!v2)
  {
LABEL_43:
    first_of = -1;
    goto LABEL_44;
  }

  v6 = *v1;
LABEL_35:
  first_of = 0;
  v17 = v3 > 1 && v6 == 92;
  if (v6 != 47 && !v17)
  {
    goto LABEL_43;
  }

LABEL_44:
  v18 = result[4];
  if (v18)
  {
    v19 = first_of + 1;
    v20 = result[4];
    while (v19 != v20)
    {
      v21 = v20[*result - 1];
      if (v21 != 47 && (v21 != 92 || *(result + 10) < 2u))
      {
        v19 = v20;
        break;
      }

      if (!--v20)
      {
        goto LABEL_60;
      }
    }

    v23 = *result;
    v24 = result[1];
    if (v18 != v24 || v24 == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_60:
    v19 = 0;
    v23 = *result;
    v24 = result[1];
    if (v18 != v24 || v24 == 0)
    {
      goto LABEL_72;
    }
  }

  v27 = v18[v23 - 1];
  if (v27 == 47 || (v27 == 92 ? (v28 = *(result + 10) >= 2u) : (v28 = 0), v28))
  {
    if (first_of == -1 || v19 - 1 > first_of)
    {
      result[2] = ".";
      result[3] = 1;
      result[4] = v18 - 1;
      return result;
    }
  }

LABEL_72:
  v29 = *(result + 10);
  if (v24 >= v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = v24;
  }

  v45 = v23;
  v46 = v30;
  if (!v30)
  {
    v31 = -1;
LABEL_81:
    v33 = result;
    if (v29 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    if (v29 <= 1)
    {
      v35 = "/";
    }

    else
    {
      v35 = "\\/";
    }

    last_of = llvm::StringRef::find_last_of(&v45, v35, v34, v31);
    if (v29 < 2)
    {
      result = v33;
      if (last_of != -1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      result = v33;
      if (last_of == -1)
      {
        v37 = v46 - 1;
        if (v46 < v46 - 1)
        {
          v37 = v46;
        }

        while (v37)
        {
          last_of = v37 - 1;
          v38 = v45[--v37];
          if (v38 == 58)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_106;
      }

LABEL_93:
      if (last_of != -1)
      {
LABEL_94:
        if (last_of != 1 || ((v31 = 0, v39 = *v45, v29 > 1) ? (v40 = v39 == 92) : (v40 = 0), !v40 ? (v41 = 0) : (v41 = 1), v39 != 47 && (v41 & 1) == 0))
        {
          v31 = last_of + 1;
        }

        goto LABEL_107;
      }
    }

LABEL_106:
    v31 = 0;
    goto LABEL_107;
  }

  v31 = v30 - 1;
  v32 = v23[v30 - 1];
  if (v32 != 47 && (v29 < 2 || v32 != 92))
  {
    goto LABEL_81;
  }

LABEL_107:
  v42 = result[1];
  if (v42 >= v31)
  {
    v43 = v31;
  }

  else
  {
    v43 = result[1];
  }

  if (v43 <= v19)
  {
    v44 = v19;
  }

  else
  {
    v44 = v31;
  }

  if (v44 < v42)
  {
    v42 = v44;
  }

  result[2] = &(*result)[v43];
  result[3] = (v42 - v43);
  result[4] = v31;
  return result;
}

unsigned __int8 *llvm::sys::path::root_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v22);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  if (v22 == a1 && v24 == a2)
  {
    return 0;
  }

  if (*(&v23 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v23;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v23 + 1) == v7;
    }
  }

  v10 = 0;
  if (*(&v23 + 1) && a3 >= 2)
  {
    v10 = *(v23 + *(&v23 + 1) - 1) == 58;
  }

  if (v8 || v10)
  {
    llvm::sys::path::const_iterator::operator++(&v19);
    if (v19 == a1 && v21 == a2)
    {
      return v23;
    }

    v11 = *v20;
    v12 = a3 > 1 && v11 == 92;
    v13 = v12;
    if (v11 != 47 && !v13)
    {
      return v23;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v15 = *v23;
    if (a3 > 1 && v15 == 92 || v15 == 47)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t llvm::sys::path::root_directory(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v21);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  if (v21 == a1 && v23 == a2)
  {
    return 0;
  }

  if (*(&v22 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v22;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v22 + 1) == v7;
    }
  }

  v9 = 0;
  if (*(&v22 + 1) && a3 >= 2)
  {
    v9 = *(v22 + *(&v22 + 1) - 1) == 58;
  }

  if (!v8 && !v9 || (llvm::sys::path::const_iterator::operator++(&v18), v18 == a1) && v20 == a2 || ((result = v19, v11 = *v19, a3 > 1) ? (v12 = v11 == 92) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v11 != 47 ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (!v8)
    {
      v15 = *v22;
      if (a3 > 1 && v15 == 92 || v15 == 47)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

void llvm::sys::path::append(void *a1, const llvm::Twine *a2, void **a3, void **a4, const char **a5, void **a6)
{
  v79[4] = *MEMORY[0x1E69E9840];
  v77 = v79;
  v78 = xmmword_1E096E640;
  v74 = v76;
  v75 = xmmword_1E096E640;
  v71 = v73;
  v72 = xmmword_1E096E640;
  v68 = v70;
  v69 = xmmword_1E096E640;
  v65 = v67;
  v66 = 0x400000000;
  v10 = *(a3 + 32);
  if (v10 < 2)
  {
    v11 = 0;
    v12 = *(a4 + 32);
    if (v12 < 2)
    {
      goto LABEL_3;
    }

LABEL_67:
    if (*(a4 + 33) == 1)
    {
      if (v12 - 5 < 2)
      {
        v45 = *a4;
        v46 = a4[1];
        if (v11 < HIDWORD(v66))
        {
          goto LABEL_75;
        }

        goto LABEL_106;
      }

      if (v12 == 4)
      {
        v57 = *(*a4 + 23);
        if (v57 >= 0)
        {
          v45 = *a4;
        }

        else
        {
          v45 = **a4;
        }

        if (v57 >= 0)
        {
          v46 = *(*a4 + 23);
        }

        else
        {
          v46 = (*a4)[1];
        }

        if (v11 >= HIDWORD(v66))
        {
          goto LABEL_106;
        }

        goto LABEL_75;
      }

      if (v12 == 3)
      {
        v45 = *a4;
        if (*a4)
        {
          v46 = strlen(*a4);
          if (v11 < HIDWORD(v66))
          {
            goto LABEL_75;
          }

          goto LABEL_106;
        }

        v46 = 0;
        if (v11 >= HIDWORD(v66))
        {
LABEL_106:
          v54 = v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
          v46 = v54;
          v11 = v66;
        }

LABEL_75:
        v47 = v65 + 16 * v11;
        *v47 = v45;
        v47[1] = v46;
        v11 = v66 + 1;
        LODWORD(v66) = v66 + 1;
        v13 = *(a5 + 32);
        if (v13 < 2)
        {
LABEL_4:
          v14 = *(a6 + 32);
          if (v14 < 2)
          {
            goto LABEL_5;
          }

LABEL_85:
          if (*(a6 + 33) == 1)
          {
            if (v14 - 5 < 2)
            {
              v51 = *a6;
              v52 = a6[1];
              if (v11 < HIDWORD(v66))
              {
                goto LABEL_93;
              }

              goto LABEL_110;
            }

            if (v14 == 4)
            {
              v59 = *(*a6 + 23);
              if (v59 >= 0)
              {
                v51 = *a6;
              }

              else
              {
                v51 = **a6;
              }

              if (v59 >= 0)
              {
                v52 = *(*a6 + 23);
              }

              else
              {
                v52 = (*a6)[1];
              }

              if (v11 >= HIDWORD(v66))
              {
                goto LABEL_110;
              }

              goto LABEL_93;
            }

            if (v14 == 3)
            {
              v51 = *a6;
              if (*a6)
              {
                v52 = strlen(*a6);
                if (v11 < HIDWORD(v66))
                {
                  goto LABEL_93;
                }

                goto LABEL_110;
              }

              v52 = 0;
              if (v11 >= HIDWORD(v66))
              {
LABEL_110:
                v56 = v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
                v52 = v56;
                v11 = v66;
              }

LABEL_93:
              v53 = v65 + 16 * v11;
              *v53 = v51;
              v53[1] = v52;
              v11 = v66 + 1;
              LODWORD(v66) = v11;
              v15 = v65;
              if (v11)
              {
                goto LABEL_6;
              }

LABEL_94:
              if (v15 == v67)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }
          }

          llvm::Twine::toVector(a6, &v68);
          v51 = v68;
          v52 = v69;
          v11 = v66;
          if (v66 < HIDWORD(v66))
          {
            goto LABEL_93;
          }

          goto LABEL_110;
        }

        goto LABEL_76;
      }
    }

    llvm::Twine::toVector(a4, &v74);
    v45 = v74;
    v46 = v75;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_75;
    }

    goto LABEL_106;
  }

  if (*(a3 + 33) != 1)
  {
    goto LABEL_56;
  }

  if (v10 - 5 < 2)
  {
    v42 = 0;
    v38 = *a3;
    v40 = a3[1];
    goto LABEL_66;
  }

  if (v10 != 4)
  {
    if (v10 == 3)
    {
      v38 = *a3;
      if (*a3)
      {
        v39 = a4;
        v40 = strlen(*a3);
        a4 = v39;
      }

      else
      {
        v40 = 0;
      }

      v42 = 0;
      goto LABEL_66;
    }

LABEL_56:
    v41 = a4;
    llvm::Twine::toVector(a3, &v77);
    v38 = v77;
    v40 = v78;
    v42 = v66;
    a4 = v41;
    goto LABEL_66;
  }

  v42 = 0;
  v43 = *(*a3 + 23);
  if (v43 >= 0)
  {
    v38 = *a3;
  }

  else
  {
    v38 = **a3;
  }

  if (v43 >= 0)
  {
    v40 = *(*a3 + 23);
  }

  else
  {
    v40 = (*a3)[1];
  }

LABEL_66:
  v44 = (v65 + 16 * v42);
  *v44 = v38;
  v44[1] = v40;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v12 = *(a4 + 32);
  if (v12 >= 2)
  {
    goto LABEL_67;
  }

LABEL_3:
  v13 = *(a5 + 32);
  if (v13 < 2)
  {
    goto LABEL_4;
  }

LABEL_76:
  if (*(a5 + 33) != 1)
  {
    goto LABEL_83;
  }

  if (v13 - 5 < 2)
  {
    v48 = *a5;
    v49 = a5[1];
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  if (v13 == 4)
  {
    v58 = (*a5)[23];
    if (v58 >= 0)
    {
      v48 = *a5;
    }

    else
    {
      v48 = **a5;
    }

    if (v58 >= 0)
    {
      v49 = (*a5)[23];
    }

    else
    {
      v49 = *(*a5 + 1);
    }

    if (v11 >= HIDWORD(v66))
    {
      goto LABEL_108;
    }

    goto LABEL_84;
  }

  if (v13 != 3)
  {
LABEL_83:
    llvm::Twine::toVector(a5, &v71);
    v48 = v71;
    v49 = v72;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v48 = *a5;
  if (*a5)
  {
    v49 = strlen(*a5);
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v49 = 0;
  if (v11 >= HIDWORD(v66))
  {
LABEL_108:
    v55 = v49;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
    v49 = v55;
    v11 = v66;
  }

LABEL_84:
  v50 = v65 + 16 * v11;
  *v50 = v48;
  v50[1] = v49;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v14 = *(a6 + 32);
  if (v14 >= 2)
  {
    goto LABEL_85;
  }

LABEL_5:
  v15 = v65;
  if (!v11)
  {
    goto LABEL_94;
  }

LABEL_6:
  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = "/";
  if (a2 > 1)
  {
    v17 = "\\/";
  }

  v61 = v17;
  v62 = v16;
  if (a2 == 3)
  {
    v18 = 92;
  }

  else
  {
    v18 = 47;
  }

  v60 = v18;
  v19 = a1[1];
  v20 = 16 * v11;
  do
  {
    if (!v19 || ((v21 = *(*a1 + v19 - 1), a2 > 1) ? (v22 = v21 == 92) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), v21 != 47 ? (v24 = v23 == 0) : (v24 = 0), v24))
    {
      v34 = v15[1];
      if (!v34 || (v35 = **v15, v35 != 47) && (a2 < 2 || v35 != 92))
      {
        if (v19)
        {
          v64 = 261;
          v63[0] = *v15;
          v63[1] = v34;
          has_root_name = llvm::sys::path::has_root_name(v63, a2);
          v19 = a1[1];
          if ((has_root_name & 1) == 0)
          {
            if ((v19 + 1) > a1[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + 1, 1);
              v19 = a1[1];
            }

            *(*a1 + v19) = v60;
            v19 = a1[1] + 1;
            a1[1] = v19;
          }
        }
      }

      v37 = *v15;
      v30 = v15[1];
      if (a1[2] < v19 + v30)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + v30, 1);
        v19 = a1[1];
      }

      if (v30)
      {
        v32 = (*a1 + v19);
        v33 = v37;
        goto LABEL_15;
      }
    }

    else
    {
      first_not_of = llvm::StringRef::find_first_not_of(v15, v61, v62, 0);
      v26 = first_not_of;
      v28 = *v15;
      v27 = v15[1];
      if (v27 >= first_not_of)
      {
        v29 = first_not_of;
      }

      else
      {
        v29 = v15[1];
      }

      v30 = v27 - v29;
      v19 = a1[1];
      v31 = v19 + v27 - v29;
      if (a1[2] < v31)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v31, 1);
        v19 = a1[1];
      }

      if (v27 > v26)
      {
        v32 = (*a1 + v19);
        v33 = &v29[v28];
LABEL_15:
        memcpy(v32, v33, v30);
        v19 = a1[1];
      }
    }

    v19 += v30;
    a1[1] = v19;
    v15 += 2;
    v20 -= 16;
  }

  while (v20);
  v15 = v65;
  if (v65 != v67)
  {
LABEL_95:
    free(v15);
  }

LABEL_96:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  if (v74 != v76)
  {
    free(v74);
  }

  if (v77 != v79)
  {
    free(v77);
  }
}

uint64_t llvm::sys::path::has_root_name(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v20[16] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = xmmword_1E0971D70;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v18);
    v5 = v18;
    v6 = v19;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = (*this)[1];
  }

LABEL_15:
  llvm::sys::path::begin(v5, v6, v2, &v14);
  if (v14 == v5 && v17 == v6)
  {
    v10 = 0;
    v11 = v18;
    if (v18 == v20)
    {
      return v10;
    }

    goto LABEL_31;
  }

  if (v16 < 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = *v15;
    if (v8 == 47 || (v9 = 0, v2 >= 2) && v8 == 92)
    {
      v9 = v15[1] == v8;
    }
  }

  v12 = 0;
  if (v2 >= 2 && v16)
  {
    v12 = v15[v16 - 1] == 58;
  }

  v10 = (v16 != 0) & (v9 | v12);
  v11 = v18;
  if (v18 != v20)
  {
LABEL_31:
    free(v11);
  }

  return v10;
}

unsigned __int8 *llvm::sys::path::parent_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t anonymous namespace::parent_path_end(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v43 = a1;
  v44 = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = -1;
  }

  v8 = a3 > 1;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    v10 = "/";
  }

  else
  {
    v10 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(&v43, v10, v9, v6);
  if (a3 >= 2 && last_of == -1)
  {
    v12 = v44 - 1;
    if (v44 < v44 - 1)
    {
      v12 = v44;
    }

    while (v12)
    {
      last_of = v12 - 1;
      v13 = v43[--v12];
      if (v13 == 58)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_32;
  }

LABEL_19:
  if (last_of == -1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

  if (last_of == 1)
  {
    v6 = 0;
    v14 = *v43;
    v15 = a3 > 1 && v14 == 92;
    v16 = v15;
    if (v14 == 47 || v16)
    {
LABEL_32:
      if (a2)
      {
        goto LABEL_33;
      }

LABEL_96:
      v19 = 0;
      goto LABEL_97;
    }
  }

  v6 = last_of + 1;
  if (!a2)
  {
    goto LABEL_96;
  }

LABEL_33:
  v7 = a1[v6];
LABEL_34:
  v18 = a3 > 1 && v7 == 92;
  v19 = v7 == 47 || v18;
  v43 = a1;
  v44 = a2;
  v8 = a3 > 1;
  if (a3 > 1)
  {
    if (a2 < 3)
    {
LABEL_74:
      v23 = *a1;
      goto LABEL_75;
    }

    if (a1[1] == 58)
    {
      v20 = a1[2];
      v21 = 1;
      first_of = 2;
      if (v20 == 47 || v20 == 92)
      {
        goto LABEL_84;
      }
    }
  }

  if (a2 < 4)
  {
    goto LABEL_74;
  }

  v23 = *a1;
  v25 = a3 > 1 && v23 == 92;
  if ((v23 == 47 || v25) && v23 == a1[1])
  {
    v26 = a1[2];
    v27 = a3 > 1 && v26 == 92;
    v28 = v27;
    if (v26 != 47 && !v28)
    {
      if (a3 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (a3 <= 1)
      {
        v30 = "/";
      }

      else
      {
        v30 = "\\/";
      }

      v31 = v6;
      first_of = llvm::StringRef::find_first_of(&v43, v30, v29, 2uLL);
      v6 = v31;
      if (first_of == -1)
      {
        goto LABEL_97;
      }

LABEL_85:
      if (v6 >= first_of)
      {
        v34 = first_of;
      }

      else
      {
        v34 = v6;
      }

      while (v6 > first_of)
      {
        v35 = v6 - 1;
        v36 = a1[v6 - 1];
        v37 = v36 == 92 && v8;
        --v6;
        if (v36 != 47)
        {
          v6 = v35;
          if (!v37)
          {
            v34 = v35 + 1;
            goto LABEL_106;
          }
        }
      }

      goto LABEL_106;
    }
  }

LABEL_75:
  first_of = 0;
  v33 = a3 > 1 && v23 == 92;
  if (v23 == 47 || v33)
  {
    v21 = a3 > 1;
LABEL_84:
    v8 = v21;
    goto LABEL_85;
  }

LABEL_97:
  while (v6)
  {
    v38 = v6 - 1;
    v39 = a1[v6 - 1];
    v40 = v39 == 92 && v8;
    --v6;
    if (v39 != 47)
    {
      v6 = v38;
      if (!v40)
      {
        v34 = v38 + 1;
        goto LABEL_105;
      }
    }
  }

  v34 = 0;
LABEL_105:
  first_of = -1;
LABEL_106:
  if (v34 == first_of)
  {
    v41 = v19;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    return v34;
  }

  else
  {
    return first_of + 1;
  }
}

void llvm::SmallVectorImpl<char>::swap(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *a1;
  if (*a1 != a1 + 3 && *a2 != a2 + 3)
  {
    v5 = a1[1];
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *a2 = v4;
    a2[1] = v5;
    v7 = a1[2];
    a1[2] = a2[2];
    a2[2] = v7;
    return;
  }

  v8 = a2[1];
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
    v9 = a1[1];
    if (a2[2] >= v9)
    {
LABEL_7:
      v10 = a2[1];
      if (v9 >= v10)
      {
        v11 = a2[1];
      }

      else
      {
        v11 = v9;
      }

      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = a1[1];
    if (a2[2] >= v9)
    {
      goto LABEL_7;
    }
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
  v9 = a1[1];
  v10 = a2[1];
  if (v9 >= v10)
  {
    v11 = a2[1];
  }

  else
  {
    v11 = a1[1];
  }

  if (!v11)
  {
LABEL_11:
    v12 = v9 - v10;
    if (v9 > v10)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  for (i = 0; i != v11; ++i)
  {
    v15 = *a2;
    v16 = *(*a1 + i);
    *(*a1 + i) = *(*a2 + i);
    *(v15 + i) = v16;
  }

  v9 = a1[1];
  v10 = a2[1];
  v12 = v9 - v10;
  if (v9 > v10)
  {
LABEL_12:
    v13 = v9 - v11;
    if (v13)
    {
      memcpy((*a2 + v10), (*a1 + v11), v13);
      v10 = a2[1];
    }

    a2[1] = v12 + v10;
    a1[1] = v11;
    return;
  }

LABEL_23:
  v17 = v10 - v9;
  if (v10 > v9)
  {
    v18 = v10 - v11;
    if (v18)
    {
      memcpy((*a1 + v9), (*a2 + v11), v18);
      v9 = a1[1];
    }

    a1[1] = v17 + v9;
    a2[1] = v11;
  }
}

void llvm::sys::path::native(void **a1, unsigned int a2)
{
  v28[16] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    return;
  }

  v3 = *a1;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v4 = 92;
    }

    else
    {
      v4 = 47;
    }

    do
    {
      v5 = *v3;
      if (v5 == 92 || v5 == 47)
      {
        *v3 = v4;
      }

      ++v3;
      --v2;
    }

    while (v2);
    if (**a1 != 126)
    {
      return;
    }

    if (a1[1] != 1)
    {
      v11 = *(*a1 + 1);
      if (v11 != 92 && v11 != 47)
      {
        return;
      }
    }

    __src = v28;
    v27 = xmmword_1E0971D70;
    llvm::sys::path::home_directory(&__src);
    v13 = a1;
    v14 = *a1;
    v15 = a1[1];
    v16 = v15 - 1;
    v17 = v27;
    v18 = &v15[v27 - 1];
    if (*(&v27 + 1) < v18)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v28, v18, 1);
      v13 = a1;
      v17 = v27;
      if (v15 == 1)
      {
LABEL_39:
        v19 = &v16[v17];
        *&v27 = v19;
        if (&__src == v13)
        {
LABEL_98:
          if (__src != v28)
          {
            free(__src);
          }

          return;
        }

LABEL_87:
        v25 = v13[1];
        if (v25 >= v19)
        {
          if (!v19)
          {
LABEL_97:
            v13[1] = v19;
            goto LABEL_98;
          }

          memmove(*v13, __src, v19);
        }

        else
        {
          if (v13[2] >= v19)
          {
            if (v25)
            {
              memmove(*v13, __src, v13[1]);
              v13 = a1;
            }
          }

          else
          {
            v13[1] = 0;
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, v13 + 3, v19, 1);
            v13 = a1;
            v25 = 0;
          }

          if (v27 == v25)
          {
            goto LABEL_97;
          }

          memcpy(*v13 + v25, __src + v25, v27 - v25);
        }

        v13 = a1;
        goto LABEL_97;
      }
    }

    else if (v15 == 1)
    {
      goto LABEL_39;
    }

    memcpy(__src + v17, v14 + 1, (v15 - 1));
    v13 = a1;
    v19 = &v16[v27];
    *&v27 = v19;
    if (&__src == a1)
    {
      goto LABEL_98;
    }

    goto LABEL_87;
  }

  v6 = *a1;
  if (v2 < 8)
  {
    goto LABEL_81;
  }

  if (v2 < 0x10)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v7 = v2 & 0xFFFFFFFFFFFFFFF0;
  v20 = v3 + 7;
  v21.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v21.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v22 = v2 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v23 = vceqq_s8(*(v20 - 7), v21);
    if (v23.i8[0])
    {
      *(v20 - 7) = 47;
      if ((v23.i8[1] & 1) == 0)
      {
LABEL_47:
        if ((v23.i8[2] & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_64;
      }
    }

    else if ((v23.i8[1] & 1) == 0)
    {
      goto LABEL_47;
    }

    *(v20 - 6) = 47;
    if ((v23.i8[2] & 1) == 0)
    {
LABEL_48:
      if ((v23.i8[3] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(v20 - 5) = 47;
    if ((v23.i8[3] & 1) == 0)
    {
LABEL_49:
      if ((v23.i8[4] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(v20 - 4) = 47;
    if ((v23.i8[4] & 1) == 0)
    {
LABEL_50:
      if ((v23.i8[5] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v20 - 3) = 47;
    if ((v23.i8[5] & 1) == 0)
    {
LABEL_51:
      if ((v23.i8[6] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(v20 - 2) = 47;
    if ((v23.i8[6] & 1) == 0)
    {
LABEL_52:
      if ((v23.i8[7] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    *(v20 - 1) = 47;
    if ((v23.i8[7] & 1) == 0)
    {
LABEL_53:
      if ((v23.i8[8] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    *v20 = 47;
    if ((v23.i8[8] & 1) == 0)
    {
LABEL_54:
      if ((v23.i8[9] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    v20[1] = 47;
    if ((v23.i8[9] & 1) == 0)
    {
LABEL_55:
      if ((v23.i8[10] & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }

LABEL_71:
    v20[2] = 47;
    if ((v23.i8[10] & 1) == 0)
    {
LABEL_56:
      if ((v23.i8[11] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    v20[3] = 47;
    if ((v23.i8[11] & 1) == 0)
    {
LABEL_57:
      if ((v23.i8[12] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    v20[4] = 47;
    if ((v23.i8[12] & 1) == 0)
    {
LABEL_58:
      if ((v23.i8[13] & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_75;
    }

LABEL_74:
    v20[5] = 47;
    if ((v23.i8[13] & 1) == 0)
    {
LABEL_59:
      if (v23.i8[14])
      {
        goto LABEL_76;
      }

      goto LABEL_60;
    }

LABEL_75:
    v20[6] = 47;
    if (v23.i8[14])
    {
LABEL_76:
      v20[7] = 47;
      if ((v23.i8[15] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_77;
    }

LABEL_60:
    if ((v23.i8[15] & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_77:
    v20[8] = 47;
LABEL_44:
    v20 += 16;
    v22 -= 16;
  }

  while (v22);
  if (v2 == v7)
  {
    return;
  }

  if ((v2 & 8) == 0)
  {
    v6 = &v3[v7];
    goto LABEL_81;
  }

LABEL_14:
  v6 = &v3[v2 & 0xFFFFFFFFFFFFFFF8];
  v8 = v7 - (v2 & 0xFFFFFFFFFFFFFFF8);
  v9 = &v3[v7 + 3];
  while (2)
  {
    v10 = vceq_s8(*(v9 - 3), 0x5C5C5C5C5C5C5C5CLL);
    if (v10.i8[0])
    {
      *(v9 - 3) = 47;
      if (v10.i8[1])
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v10.i8[2] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_27:
      *(v9 - 1) = 47;
      if (v10.i8[3])
      {
        goto LABEL_28;
      }

LABEL_20:
      if ((v10.i8[4] & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_29:
      v9[1] = 47;
      if (v10.i8[5])
      {
        goto LABEL_30;
      }

LABEL_22:
      if ((v10.i8[6] & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_31:
      v9[3] = 47;
      if (v10.i8[7])
      {
LABEL_32:
        v9[4] = 47;
      }
    }

    else
    {
      if ((v10.i8[1] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      *(v9 - 2) = 47;
      if (v10.i8[2])
      {
        goto LABEL_27;
      }

LABEL_19:
      if ((v10.i8[3] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      *v9 = 47;
      if (v10.i8[4])
      {
        goto LABEL_29;
      }

LABEL_21:
      if ((v10.i8[5] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      v9[2] = 47;
      if (v10.i8[6])
      {
        goto LABEL_31;
      }

LABEL_23:
      if (v10.i8[7])
      {
        goto LABEL_32;
      }
    }

    v9 += 8;
    v8 += 8;
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
  {
    return;
  }

LABEL_81:
  v24 = &v3[v2];
  do
  {
    if (*v6 == 92)
    {
      *v6 = 47;
    }

    ++v6;
  }

  while (v6 != v24);
}

uint64_t llvm::sys::path::home_directory(void *a1)
{
  v2 = getenv("HOME");
  if (v2)
  {
    pw_dir = v2;
    v4 = 0;
  }

  else
  {
    v11 = sysconf(71);
    if (v11 >= 1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x4000;
    }

    v4 = operator new[](v12);
    bzero(v4, v12);
    v14 = 0;
    v13 = getuid();
    getpwuid_r(v13, &v15, v4, v12, &v14);
    if (!v14 || (pw_dir = v14->pw_dir) == 0)
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  a1[1] = 0;
  v5 = strlen(pw_dir);
  v6 = v5;
  if (a1[2] >= v5)
  {
    v7 = 0;
    v8 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v5, 1);
    v7 = a1[1];
  }

  memcpy((*a1 + v7), pw_dir, v6);
  v8 = a1[1];
LABEL_7:
  a1[1] = v8 + v6;
  v9 = 1;
  if (!v4)
  {
    return 1;
  }

LABEL_15:
  operator delete[](v4);
  return v9;
}

uint64_t llvm::sys::path::filename(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v4[0] = a1;
  v4[1] = a2;
  v7 = a2;
  v8 = a3;
  llvm::sys::path::reverse_iterator::operator++(v4);
  return v5;
}

BOOL llvm::sys::path::has_root_directory(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v14[16] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = xmmword_1E0971D70;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_directory(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

BOOL llvm::sys::path::has_parent_path(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v15[16] = *MEMORY[0x1E69E9840];
  v13 = v15;
  v14 = xmmword_1E0971D70;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_29:
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v12 = *this;
    if (*this)
    {
      v7 = strlen(*this);
      v6 = v12;
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  v5 = (*this)[1];
  if (v4 >= 0)
  {
    v6 = *this;
  }

  else
  {
    v6 = **this;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

LABEL_15:
  if (v13 != v15)
  {
    free(v13);
  }

  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  return v8 != -1 && v9 != 0;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v16[16] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = xmmword_1E0971D70;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v14);
    v5 = v14;
    v6 = v15;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = *(*this + 8);
  }

LABEL_15:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_directory = llvm::sys::path::has_root_directory(&v11, a2);
  if (a2 < 2)
  {
    has_root_name = 1;
    v9 = v14;
    if (v14 == v16)
    {
      return has_root_directory & has_root_name;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_name = llvm::sys::path::has_root_name(&v11, a2);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_19:
    free(v9);
  }

  return has_root_directory & has_root_name;
}

uint64_t llvm::sys::fs::status(llvm::sys::fs *this, const stat *a2, llvm::sys::fs::file_status *a3)
{
  v3 = a3;
  v13[16] = *MEMORY[0x1E69E9840];
  v11 = v13;
  v12 = xmmword_1E0971D70;
  v5 = llvm::Twine::toNullTerminatedStringRef(this, &v11);
  if (v3)
  {
    v6 = MEMORY[0x1E69E9A90](v5, v10);
  }

  else
  {
    v6 = MEMORY[0x1E69E9A58](v5, v10);
  }

  result = llvm::sys::fs::fillStatus(v6, v10, a2, v7);
  if (v11 != v13)
  {
    v9 = result;
    free(v11);
    return v9;
  }

  return result;
}

{
  v4 = fstat(this, &v7);
  return llvm::sys::fs::fillStatus(v4, &v7.st_dev, a2, v5);
}

void llvm::sys::fs::createUniquePath(uint64_t a1, uint64_t a2, int a3)
{
  v22[16] = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = xmmword_1E0971D70;
  llvm::Twine::toVector(a1, &v20);
  if (a3)
  {
    v19[4] = 261;
    v17 = v20;
    *&v18 = v21;
    if ((llvm::sys::path::is_absolute(&v17, 0) & 1) == 0)
    {
      v17 = v19;
      v18 = xmmword_1E0971D70;
      llvm::sys::path::system_temp_directory(1, &v17);
      v16 = 261;
      v15[0] = v20;
      v15[1] = v21;
      v14 = 257;
      v12 = 257;
      v10 = 257;
      llvm::sys::path::append(&v17, 0, v15, &v13, &v11, &v9);
      llvm::SmallVectorImpl<char>::swap(&v20, &v17);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }

  if (&v20 == a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v21;
    v6 = *(a2 + 8);
    if (v6 >= v21)
    {
      if (v21)
      {
        memmove(*a2, v20, v21);
      }
    }

    else
    {
      if (*(a2 + 16) >= v21)
      {
        if (v6)
        {
          memmove(*a2, v20, *(a2 + 8));
        }
      }

      else
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5, 1);
        v6 = 0;
      }

      if (v21 != v6)
      {
        memcpy((*a2 + v6), &v20[v6], v21 - v6);
      }
    }

    *(a2 + 8) = v5;
  }

  if (v5 + 1 > *(a2 + 16))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5 + 1, 1);
    *(*a2 + *(a2 + 8)) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(*a2 + v5) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v8 = 0;
  do
  {
    if (v20[v8] == 37)
    {
      *(*a2 + v8) = a0123456789abcd_0[llvm::sys::Process::GetRandomNumber() & 0xF];
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_24:
  if (v20 != v22)
  {
    free(v20);
  }
}

void llvm::sys::path::system_temp_directory(int a1, uint64_t a2)
{
  v3 = 65537;
  *(a2 + 8) = 0;
  if (a1)
  {
    v4 = getenv("TMPDIR");
    if (v4 || (v4 = getenv("TMP")) != 0 || (v4 = getenv("TEMP")) != 0 || (v4 = getenv("TEMPDIR")) != 0)
    {
      v5 = v4;
      v6 = strlen(v4);
      v7 = v6;
      if (*(a2 + 16) >= v6)
      {
        v8 = 0;
        v13 = 0;
        if (!v6)
        {
LABEL_24:
          *(a2 + 8) = v13 + v7;
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v6, 1);
        v8 = *(a2 + 8);
      }

      memcpy((*a2 + v8), v5, v7);
      v13 = *(a2 + 8);
      goto LABEL_24;
    }
  }

  else
  {
    v3 = 65538;
  }

  v9 = confstr(v3, 0, 0);
  v10 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_26;
  }

  v11 = v9;
  while (v10 == v11)
  {
    v12 = confstr(v3, *a2, v10);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_20:
    v11 = v12;
    v10 = *(a2 + 8);
    if (v12 == v10)
    {
      *(a2 + 8) = v12 - 1;
      return;
    }
  }

  if (v10 <= v11)
  {
    if (*(a2 + 16) < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v11, 1);
      v10 = *(a2 + 8);
    }

    if (v11 != v10)
    {
      bzero((*a2 + v10), v11 - v10);
    }
  }

  *(a2 + 8) = v11;
  v12 = confstr(v3, *a2, v11);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_25:
  v10 = 0;
  *(a2 + 8) = 0;
LABEL_26:
  if (*(a2 + 16) < v10 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10 + 9, 1);
    v10 = *(a2 + 8);
  }

  v14 = *a2 + v10;
  *v14 = *"/var/tmp/";
  *(v14 + 8) = 47;
  *(a2 + 8) += 9;
}

unint64_t llvm::sys::fs::createUniqueFile(uint64_t a1, int *a2, void *a3, int a4, uint64_t a5)
{
  v10 = 129;
  std::system_category();
  while (1)
  {
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, 0);
      v12 = *a3;
      v21 = 257;
      if (*v12)
      {
        v20 = v12;
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      LOBYTE(v21) = v13;
      v15 = llvm::sys::fs::openFile(&v20, a2, 1, 3, a4, a5);
      if (!v15)
      {
        v11 = 0;
        v18 = 0;
        return v18 | v11;
      }

      v16 = v14;
      v17 = std::generic_category();
      if (v15 != 17 || v17 != v16)
      {
        break;
      }

      v11 = 17;
      if (--v10 <= 1)
      {
        goto LABEL_12;
      }
    }

    if (v15 != 13 || v17 != v16)
    {
      break;
    }

    v11 = 13;
    if (--v10 <= 1)
    {
LABEL_12:
      v18 = v15 & 0xFFFFFFFF00000000;
      return v18 | v11;
    }
  }

  v18 = v15 & 0xFFFFFFFF00000000;
  v11 = v15;
  return v18 | v11;
}

void createUniqueEntity(uint64_t a1, int *a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = std::system_category();
  if (a5 == 2)
  {
    v22 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v23 = *a3;
      v37 = 257;
      if (*v23)
      {
        v36 = v23;
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v37) = v24;
      v38 = &v40;
      v39 = xmmword_1E0971D70;
      v25 = llvm::Twine::toNullTerminatedStringRef(&v36, &v38);
      v26 = 0;
      v27 = v14;
      if (access(v25, 0) == -1)
      {
        break;
      }

      v28 = v38;
      if (v38 != &v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((v27 != std::generic_category() || v26 != 2) && !v26 && --v22 >= 2)
      {
        continue;
      }

      return;
    }

    v26 = *__error();
    v27 = std::generic_category();
    v28 = v38;
    if (v38 == &v40)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v28);
    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v15 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v16 = *a3;
      v41 = 257;
      if (*v16)
      {
        v38 = v16;
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v41) = v17;
      v19 = llvm::sys::fs::openFile(&v38, a2, 1, 3, a6, a7);
      if (!v19)
      {
        break;
      }

      v20 = v18;
      v21 = std::generic_category();
      if (v19 == 17 && v21 == v20)
      {
        if (--v15 <= 1)
        {
          return;
        }
      }

      else
      {
        if (v19 != 13)
        {
          return;
        }

        if (v21 != v20)
        {
          return;
        }

        if (--v15 <= 1)
        {
          return;
        }
      }
    }
  }

  else if (a5)
  {
    llvm::sys::fs::createUniquePath(a1, a3, a4);
    __break(1u);
  }

  else
  {
    for (i = 129; i > 1; --i)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v30 = *a3;
      v41 = 257;
      if (*v30)
      {
        v38 = v30;
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      LOBYTE(v41) = v31;
      directory = llvm::sys::fs::create_directory(&v38, 0, 0x1F8u);
      if (!directory)
      {
        break;
      }

      v34 = v32;
      v35 = std::generic_category();
      if (directory != 17)
      {
        break;
      }

      if (v35 != v34)
      {
        break;
      }
    }
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, void *a5, int a6, int a7)
{
  v37[16] = *MEMORY[0x1E69E9840];
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v23 = v11;
    LOBYTE(v25) = v12;
    BYTE1(v25) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOBYTE(v12) = 0;
      LOWORD(v25) = 256;
LABEL_20:
      v14 = 1;
      goto LABEL_26;
    }

    if (*v11)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 33) == 1;
      BYTE1(v25) = v12;
      if (v17)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      *&v23 = v18;
      *(&v23 + 1) = v16;
      *&v24 = v11;
      LOBYTE(v25) = v12;
    }

    else
    {
      v22 = *(a1 + 1);
      v23 = *a1;
      v24 = v22;
      v25 = a1[4];
      v12 = v25;
      if (!v25)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 == 1)
  {
    v26 = a2;
    v27 = a3;
    v14 = 1;
    LOBYTE(v12) = 5;
  }

  else
  {
    if (BYTE1(v25) != 1)
    {
      LOBYTE(v12) = 2;
    }

    v19 = &v23;
    if (BYTE1(v25) == 1)
    {
      v19 = v23;
    }

    v26 = v19;
    v27 = *(&v23 + 1);
    v28 = a2;
    v29 = a3;
    v14 = 5;
  }

LABEL_26:
  v30 = v12;
  v31 = v14;
  v35 = v37;
  v36 = xmmword_1E0971D70;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v26, &v35);
  v21 = 1;
  v34 = 1;
  if (*v20)
  {
    v32 = v20;
    v21 = 3;
  }

  v33 = v21;
  createUniqueEntity(&v32, a4, a5, 1, a6, a7, 438);
  if (v35 != v37)
  {
    free(v35);
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4, int a5)
{
  v6 = 0;
  llvm::sys::fs::createTemporaryFile(a1, a2, a3, &v6, a4, 1, a5);
  if (!v5)
  {
    close(v6);
  }
}

void llvm::sys::fs::make_absolute(uint64_t a1, unsigned __int8 ***a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  v41 = 261;
  v38 = v4;
  *&v39 = v5;
  has_root_directory = llvm::sys::path::has_root_directory(&v38, 0);
  v41 = 261;
  v38 = v4;
  *&v39 = v5;
  has_root_name = llvm::sys::path::has_root_name(&v38, 0);
  if (!has_root_directory)
  {
    v8 = has_root_name;
    v38 = &v40;
    v39 = xmmword_1E0971D70;
    llvm::Twine::toVector(a1, &v38);
    if ((v8 & 1) == 0)
    {
      v37[4] = 261;
      v35 = v4;
      *&v36 = v5;
      v34 = 257;
      v32 = 257;
      v30 = 257;
      llvm::sys::path::append(&v38, 0, &v35, v33, v31, v29);
      llvm::SmallVectorImpl<char>::swap(a2, &v38);
LABEL_30:
      if (v38 != &v40)
      {
        free(v38);
      }

      return;
    }

    v35 = v4;
    *&v36 = v5;
    if (!v5)
    {
      goto LABEL_21;
    }

    v9 = *v4;
    if (v5 < 3)
    {
      if (v9 == 47)
      {
        goto LABEL_21;
      }
    }

    else if (v9 == 47)
    {
      if (*(v4 + 1) != 47 || *(v4 + 2) == 47)
      {
        goto LABEL_21;
      }

      v10 = 2;
      goto LABEL_12;
    }

    v10 = 0;
LABEL_12:
    first_of = llvm::StringRef::find_first_of(&v35, "/", 1, v10);
    v12 = v36;
    if (v36 >= first_of)
    {
      v12 = first_of;
    }

    if (v12 >= 3 && *v35 == 47)
    {
      v13 = *(v35 + 1);
      if (v13 != 47)
      {
        v12 = 0;
      }

      v26 = v12;
      if (v13 == 47)
      {
        v14 = v35;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

LABEL_21:
    v26 = 0;
    v14 = 0;
LABEL_22:
    v15 = llvm::sys::path::root_directory(v38, v39, 0);
    v17 = v16;
    v18 = v38;
    v19 = v39;
    llvm::sys::path::root_path(v38, v39, 0);
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = (v19 - v21);
    v23 = (v18 + v21);
    llvm::sys::path::root_path(v4, v5, 0);
    v36 = xmmword_1E0971D70;
    v35 = v37;
    if (v5 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v5;
    }

    v34 = 261;
    v33[0] = v14;
    v33[1] = v26;
    v32 = 261;
    v31[0] = v15;
    v31[1] = v17;
    v30 = 261;
    v29[0] = v23;
    v29[1] = v22;
    v28 = 261;
    v27[0] = (v4 + v25);
    v27[1] = (v5 - v25);
    llvm::sys::path::append(&v35, 0, v33, v31, v29, v27);
    llvm::SmallVectorImpl<char>::swap(a2, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    goto LABEL_30;
  }
}

uint64_t llvm::sys::fs::make_absolute(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[4] = 261;
  v2 = *(a1 + 8);
  v8 = *a1;
  *&v9 = v2;
  if (llvm::sys::path::is_absolute(&v8, 0))
  {
    std::system_category();
    return 0;
  }

  else
  {
    v8 = v10;
    v9 = xmmword_1E0971D70;
    result = llvm::sys::fs::current_path(&v8);
    if (!result)
    {
      v7 = 261;
      v6[0] = v8;
      v6[1] = v9;
      v4 = result;
      llvm::sys::fs::make_absolute(v6, a1);
      std::system_category();
      result = v4;
    }

    if (v8 != v10)
    {
      v5 = result;
      free(v8);
      return v5;
    }
  }

  return result;
}

uint64_t llvm::sys::fs::current_path(uint64_t a1)
{
  v38[16] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v2 = getenv("PWD");
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v4 = 1;
  v34 = 1;
  if (*v2)
  {
    v32 = v2;
    v4 = 3;
  }

  v33 = v4;
  if (!llvm::sys::path::is_absolute(&v32, 0))
  {
    goto LABEL_22;
  }

  v5 = 1;
  v31 = 1;
  if (*v3)
  {
    v29 = v3;
    v5 = 3;
  }

  v30 = v5;
  v36 = v38;
  v37 = xmmword_1E0971D70;
  v6 = llvm::Twine::toNullTerminatedStringRef(&v29, &v36);
  if (stat(v6, &v35))
  {
    st_ino = 0;
    st_dev = 0;
    v9 = *__error() == 0;
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  st_dev = v35.st_dev;
  st_ino = v35.st_ino;
  v9 = 1;
  v10 = v36;
  if (v36 != v38)
  {
LABEL_9:
    free(v10);
  }

LABEL_10:
  if (!v9)
  {
    goto LABEL_22;
  }

  v27 = ".";
  v28 = 259;
  v36 = v38;
  v37 = xmmword_1E0971D70;
  v11 = llvm::Twine::toNullTerminatedStringRef(&v27, &v36);
  if (!stat(v11, &v35))
  {
    v13 = v35.st_dev;
    v12 = v35.st_ino;
    v14 = 1;
    v15 = v36;
    if (v36 == v38)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v14 = *__error() == 0;
  v15 = v36;
  if (v36 != v38)
  {
LABEL_13:
    free(v15);
  }

LABEL_14:
  if (v14 && st_dev == v13 && st_ino == v12)
  {
    v16 = strlen(v3);
    v17 = *(a1 + 8);
    if (*(a1 + 16) < v17 + v16)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v17 + v16, 1);
      v17 = *(a1 + 8);
    }

    if (v16)
    {
      memcpy((*a1 + v17), v3, v16);
      v17 = *(a1 + 8);
    }

    *(a1 + 8) = v17 + v16;
LABEL_39:
    std::system_category();
    return 0;
  }

LABEL_22:
  v18 = *(a1 + 8);
  if (v18 != 1024)
  {
    if (v18 <= 0x400 && *(a1 + 16) <= 0x3FFuLL)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), 0x400uLL, 1);
    }

    *(a1 + 8) = 1024;
  }

  v19 = *a1;
  for (i = 1024; ; i = v23)
  {
    if (getcwd(v19, i))
    {
      *(a1 + 8) = strlen(*a1);
      goto LABEL_39;
    }

    if (*__error() != 12)
    {
      break;
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = 2 * v21;
    if (v22 != 2 * v21)
    {
      if (v21 >= 1 && v22 <= v23)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), 2 * v21, 1);
      }

      *(a1 + 8) = v23;
    }

    v19 = *a1;
  }

  *(a1 + 8) = 0;
  v26 = *__error();
  std::generic_category();
  return v26;
}