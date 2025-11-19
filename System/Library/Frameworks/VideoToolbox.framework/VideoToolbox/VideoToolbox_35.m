uint64_t vt_Copy_x422_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = *(a2 + 40);
  v13 = a4[1];
  v14 = (a3[1] + v13 * v12 + ((2 * (v10 + v9)) & 0xFFFFFFFFFFFFFFFCLL));
  v15 = (*(a6 + 32) & 1) + *(a6 + 32);
  v16 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v17 = *(a6 + 40);
  v18 = 2 * v15;
  v19 = a8[1];
  v20 = (a7[1] + v19 * v17 + ((2 * v15) & 0x7FFFFFFFFFFFFFFELL));
  v21 = v11 - (v10 + v9);
  v22 = v16 - v15;
  if (v21 >= v16 - v15)
  {
    v23 = v16 - v15;
  }

  else
  {
    v23 = v21;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v24 = 0;
    v25 = *a8;
    v26 = a8[2];
    v27 = a7[2] + v26 * v17;
    v28 = *a7 + v25 * v17;
    v29 = *a4;
    v30 = v27 + v18;
    v31 = v28 + v18;
    v32 = *a3 + v29 * v12 + 2 * (v10 + v9);
    if (v22 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v22;
    }

    do
    {
      if (v23)
      {
        v34 = 0;
        do
        {
          *(v30 + 2 * v34) = -1;
          *(v31 + 2 * v34) = *(v32 + 2 * v34) & 0xFFC0;
          ++v34;
        }

        while (v33 != v34);
      }

      v32 += v29;
      v31 += v25;
      v30 += v26;
      ++v24;
    }

    while (v24 != v8);
  }

  v35 = v12 & 1;
  if (v8 >= v35)
  {
    v36 = v12 & 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = v9;
  v38 = v23 >> 1;
  v39 = v23 - v10;
  v40 = (v23 - v10) >> 1;
  if (v38 >= v39 >> 1)
  {
    v38 = v40;
  }

  if (v12)
  {
    if (v37)
    {
      v43 = v14[1] & 0xFFC0;
      v42 = v14 + 2;
      *v20 = *v14 & 0xFFC0;
      v20[1] = v43;
      v41 = v20 + 2;
      if (!v38)
      {
LABEL_33:
        v14 = (v14 + v13);
        v20 = (v20 + v19);
        goto LABEL_34;
      }
    }

    else
    {
      v41 = v20;
      v42 = v14;
      if (!v38)
      {
        goto LABEL_33;
      }
    }

    if (v22 >= v21)
    {
      v44 = v21;
    }

    else
    {
      v44 = v22;
    }

    v45 = v44 >> 1;
    v46 = v44 - v10;
    if (v45 >= v46 >> 1)
    {
      v47 = v46 >> 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = -v47;
    do
    {
      v49 = v42[1] & 0xFFC0;
      *v41 = *v42 & 0xFFC0;
      v41[1] = v49;
      v41 += 2;
      v42 += 2;
      v50 = __CFADD__(v48++, 1);
    }

    while (!v50);
    goto LABEL_33;
  }

LABEL_34:
  if (v8 == v36)
  {
    v51 = 0;
  }

  else
  {
    v52 = 0;
    v51 = v8 - v36;
    if (v22 >= v21)
    {
      v53 = v21;
    }

    else
    {
      v53 = v22;
    }

    v54 = v53 >> 1;
    v55 = v53 - v10;
    if (v54 >= v55 >> 1)
    {
      v56 = v55 >> 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = -v56;
    do
    {
      v58 = v20;
      v59 = v14;
      if (v37)
      {
        v60 = v14[1] & 0xFFC0;
        v59 = v14 + 2;
        *v20 = *v14 & 0xFFC0;
        v20[1] = v60;
        v58 = v20 + 2;
      }

      if (v38)
      {
        v61 = v57;
        do
        {
          v62 = v59[1] & 0xFFC0;
          *v58 = *v59 & 0xFFC0;
          v58[1] = v62;
          v58 += 2;
          v59 += 2;
          v50 = __CFADD__(v61++, 1);
        }

        while (!v50);
      }

      v14 = (v14 + v13);
      v20 = (v20 + v19);
      ++v52;
    }

    while (v52 != v51);
  }

  if (v51 + v35 < v8)
  {
    if (v37)
    {
      v63 = *v14 & 0xFFC0;
      v64 = v14[1] & 0xFFC0;
      v14 += 2;
      *v20 = v63;
      v20[1] = v64;
      v20 += 2;
    }

    if (v38)
    {
      if (v22 < v21)
      {
        v21 = v22;
      }

      v65 = v21 - v10;
      if (v21 >> 1 >= v65 >> 1)
      {
        v66 = v65 >> 1;
      }

      else
      {
        v66 = v21 >> 1;
      }

      v67 = -v66;
      do
      {
        v68 = v14[1] & 0xFFC0;
        *v20 = *v14 & 0xFFC0;
        v20[1] = v68;
        v20 += 2;
        v14 += 2;
        v50 = __CFADD__(v67++, 1);
      }

      while (!v50);
    }
  }

  return 0;
}

uint64_t vt_Copy_x422_t4as(int16x4_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, uint64_t *a9)
{
  v10 = a3[4];
  v9 = a3[5];
  v11 = a3[3];
  v12 = a5[1];
  v13 = (a4[1] + v12 * v9 + 2 * (v10 & 0xFFFFFFFE));
  v15 = a7[4];
  v14 = a7[5];
  v16 = a9[1];
  v17 = (a8[1] + v16 * v14 + 4 * v15);
  v18 = a3[2] + v10 - (v10 & 0xFFFFFFFE) + ((a3[2] + v10) & 1);
  if (v18 >= a7[2])
  {
    v18 = a7[2];
  }

  if (v11 >= a7[3])
  {
    v11 = a7[3];
  }

  if (v11)
  {
    v19 = 0;
    v20 = *a9;
    v21 = a9[2];
    v22 = a8[2] + v21 * v14;
    v23 = *a8 + *a9 * v14;
    v24 = *a5;
    v25 = v22 + 2 * v15;
    v26 = v23 + 2 * v15;
    v27 = *a4 + v24 * v9 + 2 * (v10 & 0xFFFFFFFE);
    do
    {
      if (v18)
      {
        for (i = 0; i != v18; ++i)
        {
          *(v25 + 2 * i) = -1;
          *(v26 + 2 * i) = *(v27 + 2 * i) & 0xFFC0;
        }
      }

      v27 += v24;
      v26 += v20;
      v25 += v21;
      ++v19;
    }

    while (v19 != v11);
  }

  v29 = v9 & 1;
  if (v11 >= v29)
  {
    v30 = v9 & 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = v10;
  v32 = v18 >> 1;
  v33 = v10 & 1;
  v34 = (v18 - v33) >> 1;
  if (v18 >> 1 >= v34)
  {
    v35 = (v18 - v33) >> 1;
  }

  else
  {
    v35 = v18 >> 1;
  }

  if (v9)
  {
    if (v31)
    {
      v37 = v13 + 2;
      v44 = v13[1] & 0xFFC0;
      *v17 = *v13 & 0xFFC0;
      v17[1] = v44;
      v36 = v17 + 2;
      if (v35)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v36 = v17;
      v37 = v13;
      if (v35)
      {
LABEL_20:
        if (v32 >= v34)
        {
          v38 = (v18 - v33) >> 1;
        }

        else
        {
          v38 = v18 >> 1;
        }

        v39 = -v38;
        do
        {
          v40 = *v37;
          v41 = v37[1];
          v37 += 2;
          *v36 = v40 & 0xFFC0;
          v36[1] = v41 & 0xFFC0;
          v36 += 2;
          v42 = __CFADD__(v39++, 1);
        }

        while (!v42);
        v43 = 2 * v35;
        goto LABEL_29;
      }
    }

    v43 = 0;
LABEL_29:
    if ((v43 | v33) < v18)
    {
      v45 = *v37 & 0xFFC0;
      v46 = v37[1] & 0xFFC0;
      *v36 = v45;
      v36[1] = v46;
    }

    v13 = (v13 + v12);
    v17 = (v17 + v16);
  }

  if (v11 == v30)
  {
    v47 = 0;
  }

  else
  {
    v48 = 0;
    v47 = v11 - v30;
    if (v32 >= v34)
    {
      v49 = (v18 - v33) >> 1;
    }

    else
    {
      v49 = v18 >> 1;
    }

    v50 = -v49;
    do
    {
      v51 = v17;
      v52 = v13;
      if (v31)
      {
        v52 = v13 + 2;
        v53 = v13[1] & 0xFFC0;
        *v17 = *v13 & 0xFFC0;
        v17[1] = v53;
        v51 = (v17 + 2);
      }

      if (v35)
      {
        v54 = v50;
        do
        {
          a1.i16[0] = *v52;
          a1.i16[2] = v52[1];
          v52 += 2;
          a1 = (*&vuzp1_s16(a1, a1) & 0xFFC0FFC0FFC0FFC0);
          *v51++ = *&a1;
          v42 = __CFADD__(v54++, 1);
        }

        while (!v42);
        v55 = 2 * v35;
      }

      else
      {
        v55 = 0;
      }

      if ((v55 | v33) < v18)
      {
        v56 = *v52 & 0xFFC0;
        v57 = v52[1] & 0xFFC0;
        *v51 = v56;
        *(v51 + 1) = v57;
      }

      v13 = (v13 + v12);
      v17 = (v17 + v16);
      ++v48;
    }

    while (v48 != v47);
  }

  if (v47 + v29 < v11)
  {
    if (v31)
    {
      v58 = *v13;
      v59 = v13[1];
      v13 += 2;
      *v17 = v58 & 0xFFC0;
      v17[1] = v59 & 0xFFC0;
      v17 += 2;
    }

    if (v35)
    {
      if (v32 >= v34)
      {
        v60 = (v18 - v33) >> 1;
      }

      else
      {
        v60 = v18 >> 1;
      }

      v61 = -v60;
      do
      {
        v62 = *v13;
        v63 = v13[1];
        v13 += 2;
        *v17 = v62 & 0xFFC0;
        v17[1] = v63 & 0xFFC0;
        v17 += 2;
        v42 = __CFADD__(v61++, 1);
      }

      while (!v42);
      v64 = 2 * v35;
    }

    else
    {
      v64 = 0;
    }

    if ((v64 | v33) < v18)
    {
      v65 = *v13 & 0xFFC0;
      v66 = v13[1] & 0xFFC0;
      *v17 = v65;
      v17[1] = v66;
    }
  }

  return 0;
}

uint64_t vt_Copy_x422_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = *(a2 + 40);
  v13 = a4[1];
  v14 = (a3[1] + v13 * v12 + ((2 * (v10 + v9)) & 0xFFFFFFFFFFFFFFFCLL));
  v15 = (*(a6 + 32) & 1) + *(a6 + 32);
  v16 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v17 = *(a6 + 40);
  v18 = 2 * v15;
  v19 = a8[1];
  v20 = (a7[1] + v19 * v17 + ((2 * v15) & 0x7FFFFFFFFFFFFFFELL));
  v21 = v11 - (v10 + v9);
  v22 = v16 - v15;
  if (v21 >= v16 - v15)
  {
    v23 = v16 - v15;
  }

  else
  {
    v23 = v21;
  }

  if (v8 >= *(a6 + 24))
  {
    v8 = *(a6 + 24);
  }

  if (v8)
  {
    v24 = 0;
    v25 = *a8;
    v26 = a8[2];
    v27 = a7[2] + v26 * v17;
    v28 = *a7 + v25 * v17;
    v29 = *a4;
    v30 = v27 + v18;
    v31 = v28 + v18;
    v32 = *a3 + v29 * v12 + 2 * (v10 + v9);
    if (v22 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v22;
    }

    do
    {
      if (v23)
      {
        v34 = 0;
        do
        {
          *(v30 + 2 * v34) = -1;
          *(v31 + 2 * v34) = *(v32 + 2 * v34) & 0xFFC0;
          ++v34;
        }

        while (v33 != v34);
      }

      v32 += v29;
      v31 += v25;
      v30 += v26;
      ++v24;
    }

    while (v24 != v8);
  }

  v35 = v12 & 1;
  if (v8 >= v35)
  {
    v36 = v12 & 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = v9;
  v38 = v23 >> 1;
  v39 = v23 - v10;
  v40 = (v23 - v10) >> 1;
  if (v38 >= v39 >> 1)
  {
    v38 = v40;
  }

  if (v12)
  {
    if (v37)
    {
      v42 = v14 + 2;
      v43 = v14[1] & 0xFFC0;
      *v20 = *v14 & 0xFFC0;
      v20[1] = v43;
      v41 = v20 + 2;
      if (!v38)
      {
LABEL_33:
        v14 = (v14 + v13);
        v20 = (v20 + v19);
        goto LABEL_34;
      }
    }

    else
    {
      v41 = v20;
      v42 = v14;
      if (!v38)
      {
        goto LABEL_33;
      }
    }

    if (v22 >= v21)
    {
      v44 = v21;
    }

    else
    {
      v44 = v22;
    }

    v45 = v44 >> 1;
    v46 = v44 - v10;
    if (v45 >= v46 >> 1)
    {
      v47 = v46 >> 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = -v47;
    do
    {
      v49 = v42[1] & 0xFFC0;
      *v41 = *v42 & 0xFFC0;
      v41[1] = v49;
      v41 += 2;
      v42 += 2;
      v50 = __CFADD__(v48++, 1);
    }

    while (!v50);
    goto LABEL_33;
  }

LABEL_34:
  if (v8 == v36)
  {
    v51 = 0;
  }

  else
  {
    v52 = 0;
    v51 = v8 - v36;
    if (v22 >= v21)
    {
      v53 = v21;
    }

    else
    {
      v53 = v22;
    }

    v54 = v53 >> 1;
    v55 = v53 - v10;
    if (v54 >= v55 >> 1)
    {
      v56 = v55 >> 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = -v56;
    do
    {
      v58 = v20;
      v59 = v14;
      if (v37)
      {
        v59 = v14 + 2;
        v60 = v14[1] & 0xFFC0;
        *v20 = *v14 & 0xFFC0;
        v20[1] = v60;
        v58 = v20 + 2;
      }

      if (v38)
      {
        v61 = v57;
        do
        {
          v62 = v59[1] & 0xFFC0;
          *v58 = *v59 & 0xFFC0;
          v58[1] = v62;
          v58 += 2;
          v59 += 2;
          v50 = __CFADD__(v61++, 1);
        }

        while (!v50);
      }

      v14 = (v14 + v13);
      v20 = (v20 + v19);
      ++v52;
    }

    while (v52 != v51);
  }

  if (v51 + v35 < v8)
  {
    if (v37)
    {
      v63 = *v14;
      v64 = v14[1];
      v14 += 2;
      *v20 = v63 & 0xFFC0;
      v20[1] = v64 & 0xFFC0;
      v20 += 2;
    }

    if (v38)
    {
      if (v22 < v21)
      {
        v21 = v22;
      }

      v65 = v21 - v10;
      if (v21 >> 1 >= v65 >> 1)
      {
        v66 = v65 >> 1;
      }

      else
      {
        v66 = v21 >> 1;
      }

      v67 = -v66;
      do
      {
        v68 = v14[1] & 0xFFC0;
        *v20 = *v14 & 0xFFC0;
        v20[1] = v68;
        v20 += 2;
        v14 += 2;
        v50 = __CFADD__(v67++, 1);
      }

      while (!v50);
    }
  }

  return 0;
}

uint64_t vt_Copy_x422_x4as(int16x4_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, uint64_t *a9)
{
  v9 = a3[4];
  v10 = a3[5];
  v11 = a5[1];
  v12 = (a4[1] + v11 * v10 + 2 * (v9 & 0xFFFFFFFE));
  v13 = a7[4];
  v14 = a7[5];
  v15 = a7[2];
  v16 = a7[3];
  v17 = a9[1];
  v18 = (a8[1] + v17 * v14 + 4 * v13);
  if (a3[2] + v9 - (v9 & 0xFFFFFFFE) + ((a3[2] + v9) & 1uLL) >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = a3[2] + a3[4] - (a3[4] & 0xFFFFFFFELL) + ((a3[2] + a3[4]) & 1);
  }

  if (a3[3] >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = a3[3];
  }

  if (v20)
  {
    v65 = a9[1];
    v67 = a5[1];
    v68 = v19;
    v21 = *a5;
    v22 = *a9;
    v23 = a9[2];
    v24 = (a8[2] + v23 * v14 + 2 * v13);
    v25 = (*a8 + *a9 * v14 + 2 * v13);
    v26 = (*a4 + *a5 * v10 + 2 * (v9 & 0xFFFFFFFE));
    v27 = 2 * v19;
    v66 = v20;
    do
    {
      memcpy(v25, v26, v27);
      memset(v24, 255, v27);
      v26 += v21;
      v25 += v22;
      v24 += v23;
      --v20;
    }

    while (v20);
    v17 = v65;
    v9 = a3[4];
    v10 = a3[5];
    v11 = v67;
    v19 = v68;
    v20 = v66;
  }

  v28 = v10 & 1;
  if (v20 >= v28)
  {
    v29 = v10 & 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v9;
  v31 = v19 >> 1;
  v32 = v9 & 1;
  v33 = (v19 - v32) >> 1;
  if (v19 >> 1 >= v33)
  {
    v34 = (v19 - v32) >> 1;
  }

  else
  {
    v34 = v19 >> 1;
  }

  if (v10)
  {
    if (v30)
    {
      v43 = v12[1] & 0xFFC0;
      v36 = v12 + 2;
      *v18 = *v12 & 0xFFC0;
      v18[1] = v43;
      v35 = v18 + 2;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v35 = v18;
      v36 = v12;
      if (v34)
      {
LABEL_20:
        if (v31 >= v33)
        {
          v37 = (v19 - v32) >> 1;
        }

        else
        {
          v37 = v19 >> 1;
        }

        v38 = -v37;
        do
        {
          v39 = *v36 & 0xFFC0;
          v40 = v36[1] & 0xFFC0;
          v36 += 2;
          *v35 = v39;
          v35[1] = v40;
          v35 += 2;
          v41 = __CFADD__(v38++, 1);
        }

        while (!v41);
        v42 = 2 * v34;
        goto LABEL_29;
      }
    }

    v42 = 0;
LABEL_29:
    if ((v42 | v32) < v19)
    {
      v44 = *v36 & 0xFFC0;
      v45 = v36[1] & 0xFFC0;
      *v35 = v44;
      v35[1] = v45;
    }

    v12 = (v12 + v11);
    v18 = (v18 + v17);
  }

  if (v20 == v29)
  {
    v46 = 0;
  }

  else
  {
    v47 = 0;
    v46 = v20 - v29;
    if (v31 >= v33)
    {
      v48 = (v19 - v32) >> 1;
    }

    else
    {
      v48 = v19 >> 1;
    }

    v49 = -v48;
    do
    {
      v50 = v18;
      v51 = v12;
      if (v30)
      {
        v52 = v12[1] & 0xFFC0;
        v51 = v12 + 2;
        *v18 = *v12 & 0xFFC0;
        v18[1] = v52;
        v50 = (v18 + 2);
      }

      if (v34)
      {
        v53 = v49;
        do
        {
          a1.i16[0] = *v51;
          a1.i16[2] = v51[1];
          v51 += 2;
          a1 = (*&vuzp1_s16(a1, a1) & 0xFFC0FFC0FFC0FFC0);
          *v50++ = *&a1;
          v41 = __CFADD__(v53++, 1);
        }

        while (!v41);
        v54 = 2 * v34;
      }

      else
      {
        v54 = 0;
      }

      if ((v54 | v32) < v19)
      {
        v55 = *v51 & 0xFFC0;
        v56 = v51[1] & 0xFFC0;
        *v50 = v55;
        *(v50 + 1) = v56;
      }

      v12 = (v12 + v11);
      v18 = (v18 + v17);
      ++v47;
    }

    while (v47 != v46);
  }

  if (v46 + v28 < v20)
  {
    if (v30)
    {
      v57 = *v12 & 0xFFC0;
      v58 = v12[1] & 0xFFC0;
      v12 += 2;
      *v18 = v57;
      v18[1] = v58;
      v18 += 2;
    }

    if (v34)
    {
      if (v31 >= v33)
      {
        v31 = (v19 - v32) >> 1;
      }

      v59 = -v31;
      do
      {
        v60 = *v12 & 0xFFC0;
        v61 = v12[1] & 0xFFC0;
        v12 += 2;
        *v18 = v60;
        v18[1] = v61;
        v18 += 2;
        v41 = __CFADD__(v59++, 1);
      }

      while (!v41);
      v34 *= 2;
    }

    if ((v34 | v32) < v19)
    {
      v62 = v12[1] & 0xFFC0;
      *v18 = *v12 & 0xFFC0;
      v18[1] = v62;
    }
  }

  return 0;
}

uint64_t vt_Copy_x422_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = v8 & 1;
  v10 = *(a2 + 40);
  v11 = a4[1];
  v12 = (a3[1] + v11 * v10 + ((2 * (v9 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v13 = (*(a6 + 32) & 1) + *(a6 + 32);
  v14 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v15 = *(a6 + 40);
  v16 = 2 * v13;
  v17 = a8[1];
  v18 = (a7[1] + v17 * v15 + ((2 * v13) & 0x7FFFFFFFFFFFFFFELL));
  v19 = ((*(a2 + 16) + v8) & 0xFFFFFFFE) - (v9 + v8);
  v71 = v14 - v13;
  v72 = v19;
  if (v19 >= v14 - v13)
  {
    v19 = v14 - v13;
  }

  if (*(a2 + 24) >= *(a6 + 24))
  {
    v20 = *(a6 + 24);
  }

  else
  {
    v20 = *(a2 + 24);
  }

  if (v20)
  {
    v68 = a8[1];
    v69 = v20;
    v70 = a4[1];
    v21 = *a4;
    v22 = *a8;
    v23 = a8[2];
    v24 = (a7[2] + v23 * v15 + v16);
    v25 = (*a7 + *a8 * v15 + v16);
    v26 = (*a3 + *a4 * v10 + 2 * (v9 + v8));
    v66 = v19;
    v27 = 2 * v19;
    do
    {
      memcpy(v25, v26, v27);
      memset(v24, 255, v27);
      v26 += v21;
      v25 += v22;
      v24 += v23;
      --v20;
    }

    while (v20);
    v17 = v68;
    v8 = *(a2 + 32);
    v10 = *(a2 + 40);
    v9 = v8 & 1;
    v20 = v69;
    v11 = v70;
    v19 = v66;
  }

  v28 = v10 & 1;
  if (v20 >= v28)
  {
    v29 = v10 & 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v8;
  v31 = v19 >> 1;
  v32 = v19 - v9;
  v33 = (v19 - v9) >> 1;
  if (v31 >= v32 >> 1)
  {
    v31 = v33;
  }

  if (v10)
  {
    if (v30)
    {
      v38 = v12[1] & 0xFFC0;
      v37 = v12 + 2;
      *v18 = *v12 & 0xFFC0;
      v18[1] = v38;
      v36 = v18 + 2;
    }

    else
    {
      v36 = v18;
      v37 = v12;
    }

    v35 = v71;
    v34 = v72;
    if (v31)
    {
      if (v71 >= v72)
      {
        v39 = v72;
      }

      else
      {
        v39 = v71;
      }

      v40 = v39 >> 1;
      v41 = v39 - v9;
      if (v40 >= v41 >> 1)
      {
        v42 = v41 >> 1;
      }

      else
      {
        v42 = v40;
      }

      v43 = -v42;
      do
      {
        v44 = v37[1] & 0xFFC0;
        *v36 = *v37 & 0xFFC0;
        v36[1] = v44;
        v36 += 2;
        v37 += 2;
        v45 = __CFADD__(v43++, 1);
      }

      while (!v45);
    }

    v12 = (v12 + v11);
    v18 = (v18 + v17);
  }

  else
  {
    v35 = v71;
    v34 = v72;
  }

  if (v20 == v29)
  {
    v46 = 0;
  }

  else
  {
    v47 = 0;
    v46 = v20 - v29;
    if (v35 >= v34)
    {
      v48 = v34;
    }

    else
    {
      v48 = v35;
    }

    v49 = v48 >> 1;
    v50 = v48 - v9;
    if (v49 >= v50 >> 1)
    {
      v51 = v50 >> 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = -v51;
    do
    {
      v53 = v18;
      v54 = v12;
      if (v30)
      {
        v55 = v12[1] & 0xFFC0;
        v54 = v12 + 2;
        *v18 = *v12 & 0xFFC0;
        v18[1] = v55;
        v53 = v18 + 2;
      }

      if (v31)
      {
        v56 = v52;
        do
        {
          v57 = v54[1] & 0xFFC0;
          *v53 = *v54 & 0xFFC0;
          v53[1] = v57;
          v53 += 2;
          v54 += 2;
          v45 = __CFADD__(v56++, 1);
        }

        while (!v45);
      }

      v12 = (v12 + v11);
      v18 = (v18 + v17);
      ++v47;
    }

    while (v47 != v46);
  }

  if (v46 + v28 < v20)
  {
    if (v30)
    {
      v58 = *v12 & 0xFFC0;
      v59 = v12[1] & 0xFFC0;
      v12 += 2;
      *v18 = v58;
      v18[1] = v59;
      v18 += 2;
    }

    if (v31)
    {
      if (v35 >= v34)
      {
        v60 = v34;
      }

      else
      {
        v60 = v35;
      }

      v61 = v60 - v9;
      if (v60 >> 1 >= v61 >> 1)
      {
        v62 = v61 >> 1;
      }

      else
      {
        v62 = v60 >> 1;
      }

      v63 = -v62;
      do
      {
        v64 = v12[1] & 0xFFC0;
        *v18 = *v12 & 0xFFC0;
        v18[1] = v64;
        v18 += 2;
        v12 += 2;
        v45 = __CFADD__(v63++, 1);
      }

      while (!v45);
    }
  }

  return 0;
}

uint64_t vt_Copy_x422_v4a8(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[3];
  v11 = a4[1];
  v12 = a3[1] + v11 * v8 + 2 * (v9 & 0xFFFFFFFE);
  v14 = a6[4];
  v13 = a6[5];
  v16 = a6[2];
  v15 = a6[3];
  v17 = a8[1];
  v18 = (a7[1] + v17 * v13 + 2 * v14);
  v19 = a2[2] + v9 - (v9 & 0xFFFFFFFE) + ((a2[2] + v9) & 1);
  if (v19 >= v16)
  {
    v19 = v16;
  }

  if (v10 >= v15)
  {
    v10 = v15;
  }

  if (v10)
  {
    v20 = 0;
    v21 = *a8;
    v22 = a8[2];
    v23 = a7[2] + v22 * v13;
    v24 = *a7 + *a8 * v13;
    v25 = *a4;
    v26 = v23 + v14;
    v27 = v24 + v14;
    v28 = *a3 + v25 * v8 + 2 * (a2[4] & 0xFFFFFFFELL);
    do
    {
      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          *(v26 + i) = -1;
          *(v27 + i) = *(v28 + 2 * i + 1);
        }
      }

      v28 += v25;
      v27 += v21;
      v26 += v22;
      ++v20;
    }

    while (v20 != v10);
    v9 = a2[4];
    v8 = a2[5];
  }

  v30 = v8 & 1;
  if (v10 >= v30)
  {
    v31 = v8 & 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = v9;
  v33 = v19 >> 1;
  v34 = v9 & 1;
  v35 = (v19 - v34) >> 1;
  if (v19 >> 1 >= v35)
  {
    v36 = (v19 - v34) >> 1;
  }

  else
  {
    v36 = v19 >> 1;
  }

  if (v8)
  {
    if (v32)
    {
      v45 = *(v12 + 3);
      v38 = v12 + 4;
      *v18 = *(v12 + 1);
      v18[1] = v45;
      v37 = v18 + 2;
      if (v36)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v38 = v12;
      if (v36)
      {
LABEL_21:
        if (v33 >= v35)
        {
          v39 = (v19 - v34) >> 1;
        }

        else
        {
          v39 = v19 >> 1;
        }

        v40 = -v39;
        do
        {
          v41 = *(v38 + 1);
          v42 = *(v38 + 3);
          v38 += 4;
          *v37 = v41;
          v37[1] = v42;
          v37 += 2;
          v43 = __CFADD__(v40++, 1);
        }

        while (!v43);
        v44 = 2 * v36;
        goto LABEL_30;
      }
    }

    v44 = 0;
LABEL_30:
    if ((v44 | v34) < v19)
    {
      v46 = *(v38 + 1);
      v47 = *(v38 + 3);
      *v37 = v46;
      v37[1] = v47;
    }

    v12 += v11;
    v18 += v17;
  }

  if (v10 == v31)
  {
    v48 = 0;
  }

  else
  {
    v49 = 0;
    v48 = v10 - v31;
    if (v33 >= v35)
    {
      v50 = (v19 - v34) >> 1;
    }

    else
    {
      v50 = v19 >> 1;
    }

    v51 = -v50;
    do
    {
      v52 = v18;
      v53 = v12;
      if (v32)
      {
        v54 = *(v12 + 3);
        v53 = v12 + 4;
        *v18 = *(v12 + 1);
        v18[1] = v54;
        v52 = v18 + 2;
      }

      if (v36)
      {
        v55 = v51;
        do
        {
          v56 = *(v53 + 1);
          v57 = *(v53 + 3);
          v53 += 4;
          *v52 = v56;
          v52[1] = v57;
          v52[2] = v56;
          v52[3] = v57;
          v52 += 4;
          v43 = __CFADD__(v55++, 1);
        }

        while (!v43);
        v58 = 2 * v36;
      }

      else
      {
        v58 = 0;
      }

      if ((v58 | v34) < v19)
      {
        v59 = *(v53 + 1);
        v60 = *(v53 + 3);
        *v52 = v59;
        v52[1] = v60;
      }

      v12 += v11;
      v18 += v17;
      ++v49;
    }

    while (v49 != v48);
  }

  if (v48 + v30 < v10)
  {
    if (v32)
    {
      v61 = *(v12 + 1);
      v62 = *(v12 + 3);
      v12 += 4;
      *v18 = v61;
      v18[1] = v62;
      v18 += 2;
    }

    if (v36)
    {
      if (v33 >= v35)
      {
        v63 = (v19 - v34) >> 1;
      }

      else
      {
        v63 = v19 >> 1;
      }

      v64 = -v63;
      do
      {
        v65 = *(v12 + 1);
        v66 = *(v12 + 3);
        v12 += 4;
        *v18 = v65;
        v18[1] = v66;
        v18 += 2;
        v43 = __CFADD__(v64++, 1);
      }

      while (!v43);
      v67 = 2 * v36;
    }

    else
    {
      v67 = 0;
    }

    if ((v67 | v34) < v19)
    {
      v68 = *(v12 + 1);
      v69 = *(v12 + 3);
      *v18 = v68;
      v18[1] = v69;
    }
  }

  return 0;
}

uint64_t vt_Copy_x422_v2a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = v9 & 1;
  v11 = *(a2 + 40);
  v12 = 2 * (v10 + v9);
  v13 = a4[1];
  v14 = a3[1] + v13 * v11 + (v12 & 0xFFFFFFFFFFFFFFFCLL);
  v15 = *(a6 + 24);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = *(a6 + 40);
  v19 = a8[1];
  v20 = (a7[1] + v19 * v18 + (v16 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = ((*(a2 + 16) + v9) & 0xFFFFFFFE) - (v10 + v9);
  v22 = v17 - v16;
  if (v21 >= v17 - v16)
  {
    v23 = v17 - v16;
  }

  else
  {
    v23 = ((*(a2 + 16) + v9) & 0xFFFFFFFE) - (v10 + v9);
  }

  if (v8 >= v15)
  {
    v8 = v15;
  }

  if (v8)
  {
    v24 = 0;
    v25 = *a8;
    v26 = a8[2];
    v27 = a7[2] + v26 * v18;
    v28 = *a7 + v25 * v18;
    v29 = *a4;
    v30 = v27 + v16;
    v31 = v28 + v16;
    v32 = *a3 + v29 * v11 + v12;
    if (v22 >= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v22;
    }

    do
    {
      if (v23)
      {
        v34 = 0;
        do
        {
          *(v30 + v34) = -1;
          *(v31 + v34) = *(v32 + 2 * v34 + 1);
          ++v34;
        }

        while (v33 != v34);
      }

      v32 += v29;
      v31 += v25;
      v30 += v26;
      ++v24;
    }

    while (v24 != v8);
    v9 = *(a2 + 32);
    v11 = *(a2 + 40);
    v10 = v9 & 1;
  }

  v35 = v11 & 1;
  if (v8 >= v35)
  {
    v36 = v11 & 1;
  }

  else
  {
    v36 = 0;
  }

  v37 = v23 >> 1;
  v38 = v23 - v10;
  if (v37 >= v38 >> 1)
  {
    v39 = v38 >> 1;
  }

  else
  {
    v39 = v37;
  }

  if (v11)
  {
    if (v9)
    {
      v42 = *(v14 + 3);
      v41 = v14 + 4;
      *v20 = *(v14 + 1);
      v20[1] = v42;
      v40 = v20 + 2;
      if (!v39)
      {
LABEL_35:
        v14 += v13;
        v20 += v19;
        goto LABEL_36;
      }
    }

    else
    {
      v40 = v20;
      v41 = v14;
      if (!v39)
      {
        goto LABEL_35;
      }
    }

    if (v22 >= v21)
    {
      v43 = v21;
    }

    else
    {
      v43 = v22;
    }

    v44 = v43 >> 1;
    v45 = v43 - v10;
    if (v44 >= v45 >> 1)
    {
      v46 = v45 >> 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = -v46;
    do
    {
      v48 = *(v41 + 3);
      *v40 = *(v41 + 1);
      v40[1] = v48;
      v40 += 2;
      v41 += 4;
      v49 = __CFADD__(v47++, 1);
    }

    while (!v49);
    goto LABEL_35;
  }

LABEL_36:
  if (v8 == v36)
  {
    v50 = 0;
  }

  else
  {
    v51 = 0;
    v50 = v8 - v36;
    if (v22 >= v21)
    {
      v52 = v21;
    }

    else
    {
      v52 = v22;
    }

    v53 = v52 >> 1;
    v54 = v52 - v10;
    if (v53 >= v54 >> 1)
    {
      v55 = v54 >> 1;
    }

    else
    {
      v55 = v53;
    }

    v56 = -v55;
    do
    {
      v57 = v20;
      v58 = v14;
      if (v9)
      {
        v59 = *(v14 + 3);
        v58 = v14 + 4;
        *v20 = *(v14 + 1);
        v20[1] = v59;
        v57 = v20 + 2;
      }

      if (v39)
      {
        v60 = v56;
        do
        {
          v61 = *(v58 + 3);
          *v57 = *(v58 + 1);
          v57[1] = v61;
          v57 += 2;
          v58 += 4;
          v49 = __CFADD__(v60++, 1);
        }

        while (!v49);
      }

      v14 += v13;
      v20 += v19;
      ++v51;
    }

    while (v51 != v50);
  }

  if (v50 + v35 < v8)
  {
    if (v9)
    {
      v62 = *(v14 + 1);
      v63 = *(v14 + 3);
      v14 += 4;
      *v20 = v62;
      v20[1] = v63;
      v20 += 2;
    }

    if (v39)
    {
      if (v22 < v21)
      {
        v21 = v22;
      }

      v64 = v21 >> 1;
      v65 = v21 - v10;
      if (v64 >= v65 >> 1)
      {
        v66 = v65 >> 1;
      }

      else
      {
        v66 = v64;
      }

      v67 = -v66;
      do
      {
        v68 = *(v14 + 3);
        *v20 = *(v14 + 1);
        v20[1] = v68;
        v20 += 2;
        v14 += 4;
        v49 = __CFADD__(v67++, 1);
      }

      while (!v49);
    }
  }

  return 0;
}

uint64_t vt_CopyAvg_x422_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = v9 & 1;
  v11 = v8 & 1;
  v12 = v11 + v8;
  v13 = 2 * (v10 + v9);
  v14 = a4[1];
  v15 = a3[1] + v14 * (v11 + v8) + (v13 & 0xFFFFFFFFFFFFFFFCLL);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 40) & 1) + *(a6 + 40);
  v19 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v20 = a8[1];
  v21 = (a7[1] + ((v20 * v18) >> 1) + (v16 & 0x7FFFFFFFFFFFFFFFLL));
  v22 = ((*(a2 + 16) + v9) & 0xFFFFFFFE) - (v10 + v9);
  v23 = v17 - v16;
  if (v22 >= v17 - v16)
  {
    v24 = v17 - v16;
  }

  else
  {
    v24 = ((*(a2 + 16) + v9) & 0xFFFFFFFE) - (v10 + v9);
  }

  v25 = ((*(a2 + 24) + v8) & 0xFFFFFFFE) - v12;
  v26 = v19 - v18;
  if (v25 >= v26)
  {
    v25 = v26;
  }

  if (v25)
  {
    v27 = 0;
    v28 = *a4;
    v29 = v12 >= v8;
    v30 = *a8;
    v31 = a8[2];
    v32 = *a3 + v28 * v12;
    if (v29)
    {
      v33 = 0;
    }

    else
    {
      v33 = v28;
    }

    v34 = v32 + v13 + v33;
    v35 = a7[2] + v31 * v18 + v16;
    v36 = *a7 + v30 * v18 + v16;
    if (v23 >= v22)
    {
      v37 = v22;
    }

    else
    {
      v37 = v23;
    }

    do
    {
      if (v24)
      {
        v38 = 0;
        do
        {
          *(v35 + v38) = -1;
          *(v36 + v38) = *(v34 + 2 * v38 + 1);
          ++v38;
        }

        while (v37 != v38);
      }

      v34 += v28;
      v36 += v30;
      v35 += v31;
      ++v27;
    }

    while (v27 != v25);
    v9 = *(a2 + 32);
    v11 = *(a2 + 40) & 1;
    v10 = v9 & 1;
  }

  if (v25 >= v11)
  {
    v39 = v11;
  }

  else
  {
    v39 = 0;
  }

  v40 = v24 >> 1;
  v41 = v24 - v10;
  if (v40 >= v41 >> 1)
  {
    v42 = v41 >> 1;
  }

  else
  {
    v42 = v40;
  }

  if (v11)
  {
    if (v9)
    {
      v44 = v15 + 4;
      v45 = (*(v15 + 3) + *(v15 + v14 + 3) + 1) >> 1;
      *v21 = (*(v15 + 1) + *(v15 + v14 + 1) + 1) >> 1;
      v21[1] = v45;
      v43 = v21 + 2;
      if (!v42)
      {
LABEL_38:
        v15 += 2 * v14;
        v21 += v20;
        goto LABEL_39;
      }
    }

    else
    {
      v43 = v21;
      v44 = v15;
      if (!v42)
      {
        goto LABEL_38;
      }
    }

    if (v23 >= v22)
    {
      v46 = v22;
    }

    else
    {
      v46 = v23;
    }

    v47 = v46 >> 1;
    v48 = v46 - v10;
    if (v47 >= v48 >> 1)
    {
      v49 = v48 >> 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = -v49;
    v51 = v44 + 2;
    v52 = v51 + v14;
    do
    {
      v53 = (*(v51 + 1) + *(v52 + 1) + 1) >> 1;
      *v43 = (*(v51 - 1) + *(v52 - 1) + 1) >> 1;
      v43[1] = v53;
      v43 += 2;
      v52 += 4;
      v51 += 4;
      v29 = __CFADD__(v50++, 1);
    }

    while (!v29);
    goto LABEL_38;
  }

LABEL_39:
  if (v25 != v39)
  {
    v54 = 0;
    v55 = v25 - v39;
    if (v23 < v22)
    {
      v22 = v23;
    }

    v56 = v22 >> 1;
    v57 = v22 - v10;
    if (v56 >= v57 >> 1)
    {
      v58 = v57 >> 1;
    }

    else
    {
      v58 = v56;
    }

    v59 = -v58;
    do
    {
      v60 = v21;
      v61 = v15;
      if (v9)
      {
        v61 = v15 + 4;
        v62 = (*(v15 + 3) + *(v15 + v14 + 3) + 1) >> 1;
        *v21 = (*(v15 + 1) + *(v15 + v14 + 1) + 1) >> 1;
        v21[1] = v62;
        v60 = v21 + 2;
      }

      if (v42)
      {
        v63 = v61 + v14 + 2;
        v64 = v61 + 2;
        v65 = v59;
        do
        {
          v66 = (*(v64 + 1) + *(v63 + 1) + 1) >> 1;
          *v60 = (*(v64 - 1) + *(v63 - 1) + 1) >> 1;
          v60[1] = v66;
          v60 += 2;
          v63 += 4;
          v64 += 4;
          v29 = __CFADD__(v65++, 1);
        }

        while (!v29);
      }

      v15 += 2 * v14;
      v21 += v20;
      v54 += 2;
    }

    while (v54 < v55);
  }

  return 0;
}

uint64_t vt_CopyDec_x422_v0a8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = v9 & 1;
  v11 = v8 & 1;
  v12 = v11 + v8;
  v13 = 2 * (v10 + v9);
  v14 = a4[1];
  v15 = a3[1] + v14 * (v11 + v8) + (v13 & 0xFFFFFFFFFFFFFFFCLL);
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 40) & 1) + *(a6 + 40);
  v19 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v20 = a8[1];
  v21 = (a7[1] + ((v20 * v18) >> 1) + (v16 & 0x7FFFFFFFFFFFFFFFLL));
  v22 = ((*(a2 + 16) + v9) & 0xFFFFFFFE) - (v10 + v9);
  v23 = v17 - v16;
  if (v22 >= v17 - v16)
  {
    v24 = v17 - v16;
  }

  else
  {
    v24 = ((*(a2 + 16) + v9) & 0xFFFFFFFE) - (v10 + v9);
  }

  v25 = ((*(a2 + 24) + v8) & 0xFFFFFFFE) - v12;
  v26 = v19 - v18;
  if (v25 >= v26)
  {
    v25 = v26;
  }

  if (v25)
  {
    v27 = 0;
    v28 = *a4;
    v29 = v12 >= v8;
    v30 = *a8;
    v31 = a8[2];
    v32 = *a3 + v28 * v12;
    if (v29)
    {
      v33 = 0;
    }

    else
    {
      v33 = v28;
    }

    v34 = v32 + v13 + v33;
    v35 = a7[2] + v31 * v18 + v16;
    v36 = *a7 + v30 * v18 + v16;
    if (v23 >= v22)
    {
      v37 = v22;
    }

    else
    {
      v37 = v23;
    }

    do
    {
      if (v24)
      {
        v38 = 0;
        do
        {
          *(v35 + v38) = -1;
          *(v36 + v38) = *(v34 + 2 * v38 + 1);
          ++v38;
        }

        while (v37 != v38);
      }

      v34 += v28;
      v36 += v30;
      v35 += v31;
      ++v27;
    }

    while (v27 != v25);
    v9 = *(a2 + 32);
    v11 = *(a2 + 40) & 1;
    v10 = v9 & 1;
  }

  if (v25 >= v11)
  {
    v39 = v11;
  }

  else
  {
    v39 = 0;
  }

  v40 = v24 >> 1;
  v41 = v24 - v10;
  if (v40 >= v41 >> 1)
  {
    v42 = v41 >> 1;
  }

  else
  {
    v42 = v40;
  }

  if (v11)
  {
    if (v9)
    {
      v45 = *(v15 + 3);
      v44 = v15 + 4;
      *v21 = *(v15 + 1);
      v21[1] = v45;
      v43 = v21 + 2;
      if (!v42)
      {
LABEL_38:
        v15 += 2 * v14;
        v21 += v20;
        goto LABEL_39;
      }
    }

    else
    {
      v43 = v21;
      v44 = v15;
      if (!v42)
      {
        goto LABEL_38;
      }
    }

    if (v23 >= v22)
    {
      v46 = v22;
    }

    else
    {
      v46 = v23;
    }

    v47 = v46 >> 1;
    v48 = v46 - v10;
    if (v47 >= v48 >> 1)
    {
      v49 = v48 >> 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = -v49;
    do
    {
      v51 = *(v44 + 3);
      *v43 = *(v44 + 1);
      v43[1] = v51;
      v43 += 2;
      v44 += 4;
      v29 = __CFADD__(v50++, 1);
    }

    while (!v29);
    goto LABEL_38;
  }

LABEL_39:
  if (v25 != v39)
  {
    v52 = 0;
    v53 = v25 - v39;
    v54 = 2 * v14;
    if (v23 < v22)
    {
      v22 = v23;
    }

    v55 = v22 >> 1;
    v56 = v22 - v10;
    if (v55 >= v56 >> 1)
    {
      v57 = v56 >> 1;
    }

    else
    {
      v57 = v55;
    }

    v58 = -v57;
    do
    {
      v59 = v21;
      v60 = v15;
      if (v9)
      {
        v61 = *(v15 + 3);
        v60 = v15 + 4;
        *v21 = *(v15 + 1);
        v21[1] = v61;
        v59 = v21 + 2;
      }

      if (v42)
      {
        v62 = v58;
        do
        {
          v63 = *(v60 + 3);
          *v59 = *(v60 + 1);
          v59[1] = v63;
          v59 += 2;
          v60 += 4;
          v29 = __CFADD__(v62++, 1);
        }

        while (!v29);
      }

      v15 += v54;
      v21 += v20;
      v52 += 2;
    }

    while (v52 < v53);
  }

  return 0;
}

vImage_Error vt_VImage_Setup_x420_w30r(unint64_t a1, unint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint8_t a6, uint64_t a7, vImage_YpCbCrToARGB **a8, uint64_t (**a9)(), uint64_t a10, void (**a11)(void **a1))
{
  v22 = 0uLL;
  v23 = 0;
  v17 = malloc_type_malloc(0x130uLL, 0x1080040714FBEC0uLL);
  *v17->opaque = 0u;
  *&v17->opaque[16] = 0u;
  *&v17->opaque[32] = 0u;
  *&v17->opaque[48] = 0u;
  *&v17->opaque[64] = 0u;
  *&v17->opaque[80] = 0u;
  *&v17->opaque[96] = 0u;
  *&v17->opaque[112] = 0u;
  *v17[1].opaque = 0u;
  *&v17[1].opaque[16] = 0u;
  *&v17[1].opaque[32] = 0u;
  *&v17[1].opaque[48] = 0u;
  *&v17[1].opaque[64] = 0u;
  *&v17[1].opaque[80] = 0u;
  *&v17[1].opaque[96] = 0u;
  *&v17[1].opaque[112] = 0u;
  *v17[2].opaque = 0u;
  *&v17[2].opaque[16] = 0u;
  *&v17[2].opaque[32] = 0u;
  *&pixelRange.Yp_bias = xmmword_18FECD150;
  *&pixelRange.YpMax = xmmword_18FECD140;
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v22 = xmmword_18FECD070;
      v20 = 1072585656;
    }

    else if (FigCFEqual())
    {
      v22 = xmmword_18FECD080;
      v20 = 1072411609;
    }

    else
    {
      if (!FigCFEqual())
      {
        if (!FigCFEqual() && CVYCbCrMatrixGetIntegerCodePointForString(a3) != 5)
        {
          DefaultYpCbCrToARGBMatrixWithDimensionHint = GetDefaultYpCbCrToARGBMatrixWithDimensionHint(a1, a2);
          goto LABEL_11;
        }

        v18 = MEMORY[0x1E6958840];
        goto LABEL_3;
      }

      v22 = xmmword_18FECD090;
      v20 = 1072746935;
    }

    v23 = v20;
    DefaultYpCbCrToARGBMatrixWithDimensionHint = &v22;
    goto LABEL_11;
  }

  v18 = MEMORY[0x1E6958848];
LABEL_3:
  DefaultYpCbCrToARGBMatrixWithDimensionHint = *v18;
LABEL_11:
  result = vImageConvert_YpCbCrToARGB_GenerateConversion(DefaultYpCbCrToARGBMatrixWithDimensionHint, &pixelRange, v17, 0x11u, kvImageARGB16Q12|kvImageARGB16U, 0);
  *&v17[2].opaque[40] = a5;
  v17[2].opaque[32] = a6;
  *a9 = vt_VImage_Copy_x420_w30r;
  *a11 = vt_VImage_Cleanup_x420_w30r;
  *a8 = v17;
  return result;
}

uint64_t vt_Copy_x420_y416(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[4] & 0xFFFFFFFELL;
  v9 = a2[5] & 0xFFFFFFFELL;
  v11 = a2[2] + a2[4] - v8 + ((a2[2] + a2[4]) & 1);
  if (v11 >= a6[2])
  {
    v11 = a6[2];
  }

  v10 = a2[3] + a2[5];
  v12 = v10 - v9 + (v10 & 1);
  if (v12 >= a6[3])
  {
    v12 = a6[3];
  }

  if (v12)
  {
    v13 = 0;
    v14 = *a4;
    v15 = a4[1];
    v16 = *a8;
    v17 = *a7 + *a8 * a6[5] + 2 * a6[4];
    v18 = a3[1] + v15 * (v9 >> 1) + 2 * v8;
    v19 = *a3 + *a4 * v9 + 2 * v8;
    do
    {
      if (v11)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = v18;
        do
        {
          if ((v21 & 1) == 0)
          {
            v23 = *v24 & 0xFFC0;
            v22 = v24[1] & 0xFFC0;
            v24 += 2;
          }

          v25 = (v17 + v20);
          v26 = *(v19 + 2 * v21) & 0xFFC0;
          *v25 = -1;
          v25[1] = v26;
          v25[2] = v23;
          v25[3] = v22;
          ++v21;
          v20 += 8;
        }

        while (v11 != v21);
      }

      v19 += v14;
      v17 += v16;
      v18 += (v13++ << 63 >> 63) & v15;
    }

    while (v13 != v12);
  }

  return 0;
}

uint64_t vt_Copy_x420_y408(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[4] & 0xFFFFFFFELL;
  v9 = a2[5] & 0xFFFFFFFELL;
  v11 = a2[2] + a2[4] - v8 + ((a2[2] + a2[4]) & 1);
  if (v11 >= a6[2])
  {
    v11 = a6[2];
  }

  v10 = a2[3] + a2[5];
  v12 = v10 - v9 + (v10 & 1);
  if (v12 >= a6[3])
  {
    v12 = a6[3];
  }

  if (v12)
  {
    v13 = 0;
    v14 = *a4;
    v15 = a4[1];
    v16 = *a8;
    v17 = *a7 + *a8 * a6[5] + a6[4];
    v18 = a3[1] + v15 * (v9 >> 1) + 2 * v8;
    v19 = *a3 + *a4 * v9 + 2 * v8;
    do
    {
      if (v11)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = v18;
        do
        {
          if ((v21 & 1) == 0)
          {
            v23 = *(v24 + 1);
            v22 = *(v24 + 3);
            v24 += 4;
          }

          v25 = *(v19 + 2 * v21 + 1);
          v26 = (v17 + v20);
          *v26 = -1;
          v26[1] = v25;
          v26[2] = v23;
          v26[3] = v22;
          ++v21;
          v20 += 4;
        }

        while (v11 != v21);
      }

      v19 += v14;
      v17 += v16;
      v18 += (v13++ << 63 >> 63) & v15;
    }

    while (v13 != v12);
  }

  return 0;
}

uint64_t vt_Copy_x420_v216(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = *(a2 + 40) & 0xFFFFFFFELL;
  v11 = (*(a6 + 32) & 1) + *(a6 + 32);
  v12 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v8;
  if (v12 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v11)
  {
    v12 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v11;
  }

  v10 = *(a2 + 24) + *(a2 + 40);
  v13 = v10 - v9 + (v10 & 1);
  if (v13 >= *(a6 + 24))
  {
    v13 = *(a6 + 24);
  }

  if (v13)
  {
    v14 = 0;
    v15 = *a4;
    v16 = a4[1];
    v17 = *a8;
    v18 = *a7 + *a8 * *(a6 + 40) + 2 * v11;
    v19 = a3[1] + v16 * (v9 >> 1) + ((2 * v8) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = *a3 + *a4 * v9 + 2 * v8;
    do
    {
      if (v12)
      {
        v21 = 0;
        for (i = 0; i < v12; i += 2)
        {
          v23 = (v20 + 2 * i);
          v24 = (v19 + 2 * i);
          v25 = (v18 + v21);
          v26 = *v24 & 0xFFC0;
          LOWORD(v24) = v24[1] & 0xFFC0;
          v27 = *v23 & 0xFFC0;
          LOWORD(v23) = v23[1] & 0xFFC0;
          *v25 = v26;
          v25[1] = v27;
          v25[2] = v24;
          v25[3] = v23;
          v21 += 8;
        }
      }

      v20 += v15;
      v18 += v17;
      v19 += (v14++ << 63 >> 63) & v16;
    }

    while (v14 != v13);
  }

  return 0;
}

uint64_t vt_Copy_x420_2vuy(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = (*(a2 + 32) & 1) + *(a2 + 32);
  v9 = *(a2 + 40) & 0xFFFFFFFELL;
  v11 = (*(a6 + 32) & 1) + *(a6 + 32);
  v12 = ((*(a2 + 16) + *(a2 + 32)) & 0xFFFFFFFE) - v8;
  if (v12 >= ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v11)
  {
    v12 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v11;
  }

  v10 = *(a2 + 24) + *(a2 + 40);
  v13 = v10 - v9 + (v10 & 1);
  if (v13 >= *(a6 + 24))
  {
    v13 = *(a6 + 24);
  }

  if (v13)
  {
    v14 = 0;
    v15 = *a4;
    v16 = a4[1];
    v17 = *a8;
    v18 = *a7 + *a8 * *(a6 + 40) + v11;
    v19 = a3[1] + v16 * (v9 >> 1) + ((2 * v8) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = *a3 + *a4 * v9 + 2 * v8;
    do
    {
      if (v12)
      {
        v21 = 0;
        for (i = 0; i < v12; i += 2)
        {
          v23 = v20 + 2 * i;
          v24 = v19 + 2 * i;
          v25 = *(v24 + 1);
          LOBYTE(v24) = *(v24 + 3);
          v26 = *(v23 + 1);
          LOBYTE(v23) = *(v23 + 3);
          v27 = (v18 + v21);
          *v27 = v25;
          v27[1] = v26;
          v27[2] = v24;
          v27[3] = v23;
          v21 += 4;
        }
      }

      v20 += v15;
      v18 += v17;
      v19 += (v14++ << 63 >> 63) & v16;
    }

    while (v14 != v13);
  }

  return 0;
}

uint64_t vt_Copy_x420_s4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[2] + v9;
  v11 = v8 & 0xFFFFFFFE;
  v12 = a2[3] + v8;
  v13 = a4[1];
  v14 = (a3[1] + v13 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v15 = a6[4];
  v16 = a6[5];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a8[1];
  v20 = (a7[1] + v19 * v16 + 4 * v15);
  v21 = v10 - (v9 & 0xFFFFFFFE) + (v10 & 1);
  if (v21 >= v17)
  {
    v21 = v17;
  }

  v22 = v12 - v11 + (v12 & 1);
  if (v22 >= v18)
  {
    v22 = v18;
  }

  if (v22)
  {
    v23 = 0;
    v24 = *a4;
    v25 = *a3 + *a4 * v11;
    if (v11 == v8)
    {
      v26 = 0;
    }

    else
    {
      v26 = *a4;
    }

    v27 = 2 * (v9 & 0xFFFFFFFE) + v26;
    v28 = *a8;
    v29 = a8[2];
    v30 = v25 + v27;
    v31 = a7[2] + v29 * v16 + 2 * v15;
    v32 = *a7 + *a8 * v16 + 2 * v15;
    do
    {
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *(v31 + 2 * i) = -1;
          *(v32 + 2 * i) = *(v30 + 2 * i) & 0xFFC0;
        }
      }

      v30 += v24;
      v32 += v28;
      v31 += v29;
      ++v23;
    }

    while (v23 != v22);
  }

  v34 = v8 & 1;
  if (v22 >> 1 >= (v22 - v34) >> 1)
  {
    v35 = (v22 - (v8 & 1)) >> 1;
  }

  else
  {
    v35 = v22 >> 1;
  }

  v36 = v9;
  v37 = v21 >> 1;
  v38 = v9 & 1;
  v39 = (v21 - v38) >> 1;
  if (v21 >> 1 >= v39)
  {
    v40 = (v21 - v38) >> 1;
  }

  else
  {
    v40 = v21 >> 1;
  }

  if (v8)
  {
    if (v36)
    {
      v49 = v14[1] & 0xFFC0;
      v42 = v14 + 2;
      *v20 = *v14 & 0xFFC0;
      v20[1] = v49;
      v41 = v20 + 2;
      if (v40)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v41 = v20;
      v42 = v14;
      if (v40)
      {
LABEL_23:
        if (v37 >= v39)
        {
          v43 = (v21 - v38) >> 1;
        }

        else
        {
          v43 = v21 >> 1;
        }

        v44 = -v43;
        do
        {
          v45 = *v42 & 0xFFC0;
          v46 = v42[1] & 0xFFC0;
          v42 += 2;
          *v41 = v45;
          v41[1] = v46;
          v41 += 2;
          v47 = __CFADD__(v44++, 1);
        }

        while (!v47);
        v48 = 2 * v40;
        goto LABEL_32;
      }
    }

    v48 = 0;
LABEL_32:
    if ((v48 | v38) < v21)
    {
      v50 = *v42 & 0xFFC0;
      v51 = v42[1] & 0xFFC0;
      *v41 = v50;
      v41[1] = v51;
    }

    v14 = (v14 + v13);
    v20 = (v20 + v19);
  }

  if (v35)
  {
    v52 = 0;
    if (v37 >= v39)
    {
      v53 = (v21 - v38) >> 1;
    }

    else
    {
      v53 = v21 >> 1;
    }

    v54 = -v53;
    do
    {
      v55 = v20;
      v56 = v14;
      if (v36)
      {
        v57 = *v14 & 0xFFC0;
        v58 = v14[1] & 0xFFC0;
        v56 = v14 + 2;
        *v20 = v57;
        v20[1] = v58;
        v59 = (v20 + v19);
        *v59 = v57;
        v59[1] = v58;
        v55 = v20 + 2;
      }

      if (v40)
      {
        v60 = v55 + 2;
        v61 = (v55 + v19 + 4);
        v62 = v54;
        do
        {
          v63 = *v56 & 0xFFC0;
          v64 = v56[1] & 0xFFC0;
          v56 += 2;
          *(v60 - 2) = v63;
          *(v60 - 1) = v64;
          *v60 = v63;
          v60[1] = v64;
          *(v61 - 2) = v63;
          *(v61 - 1) = v64;
          *v61 = v63;
          v61[1] = v64;
          v60 += 4;
          v61 += 4;
          v47 = __CFADD__(v62++, 1);
        }

        while (!v47);
        v55 = v60 - 2;
        v65 = 2 * v40;
      }

      else
      {
        v65 = 0;
      }

      if ((v65 | v38) < v21)
      {
        v66 = *v56 & 0xFFC0;
        v67 = v56[1] & 0xFFC0;
        *v55 = v66;
        v55[1] = v67;
        v68 = (v55 + v19);
        *v68 = v66;
        v68[1] = v67;
      }

      v14 = (v14 + v13);
      v20 += v19;
      ++v52;
    }

    while (v52 != v35);
    v69 = 2 * v35;
  }

  else
  {
    v69 = 0;
  }

  if ((v69 | v34) < v22)
  {
    if (v36)
    {
      v70 = *v14 & 0xFFC0;
      v71 = v14[1] & 0xFFC0;
      v14 += 2;
      *v20 = v70;
      v20[1] = v71;
      v20 += 2;
    }

    if (v40)
    {
      if (v37 >= v39)
      {
        v72 = (v21 - v38) >> 1;
      }

      else
      {
        v72 = v21 >> 1;
      }

      v73 = -v72;
      do
      {
        v74 = *v14 & 0xFFC0;
        v75 = v14[1] & 0xFFC0;
        v14 += 2;
        *v20 = v74;
        v20[1] = v75;
        v20 += 2;
        v47 = __CFADD__(v73++, 1);
      }

      while (!v47);
      v76 = 2 * v40;
    }

    else
    {
      v76 = 0;
    }

    if ((v76 | v38) < v21)
    {
      v77 = *v14 & 0xFFC0;
      v78 = v14[1] & 0xFFC0;
      *v20 = v77;
      v20[1] = v78;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_sv44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[2] + v9;
  v11 = v8 & 0xFFFFFFFE;
  v12 = a2[3] + v8;
  v13 = a4[1];
  v14 = (a3[1] + v13 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v15 = a6[4];
  v16 = a6[5];
  v18 = a6[2];
  v17 = a6[3];
  v19 = a8[1];
  v20 = (a7[1] + v19 * v16 + 4 * v15);
  v21 = v10 - (v9 & 0xFFFFFFFE) + (v10 & 1);
  if (v21 >= v18)
  {
    v21 = v18;
  }

  v22 = v12 - v11 + (v12 & 1);
  if (v22 >= v17)
  {
    v22 = v17;
  }

  if (v22)
  {
    v23 = 0;
    v24 = *a4;
    v25 = *a8;
    v26 = *a3 + *a4 * v11;
    if (v11 == v8)
    {
      v27 = 0;
    }

    else
    {
      v27 = *a4;
    }

    v28 = v26 + 2 * (v9 & 0xFFFFFFFE) + v27;
    v29 = *a7 + v25 * v16 + 2 * v15;
    do
    {
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *(v29 + 2 * i) = *(v28 + 2 * i) & 0xFFC0;
        }
      }

      v28 += v24;
      v29 += v25;
      ++v23;
    }

    while (v23 != v22);
  }

  v31 = v8 & 1;
  if (v22 >> 1 >= (v22 - v31) >> 1)
  {
    v32 = (v22 - (v8 & 1)) >> 1;
  }

  else
  {
    v32 = v22 >> 1;
  }

  v33 = v9;
  v34 = v21 >> 1;
  v35 = v9 & 1;
  v36 = (v21 - v35) >> 1;
  if (v21 >> 1 >= v36)
  {
    v37 = (v21 - v35) >> 1;
  }

  else
  {
    v37 = v21 >> 1;
  }

  if (v8)
  {
    if (v33)
    {
      v46 = v14[1] & 0xFFC0;
      v39 = v14 + 2;
      *v20 = *v14 & 0xFFC0;
      v20[1] = v46;
      v38 = v20 + 2;
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v38 = v20;
      v39 = v14;
      if (v37)
      {
LABEL_23:
        if (v34 >= v36)
        {
          v40 = (v21 - v35) >> 1;
        }

        else
        {
          v40 = v21 >> 1;
        }

        v41 = -v40;
        do
        {
          v42 = *v39 & 0xFFC0;
          v43 = v39[1] & 0xFFC0;
          v39 += 2;
          *v38 = v42;
          v38[1] = v43;
          v38 += 2;
          v44 = __CFADD__(v41++, 1);
        }

        while (!v44);
        v45 = 2 * v37;
        goto LABEL_32;
      }
    }

    v45 = 0;
LABEL_32:
    if ((v45 | v35) < v21)
    {
      v47 = *v39 & 0xFFC0;
      v48 = v39[1] & 0xFFC0;
      *v38 = v47;
      v38[1] = v48;
    }

    v14 = (v14 + v13);
    v20 = (v20 + v19);
  }

  if (v32)
  {
    v49 = 0;
    if (v34 >= v36)
    {
      v50 = (v21 - v35) >> 1;
    }

    else
    {
      v50 = v21 >> 1;
    }

    v51 = -v50;
    do
    {
      v52 = v20;
      v53 = v14;
      if (v33)
      {
        v54 = *v14 & 0xFFC0;
        v55 = v14[1] & 0xFFC0;
        v53 = v14 + 2;
        *v20 = v54;
        v20[1] = v55;
        v56 = (v20 + v19);
        *v56 = v54;
        v56[1] = v55;
        v52 = v20 + 2;
      }

      if (v37)
      {
        v57 = v52 + 2;
        v58 = (v52 + v19 + 4);
        v59 = v51;
        do
        {
          v60 = *v53 & 0xFFC0;
          v61 = v53[1] & 0xFFC0;
          v53 += 2;
          *(v57 - 2) = v60;
          *(v57 - 1) = v61;
          *v57 = v60;
          v57[1] = v61;
          *(v58 - 2) = v60;
          *(v58 - 1) = v61;
          *v58 = v60;
          v58[1] = v61;
          v57 += 4;
          v58 += 4;
          v44 = __CFADD__(v59++, 1);
        }

        while (!v44);
        v52 = v57 - 2;
        v62 = 2 * v37;
      }

      else
      {
        v62 = 0;
      }

      if ((v62 | v35) < v21)
      {
        v63 = *v53 & 0xFFC0;
        v64 = v53[1] & 0xFFC0;
        *v52 = v63;
        v52[1] = v64;
        v65 = (v52 + v19);
        *v65 = v63;
        v65[1] = v64;
      }

      v14 = (v14 + v13);
      v20 += v19;
      ++v49;
    }

    while (v49 != v32);
    v66 = 2 * v32;
  }

  else
  {
    v66 = 0;
  }

  if ((v66 | v31) < v22)
  {
    if (v33)
    {
      v67 = *v14 & 0xFFC0;
      v68 = v14[1] & 0xFFC0;
      v14 += 2;
      *v20 = v67;
      v20[1] = v68;
      v20 += 2;
    }

    if (v37)
    {
      if (v34 >= v36)
      {
        v69 = (v21 - v35) >> 1;
      }

      else
      {
        v69 = v21 >> 1;
      }

      v70 = -v69;
      do
      {
        v71 = *v14 & 0xFFC0;
        v72 = v14[1] & 0xFFC0;
        v14 += 2;
        *v20 = v71;
        v20[1] = v72;
        v20 += 2;
        v44 = __CFADD__(v70++, 1);
      }

      while (!v44);
      v73 = 2 * v37;
    }

    else
    {
      v73 = 0;
    }

    if ((v73 | v35) < v21)
    {
      v74 = *v14 & 0xFFC0;
      v75 = v14[1] & 0xFFC0;
      *v20 = v74;
      v20[1] = v75;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_sf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[3];
  v11 = a2[2] + v9;
  v12 = v8 & 0xFFFFFFFE;
  v13 = v10 + v8;
  v14 = (v10 + v8) & 1;
  v15 = a4[1];
  v16 = (a3[1] + v15 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v17 = a6[4];
  v18 = a6[5];
  v20 = a6[2];
  v19 = a6[3];
  v21 = a8[1];
  v22 = (a7[1] + v21 * v18 + 4 * v17);
  v23 = v11 - (v9 & 0xFFFFFFFE) + (v11 & 1);
  if (v23 >= v20)
  {
    v23 = v20;
  }

  if (v13 - v12 + v14 >= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v13 - v12 + v14;
  }

  if (v24)
  {
    v25 = 0;
    v26 = *a4;
    v27 = *a3 + *a4 * v12;
    if (v12 == v8)
    {
      v28 = 0;
    }

    else
    {
      v28 = *a4;
    }

    v29 = *a8;
    v30 = v27 + 2 * (v9 & 0xFFFFFFFE) + v28;
    v31 = *a7 + *a8 * v18 + 2 * v17;
    do
    {
      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          v33 = *(v30 + 2 * i) >> 6;
          if (v33 >= 0x3AC)
          {
            v33 = 940;
          }

          if (v33 <= 0x40)
          {
            v33 = 64;
          }

          *(v31 + 2 * i) = (-4194240 - v33 + (v33 << 16)) / 0x36C;
        }
      }

      v30 += v26;
      v31 += v29;
      ++v25;
    }

    while (v25 != v24);
  }

  v34 = v8 & 1;
  if (v24 >> 1 >= (v24 - v34) >> 1)
  {
    v35 = (v24 - (v8 & 1)) >> 1;
  }

  else
  {
    v35 = v24 >> 1;
  }

  v36 = v9;
  v37 = v23 >> 1;
  v38 = v9 & 1;
  v39 = (v23 - v38) >> 1;
  if (v23 >> 1 >= v39)
  {
    v40 = (v23 - v38) >> 1;
  }

  else
  {
    v40 = v23 >> 1;
  }

  if (v8)
  {
    if (v36)
    {
      v52 = *v16;
      v53 = v52 >> 6;
      v54 = v16[1];
      if (v52 >> 6 >= 0x3C0)
      {
        v53 = 960;
      }

      if (v52 >= 0x1000)
      {
        v55 = v53;
      }

      else
      {
        v55 = 64;
      }

      if (v54 >> 6 >= 0x3C0)
      {
        v56 = 960;
      }

      else
      {
        v56 = v54 >> 6;
      }

      if (v54 >= 0x1000)
      {
        v57 = v56;
      }

      else
      {
        v57 = 64;
      }

      v42 = v16 + 2;
      *v22 = (613566757 * ((-4194240 - v55 + (v55 << 16)) >> 7)) >> 32;
      v22[1] = (613566757 * ((-4194240 - v57 + (v57 << 16)) >> 7)) >> 32;
      v41 = v22 + 2;
      if (v40)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v41 = v22;
      v42 = v16;
      if (v40)
      {
LABEL_28:
        if (v37 >= v39)
        {
          v43 = (v23 - v38) >> 1;
        }

        else
        {
          v43 = v23 >> 1;
        }

        v44 = -v43;
        do
        {
          v45 = *v42;
          v46 = v45 >> 6;
          v47 = v42[1];
          if (v45 >> 6 >= 0x3C0)
          {
            v46 = 960;
          }

          if (v45 >= 0x1000)
          {
            v48 = v46;
          }

          else
          {
            v48 = 64;
          }

          if (v47 >> 6 >= 0x3C0)
          {
            v49 = 960;
          }

          else
          {
            v49 = v47 >> 6;
          }

          if (v47 < 0x1000)
          {
            v49 = 64;
          }

          v42 += 2;
          *v41 = (613566757 * ((-4194240 - v48 + (v48 << 16)) >> 7)) >> 32;
          v41[1] = (613566757 * ((-4194240 - v49 + (v49 << 16)) >> 7)) >> 32;
          v41 += 2;
          v50 = __CFADD__(v44++, 1);
        }

        while (!v50);
        v51 = 2 * v40;
        goto LABEL_58;
      }
    }

    v51 = 0;
LABEL_58:
    if ((v51 | v38) < v23)
    {
      v58 = *v42;
      v59 = v58 >> 6;
      v60 = v42[1];
      v61 = v60 >> 6;
      if (v58 >> 6 >= 0x3C0)
      {
        v59 = 960;
      }

      if (v58 < 0x1000)
      {
        v59 = 64;
      }

      if (v61 >= 0x3C0)
      {
        v61 = 960;
      }

      if (v60 >= 0x1000)
      {
        v62 = v61;
      }

      else
      {
        v62 = 64;
      }

      *v41 = (613566757 * ((-4194240 - v59 + (v59 << 16)) >> 7)) >> 32;
      v41[1] = (613566757 * ((-4194240 - v62 + (v62 << 16)) >> 7)) >> 32;
    }

    v16 = (v16 + v15);
    v22 = (v22 + v21);
  }

  if (v35)
  {
    v115 = v34;
    v63 = 0;
    if (v37 >= v39)
    {
      v64 = (v23 - v38) >> 1;
    }

    else
    {
      v64 = v23 >> 1;
    }

    v65 = -v64;
    do
    {
      v66 = v22;
      v67 = v16;
      if (v36)
      {
        v68 = *v16;
        v69 = v68 >> 6;
        v70 = v16[1];
        if (v68 >> 6 >= 0x3C0)
        {
          v69 = 960;
        }

        if (v68 < 0x1000)
        {
          v69 = 64;
        }

        if (v70 >> 6 >= 0x3C0)
        {
          v71 = 960;
        }

        else
        {
          v71 = v70 >> 6;
        }

        if (v70 >= 0x1000)
        {
          v72 = v71;
        }

        else
        {
          v72 = 64;
        }

        v67 = v16 + 2;
        v73 = (613566757 * ((-4194240 - v69 + (v69 << 16)) >> 7)) >> 32;
        v74 = (613566757 * ((-4194240 - v72 + (v72 << 16)) >> 7)) >> 32;
        *v22 = v73;
        v22[1] = v74;
        v75 = (v22 + v21);
        *v75 = v73;
        v75[1] = v74;
        v66 = v22 + 2;
      }

      if (v40)
      {
        v76 = v66 + 2;
        v77 = (v66 + v21 + 4);
        v78 = v65;
        do
        {
          v79 = *v67;
          v80 = v79 >> 6;
          v81 = v67[1];
          v82 = v81 >> 6;
          if (v79 >> 6 >= 0x3C0)
          {
            v80 = 960;
          }

          if (v79 >= 0x1000)
          {
            v83 = v80;
          }

          else
          {
            v83 = 64;
          }

          if (v82 >= 0x3C0)
          {
            v82 = 960;
          }

          if (v81 < 0x1000)
          {
            v82 = 64;
          }

          v84 = (613566757 * ((-4194240 - v83 + (v83 << 16)) >> 7)) >> 32;
          *(v76 - 2) = v84;
          v85 = (613566757 * ((-4194240 - v82 + (v82 << 16)) >> 7)) >> 32;
          *(v76 - 1) = v85;
          *v76 = v84;
          v76[1] = v85;
          *(v77 - 2) = v84;
          *(v77 - 1) = v85;
          v67 += 2;
          *v77 = v84;
          v77[1] = v85;
          v76 += 4;
          v77 += 4;
          v50 = __CFADD__(v78++, 1);
        }

        while (!v50);
        v66 = v76 - 2;
        v86 = 2 * v40;
      }

      else
      {
        v86 = 0;
      }

      if ((v86 | v38) < v23)
      {
        v87 = *v67;
        v88 = v87 >> 6;
        v89 = v67[1];
        if (v87 >> 6 >= 0x3C0)
        {
          v88 = 960;
        }

        if (v87 >= 0x1000)
        {
          v90 = v88;
        }

        else
        {
          v90 = 64;
        }

        if (v89 >> 6 >= 0x3C0)
        {
          v91 = 960;
        }

        else
        {
          v91 = v89 >> 6;
        }

        if (v89 >= 0x1000)
        {
          v92 = v91;
        }

        else
        {
          v92 = 64;
        }

        v93 = (613566757 * ((-4194240 - v90 + (v90 << 16)) >> 7)) >> 32;
        v94 = (613566757 * ((-4194240 - v92 + (v92 << 16)) >> 7)) >> 32;
        *v66 = v93;
        v66[1] = v94;
        v95 = (v66 + v21);
        *v95 = v93;
        v95[1] = v94;
      }

      v16 = (v16 + v15);
      v22 += v21;
      ++v63;
    }

    while (v63 != v35);
    v96 = 2 * v35;
    v34 = v115;
  }

  else
  {
    v96 = 0;
  }

  if ((v96 | v34) < v24)
  {
    if (v36)
    {
      v97 = *v16;
      v98 = v97 >> 6;
      v99 = v16[1];
      v100 = v99 >> 6;
      if (v97 >> 6 >= 0x3C0)
      {
        v98 = 960;
      }

      if (v97 < 0x1000)
      {
        v98 = 64;
      }

      if (v100 >= 0x3C0)
      {
        v100 = 960;
      }

      if (v99 >= 0x1000)
      {
        v101 = v100;
      }

      else
      {
        v101 = 64;
      }

      v16 += 2;
      *v22 = (613566757 * ((-4194240 - v98 + (v98 << 16)) >> 7)) >> 32;
      v22[1] = (613566757 * ((-4194240 - v101 + (v101 << 16)) >> 7)) >> 32;
      v22 += 2;
    }

    if (v40)
    {
      if (v37 >= v39)
      {
        v102 = (v23 - v38) >> 1;
      }

      else
      {
        v102 = v23 >> 1;
      }

      v103 = -v102;
      do
      {
        v104 = *v16;
        v105 = v104 >> 6;
        v106 = v16[1];
        if (v104 >> 6 >= 0x3C0)
        {
          v105 = 960;
        }

        if (v104 >= 0x1000)
        {
          v107 = v105;
        }

        else
        {
          v107 = 64;
        }

        if (v106 >> 6 >= 0x3C0)
        {
          v108 = 960;
        }

        else
        {
          v108 = v106 >> 6;
        }

        if (v106 < 0x1000)
        {
          v108 = 64;
        }

        v16 += 2;
        *v22 = (613566757 * ((-4194240 - v107 + (v107 << 16)) >> 7)) >> 32;
        v22[1] = (613566757 * ((-4194240 - v108 + (v108 << 16)) >> 7)) >> 32;
        v22 += 2;
        v50 = __CFADD__(v103++, 1);
      }

      while (!v50);
      v40 *= 2;
    }

    if ((v40 | v38) < v23)
    {
      v109 = *v16;
      v110 = v109 >> 6;
      v111 = v16[1];
      v112 = v111 >> 6;
      if (v109 >> 6 >= 0x3C0)
      {
        v110 = 960;
      }

      if (v109 < 0x1000)
      {
        v110 = 64;
      }

      if (v112 >= 0x3C0)
      {
        v112 = 960;
      }

      if (v111 >= 0x1000)
      {
        v113 = v112;
      }

      else
      {
        v113 = 64;
      }

      *v22 = (613566757 * ((-4194240 - v110 + (v110 << 16)) >> 7)) >> 32;
      v22[1] = (613566757 * ((-4194240 - v113 + (v113 << 16)) >> 7)) >> 32;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_s2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = *(a2 + 40);
  v13 = v12 & 0xFFFFFFFE;
  v14 = v8 + v12;
  v15 = (v8 + v12) & 1;
  v16 = a4[1];
  v17 = (a3[1] + v16 * (v12 >> 1) + ((2 * (v10 + v9)) & 0xFFFFFFFFFFFFFFFCLL));
  v18 = *(a6 + 24);
  v19 = (*(a6 + 32) & 1) + *(a6 + 32);
  v20 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v21 = *(a6 + 40);
  v22 = 2 * v19;
  v23 = a8[1];
  v24 = (a7[1] + v23 * v21 + ((2 * v19) & 0x7FFFFFFFFFFFFFFELL));
  v25 = v11 - (v10 + v9);
  v26 = v20 - v19;
  if (v25 >= v20 - v19)
  {
    v27 = v20 - v19;
  }

  else
  {
    v27 = v25;
  }

  v28 = v14 - v13 + v15;
  if (v28 >= v18)
  {
    v28 = v18;
  }

  if (v28)
  {
    v29 = 0;
    v30 = *a4;
    v31 = *a3 + *a4 * v13;
    if (v13 == v12)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    v33 = 2 * (v10 + v9) + v32;
    v34 = *a8;
    v35 = a8[2];
    v36 = v31 + v33;
    v37 = a7[2] + v35 * v21 + v22;
    v38 = *a7 + v34 * v21 + v22;
    if (v26 >= v25)
    {
      v39 = v25;
    }

    else
    {
      v39 = v20 - v19;
    }

    do
    {
      if (v27)
      {
        v40 = 0;
        do
        {
          *(v37 + 2 * v40) = -1;
          *(v38 + 2 * v40) = *(v36 + 2 * v40) & 0xFFC0;
          ++v40;
        }

        while (v39 != v40);
      }

      v36 += v30;
      v38 += v34;
      v37 += v35;
      ++v29;
    }

    while (v29 != v28);
  }

  v41 = v12 & 1;
  if (v28 >> 1 >= (v28 - v41) >> 1)
  {
    v42 = (v28 - (v12 & 1)) >> 1;
  }

  else
  {
    v42 = v28 >> 1;
  }

  v43 = v9;
  v44 = v27 >> 1;
  if (v27 >> 1 >= (v27 - v10) >> 1)
  {
    v44 = (v27 - v10) >> 1;
  }

  if (v12)
  {
    if (v43)
    {
      v47 = v17[1] & 0xFFC0;
      v46 = v17 + 2;
      *v24 = *v17 & 0xFFC0;
      v24[1] = v47;
      v45 = v24 + 2;
      if (!v44)
      {
LABEL_36:
        v17 = (v17 + v16);
        v24 = (v24 + v23);
        goto LABEL_37;
      }
    }

    else
    {
      v45 = v24;
      v46 = v17;
      if (!v44)
      {
        goto LABEL_36;
      }
    }

    if (v26 >= v25)
    {
      v48 = v25;
    }

    else
    {
      v48 = v20 - v19;
    }

    v49 = v48 >> 1;
    v50 = v48 - v10;
    if (v49 >= v50 >> 1)
    {
      v51 = v50 >> 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = -v51;
    do
    {
      v53 = v46[1] & 0xFFC0;
      *v45 = *v46 & 0xFFC0;
      v45[1] = v53;
      v45 += 2;
      v46 += 2;
      v54 = __CFADD__(v52++, 1);
    }

    while (!v54);
    goto LABEL_36;
  }

LABEL_37:
  if (v42)
  {
    v55 = 0;
    v56 = 2 * v23;
    if (v26 >= v25)
    {
      v57 = v25;
    }

    else
    {
      v57 = v20 - v19;
    }

    v58 = v57 >> 1;
    v59 = v57 - v10;
    if (v58 >= v59 >> 1)
    {
      v60 = v59 >> 1;
    }

    else
    {
      v60 = v58;
    }

    v61 = -v60;
    v62 = v23 + 2;
    do
    {
      v63 = v24;
      v64 = v17;
      if (v43)
      {
        v65 = v17[1] & 0xFFC0;
        v64 = v17 + 2;
        *v24 = *v17 & 0xFFC0;
        v24[1] = v65;
        v63 = v24 + 2;
      }

      if (v44)
      {
        v66 = (v63 + v62);
        v67 = v63 + 1;
        v68 = v61;
        do
        {
          v69 = *v64 & 0xFFC0;
          v70 = v64[1] & 0xFFC0;
          *(v67 - 1) = v69;
          *v67 = v70;
          v67 += 2;
          *(v66 - 1) = v69;
          *v66 = v70;
          v66 += 2;
          v64 += 2;
          v54 = __CFADD__(v68++, 1);
        }

        while (!v54);
      }

      v17 = (v17 + v16);
      v24 = (v24 + v56);
      ++v55;
    }

    while (v55 != v42);
    v71 = 2 * v42;
  }

  else
  {
    v71 = 0;
  }

  if ((v71 | v41) < v28)
  {
    if (v43)
    {
      v72 = *v17 & 0xFFC0;
      v73 = v17[1] & 0xFFC0;
      v17 += 2;
      *v24 = v72;
      v24[1] = v73;
      v24 += 2;
    }

    if (v44)
    {
      if (v26 < v25)
      {
        v25 = v20 - v19;
      }

      v74 = v25 - v10;
      if (v25 >> 1 >= v74 >> 1)
      {
        v75 = v74 >> 1;
      }

      else
      {
        v75 = v25 >> 1;
      }

      v76 = -v75;
      do
      {
        v77 = v17[1] & 0xFFC0;
        *v24 = *v17 & 0xFFC0;
        v24[1] = v77;
        v24 += 2;
        v17 += 2;
        v54 = __CFADD__(v76++, 1);
      }

      while (!v54);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_sv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = v8 & 1;
  v10 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v11 = *(a2 + 40);
  v12 = v11 & 0xFFFFFFFE;
  v13 = *(a2 + 24) + v11;
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v11 >> 1) + ((2 * (v9 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v16 = *(a6 + 24);
  v17 = (*(a6 + 32) & 1) + *(a6 + 32);
  v18 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v19 = *(a6 + 40);
  v20 = 2 * v17;
  v21 = a8[1];
  v22 = (a7[1] + v21 * v19 + ((2 * v17) & 0x7FFFFFFFFFFFFFFELL));
  v23 = v10 - (v9 + v8);
  v24 = v18 - v17;
  if (v23 >= v18 - v17)
  {
    v25 = v18 - v17;
  }

  else
  {
    v25 = v23;
  }

  v26 = v13 - v12 + (v13 & 1);
  if (v26 >= v16)
  {
    v26 = v16;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *a4;
    v29 = *a8;
    v30 = *a3 + *a4 * v12;
    if (v12 == v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = *a4;
    }

    v32 = v30 + 2 * (v9 + v8) + v31;
    v33 = *a7 + v29 * v19 + v20;
    if (v24 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v24;
    }

    do
    {
      if (v25)
      {
        v35 = 0;
        do
        {
          *(v33 + 2 * v35) = *(v32 + 2 * v35) & 0xFFC0;
          ++v35;
        }

        while (v34 != v35);
      }

      v32 += v28;
      v33 += v29;
      ++v27;
    }

    while (v27 != v26);
  }

  v36 = v11 & 1;
  if (v26 >> 1 >= (v26 - v36) >> 1)
  {
    v37 = (v26 - (v11 & 1)) >> 1;
  }

  else
  {
    v37 = v26 >> 1;
  }

  v38 = v8;
  v39 = v25 >> 1;
  if (v25 >> 1 >= (v25 - v9) >> 1)
  {
    v39 = (v25 - v9) >> 1;
  }

  if (v11)
  {
    if (v38)
    {
      v42 = v15[1] & 0xFFC0;
      v41 = v15 + 2;
      *v22 = *v15 & 0xFFC0;
      v22[1] = v42;
      v40 = v22 + 2;
      if (!v39)
      {
LABEL_36:
        v15 = (v15 + v14);
        v22 = (v22 + v21);
        goto LABEL_37;
      }
    }

    else
    {
      v40 = v22;
      v41 = v15;
      if (!v39)
      {
        goto LABEL_36;
      }
    }

    if (v24 >= v23)
    {
      v43 = v23;
    }

    else
    {
      v43 = v24;
    }

    v44 = v43 >> 1;
    v45 = v43 - v9;
    if (v44 >= v45 >> 1)
    {
      v46 = v45 >> 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = -v46;
    do
    {
      v48 = v41[1] & 0xFFC0;
      *v40 = *v41 & 0xFFC0;
      v40[1] = v48;
      v40 += 2;
      v41 += 2;
      v49 = __CFADD__(v47++, 1);
    }

    while (!v49);
    goto LABEL_36;
  }

LABEL_37:
  if (v37)
  {
    v50 = 0;
    v51 = 2 * v21;
    if (v24 >= v23)
    {
      v52 = v23;
    }

    else
    {
      v52 = v24;
    }

    v53 = v52 >> 1;
    v54 = v52 - v9;
    if (v53 >= v54 >> 1)
    {
      v55 = v54 >> 1;
    }

    else
    {
      v55 = v53;
    }

    v56 = -v55;
    v57 = v21 + 2;
    do
    {
      v58 = v22;
      v59 = v15;
      if (v38)
      {
        v60 = v15[1] & 0xFFC0;
        v59 = v15 + 2;
        *v22 = *v15 & 0xFFC0;
        v22[1] = v60;
        v58 = v22 + 2;
      }

      if (v39)
      {
        v61 = (v58 + v57);
        v62 = v58 + 1;
        v63 = v56;
        do
        {
          v64 = *v59 & 0xFFC0;
          v65 = v59[1] & 0xFFC0;
          *(v62 - 1) = v64;
          *v62 = v65;
          v62 += 2;
          *(v61 - 1) = v64;
          *v61 = v65;
          v61 += 2;
          v59 += 2;
          v49 = __CFADD__(v63++, 1);
        }

        while (!v49);
      }

      v15 = (v15 + v14);
      v22 = (v22 + v51);
      ++v50;
    }

    while (v50 != v37);
    v66 = 2 * v37;
  }

  else
  {
    v66 = 0;
  }

  if ((v66 | v36) < v26)
  {
    if (v38)
    {
      v67 = *v15 & 0xFFC0;
      v68 = v15[1] & 0xFFC0;
      v15 += 2;
      *v22 = v67;
      v22[1] = v68;
      v22 += 2;
    }

    if (v39)
    {
      if (v24 < v23)
      {
        v23 = v24;
      }

      v69 = v23 - v9;
      if (v23 >> 1 >= v69 >> 1)
      {
        v70 = v69 >> 1;
      }

      else
      {
        v70 = v23 >> 1;
      }

      v71 = -v70;
      do
      {
        v72 = v15[1] & 0xFFC0;
        *v22 = *v15 & 0xFFC0;
        v22[1] = v72;
        v22 += 2;
        v15 += 2;
        v49 = __CFADD__(v71++, 1);
      }

      while (!v49);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_sf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = v8 & 1;
  v10 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v11 = *(a2 + 40);
  v12 = v11 & 0xFFFFFFFE;
  v13 = *(a2 + 24) + v11;
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v11 >> 1) + ((2 * (v9 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v16 = *(a6 + 24);
  v17 = (*(a6 + 32) & 1) + *(a6 + 32);
  v18 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v19 = *(a6 + 40);
  v20 = 2 * v17;
  v21 = a8[1];
  v22 = (a7[1] + v21 * v19 + ((2 * v17) & 0x7FFFFFFFFFFFFFFELL));
  v23 = v10 - (v9 + v8);
  v24 = v18 - v17;
  if (v23 >= v18 - v17)
  {
    v25 = v18 - v17;
  }

  else
  {
    v25 = v23;
  }

  v26 = v13 - v12 + (v13 & 1);
  if (v26 >= v16)
  {
    v26 = v16;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *a4;
    v29 = *a8;
    v30 = *a3 + *a4 * v12;
    if (v12 == v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = *a4;
    }

    v32 = v30 + 2 * (v9 + v8) + v31;
    v33 = *a7 + v29 * v19 + v20;
    if (v24 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v24;
    }

    do
    {
      if (v25)
      {
        v35 = 0;
        do
        {
          v36 = *(v32 + 2 * v35) >> 6;
          if (v36 >= 0x3AC)
          {
            v36 = 940;
          }

          if (v36 <= 0x40)
          {
            v36 = 64;
          }

          *(v33 + 2 * v35++) = (-4194240 - v36 + (v36 << 16)) / 0x36C;
        }

        while (v34 != v35);
      }

      v32 += v28;
      v33 += v29;
      ++v27;
    }

    while (v27 != v26);
  }

  if (v26 >> 1 >= (v26 - (v11 & 1)) >> 1)
  {
    v37 = (v26 - (v11 & 1)) >> 1;
  }

  else
  {
    v37 = v26 >> 1;
  }

  v38 = v8;
  v39 = v25 >> 1;
  if (v25 >> 1 >= (v25 - v9) >> 1)
  {
    v39 = (v25 - v9) >> 1;
  }

  if (v11)
  {
    if (v38)
    {
      v42 = *v15;
      v43 = v42 >> 6;
      v44 = v15[1];
      v45 = v44 >> 6;
      if (v42 >> 6 >= 0x3C0)
      {
        v43 = 960;
      }

      if (v42 < 0x1000)
      {
        v43 = 64;
      }

      if (v45 >= 0x3C0)
      {
        v45 = 960;
      }

      if (v44 >= 0x1000)
      {
        v46 = v45;
      }

      else
      {
        v46 = 64;
      }

      v41 = v15 + 2;
      *v22 = (613566757 * ((-4194240 - v43 + (v43 << 16)) >> 7)) >> 32;
      v22[1] = (613566757 * ((-4194240 - v46 + (v46 << 16)) >> 7)) >> 32;
      v40 = v22 + 2;
      if (!v39)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v40 = v22;
      v41 = v15;
      if (!v39)
      {
LABEL_59:
        v15 = (v15 + v14);
        v22 = (v22 + v21);
        goto LABEL_60;
      }
    }

    if (v24 >= v23)
    {
      v47 = v23;
    }

    else
    {
      v47 = v24;
    }

    v48 = v47 >> 1;
    v49 = v47 - v9;
    if (v48 >= v49 >> 1)
    {
      v50 = v49 >> 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = -v50;
    do
    {
      v52 = *v41;
      v53 = v52 >> 6;
      v54 = v41[1];
      if (v52 >> 6 >= 0x3C0)
      {
        v53 = 960;
      }

      if (v52 >= 0x1000)
      {
        v55 = v53;
      }

      else
      {
        v55 = 64;
      }

      if (v54 >> 6 >= 0x3C0)
      {
        v56 = 960;
      }

      else
      {
        v56 = v54 >> 6;
      }

      if (v54 < 0x1000)
      {
        v56 = 64;
      }

      *v40 = (613566757 * ((-4194240 - v55 + (v55 << 16)) >> 7)) >> 32;
      v40[1] = (613566757 * ((-4194240 - v56 + (v56 << 16)) >> 7)) >> 32;
      v40 += 2;
      v41 += 2;
      v57 = __CFADD__(v51++, 1);
    }

    while (!v57);
    goto LABEL_59;
  }

LABEL_60:
  if (v37)
  {
    v58 = 0;
    v59 = 2 * v21;
    if (v24 >= v23)
    {
      v60 = v23;
    }

    else
    {
      v60 = v24;
    }

    v61 = v60 >> 1;
    v62 = v60 - v9;
    if (v61 >= v62 >> 1)
    {
      v63 = v62 >> 1;
    }

    else
    {
      v63 = v61;
    }

    v64 = -v63;
    v65 = v21 + 2;
    do
    {
      v66 = v22;
      v67 = v15;
      if (v38)
      {
        v68 = *v15;
        v69 = v68 >> 6;
        v70 = v15[1];
        if (v68 >> 6 >= 0x3C0)
        {
          v69 = 960;
        }

        if (v68 < 0x1000)
        {
          v69 = 64;
        }

        if (v70 >> 6 >= 0x3C0)
        {
          v71 = 960;
        }

        else
        {
          v71 = v70 >> 6;
        }

        if (v70 >= 0x1000)
        {
          v72 = v71;
        }

        else
        {
          v72 = 64;
        }

        v67 = v15 + 2;
        *v22 = (613566757 * ((-4194240 - v69 + (v69 << 16)) >> 7)) >> 32;
        v22[1] = (613566757 * ((-4194240 - v72 + (v72 << 16)) >> 7)) >> 32;
        v66 = v22 + 2;
      }

      if (v39)
      {
        v73 = (v66 + v65);
        v74 = v66 + 1;
        v75 = v64;
        do
        {
          v76 = *v67;
          v77 = v76 >> 6;
          v78 = v67[1];
          if (v76 >> 6 >= 0x3C0)
          {
            v77 = 960;
          }

          if (v76 >= 0x1000)
          {
            v79 = v77;
          }

          else
          {
            v79 = 64;
          }

          if (v78 >> 6 >= 0x3C0)
          {
            v80 = 960;
          }

          else
          {
            v80 = v78 >> 6;
          }

          if (v78 < 0x1000)
          {
            v80 = 64;
          }

          v81 = (613566757 * ((-4194240 - v79 + (v79 << 16)) >> 7)) >> 32;
          v82 = (613566757 * ((-4194240 - v80 + (v80 << 16)) >> 7)) >> 32;
          *(v74 - 1) = v81;
          *v74 = v82;
          v74 += 2;
          *(v73 - 1) = v81;
          *v73 = v82;
          v73 += 2;
          v67 += 2;
          v57 = __CFADD__(v75++, 1);
        }

        while (!v57);
      }

      v15 = (v15 + v14);
      v22 = (v22 + v59);
      ++v58;
    }

    while (v58 != v37);
    v83 = 2 * v37;
  }

  else
  {
    v83 = 0;
  }

  if ((v83 | (v11 & 1)) < v26)
  {
    if (v38)
    {
      v84 = *v15;
      v85 = v84 >> 6;
      v86 = v15[1];
      v87 = v86 >> 6;
      if (v84 >> 6 >= 0x3C0)
      {
        v85 = 960;
      }

      if (v84 < 0x1000)
      {
        v85 = 64;
      }

      if (v87 >= 0x3C0)
      {
        v87 = 960;
      }

      if (v86 >= 0x1000)
      {
        v88 = v87;
      }

      else
      {
        v88 = 64;
      }

      v15 += 2;
      *v22 = (613566757 * ((-4194240 - v85 + (v85 << 16)) >> 7)) >> 32;
      v22[1] = (613566757 * ((-4194240 - v88 + (v88 << 16)) >> 7)) >> 32;
      v22 += 2;
    }

    if (v39)
    {
      if (v24 < v23)
      {
        v23 = v24;
      }

      v89 = v23 - v9;
      if (v23 >> 1 >= v89 >> 1)
      {
        v90 = v89 >> 1;
      }

      else
      {
        v90 = v23 >> 1;
      }

      v91 = -v90;
      do
      {
        v92 = *v15;
        v93 = v92 >> 6;
        v94 = v15[1];
        if (v92 >> 6 >= 0x3C0)
        {
          v93 = 960;
        }

        if (v92 >= 0x1000)
        {
          v95 = v93;
        }

        else
        {
          v95 = 64;
        }

        if (v94 >> 6 >= 0x3C0)
        {
          v96 = 960;
        }

        else
        {
          v96 = v94 >> 6;
        }

        if (v94 < 0x1000)
        {
          v96 = 64;
        }

        *v22 = (613566757 * ((-4194240 - v95 + (v95 << 16)) >> 7)) >> 32;
        v22[1] = (613566757 * ((-4194240 - v96 + (v96 << 16)) >> 7)) >> 32;
        v22 += 2;
        v15 += 2;
        v57 = __CFADD__(v91++, 1);
      }

      while (!v57);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_sv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = v8 & 1;
  v13 = v12 + v8;
  v14 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v15 = a4[1];
  v16 = (a3[1] + v15 * ((v12 + v8) >> 1) + ((2 * (v10 + v9)) & 0xFFFFFFFFFFFFFFFCLL));
  v17 = (*(a6 + 32) & 1) + *(a6 + 32);
  v18 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v19 = (*(a6 + 40) & 1) + *(a6 + 40);
  v20 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v21 = 2 * v17;
  v22 = a8[1];
  v23 = (a7[1] + ((v22 * v19) >> 1) + ((2 * v17) & 0x7FFFFFFFFFFFFFFELL));
  v24 = v11 - (v10 + v9);
  v25 = v18 - v17;
  if (v24 >= v18 - v17)
  {
    v26 = v18 - v17;
  }

  else
  {
    v26 = v24;
  }

  v27 = v14 - v13;
  v28 = v20 - v19;
  if (v27 >= v28)
  {
    v27 = v28;
  }

  if (v27)
  {
    v29 = 0;
    v30 = *a4;
    v31 = *a8;
    v32 = *a3 + v30 * v13;
    if (v13 >= v8)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30;
    }

    v34 = v32 + 2 * (v10 + v9) + v33;
    v35 = *a7 + v31 * v19 + v21;
    if (v25 >= v24)
    {
      v36 = v24;
    }

    else
    {
      v36 = v25;
    }

    do
    {
      if (v26)
      {
        v37 = 0;
        do
        {
          *(v35 + 2 * v37) = *(v34 + 2 * v37) & 0xFFC0;
          ++v37;
        }

        while (v36 != v37);
      }

      v34 += v30;
      v35 += v31;
      ++v29;
    }

    while (v29 != v27);
  }

  v38 = v27 >> 1;
  if (v27 >> 1 >= (v27 - v12) >> 1)
  {
    v38 = (v27 - v12) >> 1;
  }

  v39 = v26 >> 1;
  v40 = v26 - v10;
  if (v39 >= v40 >> 1)
  {
    v41 = v40 >> 1;
  }

  else
  {
    v41 = v39;
  }

  if (v12)
  {
    if (v9)
    {
      v44 = v16[1] & 0xFFC0;
      v43 = v16 + 2;
      *v23 = *v16 & 0xFFC0;
      v23[1] = v44;
      v42 = v23 + 2;
      if (!v41)
      {
LABEL_36:
        v16 = (v16 + v15);
        v23 = (v23 + v22);
        goto LABEL_37;
      }
    }

    else
    {
      v42 = v23;
      v43 = v16;
      if (!v41)
      {
        goto LABEL_36;
      }
    }

    if (v25 >= v24)
    {
      v45 = v24;
    }

    else
    {
      v45 = v25;
    }

    v46 = v45 >> 1;
    v47 = v45 - v10;
    if (v46 >= v47 >> 1)
    {
      v48 = v47 >> 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = -v48;
    do
    {
      v50 = v43[1] & 0xFFC0;
      *v42 = *v43 & 0xFFC0;
      v42[1] = v50;
      v42 += 2;
      v43 += 2;
      v51 = __CFADD__(v49++, 1);
    }

    while (!v51);
    goto LABEL_36;
  }

LABEL_37:
  if (v38)
  {
    v52 = 0;
    if (v25 < v24)
    {
      v24 = v25;
    }

    v53 = v24 - v10;
    if (v24 >> 1 >= v53 >> 1)
    {
      v54 = v53 >> 1;
    }

    else
    {
      v54 = v24 >> 1;
    }

    v55 = -v54;
    do
    {
      v56 = v23;
      v57 = v16;
      if (v9)
      {
        v58 = v16[1] & 0xFFC0;
        v57 = v16 + 2;
        *v23 = *v16 & 0xFFC0;
        v23[1] = v58;
        v56 = v23 + 2;
      }

      if (v41)
      {
        v59 = v55;
        do
        {
          v60 = v57[1] & 0xFFC0;
          *v56 = *v57 & 0xFFC0;
          v56[1] = v60;
          v56 += 2;
          v57 += 2;
          v51 = __CFADD__(v59++, 1);
        }

        while (!v51);
      }

      v16 = (v16 + v15);
      v23 = (v23 + v22);
      ++v52;
    }

    while (v52 != v38);
  }

  return 0;
}

uint64_t vt_Copy_x420_sf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = v8 & 1;
  v11 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v12 = (v9 & 1) + v9;
  v13 = (*(a2 + 24) + v9) & 0xFFFFFFFE;
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v12 >> 1) + ((2 * (v10 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 40) & 1) + *(a6 + 40);
  v19 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v20 = 2 * v16;
  v21 = a8[1];
  v22 = (a7[1] + ((v21 * v18) >> 1) + ((2 * v16) & 0x7FFFFFFFFFFFFFFELL));
  v23 = v11 - (v10 + v8);
  v24 = v17 - v16;
  if (v23 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v11 - (v10 + v8);
  }

  v26 = v13 - v12;
  if (v13 - v12 >= v19 - v18)
  {
    v26 = v19 - v18;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *a4;
    v29 = *a8;
    v30 = *a3 + v28 * v12;
    if (v12 >= v9)
    {
      v31 = 0;
    }

    else
    {
      v31 = v28;
    }

    v32 = v30 + 2 * (v10 + v8) + v31;
    v33 = *a7 + v29 * v18 + v20;
    if (v24 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v24;
    }

    do
    {
      if (v25)
      {
        v35 = 0;
        do
        {
          v36 = *(v32 + 2 * v35) >> 6;
          if (v36 >= 0x3AC)
          {
            v36 = 940;
          }

          if (v36 <= 0x40)
          {
            v36 = 64;
          }

          *(v33 + 2 * v35++) = (-4194240 - v36 + (v36 << 16)) / 0x36C;
        }

        while (v34 != v35);
      }

      v32 += v28;
      v33 += v29;
      ++v27;
    }

    while (v27 != v26);
  }

  v37 = v26 >> 1;
  v38 = v26 - (v9 & 1);
  if (v37 >= v38 >> 1)
  {
    v39 = v38 >> 1;
  }

  else
  {
    v39 = v37;
  }

  v40 = v25 >> 1;
  v41 = v25 - v10;
  if (v40 >= v41 >> 1)
  {
    v42 = v41 >> 1;
  }

  else
  {
    v42 = v40;
  }

  if (v9)
  {
    if (v8)
    {
      v45 = *v15;
      v46 = v45 >> 6;
      v47 = v15[1];
      v48 = v47 >> 6;
      if (v45 >> 6 >= 0x3C0)
      {
        v46 = 960;
      }

      if (v45 < 0x1000)
      {
        v46 = 64;
      }

      if (v48 >= 0x3C0)
      {
        v48 = 960;
      }

      if (v47 >= 0x1000)
      {
        v49 = v48;
      }

      else
      {
        v49 = 64;
      }

      v44 = v15 + 2;
      *v22 = (613566757 * ((-4194240 - v46 + (v46 << 16)) >> 7)) >> 32;
      v22[1] = (613566757 * ((-4194240 - v49 + (v49 << 16)) >> 7)) >> 32;
      v43 = v22 + 2;
      if (!v42)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v43 = v22;
      v44 = v15;
      if (!v42)
      {
LABEL_60:
        v15 = (v15 + v14);
        v22 = (v22 + v21);
        goto LABEL_61;
      }
    }

    if (v24 >= v23)
    {
      v50 = v23;
    }

    else
    {
      v50 = v24;
    }

    v51 = v50 >> 1;
    v52 = v50 - v10;
    if (v51 >= v52 >> 1)
    {
      v53 = v52 >> 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = -v53;
    do
    {
      v55 = *v44;
      v56 = v55 >> 6;
      v57 = v44[1];
      if (v55 >> 6 >= 0x3C0)
      {
        v56 = 960;
      }

      if (v55 >= 0x1000)
      {
        v58 = v56;
      }

      else
      {
        v58 = 64;
      }

      if (v57 >> 6 >= 0x3C0)
      {
        v59 = 960;
      }

      else
      {
        v59 = v57 >> 6;
      }

      if (v57 < 0x1000)
      {
        v59 = 64;
      }

      *v43 = (613566757 * ((-4194240 - v58 + (v58 << 16)) >> 7)) >> 32;
      v43[1] = (613566757 * ((-4194240 - v59 + (v59 << 16)) >> 7)) >> 32;
      v43 += 2;
      v44 += 2;
      v60 = __CFADD__(v54++, 1);
    }

    while (!v60);
    goto LABEL_60;
  }

LABEL_61:
  if (v39)
  {
    v61 = 0;
    if (v24 < v23)
    {
      v23 = v24;
    }

    v62 = v23 - v10;
    if (v23 >> 1 >= v62 >> 1)
    {
      v63 = v62 >> 1;
    }

    else
    {
      v63 = v23 >> 1;
    }

    v64 = -v63;
    do
    {
      v65 = v22;
      v66 = v15;
      if (v8)
      {
        v67 = *v15;
        v68 = v67 >> 6;
        v69 = v15[1];
        if (v67 >> 6 >= 0x3C0)
        {
          v68 = 960;
        }

        if (v67 < 0x1000)
        {
          v68 = 64;
        }

        if (v69 >> 6 >= 0x3C0)
        {
          v70 = 960;
        }

        else
        {
          v70 = v69 >> 6;
        }

        if (v69 >= 0x1000)
        {
          v71 = v70;
        }

        else
        {
          v71 = 64;
        }

        v66 = v15 + 2;
        *v22 = (613566757 * ((-4194240 - v68 + (v68 << 16)) >> 7)) >> 32;
        v22[1] = (613566757 * ((-4194240 - v71 + (v71 << 16)) >> 7)) >> 32;
        v65 = v22 + 2;
      }

      if (v42)
      {
        v72 = v64;
        do
        {
          v73 = *v66;
          v74 = v73 >> 6;
          v75 = v66[1];
          if (v73 >> 6 >= 0x3C0)
          {
            v74 = 960;
          }

          if (v73 >= 0x1000)
          {
            v76 = v74;
          }

          else
          {
            v76 = 64;
          }

          if (v75 >> 6 >= 0x3C0)
          {
            v77 = 960;
          }

          else
          {
            v77 = v75 >> 6;
          }

          if (v75 < 0x1000)
          {
            v77 = 64;
          }

          *v65 = (613566757 * ((-4194240 - v76 + (v76 << 16)) >> 7)) >> 32;
          v65[1] = (613566757 * ((-4194240 - v77 + (v77 << 16)) >> 7)) >> 32;
          v65 += 2;
          v66 += 2;
          v60 = __CFADD__(v72++, 1);
        }

        while (!v60);
      }

      v15 = (v15 + v14);
      v22 = (v22 + v21);
      ++v61;
    }

    while (v61 != v39);
  }

  return 0;
}

uint64_t vt_Copy_x420_t4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[2] + v9;
  v11 = v8 & 0xFFFFFFFE;
  v12 = a2[3] + v8;
  v13 = a4[1];
  v14 = (a3[1] + v13 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v15 = a6[4];
  v16 = a6[5];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a8[1];
  v20 = (a7[1] + v19 * v16 + 4 * v15);
  v21 = v10 - (v9 & 0xFFFFFFFE) + (v10 & 1);
  if (v21 >= v17)
  {
    v21 = v17;
  }

  v22 = v12 - v11 + (v12 & 1);
  if (v22 >= v18)
  {
    v22 = v18;
  }

  if (v22)
  {
    v23 = 0;
    v24 = *a4;
    v25 = *a3 + *a4 * v11;
    if (v11 == v8)
    {
      v26 = 0;
    }

    else
    {
      v26 = *a4;
    }

    v27 = 2 * (v9 & 0xFFFFFFFE) + v26;
    v28 = *a8;
    v29 = a8[2];
    v30 = v25 + v27;
    v31 = a7[2] + v29 * v16 + 2 * v15;
    v32 = *a7 + *a8 * v16 + 2 * v15;
    do
    {
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *(v31 + 2 * i) = -1;
          *(v32 + 2 * i) = *(v30 + 2 * i) & 0xFFC0;
        }
      }

      v30 += v24;
      v32 += v28;
      v31 += v29;
      ++v23;
    }

    while (v23 != v22);
  }

  v34 = v8 & 1;
  if (v22 >> 1 >= (v22 - v34) >> 1)
  {
    v35 = (v22 - (v8 & 1)) >> 1;
  }

  else
  {
    v35 = v22 >> 1;
  }

  v36 = v9;
  v37 = v21 >> 1;
  v38 = v9 & 1;
  v39 = (v21 - v38) >> 1;
  if (v21 >> 1 >= v39)
  {
    v40 = (v21 - v38) >> 1;
  }

  else
  {
    v40 = v21 >> 1;
  }

  if (v8)
  {
    if (v36)
    {
      v42 = v14 + 2;
      v49 = v14[1] & 0xFFC0;
      *v20 = *v14 & 0xFFC0;
      v20[1] = v49;
      v41 = v20 + 2;
      if (v40)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v41 = v20;
      v42 = v14;
      if (v40)
      {
LABEL_23:
        if (v37 >= v39)
        {
          v43 = (v21 - v38) >> 1;
        }

        else
        {
          v43 = v21 >> 1;
        }

        v44 = -v43;
        do
        {
          v45 = *v42;
          v46 = v42[1];
          v42 += 2;
          *v41 = v45 & 0xFFC0;
          v41[1] = v46 & 0xFFC0;
          v41 += 2;
          v47 = __CFADD__(v44++, 1);
        }

        while (!v47);
        v48 = 2 * v40;
        goto LABEL_32;
      }
    }

    v48 = 0;
LABEL_32:
    if ((v48 | v38) < v21)
    {
      v50 = *v42 & 0xFFC0;
      v51 = v42[1] & 0xFFC0;
      *v41 = v50;
      v41[1] = v51;
    }

    v14 = (v14 + v13);
    v20 = (v20 + v19);
  }

  if (v35)
  {
    v52 = 0;
    if (v37 >= v39)
    {
      v53 = (v21 - v38) >> 1;
    }

    else
    {
      v53 = v21 >> 1;
    }

    v54 = -v53;
    do
    {
      v55 = v20;
      v56 = v14;
      if (v36)
      {
        v56 = v14 + 2;
        v57 = *v14 & 0xFFC0;
        v58 = v14[1] & 0xFFC0;
        *v20 = v57;
        v20[1] = v58;
        v59 = (v20 + v19);
        *v59 = v57;
        v59[1] = v58;
        v55 = v20 + 2;
      }

      if (v40)
      {
        v60 = v55 + 2;
        v61 = (v55 + v19 + 4);
        v62 = v54;
        do
        {
          v63 = *v56;
          v64 = v56[1];
          v56 += 2;
          v63 &= 0xFFC0u;
          v64 &= 0xFFC0u;
          *(v60 - 2) = v63;
          *(v60 - 1) = v64;
          *v60 = v63;
          v60[1] = v64;
          *(v61 - 2) = v63;
          *(v61 - 1) = v64;
          *v61 = v63;
          v61[1] = v64;
          v60 += 4;
          v61 += 4;
          v47 = __CFADD__(v62++, 1);
        }

        while (!v47);
        v55 = v60 - 2;
        v65 = 2 * v40;
      }

      else
      {
        v65 = 0;
      }

      if ((v65 | v38) < v21)
      {
        v66 = *v56 & 0xFFC0;
        v67 = v56[1] & 0xFFC0;
        *v55 = v66;
        v55[1] = v67;
        v68 = (v55 + v19);
        *v68 = v66;
        v68[1] = v67;
      }

      v14 = (v14 + v13);
      v20 += v19;
      ++v52;
    }

    while (v52 != v35);
    v69 = 2 * v35;
  }

  else
  {
    v69 = 0;
  }

  if ((v69 | v34) < v22)
  {
    if (v36)
    {
      v70 = *v14;
      v71 = v14[1];
      v14 += 2;
      *v20 = v70 & 0xFFC0;
      v20[1] = v71 & 0xFFC0;
      v20 += 2;
    }

    if (v40)
    {
      if (v37 >= v39)
      {
        v72 = (v21 - v38) >> 1;
      }

      else
      {
        v72 = v21 >> 1;
      }

      v73 = -v72;
      do
      {
        v74 = *v14;
        v75 = v14[1];
        v14 += 2;
        *v20 = v74 & 0xFFC0;
        v20[1] = v75 & 0xFFC0;
        v20 += 2;
        v47 = __CFADD__(v73++, 1);
      }

      while (!v47);
      v76 = 2 * v40;
    }

    else
    {
      v76 = 0;
    }

    if ((v76 | v38) < v21)
    {
      v77 = *v14 & 0xFFC0;
      v78 = v14[1] & 0xFFC0;
      *v20 = v77;
      v20[1] = v78;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_tv44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[2] + v9;
  v11 = v8 & 0xFFFFFFFE;
  v12 = a2[3] + v8;
  v13 = a4[1];
  v14 = (a3[1] + v13 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v15 = a6[4];
  v16 = a6[5];
  v18 = a6[2];
  v17 = a6[3];
  v19 = a8[1];
  v20 = (a7[1] + v19 * v16 + 4 * v15);
  v21 = v10 - (v9 & 0xFFFFFFFE) + (v10 & 1);
  if (v21 >= v18)
  {
    v21 = v18;
  }

  v22 = v12 - v11 + (v12 & 1);
  if (v22 >= v17)
  {
    v22 = v17;
  }

  if (v22)
  {
    v23 = 0;
    v24 = *a4;
    v25 = *a8;
    v26 = *a3 + *a4 * v11;
    if (v11 == v8)
    {
      v27 = 0;
    }

    else
    {
      v27 = *a4;
    }

    v28 = v26 + 2 * (v9 & 0xFFFFFFFE) + v27;
    v29 = *a7 + v25 * v16 + 2 * v15;
    do
    {
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          *(v29 + 2 * i) = *(v28 + 2 * i) & 0xFFC0;
        }
      }

      v28 += v24;
      v29 += v25;
      ++v23;
    }

    while (v23 != v22);
  }

  v31 = v8 & 1;
  if (v22 >> 1 >= (v22 - v31) >> 1)
  {
    v32 = (v22 - (v8 & 1)) >> 1;
  }

  else
  {
    v32 = v22 >> 1;
  }

  v33 = v9;
  v34 = v21 >> 1;
  v35 = v9 & 1;
  v36 = (v21 - v35) >> 1;
  if (v21 >> 1 >= v36)
  {
    v37 = (v21 - v35) >> 1;
  }

  else
  {
    v37 = v21 >> 1;
  }

  if (v8)
  {
    if (v33)
    {
      v39 = v14 + 2;
      v46 = v14[1] & 0xFFC0;
      *v20 = *v14 & 0xFFC0;
      v20[1] = v46;
      v38 = v20 + 2;
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v38 = v20;
      v39 = v14;
      if (v37)
      {
LABEL_23:
        if (v34 >= v36)
        {
          v40 = (v21 - v35) >> 1;
        }

        else
        {
          v40 = v21 >> 1;
        }

        v41 = -v40;
        do
        {
          v42 = *v39;
          v43 = v39[1];
          v39 += 2;
          *v38 = v42 & 0xFFC0;
          v38[1] = v43 & 0xFFC0;
          v38 += 2;
          v44 = __CFADD__(v41++, 1);
        }

        while (!v44);
        v45 = 2 * v37;
        goto LABEL_32;
      }
    }

    v45 = 0;
LABEL_32:
    if ((v45 | v35) < v21)
    {
      v47 = *v39 & 0xFFC0;
      v48 = v39[1] & 0xFFC0;
      *v38 = v47;
      v38[1] = v48;
    }

    v14 = (v14 + v13);
    v20 = (v20 + v19);
  }

  if (v32)
  {
    v49 = 0;
    if (v34 >= v36)
    {
      v50 = (v21 - v35) >> 1;
    }

    else
    {
      v50 = v21 >> 1;
    }

    v51 = -v50;
    do
    {
      v52 = v20;
      v53 = v14;
      if (v33)
      {
        v53 = v14 + 2;
        v54 = *v14 & 0xFFC0;
        v55 = v14[1] & 0xFFC0;
        *v20 = v54;
        v20[1] = v55;
        v56 = (v20 + v19);
        *v56 = v54;
        v56[1] = v55;
        v52 = v20 + 2;
      }

      if (v37)
      {
        v57 = v52 + 2;
        v58 = (v52 + v19 + 4);
        v59 = v51;
        do
        {
          v60 = *v53;
          v61 = v53[1];
          v53 += 2;
          v60 &= 0xFFC0u;
          v61 &= 0xFFC0u;
          *(v57 - 2) = v60;
          *(v57 - 1) = v61;
          *v57 = v60;
          v57[1] = v61;
          *(v58 - 2) = v60;
          *(v58 - 1) = v61;
          *v58 = v60;
          v58[1] = v61;
          v57 += 4;
          v58 += 4;
          v44 = __CFADD__(v59++, 1);
        }

        while (!v44);
        v52 = v57 - 2;
        v62 = 2 * v37;
      }

      else
      {
        v62 = 0;
      }

      if ((v62 | v35) < v21)
      {
        v63 = *v53 & 0xFFC0;
        v64 = v53[1] & 0xFFC0;
        *v52 = v63;
        v52[1] = v64;
        v65 = (v52 + v19);
        *v65 = v63;
        v65[1] = v64;
      }

      v14 = (v14 + v13);
      v20 += v19;
      ++v49;
    }

    while (v49 != v32);
    v66 = 2 * v32;
  }

  else
  {
    v66 = 0;
  }

  if ((v66 | v31) < v22)
  {
    if (v33)
    {
      v67 = *v14;
      v68 = v14[1];
      v14 += 2;
      *v20 = v67 & 0xFFC0;
      v20[1] = v68 & 0xFFC0;
      v20 += 2;
    }

    if (v37)
    {
      if (v34 >= v36)
      {
        v69 = (v21 - v35) >> 1;
      }

      else
      {
        v69 = v21 >> 1;
      }

      v70 = -v69;
      do
      {
        v71 = *v14;
        v72 = v14[1];
        v14 += 2;
        *v20 = v71 & 0xFFC0;
        v20[1] = v72 & 0xFFC0;
        v20 += 2;
        v44 = __CFADD__(v70++, 1);
      }

      while (!v44);
      v73 = 2 * v37;
    }

    else
    {
      v73 = 0;
    }

    if ((v73 | v35) < v21)
    {
      v74 = *v14 & 0xFFC0;
      v75 = v14[1] & 0xFFC0;
      *v20 = v74;
      v20[1] = v75;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_tf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[3];
  v11 = a2[2] + v9;
  v12 = v8 & 0xFFFFFFFE;
  v13 = v10 + v8;
  v14 = (v10 + v8) & 1;
  v15 = a4[1];
  v16 = (a3[1] + v15 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v17 = a6[4];
  v18 = a6[5];
  v20 = a6[2];
  v19 = a6[3];
  v21 = a8[1];
  v22 = (a7[1] + v21 * v18 + 4 * v17);
  v23 = v11 - (v9 & 0xFFFFFFFE) + (v11 & 1);
  if (v23 >= v20)
  {
    v23 = v20;
  }

  if (v13 - v12 + v14 >= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v13 - v12 + v14;
  }

  if (v24)
  {
    v25 = 0;
    v26 = *a4;
    v27 = *a3 + *a4 * v12;
    if (v12 == v8)
    {
      v28 = 0;
    }

    else
    {
      v28 = *a4;
    }

    v29 = *a8;
    v30 = v27 + 2 * (v9 & 0xFFFFFFFE) + v28;
    v31 = *a7 + *a8 * v18 + 2 * v17;
    do
    {
      if (v23)
      {
        for (i = 0; i != v23; ++i)
        {
          v33 = *(v30 + 2 * i) >> 6;
          if (v33 >= 0x3AC)
          {
            v33 = 940;
          }

          if (v33 <= 0x40)
          {
            v33 = 64;
          }

          *(v31 + 2 * i) = 16 * ((-262080 - v33 + (v33 << 12)) / 0x36C);
        }
      }

      v30 += v26;
      v31 += v29;
      ++v25;
    }

    while (v25 != v24);
  }

  v34 = v8 & 1;
  if (v24 >> 1 >= (v24 - v34) >> 1)
  {
    v35 = (v24 - (v8 & 1)) >> 1;
  }

  else
  {
    v35 = v24 >> 1;
  }

  v36 = v9;
  v37 = v23 >> 1;
  v38 = v9 & 1;
  v39 = (v23 - v38) >> 1;
  if (v23 >> 1 >= v39)
  {
    v40 = (v23 - v38) >> 1;
  }

  else
  {
    v40 = v23 >> 1;
  }

  if (v8)
  {
    if (v36)
    {
      v52 = *v16;
      v53 = v52 >> 6;
      v54 = v16[1];
      if (v52 >> 6 >= 0x3C0)
      {
        v53 = 960;
      }

      if (v52 >= 0x1000)
      {
        v55 = v53;
      }

      else
      {
        v55 = 64;
      }

      if (v54 >> 6 >= 0x3C0)
      {
        v56 = 960;
      }

      else
      {
        v56 = v54 >> 6;
      }

      if (v54 >= 0x1000)
      {
        v57 = v56;
      }

      else
      {
        v57 = 64;
      }

      v42 = v16 + 2;
      *v22 = 16 * ((613566757 * ((-262080 - v55 + (v55 << 12)) >> 7)) >> 32);
      v22[1] = 16 * ((613566757 * ((-262080 - v57 + (v57 << 12)) >> 7)) >> 32);
      v41 = v22 + 2;
      if (v40)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v41 = v22;
      v42 = v16;
      if (v40)
      {
LABEL_28:
        if (v37 >= v39)
        {
          v43 = (v23 - v38) >> 1;
        }

        else
        {
          v43 = v23 >> 1;
        }

        v44 = -v43;
        do
        {
          v45 = *v42;
          v46 = v45 >> 6;
          v47 = v42[1];
          if (v45 >> 6 >= 0x3C0)
          {
            v46 = 960;
          }

          if (v45 >= 0x1000)
          {
            v48 = v46;
          }

          else
          {
            v48 = 64;
          }

          if (v47 >> 6 >= 0x3C0)
          {
            v49 = 960;
          }

          else
          {
            v49 = v47 >> 6;
          }

          if (v47 < 0x1000)
          {
            v49 = 64;
          }

          v42 += 2;
          *v41 = 16 * ((613566757 * ((-262080 - v48 + (v48 << 12)) >> 7)) >> 32);
          v41[1] = 16 * ((613566757 * ((-262080 - v49 + (v49 << 12)) >> 7)) >> 32);
          v41 += 2;
          v50 = __CFADD__(v44++, 1);
        }

        while (!v50);
        v51 = 2 * v40;
        goto LABEL_58;
      }
    }

    v51 = 0;
LABEL_58:
    if ((v51 | v38) < v23)
    {
      v58 = *v42;
      v59 = v58 >> 6;
      v60 = v42[1];
      v61 = v60 >> 6;
      if (v58 >> 6 >= 0x3C0)
      {
        v59 = 960;
      }

      if (v58 < 0x1000)
      {
        v59 = 64;
      }

      if (v61 >= 0x3C0)
      {
        v61 = 960;
      }

      if (v60 >= 0x1000)
      {
        v62 = v61;
      }

      else
      {
        v62 = 64;
      }

      *v41 = 16 * ((613566757 * ((-262080 - v59 + (v59 << 12)) >> 7)) >> 32);
      v41[1] = 16 * ((613566757 * ((-262080 - v62 + (v62 << 12)) >> 7)) >> 32);
    }

    v16 = (v16 + v15);
    v22 = (v22 + v21);
  }

  if (v35)
  {
    v115 = v34;
    v63 = 0;
    if (v37 >= v39)
    {
      v64 = (v23 - v38) >> 1;
    }

    else
    {
      v64 = v23 >> 1;
    }

    v65 = -v64;
    do
    {
      v66 = v22;
      v67 = v16;
      if (v36)
      {
        v68 = *v16;
        v69 = v68 >> 6;
        v70 = v16[1];
        if (v68 >> 6 >= 0x3C0)
        {
          v69 = 960;
        }

        if (v68 < 0x1000)
        {
          v69 = 64;
        }

        if (v70 >> 6 >= 0x3C0)
        {
          v71 = 960;
        }

        else
        {
          v71 = v70 >> 6;
        }

        if (v70 >= 0x1000)
        {
          v72 = v71;
        }

        else
        {
          v72 = 64;
        }

        v67 = v16 + 2;
        v73 = 16 * ((613566757 * ((-262080 - v69 + (v69 << 12)) >> 7)) >> 32);
        *v22 = v73;
        v74 = 16 * ((613566757 * ((-262080 - v72 + (v72 << 12)) >> 7)) >> 32);
        v22[1] = v74;
        v75 = (v22 + v21);
        *v75 = v73;
        v75[1] = v74;
        v66 = v22 + 2;
      }

      if (v40)
      {
        v76 = v66 + 2;
        v77 = (v66 + v21 + 4);
        v78 = v65;
        do
        {
          v79 = *v67;
          v80 = v79 >> 6;
          v81 = v67[1];
          v82 = v81 >> 6;
          if (v79 >> 6 >= 0x3C0)
          {
            v80 = 960;
          }

          if (v79 >= 0x1000)
          {
            v83 = v80;
          }

          else
          {
            v83 = 64;
          }

          if (v82 >= 0x3C0)
          {
            v82 = 960;
          }

          if (v81 < 0x1000)
          {
            v82 = 64;
          }

          v84 = 16 * ((613566757 * ((-262080 - v83 + (v83 << 12)) >> 7)) >> 32);
          *(v76 - 2) = v84;
          v85 = 16 * ((613566757 * ((-262080 - v82 + (v82 << 12)) >> 7)) >> 32);
          *(v76 - 1) = v85;
          *v76 = v84;
          v76[1] = v85;
          *(v77 - 2) = v84;
          *(v77 - 1) = v85;
          v67 += 2;
          *v77 = v84;
          v77[1] = v85;
          v76 += 4;
          v77 += 4;
          v50 = __CFADD__(v78++, 1);
        }

        while (!v50);
        v66 = v76 - 2;
        v86 = 2 * v40;
      }

      else
      {
        v86 = 0;
      }

      if ((v86 | v38) < v23)
      {
        v87 = *v67;
        v88 = v87 >> 6;
        v89 = v67[1];
        if (v87 >> 6 >= 0x3C0)
        {
          v88 = 960;
        }

        if (v87 >= 0x1000)
        {
          v90 = v88;
        }

        else
        {
          v90 = 64;
        }

        if (v89 >> 6 >= 0x3C0)
        {
          v91 = 960;
        }

        else
        {
          v91 = v89 >> 6;
        }

        if (v89 >= 0x1000)
        {
          v92 = v91;
        }

        else
        {
          v92 = 64;
        }

        v93 = 16 * ((613566757 * ((-262080 - v90 + (v90 << 12)) >> 7)) >> 32);
        *v66 = v93;
        v94 = 16 * ((613566757 * ((-262080 - v92 + (v92 << 12)) >> 7)) >> 32);
        v66[1] = v94;
        v95 = (v66 + v21);
        *v95 = v93;
        v95[1] = v94;
      }

      v16 = (v16 + v15);
      v22 += v21;
      ++v63;
    }

    while (v63 != v35);
    v96 = 2 * v35;
    v34 = v115;
  }

  else
  {
    v96 = 0;
  }

  if ((v96 | v34) < v24)
  {
    if (v36)
    {
      v97 = *v16;
      v98 = v97 >> 6;
      v99 = v16[1];
      v100 = v99 >> 6;
      if (v97 >> 6 >= 0x3C0)
      {
        v98 = 960;
      }

      if (v97 < 0x1000)
      {
        v98 = 64;
      }

      if (v100 >= 0x3C0)
      {
        v100 = 960;
      }

      if (v99 >= 0x1000)
      {
        v101 = v100;
      }

      else
      {
        v101 = 64;
      }

      v16 += 2;
      *v22 = 16 * ((613566757 * ((-262080 - v98 + (v98 << 12)) >> 7)) >> 32);
      v22[1] = 16 * ((613566757 * ((-262080 - v101 + (v101 << 12)) >> 7)) >> 32);
      v22 += 2;
    }

    if (v40)
    {
      if (v37 >= v39)
      {
        v102 = (v23 - v38) >> 1;
      }

      else
      {
        v102 = v23 >> 1;
      }

      v103 = -v102;
      do
      {
        v104 = *v16;
        v105 = v104 >> 6;
        v106 = v16[1];
        if (v104 >> 6 >= 0x3C0)
        {
          v105 = 960;
        }

        if (v104 >= 0x1000)
        {
          v107 = v105;
        }

        else
        {
          v107 = 64;
        }

        if (v106 >> 6 >= 0x3C0)
        {
          v108 = 960;
        }

        else
        {
          v108 = v106 >> 6;
        }

        if (v106 < 0x1000)
        {
          v108 = 64;
        }

        v16 += 2;
        *v22 = 16 * ((613566757 * ((-262080 - v107 + (v107 << 12)) >> 7)) >> 32);
        v22[1] = 16 * ((613566757 * ((-262080 - v108 + (v108 << 12)) >> 7)) >> 32);
        v22 += 2;
        v50 = __CFADD__(v103++, 1);
      }

      while (!v50);
      v40 *= 2;
    }

    if ((v40 | v38) < v23)
    {
      v109 = *v16;
      v110 = v109 >> 6;
      v111 = v16[1];
      v112 = v111 >> 6;
      if (v109 >> 6 >= 0x3C0)
      {
        v110 = 960;
      }

      if (v109 < 0x1000)
      {
        v110 = 64;
      }

      if (v112 >= 0x3C0)
      {
        v112 = 960;
      }

      if (v111 >= 0x1000)
      {
        v113 = v112;
      }

      else
      {
        v113 = 64;
      }

      *v22 = 16 * ((613566757 * ((-262080 - v110 + (v110 << 12)) >> 7)) >> 32);
      v22[1] = 16 * ((613566757 * ((-262080 - v113 + (v113 << 12)) >> 7)) >> 32);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_t2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = *(a2 + 40);
  v13 = v12 & 0xFFFFFFFE;
  v14 = v8 + v12;
  v15 = (v8 + v12) & 1;
  v16 = a4[1];
  v17 = (a3[1] + v16 * (v12 >> 1) + ((2 * (v10 + v9)) & 0xFFFFFFFFFFFFFFFCLL));
  v18 = *(a6 + 24);
  v19 = (*(a6 + 32) & 1) + *(a6 + 32);
  v20 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v21 = *(a6 + 40);
  v22 = 2 * v19;
  v23 = a8[1];
  v24 = (a7[1] + v23 * v21 + ((2 * v19) & 0x7FFFFFFFFFFFFFFELL));
  v25 = v11 - (v10 + v9);
  v26 = v20 - v19;
  if (v25 >= v20 - v19)
  {
    v27 = v20 - v19;
  }

  else
  {
    v27 = v25;
  }

  v28 = v14 - v13 + v15;
  if (v28 >= v18)
  {
    v28 = v18;
  }

  if (v28)
  {
    v29 = 0;
    v30 = *a4;
    v31 = *a3 + *a4 * v13;
    if (v13 == v12)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30;
    }

    v33 = 2 * (v10 + v9) + v32;
    v34 = *a8;
    v35 = a8[2];
    v36 = v31 + v33;
    v37 = a7[2] + v35 * v21 + v22;
    v38 = *a7 + v34 * v21 + v22;
    if (v26 >= v25)
    {
      v39 = v25;
    }

    else
    {
      v39 = v20 - v19;
    }

    do
    {
      if (v27)
      {
        v40 = 0;
        do
        {
          *(v37 + 2 * v40) = -1;
          *(v38 + 2 * v40) = *(v36 + 2 * v40) & 0xFFC0;
          ++v40;
        }

        while (v39 != v40);
      }

      v36 += v30;
      v38 += v34;
      v37 += v35;
      ++v29;
    }

    while (v29 != v28);
  }

  v41 = v12 & 1;
  if (v28 >> 1 >= (v28 - v41) >> 1)
  {
    v42 = (v28 - (v12 & 1)) >> 1;
  }

  else
  {
    v42 = v28 >> 1;
  }

  v43 = v9;
  v44 = v27 >> 1;
  if (v27 >> 1 >= (v27 - v10) >> 1)
  {
    v44 = (v27 - v10) >> 1;
  }

  if (v12)
  {
    if (v43)
    {
      v46 = v17 + 2;
      v47 = v17[1] & 0xFFC0;
      *v24 = *v17 & 0xFFC0;
      v24[1] = v47;
      v45 = v24 + 2;
      if (!v44)
      {
LABEL_36:
        v17 = (v17 + v16);
        v24 = (v24 + v23);
        goto LABEL_37;
      }
    }

    else
    {
      v45 = v24;
      v46 = v17;
      if (!v44)
      {
        goto LABEL_36;
      }
    }

    if (v26 >= v25)
    {
      v48 = v25;
    }

    else
    {
      v48 = v20 - v19;
    }

    v49 = v48 >> 1;
    v50 = v48 - v10;
    if (v49 >= v50 >> 1)
    {
      v51 = v50 >> 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = -v51;
    do
    {
      v53 = v46[1] & 0xFFC0;
      *v45 = *v46 & 0xFFC0;
      v45[1] = v53;
      v45 += 2;
      v46 += 2;
      v54 = __CFADD__(v52++, 1);
    }

    while (!v54);
    goto LABEL_36;
  }

LABEL_37:
  if (v42)
  {
    v55 = 0;
    v56 = 2 * v23;
    if (v26 >= v25)
    {
      v57 = v25;
    }

    else
    {
      v57 = v20 - v19;
    }

    v58 = v57 >> 1;
    v59 = v57 - v10;
    if (v58 >= v59 >> 1)
    {
      v60 = v59 >> 1;
    }

    else
    {
      v60 = v58;
    }

    v61 = -v60;
    v62 = v23 + 2;
    do
    {
      v63 = v24;
      v64 = v17;
      if (v43)
      {
        v64 = v17 + 2;
        v65 = v17[1] & 0xFFC0;
        *v24 = *v17 & 0xFFC0;
        v24[1] = v65;
        v63 = v24 + 2;
      }

      if (v44)
      {
        v66 = (v63 + v62);
        v67 = v63 + 1;
        v68 = v61;
        do
        {
          v69 = *v64 & 0xFFC0;
          v70 = v64[1] & 0xFFC0;
          *(v67 - 1) = v69;
          *v67 = v70;
          v67 += 2;
          *(v66 - 1) = v69;
          *v66 = v70;
          v66 += 2;
          v64 += 2;
          v54 = __CFADD__(v68++, 1);
        }

        while (!v54);
      }

      v17 = (v17 + v16);
      v24 = (v24 + v56);
      ++v55;
    }

    while (v55 != v42);
    v71 = 2 * v42;
  }

  else
  {
    v71 = 0;
  }

  if ((v71 | v41) < v28)
  {
    if (v43)
    {
      v72 = *v17;
      v73 = v17[1];
      v17 += 2;
      *v24 = v72 & 0xFFC0;
      v24[1] = v73 & 0xFFC0;
      v24 += 2;
    }

    if (v44)
    {
      if (v26 < v25)
      {
        v25 = v20 - v19;
      }

      v74 = v25 - v10;
      if (v25 >> 1 >= v74 >> 1)
      {
        v75 = v74 >> 1;
      }

      else
      {
        v75 = v25 >> 1;
      }

      v76 = -v75;
      do
      {
        v77 = v17[1] & 0xFFC0;
        *v24 = *v17 & 0xFFC0;
        v24[1] = v77;
        v24 += 2;
        v17 += 2;
        v54 = __CFADD__(v76++, 1);
      }

      while (!v54);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_tv22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = v8 & 1;
  v10 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v11 = *(a2 + 40);
  v12 = v11 & 0xFFFFFFFE;
  v13 = *(a2 + 24) + v11;
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v11 >> 1) + ((2 * (v9 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v16 = *(a6 + 24);
  v17 = (*(a6 + 32) & 1) + *(a6 + 32);
  v18 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v19 = *(a6 + 40);
  v20 = 2 * v17;
  v21 = a8[1];
  v22 = (a7[1] + v21 * v19 + ((2 * v17) & 0x7FFFFFFFFFFFFFFELL));
  v23 = v10 - (v9 + v8);
  v24 = v18 - v17;
  if (v23 >= v18 - v17)
  {
    v25 = v18 - v17;
  }

  else
  {
    v25 = v23;
  }

  v26 = v13 - v12 + (v13 & 1);
  if (v26 >= v16)
  {
    v26 = v16;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *a4;
    v29 = *a8;
    v30 = *a3 + *a4 * v12;
    if (v12 == v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = *a4;
    }

    v32 = v30 + 2 * (v9 + v8) + v31;
    v33 = *a7 + v29 * v19 + v20;
    if (v24 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v24;
    }

    do
    {
      if (v25)
      {
        v35 = 0;
        do
        {
          *(v33 + 2 * v35) = *(v32 + 2 * v35) & 0xFFC0;
          ++v35;
        }

        while (v34 != v35);
      }

      v32 += v28;
      v33 += v29;
      ++v27;
    }

    while (v27 != v26);
  }

  v36 = v11 & 1;
  if (v26 >> 1 >= (v26 - v36) >> 1)
  {
    v37 = (v26 - (v11 & 1)) >> 1;
  }

  else
  {
    v37 = v26 >> 1;
  }

  v38 = v8;
  v39 = v25 >> 1;
  if (v25 >> 1 >= (v25 - v9) >> 1)
  {
    v39 = (v25 - v9) >> 1;
  }

  if (v11)
  {
    if (v38)
    {
      v41 = v15 + 2;
      v42 = v15[1] & 0xFFC0;
      *v22 = *v15 & 0xFFC0;
      v22[1] = v42;
      v40 = v22 + 2;
      if (!v39)
      {
LABEL_36:
        v15 = (v15 + v14);
        v22 = (v22 + v21);
        goto LABEL_37;
      }
    }

    else
    {
      v40 = v22;
      v41 = v15;
      if (!v39)
      {
        goto LABEL_36;
      }
    }

    if (v24 >= v23)
    {
      v43 = v23;
    }

    else
    {
      v43 = v24;
    }

    v44 = v43 >> 1;
    v45 = v43 - v9;
    if (v44 >= v45 >> 1)
    {
      v46 = v45 >> 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = -v46;
    do
    {
      v48 = v41[1] & 0xFFC0;
      *v40 = *v41 & 0xFFC0;
      v40[1] = v48;
      v40 += 2;
      v41 += 2;
      v49 = __CFADD__(v47++, 1);
    }

    while (!v49);
    goto LABEL_36;
  }

LABEL_37:
  if (v37)
  {
    v50 = 0;
    v51 = 2 * v21;
    if (v24 >= v23)
    {
      v52 = v23;
    }

    else
    {
      v52 = v24;
    }

    v53 = v52 >> 1;
    v54 = v52 - v9;
    if (v53 >= v54 >> 1)
    {
      v55 = v54 >> 1;
    }

    else
    {
      v55 = v53;
    }

    v56 = -v55;
    v57 = v21 + 2;
    do
    {
      v58 = v22;
      v59 = v15;
      if (v38)
      {
        v59 = v15 + 2;
        v60 = v15[1] & 0xFFC0;
        *v22 = *v15 & 0xFFC0;
        v22[1] = v60;
        v58 = v22 + 2;
      }

      if (v39)
      {
        v61 = (v58 + v57);
        v62 = v58 + 1;
        v63 = v56;
        do
        {
          v64 = *v59 & 0xFFC0;
          v65 = v59[1] & 0xFFC0;
          *(v62 - 1) = v64;
          *v62 = v65;
          v62 += 2;
          *(v61 - 1) = v64;
          *v61 = v65;
          v61 += 2;
          v59 += 2;
          v49 = __CFADD__(v63++, 1);
        }

        while (!v49);
      }

      v15 = (v15 + v14);
      v22 = (v22 + v51);
      ++v50;
    }

    while (v50 != v37);
    v66 = 2 * v37;
  }

  else
  {
    v66 = 0;
  }

  if ((v66 | v36) < v26)
  {
    if (v38)
    {
      v67 = *v15;
      v68 = v15[1];
      v15 += 2;
      *v22 = v67 & 0xFFC0;
      v22[1] = v68 & 0xFFC0;
      v22 += 2;
    }

    if (v39)
    {
      if (v24 < v23)
      {
        v23 = v24;
      }

      v69 = v23 - v9;
      if (v23 >> 1 >= v69 >> 1)
      {
        v70 = v69 >> 1;
      }

      else
      {
        v70 = v23 >> 1;
      }

      v71 = -v70;
      do
      {
        v72 = v15[1] & 0xFFC0;
        *v22 = *v15 & 0xFFC0;
        v22[1] = v72;
        v22 += 2;
        v15 += 2;
        v49 = __CFADD__(v71++, 1);
      }

      while (!v49);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_tf22(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = v8 & 1;
  v10 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v11 = *(a2 + 40);
  v12 = v11 & 0xFFFFFFFE;
  v13 = *(a2 + 24) + v11;
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v11 >> 1) + ((2 * (v9 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v16 = *(a6 + 24);
  v17 = (*(a6 + 32) & 1) + *(a6 + 32);
  v18 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v19 = *(a6 + 40);
  v20 = 2 * v17;
  v21 = a8[1];
  v22 = (a7[1] + v21 * v19 + ((2 * v17) & 0x7FFFFFFFFFFFFFFELL));
  v23 = v10 - (v9 + v8);
  v24 = v18 - v17;
  if (v23 >= v18 - v17)
  {
    v25 = v18 - v17;
  }

  else
  {
    v25 = v23;
  }

  v26 = v13 - v12 + (v13 & 1);
  if (v26 >= v16)
  {
    v26 = v16;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *a4;
    v29 = *a8;
    v30 = *a3 + *a4 * v12;
    if (v12 == v11)
    {
      v31 = 0;
    }

    else
    {
      v31 = *a4;
    }

    v32 = v30 + 2 * (v9 + v8) + v31;
    v33 = *a7 + v29 * v19 + v20;
    if (v24 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v24;
    }

    do
    {
      if (v25)
      {
        v35 = 0;
        do
        {
          v36 = *(v32 + 2 * v35) >> 6;
          if (v36 >= 0x3AC)
          {
            v36 = 940;
          }

          if (v36 <= 0x40)
          {
            v36 = 64;
          }

          *(v33 + 2 * v35++) = 16 * ((-262080 - v36 + (v36 << 12)) / 0x36C);
        }

        while (v34 != v35);
      }

      v32 += v28;
      v33 += v29;
      ++v27;
    }

    while (v27 != v26);
  }

  if (v26 >> 1 >= (v26 - (v11 & 1)) >> 1)
  {
    v37 = (v26 - (v11 & 1)) >> 1;
  }

  else
  {
    v37 = v26 >> 1;
  }

  v38 = v8;
  v39 = v25 >> 1;
  if (v25 >> 1 >= (v25 - v9) >> 1)
  {
    v39 = (v25 - v9) >> 1;
  }

  if (v11)
  {
    if (v38)
    {
      v42 = *v15;
      v43 = v42 >> 6;
      v44 = v15[1];
      v45 = v44 >> 6;
      if (v42 >> 6 >= 0x3C0)
      {
        v43 = 960;
      }

      if (v42 < 0x1000)
      {
        v43 = 64;
      }

      if (v45 >= 0x3C0)
      {
        v45 = 960;
      }

      if (v44 >= 0x1000)
      {
        v46 = v45;
      }

      else
      {
        v46 = 64;
      }

      v41 = v15 + 2;
      *v22 = 16 * ((613566757 * ((-262080 - v43 + (v43 << 12)) >> 7)) >> 32);
      v22[1] = 16 * ((613566757 * ((-262080 - v46 + (v46 << 12)) >> 7)) >> 32);
      v40 = v22 + 2;
      if (!v39)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v40 = v22;
      v41 = v15;
      if (!v39)
      {
LABEL_59:
        v15 = (v15 + v14);
        v22 = (v22 + v21);
        goto LABEL_60;
      }
    }

    if (v24 >= v23)
    {
      v47 = v23;
    }

    else
    {
      v47 = v24;
    }

    v48 = v47 >> 1;
    v49 = v47 - v9;
    if (v48 >= v49 >> 1)
    {
      v50 = v49 >> 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = -v50;
    do
    {
      v52 = *v41;
      v53 = v52 >> 6;
      v54 = v41[1];
      if (v52 >> 6 >= 0x3C0)
      {
        v53 = 960;
      }

      if (v52 >= 0x1000)
      {
        v55 = v53;
      }

      else
      {
        v55 = 64;
      }

      if (v54 >> 6 >= 0x3C0)
      {
        v56 = 960;
      }

      else
      {
        v56 = v54 >> 6;
      }

      if (v54 < 0x1000)
      {
        v56 = 64;
      }

      *v40 = 16 * ((613566757 * ((-262080 - v55 + (v55 << 12)) >> 7)) >> 32);
      v40[1] = 16 * ((613566757 * ((-262080 - v56 + (v56 << 12)) >> 7)) >> 32);
      v40 += 2;
      v41 += 2;
      v57 = __CFADD__(v51++, 1);
    }

    while (!v57);
    goto LABEL_59;
  }

LABEL_60:
  if (v37)
  {
    v58 = 0;
    v59 = 2 * v21;
    if (v24 >= v23)
    {
      v60 = v23;
    }

    else
    {
      v60 = v24;
    }

    v61 = v60 >> 1;
    v62 = v60 - v9;
    if (v61 >= v62 >> 1)
    {
      v63 = v62 >> 1;
    }

    else
    {
      v63 = v61;
    }

    v64 = -v63;
    v65 = v21 + 2;
    do
    {
      v66 = v22;
      v67 = v15;
      if (v38)
      {
        v68 = *v15;
        v69 = v68 >> 6;
        v70 = v15[1];
        if (v68 >> 6 >= 0x3C0)
        {
          v69 = 960;
        }

        if (v68 < 0x1000)
        {
          v69 = 64;
        }

        if (v70 >> 6 >= 0x3C0)
        {
          v71 = 960;
        }

        else
        {
          v71 = v70 >> 6;
        }

        if (v70 >= 0x1000)
        {
          v72 = v71;
        }

        else
        {
          v72 = 64;
        }

        v67 = v15 + 2;
        *v22 = 16 * ((613566757 * ((-262080 - v69 + (v69 << 12)) >> 7)) >> 32);
        v22[1] = 16 * ((613566757 * ((-262080 - v72 + (v72 << 12)) >> 7)) >> 32);
        v66 = v22 + 2;
      }

      if (v39)
      {
        v73 = (v66 + v65);
        v74 = v66 + 1;
        v75 = v64;
        do
        {
          v76 = *v67;
          v77 = v76 >> 6;
          v78 = v67[1];
          if (v76 >> 6 >= 0x3C0)
          {
            v77 = 960;
          }

          if (v76 >= 0x1000)
          {
            v79 = v77;
          }

          else
          {
            v79 = 64;
          }

          if (v78 >> 6 >= 0x3C0)
          {
            v80 = 960;
          }

          else
          {
            v80 = v78 >> 6;
          }

          if (v78 < 0x1000)
          {
            v80 = 64;
          }

          v81 = 16 * ((613566757 * ((-262080 - v79 + (v79 << 12)) >> 7)) >> 32);
          *(v74 - 1) = v81;
          v82 = 16 * ((613566757 * ((-262080 - v80 + (v80 << 12)) >> 7)) >> 32);
          *v74 = v82;
          v74 += 2;
          *(v73 - 1) = v81;
          *v73 = v82;
          v73 += 2;
          v67 += 2;
          v57 = __CFADD__(v75++, 1);
        }

        while (!v57);
      }

      v15 = (v15 + v14);
      v22 = (v22 + v59);
      ++v58;
    }

    while (v58 != v37);
    v83 = 2 * v37;
  }

  else
  {
    v83 = 0;
  }

  if ((v83 | (v11 & 1)) < v26)
  {
    if (v38)
    {
      v84 = *v15;
      v85 = v84 >> 6;
      v86 = v15[1];
      v87 = v86 >> 6;
      if (v84 >> 6 >= 0x3C0)
      {
        v85 = 960;
      }

      if (v84 < 0x1000)
      {
        v85 = 64;
      }

      if (v87 >= 0x3C0)
      {
        v87 = 960;
      }

      if (v86 >= 0x1000)
      {
        v88 = v87;
      }

      else
      {
        v88 = 64;
      }

      v15 += 2;
      *v22 = 16 * ((613566757 * ((-262080 - v85 + (v85 << 12)) >> 7)) >> 32);
      v22[1] = 16 * ((613566757 * ((-262080 - v88 + (v88 << 12)) >> 7)) >> 32);
      v22 += 2;
    }

    if (v39)
    {
      if (v24 < v23)
      {
        v23 = v24;
      }

      v89 = v23 - v9;
      if (v23 >> 1 >= v89 >> 1)
      {
        v90 = v89 >> 1;
      }

      else
      {
        v90 = v23 >> 1;
      }

      v91 = -v90;
      do
      {
        v92 = *v15;
        v93 = v92 >> 6;
        v94 = v15[1];
        if (v92 >> 6 >= 0x3C0)
        {
          v93 = 960;
        }

        if (v92 >= 0x1000)
        {
          v95 = v93;
        }

        else
        {
          v95 = 64;
        }

        if (v94 >> 6 >= 0x3C0)
        {
          v96 = 960;
        }

        else
        {
          v96 = v94 >> 6;
        }

        if (v94 < 0x1000)
        {
          v96 = 64;
        }

        *v22 = 16 * ((613566757 * ((-262080 - v95 + (v95 << 12)) >> 7)) >> 32);
        v22[1] = 16 * ((613566757 * ((-262080 - v96 + (v96 << 12)) >> 7)) >> 32);
        v22 += 2;
        v15 += 2;
        v57 = __CFADD__(v91++, 1);
      }

      while (!v57);
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_tv20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = v9 & 1;
  v11 = (*(a2 + 16) + v9) & 0xFFFFFFFE;
  v12 = v8 & 1;
  v13 = v12 + v8;
  v14 = (*(a2 + 24) + v8) & 0xFFFFFFFE;
  v15 = a4[1];
  v16 = (a3[1] + v15 * ((v12 + v8) >> 1) + ((2 * (v10 + v9)) & 0xFFFFFFFFFFFFFFFCLL));
  v17 = (*(a6 + 32) & 1) + *(a6 + 32);
  v18 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v19 = (*(a6 + 40) & 1) + *(a6 + 40);
  v20 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v21 = 2 * v17;
  v22 = a8[1];
  v23 = (a7[1] + ((v22 * v19) >> 1) + ((2 * v17) & 0x7FFFFFFFFFFFFFFELL));
  v24 = v11 - (v10 + v9);
  v25 = v18 - v17;
  if (v24 >= v18 - v17)
  {
    v26 = v18 - v17;
  }

  else
  {
    v26 = v24;
  }

  v27 = v14 - v13;
  v28 = v20 - v19;
  if (v27 >= v28)
  {
    v27 = v28;
  }

  if (v27)
  {
    v29 = 0;
    v30 = *a4;
    v31 = *a8;
    v32 = *a3 + v30 * v13;
    if (v13 >= v8)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30;
    }

    v34 = v32 + 2 * (v10 + v9) + v33;
    v35 = *a7 + v31 * v19 + v21;
    if (v25 >= v24)
    {
      v36 = v24;
    }

    else
    {
      v36 = v25;
    }

    do
    {
      if (v26)
      {
        v37 = 0;
        do
        {
          *(v35 + 2 * v37) = *(v34 + 2 * v37) & 0xFFC0;
          ++v37;
        }

        while (v36 != v37);
      }

      v34 += v30;
      v35 += v31;
      ++v29;
    }

    while (v29 != v27);
  }

  v38 = v27 >> 1;
  if (v27 >> 1 >= (v27 - v12) >> 1)
  {
    v38 = (v27 - v12) >> 1;
  }

  v39 = v26 >> 1;
  v40 = v26 - v10;
  if (v39 >= v40 >> 1)
  {
    v41 = v40 >> 1;
  }

  else
  {
    v41 = v39;
  }

  if (v12)
  {
    if (v9)
    {
      v43 = v16 + 2;
      v44 = v16[1] & 0xFFC0;
      *v23 = *v16 & 0xFFC0;
      v23[1] = v44;
      v42 = v23 + 2;
      if (!v41)
      {
LABEL_36:
        v16 = (v16 + v15);
        v23 = (v23 + v22);
        goto LABEL_37;
      }
    }

    else
    {
      v42 = v23;
      v43 = v16;
      if (!v41)
      {
        goto LABEL_36;
      }
    }

    if (v25 >= v24)
    {
      v45 = v24;
    }

    else
    {
      v45 = v25;
    }

    v46 = v45 >> 1;
    v47 = v45 - v10;
    if (v46 >= v47 >> 1)
    {
      v48 = v47 >> 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = -v48;
    do
    {
      v50 = v43[1] & 0xFFC0;
      *v42 = *v43 & 0xFFC0;
      v42[1] = v50;
      v42 += 2;
      v43 += 2;
      v51 = __CFADD__(v49++, 1);
    }

    while (!v51);
    goto LABEL_36;
  }

LABEL_37:
  if (v38)
  {
    v52 = 0;
    if (v25 < v24)
    {
      v24 = v25;
    }

    v53 = v24 - v10;
    if (v24 >> 1 >= v53 >> 1)
    {
      v54 = v53 >> 1;
    }

    else
    {
      v54 = v24 >> 1;
    }

    v55 = -v54;
    do
    {
      v56 = v23;
      v57 = v16;
      if (v9)
      {
        v57 = v16 + 2;
        v58 = v16[1] & 0xFFC0;
        *v23 = *v16 & 0xFFC0;
        v23[1] = v58;
        v56 = v23 + 2;
      }

      if (v41)
      {
        v59 = v55;
        do
        {
          v60 = v57[1] & 0xFFC0;
          *v56 = *v57 & 0xFFC0;
          v56[1] = v60;
          v56 += 2;
          v57 += 2;
          v51 = __CFADD__(v59++, 1);
        }

        while (!v51);
      }

      v16 = (v16 + v15);
      v23 = (v23 + v22);
      ++v52;
    }

    while (v52 != v38);
  }

  return 0;
}

uint64_t vt_Copy_x420_tf20(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = v8 & 1;
  v11 = (*(a2 + 16) + v8) & 0xFFFFFFFE;
  v12 = (v9 & 1) + v9;
  v13 = (*(a2 + 24) + v9) & 0xFFFFFFFE;
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v12 >> 1) + ((2 * (v10 + v8)) & 0xFFFFFFFFFFFFFFFCLL));
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = (*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE;
  v18 = (*(a6 + 40) & 1) + *(a6 + 40);
  v19 = (*(a6 + 24) + *(a6 + 40)) & 0xFFFFFFFE;
  v20 = 2 * v16;
  v21 = a8[1];
  v22 = (a7[1] + ((v21 * v18) >> 1) + ((2 * v16) & 0x7FFFFFFFFFFFFFFELL));
  v23 = v11 - (v10 + v8);
  v24 = v17 - v16;
  if (v23 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v11 - (v10 + v8);
  }

  v26 = v13 - v12;
  if (v13 - v12 >= v19 - v18)
  {
    v26 = v19 - v18;
  }

  if (v26)
  {
    v27 = 0;
    v28 = *a4;
    v29 = *a8;
    v30 = *a3 + v28 * v12;
    if (v12 >= v9)
    {
      v31 = 0;
    }

    else
    {
      v31 = v28;
    }

    v32 = v30 + 2 * (v10 + v8) + v31;
    v33 = *a7 + v29 * v18 + v20;
    if (v24 >= v23)
    {
      v34 = v23;
    }

    else
    {
      v34 = v24;
    }

    do
    {
      if (v25)
      {
        v35 = 0;
        do
        {
          v36 = *(v32 + 2 * v35) >> 6;
          if (v36 >= 0x3AC)
          {
            v36 = 940;
          }

          if (v36 <= 0x40)
          {
            v36 = 64;
          }

          *(v33 + 2 * v35++) = 16 * ((-262080 - v36 + (v36 << 12)) / 0x36C);
        }

        while (v34 != v35);
      }

      v32 += v28;
      v33 += v29;
      ++v27;
    }

    while (v27 != v26);
  }

  v37 = v26 >> 1;
  v38 = v26 - (v9 & 1);
  if (v37 >= v38 >> 1)
  {
    v39 = v38 >> 1;
  }

  else
  {
    v39 = v37;
  }

  v40 = v25 >> 1;
  v41 = v25 - v10;
  if (v40 >= v41 >> 1)
  {
    v42 = v41 >> 1;
  }

  else
  {
    v42 = v40;
  }

  if (v9)
  {
    if (v8)
    {
      v45 = *v15;
      v46 = v45 >> 6;
      v47 = v15[1];
      v48 = v47 >> 6;
      if (v45 >> 6 >= 0x3C0)
      {
        v46 = 960;
      }

      if (v45 < 0x1000)
      {
        v46 = 64;
      }

      if (v48 >= 0x3C0)
      {
        v48 = 960;
      }

      if (v47 >= 0x1000)
      {
        v49 = v48;
      }

      else
      {
        v49 = 64;
      }

      v44 = v15 + 2;
      *v22 = 16 * ((613566757 * ((-262080 - v46 + (v46 << 12)) >> 7)) >> 32);
      v22[1] = 16 * ((613566757 * ((-262080 - v49 + (v49 << 12)) >> 7)) >> 32);
      v43 = v22 + 2;
      if (!v42)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v43 = v22;
      v44 = v15;
      if (!v42)
      {
LABEL_60:
        v15 = (v15 + v14);
        v22 = (v22 + v21);
        goto LABEL_61;
      }
    }

    if (v24 >= v23)
    {
      v50 = v23;
    }

    else
    {
      v50 = v24;
    }

    v51 = v50 >> 1;
    v52 = v50 - v10;
    if (v51 >= v52 >> 1)
    {
      v53 = v52 >> 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = -v53;
    do
    {
      v55 = *v44;
      v56 = v55 >> 6;
      v57 = v44[1];
      if (v55 >> 6 >= 0x3C0)
      {
        v56 = 960;
      }

      if (v55 >= 0x1000)
      {
        v58 = v56;
      }

      else
      {
        v58 = 64;
      }

      if (v57 >> 6 >= 0x3C0)
      {
        v59 = 960;
      }

      else
      {
        v59 = v57 >> 6;
      }

      if (v57 < 0x1000)
      {
        v59 = 64;
      }

      *v43 = 16 * ((613566757 * ((-262080 - v58 + (v58 << 12)) >> 7)) >> 32);
      v43[1] = 16 * ((613566757 * ((-262080 - v59 + (v59 << 12)) >> 7)) >> 32);
      v43 += 2;
      v44 += 2;
      v60 = __CFADD__(v54++, 1);
    }

    while (!v60);
    goto LABEL_60;
  }

LABEL_61:
  if (v39)
  {
    v61 = 0;
    if (v24 < v23)
    {
      v23 = v24;
    }

    v62 = v23 - v10;
    if (v23 >> 1 >= v62 >> 1)
    {
      v63 = v62 >> 1;
    }

    else
    {
      v63 = v23 >> 1;
    }

    v64 = -v63;
    do
    {
      v65 = v22;
      v66 = v15;
      if (v8)
      {
        v67 = *v15;
        v68 = v67 >> 6;
        v69 = v15[1];
        if (v67 >> 6 >= 0x3C0)
        {
          v68 = 960;
        }

        if (v67 < 0x1000)
        {
          v68 = 64;
        }

        if (v69 >> 6 >= 0x3C0)
        {
          v70 = 960;
        }

        else
        {
          v70 = v69 >> 6;
        }

        if (v69 >= 0x1000)
        {
          v71 = v70;
        }

        else
        {
          v71 = 64;
        }

        v66 = v15 + 2;
        *v22 = 16 * ((613566757 * ((-262080 - v68 + (v68 << 12)) >> 7)) >> 32);
        v22[1] = 16 * ((613566757 * ((-262080 - v71 + (v71 << 12)) >> 7)) >> 32);
        v65 = v22 + 2;
      }

      if (v42)
      {
        v72 = v64;
        do
        {
          v73 = *v66;
          v74 = v73 >> 6;
          v75 = v66[1];
          if (v73 >> 6 >= 0x3C0)
          {
            v74 = 960;
          }

          if (v73 >= 0x1000)
          {
            v76 = v74;
          }

          else
          {
            v76 = 64;
          }

          if (v75 >> 6 >= 0x3C0)
          {
            v77 = 960;
          }

          else
          {
            v77 = v75 >> 6;
          }

          if (v75 < 0x1000)
          {
            v77 = 64;
          }

          *v65 = 16 * ((613566757 * ((-262080 - v76 + (v76 << 12)) >> 7)) >> 32);
          v65[1] = 16 * ((613566757 * ((-262080 - v77 + (v77 << 12)) >> 7)) >> 32);
          v65 += 2;
          v66 += 2;
          v60 = __CFADD__(v72++, 1);
        }

        while (!v60);
      }

      v15 = (v15 + v14);
      v22 = (v22 + v21);
      ++v61;
    }

    while (v61 != v39);
  }

  return 0;
}

uint64_t vt_Copy_x420_x4as(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[4];
  v9 = a2[5];
  v10 = v9 & 0xFFFFFFFE;
  v11 = a2[3] + v9;
  v12 = a4[1];
  v13 = (a3[1] + v12 * (v9 >> 1) + 2 * (v8 & 0xFFFFFFFE));
  v14 = a6[4];
  v15 = a6[5];
  v16 = a6[2];
  v17 = a6[3];
  v18 = a8[1];
  v19 = (a7[1] + v18 * v15 + 4 * v14);
  if (a2[2] + v8 - (v8 & 0xFFFFFFFE) + ((a2[2] + v8) & 1uLL) >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  }

  if (v11 - v10 + (v11 & 1) >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11 - v10 + (v11 & 1);
  }

  if (v21)
  {
    v76 = a8[1];
    v78 = a4[1];
    v79 = v20;
    v22 = *a4;
    v23 = 2 * (v8 & 0xFFFFFFFE);
    v24 = *a8;
    v25 = a8[2];
    v26 = *a3 + *a4 * v10;
    if (v10 == v9)
    {
      v27 = 0;
    }

    else
    {
      v27 = *a4;
    }

    v28 = (v26 + v23 + v27);
    v29 = (a7[2] + v25 * v15 + 2 * v14);
    v30 = (*a7 + v24 * v15 + 2 * v14);
    v31 = 2 * v20;
    v77 = v21;
    v32 = -v21;
    do
    {
      memcpy(v30, v28, v31);
      memset(v29, 255, v31);
      v28 += v22;
      v30 += v24;
      v29 += v25;
      v33 = __CFADD__(v32++, 1);
    }

    while (!v33);
    v18 = v76;
    v8 = a2[4];
    v9 = a2[5];
    v12 = v78;
    v20 = v79;
    v21 = v77;
  }

  v34 = v9 & 1;
  if (v21 >> 1 >= (v21 - v34) >> 1)
  {
    v35 = (v21 - (v9 & 1)) >> 1;
  }

  else
  {
    v35 = v21 >> 1;
  }

  v36 = v8;
  v37 = v20 >> 1;
  v38 = v8 & 1;
  v39 = (v20 - v38) >> 1;
  if (v20 >> 1 >= v39)
  {
    v40 = (v20 - v38) >> 1;
  }

  else
  {
    v40 = v20 >> 1;
  }

  if (v9)
  {
    if (v36)
    {
      v48 = v13[1] & 0xFFC0;
      v42 = v13 + 2;
      *v19 = *v13 & 0xFFC0;
      v19[1] = v48;
      v41 = v19 + 2;
      if (v40)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v41 = v19;
      v42 = v13;
      if (v40)
      {
LABEL_24:
        if (v37 >= v39)
        {
          v43 = (v20 - v38) >> 1;
        }

        else
        {
          v43 = v20 >> 1;
        }

        v44 = -v43;
        do
        {
          v45 = *v42 & 0xFFC0;
          v46 = v42[1] & 0xFFC0;
          v42 += 2;
          *v41 = v45;
          v41[1] = v46;
          v41 += 2;
          v33 = __CFADD__(v44++, 1);
        }

        while (!v33);
        v47 = 2 * v40;
        goto LABEL_33;
      }
    }

    v47 = 0;
LABEL_33:
    if ((v47 | v38) < v20)
    {
      v49 = *v42 & 0xFFC0;
      v50 = v42[1] & 0xFFC0;
      *v41 = v49;
      v41[1] = v50;
    }

    v13 = (v13 + v12);
    v19 = (v19 + v18);
  }

  if (v35)
  {
    v51 = 0;
    if (v37 >= v39)
    {
      v52 = (v20 - v38) >> 1;
    }

    else
    {
      v52 = v20 >> 1;
    }

    v53 = -v52;
    do
    {
      v54 = v19;
      v55 = v13;
      if (v36)
      {
        v56 = *v13 & 0xFFC0;
        v57 = v13[1] & 0xFFC0;
        v55 = v13 + 2;
        *v19 = v56;
        v19[1] = v57;
        v58 = (v19 + v18);
        *v58 = v56;
        v58[1] = v57;
        v54 = v19 + 2;
      }

      if (v40)
      {
        v59 = v54 + 2;
        v60 = (v54 + v18 + 4);
        v61 = v53;
        do
        {
          v62 = *v55 & 0xFFC0;
          v63 = v55[1] & 0xFFC0;
          v55 += 2;
          *(v59 - 2) = v62;
          *(v59 - 1) = v63;
          *v59 = v62;
          v59[1] = v63;
          *(v60 - 2) = v62;
          *(v60 - 1) = v63;
          *v60 = v62;
          v60[1] = v63;
          v59 += 4;
          v60 += 4;
          v33 = __CFADD__(v61++, 1);
        }

        while (!v33);
        v54 = v59 - 2;
        v64 = 2 * v40;
      }

      else
      {
        v64 = 0;
      }

      if ((v64 | v38) < v20)
      {
        v65 = *v55 & 0xFFC0;
        v66 = v55[1] & 0xFFC0;
        *v54 = v65;
        v54[1] = v66;
        v67 = (v54 + v18);
        *v67 = v65;
        v67[1] = v66;
      }

      v13 = (v13 + v12);
      v19 += v18;
      ++v51;
    }

    while (v51 != v35);
    v35 *= 2;
  }

  if ((v35 | v34) < v21)
  {
    if (v36)
    {
      v68 = *v13 & 0xFFC0;
      v69 = v13[1] & 0xFFC0;
      v13 += 2;
      *v19 = v68;
      v19[1] = v69;
      v19 += 2;
    }

    if (v40)
    {
      if (v37 >= v39)
      {
        v37 = (v20 - v38) >> 1;
      }

      v70 = -v37;
      do
      {
        v71 = *v13 & 0xFFC0;
        v72 = v13[1] & 0xFFC0;
        v13 += 2;
        *v19 = v71;
        v19[1] = v72;
        v19 += 2;
        v33 = __CFADD__(v70++, 1);
      }

      while (!v33);
      v40 *= 2;
    }

    if ((v40 | v38) < v20)
    {
      v73 = v13[1] & 0xFFC0;
      *v19 = *v13 & 0xFFC0;
      v19[1] = v73;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_x444(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v8 = a2[4];
  v9 = a2[5];
  v10 = v9 & 0xFFFFFFFE;
  v11 = a2[3] + v9;
  v12 = a4[1];
  v13 = (a3[1] + v12 * (v9 >> 1) + 2 * (v8 & 0xFFFFFFFE));
  v14 = a6[4];
  v15 = a6[5];
  v16 = a6[2];
  v17 = a6[3];
  v18 = a8[1];
  v19 = (a7[1] + v18 * v15 + 4 * v14);
  if (a2[2] + v8 - (v8 & 0xFFFFFFFE) + ((a2[2] + v8) & 1uLL) >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = a2[2] + a2[4] - (a2[4] & 0xFFFFFFFELL) + ((a2[2] + a2[4]) & 1);
  }

  if (v11 - v10 + (v11 & 1) >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v11 - v10 + (v11 & 1);
  }

  if (v21)
  {
    v74 = v21;
    v22 = *a4;
    v23 = 2 * (v8 & 0xFFFFFFFE);
    v24 = *a8;
    v25 = *a3 + *a4 * v10;
    if (v10 == v9)
    {
      v26 = 0;
    }

    else
    {
      v26 = *a4;
    }

    v27 = (v25 + v23 + v26);
    v28 = (*a7 + v24 * v15 + 2 * v14);
    v75 = v20;
    v29 = 2 * v20;
    v30 = -v21;
    do
    {
      memcpy(v28, v27, v29);
      v27 += v22;
      v28 += v24;
      v31 = __CFADD__(v30++, 1);
    }

    while (!v31);
    v21 = v74;
    v8 = a2[4];
    v9 = a2[5];
    v20 = v75;
  }

  v32 = v9 & 1;
  if (v21 >> 1 >= (v21 - v32) >> 1)
  {
    v33 = (v21 - (v9 & 1)) >> 1;
  }

  else
  {
    v33 = v21 >> 1;
  }

  v34 = v8;
  v35 = v20 >> 1;
  v36 = v8 & 1;
  v37 = (v20 - v36) >> 1;
  if (v20 >> 1 >= v37)
  {
    v38 = (v20 - v36) >> 1;
  }

  else
  {
    v38 = v20 >> 1;
  }

  if (v9)
  {
    if (v34)
    {
      v46 = v13[1] & 0xFFC0;
      v40 = v13 + 2;
      *v19 = *v13 & 0xFFC0;
      v19[1] = v46;
      v39 = v19 + 2;
      if (v38)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v19;
      v40 = v13;
      if (v38)
      {
LABEL_24:
        if (v35 >= v37)
        {
          v41 = (v20 - v36) >> 1;
        }

        else
        {
          v41 = v20 >> 1;
        }

        v42 = -v41;
        do
        {
          v43 = *v40 & 0xFFC0;
          v44 = v40[1] & 0xFFC0;
          v40 += 2;
          *v39 = v43;
          v39[1] = v44;
          v39 += 2;
          v31 = __CFADD__(v42++, 1);
        }

        while (!v31);
        v45 = 2 * v38;
        goto LABEL_33;
      }
    }

    v45 = 0;
LABEL_33:
    if ((v45 | v36) < v20)
    {
      v47 = *v40 & 0xFFC0;
      v48 = v40[1] & 0xFFC0;
      *v39 = v47;
      v39[1] = v48;
    }

    v13 = (v13 + v12);
    v19 = (v19 + v18);
  }

  if (v33)
  {
    v49 = 0;
    if (v35 >= v37)
    {
      v50 = (v20 - v36) >> 1;
    }

    else
    {
      v50 = v20 >> 1;
    }

    v51 = -v50;
    do
    {
      v52 = v19;
      v53 = v13;
      if (v34)
      {
        v54 = *v13 & 0xFFC0;
        v55 = v13[1] & 0xFFC0;
        v53 = v13 + 2;
        *v19 = v54;
        v19[1] = v55;
        v56 = (v19 + v18);
        *v56 = v54;
        v56[1] = v55;
        v52 = v19 + 2;
      }

      if (v38)
      {
        v57 = v52 + 2;
        v58 = (v52 + v18 + 4);
        v59 = v51;
        do
        {
          v60 = *v53 & 0xFFC0;
          v61 = v53[1] & 0xFFC0;
          v53 += 2;
          *(v57 - 2) = v60;
          *(v57 - 1) = v61;
          *v57 = v60;
          v57[1] = v61;
          *(v58 - 2) = v60;
          *(v58 - 1) = v61;
          *v58 = v60;
          v58[1] = v61;
          v57 += 4;
          v58 += 4;
          v31 = __CFADD__(v59++, 1);
        }

        while (!v31);
        v52 = v57 - 2;
        v62 = 2 * v38;
      }

      else
      {
        v62 = 0;
      }

      if ((v62 | v36) < v20)
      {
        v63 = *v53 & 0xFFC0;
        v64 = v53[1] & 0xFFC0;
        *v52 = v63;
        v52[1] = v64;
        v65 = (v52 + v18);
        *v65 = v63;
        v65[1] = v64;
      }

      v13 = (v13 + v12);
      v19 += v18;
      ++v49;
    }

    while (v49 != v33);
    v33 *= 2;
  }

  if ((v33 | v32) < v21)
  {
    if (v34)
    {
      v66 = *v13 & 0xFFC0;
      v67 = v13[1] & 0xFFC0;
      v13 += 2;
      *v19 = v66;
      v19[1] = v67;
      v19 += 2;
    }

    if (v38)
    {
      if (v35 >= v37)
      {
        v35 = (v20 - v36) >> 1;
      }

      v68 = -v35;
      do
      {
        v69 = *v13 & 0xFFC0;
        v70 = v13[1] & 0xFFC0;
        v13 += 2;
        *v19 = v69;
        v19[1] = v70;
        v19 += 2;
        v31 = __CFADD__(v68++, 1);
      }

      while (!v31);
      v38 *= 2;
    }

    if ((v38 | v36) < v20)
    {
      v71 = v13[1] & 0xFFC0;
      *v19 = *v13 & 0xFFC0;
      v19[1] = v71;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_xf44(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, uint64_t *a8)
{
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[2] + v9;
  v11 = v8 & 0xFFFFFFFE;
  v12 = a2[3] + v8;
  v13 = a4[1];
  v14 = (a3[1] + v13 * (v8 >> 1) + 2 * (v9 & 0xFFFFFFFE));
  v15 = a6[4];
  v16 = a6[5];
  v18 = a6[2];
  v17 = a6[3];
  v19 = a8[1];
  v20 = (a7[1] + v19 * v16 + 4 * v15);
  v21 = v10 - (v9 & 0xFFFFFFFE) + (v10 & 1);
  if (v21 >= v18)
  {
    v21 = v18;
  }

  if (v12 - v11 + (v12 & 1) >= v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = v12 - v11 + (v12 & 1);
  }

  if (v22)
  {
    v23 = 0;
    v24 = *a4;
    v25 = *a8;
    v26 = *a3 + *a4 * v11;
    if (v11 == v8)
    {
      v27 = 0;
    }

    else
    {
      v27 = *a4;
    }

    v28 = v26 + 2 * (v9 & 0xFFFFFFFE) + v27;
    v29 = *a7 + v25 * v16 + 2 * v15;
    do
    {
      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          v31 = *(v28 + 2 * i) >> 6;
          if (v31 >= 0x3AC)
          {
            v31 = 940;
          }

          if (v31 <= 0x40)
          {
            v31 = 64;
          }

          *(v29 + 2 * i) = ((1023 * v31 - 65472) / 0x36C) << 6;
        }
      }

      v28 += v24;
      v29 += v25;
      ++v23;
    }

    while (v23 != v22);
  }

  v32 = v8 & 1;
  if (v22 >> 1 >= (v22 - v32) >> 1)
  {
    v33 = (v22 - (v8 & 1)) >> 1;
  }

  else
  {
    v33 = v22 >> 1;
  }

  v34 = v9;
  v35 = v21 >> 1;
  v36 = v9 & 1;
  v37 = (v21 - v36) >> 1;
  if (v21 >> 1 >= v37)
  {
    v38 = (v21 - v36) >> 1;
  }

  else
  {
    v38 = v21 >> 1;
  }

  if (v8)
  {
    if (v34)
    {
      v50 = *v14;
      v51 = v50 >> 6;
      v52 = v14[1];
      if (v50 >> 6 >= 0x3C0)
      {
        v51 = 960;
      }

      if (v50 >= 0x1000)
      {
        v53 = v51;
      }

      else
      {
        v53 = 64;
      }

      if (v52 >> 6 >= 0x3C0)
      {
        v54 = 960;
      }

      else
      {
        v54 = v52 >> 6;
      }

      if (v52 >= 0x1000)
      {
        v55 = v54;
      }

      else
      {
        v55 = 64;
      }

      v40 = v14 + 2;
      *v20 = ((613566757 * ((1023 * v53 - 65472) >> 7)) >> 32) << 6;
      v20[1] = ((613566757 * ((1023 * v55 - 65472) >> 7)) >> 32) << 6;
      v39 = v20 + 2;
      if (v38)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v39 = v20;
      v40 = v14;
      if (v38)
      {
LABEL_28:
        if (v35 >= v37)
        {
          v41 = (v21 - v36) >> 1;
        }

        else
        {
          v41 = v21 >> 1;
        }

        v42 = -v41;
        do
        {
          v43 = *v40;
          v44 = v43 >> 6;
          v45 = v40[1];
          if (v43 >> 6 >= 0x3C0)
          {
            v44 = 960;
          }

          if (v43 >= 0x1000)
          {
            v46 = v44;
          }

          else
          {
            v46 = 64;
          }

          if (v45 >> 6 >= 0x3C0)
          {
            v47 = 960;
          }

          else
          {
            v47 = v45 >> 6;
          }

          if (v45 < 0x1000)
          {
            v47 = 64;
          }

          v40 += 2;
          *v39 = ((613566757 * ((1023 * v46 - 65472) >> 7)) >> 32) << 6;
          v39[1] = ((613566757 * ((1023 * v47 - 65472) >> 7)) >> 32) << 6;
          v39 += 2;
          v48 = __CFADD__(v42++, 1);
        }

        while (!v48);
        v49 = 2 * v38;
        goto LABEL_58;
      }
    }

    v49 = 0;
LABEL_58:
    if ((v49 | v36) < v21)
    {
      v56 = *v40;
      v57 = v56 >> 6;
      v58 = v40[1];
      v59 = v58 >> 6;
      if (v56 >> 6 >= 0x3C0)
      {
        v57 = 960;
      }

      if (v56 < 0x1000)
      {
        v57 = 64;
      }

      if (v59 >= 0x3C0)
      {
        v59 = 960;
      }

      if (v58 >= 0x1000)
      {
        v60 = v59;
      }

      else
      {
        v60 = 64;
      }

      *v39 = ((613566757 * ((1023 * v57 - 65472) >> 7)) >> 32) << 6;
      v39[1] = ((613566757 * ((1023 * v60 - 65472) >> 7)) >> 32) << 6;
    }

    v14 = (v14 + v13);
    v20 = (v20 + v19);
  }

  if (v33)
  {
    v113 = v32;
    v61 = 0;
    if (v35 >= v37)
    {
      v62 = (v21 - v36) >> 1;
    }

    else
    {
      v62 = v21 >> 1;
    }

    v63 = -v62;
    do
    {
      v64 = v20;
      v65 = v14;
      if (v34)
      {
        v66 = *v14;
        v67 = v66 >> 6;
        v68 = v14[1];
        if (v66 >> 6 >= 0x3C0)
        {
          v67 = 960;
        }

        if (v66 < 0x1000)
        {
          v67 = 64;
        }

        if (v68 >> 6 >= 0x3C0)
        {
          v69 = 960;
        }

        else
        {
          v69 = v68 >> 6;
        }

        if (v68 >= 0x1000)
        {
          v70 = v69;
        }

        else
        {
          v70 = 64;
        }

        v65 = v14 + 2;
        v71 = (613566757 * ((1023 * v67 - 65472) >> 7)) >> 32 << 6;
        *v20 = v71;
        v72 = (613566757 * ((1023 * v70 - 65472) >> 7)) >> 32 << 6;
        v20[1] = v72;
        v73 = (v20 + v19);
        *v73 = v71;
        v73[1] = v72;
        v64 = v20 + 2;
      }

      if (v38)
      {
        v74 = v64 + 2;
        v75 = (v64 + v19 + 4);
        v76 = v63;
        do
        {
          v77 = *v65;
          v78 = v77 >> 6;
          v79 = v65[1];
          v80 = v79 >> 6;
          if (v77 >> 6 >= 0x3C0)
          {
            v78 = 960;
          }

          if (v77 >= 0x1000)
          {
            v81 = v78;
          }

          else
          {
            v81 = 64;
          }

          if (v80 >= 0x3C0)
          {
            v80 = 960;
          }

          if (v79 < 0x1000)
          {
            v80 = 64;
          }

          v82 = (613566757 * ((1023 * v81 - 65472) >> 7)) >> 32 << 6;
          *(v74 - 2) = v82;
          v83 = (613566757 * ((1023 * v80 - 65472) >> 7)) >> 32 << 6;
          *(v74 - 1) = v83;
          *v74 = v82;
          v74[1] = v83;
          *(v75 - 2) = v82;
          *(v75 - 1) = v83;
          v65 += 2;
          *v75 = v82;
          v75[1] = v83;
          v74 += 4;
          v75 += 4;
          v48 = __CFADD__(v76++, 1);
        }

        while (!v48);
        v64 = v74 - 2;
        v84 = 2 * v38;
      }

      else
      {
        v84 = 0;
      }

      if ((v84 | v36) < v21)
      {
        v85 = *v65;
        v86 = v85 >> 6;
        v87 = v65[1];
        if (v85 >> 6 >= 0x3C0)
        {
          v86 = 960;
        }

        if (v85 >= 0x1000)
        {
          v88 = v86;
        }

        else
        {
          v88 = 64;
        }

        if (v87 >> 6 >= 0x3C0)
        {
          v89 = 960;
        }

        else
        {
          v89 = v87 >> 6;
        }

        if (v87 >= 0x1000)
        {
          v90 = v89;
        }

        else
        {
          v90 = 64;
        }

        v91 = (613566757 * ((1023 * v88 - 65472) >> 7)) >> 32 << 6;
        *v64 = v91;
        v92 = (613566757 * ((1023 * v90 - 65472) >> 7)) >> 32 << 6;
        v64[1] = v92;
        v93 = (v64 + v19);
        *v93 = v91;
        v93[1] = v92;
      }

      v14 = (v14 + v13);
      v20 += v19;
      ++v61;
    }

    while (v61 != v33);
    v94 = 2 * v33;
    v32 = v113;
  }

  else
  {
    v94 = 0;
  }

  if ((v94 | v32) < v22)
  {
    if (v34)
    {
      v95 = *v14;
      v96 = v95 >> 6;
      v97 = v14[1];
      v98 = v97 >> 6;
      if (v95 >> 6 >= 0x3C0)
      {
        v96 = 960;
      }

      if (v95 < 0x1000)
      {
        v96 = 64;
      }

      if (v98 >= 0x3C0)
      {
        v98 = 960;
      }

      if (v97 >= 0x1000)
      {
        v99 = v98;
      }

      else
      {
        v99 = 64;
      }

      v14 += 2;
      *v20 = ((613566757 * ((1023 * v96 - 65472) >> 7)) >> 32) << 6;
      v20[1] = ((613566757 * ((1023 * v99 - 65472) >> 7)) >> 32) << 6;
      v20 += 2;
    }

    if (v38)
    {
      if (v35 >= v37)
      {
        v100 = (v21 - v36) >> 1;
      }

      else
      {
        v100 = v21 >> 1;
      }

      v101 = -v100;
      do
      {
        v102 = *v14;
        v103 = v102 >> 6;
        v104 = v14[1];
        if (v102 >> 6 >= 0x3C0)
        {
          v103 = 960;
        }

        if (v102 >= 0x1000)
        {
          v105 = v103;
        }

        else
        {
          v105 = 64;
        }

        if (v104 >> 6 >= 0x3C0)
        {
          v106 = 960;
        }

        else
        {
          v106 = v104 >> 6;
        }

        if (v104 < 0x1000)
        {
          v106 = 64;
        }

        v14 += 2;
        *v20 = ((613566757 * ((1023 * v105 - 65472) >> 7)) >> 32) << 6;
        v20[1] = ((613566757 * ((1023 * v106 - 65472) >> 7)) >> 32) << 6;
        v20 += 2;
        v48 = __CFADD__(v101++, 1);
      }

      while (!v48);
      v38 *= 2;
    }

    if ((v38 | v36) < v21)
    {
      v107 = *v14;
      v108 = v107 >> 6;
      v109 = v14[1];
      v110 = v109 >> 6;
      if (v107 >> 6 >= 0x3C0)
      {
        v108 = 960;
      }

      if (v107 < 0x1000)
      {
        v108 = 64;
      }

      if (v110 >= 0x3C0)
      {
        v110 = 960;
      }

      if (v109 >= 0x1000)
      {
        v111 = v110;
      }

      else
      {
        v111 = 64;
      }

      *v20 = ((613566757 * ((1023 * v108 - 65472) >> 7)) >> 32) << 6;
      v20[1] = ((613566757 * ((1023 * v111 - 65472) >> 7)) >> 32) << 6;
    }
  }

  return 0;
}

uint64_t vt_Copy_x420_x2as(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v8 = *(a2 + 32);
  v9 = v8 & 1;
  v10 = *(a2 + 40);
  v11 = v10 & 0xFFFFFFFE;
  v12 = *(a2 + 24) + v10;
  v13 = 2 * (v9 + v8);
  v14 = a4[1];
  v15 = (a3[1] + v14 * (v10 >> 1) + (v13 & 0xFFFFFFFFFFFFFFFCLL));
  v16 = (*(a6 + 32) & 1) + *(a6 + 32);
  v17 = *(a6 + 40);
  v18 = 2 * v16;
  v19 = a8[1];
  v20 = (a7[1] + v19 * v17 + ((2 * v16) & 0x7FFFFFFFFFFFFFFELL));
  v21 = ((*(a6 + 16) + *(a6 + 32)) & 0xFFFFFFFE) - v16;
  v74 = v21;
  v75 = ((*(a2 + 16) + v8) & 0xFFFFFFFE) - (v9 + v8);
  if (v75 < v21)
  {
    v21 = ((*(a2 + 16) + v8) & 0xFFFFFFFE) - (v9 + v8);
  }

  if (v12 - v11 + (v12 & 1) >= *(a6 + 24))
  {
    v22 = *(a6 + 24);
  }

  else
  {
    v22 = v12 - v11 + (v12 & 1);
  }

  if (v22)
  {
    v71 = a8[1];
    v72 = v22;
    v73 = a4[1];
    v23 = *a4;
    v24 = *a8;
    v25 = a8[2];
    if (v11 == v10)
    {
      v26 = 0;
    }

    else
    {
      v26 = *a4;
    }

    v27 = (*a3 + *a4 * v11 + v13 + v26);
    v28 = (a7[2] + v25 * v17 + v18);
    v29 = (*a7 + v24 * v17 + v18);
    v69 = v21;
    v30 = 2 * v21;
    v31 = -v22;
    do
    {
      memcpy(v29, v27, v30);
      memset(v28, 255, v30);
      v27 += v23;
      v29 += v24;
      v28 += v25;
      v32 = __CFADD__(v31++, 1);
    }

    while (!v32);
    v19 = v71;
    v8 = *(a2 + 32);
    v10 = *(a2 + 40);
    v9 = v8 & 1;
    v22 = v72;
    v14 = v73;
    v21 = v69;
  }

  v33 = v10 & 1;
  if (v22 >> 1 >= (v22 - v33) >> 1)
  {
    v34 = (v22 - (v10 & 1)) >> 1;
  }

  else
  {
    v34 = v22 >> 1;
  }

  v35 = v8;
  v36 = v21 >> 1;
  if (v21 >> 1 >= (v21 - v9) >> 1)
  {
    v36 = (v21 - v9) >> 1;
  }

  if ((v10 & 1) == 0)
  {
    v37 = v75;
    if (!v34)
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  if (v35)
  {
    v40 = v15[1] & 0xFFC0;
    v39 = v15 + 2;
    *v20 = *v15 & 0xFFC0;
    v20[1] = v40;
    v38 = v20 + 2;
  }

  else
  {
    v38 = v20;
    v39 = v15;
  }

  v37 = v75;
  if (v36)
  {
    if (v74 >= v75)
    {
      v41 = v75;
    }

    else
    {
      v41 = v74;
    }

    v42 = v41 >> 1;
    v43 = v41 - v9;
    if (v42 >= v43 >> 1)
    {
      v44 = v43 >> 1;
    }

    else
    {
      v44 = v42;
    }

    v45 = -v44;
    do
    {
      v46 = v39[1] & 0xFFC0;
      *v38 = *v39 & 0xFFC0;
      v38[1] = v46;
      v38 += 2;
      v39 += 2;
      v32 = __CFADD__(v45++, 1);
    }

    while (!v32);
  }

  v15 = (v15 + v14);
  v20 = (v20 + v19);
  if (v34)
  {
LABEL_36:
    v47 = 0;
    if (v74 >= v37)
    {
      v48 = v37;
    }

    else
    {
      v48 = v74;
    }

    v49 = v48 >> 1;
    v50 = v48 - v9;
    if (v49 >= v50 >> 1)
    {
      v51 = v50 >> 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = -v51;
    do
    {
      v53 = v20;
      v54 = v15;
      if (v35)
      {
        v55 = v15[1] & 0xFFC0;
        v54 = v15 + 2;
        *v20 = *v15 & 0xFFC0;
        v20[1] = v55;
        v53 = v20 + 2;
      }

      if (v36)
      {
        v56 = (v53 + v19 + 2);
        v57 = v53 + 1;
        v58 = v52;
        do
        {
          v59 = *v54 & 0xFFC0;
          v60 = v54[1] & 0xFFC0;
          *(v57 - 1) = v59;
          *v57 = v60;
          v57 += 2;
          *(v56 - 1) = v59;
          *v56 = v60;
          v56 += 2;
          v54 += 2;
          v32 = __CFADD__(v58++, 1);
        }

        while (!v32);
      }

      v15 = (v15 + v14);
      v20 += v19;
      ++v47;
    }

    while (v47 != v34);
    v34 *= 2;
  }

LABEL_51:
  if ((v34 | v33) < v22)
  {
    if (v35)
    {
      v61 = *v15 & 0xFFC0;
      v62 = v15[1] & 0xFFC0;
      v15 += 2;
      *v20 = v61;
      v20[1] = v62;
      v20 += 2;
    }

    if (v36)
    {
      if (v74 >= v37)
      {
        v63 = v37;
      }

      else
      {
        v63 = v74;
      }

      v64 = v63 - v9;
      if (v63 >> 1 >= v64 >> 1)
      {
        v65 = v64 >> 1;
      }

      else
      {
        v65 = v63 >> 1;
      }

      v66 = -v65;
      do
      {
        v67 = v15[1] & 0xFFC0;
        *v20 = *v15 & 0xFFC0;
        v20[1] = v67;
        v20 += 2;
        v15 += 2;
        v32 = __CFADD__(v66++, 1);
      }

      while (!v32);
    }
  }

  return 0;
}