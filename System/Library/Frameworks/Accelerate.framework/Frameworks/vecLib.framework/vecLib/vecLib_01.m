void *sub_2366C5EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2366DE2E4(a2);
  v6 = sub_2366DE2A4(a2, v5);
  v7 = sub_2366DE78C(0x18uLL, a2);
  v8 = v7;
  if (!v6)
  {
    *v7 = a2;
    v7[1] = malloc_type_malloc(v4 << 6, 0x1020040C3AA3679uLL);
    v8[2] = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
  }

  sub_2366DE30C(a2);
  v9 = v8[1] + (v6 << 6);
  *(v9 + 4) = 0;
  *v9 = 0;
  *(v9 + 8) = a1;
  *(v9 + 16) = 0;
  *(v8[1] + (v6 << 6) + 24) = malloc_type_malloc(24 * a1, 0x10200403ED2C137uLL);
  *(v8[2] + 8 * v6) = malloc_type_malloc(24 * v4, 0x20040960023A9uLL);
  if (v4)
  {
    v10 = 0;
    v11 = v8[2];
    do
    {
      *(*(v11 + 8 * v6) + v10) = 0;
      *(*(v11 + 8 * v6) + v10 + 8) = 0;
      *(*(v11 + 8 * v6) + v10 + 16) = 0;
      v10 += 24;
      --v4;
    }

    while (v4);
  }

  sub_2366DE30C(a2);
  return v8;
}

_DWORD *sub_2366C6030(unsigned int a1)
{
  v2 = a1;
  v3 = malloc_type_malloc(0x28uLL, 0x1030040F1F2F502uLL);
  v3[6] = 0;
  v3[7] = a1;
  *v3 = v2;
  *(v3 + 1) = 0;
  *(v3 + 2) = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  *(v3 + 4) = sub_2366D09F0(-1, *v3);
  return v3;
}

unint64_t *sub_2366C60B0(unint64_t *result)
{
  v1 = result;
  v2 = result[1];
  if (vcvtd_n_f64_u64(*result, 3uLL) >= v2)
  {
    if (v2)
    {
      v3 = result[2];
      v4 = result[4];
      v5 = *(result + 6);
      do
      {
        v6 = v2 - 1;
        result[1] = v6;
        *(v4 + 8 * (*(v3 + 8 * v6 + 4) - v5)) = -1;
        v2 = result[1];
      }

      while (v2);
    }
  }

  else
  {
    result = sub_2366D08EC(result[4], -1, *result);
    v1[1] = 0;
  }

  return result;
}

uint64_t sub_2366C612C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v3 = *(a3 + 16);
  *(a3 + 8) = v4 + 1;
  if (v4)
  {
    while (1)
    {
      v5 = v4 - 1;
      v6 = (v4 - 1) >> 1;
      if (*(v3 + 8 * v6) > result)
      {
        break;
      }

      *(v3 + 8 * v4) = *(v3 + 8 * v6);
      v3 = *(a3 + 16);
      *(*(a3 + 32) + 8 * (*(v3 + 8 * v6 + 4) - *(a3 + 24))) = v4;
      v4 = (v4 - 1) >> 1;
      if (v5 <= 1)
      {
        goto LABEL_7;
      }
    }

    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_7:
  v7 = (v3 + 8 * v6);
  *v7 = result;
  v7[1] = a2;
  *(*(a3 + 32) + 8 * (a2 - *(a3 + 24))) = v6;
  return result;
}

uint64_t sub_2366C61B4(_OWORD *a1, uint64_t a2)
{
  v4 = sub_2366DE2A4(*a2, a2);
  result = sub_2366DE2E4(*a2);
  v6 = *(a2 + 8) + (v4 << 6);
  *(v6 + 4) = 0;
  v7 = (v6 + 4);
  if (result)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    for (i = *(v9 + 8 * v4) + 8; ; i += 24)
    {
      v11 = *(i - 8);
      if (v11)
      {
        break;
      }

      if (*i)
      {
        v11 = *(*i + 16);
        if (v11)
        {
          break;
        }
      }

      v8 += 24;
      if (!--result)
      {
        return result;
      }
    }

    *v7 = 1;
    if (a1)
    {
      *i = v11;
      *(*(v9 + 8 * v4) + v8) = *(v11 + 16);
      *a1 = *v11;
    }

    else
    {
      *(i - 8) = v11;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2366C6270(int *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v16 = 8 * sub_2366DE2A4(a1[100], a2);
  v17 = a1[102];
  v18 = v14;
  v19 = *(*(*(a6 + 136) + v16) + 4 * v14);
  v20 = a1[124];
  v22 = *(a7 + 8);
  v21 = *(a7 + 16);
  v23 = (v21 + 16 * v14);
  v24 = *(*(a6 + 64) + v16);
  v25 = v23[1];
  v26 = *(v24 + 4 * (v14 + 1)) - *(v24 + 4 * v14);
  if (v17 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v17;
  }

  if (v27)
  {
    v79 = a5;
    v80 = v19;
    v81 = v20;
    v82 = v23[1];
    v84 = v14;
    v28 = a8;
    v83 = v18;
    v29 = v21 + 16 * v18;
    v32 = *(v29 + 12);
    v31 = (v29 + 12);
    v30 = v32;
    if (v32 == -1)
    {
      v30 = *(a7 + 24);
      *v31 = v30;
      *(a7 + 24) = v30 + v27;
    }

    v33 = sub_2366D0B1C(((v27 + v30 - 1) >> *(a7 + 32)) + 1);
    v34 = *(a7 + 28);
    v35 = (v34 << v33) - v34;
    if (!*(*(a7 + 48) + 8 * v33))
    {
      *(*(a7 + 48) + 8 * v33) = malloc_type_malloc(8 * (v34 << v33), 0x100004000313F17uLL);
    }

    v19 = v80;
    if (*v31 >= v35)
    {
      v36 = *(*(a7 + 48) + 8 * v33) + 8 * (*v31 - v35);
    }

    else
    {
      *v31 = v35;
      *(a7 + 24) = v35 + v27;
      v36 = *(*(a7 + 48) + 8 * v33);
    }

    a8 = v28;
    v14 = v84;
    v18 = v83;
    v20 = v81;
    v25 = v82;
    a5 = v79;
  }

  else
  {
    v36 = 0;
  }

  if (v19 == a3)
  {
    v37 = v23[1];
    *v23 += a5;
    v38 = v37 - a5;
  }

  else
  {
    if (v19 != a4)
    {
      goto LABEL_19;
    }

    v39 = v23[1];
    *v23 -= a5;
    v38 = v39 + a5;
  }

  v23[1] = v38;
LABEL_19:
  v40 = v14 - *(v22 + 4);
  v41 = v22[4];
  v42 = *(v41 + 4 * v40);
  v44 = *v23;
  v43 = v23[1];
  if (v42 != -1)
  {
    if (v20)
    {
      if (v44)
      {
        v45 = v43 <= 0;
      }

      else
      {
        v45 = 0;
      }

      if (!v45)
      {
        goto LABEL_37;
      }
    }

    else if (v43 >= v44)
    {
      goto LABEL_37;
    }

    v47 = v22[3];
    v48 = *v22 - 1;
    v49 = *(v47 + 4 * v48);
    *v22 = v48;
    *(v47 + 4 * v42) = v49;
    *(v41 + 4 * (v49 - *(v22 + 4))) = *(v41 + 4 * v40);
    *(v41 + 4 * v40) = -1;
    goto LABEL_37;
  }

  if (!v20)
  {
    if (v43 < v44)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v44)
  {
    v46 = v43 < 1;
  }

  else
  {
    v46 = 0;
  }

  if (!v46)
  {
LABEL_36:
    v50 = *v22;
    *(v41 + 4 * v40) = *v22;
    v51 = v22[3];
    *v22 = v50 + 1;
    *(v51 + 4 * v50) = v14;
  }

LABEL_37:
  v52 = v23[2];
  if (v52)
  {
    v53 = v23[2];
    v54 = v36;
    while (v54[1] != a4)
    {
      v54 += 2;
      if (!--v53)
      {
        goto LABEL_44;
      }
    }

    if (*v54 != a5)
    {
      *v54 -= a5;
      goto LABEL_45;
    }

    v55 = v52 - 1;
    v23[2] = v55;
    *v54 = *(v36 + 8 * v55);
    v52 = v23[2];
LABEL_44:
    if (!v52)
    {
      goto LABEL_51;
    }

LABEL_45:
    v56 = 0;
    v57 = v36;
    while (v57[1] != a3)
    {
      ++v56;
      v57 += 2;
      if (v52 == v56)
      {
        v56 = v52;
        goto LABEL_52;
      }
    }

    *v57 += a5;
  }

  else
  {
LABEL_51:
    v56 = 0;
  }

LABEL_52:
  if (v19 != a3 && v56 == v52)
  {
    v58 = (v36 + 8 * v52++);
    v23[2] = v52;
    *v58 = a5;
    v58[1] = a3;
  }

  if (a8)
  {
    v59 = v52 ? v23[1] / sqrt(v52) : 0.0;
    if (v19 == a3 || v19 == a4)
    {
      v60 = *(a8 + 32);
      v61 = *(v60 + 8 * (v18 - *(a8 + 24)));
      if (v61 != -1)
      {
        v62 = v59 - *v23;
        if (v20 && v23[1] > 0 || v62 >= 0.0)
        {
          v63 = v62;
          v64 = *(a8 + 16);
          v65 = (v64 + 8 * v61);
          if (*v65 >= v62)
          {
            *v65 = v63;
            v65[1] = v14;
            *(v60 + 8 * (v18 - *(a8 + 24))) = v61;
            v71 = (2 * v61) | 1;
            v72 = *(a8 + 8);
            if (v71 < v72)
            {
              v73 = 2 * v61;
              do
              {
                v74 = v73 + 2;
                if (v74 < v72 && (v75 = (v64 + 8 * v74), *v75 >= v63) && *(v64 + 8 * v71) <= *v75)
                {
                  v71 = v74;
                }

                else
                {
                  v75 = (v64 + 8 * v71);
                  if (*v75 < v63)
                  {
                    return (v25 - v23[1]);
                  }
                }

                v76 = v71;
                *v65 = *v75;
                v77 = *(a8 + 32);
                v64 = *(a8 + 16);
                v65 = (v64 + 8 * v76);
                *(v77 + 8 * (v65[1] - *(a8 + 24))) = v61;
                *v65 = v63;
                v65[1] = v14;
                *(v77 + 8 * (v18 - *(a8 + 24))) = v76;
                v73 = 2 * v76;
                v71 = (2 * v76) | 1;
                v72 = *(a8 + 8);
                v61 = v76;
              }

              while (v71 < v72);
            }
          }

          else
          {
            if (v61)
            {
              do
              {
                v66 = v61 - 1;
                v67 = (v61 - 1) >> 1;
                v68 = (v64 + 8 * v67);
                if (*v68 > v63)
                {
                  break;
                }

                v69 = v61;
                v61 = (v61 - 1) >> 1;
                *(v64 + 8 * v69) = *v68;
                v60 = *(a8 + 32);
                v64 = *(a8 + 16);
                *(v60 + 8 * (*(v64 + 8 * v67 + 4) - *(a8 + 24))) = v69;
              }

              while (v66 > 1);
            }

            v70 = (v64 + 8 * v61);
            *v70 = v63;
            v70[1] = v14;
            *(v60 + 8 * (v18 - *(a8 + 24))) = v61;
          }
        }

        else
        {
          sub_2366C707C(v14, a8);
        }
      }
    }
  }

  return (v25 - v23[1]);
}

uint64_t sub_2366C6764(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  result = *(v2 + 4);
  *(a1 + 8) = --v3;
  v5 = *(v2 + 8 * v3);
  *v2 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 24);
  *(v6 + 8 * (HIDWORD(v5) - v7)) = 0;
  v8 = *(a1 + 8);
  if (v8 >= 2)
  {
    v9 = 0;
    v10 = 1;
    v11 = 2;
    v12 = v2;
    do
    {
      if (v11 >= v8 || (v13 = (v12 + 8 * v11), v5 > *v13) || *(v12 + 8 * v10) > *v13)
      {
        v13 = (v12 + 8 * v10);
        v11 = v10;
        if (v5 > *v13)
        {
          break;
        }
      }

      *v2 = *v13;
      v6 = *(a1 + 32);
      v12 = *(a1 + 16);
      v2 = v12 + 8 * v11;
      *(v6 + 8 * (*(v2 + 4) - *(a1 + 24))) = v9;
      *v2 = v5;
      v7 = *(a1 + 24);
      *(v6 + 8 * (HIDWORD(v5) - v7)) = v11;
      v10 = (2 * v11) | 1;
      v9 = v11;
      v11 = 2 * v11 + 2;
      v8 = *(a1 + 8);
    }

    while (v10 < v8);
  }

  *(v6 + 8 * (result - v7)) = -1;
  return result;
}

uint64_t sub_2366C6854(int *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a1[102];
  v68 = *(*(a2 + 48) + 4 * a3);
  v13 = *(*(a2 + 64) + 8 * a3);
  v67 = *(*(a2 + 80) + 8 * a3);
  v14 = *(*(a2 + 88) + 8 * a3);
  v15 = *(*(a2 + 72) + 8 * a3);
  v17 = *(a6 + 8);
  v16 = *(a6 + 16);
  v65 = *(a8 + 4 * a4);
  v18 = a1[124];
  *(a7 + 4 * a5) += *(v15 + 4 * a4);
  v19 = a4;
  *(a7 + 4 * v65) -= *(v15 + 4 * a4);
  v20 = (v16 + 16 * a4);
  *(a8 + 4 * a4) = a5;
  v21 = a4 + 1;
  v22 = v20[1];
  if (v12 >= *(v13 + 4 * (a4 + 1)) - *(v13 + 4 * a4))
  {
    v23 = *(v13 + 4 * (a4 + 1)) - *(v13 + 4 * a4);
  }

  else
  {
    v23 = v12;
  }

  if (v23)
  {
    v58 = v20[1];
    v59 = (v16 + 16 * a4);
    v60 = v18;
    v61 = a4;
    v62 = a4;
    v63 = v17;
    v25 = v59 + 3;
    v24 = v59[3];
    if (v24 == -1)
    {
      v24 = *(a6 + 24);
      *v25 = v24;
      *(a6 + 24) = v24 + v23;
    }

    v26 = sub_2366D0B1C(((v23 + v24 - 1) >> *(a6 + 32)) + 1);
    v27 = *(a6 + 28);
    v28 = (v27 << v26) - v27;
    if (!*(*(a6 + 48) + 8 * v26))
    {
      *(*(a6 + 48) + 8 * v26) = malloc_type_malloc(8 * (v27 << v26), 0x100004000313F17uLL);
    }

    v20 = v59;
    if (*v25 >= v28)
    {
      v29 = *(*(a6 + 48) + 8 * v26) + 8 * (*v25 - v28);
    }

    else
    {
      *v25 = v28;
      *(a6 + 24) = v28 + v23;
      v29 = *(*(a6 + 48) + 8 * v26);
    }

    v19 = v62;
    v17 = v63;
    v18 = v60;
    a4 = v61;
    v22 = v58;
  }

  else
  {
    v29 = 0;
  }

  v30 = v20[2];
  if (v30)
  {
    v31 = 0;
    v32 = (v29 + 4);
    while (1)
    {
      v33 = *v32;
      v32 += 2;
      if (v33 == a5)
      {
        break;
      }

      if (v30 == ++v31)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (v31 == -1 || v31 == v30)
  {
LABEL_23:
    v40 = *v20;
    v39 = v20[1];
    if (*v20 > 0)
    {
      *(v29 + 8 * v30) = v40;
      v41 = v39 + v40;
      v20[1] = v41;
      v20[2] = v30 + 1;
      *v20 = 0;
      v42 = (v22 - v41);
LABEL_28:
      *(v29 + 8 * v30 + 4) = v65;
      goto LABEL_30;
    }

    v37 = *(v29 + 0x7FFFFFFF8);
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
    v34 = v31;
    v35 = 8 * v31;
    v36 = *(v29 + v35);
    v37 = *v20;
    v38 = v20[1];
    *(v29 + v35) = *v20;
    v39 = v37 - v36 + v38;
    *v20 = v36;
    v20[1] = v39;
  }

  v42 = (v22 - v39);
  if (v37)
  {
    v30 = v34;
    goto LABEL_28;
  }

  v43 = v30 - 1;
  v20[2] = v43;
  *(v29 + 8 * v34) = *(v29 + 8 * v43);
LABEL_30:
  v44 = a4 - *(v17 + 4);
  v45 = v17[4];
  v46 = *(v45 + 4 * v44);
  v48 = *v20;
  v47 = v20[1];
  if (v46 != -1)
  {
    if (v18)
    {
      if (!v48 || v47 > 0)
      {
        goto LABEL_43;
      }
    }

    else if (v47 >= v48)
    {
      goto LABEL_43;
    }

    v49 = v17[3];
    v50 = *v17 - 1;
    v51 = *(v49 + 4 * v50);
    *v17 = v50;
    *(v49 + 4 * v46) = v51;
    *(v45 + 4 * (v51 - *(v17 + 4))) = *(v45 + 4 * v44);
    *(v45 + 4 * v44) = -1;
    goto LABEL_43;
  }

  if (!v18)
  {
    if (v47 < v48)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (!v48 || v47 >= 1)
  {
LABEL_42:
    v52 = *v17;
    *(v45 + 4 * v44) = *v17;
    v53 = v17[3];
    *v17 = v52 + 1;
    *(v53 + 4 * v52) = a4;
  }

LABEL_43:
  v54 = *(v13 + 4 * v19);
  if (v54 < *(v13 + 4 * v21))
  {
    do
    {
      v55 = *(v67 + 4 * v54);
      v56 = *(v14 + 4 * v54);
      if (v55 >= v68)
      {
        sub_2366C71F8((v55 >> *(a2 + 24)) - 1, a5 | (v65 << 32), v56 | ((*(a2 + 20) & v55) << 32), a10);
      }

      else
      {
        v42 = sub_2366C6270(a1, v55, a5, v65, v56, a2, a6, a9) + v42;
      }

      ++v54;
    }

    while (v54 < *(v13 + 4 * v21));
  }

  return v42;
}

uint64_t sub_2366C6BFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*a1, a2);
  v4 = sub_2366DE2E4(*a1);
  v5 = (*(a1 + 8) + (v3 << 6));
  if (sub_2366C61B4(0, a1))
  {
    goto LABEL_2;
  }

  if (!*v5)
  {
    *v5 = 1;
  }

  v7 = (v3 + 1) % v4;
  if (v7 != v3)
  {
    v10 = *(a1 + 8);
    do
    {
      while (!*(v10 + (v7 << 6)))
      {
        if (sub_2366C61B4(0, a1))
        {
          goto LABEL_2;
        }

        if (!*v5)
        {
          *v5 = 1;
        }

        __isb(0xFu);
        v10 = *(a1 + 8);
      }

      if (v7 + 1 == v4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (v7 != v3);
  }

  if (sub_2366C61B4(0, a1) || (*v5 = 2, sub_2366C61B4(0, a1)))
  {
LABEL_2:
    result = 0;
    *v5 = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    v9 = v3;
    do
    {
      v9 = (v9 + 1) % v4;
      while (*(v8 + (v9 << 6)) != 2)
      {
        if (sub_2366C61B4(0, a1))
        {
          goto LABEL_2;
        }

        __isb(0xFu);
        v8 = *(a1 + 8);
      }

      result = 1;
    }

    while (v9 != v3);
  }

  return result;
}

uint64_t sub_2366C6D5C(int *a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*a1, a2);
  v4 = sub_2366DE2E4(*a1);
  v5 = *(a1 + 1) + (v3 << 6);
  sub_2366DE30C(*a1);
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 4) = 0;
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 2);
    do
    {
      *(*(v7 + 8 * v3) + v6) = 0;
      *(*(v7 + 8 * v3) + v6 + 8) = 0;
      *(*(v7 + 8 * v3) + v6 + 16) = 0;
      v6 += 24;
      --v4;
    }

    while (v4);
  }

  v8 = *a1;

  return sub_2366DE30C(v8);
}

uint64_t sub_2366C6E04(int a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  if (a2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a4;
    v13 = a3;
    do
    {
      v14 = *v13++;
      *v12++ -= v14;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v15 = sub_2366DE2A4(a5, a2);
  v16 = sub_2366DE2E4(a5);
  sub_2366D0AD8(v15, v16, v10);
  sub_2366D0AF0(v15, v16, v10);
  v17 = sub_2366DE584(8 * v16, a5);
  v17[v15] = v6;
  sub_2366DE30C(a5);
  if (!v15 && v16 >= 2)
  {
    for (i = 1; i != v16; ++i)
    {
      if (v8)
      {
        v19 = v17[i];
        v20 = *v17;
        v21 = v10;
        do
        {
          v22 = *v19++;
          *v20++ += v22;
          --v21;
        }

        while (v21);
      }
    }

    for (j = 1; j != v16; ++j)
    {
      memcpy(v17[j], *v17, 4 * v10);
    }
  }

  sub_2366DE30C(a5);
  if (v8)
  {
    v24 = v10;
    v25 = v6;
    v26 = v7;
    do
    {
      v27 = *v26++;
      *v25++ += v27;
      --v24;
    }

    while (v24);
  }

  sub_2366DE30C(a5);
  if (!a1 && v8)
  {
    do
    {
      v28 = *v6++;
      *v7++ = v28;
      --v10;
    }

    while (v10);
  }

  return sub_2366DE30C(a5);
}

void sub_2366C6FA8(void **a1)
{
  free(a1[2]);
  free(a1[4]);

  free(a1);
}

void sub_2366C6FEC(unsigned int *a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*a1, a2);
  v4 = *a1;
  sub_2366DE30C(v4);
  free(*(*(a1 + 2) + 8 * v3));
  free(*(*(a1 + 1) + (v3 << 6) + 24));
  sub_2366DE30C(*a1);
  if (!v3)
  {
    free(*(a1 + 2));
    free(*(a1 + 1));
  }

  sub_2366DE830(a1, v4);
}

unint64_t sub_2366C707C(unint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 8) - 1;
  *(a2 + 8) = v3;
  v4 = *(v2 + 8 * v3);
  v5 = *(a2 + 32);
  v6 = result;
  v7 = *(v5 + 8 * (result - *(a2 + 24)));
  v8 = v2 + 8 * v7;
  if (v4 <= *v8)
  {
    *v8 = v4;
    v13 = *(a2 + 24);
    *(v5 + 8 * (HIDWORD(v4) - v13)) = v7;
    v14 = (2 * v7) | 1;
    v15 = *(a2 + 8);
    if (v14 < v15)
    {
      result = 2 * v7;
      do
      {
        result += 2;
        if (result < v15 && (v16 = (v2 + 8 * result), v4 <= *v16) && *(v2 + 8 * v14) <= *v16)
        {
          v14 = result;
        }

        else
        {
          v16 = (v2 + 8 * v14);
          if (v4 > *v16)
          {
            v13 = v13;
            break;
          }
        }

        v17 = v14;
        *v8 = *v16;
        v5 = *(a2 + 32);
        v2 = *(a2 + 16);
        v8 = v2 + 8 * v14;
        *(v5 + 8 * (*(v8 + 4) - *(a2 + 24))) = v7;
        *v8 = v4;
        v13 = *(a2 + 24);
        *(v5 + 8 * (HIDWORD(v4) - v13)) = v14;
        result = 2 * v14;
        v14 = (2 * v14) | 1;
        v15 = *(a2 + 8);
        v7 = v17;
      }

      while (v14 < v15);
    }
  }

  else
  {
    if (v7)
    {
      do
      {
        v9 = v7 - 1;
        v10 = (v7 - 1) >> 1;
        v11 = (v2 + 8 * v10);
        if (*v11 > v4)
        {
          break;
        }

        v12 = v7;
        v7 = (v7 - 1) >> 1;
        *(v2 + 8 * v12) = *v11;
        v5 = *(a2 + 32);
        v2 = *(a2 + 16);
        *(v5 + 8 * (*(v2 + 8 * v10 + 4) - *(a2 + 24))) = v12;
      }

      while (v9 > 1);
    }

    *(v2 + 8 * v7) = v4;
    v13 = *(a2 + 24);
    *(v5 + 8 * (HIDWORD(v4) - v13)) = v7;
  }

  *(v5 + 8 * (v6 - v13)) = -1;
  return result;
}

uint64_t sub_2366C71F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2366DE2A4(*a4, a2);
  v9 = *(a4 + 8) + (result << 6);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  *(v9 + 16) = v11 + 1;
  v12 = (v10 + 24 * v11);
  v12[1] = a3;
  v12[2] = 0;
  *v12 = a2;
  v13 = *(a4 + 16);
  v14 = *(v13 + 8 * a1) + 24 * result;
  v17 = *(v14 + 16);
  v15 = (v14 + 16);
  v16 = v17;
  if (v17)
  {
    *(v16 + 16) = v12;
    v18 = (*(v13 + 8 * a1) + 24 * result + 16);
  }

  else
  {
    *v15 = v12;
    v18 = (*(v13 + 8 * a1) + 24 * result);
  }

  *v18 = v12;
  v19 = (*(a4 + 8) + (a1 << 6));
  *v19 = 0;
  v19[1] = 1;
  return result;
}

void *sub_2366C72AC(unint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10A00406B1342FFuLL);
  *v2 = a1;
  v2[1] = 0;
  v2[2] = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  v3 = malloc_type_malloc(0x38uLL, 0x1020040D8E0519AuLL);
  *v3 = 0;
  v4 = sub_2366D0B2C(a1);
  v3[1] = v4;
  v3[2] = v4;
  v3[3] = v4 - 1;
  v3[5] = malloc_type_malloc(24 * v4, 0x100004034E20058uLL);
  v3[4] = a1;
  v3[6] = malloc_type_malloc(24 * a1, 0x100004034E20058uLL);
  v5 = v3[2];
  if (v5)
  {
    v6 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v7 = vdupq_n_s64(v5 - 1);
    v8 = xmmword_23681F910;
    v9 = xmmword_23681F920;
    v10 = (v3[5] + 48);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v7, v9));
      if (vuzp1_s16(v12, *v7.i8).u8[0])
      {
        *(v10 - 12) = -1;
      }

      if (vuzp1_s16(v12, *&v7).i8[2])
      {
        *(v10 - 6) = -1;
      }

      if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
      {
        *v10 = -1;
        v10[6] = -1;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 24;
      v6 -= 4;
    }

    while (v6);
  }

  v2[3] = v3;
  return v2;
}

uint64_t sub_2366C7430(void *a1, uint64_t a2)
{
  v4 = sub_2366DE2A4(*a2, a2);
  result = sub_2366DE2E4(*a2);
  v6 = *(a2 + 8) + (v4 << 6);
  *(v6 + 4) = 0;
  v7 = (v6 + 4);
  if (result)
  {
    v8 = 0;
    v9 = *(a2 + 16);
    for (i = *(v9 + 8 * v4) + 8; ; i += 24)
    {
      v11 = *(i - 8);
      if (v11)
      {
        break;
      }

      if (*i)
      {
        v11 = *(*i + 8);
        if (v11)
        {
          break;
        }
      }

      v8 += 24;
      if (!--result)
      {
        return result;
      }
    }

    *v7 = 1;
    if (a1)
    {
      *i = v11;
      *(*(v9 + 8 * v4) + v8) = v11[1];
      *a1 = *v11;
    }

    else
    {
      *(i - 8) = v11;
    }

    return 1;
  }

  return result;
}

void sub_2366C74EC(uint64_t a1)
{
  free(*(a1 + 16));
  v2 = *(a1 + 24);
  free(v2[5]);
  free(v2[6]);
  free(v2);

  free(a1);
}

uint64_t sub_2366C7544(int a1, uint64_t a2, void *a3)
{
  v6 = a3[1];
  a3[1] = v6 + 1;
  if (v6)
  {
    while (1)
    {
      v7 = v6 - 1;
      v8 = (v6 - 1) >> 1;
      v9 = a3[2];
      if (*(v9 + 8 * v8) > a1)
      {
        break;
      }

      *(v9 + 8 * v6) = *(v9 + 8 * v8);
      sub_2366C783C(*(a3[2] + 8 * v8 + 4), v6, a3[3]);
      v6 = v8;
      if (v7 <= 1)
      {
        goto LABEL_7;
      }
    }

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  v10 = a3[3];
  v11 = (a3[2] + 8 * v8);
  *v11 = a1;
  v11[1] = a2;

  return sub_2366C783C(a2, v8, v10);
}

uint64_t sub_2366C7600(void *a1)
{
  v2 = a1[2];
  v3 = *(v2 + 4);
  v4 = a1[1] - 1;
  a1[1] = v4;
  v5 = *(v2 + 8 * v4);
  *v2 = v5;
  v16 = v5;
  v6 = HIDWORD(v5);
  sub_2366C783C(HIDWORD(v5), 0, a1[3]);
  v7 = a1[1];
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = 1;
    v10 = 2;
    do
    {
      v11 = a1[2];
      if (v10 >= v7 || (v12 = *(v11 + 8 * v10), v16 > v12) || *(v11 + 8 * v9) > v12)
      {
        v10 = v9;
        if (v16 > *(v11 + 8 * v9))
        {
          break;
        }
      }

      v13 = v10;
      *(v11 + 8 * v8) = *(v11 + 8 * v10);
      sub_2366C783C(*(a1[2] + 8 * v10 + 4), v8, a1[3]);
      v14 = a1[3];
      *(a1[2] + 8 * v13) = v16;
      sub_2366C783C(v6, v13, v14);
      v9 = (2 * v13) | 1;
      v10 = 2 * v13 + 2;
      v7 = a1[1];
      v8 = v13;
    }

    while (v9 < v7);
  }

  sub_2366C78E4(v3, a1[3]);
  return v3;
}

unint64_t *sub_2366C7728(unint64_t *result)
{
  v1 = result;
  v2 = result[1];
  if (*result * 0.25 >= v2)
  {
    while (v2)
    {
      v12 = v2 - 1;
      v1[1] = v12;
      result = sub_2366C78E4(*(v1[2] + 8 * v12 + 4), v1[3]);
      v2 = v1[1];
    }
  }

  else
  {
    v3 = result[3];
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v6 = vdupq_n_s64(v4 - 1);
      v7 = xmmword_23681F910;
      v8 = xmmword_23681F920;
      v9 = (*(v3 + 40) + 48);
      v10 = vdupq_n_s64(4uLL);
      do
      {
        v11 = vmovn_s64(vcgeq_u64(v6, v8));
        if (vuzp1_s16(v11, *v6.i8).u8[0])
        {
          *(v9 - 12) = -1;
        }

        if (vuzp1_s16(v11, *&v6).i8[2])
        {
          *(v9 - 6) = -1;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
        {
          *v9 = -1;
          v9[6] = -1;
        }

        v7 = vaddq_s64(v7, v10);
        v8 = vaddq_s64(v8, v10);
        v9 += 24;
        v5 -= 4;
      }

      while (v5);
    }

    *v3 = 0;
    *(v3 + 36) = 0;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_2366C783C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24) & result;
  v4 = *(a3 + 40);
  v5 = v4 + 24 * v3;
  if (*v5 == -1)
  {
    *v5 = result;
    v7 = v4 + 24 * v3;
LABEL_7:
    *(v7 + 8) = a2;
    *(v7 + 16) = -1;
    ++*a3;
    return result;
  }

  if (*v5 == result)
  {
LABEL_5:
    *(v5 + 8) = a2;
    return result;
  }

  while (1)
  {
    v6 = *(v5 + 16);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v5 = *(a3 + 48) + 24 * v6;
    if (*v5 == result)
    {
      goto LABEL_5;
    }
  }

  v8 = *(a3 + 36);
  if (v8 < *(a3 + 32))
  {
    *(a3 + 36) = v8 + 1;
    *(v5 + 16) = v8;
    v7 = *(a3 + 48) + 24 * v8;
    *v7 = result;
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2366C78E4(uint64_t result, void *a2)
{
  v3 = (a2[5] + 24 * (a2[3] & result));
  if (*v3 == result)
  {
    result = v3[4];
    if ((result & 0x80000000) != 0)
    {
      *v3 = -1;
    }

    else
    {
      v4 = a2[6] + 24 * result;
LABEL_9:
      v8 = *v4;
      *(v3 + 2) = *(v4 + 16);
      *v3 = v8;
LABEL_10:
      result = sub_2366C79BC(result, a2);
    }

    --*a2;
  }

  else if (*v3 != -1)
  {
    while (1)
    {
      v5 = v3[4];
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      v6 = v3;
      v7 = a2[6];
      v3 = (v7 + 24 * v5);
      if (*v3 == result)
      {
        result = v3[4];
        if ((result & 0x80000000) == 0)
        {
          v4 = v7 + 24 * result;
          goto LABEL_9;
        }

        v6[4] = -1;
        result = v5;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2366C79BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  *(a2 + 36) = v2 - 1;
  if (v2 - 1 != result)
  {
    v3 = *(a2 + 48);
    v4 = v3 + 24 * result;
    v5 = (v3 + 24 * (v2 - 1));
    v6 = *v5;
    *(v4 + 16) = *(v5 + 2);
    *v4 = v6;
    v7 = *(a2 + 48);
    for (i = *(a2 + 40) + 24 * (*(a2 + 24) & *(v7 + 24 * result)); ; i = v7 + 24 * v9)
    {
      v9 = *(i + 16);
      if (v9 == *(a2 + 36))
      {
        break;
      }
    }

    *(i + 16) = result;
  }

  return result;
}

uint64_t sub_2366C7A28(int a1, void *a2)
{
  v2 = a2[5] + 24 * (a2[3] & a1);
  if (*v2 == a1)
  {
    return *(v2 + 8);
  }

  if (*v2 != -1)
  {
    while (1)
    {
      v3 = *(v2 + 16);
      if ((v3 & 0x80000000) != 0)
      {
        break;
      }

      v2 = a2[6] + 24 * v3;
      if (*v2 == a1)
      {
        return *(v2 + 8);
      }
    }
  }

  return -1;
}

uint64_t sub_2366C7A84(int a1, uint64_t a2)
{
  result = sub_2366DE2A4(*(a2 + 24), a2);
  v5 = a1 - *a2;
  v6 = *(a2 + 16);
  if (*(v6 + 4 * v5) == -1)
  {
    v7 = (*(a2 + 8) + (result << 6));
    v8 = *v7;
    v9 = v7[1];
    *(v6 + 4 * v5) = *v7;
    *v7 = v8 + 1;
    *(v9 + 4 * v8) = a1;
  }

  return result;
}

uint64_t sub_2366C7AE4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = a3;
  v102 = *(*(a2 + 48) + 4 * a3);
  v12 = *(*(a2 + 64) + 8 * a3);
  v101 = *(*(a2 + 80) + 8 * a3);
  v13 = *(*(a2 + 72) + 8 * a3);
  v14 = *(a2 + 128);
  v99 = *(a2 + 136);
  v100 = *(*(a2 + 88) + 8 * a3);
  v15 = *(v99 + 8 * a3);
  v16 = *(a1 + 408);
  v17 = *(v15 + 4 * a4);
  v18 = *(a6 + 8 * a3);
  v19 = (*(v18 + 16) + 16 * a4);
  v20 = *(a2 + 24);
  *(v14 + 4 * a5) += *(v13 + 4 * a4);
  *(v14 + 4 * v17) -= *(v13 + 4 * a4);
  v21 = ((a3 + 1) << v20) | a4;
  *(v15 + 4 * a4) = a5;
  v92 = a4 + 1;
  v22 = v19[1];
  v93 = v12;
  if (v16 >= *(v12 + 4 * (a4 + 1)) - *(v12 + 4 * a4))
  {
    v23 = *(v12 + 4 * (a4 + 1)) - *(v12 + 4 * a4);
  }

  else
  {
    v23 = v16;
  }

  result = sub_2366C8170(v18, a4, v23);
  v25 = v19[2];
  if (v25)
  {
    v26 = 0;
    v27 = (result + 4);
    while (1)
    {
      v28 = *v27;
      v27 += 2;
      if (v28 == a5)
      {
        break;
      }

      if (v25 == ++v26)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v26 = 0;
  }

  if (v26 == -1 || v26 == v25)
  {
LABEL_13:
    v35 = *v19;
    v34 = v19[1];
    if (*v19 > 0)
    {
      *(result + 8 * v25) = v35;
      v36 = v34 + v35;
      v19[1] = v36;
      v19[2] = v25 + 1;
      *v19 = 0;
      v98 = v22 - v36;
LABEL_18:
      v37 = 0;
      *(result + 8 * v25 + 4) = v17;
      goto LABEL_20;
    }

    v32 = *(result + 0x7FFFFFFF8);
    v29 = 0xFFFFFFFFLL;
  }

  else
  {
    v29 = v26;
    v30 = 8 * v26;
    v31 = *(result + v30);
    v32 = *v19;
    v33 = v19[1];
    *(result + v30) = *v19;
    v34 = v32 - v31 + v33;
    *v19 = v31;
    v19[1] = v34;
  }

  v98 = v22 - v34;
  if (v32)
  {
    v25 = v29;
    goto LABEL_18;
  }

  v38 = v25 - 1;
  v19[2] = v38;
  *(result + 8 * v29) = *(result + 8 * v38);
  v37 = 1;
LABEL_20:
  v39 = v92;
  if (*(*(a7 + 16) + 4 * (v21 - *a7)) == -1)
  {
    if ((v37 & 1) == 0)
    {
      result = sub_2366C7A84(v21, a7);
    }
  }

  else if (v37)
  {
    result = sub_2366C828C(v21, a7);
  }

  v40 = v93;
  v41 = *(v93 + 4 * a4);
  if (v41 < *(v93 + 4 * v92))
  {
    v97 = v11;
    v88 = v11;
    while (1)
    {
      v42 = *(v101 + 4 * v41);
      v43 = v97;
      v44 = v11;
      if (v42 >= v102)
      {
        v45 = v42 >> *(a2 + 24);
        v42 &= *(a2 + 20);
        v43 = v45 - 1;
        v44 = v45 - 1;
      }

      v46 = *(v100 + 4 * v41);
      v47 = v42;
      v48 = *(*(v99 + 8 * v43) + 4 * v42);
      if (v48 == a5 || v48 == v17)
      {
        break;
      }

      result = sub_2366C71F8(v43, a5 | (v17 << 32), v46 | (v47 << 32), a8);
LABEL_95:
      if (++v41 >= *(v40 + 4 * v39))
      {
        return result;
      }
    }

    v50 = *(a6 + 8 * v43);
    v51 = *(*(*(a2 + 136) + 8 * v43) + 4 * v47);
    v95 = *(a2 + 24);
    v52 = (*(v50 + 16) + 16 * v47);
    v53 = *(*(a2 + 64) + 8 * v43);
    v96 = v52[1];
    v54 = *(v53 + 4 * (v47 + 1)) - *(v53 + 4 * v47);
    if (*(a1 + 408) >= v54)
    {
      v55 = v54;
    }

    else
    {
      v55 = *(a1 + 408);
    }

    result = sub_2366C8170(v50, v47, v55);
    v56 = result;
    if (v51 == a5)
    {
      v59 = v52[1];
      *v52 += v46;
      v58 = v59 - v46;
    }

    else
    {
      if (v51 != v17)
      {
        goto LABEL_42;
      }

      v57 = v52[1];
      *v52 -= v46;
      v58 = v57 + v46;
    }

    v52[1] = v58;
LABEL_42:
    v60 = v52[2];
    if (v60)
    {
      v61 = result;
      v62 = v52[2];
      while (v61[1] != v17)
      {
        v61 += 2;
        if (!--v62)
        {
          goto LABEL_52;
        }
      }

      v64 = *v61 - v46;
      if (*v61 != v46)
      {
        *v61 = v64;
LABEL_52:
        v64 = 1;
        goto LABEL_53;
      }

      v65 = v60 - 1;
      v52[2] = v65;
      *v61 = *(result + 8 * v65);
      v60 = v52[2];
      if (!v60)
      {
        LODWORD(v63) = 0;
        goto LABEL_58;
      }

LABEL_53:
      v63 = 0;
      v66 = result;
      while (v66[1] != a5)
      {
        ++v63;
        v66 += 2;
        if (v60 == v63)
        {
          LODWORD(v63) = v60;
          goto LABEL_58;
        }
      }

      *v66 += v46;
    }

    else
    {
      LODWORD(v63) = 0;
      v64 = 1;
    }

LABEL_58:
    v67 = ((v44 + 1) << v95) | v47;
    if (v51 != a5 && v63 == v60)
    {
      v68 = (result + 8 * v60);
      v52[2] = v60 + 1;
      *v68 = v46;
      v68[1] = a5;
      if (*(*(a7 + 16) + 4 * (v67 - *a7)) == -1)
      {
        goto LABEL_66;
      }

LABEL_67:
      if (a9 && v51 == v17)
      {
        v69 = v52[2];
        if (v69)
        {
          v70 = (v56 + 4);
          while (*v70 != a5)
          {
            v70 += 2;
            if (!--v69)
            {
              goto LABEL_73;
            }
          }

          v71 = (*(v70 - 1) - *v52);
        }

        else
        {
LABEL_73:
          v71 = 0;
        }

        v72 = a9[3];
        v73 = sub_2366C7A28(v67, v72);
        if (v73 == -1)
        {
          result = sub_2366C7544(v71, v67, a9);
        }

        else
        {
          v74 = v73;
          v75 = a9[2];
          v76 = (v75 + 8 * v73);
          if (*v76 >= v71)
          {
            *v76 = v71;
            v76[1] = v67;
            result = sub_2366C783C(v67, v73, v72);
            v79 = (2 * v74) | 1;
            v80 = a9[1];
            if (v79 < v80)
            {
              v81 = 2 * v74;
              do
              {
                v82 = v81 + 2;
                v83 = a9[2];
                if (v82 >= v80 || (v84 = *(v83 + 8 * v82), v84 < v71) || *(v83 + 8 * v79) > v84)
                {
                  v82 = v79;
                  if (*(v83 + 8 * v79) < v71)
                  {
                    break;
                  }
                }

                *(v83 + 8 * v74) = *(v83 + 8 * v82);
                sub_2366C783C(*(a9[2] + 8 * v82 + 4), v74, a9[3]);
                v85 = a9[3];
                v86 = (a9[2] + 8 * v82);
                *v86 = v71;
                v86[1] = v67;
                result = sub_2366C783C(v67, v82, v85);
                v81 = 2 * v82;
                v79 = (2 * v82) | 1;
                v80 = a9[1];
                v74 = v82;
              }

              while (v79 < v80);
            }
          }

          else
          {
            if (v73)
            {
              while (1)
              {
                v77 = v74 - 1;
                v78 = (v74 - 1) >> 1;
                v75 = a9[2];
                if (*(v75 + 8 * v78) > v71)
                {
                  break;
                }

                *(v75 + 8 * v74) = *(v75 + 8 * v78);
                sub_2366C783C(*(a9[2] + 8 * v78 + 4), v74, a9[3]);
                v74 = (v74 - 1) >> 1;
                if (v77 <= 1)
                {
                  v75 = a9[2];
                  goto LABEL_92;
                }
              }

              v78 = v74;
LABEL_92:
              v72 = a9[3];
            }

            else
            {
              v78 = 0;
            }

            v87 = (v75 + 8 * v78);
            *v87 = v71;
            v87[1] = v67;
            result = sub_2366C783C(v67, v78, v72);
          }
        }
      }

      goto LABEL_94;
    }

    if (*(*(a7 + 16) + 4 * (v67 - *a7)) == -1)
    {
      if (v64)
      {
LABEL_66:
        result = sub_2366C7A84(v67, a7);
        goto LABEL_67;
      }
    }

    else
    {
      if (v64)
      {
        goto LABEL_67;
      }

      result = sub_2366C828C(v67, a7);
    }

LABEL_94:
    v98 = v96 + v98 - v52[1];
    v11 = v88;
    v40 = v93;
    v39 = v92;
    goto LABEL_95;
  }

  return result;
}

uint64_t sub_2366C8170(uint64_t a1, unsigned int a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 16) + 16 * a2;
  v8 = *(v5 + 12);
  v7 = (v5 + 12);
  v6 = v8;
  if (v8 == -1)
  {
    j__os_unfair_lock_lock((a1 + 56));
    v9 = *(a1 + 24);
    *v7 = v9;
    *(a1 + 24) = v9 + a3;
    j__os_unfair_lock_unlock((a1 + 56));
    v6 = *v7;
  }

  v10 = sub_2366D0B1C(((a3 + v6 - 1) >> *(a1 + 32)) + 1);
  v11 = *(a1 + 28);
  v12 = v11 << v10;
  v13 = (v11 << v10) - v11;
  if (!*(*(a1 + 48) + 8 * v10))
  {
    j__os_unfair_lock_lock((a1 + 56));
    if (!*(*(a1 + 48) + 8 * v10))
    {
      *(*(a1 + 48) + 8 * v10) = malloc_type_malloc(8 * v12, 0x100004000313F17uLL);
    }

    j__os_unfair_lock_unlock((a1 + 56));
  }

  if (*v7 >= v13)
  {
    return *(*(a1 + 48) + 8 * v10) + 8 * (*v7 - v13);
  }

  *v7 = v13;
  *(a1 + 24) = v13 + a3;
  return *(*(a1 + 48) + 8 * v10);
}

uint64_t sub_2366C828C(int a1, unsigned int *a2)
{
  result = sub_2366DE2A4(a2[6], a2);
  v5 = a1 - *a2;
  v6 = *(a2 + 2);
  v7 = *(v6 + 4 * v5);
  if (v7 != -1)
  {
    v8 = (*(a2 + 1) + (result << 6));
    v9 = v8[1];
    v10 = *v8 - 1;
    v11 = *(v9 + 4 * v10);
    *v8 = v10;
    *(v9 + 4 * v7) = v11;
    *(v6 + 4 * (v11 - *a2)) = *(v6 + 4 * v5);
    *(v6 + 4 * v5) = -1;
  }

  return result;
}

void sub_2366C8304(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unknown scantype '%d'\n", *a1);
  fflush(*v2);
  abort();
}

void sub_2366C8360(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unsupported refinement type '%d' for K-Way partitions.", *a1);
  fflush(*v2);
  abort();
}

uint64_t sub_2366C83BC(uint64_t a1, unsigned int *a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = sub_2366DE2E4(*(a1 + 400));
  v6 = *a2;
  v7 = *(a1 + 488);
  v8 = v5;
  v9 = v7 / v5;
  if (!v4)
  {
    sub_2366E8294(a1 + 264);
  }

  v19 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v10 = sub_2366DE78C(8uLL, *(a1 + 400));
  sub_2366BEA68(a2, &v18, &v17, &v15, &v16, &v19);
  if (v4 >= v7 - v9 * v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11)
  {
    v12 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
    v13 = sub_2366BBE68(a1, *(a1 + 408), *(a1 + 432), v11, 1, v6, v18, v17, v15, v16, v12);
  }

  else
  {
    v12 = 0;
    v13 = a2[44] + 1;
  }

  if (v4 == sub_2366C85A0(v13, *(a1 + 400)))
  {
    a2[52] = v13;
    *v10 = v12;
  }

  sub_2366DE30C(*(a1 + 400));
  sub_2366BF854(a1, a2);
  if (*(a1 + 8) >= 2)
  {
    printf("Selected initial partition with cut of %d\n", a2[52]);
  }

  memcpy(*(*(a2 + 17) + 8 * v4), (*v10 + 4 * v19), 4 * *(*(a2 + 6) + 4 * v4));
  sub_2366DE830(v10, *(a1 + 400));
  if (!v4)
  {
    free(v18);
    free(v17);
    free(v15);
    free(v16);
  }

  if (v12)
  {
    free(v12);
  }

  if (!v4)
  {
    sub_2366E82F4(a1 + 264);
  }

  return a2[52];
}

uint64_t sub_2366C85A0(int a1, uint64_t a2)
{
  v4 = sub_2366DE2A4(a2, a2);
  v5 = sub_2366DE2E4(a2);
  v6 = sub_2366DE584(4 * v5 + 16, a2);
  v7 = ((&v6[v5 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
  v6[v4] = a1;
  sub_2366DE30C(a2);
  if (!v4)
  {
    if (v5 < 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      for (i = 1; i != v5; ++i)
      {
        v10 = v6[i];
        v11 = a1 <= v10;
        if (a1 >= v10)
        {
          a1 = v6[i];
        }

        if (!v11)
        {
          v8 = i;
        }
      }
    }

    *v7 = v8;
  }

  sub_2366DE30C(a2);
  v12 = *v7;
  sub_2366DE30C(a2);
  return v12;
}

uint64_t sub_2366C866C(uint64_t a1, unsigned int *a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = sub_2366DE2E4(*(a1 + 400));
  v6 = *a2;
  v7 = *(a1 + 488);
  v8 = v5;
  v9 = v7 / v5;
  v10 = v7 % v5;
  if (!v4)
  {
    sub_2366E8294(a1 + 264);
  }

  v21 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v11 = sub_2366DE78C(8uLL, *(a1 + 400));
  sub_2366BEA68(a2, &v20, &v19, &v17, &v18, &v21);
  if (v10)
  {
    v12 = v10;
    do
    {
      if (!(v12 % v10) && !(v8 % v10))
      {
        v12 /= v10;
        v8 /= v10;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = 0;
  }

  if (v4 % v8 >= v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  if (v13)
  {
    v14 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
    v15 = sub_2366BC064(a1, v13, v6, v20, v19, v17, v18, v14);
  }

  else
  {
    v14 = 0;
    v15 = a2[42] + 1;
  }

  if (v4 == sub_2366C85A0(v15, *(a1 + 400)))
  {
    a2[53] = v15;
    *v11 = v14;
  }

  sub_2366DE30C(*(a1 + 400));
  sub_2366BF854(a1, a2);
  if (*(a1 + 8) >= 2)
  {
    printf("Selected initial partition with separator of %d\n", a2[53]);
  }

  memcpy(*(*(a2 + 17) + 8 * v4), (*v11 + 4 * v21), 4 * *(*(a2 + 6) + 4 * v4));
  sub_2366DE830(v11, *(a1 + 400));
  if (!v4)
  {
    free(v20);
    free(v19);
    free(v17);
    free(v18);
  }

  if (v14)
  {
    free(v14);
  }

  if (!v4)
  {
    sub_2366E82F4(a1 + 264);
  }

  return a2[53];
}

uint64_t sub_2366C8878(const char *a1, int a2)
{
  v10 = 0;
  v4 = ioctl(1, 0x40087468uLL, &v10);
  if (WORD1(v10) - 16 < 0x271 && v4 == 0)
  {
    v6 = WORD1(v10);
  }

  else
  {
    v6 = 80;
  }

  printf("%c ", a2);
  if (strlen(a1) <= v6 - 2)
  {
    printf("%s ");
  }

  else
  {
    printf("%.*s");
  }

  v7 = strlen(a1);
  if (v7 + 3 < v6)
  {
    v8 = v6 - v7 - 3;
    do
    {
      putchar(a2);
      --v8;
    }

    while (v8);
  }

  putchar(10);
  return 1;
}

uint64_t sub_2366C8968(int a1)
{
  v6 = 0;
  v2 = ioctl(1, 0x40087468uLL, &v6);
  if (WORD1(v6) - 16 < 0x271 && v2 == 0)
  {
    v4 = WORD1(v6);
  }

  else
  {
    v4 = 80;
  }

  for (; v4; --v4)
  {
    putchar(a1);
  }

  putchar(10);
  return 1;
}

unint64_t sub_2366C89E8(unint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  v7[0] = *a2;
  v7[1] = HIWORD(v4);
  v7[2] = v4 >> 8;
  v5 = nrand48(v7);
  *a2 = *v7;
  return v5 % a1;
}

uint64_t sub_2366C8A48(unint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v6 = a3;
  if (a4 == 1 && a1)
  {
    v9 = 0;
    v10 = vdupq_n_s64(a1 - 1);
    v11 = xmmword_23681F910;
    v12 = xmmword_23681F920;
    v13 = (a2 + 8);
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 2) = v9;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 1) = v9 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = v9 + 2;
        v13[1] = v9 + 3;
      }

      v9 += 4;
      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 4;
    }

    while (((a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v9);
  }

  if (a1 >= 0xA)
  {
    if (a3)
    {
      v24 = a1 - 3;
      do
      {
        v25 = *a5;
        v37[0] = *a5;
        v37[1] = HIWORD(v25);
        v37[2] = v25 >> 8;
        v26 = nrand48(v37);
        v27 = *v37;
        *a5 = *v37;
        v28 = (v26 % v24) << 32;
        *v37 = v27;
        v37[2] = v27 >> 8;
        v29 = nrand48(v37);
        v30 = (a2 + (v28 >> 30));
        *a5 = *v37;
        v31 = *v30;
        v32 = (a2 + 4 * (v29 % v24));
        *v30 = v32[2];
        v32[2] = v31;
        v33 = v30[1];
        v30[1] = v32[3];
        v32[3] = v33;
        v34 = v30[2];
        v30[2] = *v32;
        *v32 = v34;
        v35 = v30[3];
        v30[3] = v32[1];
        v32[1] = v35;
        --v6;
      }

      while (v6);
    }
  }

  else if (a1)
  {
    v16 = a1;
    do
    {
      v17 = *a5;
      v37[0] = *a5;
      v37[1] = HIWORD(v17);
      v37[2] = v17 >> 8;
      v18 = nrand48(v37);
      v19 = *v37;
      *a5 = *v37;
      v20 = v18 % a1;
      *v37 = v19;
      v37[2] = v19 >> 8;
      v21 = nrand48(v37);
      *a5 = *v37;
      v22 = v21 % a1;
      v23 = *(a2 + 4 * v20);
      *(a2 + 4 * v20) = *(a2 + 4 * v22);
      *(a2 + 4 * v22) = v23;
      --v16;
    }

    while (v16);
  }

  return 1;
}

void sub_2366C8C94(unsigned int a1)
{
  if (a1 == -1)
  {
    a1 = 4321;
  }

  sub_2366E7F98(a1);
}

uint64_t sub_2366C8CA4(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = a1 & 0x7FFFFFFF;
  v6 = 1;
  do
  {
    if ((*(a3 + 4 * v6) * *(a2 + 4 * v6)) <= (*(a3 + 4 * result) * *(a2 + 4 * result)))
    {
      result = result;
    }

    else
    {
      result = v6;
    }

    ++v6;
  }

  while (v5 != v6);
  return result;
}

BOOL sub_2366C8CFC(unint64_t a1, int32x2_t *a2, float32x2_t *a3)
{
  v3 = vmul_f32(*a3, vcvt_f32_s32(*a2));
  v4 = vmvn_s8(vcgt_f32(v3, vdup_lane_s32(v3, 1))).u8[0];
  v5 = (v4 & 1) == 0;
  if (a1 >= 3)
  {
    v6 = v4 & 1;
    for (i = 2; i != a1; ++i)
    {
      v8 = a3->f32[i] * a2->i32[i];
      if (v8 <= (a3->f32[v6] * a2->i32[v6]))
      {
        v9 = v6;
        if (v8 > (a3->f32[v5] * a2->i32[v5]))
        {
          v5 = i;
        }
      }

      else
      {
        v9 = i;
        v5 = v6;
      }

      v6 = v9;
    }
  }

  return v5;
}

uint64_t sub_2366C8DA0(int a1)
{
  if (a1 == 6)
  {
    v1 = -3;
  }

  else
  {
    v1 = -4;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2366C8DB8(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v45 = a3;
  v46 = a2;
  v44 = a4;
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 5);
  v10 = a3;
  if (!a3)
  {
    v10 = sub_2366E7294(v7 + 1, "FindPartitionInducedComponents: cptr");
    v45 = v10;
    v4 = sub_2366E7294(v7, "FindPartitionInducedComponents: cind");
    v44 = v4;
  }

  v11 = a2;
  v40 = a2;
  if (!a2)
  {
    v11 = sub_2366E72A4(v7, 0, "FindPartitionInducedComponents: where");
    v46 = v11;
  }

  v12 = sub_2366E7294(v7, "FindPartitionInducedComponents: perm");
  v13 = sub_2366E703C(v7, 0, v12);
  v42 = v13;
  v14 = sub_2366E7294(v7, "FindPartitionInducedComponents: todo");
  v15 = sub_2366E703C(v7, 0, v14);
  v41 = v15;
  v16 = sub_2366E72A4(v7, 0, "FindPartitionInducedComponents: touched");
  v43 = v16;
  if (v7 < 1)
  {
    LODWORD(v7) = 0;
    v37 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v28 = v7;
    do
    {
      if (v24 == v25)
      {
        v10[++v27] = v24;
        v29 = *v15;
        v4[v25++] = v29;
        *&v16[4 * v29] = 1;
        v26 = *&v11[4 * v29];
      }

      v30 = v4[v24];
      v31 = *(v13 + 4 * v30);
      v32 = v15[--v28];
      v15[v31] = v32;
      *(v13 + 4 * v32) = v31;
      v33 = (v8 + 4 * v30);
      v34 = v33[1];
      v35 = *v33;
      if (v35 < v34)
      {
        do
        {
          v36 = *(v9 + 4 * v35);
          v17 = *&v11[4 * v36];
          if (v17 == v26)
          {
            v17 = *&v16[4 * v36];
            if (!v17)
            {
              v4[v25++] = v36;
              *&v16[4 * v36] = 1;
              v34 = v33[1];
            }
          }

          ++v35;
        }

        while (v35 < v34);
      }

      ++v24;
    }

    while (v24 != v7);
    v37 = (v27 + 1);
  }

  v10[v37] = v7;
  if (!a3)
  {
    sub_23681BE6C(&v45, v17, v18, v19, v20, v21, v22, v23, &v44, 0);
    if (v40)
    {
      goto LABEL_19;
    }

LABEL_21:
    sub_23681BE6C(&v46, v17, v18, v19, v20, v21, v22, v23, 0, v39);
    goto LABEL_19;
  }

  if (!v40)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_23681BE6C(&v42, v17, v18, v19, v20, v21, v22, v23, &v41, &v43);
  return v37;
}

BOOL sub_2366C8FF8(unsigned int *a1, int a2)
{
  v3 = sub_2366C8DB8(a1, 0, 0, 0);
  v4 = v3;
  if (a2 && v3 != 1)
  {
    printf("The graph is not connected. It has %d connected components.\n", v3);
  }

  return v4 == 1;
}

uint64_t sub_2366C9058(uint64_t a1, int *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = *a2;
  v8 = v7;
  v9 = *(a2 + 2);
  v10 = *(a2 + 5);
  v11 = *(a2 + 15);
  v12 = sub_2366E72A4(v7, 0, "IsConnected: queue");
  v36 = v12;
  if (a2[34] >= 1)
  {
    v20 = 0;
    v21 = *(a2 + 19);
    do
    {
      *&v12[4 * *(v21 + 4 * v20++)] = 1;
    }

    while (v20 < a2[34]);
  }

  if (v8 <= 0)
  {
    LODWORD(v22) = 0;
    v26 = 1;
    *v12 = 1;
    *a4 = 0;
    *a3 = 0;
  }

  else
  {
    LODWORD(v22) = 0;
    v23 = v8;
    v24 = v11;
    do
    {
      v25 = *v24++;
      if (v25 == 2)
      {
        v22 = v22;
      }

      else
      {
        v22 = (v22 + 1);
      }

      --v23;
    }

    while (v23);
    while (v11[v23] == 2)
    {
      if (v8 == ++v23)
      {
        LODWORD(v23) = v8;
        break;
      }
    }

    v26 = 1;
    *&v12[4 * v23] = 1;
    *a4 = v23;
    *a3 = 0;
    if (v22)
    {
      v27 = 0;
      v28 = 0;
      v29 = 1;
      do
      {
        if (v27 == v29)
        {
          v30 = 0;
          a3[++v28] = v27;
          while (*&v12[4 * v30])
          {
            if (v8 == ++v30)
            {
              v30 = v8;
              goto LABEL_24;
            }
          }

          v30 = v30;
LABEL_24:
          a4[v29++] = v30;
          *&v12[4 * v30] = 1;
        }

        v31 = (v9 + 4 * a4[v27]);
        v32 = v31[1];
        v33 = *v31;
        if (v33 < v32)
        {
          do
          {
            v34 = *(v10 + 4 * v33);
            if (!*&v12[4 * v34])
            {
              a4[v29++] = v34;
              *&v12[4 * v34] = 1;
              v32 = v31[1];
            }

            ++v33;
          }

          while (v33 < v32);
        }

        ++v27;
      }

      while (v27 != v22);
      v26 = (v28 + 1);
    }
  }

  a3[v26] = v22;
  sub_23681BE6C(&v36, v13, v14, v15, v16, v17, v18, v19, 0, v36);
  return v26;
}

uint64_t sub_2366C9220(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v171);
  v16 = *a2;
  if (*(a1 + 4) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a2 + 6);
  }

  v18 = a2[2];
  v19 = *(a2 + 5);
  v20 = *(a2 + 2);
  v189 = *(a2 + 3);
  v21 = *(a2 + 15);
  v203 = *(a2 + 16);
  v22 = *(a1 + 100);
  v23 = sub_2366E2AB8(a1, v16 + 1, v10, v11, v12, v13, v14, v15);
  v200 = v16;
  v30 = sub_2366E2AB8(a1, v16, v24, v25, v26, v27, v28, v29);
  v177 = a2;
  v31 = a2;
  v32 = v23;
  v187 = v21;
  v33 = sub_2366C8DB8(v31, v21, v23, v30);
  v205 = a1;
  if (*(a1 + 9))
  {
    v41 = v33;
    printf("I found %d components, for this %d-way partition\n", v33, v22);
    v33 = v41;
  }

  if (v33 > v22)
  {
    v186 = v20;
    v42 = v33;
    v197 = v33;
    v204 = sub_2366E2AB8(v205, v18, v35, v36, v37, v38, v39, v40);
    __dst = sub_2366E2AB8(v205, v18, v43, v44, v45, v46, v47, v48);
    v55 = sub_2366E2AB8(v205, v22, v49, v50, v51, v52, v53, v54);
    v62 = sub_2366E2AB8(v205, v22 + 1, v56, v57, v58, v59, v60, v61);
    v63 = sub_2366E736C(v22 + 1, 0, v62);
    v180 = sub_2366E2AB8(v205, v42, v64, v65, v66, v67, v68, v69);
    v76 = sub_2366E2AB8(v205, v200, v70, v71, v72, v73, v74, v75);
    v77 = sub_2366E736C(v200, -1, v76);
    v191 = sub_2366E2AB8(v205, v197, v78, v79, v80, v81, v82, v83);
    v90 = sub_2366E2AA0(v205, 8 * v22, v84, v85, v86, v87, v88, v89);
    __base = v90;
    if (*(v205 + 4) == 1)
    {
      v176 = sub_2366E2AB8(v205, v200, v35, v36, v37, v38, v39, v40);
      v97 = sub_2366E2AB8(v205, v200, v91, v92, v93, v94, v95, v96);
      v175 = sub_2366E736C(v200, 0, v97);
      v104 = sub_2366E2AB8(v205, v22, v98, v99, v100, v101, v102, v103);
      v105 = sub_2366E736C(v22, -1, v104);
      v106 = __base;
      v174 = v105;
    }

    else
    {
      v106 = v90;
      v174 = 0;
      v175 = 0;
      v176 = 0;
    }

    v107 = v180;
    if (v197 >= 1)
    {
      v108 = v197;
      v109 = v32;
      do
      {
        v110 = *v109++;
        v111 = *(v187 + 4 * v30[v110]);
        ++v63[v111];
        --v108;
      }

      while (v108);
    }

    if (v22 > 1)
    {
      v112 = v63 + 1;
      v113 = *v63;
      v114 = v22 - 1;
      do
      {
        v113 += *v112;
        *v112++ = v113;
        --v114;
      }

      while (v114);
    }

    if (v22 >= 1)
    {
      v115 = v22 + 1;
      v116 = &v63[v22];
      v117 = v116;
      do
      {
        v118 = *--v117;
        *v116 = v118;
        --v115;
        v116 = v117;
      }

      while (v115 > 1);
    }

    *v63 = 0;
    if (v197 >= 1)
    {
      for (i = 0; i != v197; v180[v121] = i++)
      {
        v120 = *(v187 + 4 * v30[*(v32 + 4 * i)]);
        v121 = v63[v120];
        v63[v120] = v121 + 1;
      }
    }

    v188 = v22;
    v194 = v32;
    if (v22 <= 0)
    {
      v125 = 0;
      *v63 = 0;
    }

    else
    {
      v122 = v22;
      do
      {
        v63[v122] = v63[v122 - 1];
      }

      while (v122-- > 1);
      v124 = 0;
      v125 = 0;
      *v63 = 0;
      v178 = v63;
      do
      {
        v126 = v124++;
        LODWORD(v127) = v63[v124];
        LODWORD(v128) = v63[v126];
        v129 = v128;
        if (v127 - v128 == 1)
        {
          v130 = v107[v128];
        }

        else
        {
          if (v127 <= v128)
          {
            v130 = -1;
          }

          else
          {
            v172 = v126;
            v201 = v125;
            v130 = -1;
            v131 = v204;
            v182 = v124;
            do
            {
              v198 = v130;
              v195 = v129;
              v132 = v107[v129];
              sub_2366E736C(v18, 0, v131);
              v192 = v132;
              v133 = (v32 + 4 * v132);
              v134 = v131;
              v135 = *v133;
              if (v135 < v133[1])
              {
                do
                {
                  sub_2366E7208(v18, 1, (v189 + 4 * v30[v135++] * v18), 1, v134, 1);
                }

                while (v135 < v133[1]);
              }

              v131 = v134;
              if (v198 == -1 || (v136 = sub_2366E71E0(v18, __dst, 1), v137 = sub_2366E71E0(v18, v134, 1), v130 = v198, v136 < v137))
              {
                sub_2366E7408(v18, v134, __dst);
                v130 = v192;
              }

              v129 = v195 + 1;
              v63 = v178;
              v107 = v180;
              v124 = v182;
              v127 = v178[v182];
              v32 = v194;
            }

            while (v195 + 1 < v127);
            LODWORD(v126) = v172;
            LODWORD(v128) = v178[v172];
            v22 = v188;
            v106 = __base;
            v125 = v201;
          }

          if (v128 < v127)
          {
            v128 = v128;
            do
            {
              v138 = v107[v128];
              if (v138 != v130)
              {
                v191[v125] = v138;
                LODWORD(v127) = v63[v124];
                v125 = (v125 + 1);
              }

              ++v128;
            }

            while (v128 < v127);
          }
        }

        v139 = (v32 + 4 * v130);
        v140 = *v139;
        if (v140 < v139[1])
        {
          do
          {
            *(v77 + 4 * v30[v140++]) = v126;
          }

          while (v140 < v139[1]);
        }
      }

      while (v124 != v22);
    }

    __dsta = v22;
    v179 = v106 + 2;
    v181 = (v106 + 3);
    v141 = v204;
    while (v125 >= 1)
    {
      v142 = 0;
      v173 = v125;
      do
      {
        v202 = v125;
        v199 = v142;
        v193 = v191[v142];
        v143 = (v32 + 4 * v193);
        v196 = *(v187 + 4 * v30[*v143]);
        sub_2366E736C(v18, 0, v141);
        v144 = *v143;
        if (v144 < v143[1])
        {
          do
          {
            sub_2366E7208(v18, 1, (v189 + 4 * v30[v144++] * v18), 1, v141, 1);
          }

          while (v144 < v143[1]);
        }

        if (*(v205 + 9))
        {
          v145 = sub_2366E71E0(v18, v141, 1);
          printf("Trying to move %d [%d] from %d\n", v193, v145, v196);
        }

        sub_2366E736C(v188, 0, v55);
        v146 = v143[1];
        v147 = *v143;
        v34 = __base;
        if (v147 < v146)
        {
          do
          {
            v148 = (v186 + 4 * v30[v147]);
            v149 = v148[1];
            v150 = *v148;
            if (v150 < v149)
            {
              do
              {
                v151 = *(v77 + 4 * *(v19 + 4 * v150));
                if (v151 != -1)
                {
                  if (v17)
                  {
                    v152 = *(v17 + 4 * v150);
                  }

                  else
                  {
                    v152 = 1;
                  }

                  v55[v151] += v152;
                  v149 = v148[1];
                }

                ++v150;
              }

              while (v150 < v149);
              v146 = v143[1];
            }

            ++v147;
          }

          while (v147 < v146);
        }

        v32 = v194;
        if (v188 < 1)
        {
          goto LABEL_77;
        }

        v153 = 0;
        v154 = 0;
        do
        {
          v155 = v55[v153];
          if (v155 >= 1)
          {
            v156 = v155;
            v157 = &__base[2 * v154];
            *v157 = v156;
            ++v154;
            *(v157 + 1) = v153;
          }

          v153 = v153 + 1;
        }

        while (__dsta != v153);
        if (!v154)
        {
LABEL_77:
          v162 = v199;
          v125 = v202;
          v163 = v202;
          goto LABEL_99;
        }

        sub_2366D7254(v154, __base);
        if (v18 != 1)
        {
          v158 = __base;
          v164 = v205;
          v161 = v154;
LABEL_82:
          v165 = *(v158 + 1);
          v32 = v194;
          if (v161 >= 2)
          {
            v183 = v161;
            v166 = v161 - 1;
            v167 = v181;
            do
            {
              if (sub_2366ED780(v18, v204, *(v205 + 112), 1, (v203 + 4 * v165 * v18), (*(v205 + 128) + 4 * v165 * v18), 1, (v203 + 4 * *v167 * v18), (*(v205 + 128) + 4 * *v167 * v18)))
              {
                v165 = *v167;
              }

              v167 += 2;
              --v166;
            }

            while (v166);
            v141 = v204;
            v164 = v205;
            v32 = v194;
            v161 = v183;
          }

          goto LABEL_88;
        }

        if (v154 > 1)
        {
          v158 = __base;
          v159 = v179;
          v160 = 1;
          v161 = v154;
          while (*__base * 0.5 <= *v159)
          {
            ++v160;
            v159 += 2;
            if (v154 == v160)
            {
              goto LABEL_81;
            }
          }

          v161 = v160;
LABEL_81:
          v164 = v205;
          goto LABEL_82;
        }

        v165 = *(__base + 1);
        v161 = 1;
        v164 = v205;
        v32 = v194;
LABEL_88:
        if (*(v164 + 9))
        {
          printf("\tMoving it to %d [%d] [%d]\n", v165, v55[v165], v161);
        }

        if (v165 != v196)
        {
          v168 = *(v205 + 4);
          if (v168 == 1)
          {
            sub_2366C9FA0(v205, v177, v165, v193, v32, v30, v175, v174, v176);
          }

          else if (v168)
          {
            sub_236815030(15, "Unknown objtype %d\n", v35, v36, v37, v38, v39, v40, *(v205 + 4));
          }

          else
          {
            sub_2366C9B14(v205, v177, v165, v193, v32, v30);
          }
        }

        v169 = *v143;
        if (v169 < v143[1])
        {
          do
          {
            *(v77 + 4 * v30[v169++]) = v165;
          }

          while (v169 < v143[1]);
        }

        v163 = v202 - 1;
        v191[v199] = v191[v163];
        v162 = v199;
        v125 = (v202 - 1);
LABEL_99:
        v142 = v162 + 1;
      }

      while (v142 < v163);
      if (v173 == v125)
      {
        if (*(v205 + 9))
        {
          printf("Stopped at ntodo: %d\n", v173);
        }

        break;
      }
    }
  }

  return sub_2366E2AB0(v205, v34, v35, v36, v37, v38, v39, v40);
}

uint64_t sub_2366C9B14(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v62 = *(a2 + 136);
  v58 = (a5 + 4 * a4);
  v7 = *v58;
  if (v7 < v58[1])
  {
    v9 = result;
    v10 = *(a2 + 48);
    v65 = *(a2 + 40);
    v66 = *(a2 + 16);
    v11 = *(a2 + 120);
    v12 = *(a2 + 144);
    v63 = v12;
    v64 = v11;
    v61 = *(a2 + 152);
    while (1)
    {
      v60 = v7;
      v13 = *(a6 + 4 * v7);
      v14 = *(v11 + 4 * v13);
      v15 = (*(a2 + 176) + 16 * v13);
      v16 = v15[3];
      v67 = (v66 + 4 * v13);
      if (v16 == -1)
      {
        break;
      }

      v18 = v15 + 2;
      v17 = v15[2];
      v19 = *(v9 + 272) + 8 * v16;
      if (v17 < 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        v21 = v19;
        while (1)
        {
          v22 = *v21;
          v21 += 2;
          if (v22 == a3)
          {
            break;
          }

          if (v17 == ++v20)
          {
            v20 = v15[2];
            goto LABEL_13;
          }
        }

        v20 = v20;
      }

      if (v20 == v17)
      {
        goto LABEL_13;
      }

LABEL_14:
      v25 = (v19 + 8 * v20);
      *(a2 + 112) += *v15 - v25[1];
      sub_2366E7208(*(a2 + 8), 1, (*(a2 + 24) + 4 * *(a2 + 8) * v13), 1, (*(a2 + 128) + 4 * *(a2 + 8) * a3), 1);
      result = sub_2366E7208(*(a2 + 8), -1, (*(a2 + 24) + 4 * *(a2 + 8) * v13), 1, (*(a2 + 128) + 4 * *(a2 + 8) * v14), 1);
      v11 = v64;
      *(v64 + 4 * v13) = a3;
      v26 = v25[1];
      v27 = *v15;
      v28 = *v15 - v26 + v15[1];
      *v15 = v26;
      v15[1] = v28;
      v25[1] = v27;
      if (v27)
      {
        *v25 = v14;
      }

      else
      {
        v29 = v15[2] - 1;
        v15[2] = v29;
        *v25 = *(v19 + 8 * v29);
        v26 = *v15;
        v28 = v15[1];
      }

      v30 = v65;
      v31 = v63;
      v32 = (v66 + 4 * v13);
      v33 = *(v63 + 4 * v13);
      if (v33 == -1)
      {
        goto LABEL_20;
      }

      if (v28 < v26)
      {
        v34 = *(v61 + 4 * --v62);
        *(v61 + 4 * v33) = v34;
        *(v63 + 4 * v34) = *(v63 + 4 * v13);
        *(v63 + 4 * v13) = -1;
        v26 = *v15;
        v28 = v15[1];
LABEL_20:
        if (v28 >= v26)
        {
          *(v61 + 4 * v62) = v13;
          *(v63 + 4 * v13) = v62++;
        }
      }

      v35 = *v67;
      if (v35 < v67[1])
      {
        do
        {
          v36 = *(v30 + 4 * v35);
          v37 = *(v11 + 4 * v36);
          v38 = (*(a2 + 176) + 16 * v36);
          result = v38[3];
          if (result == -1)
          {
            result = sub_2366E2AD8(v9, *(v66 + 4 * v36 + 4) - *(v66 + 4 * v36) + 1);
            v32 = v67;
            v31 = v63;
            v11 = v64;
            v30 = v65;
            v38[2] = 0;
            v38[3] = result;
          }

          v39 = *(v9 + 272);
          v40 = v39 + 8 * result;
          if (v37 == v14)
          {
            v41 = *v38;
            v42 = v38[1] + *(v10 + 4 * v35);
            v38[1] = v42;
            v43 = v41 - *(v10 + 4 * v35);
            *v38 = v43;
            if (v42 >= v43 && *(v31 + 4 * v36) == -1)
            {
              *(v61 + 4 * v62) = v36;
              *(v31 + 4 * v36) = v62++;
            }
          }

          else
          {
            if (v37 == a3)
            {
              v44 = v38[1];
              v45 = *v38 + *(v10 + 4 * v35);
              *v38 = v45;
              v46 = v44 - *(v10 + 4 * v35);
              v38[1] = v46;
              if (v46 < v45)
              {
                v47 = *(v31 + 4 * v36);
                if (v47 != -1)
                {
                  v48 = *(v61 + 4 * (v62 - 1));
                  *(v61 + 4 * v47) = v48;
                  *(v31 + 4 * v48) = *(v31 + 4 * v36);
                  *(v31 + 4 * v36) = -1;
                  --v62;
                }
              }
            }

            v49 = v38[2];
            if (v49 >= 1)
            {
              v50 = (v39 + 8 * result + 4);
              v51 = v38[2];
              while (*(v50 - 1) != v14)
              {
                v50 += 2;
                if (!--v51)
                {
                  goto LABEL_41;
                }
              }

              v52 = *(v10 + 4 * v35);
              if (*v50 == v52)
              {
                v53 = v49 - 1;
                v38[2] = v53;
                *(v50 - 1) = *(v40 + 8 * v53);
              }

              else
              {
                *v50 -= v52;
              }
            }
          }

LABEL_41:
          if (v37 != a3)
          {
            v54 = v38[2];
            if (v54 < 1)
            {
              LODWORD(v55) = 0;
            }

            else
            {
              v55 = 0;
              v56 = (v39 + 8 * result + 4);
              while (*(v56 - 1) != a3)
              {
                ++v55;
                v56 += 2;
                if (v54 == v55)
                {
                  goto LABEL_50;
                }
              }

              *v56 += *(v10 + 4 * v35);
            }

            if (v55 == v54)
            {
LABEL_50:
              v57 = (v40 + 8 * v54);
              *v57 = a3;
              v57[1] = *(v10 + 4 * v35);
              v38[2] = v54 + 1;
            }
          }

          ++v35;
        }

        while (v35 < v32[1]);
      }

      v7 = v60 + 1;
      if (v60 + 1 >= v58[1])
      {
        goto LABEL_53;
      }
    }

    v23 = sub_2366E2AD8(v9, *(v66 + 4 * v13 + 4) - *(v66 + 4 * v13) + 1);
    v20 = 0;
    LODWORD(v17) = 0;
    v15[2] = 0;
    v15[3] = v23;
    v18 = v15 + 2;
    v19 = *(v9 + 272) + 8 * v23;
LABEL_13:
    v24 = (v19 + 8 * v17);
    *v24 = a3;
    v24[1] = 0;
    *v18 = v17 + 1;
    goto LABEL_14;
  }

LABEL_53:
  *(a2 + 136) = v62;
  return result;
}

uint64_t sub_2366C9FA0(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v49 = result;
  v45 = (a5 + 4 * a4);
  v9 = *v45;
  if (v9 < v45[1])
  {
    v44 = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 120);
    do
    {
      v15 = *(a6 + 4 * v9);
      v16 = *(v14 + 4 * v15);
      v17 = (*(a2 + 184) + 20 * v15);
      v18 = v17[4];
      v19 = (v44 + 4 * v15);
      if (v18 == -1)
      {
        v18 = sub_2366E2B54(v49, v19[1] - *v19 + 1);
        v17[3] = 0;
        v17[4] = v18;
      }

      v20 = *(v49 + 280);
      v21 = *v17;
      if (*v17 || v17[1] < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = *(v12 + 4 * v15);
      }

      v23 = v20 + 12 * v18;
      v24 = v17[3];
      if (v24 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = (v20 + 12 * v18);
        while (1)
        {
          v27 = *v26;
          v26 += 3;
          if (v27 == a3)
          {
            break;
          }

          if (v24 == ++v25)
          {
            goto LABEL_17;
          }
        }

        v25 = v25;
      }

      if (v25 == v24)
      {
LABEL_17:
        if (v21 >= 1)
        {
          v22 -= *(v12 + 4 * v15);
        }

        v28 = *v19;
        v29 = v19[1];
        if (v28 < v29)
        {
          v30 = *(a2 + 184);
          do
          {
            v31 = *(v13 + 4 * v28);
            v32 = *(v30 + 20 * v31 + 12);
            v33 = *(v30 + 20 * v31 + 16);
            v34 = (v20 + 12 * v33);
            if (v16 == *(v14 + 4 * v31))
            {
              if (v32 < 1)
              {
                LODWORD(v35) = 0;
              }

              else
              {
                v35 = 0;
                while (1)
                {
                  v36 = *v34;
                  v34 += 3;
                  if (v36 == a3)
                  {
                    break;
                  }

                  if (v32 == ++v35)
                  {
                    goto LABEL_34;
                  }
                }
              }

              if (v35 == v32)
              {
LABEL_34:
                v22 -= *(v12 + 4 * v31);
              }
            }

            else
            {
              if (v32 < 1)
              {
                LODWORD(v37) = 0;
              }

              else
              {
                v37 = 0;
                while (1)
                {
                  v38 = *v34;
                  v34 += 3;
                  if (v38 == a3)
                  {
                    break;
                  }

                  if (v32 == ++v37)
                  {
                    goto LABEL_37;
                  }
                }
              }

              if (v37 == v32)
              {
LABEL_37:
                v22 -= *(v12 + 4 * v31);
              }

              if (v32 >= 1)
              {
                v39 = (v20 + 4 + 12 * v33);
                while (*(v39 - 1) != v16 || *v39 != 1)
                {
                  v39 += 3;
                  if (!--v32)
                  {
                    goto LABEL_45;
                  }
                }

                v22 += *(v12 + 4 * v31);
              }
            }

LABEL_45:
            ++v28;
          }

          while (v28 != v29);
        }

        v43 = *(a2 + 112);
        *(a2 + 116) -= v22;
        v42 = v43 + v21;
      }

      else
      {
        v40 = *(a2 + 112);
        v41 = *(v23 + 12 * v25 + 4);
        *(a2 + 116) = *(a2 + 116) - v22 - *(v23 + 12 * v25 + 8);
        v42 = v21 - v41 + v40;
      }

      *(a2 + 112) = v42;
      *(v14 + 4 * v15) = a3;
      sub_2366E7208(*(a2 + 8), 1, (*(a2 + 24) + 4 * *(a2 + 8) * v15), 1, (*(a2 + 128) + 4 * *(a2 + 8) * a3), 1);
      sub_2366E7208(*(a2 + 8), -1, (*(a2 + 24) + 4 * *(a2 + 8) * v15), 1, (*(a2 + 128) + 4 * *(a2 + 8) * v16), 1);
      result = sub_2366D5710(v49, a2, v15, v16, a3, 0, 0, 0, 0, 0, 1, a7, a8, a9);
      ++v9;
    }

    while (v9 < v45[1]);
  }

  return result;
}

uint64_t sub_2366CA2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 408);
  v7 = *(a1 + 432);
  sub_2366C8968(42);
  printf(" size of vtx_type: %zu, adj_type: %zu, wgt_type: %zu, pid_type: %zu, tid_type: %zu, real_type: %zu\n", 0x20uLL, 0x20uLL, 0x20uLL, 0x20uLL, 0x20uLL, 0x20uLL);
  putchar(10);
  putchar(10);
  v10 = *(a1 + 404);
  if (v10 <= 1)
  {
    if (!v10)
    {
      v11 = "Direct k-way Partitioning";
      goto LABEL_9;
    }

    if (v10 == 1)
    {
      v11 = "Direct Bisection Partitioning";
LABEL_9:
      sub_2366C8878(v11, 45);
      v12 = *(a2 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(*(a2 + 48) + 4 * v13);
          if (v15)
          {
            v16 = 0;
            v17 = *(*(a2 + 64) + 8 * v13);
            v18 = *v17;
            do
            {
              v19 = v16 + 1;
              v20 = v17[v16 + 1];
              if (v18 < v20)
              {
                v21 = *(*(a3 + 8 * v13) + 4 * v16);
                do
                {
                  v22 = *(*(*(a2 + 80) + 8 * v13) + 4 * v18);
                  v23 = v13;
                  if (v22 > v15)
                  {
                    v24 = v22 >> *(a2 + 24);
                    v22 &= *(a2 + 20);
                    v23 = v24 - 1;
                  }

                  if (*(*(a3 + 8 * v23) + 4 * v22) != v21)
                  {
                    v14 += *(*(*(a2 + 88) + 8 * v13) + 4 * v18);
                  }

                  ++v18;
                }

                while (v20 != v18);
              }

              v18 = v20;
              v16 = v19;
            }

            while (v19 != v15);
          }

          ++v13;
        }

        while (v13 != v12);
        v25 = v14 / 2;
      }

      else
      {
        v25 = 0;
      }

      v26 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
      v27 = v26;
      if (v6 && v26)
      {
        v108 = -1;
        if (v6 >= 0x40)
        {
          for (i = 1; i != 4; ++i)
          {
            if (*(&v108 + i) != 255)
            {
              break;
            }
          }
        }

        memset(v26, 255, 4 * v6);
      }

      if (v12)
      {
        v35 = 0;
        v36 = 0;
        v37 = *(a2 + 48);
        do
        {
          v38 = *(v37 + 4 * v35);
          if (v38)
          {
            v39 = 0;
            v40 = *(a3 + 8 * v35);
            v41 = v35 + 1;
            v42 = *(*(a2 + 64) + 8 * v35);
            do
            {
              v43 = (v41 << *(a2 + 24)) | v39;
              v27[*(v40 + 4 * v39)] = v43;
              v44 = *(v42 + 4 * v39++);
              v45 = *(v42 + 4 * v39);
              if (v44 < v45)
              {
                v46 = *(*(a2 + 80) + 8 * v35);
                do
                {
                  v47 = *(v46 + 4 * v44);
                  v48 = v35;
                  if (v47 > v38)
                  {
                    v49 = v47 >> *(a2 + 24);
                    v47 &= *(a2 + 20);
                    v48 = v49 - 1;
                  }

                  v50 = *(*(a3 + 8 * v48) + 4 * v47);
                  if (v27[v50] != v43)
                  {
                    v27[v50] = v43;
                    ++v36;
                    v45 = *(v42 + 4 * v39);
                  }

                  ++v44;
                }

                while (v44 < v45);
              }
            }

            while (v39 != v38);
          }

          else
          {
            v41 = v35 + 1;
          }

          v35 = v41;
        }

        while (v41 != v12);
      }

      else
      {
        v36 = 0;
      }

      free(v27);
      printf(" - Edgecut: %d, communication volume: %u.\n\n", v25, v36);
      v51 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
      v52 = v51;
      v53 = *(a2 + 16);
      if (v53)
      {
        v54 = 0;
        v55 = *(a2 + 48);
        v56 = *(a2 + 72);
        do
        {
          v57 = *(v55 + 4 * v54);
          if (v57)
          {
            v58 = *(v56 + 8 * v54);
            v59 = *(a3 + 8 * v54);
            do
            {
              v61 = *v58++;
              v60 = v61;
              v62 = *v59++;
              v51[v62] += v60;
              --v57;
            }

            while (v57);
            v53 = *(a2 + 16);
          }

          ++v54;
        }

        while (v54 < v53);
      }

      puts(" - Balance:");
      v63 = 0;
      if (v6)
      {
        v64 = v52;
        v65 = v6;
        do
        {
          v66 = *v64++;
          v63 += v66;
          --v65;
        }

        while (v65);
      }

      v67 = v63;
      v68 = *v52 / (*v7 * v63);
      if (v6 >= 2)
      {
        v69 = v52 + 1;
        v70 = v7 + 1;
        v71 = v6 - 1;
        do
        {
          v72 = *v69++;
          v73 = v72;
          v74 = *v70++;
          v75 = v73 / (v74 * v67);
          if (v68 < v75)
          {
            v68 = v75;
          }

          --v71;
        }

        while (v71);
      }

      v76 = *(a2 + 16);
      if (v76)
      {
        v77 = 0;
        v78 = 0;
        do
        {
          v79 = *(*(a2 + 48) + 4 * v77);
          if (v79)
          {
            v80 = *(*(a2 + 72) + 8 * v77);
            if (v79 == 1)
            {
              v81 = 0;
            }

            else
            {
              v82 = 0;
              for (j = 1; j != v79; ++j)
              {
                v84 = *(v80 + 4 * j);
                v85 = *(v80 + 4 * v82);
                if (v84 > v85 || j < v82 && v84 == v85)
                {
                  v82 = j;
                }
              }

              v81 = v82;
            }

            v86 = *(v80 + 4 * v81);
            if (v86 > v78)
            {
              v78 = v86;
            }
          }

          ++v77;
        }

        while (v77 != v76);
        v87 = v78;
      }

      else
      {
        v87 = 0.0;
      }

      printf("     constraint #0:  %5.3lf out of %5.3lf\n", v68, v87 * v6 / v63);
      putchar(10);
      v88 = (*v52 / (*v7 * v67));
      if (v6 < 2)
      {
        v89 = 0;
      }

      else
      {
        v89 = 0;
        for (k = 1; k != v6; ++k)
        {
          v91 = v7[k] * v67;
          if (v88 < (v52[k] / v91))
          {
            v89 = k;
            v88 = (v52[k] / v91);
          }
        }
      }

      puts(" - Most overweight partition:");
      printf("     pid: %u, actual: %d, desired: %d, ratio: %.2lf\n", v89, v52[v89], (v7[v89] * v67), v88);
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  if (v10 != 3)
  {
    if (v10 == 2)
    {
      v11 = "Recursive Bisection Partitioning";
      goto LABEL_9;
    }

LABEL_110:
    sub_2366CB95C((a1 + 404), v8, v9);
  }

  sub_2366C8878("Vertex Separator", 45);
  v29 = *(a2 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(*(a2 + 48) + 4 * v30);
      if (v32)
      {
        v33 = 0;
        v34 = 4 * v32;
        do
        {
          if (*(*(a3 + 8 * v30) + v33) == 2)
          {
            v31 += *(*(*(a2 + 72) + 8 * v30) + v33);
          }

          v33 += 4;
        }

        while (v34 != v33);
      }

      ++v30;
    }

    while (v30 != v29);
  }

  else
  {
    v31 = 0;
  }

  printf(" - Separator Size: %d.\n\n", v31);
  v92 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
  v52 = v92;
  v93 = *(a2 + 16);
  if (v93)
  {
    v94 = 0;
    v95 = *(a2 + 48);
    v96 = *(a2 + 72);
    do
    {
      v97 = *(v95 + 4 * v94);
      if (v97)
      {
        v98 = *(v96 + 8 * v94);
        v99 = *(a3 + 8 * v94);
        do
        {
          v101 = *v98++;
          v100 = v101;
          v102 = *v99++;
          v92[v102] += v100;
          --v97;
        }

        while (v97);
        v93 = *(a2 + 16);
      }

      ++v94;
    }

    while (v94 < v93);
  }

  puts(" - Balance:");
  v103 = v52[1];
  v104 = v103 + *v52;
  v105 = *v52 <= v103;
  v106 = (v52[*v52 <= v103] + v52[*v52 <= v103]) / v104;
  puts(" - Most overweight partition:");
  printf("     pid: %u, actual: %d, desired: %d, ratio: %.2lf\n", v105, v52[v105], vcvtd_n_f64_s32(v104, 1uLL), v106);
LABEL_107:
  putchar(10);
  free(v52);

  return sub_2366C8968(42);
}

uint64_t sub_2366CA994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2366DE2A4(*(a1 + 400), a2);
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 440);
    if (!v8)
    {
      v8 = malloc_type_malloc(4 * *(a1 + 408), 0x100004052888210uLL);
      *(a1 + 440) = v8;
    }

    v9 = *(a1 + 408);
    if (v9)
    {
      v10 = *(a1 + 432);
      do
      {
        v11 = *v10++;
        *v8++ = *(a2 + 184) / v11;
        --v9;
      }

      while (v9);
    }
  }

  sub_2366DE30C(*(a1 + 400));
  v12 = sub_2366CAA54(a1, a2, a3);
  if (!v7)
  {
    *(a2 + 208) = v12;
  }

  v13 = *(a1 + 400);

  return sub_2366DE30C(v13);
}

uint64_t sub_2366CAA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2366DE2A4(*(a1 + 400), a2);
  LODWORD(v7) = sub_2366DE2E4(*(a1 + 400));
  v8 = v6;
  if (!*(a1 + 456))
  {
    v9 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    v59 = 0;
    goto LABEL_9;
  }

  if (!v6)
  {
    sub_2366E8294(a1 + 72);
  }

  sub_2366C0AF8(a1, a2);
  v9 = sub_2366DE78C(4 * *(a1 + 408), *(a1 + 400));
  if (v8)
  {
    goto LABEL_7;
  }

  sub_2366E82F4(a1 + 72);
LABEL_8:
  sub_2366E8294(a1 + 168);
  v59 = 1;
LABEL_9:
  if (*(a1 + 416))
  {
    v10 = 0;
    v11 = 0;
    v12 = (a1 + 404);
    size = 8 * v7;
    v7 = v7;
    v13 = v59;
    if (!v9)
    {
      v13 = 0;
    }

    v61 = v13;
    v14 = 0.0;
    v56 = v9;
    v57 = a3;
    v55 = v7;
    while (v7 != 1 || !*(a1 + 452))
    {
      if (*v12 == 2)
      {
        v60 = v11;
        v22 = sub_2366DE78C(size, *(a1 + 400));
        v22[v8] = malloc_type_malloc(4 * *(*(a2 + 48) + 4 * v8), 0x100004052888210uLL);
        v62 = sub_2366CB318(a1, a2, v22, 1.0);
        v23 = malloc_type_calloc(*(a1 + 408), 4uLL, 0x100004052888210uLL);
        v25 = v23;
        v26 = *(a2 + 48);
        if (*(v26 + 4 * v8))
        {
          v27 = 0;
          v28 = *(*(a2 + 72) + 8 * v8);
          v29 = v22[v8];
          do
          {
            *(v23 + *(v29 + 4 * v27)) += *(v28 + 4 * v27);
            ++v27;
          }

          while (v27 < *(v26 + 4 * v8));
        }

        v58 = v22;
        v30 = *(a1 + 408);
        v31 = *(a1 + 400);
        v32 = sub_2366DE2A4(*(a1 + 400), v24);
        v33 = sub_2366DE2E4(v31);
        sub_2366D0AD8(v32, v33, v30);
        sub_2366D0AF0(v32, v33, v30);
        v34 = sub_2366DE584(8 * v33, v31);
        v34[v32] = v25;
        sub_2366DE30C(v31);
        if (!v32 && v33 >= 2)
        {
          for (i = 1; i != v33; ++i)
          {
            if (v30)
            {
              v36 = v34[i];
              v37 = *v34;
              v38 = v30;
              do
              {
                v39 = *v36++;
                *v37++ += v39;
                --v38;
              }

              while (v38);
            }
          }

          v40 = 4 * v30;
          for (j = 1; j != v33; ++j)
          {
            memcpy(v34[j], *v34, v40);
          }
        }

        sub_2366DE30C(v31);
        a3 = v57;
        v11 = v60;
        if (v59)
        {
          *(a2 + 128) = v25;
          *(a2 + 136) = v58;
        }

        else
        {
          free(v25);
        }

        v9 = v56;
        v7 = v55;
        sub_2366DE30C(*(a1 + 400));
        v12 = (a1 + 404);
      }

      else
      {
        v62 = sub_2366CB7D0(a1, a2);
      }

LABEL_46:
      v49 = sub_2366BE4E8(a2, *(a1 + 408), *(a1 + 440), *(a1 + 448));
      v50 = v49;
      if (!v10 || (v49 <= 0.0005 ? (v51 = v11 <= v62) : (v51 = 1), !v51 || (v14 > 0.0005 ? (v52 = v49 < v14) : (v52 = 0), v52)))
      {
        memcpy(*(a3 + 8 * v8), *(*(a2 + 136) + 8 * v8), 4 * *(*(a2 + 48) + 4 * v8));
        if (v61)
        {
          memcpy(v9, *(a2 + 128), 4 * *(a1 + 408));
        }

        v11 = v62;
        v14 = v50;
      }

      sub_2366BE990(a2, v48);
      ++*a1;
      if (*(a1 + 16))
      {
        *(*(a1 + 384) + 4 * v10) = v62;
      }

      if (!v11 && v50 <= 0.0005)
      {
        goto LABEL_66;
      }

      if (++v10 >= *(a1 + 416))
      {
        goto LABEL_67;
      }
    }

    *(a2 + 136) = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
    **(a2 + 136) = malloc_type_malloc(4 * **(a2 + 48), 0x100004052888210uLL);
    v17 = *v12;
    if (*v12 > 2)
    {
      if ((v17 - 3) > 1)
      {
LABEL_75:
        sub_2366CB9B0(v12, v15, v16);
      }

      v42 = sub_2366BC5B8(a1, a2, *(a2 + 136));
      goto LABEL_43;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v42 = sub_2366BC368(a1, a2, *(a2 + 136));
LABEL_43:
        v62 = v42;
        v43 = malloc_type_calloc(*(a1 + 408), 4uLL, 0x100004052888210uLL);
        *(a2 + 128) = v43;
        v44 = *(a2 + 48);
        if (*v44)
        {
          v45 = 0;
          v46 = **(a2 + 72);
          v47 = **(a2 + 136);
          do
          {
            v43[*(v47 + 4 * v45)] += *(v46 + 4 * v45);
            ++v45;
          }

          while (v45 < *v44);
        }

        goto LABEL_46;
      }

      if (v17 != 2)
      {
        goto LABEL_75;
      }

      v18 = *(a2 + 136);
      v19 = a1;
      v20 = a2;
      v21 = 1;
    }

    else
    {
      v18 = *(a2 + 136);
      v19 = a1;
      v20 = a2;
      v21 = 0;
    }

    v42 = sub_2366BC174(v19, v20, v18, v21);
    goto LABEL_43;
  }

LABEL_66:
  v11 = 0;
LABEL_67:
  if (v59)
  {
    sub_2366E82F4(a1 + 168);
    if (*(a2 + 104))
    {
      sub_2366E8294(a1 + 72);
      *(a2 + 128) = v9;
      sub_2366C0F5C(a1, a2, a3);
      *(a2 + 128) = 0;
      sub_2366E82F4(a1 + 72);
    }
  }

  else if (*(a2 + 104))
  {
    sub_2366C0F5C(a1, a2, a3);
  }

  if (v9)
  {
    sub_2366DE830(v9, *(a1 + 400));
  }

  return v11;
}

uint64_t sub_2366CAFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_2366DE2A4(*(a1 + 400), a2))
  {
    v6 = *(a1 + 440);
    if (!v6)
    {
      v6 = malloc_type_malloc(4 * *(a1 + 408), 0x100004052888210uLL);
      *(a1 + 440) = v6;
    }

    v7 = *(a1 + 408);
    if (v7)
    {
      v8 = *(a1 + 432);
      do
      {
        v9 = *v8++;
        *v6++ = *(a2 + 184) / v9;
        --v7;
      }

      while (v7);
    }
  }

  sub_2366DE30C(*(a1 + 400));

  return sub_2366CAA54(a1, a2, a3);
}

uint64_t sub_2366CB064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2366DE2A4(*(a1 + 400), a2);
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 440);
    if (!v8)
    {
      v8 = malloc_type_malloc(8uLL, 0x100004052888210uLL);
      *(a1 + 440) = v8;
    }

    v9 = *(a1 + 432);
    *v8 = *(a2 + 184) / *v9;
    v8[1] = *(a2 + 184) / v9[1];
  }

  sub_2366DE30C(*(a1 + 400));
  v10 = sub_2366CAA54(a1, a2, a3);
  if (!v7)
  {
    *(a2 + 208) = v10;
  }

  v11 = *(a1 + 400);

  return sub_2366DE30C(v11);
}

void sub_2366CB120(_DWORD *a1, unsigned int *a2)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v4 = sub_2366DE2A4(a2[3], a2);
  v5 = sub_2366DE2E4(a2[3]);
  v6 = v4;
  if (!v4)
  {
    sub_2366E8294((a1 + 18));
    v7 = v5;
    a2[10] = a1[132] * v5;
    if ((v5 & 0xFFFFFFFE) == 0)
    {
      v7 = 1;
    }

    *(a2 + 4) = malloc_type_malloc(8 * v7, 0x10040436913F5uLL);
    sub_2366D0DF4(v18, 0x19uLL, -1.79769313e308);
    LODWORD(v8) = a1[1];
    LODWORD(v9) = a2[10];
    v18[1] = v9;
    v18[2] = v8;
    v18[7] = 3.0;
  }

  v10 = sub_2366DE78C(8 * v5, a1[100]);
  *(*(a2 + 4) + 8 * v6) = malloc_type_malloc(4 * *(*(a2 + 6) + 4 * v6), 0x100004052888210uLL);
  sub_2366E57C4(v18, &v17, a1[100]);
  sub_2366E5878(v17, 0, *a2);
  sub_2366CA994(v17, a2, *(a2 + 4));
  sub_2366E56BC(v17, v11);
  v12 = malloc_type_malloc(4 * *(*(a2 + 6) + 4 * v6), 0x100004052888210uLL);
  v10[v6] = v12;
  v13 = *(a2 + 6);
  if (*(v13 + 4 * v6))
  {
    v14 = 0;
    v15 = *(*(a2 + 4) + 8 * v6);
    do
    {
      v12[v14] = *(v15 + 4 * v14) % v5;
      ++v14;
    }

    while (v14 < *(v13 + 4 * v6));
  }

  sub_2366BEDA4(a1, a2, v10, 0);
  free(v10[v6]);
  if (!v6)
  {
    sub_2366E82F4((a1 + 18));
  }

  sub_2366DE830(v10, a1[100]);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2366CB318(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = a1;
  v66[1] = *MEMORY[0x277D85DE8];
  v64 = sub_2366DE2E4(*(a1 + 400));
  v9 = sub_2366DE2A4(*(v7 + 400), v8);
  v10 = v9;
  if (*(v7 + 408) != 1)
  {
    v13 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
    v14 = v13;
    v15 = *(v7 + 408);
    if (v15)
    {
      for (i = 0; i < v15; ++i)
      {
        v17 = i / v15 + i / v15;
        ++v13[v17];
        v15 = *(v7 + 408);
      }
    }

    v18 = *v13;
    v19 = v13[1];
    *v13 = 0;
    v13[1] = v18;
    v13[2] = v18 + v19;
    v20 = sub_2366E58E0(v7, v13);
    v66[0] = vcvt_s32_f32(vmul_n_f32(**(v20 + 432), *(a2 + 168)));
    v21 = pow(*(v7 + 448), 1.0 / (__clz(*(v7 + 408) | 1) ^ 0x1F)) / a4;
    v22 = v21;
    v23 = v21 < 1.002;
    v24 = 1.002;
    if (!v23)
    {
      v24 = v22;
    }

    *(v20 + 448) = v24;
    sub_2366CB064(v20, a2, a3);
    if (v10)
    {
      sub_2366E56BC(v20, v25);
      if (*(v7 + 408) <= 2u)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_2366E5500(v7, v20);
      sub_2366E56BC(v20, v27);
      if (*(v7 + 408) <= 2u)
      {
LABEL_38:
        free(v14);
        goto LABEL_45;
      }

      sub_2366E8294(v7 + 360);
    }

    v28 = sub_2366DE78C(0x20uLL, *(v7 + 400));
    sub_2366C13C0(a2, a3, 2u, v28);
    if (!v10)
    {
      sub_2366E82F4(v7 + 360);
    }

    v30 = v28 + 16;
    v62 = v14;
    v63 = v10;
    v31 = v10 & 1;
    v65 = v7;
    do
    {
      v32 = v31;
      v33 = *&v28[8 * v31];
      v34 = *(v33 + 12);
      v35 = sub_2366DE2A4(*(v33 + 12), v29);
      v36 = &v14[v31];
      v37 = sub_2366E5714(v7, **&v28[8 * v31], v36[1] - *v36, v34);
      v38 = v37;
      v39 = v35;
      if (!v35)
      {
        v40 = *(v37 + 440);
        if (!v40)
        {
          v40 = malloc_type_malloc(4 * *(v38 + 408), 0x100004052888210uLL);
          *(v38 + 440) = v40;
        }

        v41 = *(v38 + 408);
        if (v41)
        {
          v42 = *&v28[8 * v32];
          v43 = *(v38 + 432);
          do
          {
            v44 = *v43++;
            *v40++ = *(v42 + 184) / v44;
            --v41;
          }

          while (v41);
        }
      }

      *&v30[8 * v32] = sub_2366DE78C(8 * v64, v34);
      *(*&v30[8 * v32] + 8 * v35) = malloc_type_malloc(4 * *(*(*&v28[8 * v32] + 48) + 4 * v35), 0x100004052888210uLL);
      v45 = *&v30[8 * v32];
      v47 = sub_2366CB318(v38, *(*&v28[8 * v32] + 168) / *(v66 + v32));
      if (!v63)
      {
        sub_2366E5500(v65, v38);
      }

      sub_2366E56BC(v38, v46);
      v48 = *&v28[8 * v32];
      v49 = *(*(v48 + 48) + 4 * v39);
      if (v49)
      {
        v50 = *(*(v48 + 200) + 8 * v39);
        v51 = *(*&v30[8 * v32] + 8 * v39);
        do
        {
          v52 = *v50++;
          v53 = (v52 >> *(a2 + 24)) - 1;
          v54 = *(a2 + 20) & v52;
          v55 = *v51++;
          *(*(a3 + 8 * v53) + 4 * v54) = *v36 + v55;
          --v49;
        }

        while (v49);
      }

      v7 = v65;
      if (!v39)
      {
        sub_2366DE248(*(v65 + 400));
        *(a2 + 208) += v47;
        sub_2366DE26C(*(v65 + 400));
      }

      free(*(*&v30[8 * v32] + 8 * v39));
      sub_2366DE830(*&v30[8 * v32], v34);
      sub_2366BE8D0(*&v28[8 * v32], v56);
      sub_2366DE678(v34, v57);
      v31 = v32 + v64;
      v14 = v62;
    }

    while (v32 + v64 < 2);
    sub_2366DE830(v28, *(v65 + 400));
    goto LABEL_38;
  }

  v11 = *(a3 + 8 * v9);
  v12 = *(*(a2 + 48) + 4 * v10);
  LODWORD(v66[0]) = 0;
  if (v12 >= 0x40)
  {
    for (j = 1; j != 4; ++j)
    {
      if (*(v66 + j))
      {
        break;
      }
    }
  }

  else if (!v12)
  {
    if (v10)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  bzero(v11, 4 * v12);
  if (v10)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(a2 + 208) = 0;
  v58 = *(a2 + 168);
  if (v58)
  {
    v59 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    if (v59)
    {
      *v59 = v58;
    }
  }

  else
  {
    v59 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  }

  *(a2 + 128) = v59;
LABEL_45:
  sub_2366DE30C(*(v7 + 400));
  result = *(a2 + 208);
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2366CB7D0(uint64_t a1, unsigned int *a2)
{
  v4 = sub_2366DFFC0(a1, a2);
  v5 = sub_2366BE52C(v4);
  v6 = sub_2366BE52C(a2);
  v9 = *v4;
  LODWORD(v10) = *a2;
  v11 = *v4 / v10;
  if (v5 / v6 <= v11)
  {
    v12 = sub_2366BE52C(v4);
    v11 = v12 / sub_2366BE52C(a2);
    v9 = *v4;
  }

  if (v9 > *(a1 + 472) && v11 <= *(a1 + 480))
  {
    sub_2366CB7D0(a1, v4);
  }

  else
  {
    if (*(a1 + 8) >= 3)
    {
      printf("Coarsest graph{%zu} has %u vertices, %u edges, and %lld exposed edge weight.\n", *(a2 + 14), *a2, a2[2], *(a2 + 22));
    }

    v13 = *(a1 + 404);
    v14 = v13 >= 3;
    v15 = v13 - 3;
    if (v14)
    {
      if (v15 > 1)
      {
        sub_2366CB95C((a1 + 404), v7, v8);
      }

      sub_2366C866C(a1, v4);
    }

    else
    {
      sub_2366C83BC(a1, v4);
    }

    sub_2366E6560(a1, v4);
  }

  if (v4 != a2)
  {
    sub_2366CBA04(a1, a2);
  }

  sub_2366DE30C(*(a1 + 400));
  v18 = *(a1 + 404);
  if (v18 >= 5)
  {
    sub_2366CB95C((a1 + 404), v16, v17);
  }

  return *(a2 + qword_23681F950[v18]);
}

size_t sub_2366CB944(const void *a1, uint64_t a2, uint64_t a3, FILE *a4)
{

  return fwrite(a1, 7uLL, 1uLL, a4);
}

void sub_2366CB95C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D85DF8];
  sub_2366CB944("ERROR: ", a2, a3, *MEMORY[0x277D85DF8]);
  fprintf(*v4, "Unknown partition type '%d'\n", *a1);
  fflush(*v4);
  abort();
}

void sub_2366CB9B0(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D85DF8];
  sub_2366CB944("ERROR: ", a2, a3, *MEMORY[0x277D85DF8]);
  fprintf(*v4, "Unknown partitoin type '%d'\n", *a1);
  fflush(*v4);
  abort();
}

double sub_2366CBA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2366DE2A4(*(a1 + 400), a2);
  v5 = v4;
  if (!v4)
  {
    sub_2366E8294(a1 + 288);
  }

  sub_2366D7450(a1, a2);
  sub_2366E6560(a1, a2);
  v7 = *(a1 + 404);
  if (v7 >= 3)
  {
    if (v7 == 3 && *(a1 + 8) >= 3)
    {
      v10 = *(a2 + 112);
      v11 = *(a2 + 212);
      sub_2366BE4A8(a2, *(a1 + 408), *(a1 + 440));
      printf("Final partition on graph %zu: %d separator and %5.4lf balance\n");
    }
  }

  else if (*(a1 + 8) >= 3)
  {
    v8 = *(a2 + 112);
    v9 = *(a2 + 208);
    sub_2366BE4A8(a2, *(a1 + 408), *(a1 + 440));
    printf("Final partition on graph %zu: %d cut and %5.4lf balance\n");
  }

  if (!v5)
  {

    return sub_2366E82F4(a1 + 288);
  }

  return result;
}

uint64_t sub_2366CBB20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v143 = a3;
  v180[2] = *MEMORY[0x277D85DE8];
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v141);
  v10 = *a2;
  v11 = a2[5];
  v12 = a2[3];
  v13 = a2[19];
  v161 = a2[18];
  v162 = a2[2];
  v14 = a2[15];
  v15 = a2[16];
  v144 = a2;
  v166 = a2[24];
  v165 = sub_2366E76B8(v10);
  v180[0] = v165;
  v142 = v10;
  v163 = sub_2366E76B8(v10);
  v180[1] = v163;
  v175 = sub_2366E2AB8(a1, v10, v16, v17, v18, v19, v20, v21);
  v151 = sub_2366E2AB8(a1, v10, v22, v23, v24, v25, v26, v27);
  v176 = sub_2366E2AB8(a1, v10 + 1, v28, v29, v30, v31, v32, v33);
  v149 = v10;
  v34 = 2 * v10;
  v174 = sub_2366E2AB8(a1, v34, v35, v36, v37, v38, v39, v40);
  v48 = **(a1 + 112);
  v49 = *v15;
  v50 = v15[1];
  v51 = v15[2];
  v153 = a1;
  if ((*(a1 + 8) & 8) != 0)
  {
    printf("Partitions-N2: [%6d %6d] Nv-Nb[%6d %6d]. ISep: %6d\n", v49, v50, *v144, v144[34], v144[28]);
  }

  v52 = v151;
  if (v143 < 1)
  {
    goto LABEL_107;
  }

  v145 = 0;
  v150 = ((v48 * 0.5) * (v50 + v49 + v51));
  v148 = v34 - 1;
  v160 = v13;
  v164 = v15;
  do
  {
    sub_2366E736C(v142, -1, v175);
    sub_2366E7774(v165);
    sub_2366E7774(v163);
    v147 = v144[28];
    v53 = v144[34];
    sub_2366C8A48(v53, v52, v53, 1, (v153 + 68));
    v171 = v53;
    if (v53 >= 1)
    {
      v54 = v151;
      do
      {
        v55 = *v54++;
        v56 = *(v13 + 4 * v55);
        v57 = (v166 + 8 * v56);
        sub_2366E7BC4(v165, *(v13 + 4 * v55), (*(v12 + 4 * v56) - v57[1]));
        sub_2366E7BC4(v163, v56, (*(v12 + 4 * v56) - *v57));
        --v53;
      }

      while (v53);
    }

    if (*(v153 + 56))
    {
      v58 = 5 * v171;
      v59 = v171 <= 79;
      v60 = 400;
    }

    else
    {
      v58 = 2 * v171;
      v59 = v171 <= 149;
      v60 = 300;
    }

    if (!v59)
    {
      v58 = v60;
    }

    v146 = v58;
    v62 = v161;
    v61 = v162;
    v63 = v166;
    v64 = v165;
    v42 = v176;
    v44 = 0xFFFFFFFFLL;
    *v176 = 0;
    if (v149 < 1)
    {
      LODWORD(v71) = 0;
      LODWORD(v84) = -1;
      v45 = v147;
      v52 = v151;
      v43 = v174;
      goto LABEL_79;
    }

    v65 = 0;
    v170 = 0;
    v66 = *v15 - v15[1];
    if (v66 < 0)
    {
      v66 = v15[1] - *v15;
    }

    v152 = v66;
    v154 = 0xFFFFFFFFLL;
    v156 = v147;
    while (1)
    {
      v159 = v65;
      v67 = sub_2366E7F5C(v64);
      v179[0] = v67;
      v68 = sub_2366E7F5C(v163);
      v179[1] = v68;
      if (v67 != -1 && v68 != -1)
      {
        v69 = *(v12 + 4 * v68) - *(v63 + 8 * v68);
        v178[0] = *(v12 + 4 * v67) - *(v63 + 8 * v67 + 4);
        v178[1] = v69;
        v70 = (v178[0] < v69) ^ (*(v12 + 4 * v179[v178[0] < v69]) + v15[v178[0] < v69] > v150);
        v52 = v151;
LABEL_28:
        v71 = v159;
        goto LABEL_29;
      }

      v52 = v151;
      v44 = 0xFFFFFFFFLL;
      if (v67 == -1 && v68 == -1)
      {
        v42 = v176;
        v43 = v174;
        LODWORD(v84) = v154;
        v45 = v156;
        LODWORD(v71) = v159;
        goto LABEL_79;
      }

      if (v67 != -1 && *(v12 + 4 * v67) + *v15 <= v150)
      {
        v70 = 0;
        goto LABEL_28;
      }

      v71 = v159;
      if (v68 == -1 || *(v12 + 4 * v68) + v15[1] > v150)
      {
        v42 = v176;
        goto LABEL_77;
      }

      v70 = 1;
LABEL_29:
      v169 = v70 ^ 1u;
      v158 = v70;
      v173 = v180[v70];
      v41 = sub_2366E7E64(v173);
      v72 = v175;
      if (v175[v41] == -1)
      {
        v73 = v63;
        v74 = v52;
        v75 = v41;
        sub_2366E7C30(v180[v169], v41);
        v41 = v75;
        v52 = v74;
        v63 = v73;
        v71 = v159;
        v72 = v175;
      }

      v76 = v41;
      v172 = (v61 + 4 * v41);
      if (v172[1] + v170 - *v172 >= v148)
      {
        v42 = v176;
        v43 = v174;
        v44 = 0xFFFFFFFFLL;
LABEL_78:
        LODWORD(v84) = v154;
        v45 = v156;
        goto LABEL_79;
      }

      v157 = v41;
      v77 = v63 + 8 * v41;
      v78 = v169;
      v79 = (*(v77 + 4 * v169) - *(v12 + 4 * v41) + v15[2]);
      v15[2] = v79;
      v80 = *(v12 + 4 * v41);
      v81 = *(v77 + 4 * v169);
      v82 = v80 + v15[v158] - v15[v169] + v81;
      if (v82 < 0)
      {
        v82 = -v82;
      }

      v45 = v156;
      v42 = v176;
      v43 = v174;
      v44 = 0xFFFFFFFFLL;
      if (v79 >= v156)
      {
        break;
      }

      v45 = v79;
LABEL_44:
      v84 = v71;
      v152 = v82;
LABEL_45:
      v85 = *(v13 + 4 * --v171);
      *(v13 + 4 * *(v62 + 4 * v41)) = v85;
      *(v62 + 4 * v85) = *(v62 + 4 * v41);
      *(v62 + 4 * v41) = -1;
      v15[v158] += *(v12 + 4 * v41);
      *(v14 + 4 * v41) = v158;
      v72[v41] = v71;
      *(v52 + 4 * v71) = v41;
      v86 = *v172;
      v154 = v84;
      v156 = v45;
      if (v86 < v172[1])
      {
        v168 = v63 + 4 * v158;
        v177 = -2 - v158;
        v87 = v63 + 4 * v169;
        v167 = v41;
        do
        {
          v88 = *(v11 + 4 * v86);
          v89 = *(v14 + 4 * v88);
          if (v89 == 2)
          {
            v90 = *(v12 + 4 * v88);
            v91 = *(v168 + 8 * v88);
            *(v168 + 8 * v88) = *(v12 + 4 * v76) + v91;
            v92 = v72[v88];
            if (v92 == -1 || v92 == v158 - 3)
            {
              sub_2366E7D60(v180[v78], v88, (v90 - *(v12 + 4 * v76) - v91));
              v76 = v167;
              v78 = v169;
              v44 = 0xFFFFFFFFLL;
              v43 = v174;
              v72 = v175;
              v42 = v176;
            }
          }

          else if (v89 == v78)
          {
            *(v13 + 4 * v171) = v88;
            *(v62 + 4 * v88) = v171;
            *(v43 + 4 * v170) = v88;
            *(v14 + 4 * v88) = 2;
            v164[v78] -= *(v12 + 4 * v88);
            v94 = (v166 + 8 * v88);
            *v94 = 0;
            v95 = (v61 + 4 * v88);
            v96 = *v95;
            if (v96 < v95[1])
            {
              do
              {
                v41 = *(v11 + 4 * v96);
                v97 = *(v14 + 4 * v41);
                v98 = *(v12 + 4 * v41);
                if (v97 == 2)
                {
                  v99 = *(v87 + 8 * v41);
                  *(v87 + 8 * v41) = v99 - *(v12 + 4 * v88);
                  v100 = v72[v41];
                  if (v100 == -1 || v100 == v177)
                  {
                    sub_2366E7D60(v173, v41, (v98 - v99 + *(v12 + 4 * v88)));
                    v44 = 0xFFFFFFFFLL;
                    v43 = v174;
                    v72 = v175;
                    v42 = v176;
                  }
                }

                else
                {
                  *(v94 + v97) += v98;
                }

                ++v96;
              }

              while (v96 < v95[1]);
            }

            ++v171;
            ++v170;
            if (v72[v88] == -1)
            {
              sub_2366E7BC4(v173, v88, (*(v12 + 4 * v88) - *(v94 + v169)));
              v78 = v169;
              v44 = 0xFFFFFFFFLL;
              v43 = v174;
              v72 = v175;
              v42 = v176;
              v175[v88] = v177;
              v62 = v161;
              v61 = v162;
              v13 = v160;
            }

            else
            {
              v62 = v161;
              v61 = v162;
              v13 = v160;
              v78 = v169;
            }

            v76 = v167;
          }

          ++v86;
        }

        while (v86 < v172[1]);
      }

      v65 = v159 + 1;
      *(v42 + 4 * (v159 + 1)) = v170;
      v15 = v164;
      if ((*(v153 + 8) & 0x20) != 0)
      {
        printf("Moved %6d to %3d, Gain: %5d [%5d] [%4d %4d] \t[%5d %5d %5d]\n", v157, v158, v178[v158], v178[v78], *(v12 + 4 * v179[v158]), *(v12 + 4 * v179[v78]), *v164, v164[1], v164[2]);
        v44 = 0xFFFFFFFFLL;
        v42 = v176;
      }

      v63 = v166;
      v64 = v165;
      if (v65 == v149)
      {
        LODWORD(v71) = v149;
        v52 = v151;
LABEL_77:
        v43 = v174;
        goto LABEL_78;
      }
    }

    if (v79 == v156 && v82 < v152)
    {
      goto LABEL_44;
    }

    v84 = v154;
    if (v71 - v154 <= 2 * v146 && (v71 - v154 <= v146 || v156 * 1.1 >= v79))
    {
      goto LABEL_45;
    }

    v15[2] = v80 + v79 - v81;
LABEL_79:
    v155 = v84;
    if (v71 - 1 <= v84)
    {
      LODWORD(v71) = v171;
    }

    else
    {
      v102 = v71;
      v103 = v71 - 1;
      v104 = v84;
      LODWORD(v71) = v171;
      do
      {
        v105 = *(v52 + 4 * v103);
        v106 = *(v14 + 4 * v105);
        v15[2] += *(v12 + 4 * v105);
        v107 = (v106 + 1) & 1;
        v15[v106] -= *(v12 + 4 * v105);
        *(v14 + 4 * v105) = 2;
        if (v106 < -1)
        {
          v107 = -v107;
        }

        *(v13 + 4 * v71) = v105;
        *(v62 + 4 * v105) = v71;
        v108 = (v63 + 8 * v105);
        *v108 = 0;
        v109 = (v61 + 4 * v105);
        v110 = *v109;
        if (v110 < v109[1])
        {
          v111 = v63 + 4 * v106;
          do
          {
            v112 = *(v11 + 4 * v110);
            v113 = *(v14 + 4 * v112);
            if (v113 == 2)
            {
              v114 = 8 * v112;
              v41 = *(v111 + v114);
              *(v111 + v114) = v41 - *(v12 + 4 * v105);
            }

            else
            {
              v41 = *(v108 + v113);
              *(v108 + v113) = v41 + *(v12 + 4 * v112);
            }

            ++v110;
          }

          while (v110 < v109[1]);
        }

        LODWORD(v71) = v71 + 1;
        v115 = *(v42 + 4 * v103);
        if (v115 < *(v42 + 4 * v102))
        {
          v71 = v71;
          v116 = v63 + 4 * v107;
          do
          {
            v117 = *(v43 + 4 * v115);
            *(v14 + 4 * v117) = v107;
            v15[v107] += *(v12 + 4 * v117);
            v15[2] -= *(v12 + 4 * v117);
            --v71;
            v118 = *(v13 + 4 * v71);
            *(v13 + 4 * *(v62 + 4 * v117)) = v118;
            *(v62 + 4 * v118) = *(v62 + 4 * v117);
            *(v62 + 4 * v117) = -1;
            v119 = (v61 + 4 * v117);
            v120 = v119[1];
            v121 = *v119;
            if (v121 < v120)
            {
              do
              {
                v122 = *(v11 + 4 * v121);
                v41 = *(v14 + 4 * v122);
                if (v41 == 2)
                {
                  v123 = 8 * v122;
                  v41 = *(v116 + v123);
                  *(v116 + v123) = v41 + *(v12 + 4 * v117);
                  v120 = v119[1];
                }

                ++v121;
              }

              while (v121 < v120);
            }

            ++v115;
          }

          while (v115 < *(v42 + 4 * v102));
        }

        --v103;
        --v102;
      }

      while (v103 > v104);
    }

    if ((*(v153 + 8) & 8) != 0)
    {
      v124 = v45;
      printf("\tMinimum sep: %6d at %5d, PWGTS: [%6d %6d], NBND: %6d\n", v45, v155, *v15, v15[1], v71);
      v45 = v124;
    }

    v144[28] = v45;
    v144[34] = v71;
    if (v155 == -1)
    {
      break;
    }

    if (v45 >= v147)
    {
      break;
    }

    ++v145;
  }

  while (v145 != v143);
LABEL_107:
  sub_2366E77F4(v165, v41, v42, v43, v44, v45, v46, v47);
  sub_2366E77F4(v163, v125, v126, v127, v128, v129, v130, v131);
  v139 = *MEMORY[0x277D85DE8];

  return sub_2366E2AB0(v153, v132, v133, v134, v135, v136, v137, v138);
}

uint64_t sub_2366CC5E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v154 = a3;
  v9 = a1;
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v124);
  v10 = *a2;
  v11 = a2[5];
  v12 = a2[3];
  v140 = a2[2];
  v142 = a2[18];
  v143 = a2[19];
  v14 = a2[15];
  v13 = a2[16];
  v127 = a2;
  v150 = a2[24];
  v15 = sub_2366E76B8(v10);
  v141 = sub_2366E2AB8(v9, v10, v16, v17, v18, v19, v20, v21);
  v149 = sub_2366E2AB8(v9, v10 + 1, v22, v23, v24, v25, v26, v27);
  v133 = v10;
  v28 = 2 * v10;
  v145 = sub_2366E2AB8(v9, 2 * v10, v29, v30, v31, v32, v33, v34);
  v42 = **(v9 + 112);
  v43 = *v13;
  v44 = v13[1];
  v45 = v13[2];
  if ((*(v9 + 8) & 8) != 0)
  {
    printf("Partitions-N1: [%6d %6d] Nv-Nb[%6d %6d]. ISep: %6d\n", v43, v44, *v127, v127[34], v127[28]);
  }

  if (v154 >= 1)
  {
    v46 = 0;
    v125 = 2 * v154;
    v47 = *v13 < v13[1];
    v130 = ((v42 * 0.5) * (v44 + v43 + v45));
    v131 = v28 - 1;
    v153 = v15;
    v129 = v9;
    v147 = v11;
    while (1)
    {
      v126 = v46;
      v48 = v47;
      sub_2366E7774(v15);
      v128 = v127[28];
      v49 = v127[34];
      sub_2366C8A48(v49, v141, v49, 1, (v9 + 68));
      v155 = v48;
      v50 = v150 + 4 * v48;
      v152 = v49;
      v51 = v143;
      if (v49 >= 1)
      {
        v52 = v49;
        v53 = v141;
        do
        {
          v54 = *v53++;
          sub_2366E7BC4(v15, *(v143 + 4 * v54), (*(v12 + 4 * *(v143 + 4 * v54)) - *(v50 + 8 * *(v143 + 4 * v54))));
          --v52;
        }

        while (v52);
      }

      if (*(v9 + 56))
      {
        v55 = 5;
      }

      else
      {
        v55 = 3;
      }

      if (*(v9 + 56))
      {
        v56 = 500;
      }

      else
      {
        v56 = 300;
      }

      v57 = v152 * v55;
      if (v152 > 99)
      {
        v57 = v56;
      }

      v132 = v57;
      v58 = v142;
      if ((*(v9 + 8) & 2) != 0)
      {
        *(v9 + 232) = *(v9 + 232) - sub_23681E0C8();
      }

      v37 = v155;
      v59 = v149;
      *v149 = 0;
      v148 = !v155;
      v38 = v150 + 4 * !v155;
      v60 = v140;
      if (v133 >= 1)
      {
        break;
      }

      v65 = 0;
      v136 = -1;
      v137 = v128;
      v35 = v145;
      v36 = 0xFFFFFFFFLL;
LABEL_62:
      if ((*(v9 + 8) & 2) != 0)
      {
        v94 = sub_23681E0C8();
        v38 = v150 + 4 * !v155;
        v37 = v155;
        v36 = 0xFFFFFFFFLL;
        v35 = v145;
        v59 = v149;
        *(v9 + 232) = v94 + *(v9 + 232);
        if ((*(v9 + 8) & 2) != 0)
        {
          v95 = sub_23681E0C8();
          v38 = v150 + 4 * !v155;
          v37 = v155;
          v36 = 0xFFFFFFFFLL;
          v35 = v145;
          v59 = v149;
          *(v9 + 224) = *(v9 + 224) - v95;
        }
      }

      LODWORD(v96) = v65 - 1;
      if (v65 - 1 <= v136)
      {
        LODWORD(v98) = v152;
      }

      else
      {
        v96 = v96;
        v97 = v65;
        LODWORD(v98) = v152;
        do
        {
          v99 = v141[v96];
          v13[2] += *(v12 + 4 * v99);
          v13[!v155] -= *(v12 + 4 * v99);
          *(v14 + 4 * v99) = 2;
          *(v51 + 4 * v98) = v99;
          *(v58 + 4 * v99) = v98;
          v100 = (v150 + 8 * v99);
          *v100 = 0;
          v101 = (v60 + 4 * v99);
          v102 = *v101;
          if (v102 < v101[1])
          {
            do
            {
              v103 = *(v11 + 4 * v102);
              v104 = *(v14 + 4 * v103);
              if (v104 == 2)
              {
                *(v38 + 8 * v103) -= *(v12 + 4 * v99);
              }

              else
              {
                *(v100 + v104) += *(v12 + 4 * v103);
              }

              ++v102;
            }

            while (v102 < v101[1]);
          }

          LODWORD(v98) = v98 + 1;
          v105 = v59[v96];
          if (v105 < v59[v97])
          {
            v98 = v98;
            do
            {
              v106 = *(v35 + 4 * v105);
              *(v14 + 4 * v106) = v37;
              v13[v37] += *(v12 + 4 * v106);
              v13[2] -= *(v12 + 4 * v106);
              --v98;
              v107 = *(v51 + 4 * v98);
              *(v51 + 4 * *(v58 + 4 * v106)) = v107;
              *(v58 + 4 * v107) = *(v58 + 4 * v106);
              *(v58 + 4 * v106) = -1;
              v108 = (v60 + 4 * v106);
              v109 = *v108;
              v110 = v108[1];
              if (v109 < v110)
              {
                v111 = (v11 + 4 * v109);
                v112 = v110 - v109;
                do
                {
                  v114 = *v111++;
                  v113 = v114;
                  if (*(v14 + 4 * v114) == 2)
                  {
                    *(v50 + 8 * v113) += *(v12 + 4 * v106);
                  }

                  --v112;
                }

                while (v112);
              }

              ++v105;
            }

            while (v105 < v59[v97]);
          }

          v97 = v96--;
        }

        while (v96 > v136);
      }

      v115 = *(v9 + 8);
      if ((v115 & 2) != 0)
      {
        *(v9 + 224) = sub_23681E0C8() + *(v9 + 224);
        v115 = *(v9 + 8);
      }

      if ((v115 & 8) != 0)
      {
        printf("\tMinimum sep: %6d at %5d, PWGTS: [%6d %6d], NBND: %6d\n", v137, v136, *v13, v13[1], v98);
      }

      v127[28] = v137;
      v127[34] = v98;
      if (v126)
      {
        v15 = v153;
        if (v136 == -1)
        {
          goto LABEL_93;
        }

        if (v137 >= v128)
        {
          goto LABEL_93;
        }

        v46 = v126 + 1;
        v47 = !v155;
        if (v126 + 1 >= v125)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v46 = v126 | 1;
        v47 = !v155;
        v15 = v153;
        if ((v126 | 1) >= v125)
        {
          goto LABEL_93;
        }
      }
    }

    v139 = 0;
    v151 = 0;
    v61 = *v13 - v13[1];
    if (v61 < 0)
    {
      v61 = v13[1] - *v13;
    }

    v134 = v61;
    v136 = -1;
    v137 = v128;
    while (1)
    {
      v62 = sub_2366E7E64(v15);
      if (v62 == -1)
      {
        v59 = v149;
        v35 = v145;
        v36 = 0xFFFFFFFFLL;
        v37 = v155;
        v38 = v150 + 4 * !v155;
        v65 = v139;
        goto LABEL_62;
      }

      v63 = (v60 + 4 * v62);
      v64 = v62;
      v59 = v149;
      v35 = v145;
      v36 = 0xFFFFFFFFLL;
      v37 = v155;
      v38 = v150 + 4 * !v155;
      v65 = v139;
      if (v63[1] + v151 - *v63 >= v131)
      {
        goto LABEL_62;
      }

      v138 = v64;
      v66 = v64;
      v67 = v13[!v155];
      v68 = *(v12 + 4 * v64);
      if (v68 + v67 > v130)
      {
        goto LABEL_62;
      }

      v69 = (v50 + 8 * v66);
      v70 = *v69 - v68 + v13[2];
      v13[2] = v70;
      v71 = *(v12 + 4 * v66);
      v135 = v69;
      v72 = *v69;
      v73 = v71 + v67 - v13[v155] + v72;
      if (v73 < 0)
      {
        v73 = -v73;
      }

      if (v70 < v137)
      {
        break;
      }

      if (v70 == v137 && v73 < v134)
      {
        goto LABEL_37;
      }

      if (v139 - v136 > 3 * v132 || v139 - v136 > v132 && v137 * 1.1 < v70)
      {
        v13[2] = v71 + v70 - v72;
        goto LABEL_62;
      }

LABEL_38:
      v75 = *(v51 + 4 * --v152);
      *(v51 + 4 * *(v58 + 4 * v66)) = v75;
      *(v58 + 4 * v75) = *(v58 + 4 * v66);
      *(v58 + 4 * v66) = -1;
      v13[!v155] += *(v12 + 4 * v66);
      *(v14 + 4 * v66) = v148;
      v141[v139] = v138;
      v146 = v66;
      v144 = v63;
      if ((*(v9 + 8) & 2) != 0)
      {
        v76 = sub_23681E0C8();
        v63 = v144;
        v35 = v145;
        v66 = v146;
        v38 = v150 + 4 * !v155;
        LODWORD(v37) = v155;
        v59 = v149;
        *(v9 + 216) = *(v9 + 216) - v76;
      }

      v77 = *v63;
      if (v77 < v63[1])
      {
        do
        {
          v78 = *(v11 + 4 * v77);
          v79 = *(v14 + 4 * v78);
          if (v79 == 2)
          {
            *(v38 + 8 * v78) += *(v12 + 4 * v66);
          }

          else if (v79 == v37)
          {
            *(v143 + 4 * v152) = v78;
            *(v58 + 4 * v78) = v152;
            *(v35 + 4 * v151) = v78;
            *(v14 + 4 * v78) = 2;
            v13[v37] -= *(v12 + 4 * v78);
            v80 = (v150 + 8 * v78);
            *v80 = 0;
            v81 = (v60 + 4 * v78);
            v82 = *v81;
            v83 = v81[1];
            if (v83 > v82)
            {
              v84 = (v147 + 4 * v82);
              v85 = v83 - v82;
              do
              {
                v87 = *v84++;
                v86 = v87;
                v88 = *(v14 + 4 * v87);
                if (v88 == 2)
                {
                  v89 = *(v50 + 8 * v86) - *(v12 + 4 * v78);
                  *(v50 + 8 * v86) = v89;
                  sub_2366E7D60(v153, v86, (*(v12 + 4 * v86) - v89));
                  LODWORD(v37) = v155;
                }

                else
                {
                  *(v80 + v88) += *(v12 + 4 * v86);
                }

                --v85;
              }

              while (v85);
            }

            ++v152;
            ++v151;
            sub_2366E7BC4(v153, v78, (*(v12 + 4 * v78) - *(v80 + v37)));
            LODWORD(v37) = v155;
            v11 = v147;
            v38 = v150 + 4 * !v155;
            v60 = v140;
            v58 = v142;
            v59 = v149;
            v35 = v145;
            v66 = v146;
            v63 = v144;
          }

          ++v77;
        }

        while (v77 < v63[1]);
      }

      v90 = v139 + 1;
      v59[v139 + 1] = v151;
      v9 = v129;
      v91 = *(v129 + 8);
      if ((v91 & 2) != 0)
      {
        v92 = sub_23681E0C8();
        v66 = v146;
        v59 = v149;
        *(v129 + 216) = v92 + *(v129 + 216);
        v91 = *(v129 + 8);
      }

      v51 = v143;
      v15 = v153;
      if ((v91 & 0x20) != 0)
      {
        printf("Moved %6d to %3d, Gain: %5d [%5d] \t[%5d %5d %5d] [%3d %2d]\n", v138, v148, *(v12 + 4 * v66) - *v135, *(v12 + 4 * v66), *v13, v13[1], v13[2], v139, v132);
        v59 = v149;
      }

      ++v139;
      v93 = v90 == v133;
      v58 = v142;
      if (v93)
      {
        v65 = v133;
        v35 = v145;
        v36 = 0xFFFFFFFFLL;
        v37 = v155;
        v38 = v150 + 4 * !v155;
        goto LABEL_62;
      }
    }

    v137 = v70;
LABEL_37:
    v136 = v139;
    v134 = v73;
    goto LABEL_38;
  }

LABEL_93:
  sub_2366E77F4(v15, v35, v36, v37, v38, v39, v40, v41);

  return sub_2366E2AB0(v9, v116, v117, v118, v119, v120, v121, v122);
}

uint64_t sub_2366CCF30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  if (*a2)
  {
    v9 = result;
    v10 = *(a2 + 128);
    v11 = **(result + 112) * 0.5;
    v12 = *v10;
    v13 = v10[1];
    v14 = *v10 - v13;
    if (*v10 <= v13)
    {
      v12 = v10[1];
    }

    if (v12 >= (v11 * (v13 + *v10)))
    {
      if (v14 < 0)
      {
        v14 = v13 - *v10;
      }

      if (v14 >= 3 * **(a2 + 56) / v8)
      {
        v15 = *(a2 + 40);
        v16 = *(a2 + 24);
        v87 = *(a2 + 144);
        v88 = *(a2 + 16);
        v18 = *(a2 + 120);
        v85 = *(a2 + 192);
        v86 = *(a2 + 152);
        sub_2366E2AA8(result, a2, a3, a4, a5, a6, a7, a8, v76);
        v19 = v10[1];
        v83 = v10;
        v90 = *v10;
        v79 = *v10 >= v19;
        v84 = *v10 < v19;
        v93 = sub_2366E76B8(v8);
        v26 = sub_2366E2AB8(v9, v8, v20, v21, v22, v23, v24, v25);
        v33 = sub_2366E2AB8(v9, v8, v27, v28, v29, v30, v31, v32);
        v94 = sub_2366E736C(v8, -1, v33);
        if ((*(v9 + 8) & 8) != 0)
        {
          printf("Partitions: [%6d %6d] Nv-Nb[%6d %6d]. ISep: %6d [B]\n", *v83, v83[1], *a2, *(a2 + 136), *(a2 + 112));
        }

        v77 = a2;
        v78 = v9;
        v34 = *(a2 + 136);
        sub_2366C8A48(v34, v26, v34, 1, (v9 + 68));
        v42 = v85 + 4 * v84;
        v92 = v34;
        if (v34 >= 1)
        {
          v43 = v34;
          do
          {
            v44 = *v26++;
            sub_2366E7BC4(v93, *(v86 + 4 * v44), (*(v16 + 4 * *(v86 + 4 * v44)) - *(v42 + 8 * *(v86 + 4 * v44))));
            --v43;
          }

          while (v43);
        }

        if (v8 < 1)
        {
          v45 = 0;
          v46 = v83;
        }

        else
        {
          v45 = 0;
          v81 = v90 >= v19;
          v91 = v85 + 4 * (v90 >= v19);
          v46 = v83;
          v47 = v86;
          v48 = v84;
          v80 = v8;
          while (1)
          {
            v49 = sub_2366E7E64(v93);
            if (v49 == -1)
            {
              break;
            }

            *(v94 + 4 * v49) = 1;
            v50 = v46[v81];
            v51 = v46[v48];
            if (v50 > v51)
            {
              break;
            }

            v52 = *(v16 + 4 * v49);
            v53 = (v42 + 8 * v49);
            v54 = v52 - *v53;
            v55 = (v11 * (v46[1] + *v46));
            if (v54 < 0 && v51 < v55)
            {
              break;
            }

            if (v50 + v52 <= v55)
            {
              v56 = v49;
              v46[2] -= v54;
              v57 = *(v47 + 4 * --v92);
              *(v47 + 4 * *(v87 + 4 * v49)) = v57;
              *(v87 + 4 * v57) = *(v87 + 4 * v49);
              *(v87 + 4 * v49) = -1;
              v46[v81] += *(v16 + 4 * v49);
              *(v18 + 4 * v49) = v79;
              v89 = v49;
              if ((*(v78 + 8) & 0x20) != 0)
              {
                printf("Moved %6d to %3d, Gain: %3d, \t[%5d %5d %5d]\n", v49, v79, *(v16 + 4 * v49) - *v53, *v46, v46[1], v46[2]);
                v56 = v89;
              }

              v58 = (v88 + 4 * v56);
              v59 = *v58;
              if (v59 < v58[1])
              {
                v82 = (v88 + 4 * v56);
                do
                {
                  v60 = *(v15 + 4 * v59);
                  v61 = *(v18 + 4 * v60);
                  if (v61 == 2)
                  {
                    *(v91 + 8 * v60) += *(v16 + 4 * v56);
                  }

                  else if (v61 == v48)
                  {
                    *(v47 + 4 * v92) = v60;
                    *(v87 + 4 * v60) = v92;
                    *(v18 + 4 * v60) = 2;
                    v46[v48] -= *(v16 + 4 * v60);
                    v62 = (v85 + 8 * v60);
                    *v62 = 0;
                    v63 = (v88 + 4 * v60);
                    v64 = *v63;
                    if (v64 < v63[1])
                    {
                      do
                      {
                        v65 = *(v15 + 4 * v64);
                        v66 = *(v18 + 4 * v65);
                        v67 = *(v16 + 4 * v65);
                        if (v66 == 2)
                        {
                          v68 = *(v42 + 8 * v65);
                          *(v42 + 8 * v65) = v68 - *(v16 + 4 * v60);
                          if (*(v94 + 4 * v65) == -1)
                          {
                            sub_2366E7D60(v93, v65, (v67 - v68 + *(v16 + 4 * v60)));
                          }
                        }

                        else
                        {
                          *(v62 + v66) += v67;
                        }

                        ++v64;
                      }

                      while (v64 < v63[1]);
                    }

                    ++v92;
                    v48 = v84;
                    sub_2366E7BC4(v93, v60, (*(v16 + 4 * v60) - *(v62 + v84)));
                    v58 = v82;
                    v46 = v83;
                    v47 = v86;
                    v56 = v89;
                  }

                  ++v59;
                }

                while (v59 < v58[1]);
              }
            }

            if (++v45 == v80)
            {
              v45 = v80;
              break;
            }
          }
        }

        if ((*(v78 + 8) & 8) != 0)
        {
          printf("\tBalanced sep: %6d at %4d, PWGTS: [%6d %6d], NBND: %6d\n", v46[2], v45, *v46, v46[1], v92);
        }

        *(v77 + 112) = v46[2];
        *(v77 + 136) = v92;
        sub_2366E77F4(v93, v35, v36, v37, v38, v39, v40, v41);

        return sub_2366E2AB0(v78, v69, v70, v71, v72, v73, v74, v75);
      }
    }
  }

  return result;
}

uint64_t sub_2366CD440(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = 0.5;
  *&v8 = (*(a1 + 448) * (v6[1] + *v6)) * 0.5;
  v9 = *&v8;
  LODWORD(v8) = *a2;
  LODWORD(v7) = a2[4];
  if (sqrt(v7) * 8192.0 > v8)
  {
    goto LABEL_2;
  }

  v12 = *(a1 + 496);
  if (v12 > 1)
  {
    v79 = *(a2 + 16);
    v91 = v9;
    if (v12 == 2)
    {
      v84 = *(a1 + 504);
      v82 = sub_2366DE2A4(*(a1 + 400), a2);
      v47 = *(*(a2 + 6) + 4 * v82);
      v48 = *(*(a2 + 8) + 8 * v82);
      v49 = *(*(a2 + 10) + 8 * v82);
      v50 = sub_2366D0D60(-1, v47);
      v90 = malloc_type_malloc(4 * (v47 + 1), 0x100004052888210uLL);
      v87 = malloc_type_malloc(4 * (v47 + 2), 0x100004052888210uLL);
      v51 = malloc_type_malloc(4 * (2 * v47), 0x100004052888210uLL);
      v52 = sub_2366C6030(v47);
      v53 = malloc_type_malloc(4 * v47, 0x100004052888210uLL);
      v54 = v53;
      if (v47)
      {
        v55 = 0;
        v56 = 0;
        do
        {
          v57 = *(v48 + 4 * v55);
          v58 = v55 + 1;
          v59 = *(v48 + 4 * (v55 + 1));
          if (v59 > v57)
          {
            v60 = v59 - v57;
            v61 = (v49 + 4 * v57);
            while (1)
            {
              v62 = *v61++;
              if (v62 >= v47)
              {
                break;
              }

              if (!--v60)
              {
                goto LABEL_40;
              }
            }

            v53[v56++] = v55;
          }

LABEL_40:
          ++v55;
        }

        while (v58 != v47);
      }

      else
      {
        v56 = 0;
      }

      if (v84)
      {
        v10 = 0;
        for (i = 0; i != v84; ++i)
        {
          if (v56)
          {
            v65 = *(*(a2 + 17) + 8 * v82);
            v66 = v54;
            v67 = v56;
            do
            {
              v68 = *v66++;
              v50[v68] = *(v65 + 4 * v68);
              --v67;
            }

            while (v67);
          }

          v69 = sub_2366CF6D0(a1, a2, a3, v90, v87, v51, v52, v50, v54, v56, v91);
          if (!v69)
          {
            break;
          }

          v10 = (v69 + v10);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v90);
      free(v51);
      free(v87);
      free(v54);
      sub_2366C6FA8(v52);
      if (!v82)
      {
        a2[53] = *(*(a2 + 16) + 8);
      }

      free(v50);
      sub_2366DE30C(*(a1 + 400));
      v6 = v79;
      v9 = v91;
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_72;
      }

      v13 = sub_2366DE2A4(*(a1 + 400), a2);
      v14 = sub_2366DE2E4(*(a1 + 400));
      v15 = *(*(a2 + 6) + 4 * v13);
      v16 = *(*(a2 + 8) + 8 * v13);
      v85 = v13;
      v17 = *(*(a2 + 10) + 8 * v13);
      v88 = sub_2366DE78C(8 * v14, *(a1 + 400));
      v88[v13] = *(a3 + 8);
      v18 = sub_2366D0D60(-1, v15);
      v19 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
      v83 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
      v81 = malloc_type_malloc(4 * (v15 + 1), 0x100004052888210uLL);
      v20 = malloc_type_malloc(4 * (2 * v15), 0x100004052888210uLL);
      v21 = sub_2366C6030(v15);
      if (v15)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(v16 + 4 * v22);
          v25 = v22 + 1;
          v26 = *(v16 + 4 * (v22 + 1));
          if (v26 > v24)
          {
            v27 = v26 - v24;
            v28 = (v17 + 4 * v24);
            while (1)
            {
              v29 = *v28++;
              if (v29 >= v15)
              {
                break;
              }

              if (!--v27)
              {
                goto LABEL_20;
              }
            }

            v19[v23++] = v22;
          }

LABEL_20:
          ++v22;
        }

        while (v25 != v15);
      }

      else
      {
        v23 = 0;
      }

      v9 = v91;
      v78 = sub_2366CE81C(*(a1 + 400));
      v71 = sub_2366CE93C(a1, a2, a3, v88, v78, v21, v19, v23, v91);
      if (v23)
      {
        v72 = *(*(a2 + 17) + 8 * v85);
        v73 = v23;
        v74 = v19;
        do
        {
          v75 = *v74++;
          v18[v75] = *(v72 + 4 * v75);
          --v73;
        }

        while (v73);
      }

      v76 = sub_2366CF6D0(a1, a2, a3, v83, v81, v20, v21, v18, v19, v23, v91);
      if (!v85)
      {
        a2[53] = *(*(a2 + 16) + 8);
      }

      v10 = (v76 + v71);
      free(v83);
      free(v20);
      free(v81);
      free(v18);
      free(v19);
      sub_2366C6FA8(v21);
      sub_2366DE830(v88, *(a1 + 400));
      sub_2366CEFCC(v78, v77);
      v6 = v79;
    }
  }

  else
  {
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_2:
        v10 = sub_2366CDB08(a1, a2, *(a1 + 504), a3, v9);
        goto LABEL_3;
      }

LABEL_72:
      sub_2366D0114((a1 + 496));
    }

    v92 = v9;
    v80 = *(a2 + 16);
    v30 = *(a1 + 504);
    v31 = sub_2366DE2A4(*(a1 + 400), a2);
    v32 = sub_2366DE2E4(*(a1 + 400));
    v33 = *(*(a2 + 6) + 4 * v31);
    v34 = *(*(a2 + 8) + 8 * v31);
    v86 = v31;
    v35 = *(*(a2 + 10) + 8 * v31);
    v94 = a3;
    v89 = sub_2366DE78C(8 * v32, *(a1 + 400));
    v89[v31] = *(a3 + 8);
    v36 = sub_2366C6030(v33);
    v37 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
    v38 = sub_2366CE81C(*(a1 + 400));
    sub_2366DE30C(*(a1 + 400));
    if (v33)
    {
      v39 = 0;
      v40 = 0;
      do
      {
        v41 = *(v34 + 4 * v39);
        v42 = v39 + 1;
        v43 = *(v34 + 4 * (v39 + 1));
        if (v43 > v41)
        {
          v44 = v43 - v41;
          v45 = (v35 + 4 * v41);
          while (1)
          {
            v46 = *v45++;
            if (v46 >= v33)
            {
              break;
            }

            if (!--v44)
            {
              goto LABEL_30;
            }
          }

          v37[v40++] = v39;
        }

LABEL_30:
        ++v39;
      }

      while (v42 != v33);
    }

    else
    {
      v40 = 0;
    }

    v10 = 0;
    if (v30)
    {
      v6 = v80;
      v9 = v92;
      do
      {
        v63 = sub_2366CE93C(a1, a2, v94, v89, v38, v36, v37, v40, v92);
        if (!v63)
        {
          break;
        }

        v10 = (v63 + v10);
        --v30;
      }

      while (v30);
    }

    else
    {
      v6 = v80;
      v9 = v92;
    }

    if (!v86)
    {
      a2[53] = *(*(a2 + 16) + 8);
    }

    sub_2366C6FA8(v36);
    free(v37);
    sub_2366DE830(v89, *(a1 + 400));
    sub_2366CEFCC(v38, v70);
  }

LABEL_3:
  if (*(a1 + 8) >= 3)
  {
    printf("%zu) [%u %u] {%d %d %d # %d %u}\n", *(a2 + 14), *a2, a2[2], *v6, v6[1], v6[2], v9, v10);
  }

  return v10;
}

uint64_t sub_2366CDB08(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4, int a5)
{
  v8 = a2[4];
  v9 = *a2;
  v10 = *(a2 + 6);
  v11 = *(a2 + 9);
  v198 = *(a2 + 10);
  v196 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 17);
  v169 = *(a1 + 512);
  v14 = sub_2366DE2A4(*(a1 + 400), a2);
  v171 = a1;
  v16 = sub_2366DE78C(16 * v8, *(a1 + 400));
  v199 = v8;
  v204 = &v16[v8];
  v16[v14] = a4[1];
  *&v204[8 * v14] = *a4;
  v178 = v9;
  if (v14)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = malloc_type_malloc(4 * (v9 + 1), 0x100004052888210uLL);
    v19 = malloc_type_malloc(4 * (v9 + 2), 0x100004052888210uLL);
    v17 = v21;
    v18 = malloc_type_malloc(4 * (3 * v9), 0x100004052888210uLL);
    v20 = sub_2366C6030(a2[1]);
  }

  v200 = v20;
  v201 = v18;
  v202 = v19;
  v22 = v171;
  if (!a3)
  {
    v24 = 0;
    goto LABEL_139;
  }

  v23 = 0;
  LODWORD(v24) = 0;
  v174 = 2 * v9 - 1;
  v177 = v17;
  v195 = v12;
  do
  {
    v173 = v23;
    v25 = sub_2366DE2A4(*(v22 + 400), v15);
    sub_2366DE30C(*(v22 + 400));
    v172 = v24;
    if (v25)
    {
      v26 = 0;
      goto LABEL_8;
    }

    v28 = v12[1];
    i = v202;
    if (*v12 > v28)
    {
      LOBYTE(v30) = 1;
LABEL_16:
      v176 = v30;
      goto LABEL_17;
    }

    if (*v12 >= v28)
    {
      v30 = a2[28];
      goto LABEL_16;
    }

    v176 = 0;
LABEL_17:
    v31 = v200;
    v32 = 0;
    v26 = 0;
    v33 = 1;
    do
    {
      v182 = v33;
      v183 = v26;
      v203 = (v32 + v176) & 1;
      v34 = !((v32 + v176) & 1);
      i[1] = 0;
      v35 = *v12 - v12[1];
      if (v35 < 0)
      {
        v35 = v12[1] - *v12;
      }

      v179 = v35;
      sub_2366C60B0(v31);
      v36 = v204;
      if (v199)
      {
        v37 = 0;
        do
        {
          v38 = *&v36[8 * v37];
          if (*v38)
          {
            v39 = 0;
            v40 = v37 + 1;
            v41 = 1;
            do
            {
              v42 = *(v38[3] + 4 * v39);
              sub_2366C612C((*(*(v11 + 8 * v37) + 4 * v42) - *(v16[v37] + 8 * v42 + 4 * v34)), (v40 << a2[6]) | v42, v200);
              v36 = v204;
              v39 = v41;
              v38 = *&v204[8 * v37];
              v59 = *v38 > v41++;
            }

            while (v59);
            v12 = v195;
          }

          else
          {
            v40 = v37 + 1;
          }

          v37 = v40;
        }

        while (v40 != v199);
      }

      LODWORD(v43) = v178;
      i = v202;
      v186 = a2[53];
      if (!v178)
      {
        v197 = 0;
        v46 = v198;
        v31 = v200;
        goto LABEL_96;
      }

      v197 = 0;
      v188 = 0;
      v44 = 0;
      v180 = a2[53];
      v45 = a5;
      v46 = v198;
      v31 = v200;
      do
      {
        v184 = v44;
        do
        {
          if (!*(v31 + 8))
          {
            v36 = v204;
LABEL_95:
            LODWORD(v43) = v184;
            goto LABEL_96;
          }

          v47 = sub_2366C6764(v31);
          v48 = v12[v203];
          if (v48 >= v45)
          {
            v36 = v204;
            i = v202;
            v31 = v200;
            goto LABEL_95;
          }

          v49 = (v47 >> a2[6]) - 1;
          v50 = a2[5] & v47;
          v51 = *(v11 + 8 * v49);
          v52 = *(v51 + 4 * v50);
          v53 = v52 + v48;
          v54 = v201;
          i = v202;
          v31 = v200;
        }

        while (v52 + v48 > v45);
        v55 = *(v196 + 8 * v49);
        v189 = v50 + 1;
        v36 = v204;
        if (*(v55 + 4 * (v50 + 1)) + v188 - *(v55 + 4 * v50) >= v174)
        {
          goto LABEL_95;
        }

        v187 = a2[5] & v47;
        v56 = *(v16[v49] + 8 * v50 + 4 * v34);
        v57 = v56 - v52 + v180;
        v58 = v56 + v53 - v12[v34];
        if (v58 < 0)
        {
          v58 = -v58;
        }

        v180 += v56 - v52;
        if (v57 < v186 || (v57 == v186 ? (v59 = v58 < v179) : (v59 = 0), v59))
        {
          v43 = v184;
          v197 = v184 + 1;
          v186 = v57;
          v179 = v58;
          goto LABEL_47;
        }

        v60 = v184 - v197 + 1;
        if (v60 > 3 * v169)
        {
          goto LABEL_95;
        }

        if (v60 <= v169)
        {
          v43 = v184;
        }

        else
        {
          v43 = v184;
          if (v186 * 1.1 < v57)
          {
            break;
          }
        }

LABEL_47:
        v185 = v47 >> a2[6];
        *(*(v13 + 8 * v49) + 4 * v187) = v203;
        v175 = v43 + 1;
        v177[v43 + 1] = v47;
        v61 = *&v204[8 * v49];
        v62 = v187 - *(v61 + 16);
        v63 = *(v61 + 32);
        v64 = *(v63 + 4 * v62);
        if (v64 != -1)
        {
          v65 = *(v61 + 24);
          v66 = *v61 - 1;
          *v61 = v66;
          v67 = *(v65 + 4 * v66);
          *(v65 + 4 * v64) = v67;
          *(v63 + 4 * (v67 - *(v61 + 16))) = *(v63 + 4 * v62);
          *(v63 + 4 * v62) = -1;
        }

        v12[v203] += *(v51 + 4 * v187);
        v12[2] -= *(v51 + 4 * v187);
        v68 = *(v55 + 4 * v187);
        if (v68 >= *(v55 + 4 * v189))
        {
          v31 = v200;
        }

        else
        {
          v31 = v200;
          v190 = v49;
          do
          {
            v69 = *(*(v46 + 8 * v49) + 4 * v68);
            v192 = v68;
            if (v69 >= *(v10 + 4 * v49))
            {
              v70 = a2[5] & v69;
              v71 = (v69 >> a2[6]) - 1;
              v72 = (v69 >> a2[6]) - 1;
            }

            else
            {
              v70 = *(*(v46 + 8 * v49) + 4 * v68);
              v69 |= v185 << a2[6];
              v71 = v49;
              v72 = v49;
            }

            v73 = *(v13 + 8 * v71);
            v74 = v70;
            v75 = *(v73 + 4 * v70);
            if (v75 == 2)
            {
              v76 = v16[v71] + 8 * v70;
              *(v76 + 4 * v203) += *(*(v11 + 8 * v49) + 4 * v187);
            }

            else if (v75 == v34)
            {
              v54[v188] = v69;
              v77 = *&v36[8 * v71];
              v78 = v70 - *(v77 + 4);
              v79 = v77[4];
              if (*(v79 + 4 * v78) == -1)
              {
                v80 = *v77;
                *(v79 + 4 * v78) = *v77;
                v81 = v77[3];
                *v77 = v80 + 1;
                *(v81 + 4 * v80) = v70;
              }

              *(v73 + 4 * v70) = 2;
              v82 = *(v196 + 8 * v71);
              v83 = *(v82 + 4 * v70);
              v191 = v70 + 1;
              v84 = *(v82 + 4 * (v70 + 1));
              if (v83 >= v84)
              {
                v86 = 0;
                v85 = 0;
              }

              else
              {
                v85 = 0;
                v86 = 0;
                v87 = *(v10 + 4 * v71);
                v88 = v84 - v83;
                v89 = (*(v46 + 8 * v71) + 4 * v83);
                do
                {
                  v91 = *v89++;
                  v90 = v91;
                  v92 = (v91 >> a2[6]) - 1;
                  v93 = v91 >= v87;
                  if (v91 < v87)
                  {
                    v94 = -1;
                  }

                  else
                  {
                    v94 = a2[5];
                  }

                  v95 = v94 & v90;
                  if (v93)
                  {
                    v96 = v92;
                  }

                  else
                  {
                    v96 = v72;
                  }

                  v97 = *(*(v13 + 8 * v96) + 4 * v95);
                  v98 = *(*(v11 + 8 * v96) + 4 * v95);
                  if (v97 == 1)
                  {
                    v85 += v98;
                  }

                  else if (!v97)
                  {
                    v86 += v98;
                  }

                  --v88;
                }

                while (v88);
              }

              v193 = v72;
              ++v188;
              v99 = (v16[v71] + 8 * v74);
              v100 = *(v11 + 8 * v71);
              *v99 = v86;
              v99[1] = v85;
              v12[v34] -= *(v100 + 4 * v74);
              v12[2] += *(v100 + 4 * v74);
              v101 = v74;
              sub_2366C612C((*(v100 + 4 * v74) - v99[v34]), v69, v200);
              v102 = *(v196 + 8 * v71);
              v103 = *(v102 + 4 * v101);
              v104 = v191;
              if (v103 >= *(v102 + 4 * v191))
              {
                v46 = v198;
                v36 = v204;
                v54 = v201;
                i = v202;
                v31 = v200;
                v49 = v190;
              }

              else
              {
                v105 = v101;
                v106 = v71;
                v194 = v193 + 1;
                v36 = v204;
                v54 = v201;
                i = v202;
                v31 = v200;
                v49 = v190;
                do
                {
                  v107 = *(*(v198 + 8 * v106) + 4 * v103);
                  if (v107 >= *(v10 + 4 * v106))
                  {
                    v108 = a2[5] & v107;
                    v109 = (v107 >> a2[6]) - 1;
                  }

                  else
                  {
                    v108 = *(*(v198 + 8 * v106) + 4 * v103);
                    v107 |= v194 << a2[6];
                    v109 = v106;
                  }

                  if (*(*(v13 + 8 * v109) + 4 * v108) == 2)
                  {
                    v110 = v16[v109] + 8 * v108;
                    v111 = *(v110 + 4 * v34) - *(*(v11 + 8 * v106) + 4 * v105);
                    *(v110 + 4 * v34) = v111;
                    if (*(*(v31 + 32) + 8 * (v107 - *(v31 + 24))) != -1)
                    {
                      sub_2366CE6C4((*(*(v11 + 8 * v109) + 4 * v108) - v111), v107, v31);
                      v104 = v191;
                      v105 = v101;
                      v106 = v71;
                      v49 = v190;
                      v31 = v200;
                      v54 = v201;
                      i = v202;
                      v36 = v204;
                      v102 = *(v196 + 8 * v71);
                    }
                  }

                  ++v103;
                }

                while (v103 < *(v102 + 4 * v104));
                v46 = v198;
              }

              v45 = a5;
            }

            v68 = v192 + 1;
          }

          while (v192 + 1 < *(*(v196 + 8 * v49) + 4 * v189));
        }

        i[(v184 + 2)] = v188;
        v44 = v175;
        LODWORD(v43) = v178;
      }

      while (v175 != v178);
LABEL_96:
      if (v43 <= v197)
      {
        v17 = v177;
      }

      else
      {
        v112 = v43;
        v17 = v177;
        do
        {
          v113 = v177[v112];
          v114 = a2[5] & v113;
          v115 = (v113 >> a2[6]) - 1;
          v116 = *(v11 + 8 * v115);
          v12[2] += *(v116 + 4 * v114);
          v12[v203] -= *(v116 + 4 * v114);
          *(*(v13 + 8 * v115) + 4 * v114) = 2;
          v117 = *&v36[8 * v115];
          v118 = v114 - *(v117 + 4);
          v119 = v117[4];
          if (*(v119 + 4 * v118) == -1)
          {
            v120 = *v117;
            *(v119 + 4 * v118) = *v117;
            v121 = v117[3];
            *v117 = v120 + 1;
            *(v121 + 4 * v120) = v114;
          }

          v122 = *(v196 + 8 * v115);
          v123 = *(v46 + 8 * v115);
          v124 = *(v122 + 4 * v114);
          v125 = v114 + 1;
          v126 = *(v122 + 4 * (v114 + 1));
          if (v124 >= v126)
          {
            v128 = 0;
            v127 = 0;
          }

          else
          {
            v127 = 0;
            v128 = 0;
            v129 = *(v10 + 4 * v115);
            v130 = v126 - v124;
            v131 = (v123 + 4 * v124);
            do
            {
              v133 = *v131++;
              v132 = v133;
              v134 = (v133 >> a2[6]) - 1;
              v135 = v133 >= v129;
              if (v133 < v129)
              {
                v136 = -1;
              }

              else
              {
                v136 = a2[5];
              }

              v137 = v136 & v132;
              if (v135)
              {
                v138 = v134;
              }

              else
              {
                v138 = v115;
              }

              v139 = *(*(v13 + 8 * v138) + 4 * v137);
              v140 = *(*(v11 + 8 * v138) + 4 * v137);
              if (v139 == 1)
              {
                v127 += v140;
              }

              else if (!v139)
              {
                v128 += v140;
              }

              --v130;
            }

            while (v130);
          }

          v141 = (v16[v115] + 8 * v114);
          *v141 = v128;
          v141[1] = v127;
          v142 = *(v122 + 4 * v114);
          v143 = *(v122 + 4 * v125);
          for (i = v202; v142 < v143; ++v142)
          {
            v144 = *(v123 + 4 * v142);
            v145 = v115;
            if (v144 >= *(v10 + 4 * v115))
            {
              v146 = v144 >> a2[6];
              v144 &= a2[5];
              v145 = v146 - 1;
            }

            if (*(*(v13 + 8 * v145) + 4 * v144) == 2)
            {
              v147 = v16[v145] + 8 * v144;
              *(v147 + 4 * v203) -= *(v116 + 4 * v114);
              v143 = *(v122 + 4 * v125);
            }
          }

          v148 = v202[v112];
          if (v148 < v202[(v112 + 1)])
          {
            do
            {
              v149 = v201[v148];
              v150 = a2[5] & v149;
              v151 = (v149 >> a2[6]) - 1;
              *(*(v13 + 8 * v151) + 4 * v150) = v34;
              v152 = *(v11 + 8 * v151);
              v12[v34] += *(v152 + 4 * v150);
              v12[2] -= *(v152 + 4 * v150);
              v153 = *&v36[8 * v151];
              v154 = v150 - *(v153 + 16);
              v155 = *(v153 + 32);
              v156 = *(v155 + 4 * v154);
              if (v156 != -1)
              {
                v157 = *(v153 + 24);
                v158 = *v153 - 1;
                *v153 = v158;
                v159 = *(v157 + 4 * v158);
                *(v157 + 4 * v156) = v159;
                *(v155 + 4 * (v159 - *(v153 + 16))) = *(v155 + 4 * v154);
                *(v155 + 4 * v154) = -1;
              }

              v160 = *(v196 + 8 * v151);
              v161 = *(v160 + 4 * v150);
              v162 = *(v160 + 4 * (v150 + 1));
              if (v161 < v162)
              {
                v163 = *(v46 + 8 * v151);
                do
                {
                  v164 = *(v163 + 4 * v161);
                  v165 = v151;
                  if (v164 >= *(v10 + 4 * v151))
                  {
                    v166 = v164 >> a2[6];
                    v164 &= a2[5];
                    v165 = v166 - 1;
                  }

                  if (*(*(v13 + 8 * v165) + 4 * v164) == 2)
                  {
                    v167 = v16[v165] + 8 * v164;
                    *(v167 + 4 * v34) += *(v152 + 4 * v150);
                    v162 = *(v160 + 4 * (v150 + 1));
                  }

                  ++v161;
                }

                while (v161 < v162);
              }

              ++v148;
            }

            while (v148 < v202[(v112 + 1)]);
          }

          --v112;
        }

        while (v197 < v112);
        LODWORD(v43) = v197;
        v31 = v200;
      }

      v33 = 0;
      a2[53] = v186;
      v26 = v43 + v183;
      v32 = 1;
    }

    while ((v182 & 1) != 0);
LABEL_8:
    v22 = v171;
    v27 = sub_2366BE66C(v26, *(v171 + 400));
    if (!v27)
    {
      v24 = v172;
      break;
    }

    v24 = v27 + v172;
    v23 = v173 + 1;
  }

  while (v173 + 1 != a3);
LABEL_139:
  if (!sub_2366DE2A4(*(v22 + 400), v15))
  {
    free(v17);
    free(v201);
    free(v202);
    sub_2366C6FA8(v200);
  }

  sub_2366DE830(v16, *(v22 + 400));
  return v24;
}

uint64_t sub_2366CE6C4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(v3 + 8 * (a2 - *(a3 + 24)));
  v5 = *(a3 + 16);
  v6 = (v5 + 8 * v4);
  if (*v6 >= result)
  {
    *v6 = result;
    v6[1] = a2;
    *(v3 + 8 * (a2 - *(a3 + 24))) = v4;
    v12 = (2 * v4) | 1;
    v13 = *(a3 + 8);
    if (v12 < v13)
    {
      v14 = 2 * v4;
      do
      {
        v15 = v14 + 2;
        if (v15 < v13 && (v16 = (v5 + 8 * v15), *v16 >= result) && *(v5 + 8 * v12) <= *v16)
        {
          v12 = v15;
        }

        else
        {
          v16 = (v5 + 8 * v12);
          if (*v16 < result)
          {
            return result;
          }
        }

        v17 = v12;
        *v6 = *v16;
        v18 = *(a3 + 32);
        v5 = *(a3 + 16);
        v6 = (v5 + 8 * v17);
        *(v18 + 8 * (v6[1] - *(a3 + 24))) = v4;
        *v6 = result;
        v6[1] = a2;
        *(v18 + 8 * (a2 - *(a3 + 24))) = v17;
        v14 = 2 * v17;
        v12 = (2 * v17) | 1;
        v13 = *(a3 + 8);
        v4 = v17;
      }

      while (v12 < v13);
    }
  }

  else
  {
    if (v4)
    {
      do
      {
        v7 = v4 - 1;
        v8 = (v4 - 1) >> 1;
        v9 = (v5 + 8 * v8);
        if (*v9 > result)
        {
          break;
        }

        v10 = v4;
        v4 = (v4 - 1) >> 1;
        *(v5 + 8 * v10) = *v9;
        v3 = *(a3 + 32);
        v5 = *(a3 + 16);
        *(v3 + 8 * (*(v5 + 8 * v8 + 4) - *(a3 + 24))) = v10;
      }

      while (v7 > 1);
    }

    v11 = (v5 + 8 * v4);
    *v11 = result;
    v11[1] = a2;
    *(v3 + 8 * (a2 - *(a3 + 24))) = v4;
  }

  return result;
}

void *sub_2366CE81C(uint64_t a1)
{
  v2 = sub_2366DE2E4(a1);
  v4 = sub_2366DE2A4(a1, v3);
  v5 = sub_2366DE78C(0x18uLL, a1);
  v6 = v5;
  if (!v4)
  {
    *v5 = a1;
    v5[2] = malloc_type_malloc(8 * v2, 0x80040B8603338uLL);
  }

  sub_2366DE30C(a1);
  *(v6[2] + 8 * v4) = malloc_type_malloc(32 * v2, 0x1020040A5B76CDFuLL);
  if (v2)
  {
    v7 = 0;
    v8 = v4;
    v9 = v2;
    do
    {
      v10 = *(v6[2] + 8 * v4);
      if (v8)
      {
        v11 = (v10 + v7);
        *v11 = 0;
        v11[1] = v2;
        v11[2] = v2;
        v11[3] = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
      }

      else
      {
        v12 = (v10 + 32 * v4);
        *v12 = 0u;
        v12[1] = 0u;
      }

      --v8;
      v7 += 32;
      --v9;
    }

    while (v9);
  }

  return v6;
}

uint64_t sub_2366CE93C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int *a5, unint64_t *a6, uint64_t a7, unsigned int a8, int a9)
{
  v14 = a1;
  v110 = *MEMORY[0x277D85DE8];
  v93 = sub_2366DE2A4(*(a1 + 400), a2);
  v16 = *(a2 + 128);
  v17 = v16[1];
  if (*v16 <= v17)
  {
    if (*v16 < v17)
    {
      v90 = 0;
      goto LABEL_7;
    }

    v18 = *(a2 + 112);
  }

  else
  {
    LOBYTE(v18) = 1;
  }

  v90 = v18;
LABEL_7:
  v19 = *v16;
  v109 = v16[2];
  v108 = v19;
  v85 = v16;
  if (*(v14 + 504))
  {
    v20 = 0;
    LODWORD(v21) = 0;
    v95 = 0;
    v86 = vdupq_n_s64(0x80uLL);
    v88 = a3;
    v89 = v14;
    v99 = a6;
    v87 = vdupq_n_s64(2uLL);
    do
    {
      v94 = v20;
      v96 = v21;
      v22 = (v21 + v90) & 1;
      v23 = sub_2366DE2A4(*(v14 + 400), v15);
      v105 = sub_2366DE2E4(*(v14 + 400));
      v102 = *(*(a2 + 48) + 4 * v23);
      v24 = *(a2 + 72);
      v104 = *(*(a2 + 64) + 8 * v23);
      v101 = *(*(a2 + 80) + 8 * v23);
      v103 = *(a2 + 136);
      v25 = v22 ^ 1;
      v26 = a6;
      v28 = *a3;
      v27 = a3[1];
      sub_2366C60B0(v26);
      if (*v28)
      {
        v30 = 0;
        v31 = 1;
        do
        {
          v32 = *(*(v28 + 24) + 4 * v30);
          sub_2366C612C((*(*(v24 + 8 * v23) + 4 * v32) - *(v27 + 4 * v25 + 8 * v32)), v32, v99);
          v30 = v31;
        }

        while (*v28 > v31++);
      }

      v97 = 0;
      v106 = v27 + 4 * v25;
      while (*(v99 + 8))
      {
        v34 = sub_2366C6764(v99);
        v35 = *(*(v24 + 8 * v23) + 4 * v34);
        v36 = *(v106 + 8 * v34);
        if (v35 < v36)
        {
          break;
        }

        v37 = (&v108 | (4 * v22));
        v38 = *v37;
        if (v35 == v36 && v38 >= *(&v108 | (4 * (v22 ^ 1))))
        {
          break;
        }

        v39 = v38 + v35;
        if (v39 <= a9)
        {
          *v37 = v39;
          v109 -= v35;
          *(*(v103 + 8 * v23) + 4 * v34) = v22;
          v98 = v34;
          v40 = v34 - *(v28 + 16);
          v41 = *(v28 + 32);
          v42 = *(v41 + 4 * v40);
          if (v42 != -1)
          {
            v43 = *(v28 + 24);
            v44 = *v28 - 1;
            *v28 = v44;
            v45 = *(v43 + 4 * v44);
            *(v43 + 4 * v42) = v45;
            *(v41 + 4 * (v45 - *(v28 + 16))) = *(v41 + 4 * v40);
            *(v41 + 4 * v40) = -1;
          }

          ++v97;
          v46 = *(v104 + 4 * v34);
          v100 = v34 + 1;
          if (v46 < *(v104 + 4 * (v34 + 1)))
          {
            do
            {
              v47 = *(v101 + 4 * v46);
              v48 = v23;
              if (v47 >= v102)
              {
                v49 = v47 >> *(a2 + 24);
                v47 &= *(a2 + 20);
                v48 = v49 - 1;
              }

              v50 = v48;
              if (*(*(v103 + 8 * v48) + 4 * v47) == 2)
              {
                v51 = *(a4 + 8 * v48) + 8 * v47;
                *(v51 + 4 * v22) += *(*(v24 + 8 * v23) + 4 * v98);
              }

              if (v50 == v23)
              {
                sub_2366CF408(v22, v47, v23, v99, v28, a4, &v108, a2);
              }

              else
              {
                v52 = *(*(a5 + 2) + 8 * sub_2366DE2A4(*a5, v29)) + 32 * v50;
                v53 = *(v52 + 8);
                if (*v52 >= v53)
                {
                  if (v53)
                  {
                    *(v52 + 8) = 2 * v53;
                    v54 = malloc_type_realloc(*(v52 + 24), 8 * v53, 0x100004052888210uLL);
                  }

                  else
                  {
                    *(v52 + 8) = v86;
                    v54 = malloc_type_malloc(0x200uLL, 0x100004052888210uLL);
                  }

                  *(v52 + 24) = v54;
                }

                else
                {
                  v54 = *(v52 + 24);
                }

                v55 = (*v52)++;
                v54[v55] = v47;
              }

              ++v46;
            }

            while (v46 < *(v104 + 4 * v100));
          }
        }
      }

      v56 = sub_2366DE2A4(*a5, v29);
      v57 = sub_2366DE2E4(*a5);
      sub_2366DE30C(*a5);
      v14 = v89;
      if (!v56 && v57 != 1)
      {
        v58 = 0;
        v59 = 32;
        do
        {
          v60 = v58++;
          if (v58 < v57)
          {
            v61 = v59;
            v62 = v58;
            do
            {
              v63 = *(a5 + 2);
              v64 = (*(v63 + 8 * v62) + 32 * v60);
              v65 = *v64;
              v107 = v64[1];
              v66 = (*(v63 + 8 * v60) + v61);
              v67 = v66[1];
              *v64 = *v66;
              v64[1] = v67;
              v68 = (*(*(a5 + 2) + 8 * v60) + v61);
              *v68 = v65;
              v68[1] = v107;
              ++v62;
              v61 += 32;
            }

            while (v57 != v62);
          }

          v59 += 32;
        }

        while (v58 != v57 - 1);
      }

      sub_2366DE30C(*a5);
      v70 = v105;
      if (v105 >= 2)
      {
        for (i = 1; i != v105; ++i)
        {
          v72 = (*(*(a5 + 2) + 8 * sub_2366DE2A4(*a5, v69)) + 32 * ((i + v23) % v70));
          if (*v72)
          {
            v73 = 0;
            do
            {
              sub_2366CF408(v22, *(*(v72 + 3) + 4 * v73++), v23, 0, v28, a4, &v108, a2);
            }

            while (v73 < *v72);
          }

          v70 = v105;
        }
      }

      v74 = sub_2366DE2A4(*a5, v69);
      v75 = sub_2366DE2E4(*a5);
      a6 = v99;
      a3 = v88;
      if (v75)
      {
        v76 = (v75 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v77 = vdupq_n_s64(v75 - 1);
        v78 = (*(*(a5 + 2) + 8 * v74) + 32);
        v79 = xmmword_23681F920;
        do
        {
          v80 = vmovn_s64(vcgeq_u64(v77, v79));
          if (v80.i8[0])
          {
            *(v78 - 4) = 0;
          }

          if (v80.i8[4])
          {
            *v78 = 0;
          }

          v79 = vaddq_s64(v79, v87);
          v78 += 8;
          v76 -= 2;
        }

        while (v76);
      }

      v81 = sub_2366BE66C(v97, *(v89 + 400));
      if (!v93)
      {
        ++*v89;
      }

      sub_2366CF080(v89, a2, v88, a7, a8);
      if (v81)
      {
        v20 = 0;
        v95 += v81;
        v82 = v96;
      }

      else
      {
        v82 = v96;
        if (v94 == 1)
        {
          break;
        }

        v20 = 1;
      }

      v21 = (v82 + 1);
    }

    while (*(v89 + 504) > v21);
  }

  else
  {
    v95 = 0;
  }

  sub_2366CF26C(v93, v85, &v108, *(v14 + 400));
  v83 = *MEMORY[0x277D85DE8];
  return v95;
}

void sub_2366CEFCC(unsigned int *a1, uint64_t a2)
{
  v3 = sub_2366DE2A4(*a1, a2);
  v4 = sub_2366DE2E4(*a1);
  v5 = *a1;
  if (v4)
  {
    v6 = v4;
    v7 = 24;
    v8 = v3;
    do
    {
      if (v8)
      {
        free(*(*(*(a1 + 2) + 8 * v3) + v7));
      }

      --v8;
      v7 += 32;
      --v6;
    }

    while (v6);
  }

  free(*(*(a1 + 2) + 8 * v3));
  sub_2366DE30C(*a1);
  if (!v3)
  {
    free(*(a1 + 2));
  }

  sub_2366DE830(a1, v5);
}

uint64_t sub_2366CF080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  result = sub_2366DE2A4(*(a1 + 400), a2);
  v10 = *(*(a2 + 48) + 4 * result);
  v11 = *(a2 + 72);
  v12 = *(*(a2 + 64) + 8 * result);
  v13 = *(*(a2 + 80) + 8 * result);
  v14 = *(a3 + 8);
  v15 = **a3;
  if (a4 && 7 * v15 >= a5)
  {
    if (a5)
    {
      v38 = 0;
      v39 = a5;
      v40 = *(a2 + 136);
      v41 = *(v40 + 8 * result);
      do
      {
        v42 = *(a4 + 4 * v38);
        if (*(v41 + 4 * v42) == 2)
        {
          v43 = *(v12 + 4 * v42);
          v44 = *(v12 + 4 * (v42 + 1));
          if (v43 >= v44)
          {
            v46 = 0;
            v45 = 0;
          }

          else
          {
            v45 = 0;
            v46 = 0;
            v47 = v44 - v43;
            v48 = (v13 + 4 * v43);
            do
            {
              v50 = *v48++;
              v49 = v50;
              v51 = (v50 >> *(a2 + 24)) - 1;
              v52 = v50 >= v10;
              if (v50 < v10)
              {
                v53 = -1;
              }

              else
              {
                v53 = *(a2 + 20);
              }

              v54 = v53 & v49;
              if (v52)
              {
                v55 = v51;
              }

              else
              {
                v55 = result;
              }

              v56 = *(*(v40 + 8 * v55) + 4 * v54);
              v57 = *(*(v11 + 8 * v55) + 4 * v54);
              if (v56 == 1)
              {
                v45 += v57;
              }

              else if (!v56)
              {
                v46 += v57;
              }

              --v47;
            }

            while (v47);
          }

          v58 = (v14 + 8 * v42);
          *v58 = v46;
          v58[1] = v45;
        }

        ++v38;
      }

      while (v38 != v39);
    }
  }

  else if (v15)
  {
    v16 = 0;
    v17 = *(*a3 + 24);
    do
    {
      v18 = *(v17 + 4 * v16);
      v19 = *(v12 + 4 * v18);
      v20 = *(v12 + 4 * (v18 + 1));
      if (v19 < v20)
      {
        v21 = (v13 + 4 * v19);
        v22 = v20 - v19;
        v23 = v22;
        v24 = v21;
        while (1)
        {
          v25 = *v24++;
          if (v25 >= v10)
          {
            break;
          }

          if (!--v23)
          {
            goto LABEL_23;
          }
        }

        v26 = 0;
        v27 = 0;
        v28 = (v14 + 8 * v18);
        do
        {
          v30 = *v21++;
          v29 = v30;
          v31 = (v30 >> *(a2 + 24)) - 1;
          v32 = v30 >= v10;
          if (v30 < v10)
          {
            v33 = -1;
          }

          else
          {
            v33 = *(a2 + 20);
          }

          v34 = v33 & v29;
          if (v32)
          {
            v35 = v31;
          }

          else
          {
            v35 = result;
          }

          v36 = *(*(*(a2 + 136) + 8 * v35) + 4 * v34);
          v37 = *(*(v11 + 8 * v35) + 4 * v34);
          if (v36 == 1)
          {
            v26 += v37;
          }

          else if (!v36)
          {
            v27 += v37;
          }

          --v22;
        }

        while (v22);
        *v28 = v27;
        v28[1] = v26;
      }

LABEL_23:
      ++v16;
    }

    while (v15 > v16);
  }

  return result;
}

uint64_t sub_2366CF26C(int a1, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a3 + 1);
  *a3 -= *a2;
  *(a3 + 1) = v8 - a2[1];
  *(a3 + 2) -= a2[2];
  v9 = sub_2366DE2A4(a4, a2);
  v10 = sub_2366DE2E4(a4);
  sub_2366D0AD8(v9, v10, 3uLL);
  sub_2366D0AF0(v9, v10, 3uLL);
  v11 = sub_2366DE584(8 * v10, a4);
  v11[v9] = a3;
  sub_2366DE30C(a4);
  if (!v9 && v10 >= 2)
  {
    v12 = *v11;
    for (i = 1; i != v10; ++i)
    {
      v14 = 0;
      v15 = v11[i];
      do
      {
        *(v12 + v14) += *(v15 + v14);
        v14 += 4;
      }

      while (v14 != 12);
    }

    for (j = 1; j != v10; ++j)
    {
      v17 = v11[j];
      v18 = **v11;
      *(v17 + 2) = *(*v11 + 2);
      *v17 = v18;
    }
  }

  sub_2366DE30C(a4);
  v19 = *(a3 + 1);
  *a3 += *a2;
  *(a3 + 1) = v19 + a2[1];
  *(a3 + 2) += a2[2];
  sub_2366DE30C(a4);
  if (!a1)
  {
    *a2 = *a3;
    a2[1] = *(a3 + 1);
    a2[2] = *(a3 + 2);
  }

  return sub_2366DE30C(a4);
}

uint64_t sub_2366CF408(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 136);
  v10 = result ^ 1;
  v11 = *(v9 + 8 * a3);
  if (*(v11 + 4 * a2) == v10)
  {
    v13 = *(*(a8 + 48) + 4 * a3);
    v14 = a3;
    v15 = *(a8 + 72);
    v16 = *(*(a8 + 80) + 8 * a3);
    v17 = a2;
    v18 = *(*(a8 + 64) + 8 * a3);
    v19 = (*(a6 + 8 * a3) + 8 * a2);
    v20 = *(v18 + 4 * a2);
    v21 = a2 + 1;
    v22 = *(v18 + 4 * (a2 + 1));
    if (v20 >= v22)
    {
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = v22 - v20;
      v26 = (v16 + 4 * v20);
      do
      {
        v28 = *v26++;
        v27 = v28;
        v29 = (v28 >> *(a8 + 24)) - 1;
        v30 = v28 >= v13;
        if (v28 < v13)
        {
          v31 = -1;
        }

        else
        {
          v31 = *(a8 + 20);
        }

        v32 = v31 & v27;
        if (v30)
        {
          v33 = v29;
        }

        else
        {
          v33 = a3;
        }

        v34 = *(*(v9 + 8 * v33) + 4 * v32);
        result = *(v15 + 8 * v33);
        v35 = *(result + 4 * v32);
        if (v34 == 1)
        {
          v23 += v35;
        }

        else if (!v34)
        {
          v24 += v35;
        }

        --v25;
      }

      while (v25);
    }

    *v19 = v24;
    v19[1] = v23;
    v36 = *(v18 + 4 * a2);
    if (v36 < *(v18 + 4 * v21))
    {
      v56 = a2;
      v62 = a4;
      v61 = v13;
      v60 = v18;
      v59 = a2 + 1;
      do
      {
        v37 = *(v16 + 4 * v36);
        v38 = v14;
        v39 = a3;
        if (v37 >= v13)
        {
          v40 = v37 >> *(a8 + 24);
          v37 &= *(a8 + 20);
          v38 = v40 - 1;
          v39 = v40 - 1;
        }

        v41 = *(v9 + 8 * v38);
        if (*(v41 + 4 * v37) == 2)
        {
          v42 = *(a6 + 8 * v38) + 8 * v37;
          *(v42 + 4 * v10) -= *(*(v15 + 8 * v14) + 4 * v17);
        }

        if (a4 && v39 == a3 && *(v41 + 4 * v37) == 2)
        {
          v43 = v14;
          v44 = v17;
          v45 = v15;
          v46 = *(*(v15 + 8 * v38) + 4 * v37);
          v47 = a6;
          v48 = v10;
          v49 = (v46 - *(*(a6 + 8 * v38) + 8 * v37 + 4 * v10));
          if (*(*(a4 + 32) + 8 * (v37 - *(a4 + 24))) == -1)
          {
            result = sub_2366C612C(v49, v37, a4);
          }

          else
          {
            result = sub_2366CE6C4(v49, v37, a4);
          }

          a4 = v62;
          a6 = v47;
          v10 = v48;
          v17 = v44;
          v14 = v43;
          v15 = v45;
          v13 = v61;
          v18 = v60;
          v21 = v59;
        }

        ++v36;
      }

      while (v36 < *(v18 + 4 * v21));
      v11 = *(v9 + 8 * v14);
      a2 = v56;
    }

    *(v11 + 4 * v17) = 2;
    v50 = a2 - *(a5 + 4);
    v51 = a5[4];
    if (*(v51 + 4 * v50) == -1)
    {
      v52 = *a5;
      *(v51 + 4 * v50) = *a5;
      v53 = a5[3];
      *a5 = v52 + 1;
      *(v53 + 4 * v52) = a2;
    }

    if (a4)
    {
      v54 = v10;
      result = sub_2366C612C((*(*(v15 + 8 * v14) + 4 * v17) - *(*(a6 + 8 * v14) + 8 * v17 + 4 * v10)), a2, a4);
      v10 = v54;
    }

    v55 = *(v15 + 8 * v14);
    *(a7 + 4 * v10) -= *(v55 + 4 * v17);
    *(a7 + 8) += *(v55 + 4 * v17);
  }

  return result;
}

uint64_t sub_2366CF6D0(uint64_t a1, uint64_t a2, unint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v186 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v148 = sub_2366DE2A4(*(a1 + 400), a2);
  v15 = *(a2 + 128);
  v16 = v15[1];
  if (*v15 <= v16)
  {
    if (*v15 < v16)
    {
      v153 = 0;
      goto LABEL_7;
    }

    v17 = *(a2 + 112);
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  v153 = v17;
LABEL_7:
  v174 = a2;
  v18 = *v15;
  v185 = v15[2];
  v184 = v18;
  v147 = v15;
  if ((*(v13 + 504) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = 0;
    v20 = 0;
    v152 = 0;
    v162 = v13;
    do
    {
      v161 = v20;
      v164 = v19;
      v180 = v19 + v153;
      v176 = (v19 + v153) & 1;
      v21 = sub_2366DE2A4(*(v13 + 400), v14);
      v178 = sub_2366DE2E4(*(v13 + 400));
      v22 = *(v174[6] + 4 * v21);
      v23 = v174[9];
      v24 = *(v174[8] + 8 * v21);
      v25 = *(v174[10] + 8 * v21);
      v26 = *(v23 + 8 * v21);
      v27 = v174[17];
      v28 = *(v27 + 8 * v21);
      v29 = *a3;
      v182 = a3[1];
      LODWORD(v11) = *(v13 + 512);
      v30 = v184 - HIDWORD(v184);
      if (v184 - HIDWORD(v184) < 0)
      {
        v30 = HIDWORD(v184) - v184;
      }

      v157 = v30;
      *(a5 + 4) = 0;
      sub_2366C60B0(a7);
      v31 = v29;
      v32 = *v29;
      v183 = v29;
      if (*v29)
      {
        v33 = 0;
        v34 = 1;
        v36 = a5;
        v35 = v174;
        v38 = a6;
        v37 = a7;
        do
        {
          v14 = *(v31[3] + 4 * v33);
          v39 = *(a8 + 4 * v14);
          if (v39 == v176 || v39 == -1)
          {
            sub_2366C612C((*(v26 + 4 * v14) - *(&v182[v14] + (v176 ^ 1u))), v14, v37);
            v31 = v29;
            v36 = a5;
            v35 = v174;
            v38 = a6;
            v37 = a7;
            v32 = *v29;
          }

          v33 = v34;
          v53 = v32 > v34++;
        }

        while (v53);
      }

      else
      {
        v36 = a5;
        v35 = v174;
        v38 = a6;
        v37 = a7;
      }

      v13 = v162;
      v41 = v176 ^ 1u;
      if (!v22)
      {
        goto LABEL_141;
      }

      v42 = 0;
      v170 = 0;
      v167 = 0;
      v43 = 0;
      v151 = (v11 / sqrt(v178));
      v44 = v182 + 4 * (v176 ^ 1u);
      v169 = v180 & 1;
      v179 = v182 + 4 * v169;
      v155 = v35[53];
      v158 = v155;
      while (1)
      {
        v165 = v42;
        v159 = v43;
        do
        {
          v45 = (&v184 | (4 * v169));
          v181 = (&v184 | (4 * v41));
          v177 = v45;
          if (!*(v37 + 8))
          {
            goto LABEL_85;
          }

          v46 = sub_2366C6764(v37);
          v45 = (&v184 | (4 * v169));
          v47 = *v177;
          if (*v177 >= a11)
          {
            v36 = a5;
            v35 = v174;
            v38 = a6;
            v31 = v183;
LABEL_85:
            v93 = v165;
            goto LABEL_86;
          }

          v48 = *(v26 + 4 * v46);
          v36 = a5;
          v35 = v174;
          v38 = a6;
          v37 = a7;
          v31 = v183;
        }

        while (v48 + v47 > a11);
        v14 = v46 + 1;
        v49 = v46;
        if (*(v24 + 4 * v14) + v167 - *(v24 + 4 * v46) >= 2 * v22 - 1)
        {
          goto LABEL_85;
        }

        v50 = *(v44 + 8 * v46);
        v51 = v50 - v48 + v158;
        v52 = v50 + v48 + v47 - *v181;
        if (v52 < 0)
        {
          v52 = *v181 - (v50 + v48 + v47);
        }

        v158 += v50 - v48;
        if (v51 < v155 || (v51 == v155 ? (v53 = v52 < v157) : (v53 = 0), v53))
        {
          v43 = v159 + 1;
          v157 = v52;
          v155 = v51;
          v170 = v159 + 1;
          goto LABEL_39;
        }

        if (v165 - v170 + 1 > v151)
        {
          break;
        }

        v43 = v159 + 1;
LABEL_39:
        *(v28 + 4 * v46) = v176;
        *(a4 + 4 * v43) = v46;
        v54 = v46 - *(v183 + 4);
        v55 = v183[4];
        v56 = *(v55 + 4 * v54);
        if (v56 != -1)
        {
          v57 = v183[3];
          v58 = *v183 - 1;
          *v183 = v58;
          v59 = *(v57 + 4 * v58);
          *(v57 + 4 * v56) = v59;
          *(v55 + 4 * (v59 - *(v183 + 4))) = *(v55 + 4 * v54);
          *(v55 + 4 * v54) = -1;
        }

        v60 = *(v26 + 4 * v46);
        *v177 = v47 + v60;
        v185 -= v60;
        v61 = *(v24 + 4 * v46);
        if (v61 < *(v24 + 4 * v14))
        {
          v150 = v43;
          v149 = v14;
          v154 = v49;
          do
          {
            v62 = *(v25 + 4 * v61);
            if (v62 < v22)
            {
              v63 = *(v28 + 4 * v62);
              if (v63 == 2)
              {
                *(v179 + 8 * v62) += *(v26 + 4 * v49);
              }

              else if (v63 == v41)
              {
                *(v38 + 4 * v167) = v62;
                v64 = v62 - *(v31 + 4);
                v65 = v31[4];
                if (*(v65 + 4 * v64) == -1)
                {
                  v66 = *v31;
                  *(v65 + 4 * v64) = *v31;
                  v67 = v31[3];
                  *v31 = v66 + 1;
                  *(v67 + 4 * v66) = v62;
                }

                *(v28 + 4 * v62) = 2;
                v68 = *(v24 + 4 * v62);
                v166 = v62;
                v163 = v62 + 1;
                v69 = *(v24 + 4 * (v62 + 1));
                if (v68 >= v69)
                {
                  v71 = 0;
                  v70 = 0;
                }

                else
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = v69 - v68;
                  v73 = (v25 + 4 * v68);
                  do
                  {
                    v75 = *v73++;
                    v74 = v75;
                    v76 = (v75 >> v35[6]) - 1;
                    v77 = v75 >= v22;
                    if (v75 < v22)
                    {
                      v78 = -1;
                    }

                    else
                    {
                      v78 = v35[5];
                    }

                    v79 = v78 & v74;
                    if (v77)
                    {
                      v80 = v76;
                    }

                    else
                    {
                      v80 = v21;
                    }

                    v81 = *(*(v27 + 8 * v80) + 4 * v79);
                    v82 = *(*(v23 + 8 * v80) + 4 * v79);
                    if (v81 == 1)
                    {
                      v70 += v82;
                    }

                    else if (!v81)
                    {
                      v71 += v82;
                    }

                    --v72;
                  }

                  while (v72);
                }

                v83 = v62;
                v84 = &v182[v62];
                *v84 = v71;
                *(v84 + 1) = v70;
                v85 = *(v26 + 4 * v62);
                *v181 -= v85;
                v185 += v85;
                v86 = *(a8 + 4 * v62);
                v160 = v61;
                if (v86 == v176 || v86 == -1)
                {
                  sub_2366C612C((v85 - *(v84 + v41)), v62, v37);
                  v83 = v166;
                  v61 = v160;
                  v49 = v154;
                  v14 = v149;
                  v43 = v150;
                  v31 = v183;
                  v36 = a5;
                  v35 = v174;
                  v38 = a6;
                  v37 = a7;
                }

                ++v167;
                v87 = *(v24 + 4 * v83);
                v88 = v163;
                if (v87 >= *(v24 + 4 * v163))
                {
                  v41 = v176 ^ 1u;
                  v45 = (&v184 | (4 * v169));
                }

                else
                {
                  v45 = (&v184 | (4 * v169));
                  do
                  {
                    v89 = *(v25 + 4 * v87);
                    if (v89 < v22 && *(v28 + 4 * v89) == 2)
                    {
                      v90 = *(v44 + 8 * v89) - *(v26 + 4 * v83);
                      *(v44 + 8 * v89) = v90;
                      v91 = *(a8 + 4 * v89);
                      v92 = v91 == v176 || v91 == -1;
                      if (v92 && *(*(v37 + 32) + 8 * (v89 - *(v37 + 24))) != -1)
                      {
                        sub_2366CE6C4((*(v26 + 4 * v89) - v90), v89, v37);
                        v88 = v163;
                        v83 = v166;
                        v61 = v160;
                        v49 = v154;
                        v45 = (&v184 | (4 * v169));
                        v31 = v183;
                        v36 = a5;
                        v35 = v174;
                        v38 = a6;
                        v37 = a7;
                      }
                    }

                    ++v87;
                  }

                  while (v87 < *(v24 + 4 * v88));
                  v41 = v176 ^ 1u;
                  v43 = v150;
                  v14 = v149;
                }
              }
            }

            ++v61;
          }

          while (v61 < *(v24 + 4 * v14));
        }

        *(v36 + 4 * (v159 + 2)) = v167;
        v42 = v43;
        if (v43 == v22)
        {
          v93 = v22;
          goto LABEL_86;
        }
      }

      v93 = v165;
LABEL_86:
      if (v93 > v170)
      {
        v94 = v93;
        v95 = v185;
        do
        {
          v96 = *(a4 + 4 * v94);
          v97 = *(v26 + 4 * v96);
          v95 += v97;
          v185 = v95;
          *v45 -= v97;
          *(v28 + 4 * v96) = 2;
          v98 = v96 - *(v31 + 4);
          v99 = v31[4];
          if (*(v99 + 4 * v98) == -1)
          {
            v100 = *v31;
            *(v99 + 4 * v98) = *v31;
            v101 = v31[3];
            *v31 = v100 + 1;
            *(v101 + 4 * v100) = v96;
          }

          v102 = &v182[v96];
          *v102 = 0;
          v103 = *(v24 + 4 * v96);
          v104 = *(v24 + 4 * (v96 + 1));
          if (v103 < v104)
          {
            do
            {
              v105 = *(v25 + 4 * v103);
              if (v105 < v22 && *(v28 + 4 * v105) == 2)
              {
                *(v179 + 8 * v105) -= *(v26 + 4 * v96);
                v104 = *(v24 + 4 * (v96 + 1));
              }

              ++v103;
            }

            while (v103 < v104);
            v103 = *(v24 + 4 * v96);
          }

          v106 = v104 - v103;
          if (v104 <= v103)
          {
            v108 = 0;
            v107 = 0;
          }

          else
          {
            v107 = 0;
            v108 = 0;
            v109 = (v25 + 4 * v103);
            do
            {
              v111 = *v109++;
              v110 = v111;
              v112 = (v111 >> v35[6]) - 1;
              v113 = v111 >= v22;
              if (v111 < v22)
              {
                v114 = -1;
              }

              else
              {
                v114 = v35[5];
              }

              v115 = v114 & v110;
              if (v113)
              {
                v116 = v112;
              }

              else
              {
                v116 = v21;
              }

              v117 = *(*(v27 + 8 * v116) + 4 * v115);
              v14 = *(v23 + 8 * v116);
              v118 = *(v14 + 4 * v115);
              if (v117 == 1)
              {
                v107 += v118;
              }

              else if (!v117)
              {
                v108 += v118;
              }

              --v106;
            }

            while (v106);
          }

          *v102 = v108;
          *(v102 + 1) = v107;
          v119 = *(v36 + 4 * v94);
          if (v119 < *(v36 + 4 * (v94 + 1)))
          {
            v120 = v31[4];
            do
            {
              v121 = *(v38 + 4 * v119);
              *(v28 + 4 * v121) = v41;
              v122 = *(v26 + 4 * v121);
              *v181 += v122;
              v95 = v185 - v122;
              v185 = v95;
              v123 = v121 - *(v31 + 4);
              v124 = *(v120 + 4 * v123);
              if (v124 != -1)
              {
                v125 = v31[3];
                v126 = *v31 - 1;
                *v31 = v126;
                v127 = *(v125 + 4 * v126);
                *(v125 + 4 * v124) = v127;
                *(v120 + 4 * (v127 - *(v31 + 4))) = *(v120 + 4 * v123);
                *(v120 + 4 * v123) = -1;
              }

              v128 = *(v24 + 4 * v121);
              v129 = *(v24 + 4 * (v121 + 1));
              if (v128 < v129)
              {
                do
                {
                  v130 = *(v25 + 4 * v128);
                  if (v130 < v22 && *(v28 + 4 * v130) == 2)
                  {
                    *(v44 + 8 * v130) += *(v26 + 4 * v121);
                    v129 = *(v24 + 4 * (v121 + 1));
                  }

                  ++v128;
                }

                while (v128 < v129);
                v128 = *(v24 + 4 * v121);
              }

              v131 = v129 - v128;
              if (v129 <= v128)
              {
                v133 = 0;
                v132 = 0;
              }

              else
              {
                v132 = 0;
                v133 = 0;
                v14 = v35[6];
                v134 = (v25 + 4 * v128);
                do
                {
                  v136 = *v134++;
                  v135 = v136;
                  v137 = (v136 >> v14) - 1;
                  v138 = v136 >= v22;
                  if (v136 < v22)
                  {
                    v139 = -1;
                  }

                  else
                  {
                    v139 = v35[5];
                  }

                  v140 = v139 & v135;
                  if (v138)
                  {
                    v141 = v137;
                  }

                  else
                  {
                    v141 = v21;
                  }

                  v142 = *(*(v27 + 8 * v141) + 4 * v140);
                  v143 = *(*(v23 + 8 * v141) + 4 * v140);
                  if (v142 == 1)
                  {
                    v132 += v143;
                  }

                  else if (!v142)
                  {
                    v133 += v143;
                  }

                  --v131;
                }

                while (v131);
              }

              v31 = v183;
              v144 = &v182[v121];
              *v144 = v133;
              *(v144 + 1) = v132;
              ++v119;
            }

            while (v119 < *(v36 + 4 * (v94 + 1)));
          }

          --v94;
          v45 = (&v184 | (4 * v169));
        }

        while (v170 < v94);
        v93 = v170;
      }

      v13 = v162;
      if (v93)
      {
        v20 = 0;
        v152 += v93;
      }

      else
      {
LABEL_141:
        if (v161 == 1)
        {
          break;
        }

        v20 = 1;
      }

      v19 = v164 + 1;
    }

    while (v164 + 1 < (2 * *(v13 + 504)));
  }

  else
  {
    v152 = 0;
  }

  sub_2366CF26C(v148, v147, &v184, *(v13 + 400));
  if (!v148)
  {
    ++*v13;
  }

  sub_2366CF080(v13, v174, a3, a9, a10);
  result = sub_2366BE66C(v152, *(v13 + 400));
  v146 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2366D0114(_DWORD *a1)
{
  v2 = MEMORY[0x277D85DF8];
  fwrite("ERROR: ", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
  fprintf(*v2, "Unknown refinement type '%d'\n", *a1);
  fflush(*v2);
  abort();
}

uint64_t sub_2366D0170(int *a1, _DWORD *a2, uint64_t a3, char *a4, _DWORD *a5, _DWORD *a6, void *a7)
{
  v13 = sub_2366E188C(2, a5, 1, 3, 0, 0);
  v38 = v13;
  if (!v13)
  {
    return 4294967294;
  }

  v14 = v13;
  sub_2366C8C94(v13[16]);
  v15 = sub_2366EBDFC(v14, *a1, 1, a2, a3, a4, 0, 0);
  v39 = v15;
  sub_2366E2894(v14);
  *(v14 + 24) = 100;
  sub_2366EB0B4(v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = *(v15 + 120);
  *a6 = *(*(v15 + 128) + 8);
  sub_2366E7408(*a1, v22, a7);
  sub_2366EC36C(&v39, v23, v24, v25, v26, v27, v28, v29);
  if ((*(v14 + 8) & 2) != 0)
  {
    sub_2366BC92C(v14);
  }

  sub_2366E2774(&v38, v30, v31, v32, v33, v34, v35, v36);
  return 1;
}

uint64_t sub_2366D0284(uint64_t a1)
{
  result = sub_2366DE038();
  if (!result)
  {
    qword_27DE48720 = a1;
    qword_27DE48728 = 0;
    pthread_mutex_init(&stru_27DE48740, 0);
    pthread_cond_init(&stru_27DE48780, 0);
    qword_27DE48738 = malloc_type_malloc(104 * a1, 0x1020040D6D45544uLL);
    v3 = sub_2366ECDF0("DLTHREAD_POOL_SCHEDULE", "llrf");
    v4 = 0;
    while (1)
    {
      result = strcmp(off_278A00340[v4], v3);
      if (!result)
      {
        break;
      }

      if (++v4 == 4)
      {
        v5 = 1;
        goto LABEL_7;
      }
    }

    v5 = v4;
LABEL_7:
    dword_27DE48730 = v5;
    if (a1)
    {
      v6 = 0;
      do
      {
        v7 = qword_27DE48738 + v6;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *v7 = 4096;
        *(v7 + 8) = 0;
        *(v7 + 32) = malloc_type_malloc(0x18000uLL, 0x1080040622C3295uLL);
        result = pthread_mutex_init((v7 + 40), 0);
        v6 += 104;
        --a1;
      }

      while (a1);
    }

    atomic_store(1u, &unk_27DE48718);
  }

    ;
  }

  return result;
}

uint64_t sub_2366D03D4()
{
  v0 = qword_27DE48720;
  do
  {
    v1 = sub_2366D0514();
    pthread_mutex_lock(&stru_27DE48740);
    if (!v1)
    {
      if (++qword_27DE48728 >= qword_27DE48720)
      {
        pthread_cond_broadcast(&stru_27DE48780);
      }

      else
      {
        pthread_cond_wait(&stru_27DE48780, &stru_27DE48740);
      }

      if (qword_27DE48728 < qword_27DE48720)
      {
        --qword_27DE48728;
      }
    }

    pthread_mutex_unlock(&stru_27DE48740);
  }

  while (qword_27DE48728 < qword_27DE48720);
  sub_2366DE30C(0);
  if (!sub_2366DE2A4(0, v2))
  {
    if (v0)
    {
      v3 = 32;
      do
      {
        v4 = (qword_27DE48738 + v3 + 8);
        free(*(qword_27DE48738 + v3));
        pthread_mutex_destroy(v4);
        v3 += 104;
        --v0;
      }

      while (v0);
    }

    free(qword_27DE48738);
    pthread_mutex_destroy(&stru_27DE48740);
    pthread_cond_destroy(&stru_27DE48780);
    atomic_store(0, &unk_27DE48718);
  }

  return sub_2366DE30C(0);
}

uint64_t sub_2366D0514()
{
  v0 = sub_2366DE038();
  v1 = qword_27DE48720;
  v2 = qword_27DE48738 + 104 * v0;
  pthread_mutex_lock((v2 + 40));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if ((dword_27DE48730 & 2) != 0)
  {
    if (v4 <= v3)
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 32);
    v5 = *(v2 + 8) + v3;
    *(v2 + 16) = v3 + 1;
    *(v6 + 24 * v3 + 16) = 1;
  }

  else
  {
    if (v4 <= v3)
    {
      goto LABEL_8;
    }

    *(v2 + 24) = v4 - 1;
    *(*(v2 + 32) + 24 * v4 - 8) = 1;
    v5 = *(v2 + 8) + v4 - 1;
  }

  if (v5 != -1)
  {
LABEL_7:
    v7 = *(v2 + 32) + 24 * (v5 - *(v2 + 8));
    v9 = *v7;
    v8 = *(v7 + 8);
    pthread_mutex_unlock((v2 + 40));
    v9(v8);
    pthread_mutex_lock((v2 + 40));
    *(*(v2 + 32) + 24 * (v5 - *(v2 + 8)) + 16) = 2;
    pthread_mutex_unlock((v2 + 40));
    return 1;
  }

LABEL_8:
  pthread_mutex_unlock((v2 + 40));
  v11 = (v0 + 1) % v1;
  while (v11 != v0)
  {
    v2 = qword_27DE48738 + 104 * v11;
    pthread_mutex_lock((v2 + 40));
    v12 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (dword_27DE48730)
    {
      if (v13 > v12)
      {
        v14 = *(v2 + 32);
        v5 = *(v2 + 8) + v12;
        *(v2 + 16) = v12 + 1;
        *(v14 + 24 * v12 + 16) = 1;
LABEL_14:
        if (v5 != -1)
        {
          goto LABEL_7;
        }
      }
    }

    else if (v13 > v12)
    {
      *(v2 + 24) = v13 - 1;
      *(*(v2 + 32) + 24 * v13 - 8) = 1;
      v5 = *(v2 + 8) + v13 - 1;
      goto LABEL_14;
    }

    pthread_mutex_unlock((v2 + 40));
    if (v11 + 1 == v1)
    {
      v11 = 0;
    }

    else
    {
      ++v11;
    }
  }

  return 0;
}

uint64_t sub_2366D0700(uint64_t a1, uint64_t a2)
{
  v4 = qword_27DE48738 + 104 * sub_2366DE038();
  pthread_mutex_lock((v4 + 40));
  v5 = *(v4 + 24);
  if (v5 == *v4)
  {
    v6 = qword_27DE48738 + 104 * sub_2366DE038();
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v6 + 32) + 16);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        if (v10 != 2)
        {
          break;
        }

        if (v7 == ++v8)
        {
          v8 = *(v6 + 24);
          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = *v6;
    *(v6 + 8) += v8;
    *(v6 + 16) = 0;
    *v6 = 2 * v11;
    v12 = malloc_type_malloc(48 * v11, 0x1080040622C3295uLL);
    v13 = *(v6 + 24) - v8;
    memcpy(v12, (*(v6 + 32) + 24 * v8), 24 * v13);
    *(v6 + 24) = v13;
    free(*(v6 + 32));
    *(v6 + 32) = v12;
    v5 = *(v4 + 24);
  }

  v14 = *(v4 + 8);
  v15 = *(v4 + 32);
  *(v4 + 24) = v5 + 1;
  v16 = (v15 + 24 * v5);
  *v16 = a1;
  v16[1] = a2;
  v16[2] = 0;
  pthread_mutex_unlock((v4 + 40));
  pthread_cond_signal(&stru_27DE48780);
  return v14 + v5;
}

uint64_t sub_2366D084C(unint64_t a1)
{
  result = sub_2366DE038();
  for (i = qword_27DE48738 + 104 * result; *(i + 8) <= a1; result = sub_2366D0514())
  {
    pthread_mutex_lock((i + 40));
    v4 = *(*(i + 32) + 24 * (a1 - *(i + 8)) + 16);
    result = pthread_mutex_unlock((i + 40));
    if (v4 == 2)
    {
      break;
    }
  }

  return result;
}

void *sub_2366D08EC(void *result, uint64_t a2, unint64_t a3)
{
  v16 = a2;
  if (a3 >= 0x40)
  {
    v9 = 1;
    while (*(&v16 + v9) == a2)
    {
      if (++v9 == 8)
      {
        return memset(result, a2, 8 * a3);
      }
    }

    v10 = (a3 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v11 = vdupq_n_s64(a3 - 1);
    v12 = xmmword_23681F920;
    v13 = result + 1;
    v14 = vdupq_n_s64(2uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v11, v12));
      if (v15.i8[0])
      {
        *(v13 - 1) = a2;
      }

      if (v15.i8[4])
      {
        *v13 = a2;
      }

      v12 = vaddq_s64(v12, v14);
      v13 += 2;
      v10 -= 2;
    }

    while (v10);
  }

  else if (a3)
  {
    v3 = (a3 + 1) & 0x7E;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_23681F920;
    v6 = result + 1;
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = a2;
      }

      if (v8.i8[4])
      {
        *v6 = a2;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2366D09F0(uint64_t a1, size_t count)
{
  if (a1)
  {
    v4 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
    v5 = v4;
    if (count)
    {
      if (v4)
      {
        sub_2366D08EC(v4, a1, count);
      }
    }

    return v5;
  }

  else
  {

    return malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL);
  }
}

uint64_t sub_2366D0A84(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a1;
  *a1 = 0;
  v3 = a2 - 1;
  if (a2 == 1)
  {
    v4 = v2;
  }

  else
  {
    v6 = a1 + 1;
    v7 = *a1;
    do
    {
      v4 = *v6;
      v7 += v2;
      *v6++ = v7;
      v2 = v4;
      --v3;
    }

    while (v3);
  }

  return a1[a2 - 1] + v4;
}

unint64_t sub_2366D0AD8(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3 % a2;
  if (a3 % a2 >= a1)
  {
    v3 = a1;
  }

  return v3 + a3 / a2 * a1;
}

uint64_t sub_2366D0AF0(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 % a2 <= a1)
  {
    return a3 / a2;
  }

  else
  {
    return a3 / a2 + 1;
  }
}

uint64_t sub_2366D0B2C(unint64_t a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  v2 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v3 = v2 | (v2 >> 4) | ((v2 | (v2 >> 4)) >> 8);
  return (v3 | (v3 >> 16) | ((v3 | (v3 >> 16)) >> 32)) + 1;
}

uint64_t sub_2366D0B60(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = a1;
  v4 = a2 - a1;
  if (a2 != a1)
  {
    v6 = *a3;
    v10[0] = *a3;
    v10[1] = HIWORD(v6);
    v10[2] = v6 >> 8;
    v7 = nrand48(v10);
    v8 = nrand48(v10);
    *a3 = *v10;
    v3 += (v7 + (v8 << 32)) % v4;
  }

  return v3;
}

int *sub_2366D0BE4(int *result, int a2, unint64_t a3)
{
  v18 = a2;
  if (a3 >= 0x40)
  {
    v10 = 1;
    while (*(&v18 + v10) == a2)
    {
      if (++v10 == 4)
      {
        return memset(result, a2, 4 * a3);
      }
    }

    v11 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = vdupq_n_s64(a3 - 1);
    v13 = xmmword_23681F910;
    v14 = xmmword_23681F920;
    v15 = result + 2;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 2) = a2;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 1) = a2;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = a2;
        v15[1] = a2;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 4;
      v11 -= 4;
    }

    while (v11);
  }

  else if (a3)
  {
    v3 = (a3 + 3) & 0x7C;
    v4 = vdupq_n_s64(a3 - 1);
    v5 = xmmword_23681F910;
    v6 = xmmword_23681F920;
    v7 = result + 2;
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 2) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 1) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[1] = a2;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

int *sub_2366D0D60(int a1, size_t count)
{
  if (a1)
  {
    v4 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
    v5 = v4;
    if (count)
    {
      if (v4)
      {
        sub_2366D0BE4(v4, a1, count);
      }
    }

    return v5;
  }

  else
  {

    return malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  }
}

double *sub_2366D0DF4(double *result, unint64_t a2, double a3)
{
  v16 = a3;
  if (a2 >= 0x40)
  {
    v9 = 1;
    while (*(&v16 + v9) == LOBYTE(a3))
    {
      if (++v9 == 8)
      {
        return memset(result, SLODWORD(a3), 8 * a2);
      }
    }

    v10 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v11 = vdupq_n_s64(a2 - 1);
    v12 = xmmword_23681F920;
    v13 = result + 1;
    v14 = vdupq_n_s64(2uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v11, v12));
      if (v15.i8[0])
      {
        *(v13 - 1) = a3;
      }

      if (v15.i8[4])
      {
        *v13 = a3;
      }

      v12 = vaddq_s64(v12, v14);
      v13 += 2;
      v10 -= 2;
    }

    while (v10);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0x7E;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23681F920;
    v6 = result + 1;
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = a3;
      }

      if (v8.i8[4])
      {
        *v6 = a3;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

double *sub_2366D0F00(size_t count, double a2)
{
  if (a2 == 0.0)
  {

    return malloc_type_calloc(count, 8uLL, 0x100004000313F17uLL);
  }

  else
  {
    v5 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
    v6 = v5;
    if (count && v5)
    {
      sub_2366D0DF4(v5, count, a2);
    }

    return v6;
  }
}

double sub_2366D0F98(double *a1, uint64_t a2)
{
  v2 = a2;
  v4 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  if (v4 && v2)
  {
    v6 = v4;
    do
    {
      v7 = *a1++;
      result = v7;
      *v6++ = v7;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2366D0FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v10 = *(a1 + 4);
  if (v10 == 1)
  {
    if (*(a2 + 8) == 1)
    {

      return sub_2366D3710(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    }

    else
    {

      return sub_2366D44D4(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else if (v10)
  {
    return sub_236815030(15, "Unknown objtype of %d\n", a3, a4, a5, a6, a7, a8, v10);
  }

  else if (*(a2 + 8) == 1)
  {

    return sub_2366D1088(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {

    return sub_2366D22DC(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_2366D1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v256 = a3;
  v9 = a2;
  v293[0] = 0;
  sub_2366E2AA8(a1, a2, a3, a4, a5, a6, a7, a8, v252);
  v11 = *v9;
  v279 = *(v9 + 2);
  v291 = *(v9 + 5);
  v288 = *(v9 + 6);
  v275 = *(v9 + 19);
  v273 = *(v9 + 18);
  v12 = *(v9 + 15);
  v13 = *(v9 + 16);
  v14 = *(a1 + 100);
  v292 = *(a1 + 120);
  v276 = sub_2366E2AB8(a1, v14 + 2, v15, v16, v17, v18, v19, v20);
  v253 = v14 + 2;
  v27 = sub_2366E2AB8(a1, v14 + 2, v21, v22, v23, v24, v25, v26);
  v34 = a1;
  v269 = v27;
  v35 = **(a1 + 112);
  v290 = v8;
  if (v8 != 2)
  {
    if (v35 >= sub_2366ED820(v9, v14, *(a1 + 128)))
    {
      v35 = **(a1 + 112);
    }

    else
    {
      v35 = sub_2366ED820(v9, v14, *(a1 + 128));
    }

    v34 = a1;
  }

  if (v14 >= 1)
  {
    v36 = *(v9 + 7);
    v37 = v14;
    v38 = v292;
    v39 = v269;
    v40 = v276;
    do
    {
      v41 = *v38++;
      *v39++ = (v35 * (v41 * *v36));
      *v40++ = (1.0 / v35 * (v41 * *v36));
      --v37;
    }

    while (v37);
  }

  v254 = v14;
  v42 = v14;
  *&v269[v42] = 0;
  *&v276[v42] = 0;
  v289 = v34;
  v268 = sub_2366E2AB8(v34, v11, v28, v29, v30, v31, v32, v33);
  v49 = sub_2366E2AB8(v289, v253, v43, v44, v45, v46, v47, v48);
  v50 = sub_2366E736C(v253, 2, v49);
  v57 = v289;
  v263 = v50;
  *(v50 + v42 * 4) = 0;
  v278 = v14;
  if (*(v289 + 40))
  {
    sub_2366B9BD0(v289, v9, v51, v52, v53, v54, v55, v56);
    v58 = *(v289 + 296);
    v262 = *(v289 + 304);
    v59 = sub_2366E736C(v14, 0, *(v289 + 320));
    v57 = v289;
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
    v262 = 0;
  }

  v61 = sub_2366E2AB8(v57, v11, v51, v52, v53, v54, v55, v56);
  v283 = sub_2366E736C(v11, 3, v61);
  v68 = sub_2366E2AB8(v289, v11, v62, v63, v64, v65, v66, v67);
  v69 = sub_2366E736C(v11, -1, v68);
  v76 = sub_2366E2AB8(v289, v11, v70, v71, v72, v73, v74, v75);
  v83 = v289;
  v277 = v76;
  if (*(v289 + 44))
  {
    v84 = sub_2366E2AB8(v289, v11, v77, v78, v79, v80, v81, v82);
    v266 = sub_2366E736C(v11, 0, v84);
    v265 = sub_2366E2AB8(v289, v11, v85, v86, v87, v88, v89, v90);
    v97 = sub_2366E2AB8(v289, v11, v91, v92, v93, v94, v95, v96);
    v98 = sub_2366E736C(v11, 0, v97);
    v83 = v289;
    v264 = v98;
  }

  else
  {
    v265 = 0;
    v266 = 0;
    v264 = 0;
  }

  v282 = v12;
  v270 = v13;
  v272 = v69;
  if ((*(v83 + 8) & 8) != 0)
  {
    v99 = "GBC";
    if (v290 == 1)
    {
      v99 = "GRC";
    }

    v286 = v99;
    v100 = v13[sub_2366E7198(v14, v13, 1uLL)];
    v101 = sub_2366E70E8(v278, v13, 1);
    v102 = *v276;
    v103 = *v269;
    v104 = sub_2366ED820(v9, v278, *(v289 + 128));
    printf("%s: [%6d %6d][%6d %6d], Bal: %5.3f, Nv-Nb[%6d %6d], Cut: %6d", v286, v100, v101, v102, v103, v104, *v9, v9[34], v9[28]);
    if (*(v289 + 40))
    {
      v105 = sub_2366E70E8(v278, v58, 1);
      v106 = sub_2366E71E0(v278, v58, 1);
      printf(", Doms: [%3d %4d]", v105, v106);
    }

    putchar(10);
    v12 = v282;
    v13 = v270;
  }

  v281 = sub_2366E76B8(v11);
  v114 = v289;
  if (v256 >= 1)
  {
    v115 = 0;
    v116 = v253;
    v280 = v9;
    while (1)
    {
      if (v290 == 2)
      {
        if (v254 < -1)
        {
          LODWORD(v117) = 0;
        }

        else
        {
          v117 = 0;
          while (1)
          {
            v118 = v13[v117];
            if (v118 > v269[v117] || v118 < v276[v117])
            {
              break;
            }

            if (v116 == ++v117)
            {
              goto LABEL_217;
            }
          }
        }

        if (v117 == v253)
        {
          break;
        }
      }

      v257 = v115;
      v255 = v9[28];
      v119 = v9[34];
      if (*(v114 + 40))
      {
        v293[0] = sub_2366E70E8(v278, v58, 1);
      }

      sub_2366E7FA0(v119, v268, v119 / 4, 1);
      if (v119 < 1)
      {
        v274 = 0;
      }

      else
      {
        for (i = 0; i != v119; ++i)
        {
          v121 = *(v275 + 4 * v268[i]);
          v122 = (*(v9 + 22) + 16 * v121);
          v123 = v122[2];
          if (v123 < 1)
          {
            v124 = 0.0;
          }

          else
          {
            v124 = v122[1] / sqrt(v123);
          }

          v125 = v124 - *v122;
          sub_2366E7BC4(v281, *(v275 + 4 * v268[i]), v125);
          *(v283 + 4 * v121) = 1;
          v277[i] = v121;
          *(v69 + 4 * v121) = i;
        }

        v274 = v119;
      }

      v126 = sub_2366E7E64(v281);
      if (v126 == -1)
      {
        v261 = 0;
        v271 = v119;
        v114 = v289;
        v128 = v283;
        goto LABEL_206;
      }

      v127 = v126;
      v261 = 0;
      v271 = v119;
      v114 = v289;
      v128 = v283;
      do
      {
        *(v128 + 4 * v127) = 2;
        v129 = (*(v9 + 22) + 16 * v127);
        v130 = *(v114 + 272);
        v131 = v129[3];
        v132 = *(v12 + 4 * v127);
        v133 = *(*(v9 + 3) + 4 * v127);
        v287 = v132;
        if (*(v114 + 44))
        {
          v134 = v12;
          v284 = *(v9 + 22) + 16 * v127;
          v135 = v69;
          v136 = *(*(v9 + 3) + 4 * v127);
          v137 = *(v114 + 272);
          v138 = v12;
          v139 = v9;
          v140 = v127;
          v141 = sub_2366D5588(v127, v279, v291, v134, v266, v265, v264);
          v127 = v140;
          v9 = v139;
          v12 = v138;
          v130 = v137;
          v133 = v136;
          v69 = v135;
          v129 = v284;
          v132 = v287;
          if (v141)
          {
            v13 = v270;
            goto LABEL_203;
          }
        }

        v267 = v127;
        v142 = v130 + 8 * v131;
        v143 = v289;
        if (!*(v289 + 40) || v129[2] < 1)
        {
          goto LABEL_73;
        }

        v144 = 0;
        do
        {
          v145 = *(v142 + 8 * v144);
          *(v263 + 4 * v145) = 0;
          LODWORD(v146) = v58[v145];
          if (v146 >= 1)
          {
            v147 = 0;
            v148 = *(v262 + 8 * v145);
            do
            {
              *(v60 + 4 * *(v148 + 4 * v147++)) = 1;
              v146 = v58[v145];
            }

            while (v147 < v146);
          }

          v149 = v129[2];
          if (v149 < 1)
          {
LABEL_64:
            v154 = 2;
            goto LABEL_65;
          }

          v150 = 0;
          v151 = (v130 + 8 * v131);
          v152 = v144;
          while (1)
          {
            if (!v152)
            {
              goto LABEL_59;
            }

            v153 = *v151;
            if (*(v60 + 4 * v153))
            {
              goto LABEL_59;
            }

            if (v58[v153] >= v293[0])
            {
              break;
            }

            ++v150;
LABEL_59:
            --v152;
            v151 += 2;
            if (!--v149)
            {
              if (!v150)
              {
                goto LABEL_62;
              }

              goto LABEL_61;
            }
          }

          v150 = v293[0];
          if (!v293[0])
          {
            goto LABEL_62;
          }

LABEL_61:
          if (v150 + v146 > v293[0])
          {
            goto LABEL_66;
          }

LABEL_62:
          if (!v150)
          {
            goto LABEL_64;
          }

          v154 = 1;
LABEL_65:
          *(v263 + 4 * v145) = v154;
          LODWORD(v146) = v58[v145];
LABEL_66:
          if (v146 >= 1)
          {
            v155 = 0;
            v156 = *(v262 + 8 * v145);
            do
            {
              *(v60 + 4 * *(v156 + 4 * v155++)) = 0;
            }

            while (v155 < v58[v145]);
          }

          ++v144;
        }

        while (v144 < v129[2]);
LABEL_73:
        v157 = v129[2];
        if (v290 == 1)
        {
          if (v157 < 1)
          {
            goto LABEL_200;
          }

          v158 = v157 - 2;
          v159 = (v130 + 8 * v131 + 8 * v157 - 4);
          v160 = v157 - 1;
          v13 = v270;
          while (1)
          {
            v161 = *(v159 - 1);
            if (!*(v263 + 4 * v161))
            {
              goto LABEL_86;
            }

            if (*v159 > *v129)
            {
              v162 = v270[v132];
              v163 = v162 - v133;
              if ((v162 - v133) >= v276[v132])
              {
                v164 = v270[v161];
              }

              else
              {
                v164 = v270[v161];
                if ((v292[v132] * v164) >= (v292[v161] * v163))
                {
                  goto LABEL_84;
                }
              }

              if (v164 + v133 <= v269[v161] || (v292[v132] * v164) < (v292[v161] * v163))
              {
                break;
              }
            }

LABEL_84:
            if (*v159 == *v129)
            {
              v162 = v270[v132];
              if ((v292[v132] * v270[v161]) < (v292[v161] * (v162 - v133)))
              {
                break;
              }
            }

LABEL_86:
            --v157;
            --v158;
            v159 -= 2;
            --v160;
            if (v157 + 1 <= 1)
            {
              goto LABEL_202;
            }
          }

          v170 = v158 + 1;
          if (v157 >= 2)
          {
            v175 = (v162 - v133);
            v176 = (v130 + 8 * v131 + 8 * v158 + 4);
            while (1)
            {
              v177 = *(v176 - 1);
              if (*(v263 + 4 * v177))
              {
                break;
              }

LABEL_115:
              --v160;
              v176 -= 2;
              if (v160 <= 0)
              {
                goto LABEL_116;
              }
            }

            v178 = (v142 + 8 * v170);
            v179 = v178[1];
            if (*v176 <= v179)
            {
LABEL_112:
              if (*v176 != v179 || (v292[*v178] * v270[v177]) >= (v292[v177] * v270[*v178]))
              {
                goto LABEL_115;
              }
            }

            else
            {
              if ((v162 - v133) >= v276[v132])
              {
                v180 = v270[v177];
              }

              else
              {
                v180 = v270[v177];
                if ((v292[v132] * v180) >= (v292[v177] * v175))
                {
                  goto LABEL_112;
                }
              }

              if (v180 + v133 > v269[v177] && (v292[v132] * v180) >= (v292[v177] * v175))
              {
                goto LABEL_112;
              }
            }

            v170 = v160 - 1;
            goto LABEL_115;
          }
        }

        else
        {
          if (v157 < 1)
          {
            goto LABEL_200;
          }

          v165 = v157 - 2;
          v166 = (v130 + 8 * v131 + 8 * v157 - 8);
          v167 = v157 - 1;
          v13 = v270;
          while (1)
          {
            v169 = *v166;
            v166 -= 2;
            v168 = v169;
            if (*(v263 + 4 * v169))
            {
              if (v132 >= v278 || (v292[v132] * v270[v168]) < (v292[v168] * (v270[v132] - v133)))
              {
                break;
              }
            }

            --v157;
            --v165;
            --v167;
            if (v157 + 1 <= 1)
            {
              goto LABEL_202;
            }
          }

          v170 = v165 + 1;
          if (v157 >= 2)
          {
            v171 = (v130 + 8 * v131 + 8 * v165);
            do
            {
              v173 = *v171;
              v171 -= 2;
              v172 = v173;
              if (*(v263 + 4 * v173))
              {
                v174 = *(v142 + 8 * v170);
                if ((v292[v174] * v270[v172]) < (v292[v172] * v270[v174]))
                {
                  v170 = v167 - 1;
                }
              }

              --v167;
            }

            while (v167 > 0);
          }
        }

LABEL_116:
        v258 = v133;
        v181 = (v142 + 8 * v170);
        v183 = *v181;
        v182 = v181[1];
        v259 = v132;
        v260 = v181;
        v184 = *v129;
        v185 = *v129 - v182 + v9[28];
        v9[28] = v185;
        if ((*(v289 + 8) & 0x20) != 0)
        {
          printf("\t\tMoving %6d from %3d/%d to %3d/%d [%6d %6d]. Gain: %4d. Cut: %6d\n", v267, v132, *(v263 + 4 * v132), v183, *(v263 + 4 * v183), v13[v132], v13[v183], v182 - v184, v185);
          v132 = v287;
          v143 = v289;
        }

        v285 = (v279 + 4 * v267);
        if (*(v143 + 40))
        {
          sub_2366B9EAC(v289, v132, v183, *v129 - v260[1], v293);
          v132 = v287;
          v186 = v285[1];
          v187 = *v285;
          if (v187 < v186)
          {
            do
            {
              v188 = *(v12 + 4 * *(v291 + 4 * v187));
              if (v188 != v132 && v188 != v183)
              {
                sub_2366B9EAC(v289, v132, v188, -*(v288 + 4 * v187), v293);
                v12 = v282;
                sub_2366B9EAC(v289, v183, v188, *(v288 + 4 * v187), v293);
                v132 = v287;
                v186 = v285[1];
              }

              ++v187;
            }

            while (v187 < v186);
          }
        }

        v13 = v270;
        v270[v183] += v258;
        v270[v259] -= v258;
        *(v12 + 4 * v267) = v183;
        v190 = v260[1];
        v191 = *v129;
        v192 = *v129 - v190 + v129[1];
        *v129 = v190;
        v129[1] = v192;
        v260[1] = v191;
        if (v191)
        {
          *v260 = v132;
        }

        else
        {
          v193 = v129[2] - 1;
          v129[2] = v193;
          *v260 = *(v142 + 8 * v193);
        }

        v194 = *(v273 + 4 * v267);
        v195 = v129[1];
        if (v290 == 1)
        {
          v196 = *v129;
          if (v194 == -1)
          {
            goto LABEL_133;
          }

          if (v195 < v196)
          {
            v197 = *(v275 + 4 * (v271 - 1));
            *(v275 + 4 * v194) = v197;
            *(v273 + 4 * v197) = *(v273 + 4 * v267);
            *(v273 + 4 * v267) = -1;
            v196 = *v129;
            v195 = v129[1];
            --v271;
LABEL_133:
            if (v195 < v196)
            {
              goto LABEL_140;
            }

LABEL_139:
            *(v275 + 4 * v271) = v267;
            *(v273 + 4 * v267) = v271++;
          }
        }

        else
        {
          if (v194 != -1)
          {
            if (v195 > 0)
            {
              goto LABEL_140;
            }

            v198 = *(v275 + 4 * (v271 - 1));
            *(v275 + 4 * v194) = v198;
            *(v273 + 4 * v198) = *(v273 + 4 * v267);
            *(v273 + 4 * v267) = -1;
            v195 = v129[1];
            --v271;
          }

          if (v195 >= 1)
          {
            goto LABEL_139;
          }
        }

LABEL_140:
        ++v261;
        v199 = *v285;
        if (v199 >= v285[1])
        {
          v9 = v280;
          goto LABEL_202;
        }

        v200 = v289;
        v201 = v283;
        do
        {
          v202 = *(v291 + 4 * v199);
          v203 = *(v282 + 4 * v202);
          v204 = (*(v280 + 22) + 16 * v202);
          v206 = v204[2];
          v205 = v204[3];
          if (v205 == -1)
          {
            v205 = sub_2366E2AD8(v200, *(v279 + 4 * v202 + 4) - *(v279 + 4 * v202) + 1);
            LODWORD(v132) = v287;
            v201 = v283;
            v200 = v289;
            v204[2] = 0;
            v204[3] = v205;
          }

          v207 = *(v200 + 272);
          v208 = v207 + 8 * v205;
          if (v203 == v132)
          {
            v212 = *v204;
            v213 = v204[1] + *(v288 + 4 * v199);
            v204[1] = v213;
            v214 = v212 - *(v288 + 4 * v199);
            *v204 = v214;
            if (v290 == 1)
            {
              if (v213 < v214)
              {
                goto LABEL_166;
              }
            }

            else if (v213 < 1)
            {
LABEL_166:
              LODWORD(v217) = v204[2];
              goto LABEL_167;
            }

            if (*(v273 + 4 * v202) == -1)
            {
              *(v275 + 4 * v271) = v202;
              *(v273 + 4 * v202) = v271++;
            }

            goto LABEL_166;
          }

          if (v203 == v183)
          {
            v209 = v204[1];
            v210 = *v204 + *(v288 + 4 * v199);
            *v204 = v210;
            v211 = v209 - *(v288 + 4 * v199);
            v204[1] = v211;
            if (v290 == 1)
            {
              if (v211 >= v210)
              {
                goto LABEL_158;
              }
            }

            else if (v211 > 0)
            {
              goto LABEL_158;
            }

            v215 = (v273 + 4 * v202);
            if (*v215 != -1)
            {
              v216 = *(v275 + 4 * (v271 - 1));
              *(v275 + 4 * *v215) = v216;
              *(v273 + 4 * v216) = *v215;
              *v215 = -1;
              --v271;
            }
          }

LABEL_158:
          v217 = v204[2];
          v218 = v217 - 1;
          if (v217 >= 1)
          {
            v219 = (v207 + 8 * v205 + 4);
            while (*(v219 - 1) != v132)
            {
              v219 += 2;
              if (!--v217)
              {
                goto LABEL_166;
              }
            }

            v220 = *(v288 + 4 * v199);
            if (*v219 == v220)
            {
              v204[2] = v218;
              *(v219 - 1) = *(v208 + 8 * v218);
            }

            else
            {
              *v219 -= v220;
            }

            goto LABEL_166;
          }

LABEL_167:
          if (v203 == v183)
          {
            goto LABEL_168;
          }

          if (v217 < 1)
          {
            LODWORD(v222) = 0;
          }

          else
          {
            v222 = 0;
            v223 = (v207 + 8 * v205 + 4);
            while (*(v223 - 1) != v183)
            {
              ++v222;
              v223 += 2;
              if (v217 == v222)
              {
                goto LABEL_188;
              }
            }

            *v223 += *(v288 + 4 * v199);
          }

          if (v222 == v217)
          {
LABEL_188:
            v227 = (v208 + 8 * v217);
            *v227 = v183;
            v227[1] = *(v288 + 4 * v199);
            LODWORD(v217) = v217 + 1;
            v204[2] = v217;
          }

          if (v203 == v132 || v206 != v217)
          {
LABEL_168:
            if (v217 < 1)
            {
              v221 = 0.0;
            }

            else
            {
              v221 = v204[1] / sqrt(v217);
            }

            v224 = *v204;
            v225 = v221 - *v204;
            v226 = *(v201 + 4 * v202);
            if (v290 != 1)
            {
              if (v226 == 3)
              {
                if (v204[1] < 1)
                {
                  goto LABEL_198;
                }

LABEL_195:
                sub_2366E7BC4(v281, v202, v225);
                LODWORD(v132) = v287;
                v201 = v283;
                v200 = v289;
                *(v283 + 4 * v202) = 1;
                v277[v274] = v202;
                *(v272 + 4 * v202) = v274++;
                goto LABEL_198;
              }

              if (v226 != 1)
              {
                goto LABEL_198;
              }

              if (v204[1] >= 1)
              {
LABEL_184:
                sub_2366E7D60(v281, v202, v225);
                v200 = v289;
                v201 = v283;
LABEL_197:
                LODWORD(v132) = v287;
                goto LABEL_198;
              }

LABEL_196:
              sub_2366E7C30(v281, v202);
              v201 = v283;
              *(v283 + 4 * v202) = 3;
              v228 = v277[v274 - 1];
              v277[*(v272 + 4 * v202)] = v228;
              *(v272 + 4 * v228) = *(v272 + 4 * v202);
              *(v272 + 4 * v202) = -1;
              --v274;
              v200 = v289;
              goto LABEL_197;
            }

            if (v226 != 3)
            {
              if (v226 != 1)
              {
                goto LABEL_198;
              }

              if (v204[1] >= v224)
              {
                goto LABEL_184;
              }

              goto LABEL_196;
            }

            if (v204[1] >= v224)
            {
              goto LABEL_195;
            }
          }

LABEL_198:
          ++v199;
        }

        while (v199 < v285[1]);
        v9 = v280;
        v12 = v282;
LABEL_200:
        v13 = v270;
LABEL_202:
        v69 = v272;
LABEL_203:
        v127 = sub_2366E7E64(v281);
        v114 = v289;
        v128 = v283;
      }

      while (v127 != -1);
LABEL_206:
      v9[34] = v271;
      if (v274 >= 1)
      {
        v229 = v274;
        v230 = v277;
        do
        {
          *(v128 + 4 * *v230) = 3;
          v231 = *v230++;
          *(v69 + 4 * v231) = -1;
          --v229;
        }

        while (v229);
      }

      if ((*(v114 + 8) & 8) != 0)
      {
        v232 = v13;
        v233 = v13;
        v234 = v114;
        v235 = v233[sub_2366E7198(v278, v232, 1uLL)];
        LODWORD(v233) = sub_2366E70E8(v278, v233, 1);
        v236 = sub_2366ED820(v9, v254, *(v234 + 128));
        v237 = v9[34];
        v238 = v12;
        v239 = v9[28];
        v240 = sub_2366C2FD4(v9, v238);
        printf("\t[%6d %6d], Bal: %5.3f, Nb: %6d. Nmoves: %5d, Cut: %6d, Vol: %6d", v235, v233, v236, v237, v261, v239, v240);
        if (*(v234 + 40))
        {
          v241 = sub_2366E70E8(v278, v58, 1);
          v242 = sub_2366E71E0(v278, v58, 1);
          printf(", Doms: [%3d %4d]", v241, v242);
        }

        putchar(10);
        v114 = v289;
        v12 = v282;
        v13 = v270;
        v69 = v272;
      }

      v116 = v253;
      if (v261 && (v290 != 1 || v9[28] != v255))
      {
        v115 = v257 + 1;
        if (v257 + 1 < v256)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_217:
  v243 = v114;
  sub_2366E77F4(v281, v107, v108, v109, v110, v111, v112, v113);
  return sub_2366E2AB0(v243, v244, v245, v246, v247, v248, v249, v250);
}