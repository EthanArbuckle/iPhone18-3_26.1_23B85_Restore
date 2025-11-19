unint64_t sub_2338343FC(_DWORD *a1, void *a2)
{
  v2 = a2[162];
  v3 = a2[163];
  v4 = a2[164];
  v5 = a2[165];
  v83 = a2[166];
  v80 = a2[167];
  v6 = v5 >> 1;
  v7 = a2[168];
  v8 = a1[388];
  v9 = a1[389];
  v78 = a1[390];
  v82 = a1[391];
  v87 = a1[392];
  v10 = &v7[2 * (v5 >> 1)];
  v11 = v5 & 0xFFFFFFFFFFFFFFFELL;
  memmove(v7, v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  v12 = v4;
  result = memmove(v10, &v4[2 * v11], v11);
  v14 = v3 - 4;
  if ((v3 - 4) >= 5)
  {
    v15 = v11;
    v16 = &v4[8 * v6];
    v17 = &v7[2 * v11];
    v18 = v2 - 4;
    v85 = v14;
    __len = v11;
    if (v18 > 4)
    {
      v19 = v4;
      v77 = 2 * v80;
      v20 = v83 + 4 * v80;
      v21 = &v12[12 * v6 + 12];
      v76 = 4 * v6;
      v22 = &v19[10 * v6 + 8];
      v23 = &v19[6 * v6 + 6];
      v24 = 4;
      while (1)
      {
        v84 = v7;
        v25 = v10;
        v10 = v17;
        v79 = v25;
        v81 = v24;
        v26 = v25 + 12;
        result = memmove(v17, v16, v15);
        v27 = 0;
        v28 = 2;
        for (i = 4; i < v18; i += 2)
        {
          v30 = &v16[v27];
          v31 = &v10[v27];
          v32 = *(v20 + v28) & 0xF;
          if (((v8 >> v32) & 1) == 0)
          {
            goto LABEL_41;
          }

          v33 = &v26[v27];
          v34 = *(v31 + 4);
          if (v32 >= 2)
          {
            if (v32 >= 4)
            {
              v51 = *(v23 + v27) + *(v23 + v27 + 4) + *(v22 + v27 - 2) + *(v22 + v27 + 2) + 2;
              v52 = v51 >> 2;
              v53 = v51 >> 4;
              if (v52 + v53 < v34 || (v52 - v53) > v34)
              {
                LOWORD(v34) = v52;
              }
            }

            else if (v32 == 2)
            {
              v44 = *(v33 - 2);
              v45 = *(v21 + v27 - 4);
              v46 = (v44 + v45 + 1) >> 1;
              v47 = (*(v23 + v27) + *(v22 + v27 - 2) + 1) >> 1;
              result = (*(v23 + v27 + 4) + *(v22 + v27 + 2) + 1) >> 1;
              if (v47 < 4 * result && result < 4 * v47)
              {
                v48 = ((v47 + result + 1) >> 1) - v34;
                LODWORD(result) = v46 - v34;
                if (v48 < 0)
                {
                  v48 = -v48;
                }

                if ((result & 0x80000000) == 0)
                {
                  result = result;
                }

                else
                {
                  result = v34 - v46;
                }

                if (3 * v48 < result)
                {
                  v49 = v44 - v34;
                  v50 = v45 - v34;
                  if ((v44 - v34) < 0)
                  {
                    v49 = v34 - v44;
                  }

                  if (v50 < 0)
                  {
                    v50 = v34 - v45;
                  }

                  if (v49 <= v50)
                  {
                    v46 = v44;
                  }

                  else
                  {
                    v46 = *(v21 + v27 - 4);
                  }
                }
              }

              v34 = (v46 + v34 + 1) >> 1;
            }

            else
            {
              v70 = *&v26[v27 - 8] + *(v21 + v27) + 1;
              if (v34 <= v70 >> 2 || (v70 & 0x3FFFE) <= v34)
              {
                goto LABEL_41;
              }

              v72 = v34 - ((v34 + (v70 >> 1) + 1) >> 1) + ((*(v22 + v27 + 2) + *(v23 + v27) + 1) >> 1);
              v34 = v72 & ~(v72 >> 31);
              if (v34 >= 0xFFFF)
              {
                LOWORD(v34) = -1;
              }
            }

            goto LABEL_40;
          }

          if ((*(v20 + v28) & 0xF) != 0)
          {
            v35 = *(v33 - 2);
            v36 = *(v23 + v27 + 4);
            v37 = *(v22 + v27 - 2);
            v38 = (*&v26[v27 - 8] + *(v23 + v27) + *(v22 + v27 + 2) + *(v21 + v27) + 2) >> 2;
            v39 = ((21845 * (v36 + v35 + *&v10[v27 + 12]) + 0x8000) >> 16) + 2 * v38 + ((21845 * (v37 + *&v10[v27 + 4] + *(v21 + v27 - 4)) + 0x8000) >> 16) + 2;
            result = (v38 - (v39 >> 2)) * (v38 - (v39 >> 2));
            if (result >= 0x65)
            {
              v40 = (v34 + ((*&v26[v27] + *(v21 + v27 - 8) + 1) >> 1) + 1) >> 1;
              v41 = v36 + v37 + 1;
              v42 = v41 >> 1;
              v43 = ((v41 >> 1) * v87 + 0x8000) >> 16;
              result = v43 + (v41 >> 1);
              if (v40 > result || v40 < (v42 - v43))
              {
                v34 += v42 - v40;
                if (v34 < (v41 >> 2))
                {
                  v34 = v41 >> 1;
                }

                if (v34 >= 0xFFFF)
                {
                  LOWORD(v34) = -1;
                }

LABEL_40:
                *(v30 + 4) = v34;
              }
            }
          }

          else
          {
            v59 = &v10[v27];
            v60 = (*&v10[v27] + *&v10[v27 + 16] + 1) >> 1;
            if ((v34 - v60 - 2 * ((v34 - v60) & ((v34 - v60) >> 31))) < ((v34 + 2) >> 2))
            {
              v61 = (v34 + v60 + 1) >> 1;
              v62 = (v59[6] + v59[2] + 1) >> 1;
              v63 = (v62 * v82 + 0x8000) >> 16;
              result = v63 + v62;
              v64 = v62 - v63;
              if (v61 > result || v61 < v64)
              {
                v66 = v59[5];
                v67 = (v62 - v61 + 1) >> 1;
                v68 = (v67 + v34) & ~((v67 + v34) >> 31);
                if (v68 >= 0xFFFF)
                {
                  LOWORD(v68) = -1;
                }

                v69 = (v67 + v66) & ~((v67 + v66) >> 31);
                if (v69 >= 0xFFFF)
                {
                  LOWORD(v69) = -1;
                }

                *(v30 + 4) = v68;
                *&v16[v27 + 10] = v69;
              }
            }
          }

LABEL_41:
          if (v9 == *(v20 + v28) >> 4)
          {
            v55 = *(v31 + 4);
            result = *&v10[v27 + 10];
            v56 = *(v23 + v27 + 4) + *(v22 + v27 + 2) + 1;
            v57 = v55 - ((*(v23 + v27 + 2) + *(v22 + v27) + 1) >> 1);
            v58 = *&v10[v27 + 12] - ((*(v23 + v27 + 6) + *(v22 + v27 + 4) + 1) >> 1);
            if ((v57 * v57 + (result - (v56 >> 1)) * (result - (v56 >> 1)) + v58 * v58) < v78)
            {
              *(v30 + 5) = v56 >> 1;
            }
          }

          ++v28;
          v27 += 4;
        }

        v7 = v79;
        v24 = v81 + 2;
        v16 += v76;
        v20 += v77;
        v21 += v76;
        v22 += v76;
        v23 += v76;
        v17 = v84;
        v15 = __len;
        if (v81 + 2 >= v85)
        {
          return result;
        }
      }
    }

    v73 = 4 * v6;
    v74 = 4;
    do
    {
      v75 = v10;
      v10 = v17;
      result = memmove(v17, v16, v11);
      v74 += 2;
      v16 += v73;
      v17 = v7;
      v7 = v75;
    }

    while (v74 < v85);
  }

  return result;
}

char *sub_2338349A8(char *result, void *a2)
{
  v2 = *(result + 40);
  v3 = v2 > 7;
  v4 = (1 << v2) & 0xB0;
  if (!v3 && v4 != 0)
  {
    v6 = a2[162];
    v7 = a2[165];
    v8 = a2[167];
    v9 = v7 >> 1;
    v80 = *(result + 193);
    v10 = *(result + 388);
    v11 = a2[163];
    v12 = a2[168];
    v13 = a2[166];
    v14 = a2[164];
    v15 = &v12[2 * (v7 >> 1)];
    v16 = v7 & 0xFFFFFFFFFFFFFFFELL;
    memmove(v12, v14, v7 & 0xFFFFFFFFFFFFFFFELL);
    result = memmove(v15, &v14[2 * v16], v16);
    v17 = v11 - 4;
    if ((v11 - 4) >= 5)
    {
      v18 = v16;
      v19 = v15;
      v86 = 4 * v9;
      v20 = v14;
      v21 = &v14[8 * v9];
      v22 = v6 - 4;
      v23 = &v12[2 * v16];
      v88 = v16;
      v87 = v17;
      if (v80 < v6 - 4)
      {
        v24 = 4 * (v80 & 1);
        v79 = 2 * v8;
        v25 = v13 + 4 * v8;
        v26 = 2 * v80;
        v27 = &v20[16 * v9];
        v28 = &v20[6 * v9 - 2];
        v29 = &v20[12 * v9 - 4];
        v30 = &v20[10 * v9 - 2];
        v31 = 4;
        while (1)
        {
          v81 = v29;
          v89 = v12;
          v83 = v31;
          v12 = v19;
          v82 = v23;
          memmove(v23, v21, v18);
          v32 = &v12[v26];
          v33 = -4;
          v34 = v21;
          v35 = v89;
          v84 = v30;
          result = v80;
          v36 = v81;
          v85 = v27;
          v37 = v28;
          v38 = v82;
          v39 = v80 >> 1;
          do
          {
            v45 = (*(v25 + v39) >> v24) & 0xF;
            if (((v10 >> ((*(v25 + v39) >> v24) & 0xF)) & 1) == 0)
            {
              goto LABEL_20;
            }

            v46 = *&v38[2 * v80];
            v47 = v45 == 2;
            if (v45 >= 2)
            {
              v53 = 3 * v46;
              if (v47)
              {
                v54 = *&v35[2 * v80];
                v55 = *&v27[2 * v80];
                v56 = *&v32[v33 + 4];
                v57 = *(v36 + v26 + 4);
                v58 = v53 >= v54 && v53 >= v55;
                v59 = (v54 + 2 * v46 + v55 + 2) >> 2;
                if (!v58)
                {
                  v59 = *&v38[2 * v80];
                }

                if (3 * v56 < v57 || 3 * v57 < v56)
                {
                  v75 = v56 - v59;
                  v76 = v57 - v59;
                  if ((v56 - v59) < 0)
                  {
                    v75 = v59 - v56;
                  }

                  if (v76 < 0)
                  {
                    v76 = v59 - v57;
                  }

                  if (v75 >= v76)
                  {
                    v56 = *(v36 + v26 + 4);
                  }

                  v60 = v56 - v59;
                }

                else
                {
                  v60 = ((v56 + v57 + 1) >> 1) - v59;
                }

                goto LABEL_76;
              }

              v61 = *&v32[v33];
              v62 = *(v36 + v26 + 8);
              v63 = v53 >= v61 && v53 >= v62;
              v51 = (v61 + 2 * v46 + v62 + 2) >> 2;
              if (!v63)
              {
                v51 = *&v38[2 * v80];
              }

              v42 = *(v37 + 2 * v80);
              v52 = *(v30 + v26 + 4);
              if (3 * v52 < v42 || 3 * v42 < v52)
              {
LABEL_10:
                v40 = v52 - v51;
                v41 = v42 - v51;
                if ((v52 - v51) < 0)
                {
                  v40 = v51 - v52;
                }

                if (v41 < 0)
                {
                  v41 = v51 - v42;
                }

                if (v40 < v41)
                {
                  v42 = v52;
                }

                v43 = v42 - v51;
                goto LABEL_17;
              }
            }

            else
            {
              if (!v45)
              {
                v64 = *&v38[v26 - 8];
                v65 = *&v38[v26 + 8];
                v66 = *&v38[v26 - 4];
                v67 = *&v38[v26 + 4];
                v68 = 3 * v46 >= v64 && 3 * v46 >= v65;
                v69 = (v64 + 2 * v46 + v65 + 2) >> 2;
                if (!v68)
                {
                  v69 = *&v38[2 * v80];
                }

                v70 = v66 - v69;
                v71 = v67 - v69;
                if ((v66 - v69) < 0)
                {
                  v70 = v69 - v66;
                }

                if (v71 < 0)
                {
                  v71 = v69 - v67;
                }

                if (v70 >= v71)
                {
                  v72 = *&v38[v26 + 4];
                }

                else
                {
                  v72 = *&v38[v26 - 4];
                }

                if (3 * v66 >= v67 && 3 * v67 >= v66)
                {
                  v74 = (v66 + v67 + 1) >> 1;
                }

                else
                {
                  v74 = v72;
                }

                v60 = v74 - v69;
LABEL_76:
                v43 = (v60 + 1) >> 1;
                goto LABEL_17;
              }

              v48 = *&v32[v33 + 8];
              v49 = *(v36 + 2 * v80);
              v50 = 3 * v46 >= v48 && 3 * v46 >= v49;
              v51 = (v48 + 2 * v46 + v49 + 2) >> 2;
              if (!v50)
              {
                v51 = *&v38[2 * v80];
              }

              v42 = *(v37 + v26 + 4);
              v52 = *(v30 + 2 * v80);
              if (3 * v52 < v42 || 3 * v42 < v52)
              {
                goto LABEL_10;
              }
            }

            v43 = ((v42 + v52 + 1) >> 1) - v51;
LABEL_17:
            v44 = (v43 + v46) & ~((v43 + v46) >> 31);
            if (v44 >= 0xFFFF)
            {
              LOWORD(v44) = -1;
            }

            *&v34[2 * v80] = v44;
LABEL_20:
            result += 2;
            v38 += 4;
            v27 += 4;
            v37 += 4;
            v36 += 4;
            v30 += 4;
            v33 += 4;
            v35 += 4;
            v34 += 4;
            ++v39;
          }

          while (result < v22);
          v31 = v83 + 2;
          v21 += v86;
          v25 += v79;
          v27 = &v85[v86];
          v19 = v82;
          v28 += v86;
          v29 = v81 + v86;
          v30 = v84 + v86;
          v18 = v88;
          v23 = v89;
          if (v83 + 2 >= v87)
          {
            return result;
          }
        }
      }

      v77 = 4;
      do
      {
        v78 = v15;
        v15 = v23;
        result = memmove(v23, v21, v16);
        v77 += 2;
        v21 += v86;
        v23 = v12;
        v12 = v78;
      }

      while (v77 < v87);
    }
  }

  return result;
}

void *sub_233834E1C(uint64_t a1, void *a2)
{
  v2 = a2[169];
  v3 = a2[170];
  v4 = a2[171];
  v5 = a2[173];
  v40 = a2[174];
  v41 = a2[172];
  v6 = *(a1 + 1616);
  v7 = *(a1 + 1624);
  v8 = 2 * v41;
  v43 = a2[175];
  result = memmove(v43, v4, 2 * v41);
  v39 = v3 - 2;
  if ((v3 - 2) >= 3)
  {
    v10 = v5 + 2 * v40;
    v11 = &v4[v8];
    v12 = &v43[2 * (v41 & 0xFFFFFFFFFFFFFFFELL)];
    v13 = v2 - 2;
    v14 = &v43[2 * (v41 >> 1)];
    v15 = &v4[v8 + 4 + (v41 & 0xFFFFFFFFFFFFFFFELL)];
    v16 = 4;
    v17 = 1;
    v18 = 2;
    while (1)
    {
      v42 = v18;
      v19 = v14;
      v14 = v12;
      result = memmove(v12, v11, v41 & 0xFFFFFFFFFFFFFFFELL);
      if (v13 > v17 + 2)
      {
        break;
      }

LABEL_3:
      v17 ^= 1uLL;
      v16 ^= 4u;
      v18 = v42 + 1;
      v11 += v41;
      v10 += v40;
      v15 += v41;
      v12 = v43;
      v43 = v19;
      if (v42 + 1 == v39)
      {
        return result;
      }
    }

    v20 = &v14[2 * v17 + 6];
    v21 = v17;
    v22 = 1;
    while (1)
    {
      v24 = *&v19[2 * v21 + 4];
      v25 = (*(v10 + v22) >> v16) & 0xF;
      v26 = *(v20 - 2);
      v27 = *v20;
      v28 = *(v15 + 2 * v21);
      if (v25 > 1)
      {
        break;
      }

      if (v25)
      {
        if (v25 != 1)
        {
          goto LABEL_17;
        }

        v24 = (v24 + v27 + 1) >> 1;
        v29 = v26 + v28;
        goto LABEL_14;
      }

      v30 = ((v27 - v26) & ((v27 - v26) >> 31)) + v26;
      if (v27 <= v26)
      {
        v28 = *(v20 - 2);
      }

      else
      {
        v28 = *v20;
      }

LABEL_26:
      v33 = (v30 * v6 + 512) >> 10;
      v34 = *(v20 - 1);
      v35 = v34 - v28;
      v36 = v30 - v34;
      if (v35 > v33 || v36 > v33)
      {
        v38 = (*(v7 + 2 * v30) + *(v7 + 2 * v28) + 1) >> 1;
        *&v11[2 * v21 + 4] = (v38 * v38 + 0x8000) >> 16;
      }

      v20 += 4;
      v23 = v21 + 4;
      v21 += 2;
      ++v22;
      if (v23 >= v13)
      {
        goto LABEL_3;
      }
    }

    if (v25 != 2)
    {
      if (v25 != 3)
      {
LABEL_17:
        v31 = ((v27 - v26) & ((v27 - v26) >> 31)) + v26;
        if (v27 > v26)
        {
          v26 = *v20;
        }

        v32 = ((v28 - v24) & ((v28 - v24) >> 31)) + v24;
        if (v28 <= v24)
        {
          v28 = *&v19[2 * v21 + 4];
        }

        v30 = ((v31 - v32) & ((v31 - v32) >> 31)) + v32;
        if (v28 <= v26)
        {
          v28 = v26;
        }

        goto LABEL_26;
      }

      v24 = (v24 + v26 + 1) >> 1;
      v29 = v27 + v28;
LABEL_14:
      v28 = (v29 + 1) >> 1;
    }

    v30 = ((v28 - v24) & ((v28 - v24) >> 31)) + v24;
    if (v28 <= v24)
    {
      v28 = v24;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_233835098(uint64_t result, void *a2)
{
  v2 = a2[177] - 2;
  if (v2 >= 3)
  {
    v3 = a2[179];
    v4 = a2[181];
    v5 = v3 >> 1;
    v6 = a2[180] + 2 * v4;
    v7 = a2[178];
    v8 = v3 & 0xFFFFFFFFFFFFFFFELL;
    v9 = v7 + 2 * v8;
    v10 = *(result + 1688);
    v11 = 4 * (v10 & 1);
    v12 = a2[176] - 2;
    v13 = v7 + v8;
    v14 = v7 + 6 * v5;
    result = *(result + 1680);
    v15 = v7 + 4 * v5 + 6;
    v16 = 2;
    do
    {
      v17 = v10 + 2;
      if (v12 > v17)
      {
        v18 = v17 >> 1;
        v19 = 2 * v10;
        v20 = *(result + 2 * *(v19 + v9 + 2));
        v21 = (v15 + v19);
        v22 = (v15 + v19);
        do
        {
          v23 = *(v6 + v18) >> v11;
          v24 = *v22;
          v22 += 2;
          v25 = *(result + 2 * *(v13 + 2 * v17));
          v26 = *(result + 2 * v24);
          v27 = *(result + 2 * *(v14 + 2 * v17));
          v28 = (v27 + v25 + 1) >> 1;
          if ((v23 & 0xA) == 0)
          {
            v28 = (v20 + v26 + 1) >> 1;
          }

          v29 = (v20 + v25 + v26 + v27 + 2) >> 2;
          if ((v23 & 5) == 0)
          {
            v29 = v28;
          }

          *(v21 - 1) = (v29 * v29 + 0x8000) >> 16;
          v17 += 2;
          ++v18;
          v21 = v22;
          v20 = v26;
        }

        while (v17 < v12);
      }

      v10 ^= 1u;
      v11 ^= 4u;
      ++v16;
      v9 += 2 * v5;
      v6 += v4;
      v13 += v8;
      v14 += v8;
      v15 += v8;
    }

    while (v16 != v2);
  }

  return result;
}

char *sub_233835208(uint64_t a1, void *a2)
{
  v2 = a2[182];
  v3 = a2[183];
  v4 = a2[184];
  v5 = a2[185];
  v6 = a2[186];
  v7 = a2[188];
  v118 = a2[187];
  v119 = a2[189];
  v8 = a2[190];
  v154 = *(a1 + 1736);
  v9 = 2 * v5;
  result = memmove(v8, v4, 2 * v5);
  v117 = v3 - 2;
  if ((v3 - 2) >= 3)
  {
    v11 = &v4[v9];
    v12 = &v8[v9];
    if (v119 > 3)
    {
      v158 = 0;
      v160 = 0;
      v169 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v170 = v2 - 3;
      v17 = (v7 + 2 * v119);
      v130 = &v4[v9 + 6 + (v5 & 0xFFFFFFFFFFFFFFFELL)];
      v131 = &v4[v9 + 4];
      v18 = 2;
      v19 = v6 + 2 * v118;
      v129 = v131 + 4 * (v5 >> 1);
      v116 = v5;
      v20 = &v8[v5];
      while (1)
      {
        v21 = v12;
        v146 = v8;
        v125 = v18;
        v159 = v18 & 1;
        v22 = v12;
        v23 = v15;
        v24 = v16;
        v25 = v5;
        v26 = v14;
        v27 = v13;
        result = memmove(v22, v11, v25);
        v13 = v27;
        v16 = v24;
        v28 = 2 * v159;
        v29 = v8;
        v14 = v26;
        v15 = v23;
        v30 = 0;
        v127 = v11;
        v128 = v20;
        v126 = v17;
        v123 = v21;
        v124 = v19;
        while (!*&v17[4 * v30])
        {
          if (v119 >> 2 == ++v30)
          {
            goto LABEL_4;
          }
        }

        v31 = v159;
        v32 = v159 | 2;
        v33 = v154;
        if ((v159 | 2uLL) < v170)
        {
          break;
        }

LABEL_4:
        v17 = v126 + v119;
        v18 = v125 + 1;
        v5 = v116;
        v8 = v128;
        v11 = &v127[v116];
        v20 = v123;
        v19 = v124 + v118;
        v129 += v116;
        v130 += v116;
        v131 += v116;
        v12 = v146;
        if (v125 + 1 == v117)
        {
          return result;
        }
      }

      v34 = (v19 + 1);
      v35 = 1 << v32;
      v36 = v159 ^ 1;
      v37 = v129;
      v38 = v128 + 10;
      v40 = v130;
      v39 = v131;
      while (1)
      {
        if ((*v17 & v35) == 0)
        {
          result = &v17[4 * (2 * v35 == 0)];
          if ((2 * v35) <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = 2 * v35;
          }

          v42 = &v34[v31];
          goto LABEL_15;
        }

        v44 = &v21[v28];
        v45 = &v38[v28];
        if (v33 == 2)
        {
          v46 = *v34;
          v47 = v46 >> 4;
          v48 = v46 & 0xF;
          if (v31)
          {
            v48 = v47;
          }

          if (v48 <= 1)
          {
            if (!v48)
            {
              v14 = *&v21[v28 + 2];
              v53 = *(v44 + 2);
              v70 = *&v21[v28 + 6];
              if (v14 >= v53)
              {
                if (v70 <= v53)
                {
                  v76 = *(v44 + 2);
                }

                else
                {
                  v76 = *&v21[v28 + 6];
                }

                if (v14 >= v70)
                {
                  v52 = v76;
                }

                else
                {
                  v52 = *&v21[v28 + 2];
                }
              }

              else
              {
                if (v14 <= v70)
                {
                  v71 = *&v21[v28 + 6];
                }

                else
                {
                  v71 = *&v21[v28 + 2];
                }

                if (v53 >= v70)
                {
                  v52 = v71;
                }

                else
                {
                  v52 = *(v44 + 2);
                }
              }

              goto LABEL_152;
            }

            if (v48 != 1)
            {
LABEL_85:
              v53 = v13;
              goto LABEL_153;
            }

            v15 = *&v38[v28 - 4];
            v53 = *(v44 + 2);
            v58 = *(v40 + v28 - 4);
            HIDWORD(v160) = v58;
            if (v15 >= v53)
            {
              if (v58 <= v53)
              {
                v77 = *(v44 + 2);
              }

              else
              {
                v77 = v58;
              }

              if (v15 >= v58)
              {
                v52 = v77;
              }

              else
              {
                v52 = *&v38[v28 - 4];
              }

              goto LABEL_152;
            }

            if (v15 <= v58)
            {
              LOWORD(v59) = v58;
            }

            else
            {
              LOWORD(v59) = *&v38[v28 - 4];
            }

            goto LABEL_148;
          }

          if (v48 == 2)
          {
            v16 = *(v45 - 3);
            v53 = *(v44 + 2);
            v59 = *(v40 + v28 - 2);
            HIDWORD(v169) = v59;
            if (v16 >= v53)
            {
              v74 = *(v40 + v28 - 2);
              if (v59 <= v53)
              {
                LOWORD(v59) = *(v44 + 2);
              }

LABEL_130:
              if (v16 >= v74)
              {
                v52 = v59;
              }

              else
              {
                v52 = v16;
              }

              goto LABEL_152;
            }

            v58 = *(v40 + v28 - 2);
            if (v16 > v59)
            {
              LOWORD(v59) = *(v45 - 3);
            }

LABEL_148:
            v65 = v53 >= v58;
LABEL_149:
            if (v65)
            {
              v52 = v59;
            }

            else
            {
              v52 = v53;
            }

            goto LABEL_152;
          }

          if (v48 == 3)
          {
            v59 = *&v38[v28 - 8];
            v53 = *(v44 + 2);
            v64 = *(v40 + v28);
            LODWORD(v169) = v64;
            if (v59 >= v53)
            {
              if (v64 <= v53)
              {
                v75 = *(v44 + 2);
              }

              else
              {
                v75 = v64;
              }

              if (v59 >= v64)
              {
                v52 = v75;
              }

              else
              {
                v52 = *&v38[v28 - 8];
              }

              goto LABEL_152;
            }

            if (v59 <= v64)
            {
              LOWORD(v59) = v64;
            }

            v65 = v53 >= v64;
            goto LABEL_149;
          }

          if (v48 != 4)
          {
            goto LABEL_85;
          }

          v141 = *(v45 - 3);
          v49 = *&v21[v28 + 2];
          v50 = *(v44 + 2);
          v161 = v29;
          v165 = v37;
          v147 = v15;
          HIDWORD(v169) = *(v40 + v28 - 2);
          v51 = v32;
          v132 = &v21[v28];
          v135 = &v38[v28];
          v52 = sub_233835D70(*(v45 - 3), *&v21[v28 + 2], *(v44 + 2), *&v21[v28 + 6], SHIDWORD(v169));
          v44 = v132;
          v45 = v135;
          v53 = v50;
        }

        else
        {
          v54 = *(v39 + v28);
          v16 = *&v29[v28 + 4];
          v15 = *&v29[v28 + 8];
          v14 = *&v38[v28 - 8];
          v53 = *&v38[v28 - 4];
          v55 = *&v21[v28];
          LODWORD(v169) = *(v40 + v28);
          HIDWORD(v169) = *(v40 + v28 - 4);
          LODWORD(v160) = *(v37 + v28);
          HIDWORD(v160) = *&v21[v28 + 8];
          v158 = *(v37 + v28 + 4);
          if (v33)
          {
            if (v33 != 1)
            {
              goto LABEL_153;
            }

            v133 = &v21[v28];
            v136 = &v38[v28];
            v166 = v37;
            v152 = v32;
            v120 = *(v37 + v28 - 4);
            v162 = v29;
            v142 = *&v29[v28 + 4];
            v148 = *&v29[v28 + 8];
            v155 = *&v38[v28 - 8];
            v121 = *&v38[v28 - 4];
            v56 = sub_233835D70(*&v29[v28], v16, v15, v14, v53);
            if (v55 >= v54)
            {
              if (HIDWORD(v160) <= v54)
              {
                v66 = v54;
              }

              else
              {
                v66 = HIDWORD(v160);
              }

              if (v55 >= HIDWORD(v160))
              {
                v54 = v66;
              }

              else
              {
                v54 = v55;
              }
            }

            else
            {
              if (v55 <= HIDWORD(v160))
              {
                v57 = HIDWORD(v160);
              }

              else
              {
                v57 = v55;
              }

              if (v54 >= HIDWORD(v160))
              {
                v54 = v57;
              }
            }

            v67 = sub_233835D70(HIDWORD(v169), v169, v120, v160, v158);
            if (v56 >= v54)
            {
              if (v67 <= v54)
              {
                v69 = v54;
              }

              else
              {
                v69 = v67;
              }

              if (v56 >= v67)
              {
                v52 = v69;
              }

              else
              {
                v52 = v56;
              }
            }

            else
            {
              if (v56 <= v67)
              {
                v68 = v67;
              }

              else
              {
                v68 = v56;
              }

              if (v54 >= v67)
              {
                v52 = v68;
              }

              else
              {
                v52 = v54;
              }
            }

            v33 = v154;
            v14 = v155;
            v15 = v148;
            v31 = v159;
            v36 = v159 ^ 1;
            v28 = 2 * v159;
            v32 = v152;
            v29 = v162;
            v37 = v166;
            v16 = v142;
            v53 = v121;
            v44 = v133;
            v45 = v136;
            goto LABEL_152;
          }

          v60 = *v34;
          v61 = v60 >> 4;
          v62 = v60 & 0xF;
          if (v31)
          {
            v62 = v61;
          }

          if (v62 <= 1)
          {
            if (!v62)
            {
              if (v55 >= v54)
              {
                if (HIDWORD(v160) <= v54)
                {
                  v79 = *(v39 + v28);
                }

                else
                {
                  v79 = *&v21[v28 + 8];
                }

                if (v55 >= HIDWORD(v160))
                {
                  v52 = v79;
                }

                else
                {
                  v52 = *&v21[v28];
                }

                goto LABEL_152;
              }

              v72 = *&v21[v28 + 8];
              if (v55 <= HIDWORD(v160))
              {
                v73 = *&v21[v28 + 8];
              }

              else
              {
                v73 = *&v21[v28];
              }

              goto LABEL_124;
            }

            if (v62 != 1)
            {
              goto LABEL_153;
            }

            if (v53 < v54)
            {
              v72 = *(v40 + v28 - 4);
              if (v53 <= HIDWORD(v169))
              {
                v73 = *(v40 + v28 - 4);
              }

              else
              {
                v73 = *&v38[v28 - 4];
              }

              goto LABEL_124;
            }

            v58 = *(v40 + v28 - 4);
            if (HIDWORD(v169) <= v54)
            {
              LOWORD(v59) = *(v39 + v28);
            }

            else
            {
              LOWORD(v59) = *(v40 + v28 - 4);
            }

            goto LABEL_148;
          }

          if (v62 == 2)
          {
            if (v16 < v54)
            {
              v72 = *(v37 + v28);
              if (v16 <= v160)
              {
                v73 = v160;
              }

              else
              {
                v73 = *&v29[v28 + 4];
              }

LABEL_124:
              if (v54 >= v72)
              {
                v52 = v73;
              }

              else
              {
                v52 = *(v39 + v28);
              }

              goto LABEL_152;
            }

            v74 = *(v37 + v28);
            if (v160 <= v54)
            {
              LOWORD(v59) = *(v39 + v28);
            }

            else
            {
              LOWORD(v59) = v160;
            }

            goto LABEL_130;
          }

          if (v62 == 3)
          {
            if (v14 >= v54)
            {
              if (v169 <= v54)
              {
                v78 = *(v39 + v28);
              }

              else
              {
                v78 = v169;
              }

              if (v14 >= v169)
              {
                v52 = v78;
              }

              else
              {
                v52 = *&v38[v28 - 8];
              }

              goto LABEL_152;
            }

            v72 = *(v40 + v28);
            if (v14 <= v169)
            {
              v73 = v169;
            }

            else
            {
              v73 = *&v38[v28 - 8];
            }

            goto LABEL_124;
          }

          if (v62 != 4)
          {
            goto LABEL_153;
          }

          v161 = v29;
          v147 = *&v29[v28 + 8];
          v141 = *&v29[v28 + 4];
          v49 = *&v38[v28 - 8];
          v165 = v37;
          v51 = v32;
          v122 = *&v38[v28 - 4];
          v63 = &v21[v28];
          v137 = &v38[v28];
          v52 = sub_233835D70(v14, v53, *(v39 + v28), SHIDWORD(v169), v169);
          v45 = v137;
          v44 = v63;
          v53 = v122;
        }

        v29 = v161;
        v37 = v165;
        v16 = v141;
        v36 = v159 ^ 1;
        v28 = 2 * v159;
        v32 = v51;
        v31 = v159;
        v14 = v49;
        v15 = v147;
        v33 = v154;
LABEL_152:
        *(v39 + v28) = v52;
LABEL_153:
        result = &v17[4 * (2 * v35 == 0)];
        if ((2 * v35) <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = 2 * v35;
        }

        if (v31)
        {
          v42 = v34 + 1;
        }

        else
        {
          v42 = v34;
        }

        if (v33 == 2)
        {
          if (v31)
          {
            v80 = v34[1] & 0xF;
            if (v80 <= 1)
            {
LABEL_176:
              if (v80)
              {
                v15 = *&v38[v28 - 2];
                v13 = *&v21[v28 + 6];
                v96 = *(v40 + v28 - 2);
                HIDWORD(v160) = v96;
                if (v15 < v13)
                {
                  if (v15 <= v96)
                  {
                    LOWORD(v97) = v96;
                  }

                  else
                  {
                    LOWORD(v97) = *&v38[v28 - 2];
                  }

                  v98 = v13 >= v96;
                  goto LABEL_201;
                }

                if (v96 <= v13)
                {
                  LOWORD(v97) = *&v21[v28 + 6];
                }

                else
                {
                  LOWORD(v97) = v96;
                }

                if (v15 < v96)
                {
                  LOWORD(v97) = *&v38[v28 - 2];
                }
              }

              else
              {
                v14 = *(v44 + 2);
                v13 = *&v21[v28 + 6];
                v102 = *&v21[v28 + 8];
                if (v14 >= v13)
                {
                  if (v102 <= v13)
                  {
                    v106 = *&v21[v28 + 6];
                  }

                  else
                  {
                    v106 = *&v21[v28 + 8];
                  }

                  if (v14 >= v102)
                  {
                    LOWORD(v97) = v106;
                  }

                  else
                  {
                    LOWORD(v97) = *(v44 + 2);
                  }
                }

                else
                {
                  if (v14 <= v102)
                  {
                    v103 = *&v21[v28 + 8];
                  }

                  else
                  {
                    v103 = *(v44 + 2);
                  }

                  if (v13 >= v102)
                  {
                    LOWORD(v97) = v103;
                  }

                  else
                  {
                    LOWORD(v97) = *&v21[v28 + 6];
                  }
                }
              }

LABEL_246:
              *(v39 + v28 + 2) = v97;
              goto LABEL_15;
            }
          }

          else
          {
            v80 = *v34 >> 4;
            if (v80 <= 1)
            {
              goto LABEL_176;
            }
          }

          switch(v80)
          {
            case 2u:
              v16 = *&v38[v28 - 4];
              v13 = *&v21[v28 + 6];
              v97 = *(v40 + v28);
              HIDWORD(v169) = v97;
              if (v16 >= v13)
              {
                if (v97 <= v13)
                {
                  LOWORD(v97) = *&v21[v28 + 6];
                }

                if (v16 < *(v40 + v28))
                {
                  LOWORD(v97) = *&v38[v28 - 4];
                }

                goto LABEL_246;
              }

              if (v16 > v97)
              {
                LOWORD(v97) = *&v38[v28 - 4];
              }

              v98 = v13 >= *(v40 + v28);
LABEL_201:
              if (!v98)
              {
                LOWORD(v97) = v13;
              }

              goto LABEL_246;
            case 3u:
              v97 = *(v45 - 3);
              v13 = *&v21[v28 + 6];
              v101 = *(v40 + v28 + 2);
              LODWORD(v169) = v101;
              if (v97 >= v13)
              {
                if (v101 <= v13)
                {
                  v105 = *&v21[v28 + 6];
                }

                else
                {
                  v105 = v101;
                }

                if (v97 >= v101)
                {
                  LOWORD(v97) = v105;
                }

                goto LABEL_246;
              }

              if (v97 <= v101)
              {
                LOWORD(v97) = v101;
              }

              v98 = v13 >= v101;
              goto LABEL_201;
            case 4u:
              v81 = *&v38[v28 - 4];
              v149 = v41;
              v82 = *(v44 + 2);
              v138 = v42;
              v83 = *&v21[v28 + 6];
              v167 = v37;
              v143 = result;
              v84 = v29;
              v85 = v15;
              HIDWORD(v169) = *(v40 + v28);
              v86 = v32;
              v87 = sub_233835D70(v81, *(v44 + 2), *&v21[v28 + 6], *&v21[v28 + 8], SHIDWORD(v169));
              v13 = v83;
              v37 = v167;
              v16 = v81;
              v29 = v84;
              v36 = v159 ^ 1;
              v28 = 2 * v159;
              v32 = v86;
              v31 = v159;
              v14 = v82;
              v41 = v149;
              v15 = v85;
              v33 = v154;
              *(v39 + 2 * v159 + 2) = v87;
              v42 = v138;
              result = v143;
              break;
            default:
              v13 = v53;
              break;
          }
        }

        else
        {
          v88 = v39 + v28;
          v89 = *(v39 + v28 + 2);
          v13 = *&v38[v28];
          v90 = *(v40 + v28 + 4);
          if (v33)
          {
            if (v33 == 1)
            {
              v150 = v41;
              v139 = v42;
              v144 = result;
              v163 = v29;
              v168 = v37;
              v153 = v32;
              v91 = v15;
              v156 = v14;
              v134 = *&v38[v28];
              v92 = v53;
              v93 = sub_233835D70(v16, v15, v14, v53, v13);
              v94 = sub_233835D70(HIDWORD(v169), v169, v90, v160, v158);
              if (v93 >= v89)
              {
                if (v94 <= v89)
                {
                  v95 = v89;
                }

                else
                {
                  v95 = v94;
                }

                if (v93 < v94)
                {
                  v95 = v93;
                }
              }

              else
              {
                if (v93 <= v94)
                {
                  v95 = v94;
                }

                else
                {
                  v95 = v93;
                }

                if (v94 > v89)
                {
                  v95 = v89;
                }
              }

              *(v88 + 2) = v95;
              v16 = v91;
              v33 = v154;
              v15 = v156;
              v14 = v92;
              v31 = v159;
              v36 = v159 ^ 1;
              v28 = 2 * v159;
              v32 = v153;
              v29 = v163;
              v37 = v168;
              v13 = v134;
              v42 = v139;
              result = v144;
              v41 = v150;
              goto LABEL_15;
            }

            goto LABEL_273;
          }

          if (v31)
          {
            v99 = v34[1] & 0xF;
            if (v99 <= 2)
            {
LABEL_218:
              if (v99 == 1)
              {
                if (v13 < v89)
                {
                  v104 = HIDWORD(v169);
                  if (v13 <= SHIDWORD(v169))
                  {
                    v100 = WORD2(v169);
                  }

                  else
                  {
                    v100 = *&v38[v28];
                  }

                  goto LABEL_252;
                }

                if (SHIDWORD(v169) <= v89)
                {
                  v100 = *(v39 + v28 + 2);
                }

                else
                {
                  v100 = WORD2(v169);
                }

                if (SHIDWORD(v169) > v13)
                {
                  v100 = *&v38[v28];
                }

LABEL_272:
                *(v88 + 2) = v100;
              }

              else if (v99 == 2)
              {
                if (v53 >= v89)
                {
                  if (v169 <= v89)
                  {
                    v100 = *(v39 + v28 + 2);
                  }

                  else
                  {
                    v100 = v169;
                  }

                  if (v53 < v169)
                  {
                    v100 = v53;
                  }
                }

                else
                {
                  v104 = v169;
                  if (v53 <= v169)
                  {
                    v100 = v169;
                  }

                  else
                  {
                    v100 = v53;
                  }

LABEL_252:
                  if (v104 > v89)
                  {
                    v100 = *(v39 + v28 + 2);
                  }
                }

                goto LABEL_272;
              }

LABEL_273:
              v16 = v15;
              v15 = v14;
              v14 = v53;
              goto LABEL_15;
            }
          }

          else
          {
            v99 = *v34 >> 4;
            if (v99 <= 2)
            {
              goto LABEL_218;
            }
          }

          if (v99 != 4)
          {
            if (v99 == 3)
            {
              if (v14 >= v89)
              {
                if (v90 <= v89)
                {
                  v100 = *(v39 + v28 + 2);
                }

                else
                {
                  v100 = *(v40 + v28 + 4);
                }

                if (v14 < v90)
                {
                  v100 = v14;
                }
              }

              else
              {
                if (v14 <= v90)
                {
                  v100 = *(v40 + v28 + 4);
                }

                else
                {
                  v100 = v14;
                }

                if (v89 < v90)
                {
                  v100 = *(v39 + v28 + 2);
                }
              }

              goto LABEL_272;
            }

            goto LABEL_273;
          }

          v145 = result;
          v164 = v29;
          v151 = v15;
          v157 = v14;
          v107 = v37;
          v108 = v41;
          v109 = *&v38[v28];
          v110 = v32;
          v140 = v42;
          v111 = v53;
          v112 = sub_233835D70(v53, *(v39 + v28 + 2), *(v39 + v28 + 2), SHIDWORD(v160), v169);
          v13 = v109;
          v41 = v108;
          v37 = v107;
          v29 = v164;
          v36 = v159 ^ 1;
          v28 = 2 * v159;
          v32 = v110;
          v31 = v159;
          v33 = v154;
          v15 = v157;
          *(v88 + 2) = v112;
          v16 = v151;
          v14 = v111;
          v42 = v140;
          result = v145;
        }

LABEL_15:
        v43 = 2 * v41;
        v17 = &result[4 * (2 * v41 == 0)];
        if (v43 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v43;
        }

        v34 = &v42[v36];
        v32 += 2;
        v37 += 4;
        v40 += 4;
        v39 += 4;
        v21 += 4;
        v29 += 4;
        v38 += 4;
        if (v32 >= v170)
        {
          goto LABEL_4;
        }
      }
    }

    v113 = v3 - 4;
    v114 = &v8[v5];
    do
    {
      v115 = v8;
      result = memmove(v12, v11, v5);
      v11 += v5;
      v8 = v114;
      v114 = v12;
      v12 = v115;
      --v113;
    }

    while (v113);
  }

  return result;
}

uint64_t sub_233835D70(uint64_t result, int a2, int a3, int a4, int a5)
{
  if (result >= a2)
  {
    if (a3 >= a4)
    {
      if (result < a3)
      {
        if (a4 < a5)
        {
          if (result < a5)
          {
            if (result <= a4)
            {
              return a4;
            }

            else
            {
              return result;
            }
          }

LABEL_58:
          if (a2 <= a5)
          {
            return a5;
          }

          else
          {
            return a2;
          }
        }

        if (result < a4)
        {
          goto LABEL_55;
        }

        goto LABEL_74;
      }

      if (a2 >= a5)
      {
        if (a2 >= a3)
        {
          goto LABEL_80;
        }

        goto LABEL_74;
      }

      if (a3 < a5)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (result < a4)
      {
        if (a3 < a5)
        {
          if (result < a5)
          {
            if (result <= a3)
            {
              return a3;
            }

            else
            {
              return result;
            }
          }

          goto LABEL_58;
        }

        if (result >= a3)
        {
LABEL_66:
          if (a2 <= a3)
          {
            return a3;
          }

          else
          {
            return a2;
          }
        }

LABEL_55:
        if (result <= a5)
        {
          return a5;
        }

        else
        {
          return result;
        }
      }

      if (a2 < a5)
      {
        if (a4 >= a5)
        {
LABEL_80:
          if (a3 <= a5)
          {
            return a5;
          }

          else
          {
            return a3;
          }
        }

LABEL_74:
        if (a2 <= a4)
        {
          return a4;
        }

        else
        {
          return a2;
        }
      }

      if (a2 < a4)
      {
        goto LABEL_66;
      }
    }

    if (a4 <= a5)
    {
      return a5;
    }

    else
    {
      return a4;
    }
  }

  if (a3 < a4)
  {
    if (result < a3)
    {
      if (a2 < a5)
      {
        if (a2 >= a3)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      if (a3 < a5)
      {
LABEL_39:
        if (a4 >= a5)
        {
          return a5;
        }

        else
        {
          return a4;
        }
      }

      goto LABEL_42;
    }

    if (a4 < a5)
    {
      if (result < a4)
      {
LABEL_51:
        if (a2 >= a4)
        {
          return a4;
        }

        else
        {
          return a2;
        }
      }

      goto LABEL_32;
    }

    if (result >= a5)
    {
      if (result >= a4)
      {
        return a4;
      }

      else
      {
        return result;
      }
    }

    goto LABEL_70;
  }

  if (result < a4)
  {
    if (a2 >= a5)
    {
      if (a4 >= a5)
      {
        goto LABEL_51;
      }

LABEL_48:
      if (a3 >= a5)
      {
        return a5;
      }

      else
      {
        return a3;
      }
    }

    if (a2 < a4)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  if (a3 < a5)
  {
    if (result >= a3)
    {
LABEL_32:
      if (result >= a5)
      {
        return a5;
      }

      else
      {
        return result;
      }
    }

LABEL_42:
    if (a2 >= a3)
    {
      return a3;
    }

    else
    {
      return a2;
    }
  }

  if (result < a5)
  {
LABEL_70:
    if (a2 >= a5)
    {
      return a5;
    }

    else
    {
      return a2;
    }
  }

  if (result >= a3)
  {
    return a3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_233835F40(uint64_t a1, void *a2)
{
  v2 = a2[191];
  v3 = a2[192];
  v4 = a2[194];
  v5 = a2[199];
  if (v3)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v266 = a2[193];
  v376 = *(a1 + 1792);
  if (v6)
  {
    v7 = v4 >> 1;
    v8 = a2[43];
    if (v2)
    {
      v9 = v3 == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    v264 = v10;
  }

  else
  {
    v11 = 0;
    v12 = *(a1 + 1784);
    v13 = a2[199];
    v14 = a2[193];
    do
    {
      v15 = 0;
      do
      {
        *(v13 + 2 * v15) = *(v12 + 2 * *(v14 + 2 * v15));
        ++v15;
      }

      while (v2 != v15);
      ++v11;
      v14 += v4;
      v13 += v4;
    }

    while (v11 != v3);
    v7 = v4 >> 1;
    v8 = a2[43];
    if (v2 > 3)
    {
      v19 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      if (v2 >= 0x10)
      {
        v23 = 0;
        v24 = &v5[2];
        v25 = 2 * v7;
        v26 = (v8 + 32);
        v27 = 4 * v2;
        v28 = v8;
        v29 = v5;
        do
        {
          v30 = v2 & 0xFFFFFFFFFFFFFFF0;
          v31 = v26;
          v32 = v24;
          do
          {
            v33 = v32[-1];
            v34 = vmovl_high_u16(*v32);
            v35 = *&vmovl_u16(*v32->i8) | __PAIR128__(0x100000001000000, 0x100000001000000);
            *(v31 - 2) = *&vmovl_u16(*v33.i8) | __PAIR128__(0x100000001000000, 0x100000001000000);
            *(v31 - 1) = *&vmovl_high_u16(v33) | __PAIR128__(0x100000001000000, 0x100000001000000);
            *v31 = v35;
            v31[1] = *&v34 | __PAIR128__(0x100000001000000, 0x100000001000000);
            v31 += 4;
            v32 += 2;
            v30 -= 16;
          }

          while (v30);
          if (v2 != (v2 & 0xFFFFFFFFFFFFFFF0))
          {
            v36 = 4 * (v2 & 0xFFFFFFFFFFFFFFF0);
            v37 = v2 & 0xFFFFFFFFFFFFFFF0;
            v38 = v2 & 0xFFFFFFFFFFFFFFF0;
            if ((v2 & 0xC) == 0)
            {
              goto LABEL_38;
            }

            v39 = v19 - (v2 & 0xFFFFFFFFFFFFFFF0);
            v40 = v2 >> 4 << 6;
            v41 = 4 * (v2 >> 4);
            do
            {
              *(v28 + v40) = *&vmovl_u16(v29[v41++]) | __PAIR128__(0x100000001000000, 0x100000001000000);
              v40 += 16;
              v39 -= 4;
            }

            while (v39);
            v36 = 4 * v19;
            v37 = v19;
            v38 = v2 & 0xFFFFFFFFFFFFFFFCLL;
            if (v2 != v19)
            {
LABEL_38:
              v42 = v2 - v38;
              do
              {
                *(v28 + v36) = v29->u16[v37] | 0x1000000;
                v36 += 4;
                ++v37;
                --v42;
              }

              while (v42);
            }
          }

          ++v23;
          v24 = (v24 + v25);
          v26 = (v26 + v27);
          v29 = (v29 + v25);
          v28 += v27;
        }

        while (v23 != v3);
      }

      else if (v2 == v19)
      {
        v20 = (v8 + 32);
        v21 = v5 + 2;
        v22 = v3;
        do
        {
          *(v20 - 2) = *&vmovl_u16(v21[-2]) | __PAIR128__(0x100000001000000, 0x100000001000000);
          if (v19 != 4)
          {
            *(v20 - 1) = *&vmovl_u16(v21[-1]) | __PAIR128__(0x100000001000000, 0x100000001000000);
            if (v19 != 8)
            {
              *v20 = *&vmovl_u16(*v21) | __PAIR128__(0x100000001000000, 0x100000001000000);
            }
          }

          v20 = (v20 + 4 * v2);
          v21 = (v21 + 2 * v7);
          --v22;
        }

        while (v22);
      }

      else
      {
        v43 = 0;
        v44 = v5;
        v45 = a2[43];
        do
        {
          *v45 = *&vmovl_u16(*v44) | __PAIR128__(0x100000001000000, 0x100000001000000);
          if (v19 != 4)
          {
            v45[1] = *&vmovl_u16(v44[1]) | __PAIR128__(0x100000001000000, 0x100000001000000);
            if (v19 != 8)
            {
              v45[2] = *&vmovl_u16(v44[2]) | __PAIR128__(0x100000001000000, 0x100000001000000);
            }
          }

          v46 = v2 & 0xC;
          do
          {
            *(v45 + v46) = v44->u16[v46] | 0x1000000;
            ++v46;
          }

          while (v2 != v46);
          ++v43;
          v44 = (v44 + 2 * v7);
          v45 = (v45 + 4 * v2);
        }

        while (v43 != v3);
      }
    }

    else
    {
      v16 = (v8 + 8);
      v17 = v5 + 2;
      v18 = v3;
      do
      {
        *(v16 - 2) = *(v17 - 2) | 0x1000000;
        if (v2 != 1)
        {
          *(v16 - 1) = *(v17 - 1) | 0x1000000;
          if (v2 != 2)
          {
            *v16 = *v17 | 0x1000000;
          }
        }

        v16 += v2;
        v17 += v7;
        --v18;
      }

      while (v18);
    }

    v264 = 0;
  }

  v267 = v3;
  v268 = v2;
  v272 = v3 - 2;
  v287 = v2 - 2;
  v286 = ((2 * v7) ^ 0xFFFFFFFE);
  v47 = v5 - 4 * v7;
  v265 = v7;
  v270 = v47 - 2;
  v271 = v2;
  v282 = v47 + 4;
  v283 = v7;
  v269 = v47 - 6;
  v305 = 16 * v2;
  LODWORD(result) = 3;
  v49 = -3;
  v313 = 4 * v2;
  v50 = 2 * v7;
  v51 = 5;
  v304 = 8 * v7;
  v379 = v50;
  v284 = v5;
  v285 = v8;
  do
  {
    v52 = result & (result >> 31);
    v273 = v51;
    v53 = v51 - v52;
    v299 = &v270[v283 * (2 * (v49 + v53) + 14)];
    v298 = &v270[v283 * (2 * (v49 + v53) + 12)];
    v297 = &v270[v283 * (2 * (v49 + v53) + 10)];
    v295 = &v270[v50 * (v49 + v53)];
    v296 = &v270[v283 * (2 * (v49 + v53) + 8)];
    v294 = &v270[v283 * (2 * (v49 + v53) + 6)];
    v293 = &v270[v283 * (2 * (v49 + v53) + 2)];
    v292 = &v270[v283 * (2 * (v49 + v53) + 4)];
    v274 = result;
    v54 = (result - (-v49 & (-v49 >> 31)) + 2);
    v281 = v5 + 2 * v283 * v54;
    v289 = v54;
    v280 = v5 + 2 * (v49 + v54) * v283;
    v314 = v272 + v52;
    v306 = v314 - 3;
    v279 = v8 + v271 * (4 * v53 + 12);
    v277 = v8 + v271 * (4 * v53 + 4);
    v278 = v8 + v271 * (4 * v53 + 8);
    v55 = -3;
    v303 = 5;
    v302 = 3;
    v300 = v269;
    v301 = v270;
    v275 = &v282[v50 * v53];
    v276 = v8 + v313 * v53;
    v290 = v49;
    do
    {
      if (v55 | v49)
      {
        v56 = v302 & (v302 >> 31);
        v377 = v303 - v56;
        v288 = 4 * v377;
        v57 = 2 * v377;
        v378 = v287 + v56;
        v291 = v302 - (-v55 & (-v55 >> 31)) + 2;
        v315 = 2 * v286;
        v316 = 2 * v291;
        v58 = v289;
        v317 = v55;
        if (v306 > v289)
        {
          v58 = v289;
          if (v291 >= v378)
          {
            do
            {
              v58 += 4;
            }

            while (v58 < v306);
          }

          else
          {
            v323 = v279 + v288;
            v322 = v278 + v288;
            v321 = v277 + v288;
            v328 = &v299[v57];
            v59 = v297;
            v327 = &v298[v57];
            v320 = v276 + v288;
            v326 = &v275[v57];
            v60 = v294;
            v325 = &v295[v57];
            v61 = v292;
            v324 = &v293[v57];
            v62 = v296;
            v58 = v289;
            v64 = v280;
            v63 = v281;
            do
            {
              v319 = v58;
              v144 = 0;
              v307 = v63;
              v308 = v64;
              v145 = &v63[v316 + v315];
              v146 = &v64[2 * v55 + v316 + v315];
              v147 = vsubl_u16(*v145, *v146);
              v148.i64[0] = 0x1000000010;
              v148.i64[1] = 0x1000000010;
              v149 = *(v145 + v50);
              v150 = vsubl_u16(v149, *(v146 + v50));
              v151.i64[0] = 0x1000000010;
              v151.i64[1] = 0x1000000010;
              v152 = vmlaq_s32(v151, v150, v150);
              v153 = vshrq_n_u32(v152, 5uLL);
              v154 = v153.i32[1];
              v371 = v153.i32[2];
              v155 = v153.u32[3];
              v156 = (v145 + v50 + v50);
              v157 = (v146 + v50 + v50);
              v158 = *v156;
              v159 = vsubl_u16(*v156, *v157);
              v160.i64[0] = 0x1000000010;
              v160.i64[1] = 0x1000000010;
              v161 = vshrq_n_u32(vmlaq_s32(v160, v159, v159), 5uLL);
              v162 = v161.i32[1];
              v163 = v161.i32[2];
              v407 = v161.u32[3];
              v164 = vmlaq_s32(v148, v147, v147);
              v165 = (v156 + v50);
              v166 = (v157 + v50);
              v147.i64[0] = *v165;
              v160.i64[0] = *v166;
              v167 = (v165 + v50);
              v168 = (v166 + v50);
              v169 = *v167;
              v170 = vsubl_u16(*v147.i8, *v160.i8);
              v171 = vsubl_u16(*v167, *v168);
              v172.i64[0] = 0x1000000010;
              v172.i64[1] = 0x1000000010;
              v173 = vmlaq_s32(v172, v170, v170);
              v170.i64[0] = 0x1000000010;
              v170.i64[1] = 0x1000000010;
              v174 = vmlaq_s32(v170, v171, v171);
              v175 = vshrq_n_u32(v173, 5uLL);
              v176 = v175.i32[1];
              v177 = v175.i32[0];
              v393 = v175.u32[3];
              v395 = v175.u32[2];
              v178 = vaddq_s32(vsraq_n_u32(v175, v174, 5uLL), vsraq_n_u32(v161, v152, 5uLL));
              v179 = (v167 + v50);
              v180 = (v168 + v50);
              *v173.i8 = *v179;
              v181 = vsubl_u16(*v179, *v180);
              v182.i64[0] = 0x1000000010;
              v182.i64[1] = 0x1000000010;
              v183 = vmlaq_s32(v182, v181, v181);
              v184 = vaddvq_s32(vsraq_n_u32(v178, v183, 5uLL));
              v185 = (v179 + v50);
              v186 = (v180 + v50);
              v187 = vmovl_u16(*v185);
              v188 = vsubl_u16(*v185, *v186);
              v189.i64[0] = 0x1000000010;
              v189.i64[1] = 0x1000000010;
              v190 = vshrq_n_u32(vmlaq_s32(v189, v188, v188), 5uLL);
              v191 = v187.i32[1];
              v192 = vsubl_u16(*(v185 + v50), *(v186 + v50));
              v403 = v187.i32[3];
              v359 = v187.i32[2];
              v187.i64[0] = 0x1000000010;
              v187.i64[1] = 0x1000000010;
              v193 = vmovl_u16(v158);
              v405 = v193.i32[1];
              v194 = v193.i32[2];
              v195 = vshrq_n_u32(vmlaq_s32(v187, v192, v192), 5uLL);
              v373 = v193.i32[3];
              v196 = v195.i32[1];
              v197 = vshrq_n_u32(v164, 5uLL);
              v355 = v195.u32[3];
              v391 = v195.u32[2];
              v198 = vmovl_u16(v149);
              v199 = vmovl_u16(v169);
              v389 = v190.i32[1];
              v387 = v190.u32[2];
              v200 = vmovl_u16(*v173.i8);
              v201 = vshrq_n_u32(v183, 5uLL);
              v360 = v190.u32[3];
              v385 = v201.i32[1];
              v383 = v201.u32[2];
              v202 = v201.u32[3];
              v362 = vaddvq_s32(v190) + v184 - vaddvq_s32(v153);
              v203 = vaddvq_s32(v195) + v362 - vaddvq_s32(v161);
              v356 = v200.i32[1];
              v401 = v200.i32[2];
              v204 = vmovl_u16(*v147.i8);
              v205 = vshrq_n_u32(v174, 5uLL);
              v399 = v200.i32[3];
              v206 = v198.i32[1];
              v207 = v198.i32[2];
              v208 = v198.i32[3];
              v358 = v153.i32[0];
              v209 = v161.i32[0];
              v381 = v205.i32[1];
              v375 = v205.u32[2];
              v352 = vaddvq_s32(vsraq_n_u32(v178, v164, 5uLL));
              v210 = v195.i32[0];
              v363 = v190.i32[0];
              v211 = v201.i32[0];
              v361 = v205.u32[3];
              v409 = v204.i32[1];
              v212 = v204.i32[2];
              v353 = v204.i32[3];
              v213 = v199.i32[1];
              v365 = v199.i32[3];
              v397 = v199.i32[2];
              v369 = v197.i32[1];
              v357 = v197.u32[3];
              v367 = v197.u32[2];
              v354 = v205.i32[0];
              v214 = v197.i32[0];
              v311 = v60;
              v312 = v61;
              v309 = v59;
              v310 = v62;
              v215 = v62;
              v216 = v59;
              do
              {
                v337 = v210;
                v338 = v203;
                v339 = v184;
                v340 = v191;
                v345 = v177;
                v219 = &v326[2 * v144];
                v220 = *v219 - *&v325[2 * v144];
                v221 = v206;
                v222 = v405;
                v342 = v353;
                v223 = v409 + v353;
                v343 = v208;
                v405 = v194;
                v341 = v373;
                v224 = v222 + v373;
                v344 = v207;
                v409 = v212;
                v225 = v223 + 4 * v194 + v208 + v221 + 2 * (v222 + v373 + v212 + v207);
                v335 = v369;
                v369 = v367;
                v367 = v357;
                v334 = v154;
                v351 = v371;
                v350 = v163;
                v349 = v407;
                v333 = v176;
                v347 = v395;
                v395 = v393;
                v332 = v381;
                v381 = v375;
                v375 = v361;
                v331 = v385;
                v385 = v383;
                v383 = v202;
                v330 = v389;
                v389 = v387;
                v387 = v360;
                v329 = v196;
                v346 = v391;
                v391 = v355;
                v226 = v397;
                v397 = v365;
                v227 = v401;
                v401 = v399;
                v228 = v359;
                v229 = v403;
                v230 = &v219[v379];
                v336 = *v230;
                v231 = &v230[v379];
                v373 = *v231;
                v232 = &v231[v379];
                v353 = *v232;
                v233 = (v232 + v379);
                v365 = *v233;
                v234 = (v233 + v379);
                v399 = *v234;
                v235 = (v234 + v379);
                v403 = *v235;
                v236 = *(v235 + v379);
                v237 = *&v327[2 * v144];
                v238 = *&v328[2 * v144];
                v393 = ((v353 - *&v60[2 * v377]) * (v353 - *&v60[2 * v377]) + 16) >> 5;
                v361 = ((v365 - *&v215[2 * v377]) * (v365 - *&v215[2 * v377]) + 16) >> 5;
                v348 = ((v336 - *&v324[2 * v144]) * (v336 - *&v324[2 * v144]) + 16) >> 5;
                v407 = ((v373 - *&v61[2 * v377]) * (v373 - *&v61[2 * v377]) + 16) >> 5;
                v239 = v407 + v348 + v361 + v393;
                v357 = (v220 * v220 + 16) >> 5;
                v240 = v357 + v352 + v239;
                v241 = *&v216[2 * v377];
                if (v240 < *(v376 + 4 * ((v225 + 8) >> 4)))
                {
                  *(v320 + 4 * v144) += *&v61[v57 - 4] + 0x1000000;
                }

                v202 = ((v399 - v241) * (v399 - v241) + 16) >> 5;
                v242 = v202 + v339 + v239;
                v243 = v213 + v397;
                if (v242 < *(v376 + 4 * ((v243 + 4 * v212 + v224 + 2 * (v223 + v226 + v405) + 8) >> 4)))
                {
                  *(v321 + 4 * v144) += *&v60[v57 - 4] + 0x1000000;
                }

                v360 = ((v403 - v237) * (v403 - v237) + 16) >> 5;
                v244 = v202 + v361 + v393 + v360;
                v245 = v407 + v362 + v244;
                if (v245 < *(v376 + 4 * ((v356 + v401 + 4 * v226 + v223 + 2 * (v243 + v227 + v212) + 8) >> 4)))
                {
                  *(v322 + 4 * v144) += *&v215[v57 - 4] + 0x1000000;
                }

                v355 = ((v236 - v238) * (v236 - v238) + 16) >> 5;
                v246 = v244 + v338 + v355;
                v359 = v229;
                v371 = v155;
                v212 = v342;
                if (v246 < *(v376 + 4 * ((v229 + v340 + 4 * v227 + v243 + 2 * (v356 + v401 + v228 + v226) + 8) >> 4)))
                {
                  *(v323 + 4 * v144) += *&v216[v57 - 4] + 0x1000000;
                }

                v217 = v358 + v209 + v345 + v354;
                v352 = v240 - (v214 + v217);
                v184 = v242 - (v217 + v211);
                v218 = v345 + v354 + v211 + v363;
                v362 = v245 - (v209 + v218);
                v203 = v246 - (v218 + v337);
                ++v144;
                v216 += 2;
                v215 += 2;
                v60 += 2;
                v61 += 2;
                v191 = v228;
                v356 = v227;
                v213 = v226;
                v210 = v329;
                v363 = v330;
                v211 = v331;
                v354 = v332;
                v177 = v333;
                v209 = v162;
                v358 = v334;
                v214 = v335;
                v154 = v351;
                v162 = v350;
                v163 = v349;
                v155 = v348;
                v176 = v347;
                v196 = v346;
                v206 = v344;
                v207 = v343;
                v194 = v341;
                v208 = v336;
              }

              while (v377 + v144 < v378);
              v58 = v319 + 4;
              v63 = &v307[v304];
              v64 = &v308[v304];
              v323 += v305;
              v322 += v305;
              v321 += v305;
              v328 += v304;
              v327 += v304;
              v59 = &v309[v304];
              v320 += v305;
              v326 += v304;
              v62 = &v310[v304];
              v325 += v304;
              v60 = &v311[v304];
              v324 += v304;
              v61 = &v312[v304];
              v50 = v379;
              v55 = v317;
            }

            while (v319 + 4 < v306);
          }
        }

        if (v58 < v314 && v291 < v378)
        {
          v65 = v284 + 2 * v58 * v283;
          v66 = v284 + 2 * (v58 + v290) * v283;
          v370 = v285 + v288 + v313 * v58;
          v368 = &v300[v57 + v283 * (2 * (v58 + v290) + 4)];
          v374 = &v301[v57 + v50 * (v58 + v290)];
          v372 = &v282[v57 + v50 * v58];
          do
          {
            v318 = v58;
            v67 = 0;
            v366 = v65;
            v68 = (v65 + v316 + v315);
            v364 = v66;
            v69 = (v66 + v316 + 2 * v55 + v315);
            v70 = *v68;
            v71 = *v69;
            v72 = (v68 + v50);
            v73 = (v69 + v50);
            v74 = *v72;
            v75 = *v73;
            v76 = (v72 + v50);
            v77 = (v73 + v50);
            v78 = *v76;
            v79 = *v77;
            v80 = (v76 + v50);
            v81 = (v77 + v50);
            v82 = vmovl_u16(*v80);
            v83 = vmovl_u16(v78);
            v84 = vmovl_u16(v74);
            v85 = vsubl_u16(*v80, *v81);
            v86 = vsubl_u16(v70, v71);
            v87 = vsubl_u16(v74, v75);
            v88 = vsubl_u16(v78, v79);
            v89.i64[0] = 0x1000000010;
            v89.i64[1] = 0x1000000010;
            v90 = vmlaq_s32(v89, v85, v85);
            v91.i64[0] = 0x1000000010;
            v91.i64[1] = 0x1000000010;
            v92 = vmlaq_s32(v91, v86, v86);
            v93.i64[0] = 0x1000000010;
            v93.i64[1] = 0x1000000010;
            v85.i64[0] = 0x1000000010;
            v85.i64[1] = 0x1000000010;
            v94 = vmlaq_s32(v85, v88, v88);
            v95 = vshrq_n_u32(v90, 5uLL);
            v96 = vshrq_n_u32(v94, 5uLL);
            v97 = vshrq_n_u32(vmlaq_s32(v93, v87, v87), 5uLL);
            v98 = vshrq_n_u32(v92, 5uLL);
            v99 = vsubl_u16(*(v80 + v50), *(v81 + v50));
            v100.i64[0] = 0x1000000010;
            v100.i64[1] = 0x1000000010;
            v101 = vmlaq_s32(v100, v99, v99);
            v102 = vshrq_n_u32(v101, 5uLL);
            v103 = v98.i32[0];
            v104 = v98.i32[1];
            v105 = v98.u32[2];
            v106 = v98.u32[3];
            v107 = v97.i32[1];
            v108 = v97.u32[2];
            v109 = v97.i32[0];
            v400 = v97.u32[3];
            v408 = v96.i32[1];
            v398 = v96.u32[3];
            v406 = v96.u32[2];
            v404 = v95.i32[1];
            v396 = v95.u32[3];
            v402 = v95.u32[2];
            v110 = v84.i32[1];
            v111 = v84.i32[2];
            v112 = vaddvq_s32(vsraq_n_u32(vaddq_s32(vsraq_n_u32(v98, v94, 5uLL), vsraq_n_u32(v97, v90, 5uLL)), v101, 5uLL));
            v113 = v96.i32[0];
            v114 = v84.i32[3];
            v115 = v83.i32[1];
            v116 = v83.i32[2];
            v117 = v83.i32[3];
            v118 = v82.i32[1];
            v119 = v82.i32[2];
            v388 = v82.i32[3];
            v394 = v102.i32[1];
            v120 = v95.i32[0];
            v390 = v102.u32[3];
            v392 = v102.u32[2];
            v121 = v102.i32[0];
            do
            {
              v384 = v103;
              v122 = &v374[2 * v67];
              v123 = &v372[2 * v67];
              v124 = *v123 - *v122;
              v125 = &v123[v50];
              v126 = &v122[v50];
              v127 = &v123[v50 + v50];
              v128 = &v126[v50];
              v129 = &v127[v50];
              v130 = &v126[v50 + v50];
              LODWORD(v123) = *&v127[v50 + v50] - *&v130[v50];
              v131 = v110;
              v386 = v111;
              v132 = v117;
              v133 = v118;
              v134 = v132;
              v382 = v119;
              v135 = v132 + v119 + v115 + v111;
              v119 = v388;
              v380 = v116;
              v136 = v114;
              v137 = v388 + v133 + 4 * v116 + v114 + v131 + 2 * v135;
              v138 = v105;
              v105 = v106;
              v139 = v108;
              v108 = v400;
              v140 = v408;
              v408 = v406;
              v406 = v398;
              v141 = v404;
              v404 = v402;
              v402 = v396;
              v142 = v394;
              v394 = v392;
              v392 = v390;
              v114 = *v125;
              v117 = *v127;
              v388 = *v129;
              v400 = ((v114 - *v126) * (v114 - *v126) + 16) >> 5;
              v398 = ((v117 - *v128) * (v117 - *v128) + 16) >> 5;
              v396 = ((v388 - *v130) * (v388 - *v130) + 16) >> 5;
              v390 = (v123 * v123 + 16) >> 5;
              v143 = ((v124 * v124 + 16) >> 5) + v112 + v400 + v398 + v396 + v390;
              if (v143 < *(v376 + 4 * ((v137 + 8) >> 4)))
              {
                *(v370 + 4 * v67) += *&v368[2 * v67] + 0x1000000;
              }

              v112 = v143 - (v120 + v121 + v113 + v109 + v384);
              ++v67;
              v121 = v142;
              v120 = v141;
              v113 = v140;
              v109 = v107;
              v103 = v104;
              v50 = v379;
              v104 = v138;
              v107 = v139;
              v106 = (v124 * v124 + 16) >> 5;
              v110 = v386;
              v116 = v134;
              v118 = v382;
              v111 = v136;
              v115 = v380;
            }

            while (v377 + v67 < v378);
            v58 = v318 + 1;
            v65 = v366 + v379;
            v66 = v364 + v379;
            v370 += v313;
            v368 += v379;
            v374 += v379;
            v372 += v379;
            v55 = v317;
          }

          while (v318 + 1 != v314);
        }
      }

      ++v55;
      --v302;
      --v303;
      v298 += 2;
      v299 += 2;
      v296 += 2;
      v297 += 2;
      v294 += 2;
      v295 += 2;
      v292 += 2;
      v293 += 2;
      v300 += 2;
      v301 += 2;
      LODWORD(v49) = v290;
    }

    while (v55 != 4);
    v49 = v290 + 1;
    result = (v274 - 1);
    v51 = v273 - 1;
    v5 = v284;
    v8 = v285;
  }

  while (v290 != 3);
  v247 = v266;
  if ((v264 & 1) == 0)
  {
    v248 = 0;
    v249 = a1 + 1800;
    v250 = v266 + 1;
    v251 = (v285 + 4);
    result = 0x8000;
    do
    {
      if (v268 >= 2)
      {
        v253 = (v8 + 4 * (v268 & 0xFFFFFFFFFFFFFFFELL));
        v254 = &v247[v268 & 0xFFFFFFFFFFFFFFFELL];
        v255 = v251;
        v256 = v250;
        v257 = v268 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v258 = ((*(v255 - 1) & 0xFFFFFF) * *(v249 + ((*(v255 - 1) >> 22) & 0x3FC)) + 0x2000) >> 14;
          v259 = ((*v255 & 0xFFFFFF) * *(v249 + ((*v255 >> 22) & 0x3FC)) + 0x2000) >> 14;
          *(v256 - 1) = (v258 * v258 + 0x8000) >> 16;
          *v256 = (v259 * v259 + 0x8000) >> 16;
          v256 += 2;
          v255 += 2;
          v257 -= 2;
        }

        while (v257);
        v252 = v268 & 0xFFFFFFFFFFFFFFFELL;
        if (v268 == (v268 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_80;
        }
      }

      else
      {
        v252 = 0;
        v253 = v8;
        v254 = v247;
      }

      v260 = v268 - v252;
      do
      {
        v261 = *v253++;
        v262 = ((v261 & 0xFFFFFF) * *(v249 + ((v261 >> 22) & 0x3FC)) + 0x2000) >> 14;
        *v254++ = (v262 * v262 + 0x8000) >> 16;
        --v260;
      }

      while (v260);
LABEL_80:
      ++v248;
      v247 += v265;
      v8 += 4 * v268;
      v250 += v265;
      v251 += v268;
    }

    while (v248 != v267);
  }

  return result;
}

void *sub_233837428(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1600);
  v3 = *(a2 + 1608);
  v4 = *(a2 + 1632);
  v5 = *(a1 + 2040);
  v17 = 0u;
  v18 = 0u;
  v6 = *(a2 + 1624);
  if (v3)
  {
    v7 = v2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 0;
    v9 = *(a2 + 1616);
    v10 = *(a2 + 1624);
    do
    {
      v11 = 0;
      do
      {
        *(v10 + 2 * v11) = *(v5 + 2 * *(v9 + 2 * v11));
        ++v11;
      }

      while (v2 != v11);
      ++v8;
      v9 += v4;
      v10 += v4;
    }

    while (v8 != v3);
  }

  v16[0] = *(a1 + 2056);
  v12 = *(a1 + 2072);
  v16[1] = *(a1 + 2048);
  v16[2] = v12;
  if (*(a1 + 2064) == 1)
  {
    return sub_2338393E0(v6, v2, v3, v4, v6, *(a2 + 1640), a1 + 2080, *(a1 + 2152), *(a1 + 2176), v16);
  }

  sub_2338393E0(v6, v2, v3, v4, *(a2 + 1648), *(a2 + 1640), a1 + 2080, *(a1 + 2152), *(a1 + 2168), v16);
  v18 = *(a2 + 1648);
  *&v17 = v4;
  *(&v17 + 1) = v18;
  return sub_2338393E0(*(a2 + 1624), v2, v3, v4, *(a2 + 1624), *(a2 + 1640), a1 + 2116, *(a1 + 2160), *(a1 + 2184), v16);
}

float32_t sub_233837588(float32x4_t *a1, float a2)
{
  v38 = 1.0 / a2;
  v3 = (1.0 / a2);
  v39 = v3 * 0.39894228;
  v4 = v3 * 0.39894228 * exp(((1.0 / a2) * 0.0) * -0.5 * ((1.0 / a2) * 0.0));
  v5 = v4;
  v6 = v3 * 0.39894228 * exp((v38 * 0.33333) * -0.5 * (v38 * 0.33333));
  v7 = (v5 + v6 * 2.0) / 3.0;
  v37 = v7;
  *&v5 = v3 * 0.39894228 * exp((v38 * 0.66667) * -0.5 * (v38 * 0.66667));
  v8 = v3 * 0.39894228 * exp(v3 * -0.5 * v3);
  *&v3 = v8 + *&v5;
  v9 = v39 * exp((v38 * 1.3333) * -0.5 * (v38 * 1.3333));
  *&v35 = (*&v3 + v9) / 3.0;
  v10 = vcvtq_f64_f32(vmul_n_f32(0x402AAAAB3FD55555, v38));
  __asm { FMOV            V1.2D, #-0.5 }

  v36 = _Q1;
  __x = vmulq_f64(vmulq_f64(v10, _Q1), v10);
  v32 = exp(__x.f64[1]);
  v16.f64[0] = exp(__x.f64[0]);
  v16.f64[1] = v32;
  v17 = vcvt_f32_f64(vmulq_n_f64(v16, v39));
  v18 = vcvtq_f64_f32(vmul_n_f32(0x4040000040000000, v38));
  __xa = vmulq_f64(vmulq_f64(v18, v36), v18);
  v33 = exp(__xa.f64[1]);
  v19.f64[0] = exp(__xa.f64[0]);
  v19.f64[1] = v33;
  v20 = vadd_f32(vcvt_f32_f64(vmulq_n_f64(v19, v39)), v17);
  v21 = vcvtq_f64_f32(vmul_n_f32(0x4055555540155555, v38));
  v34 = vmulq_f64(vmulq_f64(v21, v36), v21);
  v36.f64[0] = exp(v34.f64[1]);
  v22.f64[0] = exp(v34.f64[0]);
  v22.f64[1] = v36.f64[0];
  __asm { FMOV            V1.2S, #3.0 }

  *&v36.f64[0] = vdiv_f32(vadd_f32(v20, vcvt_f32_f64(vmulq_n_f64(v22, v39))), _D1);
  *&v22.f64[0] = vadd_f32(*&v36.f64[0], *&v36.f64[0]);
  *&v5 = (((*&v35 + *&v35) + v37) + *v22.f64) + *(v22.f64 + 1);
  v20.f32[0] = v39 * exp((v38 * 3.6667) * -0.5 * (v38 * 3.6667));
  v24 = v39 * exp((v38 * 4.0) * -0.5 * (v38 * 4.0));
  v20.f32[0] = v24 + v20.f32[0];
  v25 = v39 * exp((v38 * 4.3333) * -0.5 * (v38 * 4.3333));
  v26 = (v20.f32[0] + v25) / 3.0;
  v27 = 1.0 / (*&v5 + (v26 + v26));
  v28.i64[0] = __PAIR64__(v35, LODWORD(v37));
  v28.i64[1] = *&v36.f64[0];
  *a1 = vmulq_n_f32(v28, v27);
  result = v27 * v26;
  a1[1].f32[0] = result;
  return result;
}

uint64_t sub_2338378C0(__int16 *a1, unsigned __int16 *a2, int a3, uint16x4_t *a4)
{
  v5 = a4[1].u16[0];
  *&v4 = *a4;
  v6 = vmovl_u16(*a4);
  v7 = v6.i32[3];
  v8 = *a2;
  v9 = v6.i32[3] + v5;
  v10 = v6.i32[2];
  v11 = v6.i32[1];
  v12 = v6.i32[3] + v5 + v6.i32[2] + v6.i32[1];
  v13 = v6.i32[0];
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = (a2 + 4);
  v18 = a2[4];
  v19 = (v6.i32[1] * v14 + v6.i32[2] * v15 + (v12 + v6.i32[0]) * v8 + v6.i32[3] * v16 + v18 * v5) >> 16;
  v20 = v6.i32[1] * v15;
  v21 = a2[5];
  v22 = a2[6];
  v23 = (v6.i32[1] * v14 + (v6.i32[3] + v5 + v6.i32[2]) * v8 + v6.i32[0] * v15 + v6.i32[1] * v16 + v6.i32[2] * v18 + v6.i32[3] * v21 + v22 * v5) >> 16;
  v24 = a2[7];
  *a1 = v19;
  a1[1] = (v6.i32[0] * v14 + v12 * v8 + v20 + v6.i32[2] * v16 + v6.i32[3] * v18 + v21 * v5) >> 16;
  a1[2] = v23;
  a1[3] = (v20 + (v6.i32[3] + v5) * v8 + v6.i32[0] * v16 + v6.i32[1] * v18 + v6.i32[3] * v22 + (v21 + v14) * v6.i32[2] + v24 * v5) >> 16;
  v25 = a1 + 4;
  v26 = a3 - 12;
  if (a3 >= 12)
  {
    v105 = a3 & 0x7FFFFFFC;
    if (v26 > 0x1B)
    {
      v31 = v26 >> 2;
      v32 = 4 * (v26 >> 2);
      v27 = 4;
      if (v25 >= &a2[v32 + 12] || &a1[v32 + 8] <= a2)
      {
        v70 = v31 + 1;
        v71 = 4 * (v70 & 0x7FFFFFF8);
        v33 = &v25[v71];
        v34 = &v17[v71];
        a1 = (a1 + v71 * 2);
        v27 = (32 * (((v70 & 0x7FFFFFF8) >> 3) & 0x3FFFFFF)) | 4;
        v106 = vdupq_lane_s32(*v6.i8, 0);
        v72 = vdupq_lane_s32(*v6.i8, 1);
        v73 = vdupq_laneq_s32(v6, 2);
        v104 = v6;
        v74 = vdupq_laneq_s32(v6, 3);
        v75 = vdupq_n_s32(v5);
        v76 = v70 & 0x7FFFFFF8;
        v77 = v17;
        do
        {
          v78 = v17 - 4;
          v118 = vld4q_s16(v78);
          v120 = vld4q_s16(v77);
          v77 += 32;
          v79 = v17 + 4;
          v119 = vld4q_s16(v79);
          v80 = vmovl_u16(*v120.val[0].i8);
          v81 = vmovl_high_u16(v120.val[0]);
          v112 = vmovl_u16(*v120.val[3].i8);
          v113 = vmovl_high_u16(v120.val[3]);
          v82 = vmlal_high_lane_u16(vmlaq_s32(vmulq_s32(v72, v81), v106, vmovl_high_u16(v120.val[1])), v120.val[2], *&v4, 1);
          v83 = vmlal_lane_u16(vmlaq_s32(vmulq_s32(v72, v80), v106, vmovl_u16(*v120.val[1].i8)), *v120.val[2].i8, *&v4, 1);
          v116 = vaddl_u16(*v120.val[2].i8, *v118.val[2].i8);
          v117 = vaddl_high_u16(v120.val[2], v118.val[2]);
          v115 = vaddl_high_u16(v120.val[3], v118.val[1]);
          v114 = vaddl_u16(*v120.val[3].i8, *v118.val[1].i8);
          v84 = vmlal_lane_u16(vmulq_s32(v106, v112), *v120.val[2].i8, *&v4, 1);
          v85 = vmlal_high_lane_u16(vmulq_s32(v106, v113), v120.val[2], *&v4, 1);
          v86 = vmlal_high_lane_u16(vmlaq_s32(vmulq_s32(v72, vmovl_high_u16(v118.val[3])), v106, v81), v120.val[1], *&v4, 1);
          v87 = vmlal_lane_u16(vmulq_s32(v106, vmovl_u16(*v120.val[2].i8)), *v120.val[1].i8, *&v4, 1);
          v88 = vmlal_high_lane_u16(vmulq_s32(v106, vmovl_high_u16(v120.val[2])), v120.val[1], *&v4, 1);
          v110 = vaddl_u16(*v119.val[0].i8, *v120.val[0].i8);
          v111 = vaddl_high_u16(v119.val[0], v120.val[0]);
          v89 = vmlal_lane_u16(vmlaq_s32(vmulq_s32(v72, vmovl_u16(*v118.val[3].i8)), v106, v80), *v120.val[1].i8, *&v4, 1);
          v108 = vaddl_u16(*v119.val[1].i8, *v120.val[1].i8);
          v109 = vaddl_high_u16(v119.val[1], v120.val[1]);
          v120.val[1] = vaddl_high_u16(v119.val[0], v118.val[2]);
          v120.val[2] = vaddl_u16(*v119.val[0].i8, *v118.val[2].i8);
          v90 = vaddl_u16(*v119.val[1].i8, *v118.val[1].i8);
          v91 = vaddl_high_u16(v119.val[1], v118.val[1]);
          v107 = vaddl_high_u16(v119.val[1], v118.val[3]);
          v92 = vaddl_u16(*v119.val[1].i8, *v118.val[3].i8);
          v93 = v4;
          v94 = vaddl_u16(*v119.val[2].i8, *v118.val[2].i8);
          v95 = vaddl_high_u16(v119.val[2], v118.val[2]);
          v118.val[1] = vmovl_high_u16(v119.val[0]);
          v118.val[2] = vmovl_u16(*v119.val[0].i8);
          v119.val[1] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(v83, vaddl_u16(*v120.val[3].i8, *v118.val[3].i8), v73), v120.val[2], v74), vmulq_s32(v90, v75)), vmlaq_s32(vmlaq_s32(v82, vaddl_high_u16(v120.val[3], v118.val[3]), v73), v120.val[1], v74), vmulq_s32(v91, v75));
          v119.val[0] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(v89, v116, v73), v114, v74), vmulq_s32(vaddl_u16(*v119.val[0].i8, *v118.val[0].i8), v75)), vmlaq_s32(vmlaq_s32(v86, v117, v73), v115, v74), vmulq_s32(vaddl_high_u16(v119.val[0], v118.val[0]), v75));
          v119.val[3] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v84, v72, v118.val[2]), v108, v73), vaddl_u16(*v119.val[2].i8, *v120.val[0].i8), v74), vmulq_s32(vaddl_u16(*v119.val[3].i8, *v118.val[3].i8), v75)), vmlaq_s32(vmlaq_s32(vmlaq_s32(v85, v72, v118.val[1]), v109, v73), vaddl_high_u16(v119.val[2], v120.val[0]), v74), vmulq_s32(vaddl_high_u16(v119.val[3], v118.val[3]), v75));
          v96 = vmulq_s32(v94, v75);
          v4 = v93;
          v119.val[2] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v87, v72, v112), v110, v73), v92, v74), v96), vmlaq_s32(vmlaq_s32(vmlaq_s32(v88, v72, v113), v111, v73), v107, v74), vmulq_s32(v95, v75));
          vst4q_s16(v25, v119);
          v25 += 32;
          v17 = v77;
          v76 -= 8;
        }

        while (v76);
        v6 = v104;
        if ((v70 & 0x7FFFFFF8) == v70)
        {
LABEL_11:
          v28 = v105 - 4;
          v17 = v34;
          v25 = v33;
          if (v105 - 4 < a3 - 4)
          {
            goto LABEL_12;
          }

LABEL_5:
          v29 = v25;
          v30 = v17;
          goto LABEL_18;
        }

LABEL_9:
        v35 = v34;
        do
        {
          v36 = v33;
          v37 = *(v35 - 3);
          v38 = *(v35 - 2);
          v39 = *(v35 - 1);
          v40 = *v35;
          v41 = v35[1];
          v42 = v35[2];
          v43 = v35[3];
          v44 = v34[4];
          v34 += 4;
          v45 = (v11 * v39 + v13 * v40 + v11 * v41 + (v42 + v38) * v10 + (v43 + v37) * v7 + (v44 + *(v35 - 4)) * v5) >> 16;
          v46 = v35[5];
          v47 = (v11 * v40 + v13 * v41 + v11 * v42 + (v43 + v39) * v10 + (v44 + v38) * v7 + (v46 + v37) * v5) >> 16;
          v48 = v35[6];
          v49 = v35[7] + v39;
          *v33 = v45;
          v33 += 4;
          a1[5] = v47;
          a1[6] = (v11 * v41 + v13 * v42 + v11 * v43 + (v44 + v40) * v10 + (v46 + v39) * v7 + (v48 + v38) * v5) >> 16;
          a1[7] = (v11 * v42 + v13 * v43 + v11 * v44 + (v46 + v41) * v10 + (v48 + v40) * v7 + v49 * v5) >> 16;
          v27 += 4;
          v35 = v34;
          a1 = v36;
        }

        while (v27 < a3 - 7);
        goto LABEL_11;
      }
    }

    else
    {
      v27 = 4;
    }

    v33 = a1 + 4;
    v34 = a2 + 4;
    goto LABEL_9;
  }

  v28 = 4;
  if (a3 - 4 <= 4)
  {
    goto LABEL_5;
  }

LABEL_12:
  v50 = (a3 - v28 - 5);
  if (v50 <= 6 || v25 < &v17[v50 + 5] && v17 - 4 < &v25[v50 + 1])
  {
    v30 = v17;
    v29 = v25;
LABEL_16:
    v51 = a3 - v28 - 4;
    v52 = v30;
    do
    {
      v53 = v30[1];
      ++v30;
      v54.i32[0] = *v52;
      v54.i32[1] = v53 + *(v52 - 1);
      v54.i32[2] = v52[2] + *(v52 - 2);
      v54.i32[3] = v52[3] + *(v52 - 3);
      *v29++ = (vaddvq_s32(vmulq_s32(v54, v6)) + (v52[4] + *(v52 - 4)) * v5) >> 16;
      v52 = v30;
      --v51;
    }

    while (v51);
    goto LABEL_18;
  }

  v97 = v50 + 1;
  v98 = (v50 + 1) & 0x1FFFFFFF8;
  v30 = &v17[v98];
  v29 = &v25[v98];
  v99 = vdupq_lane_s32(*v6.i8, 1);
  v100 = vdupq_laneq_s32(v6, 2);
  v28 += v98;
  v101 = vdupq_laneq_s32(v6, 3);
  v102 = vdupq_n_s32(v5);
  v103 = v98;
  do
  {
    *v25 = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_u16(vmulq_s32(vaddl_u16(*(v17 + 1), *(v17 - 1)), v99), *v17, *&v4, 0), vaddl_u16(*(v17 + 2), *(v17 - 2)), v100), vaddl_u16(*(v17 + 3), *(v17 - 3)), v101), vmulq_s32(vaddl_u16(*(v17 + 4), *(v17 - 4)), v102)), vmlaq_s32(vmlaq_s32(vmlal_high_lane_u16(vmulq_s32(vaddl_high_u16(*(v17 + 1), *(v17 - 1)), v99), *v17, *&v4, 0), vaddl_high_u16(*(v17 + 2), *(v17 - 2)), v100), vaddl_high_u16(*(v17 + 3), *(v17 - 3)), v101), vmulq_s32(vaddl_high_u16(*(v17 + 4), *(v17 - 4)), v102));
    v25 += 8;
    v17 += 8;
    v103 -= 8;
  }

  while (v103);
  if (v97 != v98)
  {
    goto LABEL_16;
  }

LABEL_18:
  v55 = *(v30 - 4);
  v56 = *(v30 - 3);
  v57 = *(v30 - 2);
  v58 = *(v30 - 1);
  v59 = *v30;
  v60 = v30[1];
  v61 = v11 * v60;
  v62 = v30[2];
  v63 = v30[3];
  v64 = v9 * v63;
  v65 = (v64 + v55 * v5 + v7 * v56 + v11 * v58 + v13 * v59 + v11 * v60 + (v62 + v57) * v10) >> 16;
  v66 = v11 * v62;
  v67 = (v64 + v56 * v5 + v7 * v57 + v10 * v58 + v11 * v59 + v13 * v60 + v11 * v62 + v10 * v63) >> 16;
  v68 = v11 * v63 + v10 * v63;
  result = (v64 + v57 * v5 + v7 * v58 + v10 * v59 + v61 + v13 * v62 + v68) >> 16;
  *v29 = v65;
  v29[1] = v67;
  v29[2] = result;
  v29[3] = (v64 + v58 * v5 + v7 * v59 + v10 * v60 + v66 + v13 * v63 + v68) >> 16;
  return result;
}

uint64_t sub_233838008(__int16 *a1, uint16x4_t *a2, int a3, uint16x4_t *a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 4);
  v8 = *(a5 + 8);
  v9 = *(a5 + 40);
  v10 = *(a5 + 48);
  *(a5 + 40) = v9 + *(a5 + 24);
  if ((a3 & 0xFFFFFFFC) < 1)
  {
    v16 = v10;
    v21 = a3;
    if (a3 <= 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v12 = ((a3 & 0xFFFFFFFC) - 1) & 0xFFFFFFFC;
    v13 = vdupq_n_s32(v6);
    v14 = vnegq_s32(vdupq_n_s32(v7));
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    v16 = v10;
    do
    {
      v17 = *v9++;
      v18 = v17;
      v19 = *a2++;
      v20.i16[0] = *(v8 + 2 * v18.u16[0]);
      v20.i16[1] = *(v8 + 2 * v18.u16[1]);
      v20.i16[2] = *(v8 + 2 * v18.u16[2]);
      v20.i16[3] = *(v8 + 2 * v18.u16[3]);
      *v16++ = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_u32(vmulq_s32(vmaxq_s32(vsubl_u16(vabd_u16(v19, v18), v20), 0), v13), v14), 0), v15));
      v11 += 4;
    }

    while (v11 < (a3 & 0xFFFFFFFC));
    v21 = a3 - (v12 + 4);
    if (a3 <= (v12 + 4))
    {
      goto LABEL_12;
    }
  }

  do
  {
    v23 = v9->u16[0];
    v9 = (v9 + 2);
    v22 = v23;
    v24 = a2->u16[0];
    a2 = (a2 + 2);
    v25 = *(v8 + 2 * v22);
    v26 = v24 - v22;
    if (v26 < 0)
    {
      v26 = -v26;
    }

    v27 = (((v26 - v25) & ~((v26 - v25) >> 31)) * v6) >> v7;
    if (v27 >= 0xFFFF)
    {
      LOWORD(v27) = -1;
    }

    v16->i16[0] = v27;
    v16 = (v16 + 2);
    --v21;
  }

  while (v21);
LABEL_12:
  v28 = a4[1].u16[0];
  *&v5 = *a4;
  v29 = vmovl_u16(*a4);
  v30 = v29.i32[3];
  v31 = *v10;
  v32 = v29.i32[3] + v28;
  v33 = v29.i32[2];
  v34 = v29.i32[1];
  v35 = v29.i32[3] + v28 + v29.i32[2] + v29.i32[1];
  v36 = v29.i32[0];
  v37 = v10[1];
  v38 = v10[2];
  v39 = v10[3];
  v40 = (v10 + 4);
  v41 = v10[4];
  v42 = (v29.i32[1] * v37 + v29.i32[2] * v38 + (v35 + v29.i32[0]) * v31 + v29.i32[3] * v39 + v41 * v28) >> 16;
  v43 = v29.i32[1] * v38;
  v44 = v10[5];
  v45 = v10[6];
  v46 = (v29.i32[1] * v37 + (v29.i32[3] + v28 + v29.i32[2]) * v31 + v29.i32[0] * v38 + v29.i32[1] * v39 + v29.i32[2] * v41 + v29.i32[3] * v44 + v45 * v28) >> 16;
  v47 = v10[7];
  *a1 = v42;
  a1[1] = (v29.i32[0] * v37 + v35 * v31 + v43 + v29.i32[2] * v39 + v29.i32[3] * v41 + v44 * v28) >> 16;
  a1[2] = v46;
  a1[3] = (v43 + (v29.i32[3] + v28) * v31 + v29.i32[0] * v39 + v29.i32[1] * v41 + v29.i32[3] * v45 + (v44 + v37) * v29.i32[2] + v47 * v28) >> 16;
  v48 = a1 + 4;
  v49 = a3 - 12;
  if (a3 >= 12)
  {
    v128 = a3 & 0x7FFFFFFC;
    if (v49 > 0x1B)
    {
      v54 = v49 >> 2;
      v55 = 4 * (v49 >> 2);
      v50 = 4;
      if (v48 >= &v10[v55 + 12] || v10 >= &a1[v55 + 8])
      {
        v93 = v54 + 1;
        v94 = 4 * (v93 & 0x7FFFFFF8);
        v56 = &v48[v94];
        v57 = &v40[v94];
        a1 = (a1 + v94 * 2);
        v50 = (32 * (((v93 & 0x7FFFFFF8) >> 3) & 0x3FFFFFF)) | 4;
        v129 = vdupq_lane_s32(*v29.i8, 0);
        v95 = vdupq_lane_s32(*v29.i8, 1);
        v96 = vdupq_laneq_s32(v29, 2);
        v127 = v29;
        v97 = vdupq_laneq_s32(v29, 3);
        v98 = vdupq_n_s32(v28);
        v99 = v93 & 0x7FFFFFF8;
        v100 = v40;
        do
        {
          v101 = v40 - 4;
          v141 = vld4q_s16(v101);
          v143 = vld4q_s16(v100);
          v100 += 32;
          v102 = v40 + 4;
          v142 = vld4q_s16(v102);
          v103 = vmovl_u16(*v143.val[0].i8);
          v104 = vmovl_high_u16(v143.val[0]);
          v135 = vmovl_u16(*v143.val[3].i8);
          v136 = vmovl_high_u16(v143.val[3]);
          v105 = vmlal_high_lane_u16(vmlaq_s32(vmulq_s32(v95, v104), v129, vmovl_high_u16(v143.val[1])), v143.val[2], *&v5, 1);
          v106 = vmlal_lane_u16(vmlaq_s32(vmulq_s32(v95, v103), v129, vmovl_u16(*v143.val[1].i8)), *v143.val[2].i8, *&v5, 1);
          v139 = vaddl_u16(*v143.val[2].i8, *v141.val[2].i8);
          v140 = vaddl_high_u16(v143.val[2], v141.val[2]);
          v138 = vaddl_high_u16(v143.val[3], v141.val[1]);
          v137 = vaddl_u16(*v143.val[3].i8, *v141.val[1].i8);
          v107 = vmlal_lane_u16(vmulq_s32(v129, v135), *v143.val[2].i8, *&v5, 1);
          v108 = vmlal_high_lane_u16(vmulq_s32(v129, v136), v143.val[2], *&v5, 1);
          v109 = vmlal_high_lane_u16(vmlaq_s32(vmulq_s32(v95, vmovl_high_u16(v141.val[3])), v129, v104), v143.val[1], *&v5, 1);
          v110 = vmlal_lane_u16(vmulq_s32(v129, vmovl_u16(*v143.val[2].i8)), *v143.val[1].i8, *&v5, 1);
          v111 = vmlal_high_lane_u16(vmulq_s32(v129, vmovl_high_u16(v143.val[2])), v143.val[1], *&v5, 1);
          v133 = vaddl_u16(*v142.val[0].i8, *v143.val[0].i8);
          v134 = vaddl_high_u16(v142.val[0], v143.val[0]);
          v112 = vmlal_lane_u16(vmlaq_s32(vmulq_s32(v95, vmovl_u16(*v141.val[3].i8)), v129, v103), *v143.val[1].i8, *&v5, 1);
          v131 = vaddl_u16(*v142.val[1].i8, *v143.val[1].i8);
          v132 = vaddl_high_u16(v142.val[1], v143.val[1]);
          v143.val[1] = vaddl_high_u16(v142.val[0], v141.val[2]);
          v143.val[2] = vaddl_u16(*v142.val[0].i8, *v141.val[2].i8);
          v113 = vaddl_u16(*v142.val[1].i8, *v141.val[1].i8);
          v114 = vaddl_high_u16(v142.val[1], v141.val[1]);
          v130 = vaddl_high_u16(v142.val[1], v141.val[3]);
          v115 = vaddl_u16(*v142.val[1].i8, *v141.val[3].i8);
          v116 = v5;
          v117 = vaddl_u16(*v142.val[2].i8, *v141.val[2].i8);
          v118 = vaddl_high_u16(v142.val[2], v141.val[2]);
          v141.val[1] = vmovl_high_u16(v142.val[0]);
          v141.val[2] = vmovl_u16(*v142.val[0].i8);
          v142.val[1] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(v106, vaddl_u16(*v143.val[3].i8, *v141.val[3].i8), v96), v143.val[2], v97), vmulq_s32(v113, v98)), vmlaq_s32(vmlaq_s32(v105, vaddl_high_u16(v143.val[3], v141.val[3]), v96), v143.val[1], v97), vmulq_s32(v114, v98));
          v142.val[0] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(v112, v139, v96), v137, v97), vmulq_s32(vaddl_u16(*v142.val[0].i8, *v141.val[0].i8), v98)), vmlaq_s32(vmlaq_s32(v109, v140, v96), v138, v97), vmulq_s32(vaddl_high_u16(v142.val[0], v141.val[0]), v98));
          v142.val[3] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v107, v95, v141.val[2]), v131, v96), vaddl_u16(*v142.val[2].i8, *v143.val[0].i8), v97), vmulq_s32(vaddl_u16(*v142.val[3].i8, *v141.val[3].i8), v98)), vmlaq_s32(vmlaq_s32(vmlaq_s32(v108, v95, v141.val[1]), v132, v96), vaddl_high_u16(v142.val[2], v143.val[0]), v97), vmulq_s32(vaddl_high_u16(v142.val[3], v141.val[3]), v98));
          v119 = vmulq_s32(v117, v98);
          v5 = v116;
          v142.val[2] = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(vmlaq_s32(v110, v95, v135), v133, v96), v115, v97), v119), vmlaq_s32(vmlaq_s32(vmlaq_s32(v111, v95, v136), v134, v96), v130, v97), vmulq_s32(v118, v98));
          vst4q_s16(v48, v142);
          v48 += 32;
          v40 = v100;
          v99 -= 8;
        }

        while (v99);
        v29 = v127;
        if ((v93 & 0x7FFFFFF8) == v93)
        {
LABEL_22:
          v51 = v128 - 4;
          v40 = v57;
          v48 = v56;
          if (v128 - 4 < a3 - 4)
          {
            goto LABEL_23;
          }

LABEL_16:
          v52 = v48;
          v53 = v40;
          goto LABEL_29;
        }

LABEL_20:
        v58 = v57;
        do
        {
          v59 = v56;
          v60 = *(v58 - 3);
          v61 = *(v58 - 2);
          v62 = *(v58 - 1);
          v63 = *v58;
          v64 = v58[1];
          v65 = v58[2];
          v66 = v58[3];
          v67 = v57[4];
          v57 += 4;
          v68 = (v34 * v62 + v36 * v63 + v34 * v64 + (v65 + v61) * v33 + (v66 + v60) * v30 + (v67 + *(v58 - 4)) * v28) >> 16;
          v69 = v58[5];
          v70 = (v34 * v63 + v36 * v64 + v34 * v65 + (v66 + v62) * v33 + (v67 + v61) * v30 + (v69 + v60) * v28) >> 16;
          v71 = v58[6];
          v72 = v58[7] + v62;
          *v56 = v68;
          v56 += 4;
          a1[5] = v70;
          a1[6] = (v34 * v64 + v36 * v65 + v34 * v66 + (v67 + v63) * v33 + (v69 + v62) * v30 + (v71 + v61) * v28) >> 16;
          a1[7] = (v34 * v65 + v36 * v66 + v34 * v67 + (v69 + v64) * v33 + (v71 + v63) * v30 + v72 * v28) >> 16;
          v50 += 4;
          v58 = v57;
          a1 = v59;
        }

        while (v50 < a3 - 7);
        goto LABEL_22;
      }
    }

    else
    {
      v50 = 4;
    }

    v56 = a1 + 4;
    v57 = v40;
    goto LABEL_20;
  }

  v51 = 4;
  if (a3 - 4 <= 4)
  {
    goto LABEL_16;
  }

LABEL_23:
  v73 = (a3 - v51 - 5);
  if (v73 <= 6 || v48 < &v40[v73 + 5] && v40 - 4 < &v48[v73 + 1])
  {
    v53 = v40;
    v52 = v48;
LABEL_27:
    v74 = a3 - v51 - 4;
    v75 = v53;
    do
    {
      v76 = v53[1];
      ++v53;
      v77.i32[0] = *v75;
      v77.i32[1] = v76 + *(v75 - 1);
      v77.i32[2] = v75[2] + *(v75 - 2);
      v77.i32[3] = v75[3] + *(v75 - 3);
      *v52++ = (vaddvq_s32(vmulq_s32(v77, v29)) + (v75[4] + *(v75 - 4)) * v28) >> 16;
      v75 = v53;
      --v74;
    }

    while (v74);
    goto LABEL_29;
  }

  v120 = v73 + 1;
  v121 = (v73 + 1) & 0x1FFFFFFF8;
  v53 = &v40[v121];
  v52 = &v48[v121];
  v122 = vdupq_lane_s32(*v29.i8, 1);
  v123 = vdupq_laneq_s32(v29, 2);
  v51 += v121;
  v124 = vdupq_laneq_s32(v29, 3);
  v125 = vdupq_n_s32(v28);
  v126 = v121;
  do
  {
    *v48 = vaddhn_high_s32(vaddhn_s32(vmlaq_s32(vmlaq_s32(vmlal_lane_u16(vmulq_s32(vaddl_u16(*(v40 + 1), *(v40 - 1)), v122), *v40, *&v5, 0), vaddl_u16(*(v40 + 2), *(v40 - 2)), v123), vaddl_u16(*(v40 + 3), *(v40 - 3)), v124), vmulq_s32(vaddl_u16(*(v40 + 4), *(v40 - 4)), v125)), vmlaq_s32(vmlaq_s32(vmlal_high_lane_u16(vmulq_s32(vaddl_high_u16(*(v40 + 1), *(v40 - 1)), v122), *v40, *&v5, 0), vaddl_high_u16(*(v40 + 2), *(v40 - 2)), v123), vaddl_high_u16(*(v40 + 3), *(v40 - 3)), v124), vmulq_s32(vaddl_high_u16(*(v40 + 4), *(v40 - 4)), v125));
    v48 += 8;
    v40 += 8;
    v126 -= 8;
  }

  while (v126);
  if (v120 != v121)
  {
    goto LABEL_27;
  }

LABEL_29:
  v78 = *(v53 - 4);
  v79 = *(v53 - 3);
  v80 = *(v53 - 2);
  v81 = *(v53 - 1);
  v82 = *v53;
  v83 = v53[1];
  v84 = v34 * v83;
  v85 = v53[2];
  v86 = v53[3];
  v87 = v32 * v86;
  v88 = (v87 + v78 * v28 + v30 * v79 + v34 * v81 + v36 * v82 + v34 * v83 + (v85 + v80) * v33) >> 16;
  v89 = v34 * v85;
  v90 = (v87 + v79 * v28 + v30 * v80 + v33 * v81 + v34 * v82 + v36 * v83 + v34 * v85 + v33 * v86) >> 16;
  v91 = v34 * v86 + v33 * v86;
  result = (v87 + v80 * v28 + v30 * v81 + v33 * v82 + v84 + v36 * v85 + v91) >> 16;
  *v52 = v88;
  v52[1] = v90;
  v52[2] = result;
  v52[3] = (v87 + v81 * v28 + v30 * v82 + v33 * v83 + v89 + v36 * v86 + v91) >> 16;
  return result;
}

uint16x8_t *sub_233838858(uint16x8_t *result, int a2, int a3, int16x8_t *a4, unsigned __int16 *a5)
{
  v5 = *a5;
  v6 = a5[8];
  v7 = a2 & 0xFFFFFFF8;
  if (v7 < 1)
  {
    LODWORD(v8) = 0;
    if (a2 <= 0)
    {
      return result;
    }

LABEL_7:
    v37 = a3;
    v38 = v8;
    v39 = a2;
    v40 = a2 - v8;
    if (v40 <= 0xF)
    {
LABEL_8:
      v41 = v38;
      v42 = a4;
      goto LABEL_9;
    }

    v149 = v40;
    v52 = 2 * a2;
    v53 = a4->u64 + 2 * v39 - 2 * v38;
    v54 = result->i64 + 4 * a3 + a3;
    v151 = v54 + 2 * v38;
    v150 = v54 + 2 * v39;
    v55 = &result->i8[4 * a3];
    v56 = &v55[2 * v38];
    v57 = &v55[2 * v39];
    v58 = &result->i8[3 * a3];
    v59 = &v58[2 * v38];
    v60 = &v58[2 * v39];
    v61 = result + 2 * a3 + 2 * v38;
    v62 = v39;
    v63 = result + 2 * a3 + 2 * v39;
    v64 = result + 2 * v38;
    v65 = v64 + a3;
    v66 = result->u64 + v52;
    v67 = result->u64 + v52 + a3;
    v68 = &result->i8[6 * a3];
    v69 = &v68[2 * v38];
    v70 = &v68[v52];
    v71 = &result->i8[7 * a3];
    v72 = &v71[2 * v38];
    v73 = &v71[v52];
    v74 = &result->i8[8 * a3];
    v75 = &v74[2 * v38];
    v76 = &v74[v52];
    v78 = a4 < v57 && v56 < v53;
    v80 = a4 < v60 && v59 < v53;
    v82 = a4 < v63 && v61 < v53;
    v84 = a4 < v67 && v65 < v53;
    v86 = a4 < v66 && v64 < v53;
    v88 = a4 < a5 + 1 && (a5 + 1) < v53;
    v90 = a4 < v70 && v69 < v53;
    v92 = a4 < v73 && v72 < v53;
    v94 = a4 < v76 && v75 < v53;
    if (v151 >= v53 || a4 >= v150)
    {
      v39 = v62;
      if (v78 || v80 || v82 || v84 || v86 || v88 || v90 || v92 || v94)
      {
        goto LABEL_8;
      }

      v41 = (v149 & 0xFFFFFFFFFFFFFFF8) + v38;
      v42 = (a4 + 2 * (v149 & 0xFFFFFFFFFFFFFFF8));
      v96 = (result + 2 * v38);
      v97 = (a5 + 1);
      v98 = vld1_dup_s16(v97);
      v99 = vmovl_u16(v98);
      v100 = (a5 + 2);
      v101 = vld1_dup_s16(v100);
      v102 = vmovl_u16(v101);
      v103 = (a5 + 3);
      v104 = vld1_dup_s16(v103);
      v105 = vmovl_u16(v104);
      v106 = (a5 + 4);
      v107 = vld1_dup_s16(v106);
      v108 = vmovl_u16(v107);
      v109 = (a5 + 5);
      v110 = vld1_dup_s16(v109);
      v111 = vmovl_u16(v110);
      v112 = (a5 + 6);
      v113 = vld1_dup_s16(v112);
      v114 = vmovl_u16(v113);
      v115 = (a5 + 7);
      v116 = vld1_dup_s16(v115);
      v117 = vdupq_n_s16(v5);
      v118 = vmovl_u16(v116);
      v119 = vuzp1q_s16(v117, v99);
      v120 = vmovn_s32(v99);
      v121 = vuzp1q_s16(v117, v102);
      v122 = vmovn_s32(v102);
      v123 = vuzp1q_s16(v117, v105);
      v124 = vmovn_s32(v105);
      v125 = vuzp1q_s16(v117, v108);
      v126 = vmovn_s32(v108);
      v127 = vuzp1q_s16(v117, v111);
      v128 = vmovn_s32(v111);
      v129 = vuzp1q_s16(v117, v114);
      v130 = vmovn_s32(v114);
      v131 = vuzp1q_s16(v117, v118);
      v132 = vmovn_s32(v118);
      v133 = vdupq_n_s16(v6);
      v134 = v149 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v135 = *&v96->i8[v37];
        v136 = (v96 + v37 + v37);
        v137 = vmlal_u16(vmlal_u16(vmull_u16(*v135.i8, v120), *v117.i8, *v96), *v136, v122);
        v138 = vmlal_high_u16(vmlal_high_u16(vmull_high_u16(v135, v119), v117, *v96->i8), *v136->i8, v121);
        v139 = (v136 + v37);
        v140 = *v139->i8;
        v141 = vmlal_u16(v137, *v139, v124);
        v142 = (v139 + v37);
        v143 = vmlal_u16(v141, *v142, v126);
        v144 = vmlal_high_u16(vmlal_high_u16(v138, v140, v123), *v142->i8, v125);
        v145 = (v142 + v37);
        v146 = vmlal_high_u16(v144, *v145, v127);
        v147 = vmlal_u16(v143, *v145->i8, v128);
        v148 = &v145->i8[v37];
        *a4++ = vaddhn_high_s32(vaddhn_s32(vmull_u16(*v133.i8, *(v148 + v37 + v37)), vmlal_u16(vmlal_u16(v147, *v148, v130), *(v148 + v37), v132)), vmull_high_u16(v133, *&v148->i8[v37 + v37]), vmlal_high_u16(vmlal_high_u16(v146, *v148->i8, v129), *&v148->i8[v37], v131));
        v96 += 2;
        v134 -= 8;
      }

      while (v134);
      if (v149 == (v149 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v41 = v38;
      v42 = a4;
      v39 = v62;
    }

LABEL_9:
    v43 = result + v41;
    v44 = v39 - v41;
    do
    {
      v45 = (v43 + v37 + v37);
      v46 = *v43 * v5 + *(v43 + v37) * a5[1] + *v45 * a5[2];
      v47 = (v45 + v37);
      v48 = v46 + *v47 * a5[3];
      v49 = (v47 + v37);
      v50 = *v49;
      result = a5[5];
      v51 = (v49 + v37);
      v42->i16[0] = (v48 + v50 * a5[4] + *v51 * result + *(v51 + v37) * a5[6] + *(v51 + v37 + v37) * a5[7] + *(v51 + v37 + v37 + v37) * v6) >> 16;
      v42 = (v42 + 2);
      ++v43;
      --v44;
    }

    while (v44);
    return result;
  }

  v8 = 0;
  v9 = vdupq_n_s16(v5);
  v10 = vdupq_n_s16(v6);
  v11 = result;
  do
  {
    v12 = *(v11 + a3);
    v13 = vdupq_n_s16(a5[1]);
    v14 = vmull_u16(*v13.i8, *v12.i8);
    v15 = vmlal_high_u16(vmull_high_u16(v13, v12), v9, *v11);
    v16 = &v11->i8[a3 + a3];
    v17 = vdupq_n_s16(a5[2]);
    v18 = vmlal_u16(vmlal_u16(v14, *v9.i8, *v11->i8), *v17.i8, *v16);
    v19 = vmlal_high_u16(v15, v17, *v16->i8);
    v20 = (v16 + a3);
    v21 = vdupq_n_s16(a5[3]);
    v22 = vmlal_high_u16(v19, v21, *v20);
    v23 = vmlal_u16(v18, *v21.i8, *v20->i8);
    v24 = &v20->i8[a3];
    v25 = vdupq_n_s16(a5[4]);
    v26 = vmlal_u16(v23, *v25.i8, *v24);
    v27 = vmlal_high_u16(v22, v25, *v24->i8);
    v28 = (v24 + a3);
    v29 = vdupq_n_s16(a5[5]);
    v30 = vmlal_high_u16(v27, v29, *v28);
    v31 = vmlal_u16(v26, *v29.i8, *v28->i8);
    v32 = &v28->i8[a3];
    v33 = vdupq_n_s16(a5[6]);
    v34 = vmlal_u16(v31, *v33.i8, *v32);
    v35 = vmlal_high_u16(v30, v33, *v32->i8);
    v36 = vdupq_n_s16(a5[7]);
    *a4++ = vaddhn_high_s32(vaddhn_s32(vmull_u16(*v10.i8, *(v32 + a3 + a3)), vmlal_u16(v34, *v36.i8, *(v32 + a3))), vmull_high_u16(v10, *&v32->i8[a3 + a3]), vmlal_high_u16(v35, v36, *&v32->i8[a3]));
    v8 += 8;
    ++v11;
  }

  while (v8 < v7);
  if (v8 < a2)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_233838D28(uint64_t result, int a2, int a3, uint16x4_t *a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = *a6;
  v7 = *(a6 + 4);
  v8 = *(a6 + 8);
  v9 = *(a6 + 16);
  v10 = *a5;
  v11 = a5[8];
  v12 = a2 & 0xFFFFFFF8;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    if (a2 <= 0)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    v14 = vdupq_n_s32(v6);
    v15 = vdup_n_s16(v10);
    v16 = (result + 8);
    v17 = vdup_n_s16(v11);
    v18 = vnegq_s32(vdupq_n_s32(v7));
    v19.i64[0] = 0xFFFF0000FFFFLL;
    v19.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v20 = (a5 + 1);
      v21 = (a5 + 2);
      v22 = (a5 + 3);
      v23 = (a5 + 4);
      v24 = (a5 + 5);
      v25 = (a5 + 6);
      v26 = (a5 + 7);
      v27 = (v16 + a3 - 8);
      v28 = vld1_dup_s16(v20);
      v29 = *(v16 + a3);
      v30 = vld1_dup_s16(v21);
      v31 = vld1_dup_s16(v22);
      v32 = vld1_dup_s16(v23);
      v33 = *(v16 + a3 + a3);
      v34 = (v27 + a3 + a3);
      v35 = vld1_dup_s16(v24);
      v36 = vld1_dup_s16(v25);
      v37 = (v34 + a3 + a3);
      v38 = vld1_dup_s16(v26);
      v39 = vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmull_u16(v28, *v27), v15, v16[-1]), v30, *(v27 + a3)), v31, *v34), v32, *(v34 + a3)), v35, *v37);
      v40 = *v16;
      v16 += 2;
      v41 = (v37 + a3 + a3);
      v42 = vmlal_u16(vmull_u16(v28, v29), v15, v40);
      v43 = v41[1];
      v44 = vmlal_u16(vmlal_u16(v39, v36, *(v37 + a3)), v38, *v41);
      v45 = (v41 + a3);
      v46 = vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(v42, v30, v33), v31, v34[1]), v32, *(&v34[1] + a3)), v35, v37[1]), v36, *(&v37[1] + a3));
      v47 = vshrq_n_u32(vmlal_u16(v44, v17, *v45), 0x10uLL);
      v48 = a4[1];
      v49 = vmovl_u16(*a4);
      v50 = vsubq_s32(v49, v47);
      v51 = vabdq_u32(v47, v49);
      v52 = vmlal_u16(v46, v38, v43);
      v38.i16[0] = *(v8 + 2 * v47.u32[0]);
      v38.i16[1] = *(v8 + 2 * v47.u32[1]);
      v38.i16[2] = *(v8 + 2 * v47.u32[2]);
      v38.i16[3] = *(v8 + 2 * v47.u32[3]);
      v43.i16[0] = *(v9 + 2 * v51.u32[0]);
      v43.i16[1] = *(v9 + 2 * v51.u32[1]);
      v43.i16[2] = *(v9 + 2 * v51.u32[2]);
      v43.i16[3] = *(v9 + 2 * v51.u32[3]);
      v53 = vminq_s32(vmaxq_s32(vaddq_s32(vsraq_n_u32(v49, v50, 0x1FuLL), veorq_s8(vshrq_n_u32(vmull_u16(vmovn_s32(vminq_s32(vmaxq_s32(vshlq_u32(vmulq_s32(vmaxq_s32(vsubw_u16(v51, v38), 0), v14), v18), 0), v19)), v43), 0x10uLL), vcltzq_s32(v50))), 0), v19);
      v54 = vshrq_n_u32(vmlal_u16(v52, v17, v45[1]), 0x10uLL);
      *a4 = vraddhn_s32(vmulq_s32(v53, v53), 0);
      v55 = vmovl_u16(v48);
      v56 = vsubq_s32(v55, v54);
      v57 = vabdq_u32(v54, v55);
      v54.i16[0] = *(v8 + 2 * v54.u32[0]);
      v54.i16[1] = *(v8 + 2 * v54.u32[1]);
      v54.i16[2] = *(v8 + 2 * v54.u32[2]);
      v54.i16[3] = *(v8 + 2 * v54.u32[3]);
      v58 = vminq_s32(vmaxq_s32(vshlq_u32(vmulq_s32(vmaxq_s32(vsubw_u16(v57, *v54.i8), 0), v14), v18), 0), v19);
      v57.i16[0] = *(v9 + 2 * v57.u32[0]);
      v57.i16[1] = *(v9 + 2 * v57.u32[1]);
      v57.i16[2] = *(v9 + 2 * v57.u32[2]);
      v57.i16[3] = *(v9 + 2 * v57.u32[3]);
      v59 = vminq_s32(vmaxq_s32(vaddq_s32(vsraq_n_u32(v55, v56, 0x1FuLL), veorq_s8(vshrq_n_u32(vmull_u16(vmovn_s32(v58), *v57.i8), 0x10uLL), vcltzq_s32(v56))), 0), v19);
      a4[1] = vraddhn_s32(vmulq_s32(v59, v59), 0);
      a4 += 2;
      v13 += 8;
    }

    while (v13 < v12);
    if (v13 >= a2)
    {
      return result;
    }
  }

  v60 = a3;
  v61 = (result + 2 * v13);
  result = 0x8000;
  v62 = a2 - v13;
  do
  {
    v63 = (v61 + v60 + v60);
    v64 = *v61 * v10 + *(v61 + v60) * a5[1] + *v63 * a5[2];
    v65 = (v63 + v60);
    v66 = v64 + *v65 * a5[3];
    v67 = (v65 + v60);
    v68 = v66 + *v67 * a5[4];
    v69 = (v67 + v60);
    v70 = (v68 + *v69 * a5[5] + *(v69 + v60) * a5[6] + *(v69 + v60 + v60) * a5[7] + *(v69 + v60 + v60 + v60) * v11) >> 16;
    v71 = a4->u16[0];
    v72 = *(v8 + 2 * v70);
    v73 = v71 - v70;
    if (v73 >= 0)
    {
      v74 = v73;
    }

    else
    {
      v74 = -v73;
    }

    v75 = (((v74 - v72) & ~((v74 - v72) >> 31)) * v6) >> v7;
    if (v75 >= 0xFFFF)
    {
      v75 = 0xFFFF;
    }

    v76 = ((v75 * *(v9 + 2 * v74)) >> 16) ^ (v73 >> 31);
    v77 = (v71 + (v73 >> 31) + v76) & ~((v71 + (v73 >> 31) + v76) >> 31);
    if (v77 >= 0xFFFF)
    {
      v77 = 0xFFFF;
    }

    a4->i16[0] = (v77 * v77 + 0x8000) >> 16;
    a4 = (a4 + 2);
    ++v61;
    --v62;
  }

  while (v62);
  return result;
}

uint16x4_t *sub_2338390E4(uint16x4_t *result, int a2, int a3, uint16x4_t *a4, unsigned __int16 *a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  v7 = *(a6 + 32);
  v8 = a3;
  *(a6 + 32) = v7 + a3;
  v9 = *a5;
  v10 = a5[8];
  v11 = a2 & 0xFFFFFFF8;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    if (a2 <= 0)
    {
      return result;
    }
  }

  else
  {
    v12 = 0;
    v13 = result + 1;
    v14 = vdup_n_s16(v9);
    v15 = vdup_n_s16(v10);
    v16.i64[0] = 0xFFFF0000FFFFLL;
    v16.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v17 = (a5 + 1);
      v18 = (a5 + 2);
      v19 = (a5 + 3);
      v20 = (a5 + 4);
      v21 = (a5 + 5);
      v22 = vld1_dup_s16(v17);
      v23 = (v13 + v8 - 8);
      v24 = vmlal_u16(vmull_u16(v22, *v23), v14, v13[-1]);
      v25 = (v23 + v8);
      v26 = vld1_dup_s16(v18);
      v27 = v25[1];
      v28 = vmlal_u16(v24, v26, *v25);
      v29 = (v25 + v8);
      v30 = vld1_dup_s16(v19);
      v31 = vld1_dup_s16(v20);
      v32 = (v29 + v8 + v8);
      v33 = vld1_dup_s16(v21);
      v34 = v32[1];
      v35 = vmlal_u16(vmlal_u16(vmlal_u16(v28, v30, *v29), v31, *(v29 + v8)), v33, *v32);
      v36 = (a5 + 6);
      v37 = (a5 + 7);
      v38 = (v32 + v8);
      v39 = vmull_u16(v22, *(v13 + v8));
      v40 = *v13;
      v13 += 2;
      v41 = vld1_dup_s16(v36);
      v42 = vmlal_u16(vmlal_u16(v39, v14, v40), v26, v27);
      v43 = vld1_dup_s16(v37);
      v44 = vmlal_u16(vmlal_u16(v35, v41, *v38), v43, *(v38 + v8));
      v45 = (v38 + v8 + v8);
      v46 = vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(vmlal_u16(v42, v30, v29[1]), v31, *(&v29[1] + v8)), v33, v34), v41, v38[1]), v43, *(&v38[1] + v8));
      v47 = vmull_u16(v15, v45[1]);
      v48 = a4[1];
      v49 = vsubl_u16(*a4, *v7);
      v50 = vabdl_u16(*a4, *v7);
      v50.i16[0] = *(v6 + 2 * v50.u32[0]);
      v50.i16[1] = *(v6 + 2 * v50.u32[1]);
      v50.i16[2] = *(v6 + 2 * v50.u32[2]);
      v50.i16[3] = *(v6 + 2 * v50.u32[3]);
      v51 = vminq_s32(vmaxq_s32(vaddq_s32(vsraq_n_u32(vmovl_u16(*a4), v49, 0x1FuLL), veorq_s8(vshrq_n_u32(vmull_u16(vaddhn_s32(vmull_u16(v15, *v45), v44), *v50.i8), 0x10uLL), vcltzq_s32(v49))), 0), v16);
      *a4 = vraddhn_s32(vmulq_s32(v51, v51), 0);
      *v51.i8 = v7[1];
      *v46.i8 = vaddhn_s32(v47, v46);
      v52 = vsubl_u16(v48, *v51.i8);
      v53 = vabdl_u16(v48, *v51.i8);
      v53.i16[0] = *(v6 + 2 * v53.u32[0]);
      v53.i16[1] = *(v6 + 2 * v53.u32[1]);
      v53.i16[2] = *(v6 + 2 * v53.u32[2]);
      v53.i16[3] = *(v6 + 2 * v53.u32[3]);
      v54 = vminq_s32(vmaxq_s32(vaddq_s32(vsraq_n_u32(vmovl_u16(v48), v52, 0x1FuLL), veorq_s8(vshrq_n_u32(vmull_u16(*v46.i8, *v53.i8), 0x10uLL), vcltzq_s32(v52))), 0), v16);
      a4[1] = vraddhn_s32(vmulq_s32(v54, v54), 0);
      a4 += 2;
      v7 += 2;
      v12 += 8;
    }

    while (v12 < v11);
    if (v12 >= a2)
    {
      return result;
    }
  }

  v55 = result + v12;
  v56 = a2 - v12;
  do
  {
    v57 = (v55 + v8 + v8);
    v58 = *v55 * v9 + *(v55 + v8) * a5[1] + *v57 * a5[2];
    v59 = (v57 + v8);
    v60 = v58 + *v59 * a5[3];
    v61 = (v59 + v8);
    v62 = v60 + *v61 * a5[4];
    v63 = (v61 + v8);
    v64 = v62 + *v63 * a5[5] + *(v63 + v8) * a5[6] + *(v63 + v8 + v8) * a5[7] + *(v63 + v8 + v8 + v8) * v10;
    v65 = v7->u16[0];
    v7 = (v7 + 2);
    v66 = a4->u16[0];
    v67 = HIWORD(v64);
    v68 = v66 - v65;
    if (v66 - v65 >= 0)
    {
      v69 = v68;
    }

    else
    {
      v69 = -v68;
    }

    v70 = ((v67 * *(v6 + 2 * v69)) >> 16) ^ (v68 >> 31);
    result = (v66 + (v68 >> 31));
    v71 = (result + v70) & ~((result + v70) >> 31);
    if (v71 >= 0xFFFF)
    {
      v71 = 0xFFFF;
    }

    a4->i16[0] = (v71 * v71 + 0x8000) >> 16;
    a4 = (a4 + 2);
    ++v55;
    --v56;
  }

  while (v56);
  return result;
}

void *sub_2338393E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, void (*a8)(char *), uint64_t (*a9)(void), uint64_t a10)
{
  v50[9] = *MEMORY[0x277D85DE8];
  v50[0] = a7 + 10;
  v50[1] = a7 + 8;
  v50[2] = a7 + 6;
  v50[3] = a7 + 4;
  v50[6] = a7 + 16;
  v50[7] = a7 + 14;
  v50[8] = a7 + 12;
  v16 = 9 * a4;
  v50[4] = a7 + 2;
  v50[5] = a7;
  a8(a6);
  v46 = a2;
  memcpy(&a6[a4], a6, 2 * a2);
  memcpy(&a6[a4 + a4], a6, 2 * a2);
  memcpy(&a6[a4 + a4 + a4], a6, 2 * a2);
  __n = 2 * a2;
  memcpy(&a6[a4 + a4 + a4 + a4], a6, 2 * a2);
  v17 = &a6[a4 + a4 + a4 + a4 + a4];
  v18 = &a6[v16];
  v19 = a5 + a4;
  v43 = a3 - 2;
  v49 = &a6[v16];
  v45 = a3;
  if (a3 < 2)
  {
    v24 = 6;
    v23 = &a6[a4 + a4 + a4 + a4 + a4];
    v25 = v46;
  }

  else
  {
    v20 = a3;
    v21 = v18;
    v22 = a1 + a4;
    (a8)(&a6[a4 + a4 + a4 + a4 + a4], a1 + a4, v46, a7, a10);
    if (&v17[a4] == v21)
    {
      v23 = a6;
    }

    else
    {
      v23 = &v17[a4];
    }

    v19 += a4;
    if (v20 == 2)
    {
      v24 = 7;
      v25 = v46;
    }

    else
    {
      v26 = v20;
      v27 = v22 + a4;
      (a8)(v23, v22 + a4, v46, a7, a10);
      if (&v23[a4] == v49)
      {
        v28 = a6;
      }

      else
      {
        v28 = &v23[a4];
      }

      v19 += a4;
      if (v20 == 3)
      {
        v24 = 8;
        v17 = v23;
        v23 = v28;
        v25 = v46;
      }

      else
      {
        (a8)(v28, v27 + a4, v46, a7, a10);
        if (&v28[a4] == v49)
        {
          v23 = a6;
        }

        else
        {
          v23 = &v28[a4];
        }

        v29 = v20 - 4;
        if (v26 == 4)
        {
          v19 += a4;
          v24 = 9;
          v17 = v28;
          v25 = v46;
        }

        else
        {
          v30 = a1 + 4 * a4;
          v31 = 8;
          do
          {
            v17 = v23;
            (a8)(v23, v30, v46, a7, a10);
            if (&v23[a4] == v49)
            {
              v23 = a6;
            }

            else
            {
              v23 += a4;
            }

            if (v31 == 8)
            {
              v31 = 0;
            }

            else
            {
              ++v31;
            }

            result = a9();
            v30 += a4;
            a5 += a4;
            --v29;
          }

          while (v29);
          v25 = v46;
          if (v45 > 0xFFFFFFFFFFFFFFFBLL)
          {
            return result;
          }

          v24 = v31 + 1;
          v19 = a5 + 4 * a4;
        }
      }
    }

    v18 = v49;
  }

  memcpy(v23, v17, __n);
  if (&v23[a4] == v18)
  {
    v33 = a6;
  }

  else
  {
    v33 = &v23[a4];
  }

  if (v24 == 9)
  {
    v34 = 0;
  }

  else
  {
    v34 = v24;
  }

  if (v45 > 3)
  {
    (a9)(a6, v25, a4, v19 - 4 * a4, v50[v34], a10);
  }

  v35 = v19 + a4;
  memcpy(v33, v23, __n);
  if (&v33[a4] == v49)
  {
    v36 = a6;
  }

  else
  {
    v36 = &v33[a4];
  }

  if (v34 == 8)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34 + 1;
  }

  if (v45 - 3 <= 0xFFFFFFFFFFFFFFFBLL)
  {
    (a9)(a6, v25, a4, v35 - 4 * a4, v50[v37], a10);
  }

  v38 = v35 + a4;
  memcpy(v36, v33, __n);
  if (&v36[a4] == v49)
  {
    v39 = a6;
  }

  else
  {
    v39 = &v36[a4];
  }

  if (v37 == 8)
  {
    v40 = 0;
  }

  else
  {
    v40 = v37 + 1;
  }

  if (v43 > 0xFFFFFFFFFFFFFFFBLL)
  {
    result = memcpy(v39, v36, __n);
    if (v45 - 1 > 0xFFFFFFFFFFFFFFFBLL)
    {
      return result;
    }
  }

  else
  {
    (a9)(a6, v25, a4, v38 - 4 * a4, v50[v40], a10);
    memcpy(v39, v36, __n);
  }

  if (v40 == 8)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40 + 1;
  }

  v42 = v50[v41];

  return (a9)(a6, v25, a4, v38 + a4 - 4 * a4, v42, a10);
}

uint64_t sub_2338398B0(uint64_t result, void *a2)
{
  v445 = *MEMORY[0x277D85DE8];
  v355 = *(result + 160);
  v2 = a2[208];
  v3 = a2[210];
  v4 = a2[211];
  v5 = a2[212];
  v6 = a2[213];
  v7 = a2[214];
  v8 = a2[215];
  v9 = a2[216];
  v10 = a2[217];
  v290 = a2[218];
  v11 = a2[219];
  v289 = a2[220];
  v12 = a2[221];
  v356 = a2[222];
  v13 = 4 * v4;
  v14 = *(result + 2240);
  v291 = a2[209] - 8;
  v292 = 4 * v9;
  v15 = 2 * (v355 != 4);
  if (v2)
  {
    v16 = 0;
    v17 = (v15 + 2 * v9 + v6 + 6);
    v18 = (v15 + 2 * v4 + v3 + 6);
    do
    {
      *(v18 - 2) = *(v14 + 2 * *(v18 - 2));
      *v18 = *(v14 + 2 * *v18);
      *(v18 - 3) = *(v14 + 2 * *(v17 - 2));
      v19 = *v17;
      v17 += 4;
      *(v18 - 1) = *(v14 + 2 * v19);
      v16 += 4;
      v18 += 4;
    }

    while (v16 < v2);
    v20 = 0;
    v21 = (v15 + v292 + v6 + 6);
    v22 = (v15 + v13 + v3 + 6);
    do
    {
      *(v22 - 2) = *(v14 + 2 * *(v22 - 2));
      *v22 = *(v14 + 2 * *v22);
      *(v22 - 3) = *(v14 + 2 * *(v21 - 2));
      v23 = *v21;
      v21 += 4;
      *(v22 - 1) = *(v14 + 2 * v23);
      v20 += 4;
      v22 += 4;
    }

    while (v20 < v2);
    v24 = 0;
    v25 = (v15 + 6 * v9 + v6 + 6);
    v26 = (v15 + 6 * v4 + v3 + 6);
    do
    {
      *(v26 - 2) = *(v14 + 2 * *(v26 - 2));
      *v26 = *(v14 + 2 * *v26);
      *(v26 - 3) = *(v14 + 2 * *(v25 - 2));
      v27 = *v25;
      v25 += 4;
      *(v26 - 1) = *(v14 + 2 * v27);
      v24 += 4;
      v26 += 4;
    }

    while (v24 < v2);
  }

  if (v291)
  {
    v28 = v15 | (8 * v9);
    v29 = v15 | (8 * v4);
    v354 = v2 - 8;
    if (v2 != 8)
    {
      v30 = 0;
      v31 = (v3 + v13 + 8);
      v32 = v5 + v292 + 8;
      v303 = v7 + v292 + 8;
      v33 = v8 + v292 + 8;
      v34 = v10 + 2 * v290 + 12;
      v301 = v12 + 4 * v356 + 2;
      v35 = v11 + 2 * v289 + 8;
      v36 = v9 >> 1;
      v37 = *(result + 2232);
      v38 = *(result + 2236);
      v39 = 2 * (v4 >> 1);
      v350 = 2 - v39;
      v40 = 4 * (v4 >> 1);
      v348 = 1 - v39;
      v41 = v28 + v6;
      v42 = v15 + 10 * v9 + v6;
      v347 = v40 | 3;
      v351 = v40 | 2;
      v353 = v40 | 1;
      v43 = v29 + v3;
      v44 = v34;
      result = v33;
      v346 = (6 * (v4 >> 1)) | 1;
      v45 = 6 * (v4 >> 1);
      v344 = v4 | 1;
      v314 = 4 - v39;
      v343 = 3 - v39;
      v342 = -2 * (v4 >> 1);
      v326 = ~v39;
      v307 = v39 ^ 0xFFFFFFFFFFFFFFFELL;
      v46 = v32;
      v47 = v38 << 14;
      v48 = (v41 + 6);
      v49 = v301;
      v50 = v303;
      v305 = v15 + 10 * v4 + v3 + 6;
      v306 = (v42 + 6);
      v51 = 2 * v36;
      v52 = (v43 + 6);
      v340 = (v4 & 0xFFFFFFFFFFFFFFFELL) - 2;
      v341 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 2;
      v313 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 6;
      v338 = v45 + 2;
      v339 = v40 + 4;
      v336 = v40 - 1;
      v337 = (v4 & 0xFFFFFFFFFFFFFFFELL) - 3;
      v334 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 4;
      v335 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 5;
      v332 = (v4 & 0xFFFFFFFFFFFFFFFELL) - 1;
      v333 = v40 - 2;
      v331 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 3;
      v311 = v45 - 1;
      v312 = v40 - 3;
      v352 = v4 & 0xFFFFFFFFFFFFFFFELL;
      v349 = v40;
      v309 = v40 + 5;
      v310 = (v4 & 0xFFFFFFFFFFFFFFFELL) - 4;
      v345 = v45;
      v308 = v45 + 3;
      v287 = 4 * v4;
      v288 = v2;
      v286 = v14;
      while (1)
      {
        if (v2)
        {
          v53 = 0;
          v54 = v52;
          v55 = v48;
          do
          {
            *(v54 - 2) = *(v14 + 2 * *(v54 - 2));
            *v54 = *(v14 + 2 * *v54);
            *(v54 - 3) = *(v14 + 2 * *(v55 - 2));
            v56 = *v55;
            v55 += 4;
            *(v54 - 1) = *(v14 + 2 * v56);
            v53 += 4;
            v54 += 4;
          }

          while (v53 < v2);
          v57 = 0;
          v58 = v305;
          v59 = v306;
          do
          {
            *(v58 - 2) = *(v14 + 2 * *(v58 - 2));
            *v58 = *(v14 + 2 * *v58);
            *(v58 - 3) = *(v14 + 2 * *(v59 - 2));
            v60 = *v59;
            v59 += 4;
            *(v58 - 1) = *(v14 + 2 * v60);
            v57 += 4;
            v58 += 4;
          }

          while (v57 < v2);
        }

        v294 = v52;
        v295 = v48;
        v299 = v46;
        v300 = v30;
        v61 = 0;
        v293 = (v31 + v13);
        v422 = (v44 + v290);
        v421 = (v35 - v289);
        v420 = (v35 + v289);
        v419 = v46;
        v302 = v49;
        v304 = v50;
        v418 = v50;
        v297 = v44;
        v298 = result;
        v417 = result;
        v62 = (v44 - v290);
        v296 = v35;
        v416 = v35;
        v415 = v44;
        do
        {
          v404 = v61;
          v443 = 0uLL;
          v444 = 0uLL;
          v441 = 0uLL;
          v442 = 0uLL;
          v439 = 0uLL;
          v440 = 0uLL;
          v437 = 0uLL;
          v438 = 0uLL;
          v435 = 0uLL;
          v436 = 0uLL;
          v433 = 0uLL;
          v434 = 0uLL;
          v431 = 0uLL;
          v432 = 0uLL;
          v429 = 0uLL;
          v430 = 0uLL;
          v63 = *v49;
          v64 = v63 & 0xF;
          v373 = v63 >> 4;
          v65 = v49[1];
          v66 = v65 & 0xF;
          v375 = v65 >> 4;
          v67 = v49[2 * v356];
          v408 = v67 & 0xF;
          v68 = v49[(2 * v356) | 1];
          v405 = v67;
          v377 = v67 >> 4;
          v399 = v68 & 0xF;
          v69 = v49[v356];
          v397 = v49[v356 + 1];
          v400 = v68;
          v378 = v68 >> 4;
          v70 = v49[3 * v356 + 1];
          v403 = v62;
          v402 = v49;
          v401 = v49[3 * v356];
          if (v355 == 4)
          {
            v71 = v31[v344];
            v427 = v31[3];
            v387 = v31[v348];
            v72 = *(v31 - 1);
            v393 = v31[v335];
            v383 = v31[v347];
            v359 = v31[v336];
            v322 = v31[v337];
            v315 = v31[v346];
            v73 = v31[v352];
            v389 = v31[v342];
            v411 = v31[2];
            v413 = *(v31 - 2);
            v395 = v31[v334];
            v361 = v31[v351];
            v367 = v31[v333];
            v324 = v31[v310];
            v316 = v31[v345];
            v74 = v31[v331];
            v75 = v31[v332];
            v385 = v31[v353];
            v76 = v31[1];
            v363 = v31[v343];
            v379 = v31[5];
            v327 = v31[v309];
            v318 = v31[v308];
            v77 = *(v31 - 3);
            v78 = *v31;
            v406 = v31[v341];
            v423 = v31[v340];
            v369 = v31[v349];
            v365 = v31[v350];
            v381 = v31[4];
            v329 = v31[v339];
            v320 = v31[v338];
            v79 = *(v31 - 4);
            v357 = v71;
            v425 = v78;
            v371 = v75;
            v409 = v72;
            if ((v63 & 0xF) != 0)
            {
              v80 = v69;
              v81 = v31[1];
              v82 = v70;
              v83 = v31[v326];
              v84 = v31[v307];
              if (v64 == 2)
              {
                LOWORD(v429) = (3 * (v387 + v71) + 10 * v72 + 8) >> 4;
                WORD4(v429) = (3 * (v389 + v73) + 10 * v413 + 8) >> 4;
                v85 = 3 * (v83 + v75);
                v76 = v81;
                LOWORD(v430) = (v85 + 10 * v81 + 8) >> 4;
                v86 = 3 * (v84 + v423) + 10 * v425;
              }

              else
              {
                LOWORD(v429) = (v427 + 9 * v72 + 3 * (v387 + v71) + 8) >> 4;
                WORD4(v429) = (v411 + 9 * v413 + 3 * (v389 + v73) + 8) >> 4;
                v112 = v83 + v75;
                v76 = v81;
                LOWORD(v430) = (9 * v81 + v77 + 3 * v112 + 8) >> 4;
                v86 = 9 * v425 + v79 + 3 * (v84 + v423);
              }

              v70 = v82;
              v101 = v67 & 0xF;
              v102 = v406;
              v69 = v80;
              WORD4(v430) = (v86 + 8) >> 4;
              if (v63 < 0x10)
              {
LABEL_38:
                WORD1(v429) = (v409 + v427 + 1) >> 1;
                v104 = v411;
                v106 = v425;
                v105 = v423;
                WORD5(v429) = (v413 + v411 + 1) >> 1;
                WORD1(v430) = v76;
                WORD5(v430) = v425;
                if ((v65 & 0xF) != 0)
                {
                  goto LABEL_39;
                }

LABEL_53:
                WORD2(v429) = (3 * v427 + v409 + 2) >> 2;
                WORD6(v429) = (3 * v104 + v413 + 2) >> 2;
                WORD2(v430) = (3 * v76 + v379 + 2) >> 2;
                WORD6(v430) = (3 * v106 + v381 + 2) >> 2;
                if (v65 < 0x10)
                {
LABEL_54:
                  WORD3(v429) = v427;
                  HIWORD(v429) = v104;
                  WORD3(v430) = (v379 + v76 + 1) >> 1;
                  v119 = (v381 + v106 + 1) >> 1;
                  v118 = v413;
                  goto LABEL_86;
                }

LABEL_50:
                WORD3(v429) = v427;
                HIWORD(v429) = v104;
                v117 = v363 + v74;
                v118 = v413;
                if (v375 == 2)
                {
                  WORD3(v430) = (v117 + 1) >> 1;
                  v119 = (v365 + v102 + 1) >> 1;
                }

                else
                {
                  WORD3(v430) = (v117 + v76 + v379 + 2) >> 2;
                  v106 = v425;
                  v119 = (v365 + v102 + v425 + v381 + 2) >> 2;
                }

LABEL_86:
                HIWORD(v430) = v119;
                v376 = v71 + 1;
                LOWORD(v433) = (v71 + 1 + v409) >> 1;
                v374 = v73 + 1;
                WORD4(v433) = (v73 + 1 + v118) >> 1;
                LOWORD(v434) = (v76 + v75 + 1) >> 1;
                WORD4(v434) = (v106 + v105 + 1) >> 1;
                if (v69 < 0x10)
                {
                  WORD1(v433) = (3 * (v409 + v427) + 10 * v71 + 8) >> 4;
                  WORD5(v433) = (3 * (v118 + v104) + 10 * v73 + 8) >> 4;
                  WORD1(v434) = (3 * (v75 + v74) + 10 * v76 + 8) >> 4;
                  v140 = 3 * (v105 + v102) + 10 * v106;
                  goto LABEL_110;
                }

                if ((v69 & 0xF0) == 0x20)
                {
                  WORD1(v433) = (v387 + 3 * v71 + 2) >> 2;
                  WORD5(v433) = (v389 + 3 * v73 + 2) >> 2;
                  WORD1(v434) = (3 * v76 + v385 + 2) >> 2;
                  v141 = (3 * v106 + v369 + 2) >> 2;
                }

                else
                {
                  WORD1(v433) = (9 * v71 + v387 + 3 * (v409 + v427) + 8) >> 4;
                  WORD5(v433) = (9 * v73 + v389 + 3 * (v118 + v104) + 8) >> 4;
                  WORD1(v434) = (9 * v76 + v385 + 3 * (v75 + v74) + 8) >> 4;
                  v140 = 9 * v425 + v369 + 3 * (v105 + v102);
                  v106 = v425;
LABEL_110:
                  v141 = (v140 + 8) >> 4;
                }

                WORD5(v434) = v141;
                WORD2(v433) = (v71 + v427 + 1) >> 1;
                v392 = v73 + v104;
                WORD6(v433) = (v73 + v104 + 1) >> 1;
                WORD2(v434) = (v74 + v76 + 1) >> 1;
                v182 = v102 + v106;
                WORD6(v434) = (v102 + v106 + 1) >> 1;
                if (v397 < 0x10)
                {
                  WORD3(v433) = (3 * (v393 + v71) + 10 * v427 + 8) >> 4;
                  HIWORD(v433) = (3 * (v395 + v73) + 10 * v104 + 8) >> 4;
                  WORD3(v434) = (3 * (v379 + v76) + 10 * v74 + 8) >> 4;
                  v183 = 3 * (v381 + v106) + 10 * v102;
                  goto LABEL_122;
                }

                if ((v397 & 0xF0) == 0x20)
                {
                  WORD3(v433) = (3 * v427 + v383 + 2) >> 2;
                  HIWORD(v433) = (3 * v411 + v361 + 2) >> 2;
                  WORD3(v434) = (3 * v74 + v363 + 2) >> 2;
                  v184 = v369;
                  v185 = v359;
                  HIWORD(v434) = (3 * v406 + v365 + 2) >> 2;
                  if (!v101)
                  {
                    goto LABEL_115;
                  }

LABEL_123:
                  if (v101 == 2)
                  {
                    LOWORD(v437) = (3 * (v185 + v409) + 10 * v71 + 8) >> 4;
                    WORD4(v437) = (3 * (v367 + v413) + 10 * v73 + 8) >> 4;
                    LOWORD(v438) = (3 * (v385 + v76) + 10 * v75 + 8) >> 4;
                    v197 = 3 * (v184 + v425) + 10 * v423;
                  }

                  else
                  {
                    LOWORD(v437) = (9 * v71 + v322 + 3 * (v185 + v409) + 8) >> 4;
                    WORD4(v437) = (9 * v73 + v324 + 3 * (v367 + v413) + 8) >> 4;
                    LOWORD(v438) = (v74 + 9 * v75 + 3 * (v385 + v76) + 8) >> 4;
                    v198 = v184 + v425;
                    v184 = v369;
                    v197 = v406 + 9 * v423 + 3 * v198;
                  }

                  WORD4(v438) = (v197 + 8) >> 4;
                  if (v67 < 0x10)
                  {
                    goto LABEL_127;
                  }

LABEL_116:
                  WORD1(v437) = v71;
                  WORD5(v437) = v73;
                  v186 = v385;
                  if (v377 == 2)
                  {
                    WORD1(v438) = (v385 + v76 + 1) >> 1;
                    v187 = v425;
                    v188 = v406;
                    v189 = v423;
                    WORD5(v438) = (v184 + v425 + 1) >> 1;
                    v190 = v399;
                    if (!v399)
                    {
                      goto LABEL_118;
                    }

LABEL_130:
                    if (v190 == 2)
                    {
                      WORD2(v437) = (3 * (v383 + v427) + 10 * v71 + 8) >> 4;
                      v192 = v361;
                      WORD6(v437) = (3 * (v361 + v411) + 10 * v73 + 8) >> 4;
                      WORD2(v438) = (3 * (v186 + v76) + 10 * v74 + 8) >> 4;
                      v200 = 3 * (v184 + v187) + 10 * v188;
                    }

                    else
                    {
                      WORD2(v437) = (9 * v71 + v393 + 3 * (v383 + v427) + 8) >> 4;
                      v192 = v361;
                      WORD6(v437) = (9 * v73 + v395 + 3 * (v361 + v411) + 8) >> 4;
                      WORD2(v438) = (9 * v74 + v75 + 3 * (v186 + v76) + 8) >> 4;
                      v200 = 9 * v188 + v423 + 3 * (v184 + v425);
                      v187 = v425;
                    }

                    WORD6(v438) = (v200 + 8) >> 4;
                    v193 = v367;
                    if (v400 < 0x10)
                    {
LABEL_134:
                      v194 = v70;
                      v201 = v71 + 1;
                      WORD3(v437) = (v376 + v393) >> 1;
                      v202 = v73 + 1;
                      v196 = (v374 + v395) >> 1;
                      v195 = v383;
                      goto LABEL_137;
                    }

LABEL_119:
                    v194 = v70;
                    v195 = v383;
                    if (v378 == 2)
                    {
                      WORD3(v437) = (v383 + v427 + 1) >> 1;
                      v196 = (v192 + v411 + 1) >> 1;
                    }

                    else
                    {
                      WORD3(v437) = (v71 + v427 + v393 + v383 + 2) >> 2;
                      v196 = (v392 + v395 + v192 + 2) >> 2;
                    }

                    v201 = v71 + 1;
                    v202 = v73 + 1;
LABEL_137:
                    HIWORD(v437) = v196;
                    WORD3(v438) = v74;
                    HIWORD(v438) = v188;
                    LOWORD(v441) = (v201 + v185) >> 1;
                    WORD4(v441) = (v202 + v193) >> 1;
                    LOWORD(v442) = (v371 + v186 + 1) >> 1;
                    WORD4(v442) = (v423 + v184 + 1) >> 1;
                    if (v401 < 0x10)
                    {
                      WORD1(v441) = (3 * (v185 + v195) + 10 * v71 + 8) >> 4;
                      WORD5(v441) = (3 * (v193 + v192) + 10 * v73 + 8) >> 4;
                      WORD1(v442) = (3 * (v371 + v74) + 10 * v186 + 8) >> 4;
                      v203 = 3 * (v423 + v188) + 10 * v184;
                      goto LABEL_142;
                    }

                    if ((v401 & 0xF0) == 0x20)
                    {
                      WORD1(v441) = (3 * v71 + v315 + 2) >> 2;
                      WORD5(v441) = (3 * v73 + v316 + 2) >> 2;
                      WORD1(v442) = (v76 + 3 * v186 + 2) >> 2;
                      v204 = (v187 + 3 * v184 + 2) >> 2;
                    }

                    else
                    {
                      WORD1(v441) = (9 * v71 + v315 + 3 * (v359 + v195) + 8) >> 4;
                      WORD5(v441) = (9 * v73 + v316 + 3 * (v193 + v192) + 8) >> 4;
                      WORD1(v442) = (v76 + 9 * v186 + 3 * (v371 + v74) + 8) >> 4;
                      v203 = v187 + 9 * v184 + 3 * (v423 + v188);
LABEL_142:
                      v204 = (v203 + 8) >> 4;
                    }

                    WORD5(v442) = v204;
                    WORD2(v441) = (v376 + v195) >> 1;
                    WORD6(v441) = (v374 + v192) >> 1;
                    WORD2(v442) = (v74 + v186 + 1) >> 1;
                    WORD6(v442) = (v188 + v184 + 1) >> 1;
                    if (v194 < 0x10)
                    {
                      WORD3(v441) = (3 * (v393 + v357) + 10 * v195 + 8) >> 4;
                      HIWORD(v441) = (3 * (v395 + v73) + 10 * v192 + 8) >> 4;
                      WORD3(v442) = (3 * (v327 + v186) + 10 * v74 + 8) >> 4;
                      v205 = 3 * (v329 + v184) + 10 * v188;
                      goto LABEL_148;
                    }

                    if ((v194 & 0xF0) == 0x20)
                    {
                      WORD3(v441) = (v427 + 3 * v195 + 2) >> 2;
                      HIWORD(v441) = (v411 + 3 * v192 + 2) >> 2;
                      WORD3(v442) = (3 * v74 + v318 + 2) >> 2;
                      v206 = (3 * v188 + v320 + 2) >> 2;
                    }

                    else
                    {
                      WORD3(v441) = (v427 + 9 * v195 + 3 * (v393 + v357) + 8) >> 4;
                      HIWORD(v441) = (v411 + 9 * v192 + 3 * (v395 + v73) + 8) >> 4;
                      WORD3(v442) = (9 * v74 + v318 + 3 * (v327 + v186) + 8) >> 4;
                      v205 = 9 * v188 + v320 + 3 * (v329 + v184);
LABEL_148:
                      v206 = (v205 + 8) >> 4;
                    }

                    HIWORD(v442) = v206;
                    v207 = *v62;
                    v208 = v62[3];
                    v209 = v62[6];
                    v210 = *v415;
                    v211 = v415[3];
                    v212 = v415[6];
                    v213 = *v422;
                    v214 = v422[3];
                    v215 = v422[6];
                    LOWORD(v431) = (v210 + v207 + 1) >> 1;
                    v216 = v211 + v208;
                    WORD1(v431) = (v216 + 2 + v207 + v210) >> 2;
                    WORD2(v431) = (v216 + 1) >> 1;
                    WORD3(v431) = (v216 + 2 + v209 + v212) >> 2;
                    LOWORD(v435) = v210;
                    WORD1(v435) = (v211 + v210 + 1) >> 1;
                    WORD2(v435) = v211;
                    WORD3(v435) = (v212 + v211 + 1) >> 1;
                    LOWORD(v439) = (v210 + v213 + 1) >> 1;
                    WORD1(v439) = (v214 + 2 + v211 + v210 + v213) >> 2;
                    WORD2(v439) = (v214 + v211 + 1) >> 1;
                    WORD3(v439) = (v214 + 2 + v212 + v211 + v215) >> 2;
                    LOWORD(v443) = v213;
                    WORD1(v443) = (v214 + v213 + 1) >> 1;
                    WORD2(v443) = v214;
                    WORD3(v443) = (v214 + v215 + 1) >> 1;
                    v217 = v62[1];
                    v218 = v62[4];
                    v219 = v62[7];
                    v220 = v415[1];
                    v221 = v415[4];
                    v222 = v415[7];
                    v223 = v422[1];
                    v224 = v422[4];
                    v225 = v422[7];
                    WORD4(v431) = (v220 + v217 + 1) >> 1;
                    v226 = v221 + v218;
                    WORD5(v431) = (v226 + 2 + v217 + v220) >> 2;
                    WORD6(v431) = (v226 + 1) >> 1;
                    HIWORD(v431) = (v226 + 2 + v219 + v222) >> 2;
                    WORD4(v435) = v220;
                    WORD5(v435) = (v221 + v220 + 1) >> 1;
                    WORD6(v435) = v221;
                    HIWORD(v435) = (v222 + v221 + 1) >> 1;
                    WORD4(v439) = (v220 + v223 + 1) >> 1;
                    WORD5(v439) = (v224 + 2 + v221 + v220 + v223) >> 2;
                    WORD6(v439) = (v224 + v221 + 1) >> 1;
                    HIWORD(v439) = (v224 + 2 + v222 + v221 + v225) >> 2;
                    WORD4(v443) = v223;
                    WORD5(v443) = (v224 + v223 + 1) >> 1;
                    WORD6(v443) = v224;
                    HIWORD(v443) = (v224 + v225 + 1) >> 1;
                    v227 = v62[2];
                    v228 = v62[5];
                    v229 = v62[8];
                    v230 = v415[2];
                    v231 = v415[5];
                    v232 = v415[8];
                    v233 = v422[2];
                    v234 = v422[5];
                    v235 = v422[8];
                    LOWORD(v432) = (v230 + v227 + 1) >> 1;
                    v236 = v231 + v228;
                    WORD1(v432) = (v236 + 2 + v227 + v230) >> 2;
                    WORD2(v432) = (v236 + 1) >> 1;
                    WORD3(v432) = (v236 + 2 + v229 + v232) >> 2;
                    LOWORD(v436) = v230;
                    WORD1(v436) = (v231 + v230 + 1) >> 1;
                    WORD2(v436) = v231;
                    WORD3(v436) = (v232 + v231 + 1) >> 1;
                    LOWORD(v440) = (v230 + v233 + 1) >> 1;
                    WORD1(v440) = (v234 + 2 + v231 + v230 + v233) >> 2;
                    WORD2(v440) = (v234 + v231 + 1) >> 1;
                    WORD3(v440) = (v234 + 2 + v232 + v231 + v235) >> 2;
                    LOWORD(v444) = v233;
                    WORD1(v444) = (v234 + v233 + 1) >> 1;
                    WORD2(v444) = v234;
                    WORD3(v444) = (v234 + v235 + 1) >> 1;
                    v237 = v421[1];
                    v238 = v421[5];
                    v239 = v416[1];
                    v240 = v416[3];
                    v241 = v416[5];
                    v242 = v240 + v421[3];
                    v243 = v420[1];
                    v181 = v420[3];
                    v244 = v420[5];
                    WORD4(v432) = (v239 + v237 + 1) >> 1;
                    WORD5(v432) = (v242 + 2 + v237 + v239) >> 2;
                    WORD6(v432) = (v242 + 1) >> 1;
                    HIWORD(v432) = (v242 + 2 + v238 + v241) >> 2;
                    WORD4(v436) = v239;
                    WORD5(v436) = (v240 + v239 + 1) >> 1;
                    WORD6(v436) = v240;
                    HIWORD(v436) = (v241 + v240 + 1) >> 1;
                    WORD4(v440) = (v239 + v243 + 1) >> 1;
                    WORD5(v440) = (v181 + 2 + v240 + v239 + v243) >> 2;
                    WORD6(v440) = (v181 + v240 + 1) >> 1;
                    HIWORD(v440) = (v181 + 2 + v241 + v240 + v244) >> 2;
                    WORD4(v444) = v243;
                    WORD5(v444) = (v181 + v243 + 1) >> 1;
                    v180 = (v181 + v244 + 1) >> 1;
                    goto LABEL_150;
                  }

                  WORD1(v438) = (v75 + v74 + v76 + v385 + 2) >> 2;
                  v199 = v423 + v182;
                  v189 = v423;
                  v188 = v406;
                  v187 = v425;
                  WORD5(v438) = (v199 + v184 + 2) >> 2;
                  v190 = v399;
                  if (v399)
                  {
                    goto LABEL_130;
                  }
                }

                else
                {
                  WORD3(v433) = (9 * v427 + v383 + 3 * (v393 + v71) + 8) >> 4;
                  HIWORD(v433) = (9 * v411 + v361 + 3 * (v395 + v73) + 8) >> 4;
                  WORD3(v434) = (9 * v74 + v363 + 3 * (v379 + v76) + 8) >> 4;
                  v183 = 9 * v406 + v365 + 3 * (v381 + v425);
                  v101 = v67 & 0xF;
LABEL_122:
                  v184 = v369;
                  v185 = v359;
                  HIWORD(v434) = (v183 + 8) >> 4;
                  if (v101)
                  {
                    goto LABEL_123;
                  }

LABEL_115:
                  LOWORD(v437) = (3 * v71 + v322 + 2) >> 2;
                  WORD4(v437) = (3 * v73 + v324 + 2) >> 2;
                  LOWORD(v438) = (v74 + 3 * v75 + 2) >> 2;
                  WORD4(v438) = (v406 + 3 * v423 + 2) >> 2;
                  if (v67 >= 0x10)
                  {
                    goto LABEL_116;
                  }

LABEL_127:
                  WORD1(v437) = v71;
                  WORD5(v437) = v73;
                  WORD1(v438) = (v75 + v74 + 1) >> 1;
                  v188 = v406;
                  v189 = v423;
                  v186 = v385;
                  v187 = v425;
                  WORD5(v438) = (v423 + v406 + 1) >> 1;
                  v190 = v399;
                  if (v399)
                  {
                    goto LABEL_130;
                  }
                }

LABEL_118:
                WORD2(v437) = (3 * v71 + v393 + 2) >> 2;
                WORD6(v437) = (3 * v73 + v395 + 2) >> 2;
                WORD2(v438) = (v75 + 3 * v74 + 2) >> 2;
                v191 = (v189 + 3 * v188 + 2) >> 2;
                v192 = v361;
                WORD6(v438) = v191;
                v193 = v367;
                if (v400 < 0x10)
                {
                  goto LABEL_134;
                }

                goto LABEL_119;
              }
            }

            else
            {
              LOWORD(v429) = (v427 + 3 * v72 + 2) >> 2;
              WORD4(v429) = (v411 + 3 * v413 + 2) >> 2;
              LOWORD(v430) = (3 * v76 + v77 + 2) >> 2;
              v101 = v67 & 0xF;
              v102 = v406;
              WORD4(v430) = (3 * v78 + v79 + 2) >> 2;
              if (v63 < 0x10)
              {
                goto LABEL_38;
              }
            }

            v103 = v387 + v71;
            v104 = v411;
            v105 = v423;
            if (v373 == 2)
            {
              WORD1(v429) = (v103 + 1) >> 1;
              v106 = v425;
              WORD5(v429) = (v389 + v73 + 1) >> 1;
              WORD1(v430) = v76;
              WORD5(v430) = v425;
              if ((v65 & 0xF) != 0)
              {
                goto LABEL_39;
              }

              goto LABEL_53;
            }

            WORD1(v429) = (v103 + v427 + v409 + 2) >> 2;
            v106 = v425;
            WORD5(v429) = (v389 + v73 + v411 + v413 + 2) >> 2;
            WORD1(v430) = v76;
            WORD5(v430) = v425;
            if ((v65 & 0xF) == 0)
            {
              goto LABEL_53;
            }

LABEL_39:
            if (v66 == 2)
            {
              WORD2(v429) = (3 * (v387 + v71) + 10 * v427 + 8) >> 4;
              WORD6(v429) = (3 * (v389 + v73) + 10 * v104 + 8) >> 4;
              WORD2(v430) = (3 * (v363 + v74) + 10 * v76 + 8) >> 4;
              WORD6(v430) = (3 * (v365 + v102) + 10 * v106 + 8) >> 4;
              if (v65 < 0x10)
              {
                goto LABEL_54;
              }
            }

            else
            {
              WORD2(v429) = (9 * v427 + v409 + 3 * (v387 + v71) + 8) >> 4;
              WORD6(v429) = (9 * v104 + v413 + 3 * (v389 + v73) + 8) >> 4;
              WORD2(v430) = (9 * v76 + v379 + 3 * (v363 + v74) + 8) >> 4;
              v106 = v425;
              WORD6(v430) = (9 * v425 + v381 + 3 * (v365 + v102) + 8) >> 4;
              if (v65 < 0x10)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_50;
          }

          v372 = v49[v356];
          v380 = v49[3 * v356 + 1];
          v384 = v31[v341];
          v87 = v31[v350];
          v410 = v31[v340];
          v414 = v31[v349];
          v370 = v31[v339];
          v364 = v31[v313];
          v330 = v31[v338];
          v88 = *(v31 - 1);
          v89 = v31[v344];
          v90 = v31[v348];
          v412 = v31[v337];
          v424 = v31[v336];
          v368 = v31[v347];
          v366 = v31[v335];
          v358 = v31[v346];
          v91 = v31[v352];
          v426 = v31[v334];
          v388 = v31[v351];
          v92 = v31[v342];
          v317 = v31[v314];
          v323 = v31[v333];
          v321 = v31[v345];
          v93 = v31[v332];
          v94 = v31[v331];
          v394 = v31[v353];
          v95 = *(v31 - 2);
          v386 = v31[v326];
          v390 = *(v31 - 3);
          v319 = v31[v343];
          v328 = v31[v312];
          v325 = v31[v311];
          v96 = *v31;
          LOWORD(v429) = *v31;
          v396 = v31[4];
          v407 = v31[3];
          v97 = v31[2];
          v98 = v31[1];
          WORD4(v429) = v88;
          v360 = v31[6];
          v362 = v31[5];
          v382 = v92;
          if ((v63 & 0xF) != 0)
          {
            v99 = v92 + v91;
            if (v64 == 2)
            {
              LOWORD(v430) = (v99 + 1) >> 1;
              v100 = v90;
              WORD4(v430) = (v386 + v93 + 1) >> 1;
              v428 = v94;
              if (v63 < 0x10)
              {
                goto LABEL_32;
              }
            }

            else
            {
              LOWORD(v430) = (v99 + v97 + v95 + 2) >> 2;
              v100 = v90;
              WORD4(v430) = (v386 + v93 + v98 + v390 + 2) >> 2;
              v428 = v94;
              if (v63 < 0x10)
              {
LABEL_32:
                WORD1(v429) = (3 * v96 + v396 + 2) >> 2;
                v107 = v407;
                WORD5(v429) = (3 * v88 + v407 + 2) >> 2;
                WORD1(v430) = (3 * v97 + v95 + 2) >> 2;
                WORD5(v430) = (3 * v98 + v390 + 2) >> 2;
                v108 = v87;
                if ((v65 & 0xF) == 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_33;
              }
            }
          }

          else
          {
            LOWORD(v430) = (v95 + v97 + 1) >> 1;
            v100 = v90;
            WORD4(v430) = (v390 + v98 + 1) >> 1;
            v428 = v94;
            if (v63 < 0x10)
            {
              goto LABEL_32;
            }
          }

          v113 = 3 * (v87 + v384);
          v107 = v407;
          if (v373 == 2)
          {
            WORD1(v429) = (v113 + 10 * v96 + 8) >> 4;
            WORD5(v429) = (3 * (v100 + v89) + 10 * v88 + 8) >> 4;
            WORD1(v430) = (3 * (v382 + v91) + 10 * v97 + 8) >> 4;
            WORD5(v430) = (3 * (v386 + v93) + 10 * v98 + 8) >> 4;
            v108 = v87;
            if ((v65 & 0xF) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v100 = v90;
            WORD1(v429) = (9 * v96 + v396 + v113 + 8) >> 4;
            WORD5(v429) = (9 * v88 + v407 + 3 * (v90 + v89) + 8) >> 4;
            WORD1(v430) = (9 * v97 + v95 + 3 * (v382 + v91) + 8) >> 4;
            WORD5(v430) = (9 * v98 + v390 + 3 * (v386 + v93) + 8) >> 4;
            v108 = v87;
            if ((v65 & 0xF) == 0)
            {
LABEL_56:
              v111 = v396;
              WORD2(v429) = (v396 + v96 + 1) >> 1;
              v109 = v89;
              v110 = v384;
              WORD6(v429) = (v107 + v88 + 1) >> 1;
              WORD2(v430) = v97;
              WORD6(v430) = v98;
              if (v65 < 0x10)
              {
LABEL_57:
                WORD3(v429) = (v96 + 3 * v111 + 2) >> 2;
                HIWORD(v429) = (v88 + 3 * v107 + 2) >> 2;
                WORD3(v430) = (3 * v97 + v360 + 2) >> 2;
                v115 = v394;
                HIWORD(v430) = (3 * v98 + v362 + 2) >> 2;
                v120 = v372 & 0xF;
                if ((v372 & 0xF) == 0)
                {
                  goto LABEL_63;
                }

                goto LABEL_58;
              }

              goto LABEL_47;
            }
          }

LABEL_33:
          v109 = v89;
          if (v66 == 2)
          {
            v110 = v384;
            WORD2(v429) = (v108 + v384 + 1) >> 1;
            v111 = v396;
            WORD6(v429) = (v100 + v109 + 1) >> 1;
            WORD2(v430) = v97;
            WORD6(v430) = v98;
            if (v65 < 0x10)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v110 = v384;
            v111 = v396;
            WORD2(v429) = (v108 + v384 + v96 + v396 + 2) >> 2;
            WORD6(v429) = (v100 + v109 + v88 + v107 + 2) >> 2;
            WORD2(v430) = v97;
            WORD6(v430) = v98;
            if (v65 < 0x10)
            {
              goto LABEL_57;
            }
          }

LABEL_47:
          v114 = 3 * (v108 + v110);
          v115 = v394;
          if (v375 == 2)
          {
            WORD3(v429) = (v114 + 10 * v111 + 8) >> 4;
            HIWORD(v429) = (3 * (v100 + v109) + 10 * v107 + 8) >> 4;
            WORD3(v430) = (3 * (v317 + v426) + 10 * v97 + 8) >> 4;
            v116 = 3 * (v319 + v428) + 10 * v98;
          }

          else
          {
            WORD3(v429) = (v96 + v114 + 9 * v111 + 8) >> 4;
            HIWORD(v429) = (v88 + 9 * v107 + 3 * (v100 + v109) + 8) >> 4;
            WORD3(v430) = (9 * v97 + v360 + 3 * (v317 + v426) + 8) >> 4;
            v116 = 9 * v98 + v362 + 3 * (v319 + v428);
          }

          HIWORD(v430) = (v116 + 8) >> 4;
          v120 = v372 & 0xF;
          if ((v372 & 0xF) == 0)
          {
LABEL_63:
            LOWORD(v433) = (3 * (v410 + v110) + 10 * v96 + 8) >> 4;
            WORD4(v433) = (3 * (v412 + v109) + 10 * v88 + 8) >> 4;
            LOWORD(v434) = (3 * (v95 + v97) + 10 * v91 + 8) >> 4;
            v122 = 3 * (v390 + v98) + 10 * v93;
            goto LABEL_64;
          }

LABEL_58:
          if (v120 == 2)
          {
            LOWORD(v433) = (3 * v96 + v414 + 2) >> 2;
            WORD4(v433) = (3 * v88 + v424 + 2) >> 2;
            LOWORD(v434) = (3 * v91 + v382 + 2) >> 2;
            v121 = (3 * v93 + v386 + 2) >> 2;
            goto LABEL_65;
          }

          LOWORD(v433) = (9 * v96 + v414 + 3 * (v410 + v110) + 8) >> 4;
          WORD4(v433) = (9 * v88 + v424 + 3 * (v412 + v109) + 8) >> 4;
          LOWORD(v434) = (9 * v91 + v382 + 3 * (v95 + v97) + 8) >> 4;
          v122 = 9 * v93 + v386 + 3 * (v390 + v98);
LABEL_64:
          v121 = (v122 + 8) >> 4;
LABEL_65:
          WORD4(v434) = v121;
          WORD1(v433) = (v110 + v96 + 1) >> 1;
          WORD5(v433) = (v109 + v88 + 1) >> 1;
          WORD1(v434) = (v91 + v97 + 1) >> 1;
          WORD5(v434) = (v93 + v98 + 1) >> 1;
          if ((v397 & 0xF) != 0)
          {
            if ((v397 & 0xF) == 2)
            {
              WORD2(v433) = (v108 + 3 * v110 + 2) >> 2;
              WORD6(v433) = (v100 + 3 * v109 + 2) >> 2;
              WORD2(v434) = (3 * v97 + v388 + 2) >> 2;
              v115 = v394;
              v123 = (3 * v98 + v394 + 2) >> 2;
              v124 = v428;
              v125 = v111;
              v126 = v407;
              v127 = v426;
              goto LABEL_71;
            }

            WORD2(v433) = (9 * v110 + v108 + 3 * (v111 + v96) + 8) >> 4;
            v125 = v111;
            v126 = v407;
            WORD6(v433) = (9 * v109 + v100 + 3 * (v407 + v88) + 8) >> 4;
            WORD2(v434) = (9 * v97 + v388 + 3 * (v426 + v91) + 8) >> 4;
            v124 = v428;
            v115 = v394;
            v128 = 9 * v98 + v394 + 3 * (v428 + v93);
            v127 = v426;
          }

          else
          {
            WORD2(v433) = (3 * (v111 + v96) + 10 * v110 + 8) >> 4;
            v125 = v111;
            v126 = v407;
            WORD6(v433) = (3 * (v407 + v88) + 10 * v109 + 8) >> 4;
            v127 = v426;
            WORD2(v434) = (3 * (v426 + v91) + 10 * v97 + 8) >> 4;
            v124 = v428;
            v128 = 3 * (v428 + v93) + 10 * v98;
          }

          v123 = (v128 + 8) >> 4;
LABEL_71:
          WORD6(v434) = v123;
          v391 = v110 + 1;
          WORD3(v433) = (v110 + 1 + v125) >> 1;
          v398 = v109 + 1;
          HIWORD(v433) = (v109 + 1 + v126) >> 1;
          WORD3(v434) = (v97 + v127 + 1) >> 1;
          HIWORD(v434) = (v98 + v124 + 1) >> 1;
          if (v408)
          {
            if (v408 == 2)
            {
              LOWORD(v437) = (v414 + v96 + 1) >> 1;
              v129 = (v424 + v88 + 1) >> 1;
            }

            else
            {
              LOWORD(v437) = (v110 + v96 + v410 + v414 + 2) >> 2;
              v129 = (v109 + v88 + v412 + v424 + 2) >> 2;
            }
          }

          else
          {
            LOWORD(v437) = (v391 + v410) >> 1;
            v129 = (v398 + v412) >> 1;
          }

          WORD4(v437) = v129;
          LOWORD(v438) = v91;
          WORD4(v438) = v93;
          v130 = v388;
          if (v405 >= 0x10)
          {
            v137 = 3 * (v414 + v96);
            if (v377 == 2)
            {
              WORD1(v437) = (v137 + 10 * v110 + 8) >> 4;
              WORD5(v437) = (3 * (v424 + v88) + 10 * v109 + 8) >> 4;
              WORD1(v438) = (3 * (v388 + v97) + 10 * v91 + 8) >> 4;
              v138 = 3 * (v115 + v98) + 10 * v93;
            }

            else
            {
              WORD1(v437) = (9 * v110 + v410 + v137 + 8) >> 4;
              WORD5(v437) = (9 * v109 + v412 + 3 * (v424 + v88) + 8) >> 4;
              v130 = v388;
              WORD1(v438) = (9 * v91 + v426 + 3 * (v388 + v97) + 8) >> 4;
              v138 = 9 * v93 + v428 + 3 * (v115 + v98);
            }

            WORD5(v438) = (v138 + 8) >> 4;
            WORD2(v437) = v110;
            WORD6(v437) = v109;
            if (!v399)
            {
LABEL_97:
              v133 = v426;
              WORD2(v438) = (v426 + v91 + 1) >> 1;
              v134 = v428;
              v139 = (v428 + v93 + 1) >> 1;
              goto LABEL_98;
            }
          }

          else
          {
            WORD1(v437) = (3 * v110 + v410 + 2) >> 2;
            WORD5(v437) = (3 * v109 + v412 + 2) >> 2;
            WORD1(v438) = (v426 + 3 * v91 + 2) >> 2;
            WORD5(v438) = (v428 + 3 * v93 + 2) >> 2;
            WORD2(v437) = v110;
            WORD6(v437) = v109;
            if (!v399)
            {
              goto LABEL_97;
            }
          }

          if (v399 == 2)
          {
            WORD2(v438) = (v130 + v97 + 1) >> 1;
            v131 = v370;
            v132 = v368;
            v133 = v426;
            v134 = v428;
            WORD6(v438) = (v115 + v98 + 1) >> 1;
            if (v400 < 0x10)
            {
              goto LABEL_99;
            }

            goto LABEL_80;
          }

          v133 = v426;
          WORD2(v438) = (v426 + v91 + v97 + v130 + 2) >> 2;
          v134 = v428;
          v139 = (v428 + v93 + v98 + v115 + 2) >> 2;
LABEL_98:
          v131 = v370;
          v132 = v368;
          WORD6(v438) = v139;
          if (v400 < 0x10)
          {
LABEL_99:
            WORD3(v437) = (3 * v110 + v364 + 2) >> 2;
            HIWORD(v437) = (3 * v109 + v366 + 2) >> 2;
            WORD3(v438) = (v91 + 3 * v133 + 2) >> 2;
            HIWORD(v438) = (v93 + 3 * v134 + 2) >> 2;
            v142 = v401 & 0xF;
            if ((v401 & 0xF) == 0)
            {
              goto LABEL_100;
            }

            goto LABEL_92;
          }

LABEL_80:
          v135 = 3 * (v131 + v396);
          if (v378 == 2)
          {
            WORD3(v437) = (v135 + 10 * v110 + 8) >> 4;
            HIWORD(v437) = (3 * (v132 + v407) + 10 * v109 + 8) >> 4;
            WORD3(v438) = (3 * (v130 + v97) + 10 * v133 + 8) >> 4;
            v134 = v428;
            v136 = 3 * (v115 + v98) + 10 * v428;
          }

          else
          {
            WORD3(v437) = (9 * v110 + v364 + v135 + 8) >> 4;
            HIWORD(v437) = (9 * v109 + v366 + 3 * (v132 + v407) + 8) >> 4;
            WORD3(v438) = (v91 + 9 * v133 + 3 * (v130 + v97) + 8) >> 4;
            v136 = v93 + 9 * v428 + 3 * (v394 + v98);
            v134 = v428;
            v115 = v394;
          }

          HIWORD(v438) = (v136 + 8) >> 4;
          v142 = v401 & 0xF;
          if ((v401 & 0xF) == 0)
          {
LABEL_100:
            v143 = v414;
            LOWORD(v441) = (3 * (v410 + v110) + 10 * v414 + 8) >> 4;
            v144 = v424;
            WORD4(v441) = (3 * (v412 + v109) + 10 * v424 + 8) >> 4;
            LOWORD(v442) = (3 * (v323 + v130) + 10 * v91 + 8) >> 4;
            v146 = 3 * (v328 + v115) + 10 * v93;
            goto LABEL_101;
          }

LABEL_92:
          if (v142 == 2)
          {
            v143 = v414;
            LOWORD(v441) = (v96 + 3 * v414 + 2) >> 2;
            v144 = v424;
            WORD4(v441) = (v88 + 3 * v424 + 2) >> 2;
            LOWORD(v442) = (3 * v91 + v321 + 2) >> 2;
            v145 = (3 * v93 + v325 + 2) >> 2;
            goto LABEL_102;
          }

          v143 = v414;
          LOWORD(v441) = (v96 + 9 * v414 + 3 * (v410 + v110) + 8) >> 4;
          v144 = v424;
          WORD4(v441) = (v88 + 9 * v424 + 3 * (v412 + v109) + 8) >> 4;
          LOWORD(v442) = (9 * v91 + v321 + 3 * (v323 + v130) + 8) >> 4;
          v146 = 9 * v93 + v325 + 3 * (v328 + v115);
          v134 = v428;
LABEL_101:
          v145 = (v146 + 8) >> 4;
LABEL_102:
          WORD4(v442) = v145;
          WORD1(v441) = (v391 + v143) >> 1;
          WORD5(v441) = (v398 + v144) >> 1;
          WORD1(v442) = (v91 + v130 + 1) >> 1;
          WORD5(v442) = (v93 + v115 + 1) >> 1;
          if ((v380 & 0xF) == 0)
          {
            WORD2(v441) = (3 * (v131 + v143) + 10 * v110 + 8) >> 4;
            WORD6(v441) = (3 * (v132 + v144) + 10 * v109 + 8) >> 4;
            WORD2(v442) = (3 * (v133 + v91) + 10 * v130 + 8) >> 4;
            v148 = 3 * (v134 + v93) + 10 * v115;
LABEL_107:
            v147 = (v148 + 8) >> 4;
            goto LABEL_108;
          }

          if ((v380 & 0xF) != 2)
          {
            v134 = v428;
            WORD2(v441) = (9 * v110 + v330 + 3 * (v131 + v143) + 8) >> 4;
            WORD6(v441) = (9 * v109 + v358 + 3 * (v132 + v144) + 8) >> 4;
            WORD2(v442) = (v97 + 9 * v130 + 3 * (v133 + v91) + 8) >> 4;
            v148 = v98 + 9 * v115 + 3 * (v428 + v93);
            goto LABEL_107;
          }

          WORD2(v441) = (3 * v110 + v330 + 2) >> 2;
          WORD6(v441) = (3 * v109 + v358 + 2) >> 2;
          WORD2(v442) = (v97 + 3 * v130 + 2) >> 2;
          v147 = (v98 + 3 * v115 + 2) >> 2;
LABEL_108:
          WORD6(v442) = v147;
          WORD3(v441) = (v391 + v131) >> 1;
          HIWORD(v441) = (v398 + v132) >> 1;
          WORD3(v442) = (v133 + v130 + 1) >> 1;
          HIWORD(v442) = (v134 + v115 + 1) >> 1;
          v149 = v62[3];
          v150 = *(v415 - 3);
          v151 = *v415;
          v152 = v415[3];
          v153 = *(v422 - 3);
          v154 = *v422;
          v155 = v422[3];
          v156 = v151 + *v62;
          LOWORD(v431) = (v156 + 2 + *(v62 - 3) + v150) >> 2;
          WORD1(v431) = (v156 + 1) >> 1;
          WORD2(v431) = (v156 + 2 + v149 + v152) >> 2;
          WORD3(v431) = (v152 + v149 + 1) >> 1;
          LOWORD(v435) = (v151 + v150 + 1) >> 1;
          WORD1(v435) = v151;
          WORD2(v435) = (v152 + v151 + 1) >> 1;
          WORD3(v435) = v152;
          LOWORD(v439) = (v154 + 2 + v151 + v150 + v153) >> 2;
          WORD1(v439) = (v154 + v151 + 1) >> 1;
          WORD2(v439) = (v154 + 2 + v152 + v151 + v155) >> 2;
          WORD3(v439) = (v152 + v155 + 1) >> 1;
          LOWORD(v443) = (v154 + v153 + 1) >> 1;
          WORD1(v443) = v154;
          WORD2(v443) = (v154 + v155 + 1) >> 1;
          WORD3(v443) = v155;
          v157 = v62[4];
          v158 = *(v415 - 2);
          v159 = v415[1];
          v160 = v415[4];
          v161 = *(v422 - 2);
          v162 = v422[1];
          v163 = v422[4];
          v164 = v159 + v62[1];
          WORD4(v431) = (v164 + 2 + *(v62 - 2) + v158) >> 2;
          WORD5(v431) = (v164 + 1) >> 1;
          WORD6(v431) = (v164 + 2 + v157 + v160) >> 2;
          HIWORD(v431) = (v160 + v157 + 1) >> 1;
          WORD4(v435) = (v159 + v158 + 1) >> 1;
          WORD5(v435) = v159;
          WORD6(v435) = (v160 + v159 + 1) >> 1;
          HIWORD(v435) = v160;
          WORD4(v439) = (v162 + 2 + v159 + v158 + v161) >> 2;
          WORD5(v439) = (v162 + v159 + 1) >> 1;
          WORD6(v439) = (v162 + 2 + v160 + v159 + v163) >> 2;
          HIWORD(v439) = (v160 + v163 + 1) >> 1;
          WORD4(v443) = (v162 + v161 + 1) >> 1;
          WORD5(v443) = v162;
          WORD6(v443) = (v162 + v163 + 1) >> 1;
          HIWORD(v443) = v163;
          v165 = v62[5];
          v166 = *(v415 - 1);
          v167 = v415[2];
          v168 = v415[5];
          v169 = *(v422 - 1);
          v170 = v422[2];
          v171 = v422[5];
          v172 = v167 + v62[2];
          LOWORD(v432) = (v172 + 2 + *(v62 - 1) + v166) >> 2;
          WORD1(v432) = (v172 + 1) >> 1;
          WORD2(v432) = (v172 + 2 + v165 + v168) >> 2;
          WORD3(v432) = (v168 + v165 + 1) >> 1;
          LOWORD(v436) = (v167 + v166 + 1) >> 1;
          WORD1(v436) = v167;
          WORD2(v436) = (v168 + v167 + 1) >> 1;
          WORD3(v436) = v168;
          LOWORD(v440) = (v170 + 2 + v167 + v166 + v169) >> 2;
          WORD1(v440) = (v170 + v167 + 1) >> 1;
          WORD2(v440) = (v170 + 2 + v168 + v167 + v171) >> 2;
          WORD3(v440) = (v168 + v171 + 1) >> 1;
          LOWORD(v444) = (v170 + v169 + 1) >> 1;
          WORD1(v444) = v170;
          WORD2(v444) = (v170 + v171 + 1) >> 1;
          WORD3(v444) = v171;
          v173 = v421[3];
          v174 = *(v416 - 1);
          v175 = v416[1];
          v176 = v175 + v421[1];
          v177 = v416[3];
          v178 = *(v420 - 1);
          v179 = v420[1];
          v180 = v420[3];
          WORD4(v432) = (v176 + 2 + *(v421 - 1) + v174) >> 2;
          WORD5(v432) = (v176 + 1) >> 1;
          WORD6(v432) = (v176 + 2 + v173 + v177) >> 2;
          HIWORD(v432) = (v177 + v173 + 1) >> 1;
          WORD4(v436) = (v175 + v174 + 1) >> 1;
          WORD5(v436) = v175;
          WORD6(v436) = (v177 + v175 + 1) >> 1;
          HIWORD(v436) = v177;
          WORD4(v440) = (v179 + 2 + v175 + v174 + v178) >> 2;
          WORD5(v440) = (v179 + v175 + 1) >> 1;
          WORD6(v440) = (v179 + 2 + v177 + v175 + v180) >> 2;
          HIWORD(v440) = (v177 + v180 + 1) >> 1;
          WORD4(v444) = (v179 + v178 + 1) >> 1;
          WORD5(v444) = v179;
          v181 = (v179 + v180 + 1) >> 1;
LABEL_150:
          WORD6(v444) = v181;
          v245 = 0;
          HIWORD(v444) = v180;
          v246 = &v429;
          v247 = v419;
          v248 = v418;
          v249 = v417;
          do
          {
            v250 = 0;
            v246 += 28;
            do
            {
              v258 = (*(v246 - 28) * *(v246 - 28) + 0x8000) >> 16;
              v259 = (*(v246 - 24) * *(v246 - 24) + 0x8000) >> 16;
              v260 = *(v249 + v250);
              v261 = v260 - v259;
              v262 = *(v246 - 8) + ((*(v246 - 8) - 1) >> 31);
              v263 = ((8389 * v258 - 25164952) >> 12) & ~((8389 * v258 - 25164952) >> 31);
              v264 = (((4096 - v263) & ((4096 - v263) >> 31)) + v263) * (((*(v246 - 12) << 16) / v262 + 2048) >> 12);
              if (v264 >= 0x10000)
              {
                if (v264 > 0x20000)
                {
                  v265 = (v47 * v259 + 0x8000) >> 16;
                  if (v259 >= v37)
                  {
                    v265 = 0x4000;
                  }

                  v266 = (v265 * v259 + 0x8000) >> 16;
                  if (-v266 > ((v266 - v261) & ((v266 - v261) >> 31)) + v261)
                  {
                    v261 = -v266;
                  }

                  else
                  {
                    v261 += (v266 - v261) & ((v266 - v261) >> 31);
                  }
                }
              }

              else
              {
                v264 = 0x10000;
              }

              v267 = (*(v246 - 20) * *(v246 - 20) + 0x8000) >> 16;
              v268 = (*(v246 - 16) * *(v246 - 16) + 0x8000) >> 16;
              v269 = v260 - v268;
              v270 = ((8389 * v267 - 25164952) >> 12) & ~((8389 * v267 - 25164952) >> 31);
              v251 = (((4096 - v270) & ((4096 - v270) >> 31)) + v270) * (((*(v246 - 4) << 16) / v262 + 2048) >> 12);
              if (v251 < 0x10000)
              {
                v251 = 0x10000;
              }

              else if (v251 > 0x20000)
              {
                v271 = (v47 * v268 + 0x8000) >> 16;
                if (v268 >= v37)
                {
                  v271 = 0x4000;
                }

                v272 = (v271 * v268 + 0x8000) >> 16;
                if (-v272 > ((v272 - v269) & ((v272 - v269) >> 31)) + v269)
                {
                  v269 = -v272;
                }

                else
                {
                  v269 += (v272 - v269) & ((v272 - v269) >> 31);
                }
              }

              v252 = *v246++;
              v253 = (49152 - v252) & ~((49152 - v252) >> 31);
              v254 = ((((0x8000 - v253) & ((0x8000 - v253) >> 31)) + v253) * ((v264 + 2) >> 2) + 0x4000) >> 15;
              v255 = (v258 + ((v254 * v261 + 0x2000) >> 14)) & ~((v258 + ((v254 * v261 + 0x2000) >> 14)) >> 31);
              if (v255 >= 0xFFFF)
              {
                LOWORD(v255) = -1;
              }

              *(v247 + v250) = v255;
              v256 = v267 + ((((v251 + 2) >> 2) * v269 + 0x2000) >> 14);
              v257 = v256 & ~(v256 >> 31);
              if (v257 >= 0xFFFF)
              {
                LOWORD(v257) = -1;
              }

              *(v248 + v250) = v257;
              v250 += 2;
            }

            while (v250 != 8);
            ++v245;
            v249 += v51;
            v248 += v51;
            v247 += v51;
          }

          while (v245 != 4);
          v61 = v404 + 4;
          v31 += 4;
          v49 = v402 + 2;
          v62 = v403 + 6;
          v415 += 6;
          v422 += 6;
          v421 += 4;
          v416 += 4;
          v420 += 4;
          v417 += 8;
          v418 += 8;
          v419 += 8;
        }

        while (v404 + 4 < v354);
        v30 = v300 + 4;
        v46 = v299 + v292;
        v50 = v304 + v292;
        result = v298 + v292;
        v44 = &v297[v290];
        v35 = v296 + 2 * v289;
        v49 = &v302[4 * v356];
        v48 = &v295[v292 / 2];
        v13 = v287;
        v2 = v288;
        v31 = v293;
        v52 = &v294[v287 / 2];
        v305 += v287;
        v306 = (v306 + v292);
        v14 = v286;
        if (v300 + 4 >= v291)
        {
          return result;
        }
      }
    }

    v273 = 0;
    v274 = v28 + v6 + 6;
    v275 = v29 + v3 + 6;
    v276 = v15 + 10 * v9 + v6 + 6;
    v277 = v15 + 10 * v4 + v3 + 6;
    do
    {
      v278 = 0;
      v279 = v275;
      v280 = v274;
      do
      {
        *(v279 - 2) = *(v14 + 2 * *(v279 - 2));
        *v279 = *(v14 + 2 * *v279);
        *(v279 - 3) = *(v14 + 2 * *(v280 - 2));
        v281 = *v280;
        v280 += 4;
        *(v279 - 1) = *(v14 + 2 * v281);
        v278 += 4;
        v279 += 4;
      }

      while (v278 < 8);
      v282 = 0;
      v283 = v277;
      v284 = v276;
      do
      {
        *(v283 - 2) = *(v14 + 2 * *(v283 - 2));
        *v283 = *(v14 + 2 * *v283);
        *(v283 - 3) = *(v14 + 2 * *(v284 - 2));
        v285 = *v284;
        v284 += 4;
        *(v283 - 1) = *(v14 + 2 * v285);
        v282 += 4;
        v283 += 4;
      }

      while (v282 < 8);
      v273 += 4;
      v274 += v292;
      v275 += v13;
      v276 += v292;
      v277 += v13;
    }

    while (v273 < v291);
  }

  return result;
}

uint64_t sub_23383CE18(uint64_t result, void *a2)
{
  v171 = *(result + 156);
  v174 = a2[223];
  v2 = a2[224];
  v3 = a2[225];
  v4 = a2[226];
  v5 = a2[227];
  v150 = a2[228];
  v6 = a2[231];
  v7 = a2[232];
  v8 = a2[233];
  v9 = a2[235];
  v152 = a2[236];
  v153 = a2[234];
  v10 = a2[237];
  v151 = a2[238];
  v11 = *(result + 2352);
  v12 = *(result + 2360);
  v13 = *(result + 2368);
  v166 = *(result + 2376);
  v165 = *(result + 2380);
  v170 = *(result + 2384);
  v164 = *(result + 2388);
  v163 = *(result + 2392);
  v162 = *(result + 2396);
  v169 = *(result + 2400);
  v161 = *(result + 2404);
  v168 = *(result + 2408);
  v160 = *(result + 2412);
  v14 = *(result + 2336);
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  if (v2)
  {
    if (v174)
    {
      LODWORD(v172) = 0;
      v15 = 0;
      v16 = (v6 + 2 * v3 + v153 * v4);
      v17 = (v7 + 2 * v3 + v153 * v4);
      v18 = (v8 + 2 * v3 + v153 * v4);
      v19 = v4 >> 1;
      v20 = v3 & 0xFFFFFFFFFFFFFFFELL;
      v21 = (v9 + v152 * v19 + 3 * v20);
      v22 = (v10 + v151 * v19 + 2 * v20);
      v149 = v2;
      v167 = v13;
      while (1)
      {
        LODWORD(v25) = 0;
        v26 = (v21 - v152);
        v173 = (v22 - v151);
        v154 = v22;
        v155 = v21;
        v158 = v16;
        v159 = v5;
        v27 = v5;
        v156 = v18;
        v157 = v17;
        do
        {
          if ((v25 & 7) != 0)
          {
            v33 = v15[24];
          }

          else
          {
            if (v171 == 4)
            {
              v34 = *v21;
              v35 = v173;
              if (v172)
              {
                LOWORD(v175) = *v21;
                v71 = v21[3];
                WORD1(v175) = (v71 + v34 + 1) >> 1;
                WORD2(v175) = v71;
                v72 = v21[6];
                WORD3(v175) = (v71 + v72 + 1) >> 1;
                WORD4(v175) = v72;
                v73 = v21[9];
                WORD5(v175) = (v72 + v73 + 1) >> 1;
                WORD6(v175) = v73;
                HIWORD(v175) = (v73 + v21[12] + 1) >> 1;
                LOWORD(v176) = v21[1];
                v74 = v21[4];
                WORD1(v176) = (v74 + v176 + 1) >> 1;
                WORD2(v176) = v74;
                v75 = v21[7];
                WORD3(v176) = (v74 + v75 + 1) >> 1;
                WORD4(v176) = v75;
                v76 = v21[10];
                WORD5(v176) = (v75 + v76 + 1) >> 1;
                WORD6(v176) = v76;
                HIWORD(v176) = (v76 + v21[13] + 1) >> 1;
                LOWORD(v177) = v21[2];
                v77 = v21[5];
                WORD1(v177) = (v77 + v177 + 1) >> 1;
                WORD2(v177) = v77;
                v78 = v21[8];
                WORD3(v177) = (v77 + v78 + 1) >> 1;
                WORD4(v177) = v78;
                v79 = v21[11];
                WORD5(v177) = (v78 + v79 + 1) >> 1;
                WORD6(v177) = v79;
                HIWORD(v177) = (v79 + v21[14] + 1) >> 1;
                LOWORD(v178) = v22[1];
                v33 = v178;
                v80 = v22[3];
                WORD1(v178) = (v80 + v178 + 1) >> 1;
                WORD2(v178) = v80;
                v81 = v22[5];
                WORD3(v178) = (v80 + v81 + 1) >> 1;
                WORD4(v178) = v81;
                v82 = v22[7];
                WORD5(v178) = (v81 + v82 + 1) >> 1;
                WORD6(v178) = v82;
                v52 = (v82 + v22[9] + 1) >> 1;
              }

              else
              {
                v36 = v34 + *v26 + 1;
                LOWORD(v175) = v36 >> 1;
                v37 = v21[3] + v26[3] + 1;
                WORD1(v175) = (v36 + v37) >> 2;
                WORD2(v175) = v37 >> 1;
                v38 = v21[6] + v26[6] + 1;
                WORD3(v175) = (v38 + v37) >> 2;
                WORD4(v175) = v38 >> 1;
                v39 = v21[9] + v26[9] + 1;
                WORD5(v175) = (v39 + v38) >> 2;
                WORD6(v175) = v39 >> 1;
                HIWORD(v175) = (v39 + v21[12] + v26[12] + 1) >> 2;
                v40 = v21[1] + v26[1] + 1;
                LOWORD(v176) = v40 >> 1;
                v41 = v21[4] + v26[4] + 1;
                WORD1(v176) = (v40 + v41) >> 2;
                WORD2(v176) = v41 >> 1;
                v42 = v21[7] + v26[7] + 1;
                WORD3(v176) = (v42 + v41) >> 2;
                WORD4(v176) = v42 >> 1;
                v43 = v21[10] + v26[10] + 1;
                WORD5(v176) = (v43 + v42) >> 2;
                WORD6(v176) = v43 >> 1;
                HIWORD(v176) = (v43 + v21[13] + v26[13] + 1) >> 2;
                v44 = v21[2] + v26[2] + 1;
                LOWORD(v177) = v44 >> 1;
                v45 = v21[5] + v26[5] + 1;
                WORD1(v177) = (v44 + v45) >> 2;
                WORD2(v177) = v45 >> 1;
                v46 = v21[8] + v26[8] + 1;
                WORD3(v177) = (v46 + v45) >> 2;
                WORD4(v177) = v46 >> 1;
                v47 = v21[11] + v26[11] + 1;
                WORD5(v177) = (v47 + v46) >> 2;
                WORD6(v177) = v47 >> 1;
                HIWORD(v177) = (v47 + v21[14] + v26[14] + 1) >> 2;
                v48 = v22[1] + v173[1] + 1;
                v33 = v48 >> 1;
                LOWORD(v178) = v48 >> 1;
                v49 = v22[3] + v173[3] + 1;
                WORD1(v178) = (v48 + v49) >> 2;
                WORD2(v178) = v49 >> 1;
                v50 = v22[5] + v173[5] + 1;
                WORD3(v178) = (v50 + v49) >> 2;
                WORD4(v178) = v50 >> 1;
                v51 = v22[7] + v173[7] + 1;
                WORD5(v178) = (v51 + v50) >> 2;
                WORD6(v178) = v51 >> 1;
                v52 = (v51 + v22[9] + v173[9] + 1) >> 2;
              }
            }

            else
            {
              v53 = *(v21 - 3);
              v35 = v173;
              if (v172)
              {
                v83 = *v21;
                LOWORD(v175) = (v83 + v53 + 1) >> 1;
                WORD1(v175) = v83;
                v84 = v21[3];
                WORD2(v175) = (v83 + v84 + 1) >> 1;
                WORD3(v175) = v84;
                v85 = v21[6];
                WORD4(v175) = (v84 + v85 + 1) >> 1;
                WORD5(v175) = v85;
                v86 = v21[9];
                WORD6(v175) = (v85 + v86 + 1) >> 1;
                HIWORD(v175) = v86;
                v87 = v21[1];
                LOWORD(v176) = (v87 + *(v21 - 2) + 1) >> 1;
                WORD1(v176) = v87;
                v88 = v21[4];
                WORD2(v176) = (v87 + v88 + 1) >> 1;
                WORD3(v176) = v88;
                v89 = v21[7];
                WORD4(v176) = (v88 + v89 + 1) >> 1;
                WORD5(v176) = v89;
                v90 = v21[10];
                WORD6(v176) = (v89 + v90 + 1) >> 1;
                HIWORD(v176) = v90;
                v91 = v21[2];
                LOWORD(v177) = (v91 + *(v21 - 1) + 1) >> 1;
                WORD1(v177) = v91;
                v92 = v21[5];
                WORD2(v177) = (v91 + v92 + 1) >> 1;
                WORD3(v177) = v92;
                v93 = v21[8];
                WORD4(v177) = (v92 + v93 + 1) >> 1;
                WORD5(v177) = v93;
                v94 = v21[11];
                WORD6(v177) = (v93 + v94 + 1) >> 1;
                HIWORD(v177) = v94;
                v95 = v22[1];
                v33 = (v95 + *(v22 - 1) + 1) >> 1;
                LOWORD(v178) = v33;
                WORD1(v178) = v95;
                v96 = v22[3];
                WORD2(v178) = (v95 + v96 + 1) >> 1;
                WORD3(v178) = v96;
                v97 = v22[5];
                WORD4(v178) = (v96 + v97 + 1) >> 1;
                WORD5(v178) = v97;
                v52 = v22[7];
                WORD6(v178) = (v97 + v52 + 1) >> 1;
              }

              else
              {
                v54 = *v21 + *v26 + 1;
                LOWORD(v175) = (v53 + *(v26 - 3) + v54 + 1) >> 2;
                WORD1(v175) = v54 >> 1;
                v55 = v21[3] + v26[3] + 1;
                WORD2(v175) = (v55 + v54) >> 2;
                WORD3(v175) = v55 >> 1;
                v56 = v21[6] + v26[6] + 1;
                WORD4(v175) = (v56 + v55) >> 2;
                WORD5(v175) = v56 >> 1;
                v57 = v21[9] + v26[9] + 1;
                WORD6(v175) = (v57 + v56) >> 2;
                HIWORD(v175) = v57 >> 1;
                v58 = v21[1] + v26[1] + 1;
                LOWORD(v176) = (*(v21 - 2) + *(v26 - 2) + v58 + 1) >> 2;
                WORD1(v176) = v58 >> 1;
                v59 = v21[4] + v26[4] + 1;
                WORD2(v176) = (v59 + v58) >> 2;
                WORD3(v176) = v59 >> 1;
                v60 = v21[7] + v26[7] + 1;
                WORD4(v176) = (v60 + v59) >> 2;
                WORD5(v176) = v60 >> 1;
                v61 = v21[10] + v26[10] + 1;
                WORD6(v176) = (v61 + v60) >> 2;
                HIWORD(v176) = v61 >> 1;
                v62 = v21[2] + v26[2] + 1;
                LOWORD(v177) = (*(v21 - 1) + *(v26 - 1) + v62 + 1) >> 2;
                WORD1(v177) = v62 >> 1;
                v63 = v21[5] + v26[5] + 1;
                WORD2(v177) = (v63 + v62) >> 2;
                WORD3(v177) = v63 >> 1;
                v64 = v21[8] + v26[8] + 1;
                WORD4(v177) = (v64 + v63) >> 2;
                WORD5(v177) = v64 >> 1;
                v65 = v21[11] + v26[11] + 1;
                WORD6(v177) = (v65 + v64) >> 2;
                HIWORD(v177) = v65 >> 1;
                v66 = v22[1] + v173[1] + 1;
                v67 = *(v22 - 1) + *(v173 - 1) + v66 + 1;
                v33 = (v67 >> 2);
                LOWORD(v178) = v67 >> 2;
                WORD1(v178) = v66 >> 1;
                v68 = v22[3] + v173[3] + 1;
                WORD2(v178) = (v68 + v66) >> 2;
                WORD3(v178) = v68 >> 1;
                v69 = v22[5] + v173[5] + 1;
                WORD4(v178) = (v69 + v68) >> 2;
                WORD5(v178) = v69 >> 1;
                v70 = v22[7] + v173[7] + 1;
                WORD6(v178) = (v70 + v69) >> 2;
                v52 = v70 >> 1;
              }
            }

            v21 += 12;
            HIWORD(v178) = v52;
            v26 += 12;
            v22 += 8;
            v173 = v35 + 8;
            v15 = &v175;
          }

          v98 = *v17;
          v99 = (2417 * v98 + 1229 * *v16 + 450 * *v18 + 2048) >> 12;
          v100 = *v15;
          v101 = v15[8];
          v102 = v15[16];
          v103 = (2417 * v101 + 1229 * v100 + 450 * v102 + 2048) >> 12;
          if (v33 >> 4 > 0x270)
          {
            goto LABEL_38;
          }

          v104 = *(v13 + 2 * *v15);
          v105 = *(v13 + 2 * v15[8]);
          v106 = *(v13 + 2 * v15[16]);
          v107 = (v105 - v104) & ((v105 - v104) >> 31);
          v108 = v107 + v104;
          v109 = v107 - v105;
          v110 = ((v106 - v108) & ((v106 - v108) >> 31)) + v108;
          if (v106 > v108)
          {
            v108 = *(v13 + 2 * v15[16]);
          }

          v111 = v108 - ((v109 + v108) & ((v109 + v108) >> 31));
          v112 = 2 * (v111 - v110) - v110;
          if (v112 < 1)
          {
LABEL_38:
            v115 = ((0x80000u >> *(v12 + v103)) + (((1 << (*(v12 + v103) - 1)) + *(v11 + 4 * v103)) >> *(v12 + v103)) * v99) >> (20 - *(v12 + v103));
            goto LABEL_39;
          }

          if (v111 == v106)
          {
            if (v100 < v170)
            {
              goto LABEL_38;
            }

            v113 = ((v100 - v170) * v166) >> v165;
            if (v164 <= v100)
            {
              v113 = 0x10000;
            }

            v98 = *v16;
            v114 = *v15;
            if (v98 < 0x100)
            {
              v113 = (v113 * v98) >> 8;
            }

            if (v112 < v111 >> 1)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v101 < v169)
            {
              goto LABEL_38;
            }

            v113 = ((v101 - v169) * v163) >> v162;
            if (v161 <= v101)
            {
              v113 = 0x10000;
            }

            v114 = v15[8];
            if (v98 < 0x100)
            {
              v113 = (v113 * v98) >> 8;
            }

            if (v112 < v111 >> 1)
            {
LABEL_87:
              v113 = ((v112 << 11) / v111 * v113 + 512) >> 10;
            }
          }

          v132 = (v113 * v168 + 0x8000) >> 16;
          v133 = v132 * (v98 - v99) + 2048;
          v134 = v103 + ((v132 * (v114 - v103) + 2048) >> 12);
          v135 = *(v11 + 4 * v134);
          LOBYTE(v134) = *(v12 + v134);
          v136 = 20 - v134;
          v137 = (0x80000u >> v134) + (v99 + (v133 >> 12)) * (((1 << (v134 - 1)) + v135) >> v134);
          v138 = *(v11 + 4 * v103);
          v115 = v137 >> v136;
          v139 = ((0x80000u >> *(v12 + v103)) + (((1 << (*(v12 + v103) - 1)) + v138) >> *(v12 + v103)) * v99) >> (20 - *(v12 + v103));
          if (v139 == v137 >> v136)
          {
            v13 = v167;
          }

          else
          {
            v140 = ((0x80000u >> *(v12 + v103)) + (((1 << (*(v12 + v103) - 1)) + v138) >> *(v12 + v103)) * v99) >> (20 - *(v12 + v103));
            if (v139 > 65999)
            {
              do
              {
                v115 = (v115 + 1) >> 1;
                v141 = v140 > 0x2039E;
                v140 = (v140 + 1) >> 1;
              }

              while (v141);
            }

            v142 = ((0x80000u >> *(v12 + v140)) + ((*(v11 + 4 * v140) + (1 << *(v12 + v140) >> 1)) >> *(v12 + v140)) * v115) >> (20 - *(v12 + v140));
            v144 = v142 - 4096;
            v143 = (v142 - 4096) < 0;
            v145 = 4096 - v142;
            if (!v143)
            {
              v145 = v144;
            }

            v115 = ((((((v160 - v145) & ((v160 - v145) >> 31)) + v145) ^ (v144 >> 31)) + (v144 >> 31) + 4096) * v139 + 2048) >> 12;
            v13 = v167;
          }

LABEL_39:
          v116 = (v115 * v102 + 2048) >> 14;
          v117 = ((v115 * v100 + 2048) >> 14) * *(result + 2288);
          v28 = v117 >> 10;
          v118 = ((v115 * v101 + 2048) >> 14) * *(result + 2304);
          v29 = v118 >> 10;
          v119 = v116 * *(result + 2320);
          v30 = v119 >> 10;
          if (((v117 >> 10) | (v118 >> 10) | (v119 >> 10)) < 0x10000)
          {
            goto LABEL_14;
          }

          if (v29 >= v28)
          {
            v120 = v117 >> 10;
          }

          else
          {
            v120 = v118 >> 10;
          }

          if (v29 <= v28)
          {
            v121 = v117 >> 10;
          }

          else
          {
            v121 = v118 >> 10;
          }

          if (v30 >= v120)
          {
            v122 = v120;
          }

          else
          {
            v122 = v119 >> 10;
          }

          if (v30 <= v121)
          {
            v123 = v121;
          }

          else
          {
            v123 = v119 >> 10;
          }

          if ((v123 & 0x80000000) == 0 && v122 < 0x10000)
          {
            if (v117 >= 0)
            {
              v124 = 0xFFFF;
            }

            else
            {
              v124 = 0;
            }

            if (!HIWORD(v28))
            {
              v124 = v117 >> 10;
            }

            if (v118 >= 0)
            {
              v125 = 0xFFFF;
            }

            else
            {
              v125 = 0;
            }

            if (!HIWORD(v29))
            {
              v125 = v118 >> 10;
            }

            if (v119 >= 0)
            {
              v126 = 0xFFFF;
            }

            else
            {
              v126 = 0;
            }

            if (!HIWORD(v30))
            {
              v126 = v30;
            }

            v127 = v125 + 341 * (v124 + v125 + v126);
            v128 = (v127 + 512) >> 10;
            if (v127 >= 0x1FFFA00)
            {
              v129 = v128 + 2;
            }

            else
            {
              v129 = 65537 - v128;
            }

            v130 = ((v129 >> 2) * v128 + 0x2000) >> 14;
            if (v123 < 0x10000)
            {
              v131 = 4096;
              if (v122 < 0)
              {
LABEL_79:
                if (v131 >= ((-4096 * v130) / (v122 - v130)))
                {
                  v131 = ((-4096 * v130) / (v122 - v130));
                }
              }
            }

            else
            {
              if (((268431360 - (v130 << 12)) / (v123 - v130)) >= 4096)
              {
                v131 = 4096;
              }

              else
              {
                v131 = ((268431360 - (v130 << 12)) / (v123 - v130));
              }

              if (v122 < 0)
              {
                goto LABEL_79;
              }
            }

            v28 = v130 + ((v131 * (v28 - v130) + 2048) >> 12);
            v29 = v130 + ((v131 * (v29 - v130) + 2048) >> 12);
            v30 = v130 + ((v131 * (v30 - v130) + 2048) >> 12);
            goto LABEL_14;
          }

          if (v123 >= 0)
          {
            v28 = 0xFFFF;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;
          v30 = v28;
LABEL_14:
          v31 = *(v14 + 2 * v29);
          v32 = *(v14 + 2 * v30);
          *v27 = *(v14 + 2 * v28);
          ++v15;
          v25 = (v25 + 1);
          ++v16;
          v27[1] = v31;
          v27[2] = v32;
          ++v17;
          ++v18;
          v27 += 3;
        }

        while (v174 > v25);
        v23 = v151;
        if ((v172 & 1) == 0)
        {
          v23 = 0;
        }

        v22 = (v154 + v23);
        v24 = v152;
        if ((v172 & 1) == 0)
        {
          v24 = 0;
        }

        v21 = (v155 + v24);
        v16 = (v158 + v153);
        v17 = (v157 + v153);
        v18 = (v156 + v153);
        v5 = (v159 + v150);
        v172 = (v172 + 1);
        if (v149 <= v172)
        {
          return result;
        }
      }
    }

    if (v2 <= 1)
    {
      v146 = 0;
LABEL_97:
      v147 = v146 + 1;
      do
      {
        v141 = v2 > v147++;
      }

      while (v141);
      return result;
    }

    v146 = 0;
    if (!v2)
    {
      goto LABEL_97;
    }

    if ((v2 - 1) >> 32)
    {
      goto LABEL_97;
    }

    v146 = v2 & 0xFFFFFFFE;
    v148 = v2 & 0xFFFFFFFE;
    do
    {
      v148 -= 2;
    }

    while (v148);
    if (v146 != v2)
    {
      goto LABEL_97;
    }
  }

  return result;
}

uint64_t sub_23383DD6C(uint64_t result, void *a2)
{
  v166 = *(result + 156);
  v169 = a2[223];
  v2 = a2[224];
  v3 = a2[225];
  v4 = a2[226];
  v5 = a2[227];
  v145 = a2[228];
  v6 = a2[231];
  v7 = a2[232];
  v8 = a2[233];
  v148 = a2[234];
  v9 = a2[235];
  v147 = a2[236];
  v10 = a2[237];
  v146 = a2[238];
  v11 = *(result + 2352);
  v12 = *(result + 2360);
  v13 = *(result + 2368);
  v161 = *(result + 2376);
  v160 = *(result + 2380);
  v165 = *(result + 2384);
  v159 = *(result + 2388);
  v158 = *(result + 2392);
  v157 = *(result + 2396);
  v164 = *(result + 2400);
  v156 = *(result + 2404);
  v163 = *(result + 2408);
  v155 = *(result + 2412);
  v14 = *(result + 2336);
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  if (v2)
  {
    if (v169)
    {
      LODWORD(v167) = 0;
      v15 = 0;
      v16 = (v6 + 2 * v3 + v148 * v4);
      v17 = (v7 + 2 * v3 + v148 * v4);
      v18 = (v8 + 2 * v3 + v148 * v4);
      v19 = v4 >> 1;
      v20 = v3 & 0xFFFFFFFFFFFFFFFELL;
      v21 = v9 + v147 * v19 + 3 * v20;
      v22 = (v10 + v146 * v19 + 2 * v20);
      v144 = v2;
      v162 = v13;
      while (1)
      {
        LODWORD(v25) = 0;
        v26 = (v21 - v147);
        v168 = (v22 - v146);
        v149 = v22;
        v150 = v21;
        v27 = v21;
        v153 = v16;
        v154 = v5;
        v28 = v5;
        v151 = v18;
        v152 = v17;
        do
        {
          if ((v25 & 7) != 0)
          {
            v33 = v15[24];
          }

          else
          {
            if (v166 == 4)
            {
              v34 = *v27;
              v35 = v168;
              if (v167)
              {
                LOWORD(v170) = *v27;
                v71 = v27[3];
                WORD1(v170) = (v71 + v34 + 1) >> 1;
                WORD2(v170) = v71;
                v72 = v27[6];
                WORD3(v170) = (v71 + v72 + 1) >> 1;
                WORD4(v170) = v72;
                v73 = v27[9];
                WORD5(v170) = (v72 + v73 + 1) >> 1;
                WORD6(v170) = v73;
                HIWORD(v170) = (v73 + v27[12] + 1) >> 1;
                LOWORD(v171) = v27[1];
                v74 = v27[4];
                WORD1(v171) = (v74 + v171 + 1) >> 1;
                WORD2(v171) = v74;
                v75 = v27[7];
                WORD3(v171) = (v74 + v75 + 1) >> 1;
                WORD4(v171) = v75;
                v76 = v27[10];
                WORD5(v171) = (v75 + v76 + 1) >> 1;
                WORD6(v171) = v76;
                HIWORD(v171) = (v76 + v27[13] + 1) >> 1;
                LOWORD(v172) = v27[2];
                v77 = v27[5];
                WORD1(v172) = (v77 + v172 + 1) >> 1;
                WORD2(v172) = v77;
                v78 = v27[8];
                WORD3(v172) = (v77 + v78 + 1) >> 1;
                WORD4(v172) = v78;
                v79 = v27[11];
                WORD5(v172) = (v78 + v79 + 1) >> 1;
                WORD6(v172) = v79;
                HIWORD(v172) = (v79 + v27[14] + 1) >> 1;
                LOWORD(v173) = v22[1];
                v33 = v173;
                v80 = v22[3];
                WORD1(v173) = (v80 + v173 + 1) >> 1;
                WORD2(v173) = v80;
                v81 = v22[5];
                WORD3(v173) = (v80 + v81 + 1) >> 1;
                WORD4(v173) = v81;
                v82 = v22[7];
                WORD5(v173) = (v81 + v82 + 1) >> 1;
                WORD6(v173) = v82;
                v52 = (v82 + v22[9] + 1) >> 1;
              }

              else
              {
                v36 = v34 + *v26 + 1;
                LOWORD(v170) = v36 >> 1;
                v37 = v27[3] + v26[3] + 1;
                WORD1(v170) = (v36 + v37) >> 2;
                WORD2(v170) = v37 >> 1;
                v38 = v27[6] + v26[6] + 1;
                WORD3(v170) = (v38 + v37) >> 2;
                WORD4(v170) = v38 >> 1;
                v39 = v27[9] + v26[9] + 1;
                WORD5(v170) = (v39 + v38) >> 2;
                WORD6(v170) = v39 >> 1;
                HIWORD(v170) = (v39 + v27[12] + v26[12] + 1) >> 2;
                v40 = v27[1] + v26[1] + 1;
                LOWORD(v171) = v40 >> 1;
                v41 = v27[4] + v26[4] + 1;
                WORD1(v171) = (v40 + v41) >> 2;
                WORD2(v171) = v41 >> 1;
                v42 = v27[7] + v26[7] + 1;
                WORD3(v171) = (v42 + v41) >> 2;
                WORD4(v171) = v42 >> 1;
                v43 = v27[10] + v26[10] + 1;
                WORD5(v171) = (v43 + v42) >> 2;
                WORD6(v171) = v43 >> 1;
                HIWORD(v171) = (v43 + v27[13] + v26[13] + 1) >> 2;
                v44 = v27[2] + v26[2] + 1;
                LOWORD(v172) = v44 >> 1;
                v45 = v27[5] + v26[5] + 1;
                WORD1(v172) = (v44 + v45) >> 2;
                WORD2(v172) = v45 >> 1;
                v46 = v27[8] + v26[8] + 1;
                WORD3(v172) = (v46 + v45) >> 2;
                WORD4(v172) = v46 >> 1;
                v47 = v27[11] + v26[11] + 1;
                WORD5(v172) = (v47 + v46) >> 2;
                WORD6(v172) = v47 >> 1;
                HIWORD(v172) = (v47 + v27[14] + v26[14] + 1) >> 2;
                v48 = v22[1] + v168[1] + 1;
                v33 = v48 >> 1;
                LOWORD(v173) = v48 >> 1;
                v49 = v22[3] + v168[3] + 1;
                WORD1(v173) = (v48 + v49) >> 2;
                WORD2(v173) = v49 >> 1;
                v50 = v22[5] + v168[5] + 1;
                WORD3(v173) = (v50 + v49) >> 2;
                WORD4(v173) = v50 >> 1;
                v51 = v22[7] + v168[7] + 1;
                WORD5(v173) = (v51 + v50) >> 2;
                WORD6(v173) = v51 >> 1;
                v52 = (v51 + v22[9] + v168[9] + 1) >> 2;
              }
            }

            else
            {
              v53 = *(v27 - 3);
              v35 = v168;
              if (v167)
              {
                v83 = *v27;
                LOWORD(v170) = (v83 + v53 + 1) >> 1;
                WORD1(v170) = v83;
                v84 = v27[3];
                WORD2(v170) = (v83 + v84 + 1) >> 1;
                WORD3(v170) = v84;
                v85 = v27[6];
                WORD4(v170) = (v84 + v85 + 1) >> 1;
                WORD5(v170) = v85;
                v86 = v27[9];
                WORD6(v170) = (v85 + v86 + 1) >> 1;
                HIWORD(v170) = v86;
                v87 = v27[1];
                LOWORD(v171) = (v87 + *(v27 - 2) + 1) >> 1;
                WORD1(v171) = v87;
                v88 = v27[4];
                WORD2(v171) = (v87 + v88 + 1) >> 1;
                WORD3(v171) = v88;
                v89 = v27[7];
                WORD4(v171) = (v88 + v89 + 1) >> 1;
                WORD5(v171) = v89;
                v90 = v27[10];
                WORD6(v171) = (v89 + v90 + 1) >> 1;
                HIWORD(v171) = v90;
                v91 = v27[2];
                LOWORD(v172) = (v91 + *(v27 - 1) + 1) >> 1;
                WORD1(v172) = v91;
                v92 = v27[5];
                WORD2(v172) = (v91 + v92 + 1) >> 1;
                WORD3(v172) = v92;
                v93 = v27[8];
                WORD4(v172) = (v92 + v93 + 1) >> 1;
                WORD5(v172) = v93;
                v94 = v27[11];
                WORD6(v172) = (v93 + v94 + 1) >> 1;
                HIWORD(v172) = v94;
                v95 = v22[1];
                v33 = (v95 + *(v22 - 1) + 1) >> 1;
                LOWORD(v173) = v33;
                WORD1(v173) = v95;
                v96 = v22[3];
                WORD2(v173) = (v95 + v96 + 1) >> 1;
                WORD3(v173) = v96;
                v97 = v22[5];
                WORD4(v173) = (v96 + v97 + 1) >> 1;
                WORD5(v173) = v97;
                v52 = v22[7];
                WORD6(v173) = (v97 + v52 + 1) >> 1;
              }

              else
              {
                v54 = *v27 + *v26 + 1;
                LOWORD(v170) = (v53 + *(v26 - 3) + v54 + 1) >> 2;
                WORD1(v170) = v54 >> 1;
                v55 = v27[3] + v26[3] + 1;
                WORD2(v170) = (v55 + v54) >> 2;
                WORD3(v170) = v55 >> 1;
                v56 = v27[6] + v26[6] + 1;
                WORD4(v170) = (v56 + v55) >> 2;
                WORD5(v170) = v56 >> 1;
                v57 = v27[9] + v26[9] + 1;
                WORD6(v170) = (v57 + v56) >> 2;
                HIWORD(v170) = v57 >> 1;
                v58 = v27[1] + v26[1] + 1;
                LOWORD(v171) = (*(v27 - 2) + *(v26 - 2) + v58 + 1) >> 2;
                WORD1(v171) = v58 >> 1;
                v59 = v27[4] + v26[4] + 1;
                WORD2(v171) = (v59 + v58) >> 2;
                WORD3(v171) = v59 >> 1;
                v60 = v27[7] + v26[7] + 1;
                WORD4(v171) = (v60 + v59) >> 2;
                WORD5(v171) = v60 >> 1;
                v61 = v27[10] + v26[10] + 1;
                WORD6(v171) = (v61 + v60) >> 2;
                HIWORD(v171) = v61 >> 1;
                v62 = v27[2] + v26[2] + 1;
                LOWORD(v172) = (*(v27 - 1) + *(v26 - 1) + v62 + 1) >> 2;
                WORD1(v172) = v62 >> 1;
                v63 = v27[5] + v26[5] + 1;
                WORD2(v172) = (v63 + v62) >> 2;
                WORD3(v172) = v63 >> 1;
                v64 = v27[8] + v26[8] + 1;
                WORD4(v172) = (v64 + v63) >> 2;
                WORD5(v172) = v64 >> 1;
                v65 = v27[11] + v26[11] + 1;
                WORD6(v172) = (v65 + v64) >> 2;
                HIWORD(v172) = v65 >> 1;
                v66 = v22[1] + v168[1] + 1;
                v67 = *(v22 - 1) + *(v168 - 1) + v66 + 1;
                v33 = (v67 >> 2);
                LOWORD(v173) = v67 >> 2;
                WORD1(v173) = v66 >> 1;
                v68 = v22[3] + v168[3] + 1;
                WORD2(v173) = (v68 + v66) >> 2;
                WORD3(v173) = v68 >> 1;
                v69 = v22[5] + v168[5] + 1;
                WORD4(v173) = (v69 + v68) >> 2;
                WORD5(v173) = v69 >> 1;
                v70 = v22[7] + v168[7] + 1;
                WORD6(v173) = (v70 + v69) >> 2;
                v52 = v70 >> 1;
              }
            }

            v27 += 12;
            HIWORD(v173) = v52;
            v26 += 12;
            v22 += 8;
            v168 = v35 + 8;
            v15 = &v170;
          }

          v98 = *v17;
          v99 = (2417 * v98 + 1229 * *v16 + 450 * *v18 + 2048) >> 12;
          v100 = *v15;
          v101 = v15[8];
          v102 = v15[16];
          v103 = (2417 * v101 + 1229 * v100 + 450 * v102 + 2048) >> 12;
          if (v33 >> 4 > 0x270)
          {
            goto LABEL_36;
          }

          v104 = *(v13 + 2 * *v15);
          v105 = *(v13 + 2 * v15[8]);
          v106 = *(v13 + 2 * v15[16]);
          v107 = (v105 - v104) & ((v105 - v104) >> 31);
          v108 = v107 + v104;
          v109 = v107 - v105;
          v110 = ((v106 - v108) & ((v106 - v108) >> 31)) + v108;
          if (v106 > v108)
          {
            v108 = *(v13 + 2 * v15[16]);
          }

          v111 = v108 - ((v109 + v108) & ((v109 + v108) >> 31));
          v112 = 2 * (v111 - v110) - v110;
          if (v112 < 1)
          {
LABEL_36:
            v115 = ((0x80000u >> *(v12 + v103)) + (((1 << (*(v12 + v103) - 1)) + *(v11 + 4 * v103)) >> *(v12 + v103)) * v99) >> (20 - *(v12 + v103));
            goto LABEL_37;
          }

          if (v111 == v106)
          {
            if (v100 < v165)
            {
              goto LABEL_36;
            }

            if (v159 > v100)
            {
              v113 = ((v100 - v165) * v161) >> v160;
            }

            else
            {
              v113 = 0x10000;
            }

            v98 = *v16;
            v114 = *v15;
          }

          else
          {
            if (v101 < v164)
            {
              goto LABEL_36;
            }

            if (v156 > v101)
            {
              v113 = ((v101 - v164) * v158) >> v157;
            }

            else
            {
              v113 = 0x10000;
            }

            v114 = v15[8];
          }

          if (v98 < 0x100)
          {
            v113 = (v113 * v98) >> 8;
          }

          if (v112 < v111 >> 1)
          {
            v113 = ((v112 << 11) / v111 * v113 + 512) >> 10;
          }

          v131 = (v113 * v163 + 0x8000) >> 16;
          v132 = v131 * (v98 - v99) + 2048;
          v133 = v103 + ((v131 * (v114 - v103) + 2048) >> 12);
          v115 = ((0x80000u >> *(v12 + v133)) + (v99 + (v132 >> 12)) * (((1 << (*(v12 + v133) - 1)) + *(v11 + 4 * v133)) >> *(v12 + v133))) >> (20 - *(v12 + v133));
          v134 = ((0x80000u >> *(v12 + v103)) + (((1 << (*(v12 + v103) - 1)) + *(v11 + 4 * v103)) >> *(v12 + v103)) * v99) >> (20 - *(v12 + v103));
          if (v134 == v115)
          {
            v13 = v162;
          }

          else
          {
            v135 = ((0x80000u >> *(v12 + v103)) + (((1 << (*(v12 + v103) - 1)) + *(v11 + 4 * v103)) >> *(v12 + v103)) * v99) >> (20 - *(v12 + v103));
            if (v134 > 65999)
            {
              do
              {
                v115 = (v115 + 1) >> 1;
                v136 = v135 > 0x2039E;
                v135 = (v135 + 1) >> 1;
              }

              while (v136);
            }

            v137 = ((0x80000u >> *(v12 + v135)) + ((*(v11 + 4 * v135) + (1 << *(v12 + v135) >> 1)) >> *(v12 + v135)) * v115) >> (20 - *(v12 + v135));
            v139 = v137 - 4096;
            v138 = (v137 - 4096) < 0;
            v140 = 4096 - v137;
            if (!v138)
            {
              v140 = v139;
            }

            v115 = ((((((v155 - v140) & ((v155 - v140) >> 31)) + v140) ^ (v139 >> 31)) + (v139 >> 31) + 4096) * v134 + 2048) >> 12;
            v13 = v162;
          }

LABEL_37:
          v116 = (v115 * v100 + 2048) >> 14;
          v117 = (v115 * v101 + 2048) >> 14;
          v118 = (v115 * v102 + 2048) >> 14;
          v30 = vadd_s32(vsra_n_s32(vsra_n_s32(vshr_n_s32(vmul_s32(*(result + 2300), vdup_n_s32(v117)), 0xAuLL), vmul_s32(vdup_n_s32(v116), *(result + 2288)), 0xAuLL), vmul_s32(*(result + 2312), vdup_n_s32(v118)), 0xAuLL), *(result + 2324));
          v29 = ((*(result + 2308) * v117) >> 10) + ((v116 * *(result + 2296)) >> 10) + ((*(result + 2320) * v118) >> 10) + *(result + 2332);
          v119 = v30.i32[0];
          if ((v30.i32[1] | v30.i32[0] | v29) < 0x10000)
          {
            goto LABEL_14;
          }

          if (v30.i32[1] >= v30.i32[0])
          {
            v120 = v30.i32[0];
          }

          else
          {
            v120 = v30.i32[1];
          }

          if (v30.i32[1] > v30.i32[0])
          {
            v119 = v30.i32[1];
          }

          if (v29 >= v120)
          {
            v121 = v120;
          }

          else
          {
            v121 = v29;
          }

          if (v29 <= v119)
          {
            v122 = v119;
          }

          else
          {
            v122 = v29;
          }

          if ((v122 & 0x80000000) == 0 && v121 < 0x10000)
          {
            v123 = vmin_s32(vmax_s32(v30, 0), 0xFFFF0000FFFFLL);
            v124 = v29 & ~(v29 >> 31);
            if (v124 >= 0xFFFF)
            {
              v124 = 0xFFFF;
            }

            v125 = v123.i32[1] + 341 * (v123.i32[1] + v123.i32[0] + v124);
            v126 = (v125 + 512) >> 10;
            if (v125 >= 0x1FFFA00)
            {
              v127 = v126 + 2;
            }

            else
            {
              v127 = 65537 - v126;
            }

            v128 = ((v127 >> 2) * v126 + 0x2000) >> 14;
            if (v122 < 0x10000)
            {
              v129 = 4096;
              if (v121 < 0)
              {
LABEL_63:
                if (v129 >= ((-4096 * v128) / (v121 - v128)))
                {
                  v129 = ((-4096 * v128) / (v121 - v128));
                }
              }
            }

            else
            {
              if (((268431360 - (v128 << 12)) / (v122 - v128)) >= 4096)
              {
                v129 = 4096;
              }

              else
              {
                v129 = ((268431360 - (v128 << 12)) / (v122 - v128));
              }

              if (v121 < 0)
              {
                goto LABEL_63;
              }
            }

            v130 = vdup_n_s32(v128);
            v29 = v128 + ((v129 * (v29 - v128) + 2048) >> 12);
            v30 = vsra_n_s32(v130, vmla_s32(0x80000000800, vdup_n_s32(v129), vsub_s32(v30, v130)), 0xCuLL);
            goto LABEL_14;
          }

          if (v122 >= 0)
          {
            v29 = 0xFFFF;
          }

          else
          {
            v29 = 0;
          }

          v30 = vdup_n_s32(v29);
LABEL_14:
          v31 = *(v14 + 2 * v30.i32[1]);
          v32 = *(v14 + 2 * v29);
          *v28 = *(v14 + 2 * v30.i32[0]);
          ++v15;
          v25 = (v25 + 1);
          ++v16;
          v28[1] = v31;
          v28[2] = v32;
          ++v17;
          ++v18;
          v28 += 3;
        }

        while (v169 > v25);
        v23 = v146;
        if ((v167 & 1) == 0)
        {
          v23 = 0;
        }

        v22 = (v149 + v23);
        v24 = v147;
        if ((v167 & 1) == 0)
        {
          v24 = 0;
        }

        v21 = v150 + v24;
        v16 = (v153 + v148);
        v17 = (v152 + v148);
        v18 = (v151 + v148);
        v5 = (v154 + v145);
        v167 = (v167 + 1);
        if (v144 <= v167)
        {
          return result;
        }
      }
    }

    if (v2 <= 1)
    {
      v141 = 0;
LABEL_83:
      v142 = v141 + 1;
      do
      {
        v136 = v2 > v142++;
      }

      while (v136);
      return result;
    }

    v141 = 0;
    if (!v2)
    {
      goto LABEL_83;
    }

    if ((v2 - 1) >> 32)
    {
      goto LABEL_83;
    }

    v141 = v2 & 0xFFFFFFFE;
    v143 = v2 & 0xFFFFFFFE;
    do
    {
      v143 -= 2;
    }

    while (v143);
    if (v141 != v2)
    {
      goto LABEL_83;
    }
  }

  return result;
}

uint64_t sub_23383ECFC(uint64_t result, void *a2)
{
  v2 = a2[224];
  if (v2)
  {
    v3 = a2[223];
    if (v3)
    {
      LODWORD(v4) = 0;
      v5 = a2[225];
      v6 = a2[227];
      v46 = a2[228];
      v7 = a2[231];
      v8 = a2[232];
      v9 = a2[233];
      v10 = a2[234];
      v11 = v10 * a2[226];
      v12 = 2 * v5;
      v13 = v7 + 2 * v5 + v11;
      v14 = v8 + v12 + v11;
      v15 = v9 + v12 + v11;
      v16 = *(result + 2336);
      v17 = *(result + 2288);
      v18 = *(result + 2304);
      result = *(result + 2320);
      while (1)
      {
        v19 = 0;
        v20 = v6;
        do
        {
          v27 = v17 * (*(v13 + 2 * v19) >> 2);
          v21 = v27 >> 10;
          v28 = v18 * (*(v14 + 2 * v19) >> 2);
          v22 = v28 >> 10;
          v29 = result * (*(v15 + 2 * v19) >> 2);
          v23 = v29 >> 10;
          if (((v28 >> 10) | (v27 >> 10) | (v29 >> 10)) < 0x10000)
          {
            goto LABEL_10;
          }

          if (v22 >= v21)
          {
            v30 = v27 >> 10;
          }

          else
          {
            v30 = v28 >> 10;
          }

          if (v22 <= v21)
          {
            v31 = v27 >> 10;
          }

          else
          {
            v31 = v28 >> 10;
          }

          if (v23 < v30)
          {
            v30 = v29 >> 10;
          }

          if (v23 > v31)
          {
            v31 = v29 >> 10;
          }

          if ((v31 & 0x80000000) == 0 && v30 < 0x10000)
          {
            if (v27 >= 0)
            {
              v32 = 0xFFFF;
            }

            else
            {
              v32 = 0;
            }

            if (HIWORD(v21))
            {
              v33 = v32;
            }

            else
            {
              v33 = v21;
            }

            if (v28 >= 0)
            {
              v34 = 0xFFFF;
            }

            else
            {
              v34 = 0;
            }

            if (!HIWORD(v22))
            {
              v34 = v22;
            }

            if (v29 >= 0)
            {
              v35 = 0xFFFF;
            }

            else
            {
              v35 = 0;
            }

            if (!HIWORD(v23))
            {
              v35 = v23;
            }

            v36 = v34 + 341 * (v34 + v33 + v35);
            v37 = (v36 + 512) >> 10;
            if (v36 >= 0x1FFFA00)
            {
              v38 = v37 + 2;
            }

            else
            {
              v38 = 65537 - v37;
            }

            v39 = ((v38 >> 2) * v37 + 0x2000) >> 14;
            if (v31 < 0x10000)
            {
              v40 = 4096;
              if (v30 < 0)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (((268431360 - (v39 << 12)) / (v31 - v39)) >= 4096)
              {
                v40 = 4096;
              }

              else
              {
                v40 = ((268431360 - (v39 << 12)) / (v31 - v39));
              }

              if (v30 < 0)
              {
LABEL_50:
                if (v40 >= ((-4096 * v39) / (v30 - v39)))
                {
                  v40 = ((-4096 * v39) / (v30 - v39));
                }
              }
            }

            v21 = v39 + ((v40 * (v21 - v39) + 2048) >> 12);
            v22 = v39 + ((v40 * (v22 - v39) + 2048) >> 12);
            v23 = v39 + ((v40 * (v23 - v39) + 2048) >> 12);
            goto LABEL_10;
          }

          if (v31 >= 0)
          {
            v21 = 0xFFFF;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          v23 = v21;
LABEL_10:
          v24 = *(v16 + 2 * v21);
          v25 = *(v16 + 2 * v22);
          v26 = *(v16 + 2 * v23);
          *v20 = v24;
          v20[1] = v25;
          v20[2] = v26;
          ++v19;
          v20 += 3;
        }

        while (v3 > v19);
        v4 = (v4 + 1);
        v13 += v10;
        v14 += v10;
        v15 += v10;
        v6 = (v6 + v46);
        if (v2 <= v4)
        {
          return result;
        }
      }
    }

    if (v2 <= 1 || (v2 ? (v41 = (v2 - 1) >> 32 == 0) : (v41 = 0), !v41))
    {
      v42 = 0;
LABEL_60:
      v43 = v42 + 1;
        ;
      }

      return result;
    }

    v42 = v2 & 0xFFFFFFFE;
    v45 = v2 & 0xFFFFFFFE;
    do
    {
      v45 -= 2;
    }

    while (v45);
    if (v42 != v2)
    {
      goto LABEL_60;
    }
  }

  return result;
}

uint64_t sub_23383EFD8(uint64_t result, void *a2)
{
  v2 = a2[224];
  if (v2)
  {
    v3 = a2[223];
    if (v3)
    {
      LODWORD(v4) = 0;
      v5 = a2[225];
      v6 = a2[227];
      v7 = a2[228];
      v8 = a2[231];
      v9 = a2[232];
      v10 = a2[233];
      v11 = a2[234];
      v12 = v11 * a2[226];
      v13 = 2 * v5;
      v14 = v8 + 2 * v5 + v12;
      v15 = v9 + v13 + v12;
      v16 = v10 + v13 + v12;
      v17 = *(result + 2336);
      v18 = *(result + 2296);
      v19 = *(result + 2308);
      v20 = *(result + 2320);
      v21 = *(result + 2288);
      v22 = *(result + 2300);
      v23 = *(result + 2312);
      v24 = *(result + 2324);
      result = *(result + 2332);
      while (1)
      {
        v25 = 0;
        v26 = v6;
        do
        {
          v31 = *(v14 + 2 * v25) >> 2;
          v32 = *(v15 + 2 * v25) >> 2;
          v33 = *(v16 + 2 * v25) >> 2;
          v28 = vadd_s32(vsra_n_s32(vsra_n_s32(vshr_n_s32(vmul_s32(v22, vdup_n_s32(v32)), 0xAuLL), vmul_s32(v21, vdup_n_s32(v31)), 0xAuLL), vmul_s32(v23, vdup_n_s32(v33)), 0xAuLL), v24);
          v27 = ((v19 * v32) >> 10) + ((v18 * v31) >> 10) + ((v20 * v33) >> 10) + result;
          v34 = v28.i32[1];
          if ((v28.i32[1] | v28.i32[0] | v27) < 0x10000)
          {
            goto LABEL_10;
          }

          if (v28.i32[1] >= v28.i32[0])
          {
            v35 = v28.i32[0];
          }

          else
          {
            v35 = v28.i32[1];
          }

          if (v28.i32[1] <= v28.i32[0])
          {
            v34 = v28.i32[0];
          }

          if (v27 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v27;
          }

          if (v27 <= v34)
          {
            v37 = v34;
          }

          else
          {
            v37 = v27;
          }

          if ((v37 & 0x80000000) == 0 && v36 < 0x10000)
          {
            v38 = vmin_s32(vmax_s32(v28, 0), 0xFFFF0000FFFFLL);
            v39 = v27 & ~(v27 >> 31);
            if (v39 >= 0xFFFF)
            {
              v39 = 0xFFFF;
            }

            v40 = v38.i32[1] + 341 * (v38.i32[1] + v38.i32[0] + v39);
            v41 = (v40 + 512) >> 10;
            if (v40 >= 0x1FFFA00)
            {
              v42 = v41 + 2;
            }

            else
            {
              v42 = 65537 - v41;
            }

            v43 = ((v42 >> 2) * v41 + 0x2000) >> 14;
            if (v37 < 0x10000)
            {
              v44 = 4096;
              if (v36 < 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              v44 = ((268431360 - (v43 << 12)) / (v37 - v43));
              if (v44 >= 4096)
              {
                v44 = 4096;
              }

              if (v36 < 0)
              {
LABEL_36:
                v45 = ((-4096 * v43) / (v36 - v43));
                if (v44 >= v45)
                {
                  v44 = v45;
                }
              }
            }

            v46 = vdup_n_s32(v43);
            v27 = v43 + ((v44 * (v27 - v43) + 2048) >> 12);
            v28 = vsra_n_s32(v46, vmla_s32(0x80000000800, vdup_n_s32(v44), vsub_s32(v28, v46)), 0xCuLL);
            goto LABEL_10;
          }

          if (v37 >= 0)
          {
            v27 = 0xFFFF;
          }

          else
          {
            v27 = 0;
          }

          v28 = vdup_n_s32(v27);
LABEL_10:
          v29 = *(v17 + 2 * v28.i32[1]);
          v30 = *(v17 + 2 * v27);
          *v26 = *(v17 + 2 * v28.i32[0]);
          v26[1] = v29;
          v26[2] = v30;
          ++v25;
          v26 += 3;
        }

        while (v3 > v25);
        v4 = (v4 + 1);
        v14 += v11;
        v15 += v11;
        v16 += v11;
        v6 = (v6 + v7);
        if (v2 <= v4)
        {
          return result;
        }
      }
    }

    if (v2 <= 1 || (v2 ? (v47 = (v2 - 1) >> 32 == 0) : (v47 = 0), !v47))
    {
      v48 = 0;
LABEL_46:
      v49 = v48 + 1;
        ;
      }

      return result;
    }

    v48 = v2 & 0xFFFFFFFE;
    v51 = v2 & 0xFFFFFFFE;
    do
    {
      v51 -= 2;
    }

    while (v51);
    if (v48 != v2)
    {
      goto LABEL_46;
    }
  }

  return result;
}

uint64_t sub_23383F2E0(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 512))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23383F37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23383F394(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v5 = 20;
  strcpy(__p, "IFD0:EPExposureIndex");
  v2 = (*(*v6 + 264))();
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (!v2)
  {
    return sub_233739024(a1);
  }

  return v2;
}

void sub_23383F480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_23383F4A8(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v66 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CKodakCompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = sub_23383FBEC;
  v62[3] = &unk_2789EE800;
  v62[4] = v1;
  v4 = MEMORY[0x2383AC810](v62);
  memset(v65, 0, 256);
  memset(v64, 0, sizeof(v64));
  v5 = sub_2337ADCC4(v1);
  v59 = v4;
  v7 = *(v1 + 44);
  v6 = *(v1 + 48);
  (*(*v1 + 176))(v1, buf, 4096, 12, 0);
  if (v6)
  {
    v8 = 0;
    v60 = v6;
    do
    {
      v61 = v8;
      if (v7)
      {
        for (i = 0; i < v7; i += 2 * v10)
        {
          if (v7 - i >= 0x100)
          {
            v10 = 128;
          }

          else
          {
            v10 = (v7 - i) >> 1;
          }

          (*(**(v1 + 24) + 32))(*(v1 + 24), v64, v10);
          v11 = v10 >> 2;
          if (v10 >= 4)
          {
            v12 = 0;
            v14 = v65;
            v13 = v64;
            v15 = v10 >> 2;
            do
            {
              v16 = *v13;
              v17 = v13[1];
              v18 = v13[2];
              v19 = v13[3];
              v13 += 4;
              *v14 = v16 & 0xF;
              v14[1] = v16 >> 4;
              v14[2] = v17 & 0xF;
              v14[3] = v17 >> 4;
              v14[4] = v18 & 0xF;
              v14[5] = v18 >> 4;
              v14[6] = v19 & 0xF;
              v14[7] = v19 >> 4;
              v14 += 8;
              v12 = (0x10000 << (v16 & 0xF)) | (0x10000 << (v16 >> 4)) | (0x10000 << (v17 >> 4)) | (0x10000 << (v17 & 0xF)) | (0x10000 << (v18 >> 4)) | (0x10000 << (v18 & 0xF)) | (0x10000 << (v19 >> 4)) | (0x10000 << (v19 & 0xF)) | (v12 + (v16 >> 4) + (v16 & 0xF) + (v17 >> 4) + (v17 & 0xF) + (v18 >> 4) + (v18 & 0xF) + (v19 >> 4) + (v19 & 0xF));
              --v15;
            }

            while (v15);
          }

          else
          {
            v12 = 0;
            v13 = v64;
            v14 = v65;
          }

          v20 = v10 & 3;
          if ((v10 & 3) != 0)
          {
            v21 = (v20 - 1) + 1;
            do
            {
              v22 = *v13++;
              *v14 = v22 & 0xF;
              v14[1] = v22 >> 4;
              v12 = (0x10000 << (v22 & 0xF)) | (0x10000 << (v22 >> 4)) | (v12 + (v22 >> 4) + (v22 & 0xF));
              v14 += 2;
              --v21;
            }

            while (v21);
          }

          if (v12 >> 29)
          {
            (*(**(v1 + 24) + 32))(*(v1 + 24), &v64[v10], 12 * ((2 * v10 + 7) >> 3) - v10);
            v34 = v64;
            if (v10 >= 4)
            {
              do
              {
                v35 = v34[4];
                v36 = v34[8];
                v37 = v34[2];
                v38 = v34[6];
                v39 = v34[10];
                v40 = *&buf[2 * (v35 & 0xF0 | (*v34 >> 4 << 8) | (v36 >> 4))];
                v41 = *&buf[2 * (v38 & 0xF0 | (v37 >> 4 << 8) | (v39 >> 4))];
                v42 = *&buf[2 * (v34[1] | ((*v34 & 0xF) << 8))];
                v43 = *&buf[2 * (v34[3] | ((v37 & 0xF) << 8))];
                v44 = *&buf[2 * (v34[5] | ((v35 & 0xF) << 8))];
                v45 = *&buf[2 * (v34[7] | ((v38 & 0xF) << 8))];
                LOWORD(v36) = *&buf[2 * (v34[9] | ((v36 & 0xF) << 8))];
                v46 = *&buf[2 * (v34[11] | ((v39 & 0xF) << 8))];
                *v5 = v40;
                v5[1] = v41;
                v5[2] = v42;
                v5[3] = v43;
                v5[4] = v44;
                v5[5] = v45;
                v5[6] = v36;
                v5[7] = v46;
                v34 += 12;
                v5 += 8;
                --v11;
              }

              while (v11);
            }

            if ((v10 & 3) != 0)
            {
              v47 = *v34;
              v48 = v34[4];
              v49 = v34[2];
              v50 = v34[6];
              v51 = v50 & 0xF0 | (v49 >> 4 << 8) | (v34[10] >> 4);
              v52 = v34[1];
              v53 = v34[3];
              v54 = v34[5];
              v55 = *&buf[2 * (v48 & 0xF0 | (*v34 >> 4 << 8) | (v34[8] >> 4))];
              v56 = v34[7];
              LOWORD(v51) = *&buf[2 * v51];
              *v5 = v55;
              v5[1] = v51;
              if (v20 == 1)
              {
                v5 += 2;
              }

              else
              {
                v57 = *&buf[2 * (v53 & 0xFFFFF0FF | ((v49 & 0xF) << 8))];
                v5[2] = *&buf[2 * (v52 & 0xFFFFF0FF | ((v47 & 0xF) << 8))];
                v5[3] = v57;
                if (v20 == 3)
                {
                  v58 = *&buf[2 * ((v50 << 8) & 0xF00 | v56)];
                  v5[4] = *&buf[2 * ((v48 << 8) & 0xF00 | v54)];
                  v5[5] = v58;
                  v5 += 6;
                }

                else
                {
                  v5 += 4;
                }
              }
            }
          }

          else
          {
            (*(**(v1 + 24) + 32))(*(v1 + 24), v64, (((8 * v10 + v12 + 31) >> 3) & 0xFFFFFFC) - v10);
            if (v10)
            {
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = v65;
              v28 = v64;
              v29 = v10;
              do
              {
                if (v23 <= 15)
                {
                  v23 += 16;
                  v26 = HIWORD(v26) | (*v28 << 24) | (v28[1] << 16);
                  v28 += 2;
                }

                v30 = *v27;
                v31 = v23 - v30;
                if (*v27)
                {
                  v30 = (v26 << v31 >> -v30) - (((v26 << v31 >> 31) - 1) >> -v30);
                }

                if (v31 <= 15)
                {
                  v31 += 16;
                  v26 = HIWORD(v26) | (*v28 << 24) | (v28[1] << 16);
                  v28 += 2;
                }

                v32 = v27[1];
                v23 = v31 - v32;
                if (v27[1])
                {
                  v32 = (v26 << v23 >> -v32) - (((v26 << v23 >> 31) - 1) >> -v32);
                }

                v24 += v30;
                v25 += v32;
                v33 = *&buf[2 * (v25 & 0xFFF)];
                *v5 = *&buf[2 * (v24 & 0xFFF)];
                v5[1] = v33;
                v27 += 2;
                v5 += 2;
                --v29;
              }

              while (v29);
            }
          }
        }
      }

      v8 = v61 + 1;
    }

    while (v61 + 1 != v60);
  }

  v59[2](v59);
}

void sub_23383FBEC(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CKodakCompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23383FC74(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v18 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CKodakUncompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23383FFBC;
  v16[3] = &unk_2789EE800;
  v16[4] = v1;
  v4 = MEMORY[0x2383AC810](v16);
  v5 = sub_2337ADCC4(v1);
  v6 = *(v1 + 44);
  v7 = *(v1 + 48);
  if (v7 * v6 > (*(*v1 + 152))(v1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(*v1 + 176))(v1, buf, 4096, 12, 0);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      (*(**(v1 + 24) + 32))(*(v1 + 24), v5, 2 * v6);
      v9 = v5;
      v10 = v6 >> 2;
      if (v6 >= 4)
      {
        do
        {
          v11 = *&buf[2 * v5[1]];
          v12 = *&buf[2 * v5[2]];
          v13 = *&buf[2 * v5[3]];
          *v9 = *&buf[2 * *v5];
          *(v9 + 1) = v11;
          *(v9 + 2) = v12;
          *(v9 + 3) = v13;
          v5 += 4;
          v9 += 8;
          --v10;
        }

        while (v10);
      }

      if ((v6 & 2) != 0)
      {
        v14 = *&buf[2 * v5[1]];
        *v9 = *&buf[2 * *v5];
        *(v9 + 1) = v14;
        v5 += 2;
        v9 += 4;
      }

      if (v6)
      {
        *v9 = *&buf[2 * *v5];
        v9 += 2;
      }

      v5 = v9;
    }
  }

  v4[2](v4);
}

void sub_23383FFBC(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CKodakUncompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

double sub_233840044(uint64_t a1)
{
  (*(*a1 + 160))(&__p);
  sub_2337D0764(&__p, &v8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (v8)
  {
    v7 = 0;
    operator new();
  }

  v2 = 0.0;
  if ((*(*a1 + 176))(a1) && ((*(*a1 + 128))(a1) & 1) == 0)
  {
    (*(*a1 + 160))(&__p, a1);
    v3 = (*(*__p + 352))(__p);
    if (v6)
    {
      sub_2337239E8(v6);
    }

    v2 = v3 + 0.0;
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v2;
}

void sub_233840254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338402A0(uint64_t a1, int a2)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = (v5 + 3) >> 2;
  v7 = *(a1 + 192);
  v8 = *(v7 + 112);
  v9 = *(v7 + 114);
  v10 = *(v7 + 72);
  v11 = sub_2337ADCC4(a1);
  result = sub_2337AF4A8(a1);
  v13 = v6 * a2;
  v14 = v6 * a2 + v6;
  if (v5 < v14)
  {
    v14 = v5;
  }

  if (v13 < v14)
  {
    if (v10 == 1)
    {
      v15 = 21845;
    }

    else
    {
      v15 = 4948;
    }

    v16 = ~v15;
    v18 = result == 1 || v4 == 0;
    v19 = v4 * a2 * v6;
    do
    {
      if (!v18)
      {
        v20 = v4;
        v21 = v19;
        do
        {
          *(v11 + 2 * v21) = bswap32(*(v11 + 2 * v21)) >> 16;
          ++v21;
          --v20;
        }

        while (v20);
      }

      if (v4)
      {
        v22 = 0;
        v23 = v19;
        do
        {
          v24 = *(v11 + 2 * v23) ^ v8;
          v25 = *(v11 + 2 * (v23 + 1)) ^ v9;
          v26 = v25 & v16;
          result = v15 & v25;
          *(v11 + 2 * v23) = v26 | v15 & v24;
          *(v11 + 2 * (v23 + 1)) = result | v24 & v16;
          v22 += 2;
          v23 += 2;
        }

        while (v22 < v4);
      }

      ++v13;
      v19 += v4;
    }

    while (v13 != v14);
  }

  return result;
}

void sub_2338403D8(uint64_t *a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPhaseOneUnpacker", &unk_233945DBE, buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2338405F4;
  v10[3] = &unk_2789EE800;
  v10[4] = a1;
  v4 = MEMORY[0x2383AC810](v10);
  v5 = sub_2337AF4A8(a1);
  sub_233735A18(buf, a1 + 3, v5);
  sub_233725F08(v8, a1 + 3, (a1 + 5), 0);
  v6 = (*(*a1 + 152))(a1);
  v7 = sub_2337ADCC4(a1);
  (*(*a1[3] + 32))(a1[3], v7, v6);
  if (*(a1[24] + 72))
  {
    sub_2338FC70C(sub_23384067C, 4, a1, 0, 0);
  }

  sub_233725FD4(v8);
  sub_233735A90(buf);
  v4[2](v4);
}

void sub_2338405A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_233725FD4(va);
  sub_233735A90(va1);
  v2[2](v2);

  _Unwind_Resume(a1);
}

void sub_2338405F4(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPhaseOneUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void *sub_23384068C(void *a1)
{
  *a1 = &unk_2849221F8;
  v2 = a1[25];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_233723A54(a1);
}

void sub_2338406E8(void *a1)
{
  *a1 = &unk_2849221F8;
  v2 = a1[25];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233840758(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPhaseOneCompressedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233840AA4;
  v9[3] = &unk_2789EE800;
  v9[4] = a1;
  MEMORY[0x2383AC810](v9);
  v4 = sub_2337AF4A8(a1);
  sub_233735A18(buf, (a1 + 24), v4);
  sub_233725F08(v7, (a1 + 24), a1 + 40, 0);
  if (*(a1 + 48) <= ((*(a1 + 240) - *(a1 + 232)) >> 2))
  {
    LODWORD(v6) = (*(*a1 + 152))(a1);
    sub_233753AB0(&v6, &dword_233905B3C);
    operator new[]();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_233840AA4(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPhaseOneCompressedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_233840B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!*v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return sub_2338FCC14(*v1, a1, v1);
}

uint64_t sub_233840B90(uint64_t result, unsigned int a2, uint64_t a3)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = *(result + 288) + a2;
  if (v3 >= *(result + 48))
  {
    v3 = *(result + 48);
  }

  if (v3 > a2)
  {
    v4 = *(result + 44);
    v5 = *(result + 232);
    v6 = (*(result + 240) - v5) >> 2;
    v7 = v4 * a2;
    do
    {
      if (v6 <= a2)
      {
        sub_2337306B0();
      }

      v8 = a2;
      v9 = *(result + 216);
      v10 = *(v5 + 4 * a2);
      v43 = 0;
      v44[0] = 0;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = a3 + 2 * v4 * a2;
        v15 = (v9 + v10);
        do
        {
          if (v11 >= (v4 & 0xFFFFFFFFFFFFFFF8))
          {
            v43 = 0xE0000000ELL;
          }

          else if ((v11 & 7) == 0)
          {
            v16 = &v43;
            v17 = 1;
            do
            {
              v18 = 0;
              v19 = v17;
              while (1)
              {
                if (v12 <= 0)
                {
                  v21 = *v15++;
                  v13 = v21 | (v13 << 32);
                  v20 = v12 + 32;
                }

                else
                {
                  v20 = v12;
                }

                v12 = v20 - 1;
                if (((v13 << -v20) & 0x8000000000000000) != 0)
                {
                  break;
                }

                if (++v18 == 5)
                {
                  goto LABEL_19;
                }
              }

              if (!v18)
              {
                goto LABEL_22;
              }

LABEL_19:
              if (v20 <= 1)
              {
                v22 = *v15++;
                v13 = v22 | (v13 << 32);
                v12 = v20 + 31;
              }

              v23 = v13 << -v12-- >> 63;
              *v16 = *&asc_2339093C4[4 * ((2 * v18 - 2) | v23)];
LABEL_22:
              v17 = 0;
              v16 = (&v43 + 4);
            }

            while ((v19 & 1) != 0);
          }

          v24 = *(&v43 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v11 & 1)));
          if (v24 <= 0)
          {
            __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0]();
            sub_2338F83F4();
          }

          v25 = (v44 | (4 * (v11 & 1)));
          if (v24 == 14)
          {
            if (v12 <= 15)
            {
              v26 = *v15++;
              v13 = v26 | (v13 << 32);
              v12 += 32;
            }

            v27 = v13 << -v12 >> 48;
            v12 -= 16;
            *v25 = v27;
          }

          else
          {
            if (v12 < v24)
            {
              v28 = *v15++;
              v13 = v28 | (v13 << 32);
              v12 += 32;
            }

            LODWORD(v27) = (-1 << (v24 - 1)) + *v25 + (v13 << -v12 >> -v24) + 1;
            *v25 = v27;
            if (WORD1(v27))
            {
              *(result + 208) = 1;
              return result;
            }

            v12 -= v24;
          }

          if (v27 <= 0xFF && *(result + 224) == 5)
          {
            LOWORD(v27) = word_2339093EC[v27];
          }

          *(v14 + 2 * v11++) = v27;
        }

        while (v11 != v4);
      }

      v30 = *(result + 256);
      v31 = v8 << (v30 != 0);
      v32 = v31 + 1;
      v33 = *(result + 264);
      if (v31 + 1 < ((*(result + 272) - v33) >> 1))
      {
        v34 = (*(result + 52) + v30);
        if (v34 < 1)
        {
          LODWORD(v34) = 0;
        }

        else
        {
          v35 = *(v33 + 2 * v31);
          v36 = v34;
          v37 = (a3 + 2 * v7);
          do
          {
            v38 = *v37 + v35;
            if (v38 >= 1)
            {
              if (v38 >= 0xFFFF)
              {
                LOWORD(v38) = -1;
              }

              *v37 = v38;
            }

            ++v37;
            --v36;
          }

          while (v36);
        }

        if (v34 < v4)
        {
          v39 = *(v33 + 2 * v32);
          v40 = (a3 + 2 * v7 + 2 * v34);
          v41 = v4 - v34;
          do
          {
            v42 = *v40 + v39;
            if (v42 >= 1)
            {
              if (v42 >= 0xFFFF)
              {
                LOWORD(v42) = -1;
              }

              *v40 = v42;
            }

            ++v40;
            --v41;
          }

          while (v41);
        }
      }

      a2 = v8 + 1;
      v7 += v4;
    }

    while (v8 + 1 != v3);
  }

  return result;
}

void *sub_233840F10(void *a1)
{
  *a1 = &unk_2849222D0;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  *a1 = &unk_2849221F8;
  v4 = a1[25];
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return sub_233723A54(a1);
}

void sub_233840FA8(void *a1)
{
  *a1 = &unk_2849222D0;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  *a1 = &unk_2849221F8;
  v4 = a1[25];
  if (v4)
  {
    sub_2337239E8(v4);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233841054(uint64_t a1@<X4>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*a1)
  {
    if (*(*a1 + 72) >= 3)
    {
      sub_233841110();
    }

    sub_2338413D0();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  sub_2338F90E4(exception);
}

void *sub_2338411C4(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849223C0;
  sub_2338412C0((a1 + 3), a2, *a3, a4, a5, a6);
  return a1;
}

void sub_233841244(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849223C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338412C0(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, void *a6)
{
  v8 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *v8 = &unk_2849221F8;
  v9 = *a6;
  v10 = a6[1];
  v8[24] = *a6;
  v8[25] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *a6;
  }

  *a1 = &unk_2849222D0;
  *(a1 + 208) = 0;
  *(a1 + 224) = *(v9 + 72);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_233729070(a1 + 232, *(v9 + 48), *(v9 + 56), (*(v9 + 56) - *(v9 + 48)) >> 2);
  v11 = *a6;
  *(a1 + 256) = *(*a6 + 144);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  sub_233728FF4(a1 + 264, *(v11 + 120), *(v11 + 128), (*(v11 + 128) - *(v11 + 120)) >> 1);
  *(a1 + 288) = 20;
  return a1;
}

void sub_2338413A4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[30] = v4;
    operator delete(v4);
  }

  sub_23384068C(v1);
  _Unwind_Resume(a1);
}

void *sub_233841484(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, void *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284922410;
  sub_233841580((a1 + 3), a2, *a3, a4, a5, a6);
  return a1;
}

void sub_233841504(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284922410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233841580(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, void *a6)
{
  result = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *result = &unk_2849221F8;
  v8 = a6[1];
  result[24] = *a6;
  result[25] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *result = &unk_2849220F0;
  return result;
}

void sub_2338415F4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038();
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CLosslessJpegSRawUnpacker", &unk_233945DBE, buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23384292C;
  v7[3] = &unk_2789EE800;
  v7[4] = v1;
  MEMORY[0x2383AC810](v7);
  sub_2337ADCC4(v1);
  if ((*(*v1 + 152))(v1))
  {
    v4 = (*(**(v1 + 24) + 16))(*(v1 + 24));
    v5 = *(v1 + 40);
    if ((v5 & 0x80000000) != 0 || v5 < v4)
    {
      operator new[]();
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_2338427D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a25)
  {
    MEMORY[0x2383ABEF0](a25, 0x1000C8077774924);
  }

  MEMORY[0x2383ABEF0](a30, 0x1000C80BDFB0063);
  MEMORY[0x2383ABEF0](a10, 0x1000C8077774924);
  a11[2](a11);

  _Unwind_Resume(a1);
}

void sub_23384292C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CLosslessJpegSRawUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void *sub_233842A04(void *a1)
{
  *a1 = &unk_284922460;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  *a1 = &unk_28490A870;
  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  return sub_233723A54(a1);
}

void sub_233842A90(void *a1)
{
  *a1 = &unk_284922460;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  *a1 = &unk_28490A870;
  v3 = a1[24];
  if (v3)
  {
    a1[25] = v3;
    operator delete(v3);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233842C3C(void *a1)
{
  sub_233842C74(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233842C74(void *a1)
{
  *a1 = &unk_284922558;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  *a1 = &unk_284919438;
  v3 = a1[2];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_233842D0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849225A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233842DF4(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849225A0;
  sub_233842E50((a1 + 3), a2);
  return a1;
}

uint64_t sub_233842E50(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284922558;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  sub_2337236E0(a1 + 40, *a2, a2[1], (a2[1] - *a2) >> 3);
  return a1;
}

void sub_233842EC0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_284919438;
  v3 = v1[2];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_233842EF4(os_signpost_id_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CNikonNRWUnpacker", &unk_233945DBE, buf, 2u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23384318C;
  v19[3] = &unk_2789EE800;
  v19[4] = a1;
  v4 = MEMORY[0x2383AC810](v19);
  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  v7 = ((3 * v5) >> 1) & 0x1FFFFFFF;
  if ((*(*a1 + 152))(a1) < v7 * v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = sub_2337ADCC4(a1);
  if (v6)
  {
    v9 = v8;
    v10 = 0;
    v11 = 2 * v5 - v7;
    do
    {
      v12 = &v9[v11];
      (*(**(a1 + 24) + 32))(*(a1 + 24), &v9[v11], ((3 * v5) >> 1) & 0x1FFFFFFF);
      if (v5)
      {
        for (i = 0; i < v5; i += 8)
        {
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = (*v12 >> 8) & 0xFFF;
          HIDWORD(v17) = *v12;
          LODWORD(v17) = v14;
          *v9 = *v12 >> 20;
          *(v9 + 1) = v16;
          *(v9 + 2) = (v17 >> 28) & 0xFFF;
          *(v9 + 3) = HIWORD(v14) & 0xFFF;
          *(v9 + 4) = v14 >> 4;
          *(v9 + 5) = (__PAIR64__(v14, v15) >> 24) & 0xFFF;
          *(v9 + 6) = (v15 >> 12) & 0xFFF;
          *(v9 + 7) = v15 & 0xFFF;
          v12 += 12;
          v9 += 16;
        }
      }

      ++v10;
    }

    while (v10 != v6);
  }

  v4[2](v4);
}

void sub_23384318C(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CNikonNRWUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_233843214(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_2849226E0;
  *(v5 + 16) = 0u;
  v6 = (v5 + 16);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(a1 + 12) = sub_233725614(*a3);
  v7 = sub_233725614(*a3);
  for (i = sub_233725614(*a3); v7; --v7)
  {
    v9 = sub_233725614(*a3);
    v10 = sub_233725614(*a3);
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    if (v12 >= v11)
    {
      v14 = (v12 - *v6) >> 3;
      if ((v14 + 1) >> 61)
      {
        sub_2337235BC();
      }

      v15 = v11 - *v6;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_233723798(v6, v17);
      }

      v18 = (8 * v14);
      *v18 = v9 | (v10 << 32);
      v13 = 8 * v14 + 8;
      v19 = *(a1 + 16);
      v20 = *(a1 + 24) - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(a1 + 16);
      *(a1 + 16) = v21;
      *(a1 + 24) = v13;
      *(a1 + 32) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v12 = v9 | (v10 << 32);
      v13 = (v12 + 1);
    }

    *(a1 + 24) = v13;
  }

  for (; i; --i)
  {
    v23 = sub_233725614(*a3);
    v24 = sub_233725614(*a3);
    v25 = sub_233725614(*a3);
    v26 = sub_233725614(*a3);
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    if (v27 >= v28)
    {
      v30 = *(a1 + 40);
      v31 = (v27 - v30) >> 4;
      v32 = v31 + 1;
      if ((v31 + 1) >> 60)
      {
        sub_2337235BC();
      }

      v33 = v28 - v30;
      if (v33 >> 3 > v32)
      {
        v32 = v33 >> 3;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF0)
      {
        v34 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        sub_23377FC40(a1 + 40, v34);
      }

      v35 = (16 * v31);
      *v35 = v23;
      v35[1] = v24;
      v35[2] = v25;
      v35[3] = v26;
      v29 = 16 * v31 + 16;
      v36 = *(a1 + 40);
      v37 = *(a1 + 48) - v36;
      v38 = (16 * v31 - v37);
      memcpy(v38, v36, v37);
      v39 = *(a1 + 40);
      *(a1 + 40) = v38;
      *(a1 + 48) = v29;
      *(a1 + 56) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v27 = v23;
      v27[1] = v24;
      v29 = (v27 + 4);
      v27[2] = v25;
      v27[3] = v26;
    }

    *(a1 + 48) = v29;
  }

  return a1;
}

void sub_233843474(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338434D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75[2] = *MEMORY[0x277D85DE8];
  v70 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v9 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v6, *(a1 + 12), v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v70, v10, v9, @"BayerPhase", v11);

  v71 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13, v14, v15);
  v19 = *(a1 + 16);
  for (i = *(a1 + 24); v19 != i; ++v19)
  {
    v21 = *v19;
    v74[0] = @"BadRow";
    v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v16, v21, v17, v18);
    v74[1] = @"BadCol";
    v75[0] = v22;
    v26 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v23, HIDWORD(v21), v24, v25);
    v75[1] = v26;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v75, v74, 2);
    objc_msgSend_addObject_(v71, v29, v28, v30, v31);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v70, v16, v71, @"BadPoints", v18);
  v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v32, v33, v34, v35);
  v41 = *(a1 + 40);
  for (j = *(a1 + 48); v41 != j; v41 += 4)
  {
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v72[0] = @"Top";
    v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v36, v42, v37, v38);
    v73[0] = v46;
    v72[1] = @"Left";
    v50 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v47, v43, v48, v49);
    v73[1] = v50;
    v72[2] = @"Bottom";
    v54 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v51, v44, v52, v53);
    v73[2] = v54;
    v72[3] = @"Right";
    v58 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v55, v45, v56, v57);
    v73[3] = v58;
    v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, v73, v72, 4);
    objc_msgSend_addObject_(v39, v61, v60, v62, v63);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v70, v36, v39, @"BadRects", v38);
  v64 = [RAWOpcodeFixBadPixelsList alloc];
  v68 = objc_msgSend_initWithArguments_(v64, v65, v70, v66, v67);

  return v68;
}

void sub_233843850(void *a1)
{
  sub_233843890(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233843890(void *a1)
{
  *a1 = &unk_2849226E0;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

id sub_2338438F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63[3] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_233843D78, a4, a5);
  v9 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v6, sub_233843DFC, v7, v8);
  v13 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v10, sub_233843E08, v11, v12);
  v40 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v14, sub_23378BC54, v15, v16);
  v39 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v17, sub_233843E14, v18, v19);
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_233843E20, v21, v22);
  v45 = *MEMORY[0x277CD3720];
  v52[0] = *MEMORY[0x277CD3700];
  v46 = v52[0];
  v52[1] = v45;
  v62[0] = MEMORY[0x277CBEC38];
  v62[1] = @"com.nikon.raw-image";
  v43 = *MEMORY[0x277CD3718];
  v53 = *MEMORY[0x277CD36E0];
  v44 = v53;
  v54 = v43;
  v62[2] = @".nef.";
  v62[3] = &unk_284957DC0;
  v41 = *MEMORY[0x277CD3710];
  v55 = *MEMORY[0x277CD3708];
  v42 = v55;
  v56 = v41;
  v62[4] = &unk_284957DD8;
  v62[5] = v5;
  v25 = *MEMORY[0x277CD36E8];
  v57 = *MEMORY[0x277CD36C8];
  v24 = v57;
  v58 = v25;
  v62[6] = v9;
  v62[7] = v13;
  v27 = *MEMORY[0x277CD36F0];
  v59 = *MEMORY[0x277CD36D0];
  v26 = v59;
  v60 = v27;
  v62[8] = v40;
  v62[9] = v39;
  v61 = *MEMORY[0x277CD36F8];
  v28 = v61;
  v47 = v23;
  v62[10] = v23;
  v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v62, v52, 11);
  v63[0] = v38;
  v50[0] = v46;
  v50[1] = v45;
  v51[0] = MEMORY[0x277CBEC38];
  v51[1] = @"com.nikon.nrw-raw-image";
  v50[2] = v44;
  v50[3] = v43;
  v51[2] = @".nrw.";
  v51[3] = &unk_284957DC0;
  v50[4] = v42;
  v50[5] = v41;
  v51[4] = &unk_284957DD8;
  v51[5] = v5;
  v50[6] = v24;
  v50[7] = v25;
  v51[6] = v9;
  v51[7] = v13;
  v50[8] = v26;
  v50[9] = v27;
  v51[8] = v40;
  v51[9] = v39;
  v50[10] = v28;
  v51[10] = v47;
  v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v51, v50, 11);
  v63[1] = v37;
  v48[0] = v46;
  v48[1] = v45;
  v49[0] = MEMORY[0x277CBEC38];
  v49[1] = @"com.nikon.nefx-raw-image";
  v48[2] = v44;
  v48[3] = v43;
  v49[2] = @".nefx.";
  v49[3] = &unk_284957DC0;
  v48[4] = v42;
  v48[5] = v41;
  v49[4] = &unk_284957DD8;
  v49[5] = v5;
  v48[6] = v24;
  v48[7] = v25;
  v49[6] = v9;
  v49[7] = v13;
  v48[8] = v26;
  v48[9] = v27;
  v49[8] = v40;
  v49[9] = v39;
  v48[10] = v28;
  v49[10] = v47;
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v49, v48, 11);
  v63[2] = v32;
  v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, v63, 3, v34);

  return v35;
}

void sub_233843E2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_23384A9E0();
}

double sub_233843EC8(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  sub_23374B844(a1, a2, a3, a4, a5);
  *v5 = &unk_284922748;
  *(v5 + 1184) = 0;
  result = 0.0;
  *(v5 + 1192) = 0u;
  *(v5 + 1216) = 0u;
  *(v5 + 1208) = v5 + 1216;
  *(v5 + 1240) = 0u;
  *(v5 + 1264) = 0;
  *(v5 + 1316) = 0;
  *(v5 + 1320) = 0;
  *(v5 + 1328) = 0;
  *(v5 + 1280) = 0u;
  *(v5 + 1293) = 0;
  *(v5 + 1332) = 1;
  *(v5 + 1336) = 0;
  *(v5 + 1340) = 0;
  *(v5 + 1344) = 0;
  *(v5 + 1584) = 0;
  *(v5 + 1348) = 0;
  *(v5 + 1384) = 0;
  *(v5 + 1376) = 0;
  *(v5 + 1360) = 0u;
  *(v5 + 1408) = 0;
  *(v5 + 1392) = 0u;
  *(v5 + 1416) = 0;
  *(v5 + 1440) = 0;
  *(v5 + 1424) = 0u;
  *(v5 + 1448) = 0;
  *(v5 + 1472) = 0;
  *(v5 + 1456) = 0u;
  *(v5 + 1480) = 0;
  *(v5 + 1488) = 0u;
  *(v5 + 1504) = 0u;
  *(v5 + 1520) = 0u;
  *(v5 + 1536) = 0u;
  *(v5 + 1552) = 0u;
  *(v5 + 1568) = 0;
  return result;
}

uint64_t sub_233843FA0(uint64_t a1)
{
  *a1 = &unk_284922748;
  v2 = *(a1 + 1584);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 1552);
  if (v3)
  {
    *(a1 + 1560) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1512);
  if (v4)
  {
    *(a1 + 1520) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 1488);
  if (v5)
  {
    *(a1 + 1496) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 1456);
  if (v6)
  {
    *(a1 + 1464) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1424);
  if (v7)
  {
    *(a1 + 1432) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 1392);
  if (v8)
  {
    *(a1 + 1400) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 1360);
  if (v9)
  {
    *(a1 + 1368) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 1248);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  sub_233735DD8(a1 + 1208, *(a1 + 1216));
  if (*(a1 + 1207) < 0)
  {
    operator delete(*(a1 + 1184));
  }

  return sub_2337557B4(a1);
}

void sub_23384409C(uint64_t a1)
{
  sub_233843FA0(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338440D4(uint64_t a1)
{
  memset(&__str, 0, sizeof(__str));
  sub_2337338AC(a1, &v18);
  v2 = (*(*v18 + 48))(v18);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  v22 = v2;
  sub_2337338AC(a1, &v18);
  v3 = v18;
  LODWORD(v20) = 8;
  sub_233726998(&v16, &v20);
  v4 = sub_2337257E8(v3, &v16, &__str);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 5)
    {
      p_str = &__str;
      goto LABEL_11;
    }

LABEL_15:
    sub_2337268D8(&v18, &v22);
    (*(*a1 + 160))(a1, &v18);
LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (__str.__r_.__value_.__l.__size_ != 5)
  {
    goto LABEL_15;
  }

  p_str = __str.__r_.__value_.__r.__words[0];
LABEL_11:
  data = p_str->__r_.__value_.__l.__data_;
  v7 = p_str->__r_.__value_.__s.__data_[4];
  if (data != 1869310286 || v7 != 110)
  {
    goto LABEL_15;
  }

  v21 = 0;
  sub_2337338AC(a1, &v18);
  *(a1 + 1232) = sub_233725614(v18);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  std::string::operator=((a1 + 1184), &__str);
  sub_2337338AC(a1, &v18);
  v11 = (*(*v18 + 48))(v18);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  v20 = v11;
  sub_2337268D8(&v18, &v20);
  (*(*a1 + 144))(a1, &v18);
  sub_2337338AC(a1, &v16);
  sub_2337268D8(&v15, &v20);
  sub_233754E8C(&v18, &v16, &v15);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  sub_2337338AC(a1, &v16);
  v12 = sub_2337255C0(v16);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  if (v12 == 18761 || v12 == 19789)
  {
    if (v12 == 19789)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    (*(*a1 + 128))(a1, v13);
    sub_2337338AC(a1, &v16);
    v14 = sub_2337255C0(v16);
    if (v17)
    {
      sub_2337239E8(v17);
    }

    if (v14 == (*(*a1 + 664))(a1))
    {
      sub_2337338AC(a1, &v16);
      v21 = sub_233725614(v16);
      if (v17)
      {
        sub_2337239E8(v17);
      }

      sub_233723AE0(&v16, &v21);
      (*(*a1 + 160))(a1, &v16);
      sub_233754F18(&v18);
      goto LABEL_16;
    }
  }

  sub_233754F18(&v18);
  v9 = 0;
LABEL_17:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v9;
}