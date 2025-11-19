uint64_t sub_100218A94(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v22 = v3;
    v23 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = (result - 64);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = v6[1];
          v18 = *v6;
          v19 = v11;
          v12 = v6[3];
          v20 = v6[2];
          v21 = v12;
          v13 = v9;
          do
          {
            v14 = v13[5];
            v13[8] = v13[4];
            v13[9] = v14;
            v15 = v13[7];
            v13[10] = v13[6];
            v13[11] = v15;
            result = (*a3)(&v18, v13);
            v13 -= 4;
          }

          while ((result & 1) != 0);
          v16 = v19;
          v13[8] = v18;
          v13[9] = v16;
          v17 = v21;
          v13[10] = v20;
          v13[11] = v17;
        }

        v7 = v6 + 4;
        v9 += 4;
      }

      while (v6 + 4 != a2);
    }
  }

  return result;
}

__int128 *sub_100218B64(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  if ((*a3)(&v28, a2 - 4))
  {
    v8 = a1;
    do
    {
      v8 += 4;
    }

    while (((*a3)(&v28, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 4;
    do
    {
      v8 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v10 = (*a3)(&v28, v9);
      v9 = v8 + 4;
    }

    while (!v10);
  }

  if (v8 < v4)
  {
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v8[3];
    v34 = v8[2];
    v35 = v13;
    v32 = v11;
    v33 = v12;
    v14 = *v4;
    v15 = v4[1];
    v16 = v4[3];
    v8[2] = v4[2];
    v8[3] = v16;
    *v8 = v14;
    v8[1] = v15;
    v17 = v32;
    v18 = v33;
    v19 = v35;
    v4[2] = v34;
    v4[3] = v19;
    *v4 = v17;
    v4[1] = v18;
    do
    {
      v8 += 4;
    }

    while (!(*a3)(&v28, v8));
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  v20 = v8 - 4;
  if (v8 - 4 != a1)
  {
    v21 = *v20;
    v22 = *(v8 - 3);
    v23 = *(v8 - 1);
    a1[2] = *(v8 - 2);
    a1[3] = v23;
    *a1 = v21;
    a1[1] = v22;
  }

  v24 = v28;
  v25 = v29;
  v26 = v31;
  *(v8 - 2) = v30;
  *(v8 - 1) = v26;
  *v20 = v24;
  *(v8 - 3) = v25;
  return v8;
}

__int128 *sub_100218CC4(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v27) & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 4];
  if (v6 == 4)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 4;
    }

    while (((*a3)(a2, &v27) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 4;
    }

    while (!(*a3)(a2, &v27));
  }

  if (v9 < a2)
  {
    v11 = &a1[v6];
    v12 = a2;
    do
    {
      v14 = v11[1];
      v31 = *v11;
      v13 = v31;
      v32 = v14;
      v16 = v11[3];
      v33 = v11[2];
      v15 = v33;
      v34 = v16;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v12[1];
      *v11 = *v12;
      v11[1] = v19;
      v11[2] = v18;
      v11[3] = v17;
      v12[2] = v15;
      v12[3] = v16;
      *v12 = v13;
      v12[1] = v14;
      do
      {
        v11 += 4;
      }

      while (((*a3)(v11, &v27) & 1) != 0);
      do
      {
        v12 -= 4;
      }

      while (!(*a3)(v12, &v27));
    }

    while (v11 < v12);
    v10 = v11 - 4;
  }

  if (v10 != a1)
  {
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[3];
    a1[2] = v10[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
  }

  v23 = v27;
  v24 = v28;
  v25 = v30;
  v10[2] = v29;
  v10[3] = v25;
  *v10 = v23;
  v10[1] = v24;
  return v10;
}

BOOL sub_100218E24(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 4;
      v17 = (*a3)(a1 + 4, a1);
      v18 = (*a3)(v16, a1 + 4);
      if (v17)
      {
        if (v18)
        {
          v20 = a1[2];
          v19 = a1[3];
          v22 = *a1;
          v21 = a1[1];
          v23 = v16[3];
          v25 = *v16;
          v24 = v16[1];
          a1[2] = v16[2];
          a1[3] = v23;
          *a1 = v25;
          a1[1] = v24;
        }

        else
        {
          v76 = a1[2];
          v75 = a1[3];
          v78 = *a1;
          v77 = a1[1];
          v79 = a1[5];
          *a1 = a1[4];
          a1[1] = v79;
          v80 = a1[7];
          a1[2] = a1[6];
          a1[3] = v80;
          a1[4] = v78;
          a1[5] = v77;
          a1[6] = v76;
          a1[7] = v75;
          if (!(*a3)(v16, a1 + 4))
          {
            return 1;
          }

          v20 = a1[6];
          v19 = a1[7];
          v22 = a1[4];
          v21 = a1[5];
          v81 = v16[3];
          v83 = *v16;
          v82 = v16[1];
          a1[6] = v16[2];
          a1[7] = v81;
          a1[4] = v83;
          a1[5] = v82;
        }

        *v16 = v22;
        v16[1] = v21;
        result = 1;
        v16[2] = v20;
        v16[3] = v19;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v45 = a1[6];
      v44 = a1[7];
      v47 = a1[4];
      v46 = a1[5];
      v48 = v16[3];
      v50 = *v16;
      v49 = v16[1];
      a1[6] = v16[2];
      a1[7] = v48;
      a1[4] = v50;
      a1[5] = v49;
      *v16 = v47;
      v16[1] = v46;
      v16[2] = v45;
      v16[3] = v44;
LABEL_50:
      if ((*a3)(a1 + 4, a1))
      {
        v126 = a1[2];
        v125 = a1[3];
        v128 = *a1;
        v127 = a1[1];
        v129 = a1[5];
        *a1 = a1[4];
        a1[1] = v129;
        v130 = a1[7];
        a1[2] = a1[6];
        a1[3] = v130;
        a1[4] = v128;
        a1[5] = v127;
        a1[6] = v126;
        a1[7] = v125;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      sub_1002186F0(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4, a3);
      return 1;
    }

    v35 = a2 - 4;
    v36 = (*a3)(a1 + 4, a1);
    v37 = (*a3)(a1 + 8, a1 + 4);
    if ((v36 & 1) == 0)
    {
      if (v37)
      {
        v64 = a1[6];
        v63 = a1[7];
        v66 = a1[4];
        v65 = a1[5];
        v67 = a1[9];
        a1[4] = a1[8];
        a1[5] = v67;
        v68 = a1[11];
        a1[6] = a1[10];
        a1[7] = v68;
        a1[8] = v66;
        a1[9] = v65;
        a1[10] = v64;
        a1[11] = v63;
        if ((*a3)(a1 + 4, a1))
        {
          v70 = a1[2];
          v69 = a1[3];
          v72 = *a1;
          v71 = a1[1];
          v73 = a1[5];
          *a1 = a1[4];
          a1[1] = v73;
          v74 = a1[7];
          a1[2] = a1[6];
          a1[3] = v74;
          a1[4] = v72;
          a1[5] = v71;
          a1[6] = v70;
          a1[7] = v69;
        }
      }

      goto LABEL_47;
    }

    if (v37)
    {
      v39 = a1[2];
      v38 = a1[3];
      v41 = *a1;
      v40 = a1[1];
      v42 = a1[9];
      *a1 = a1[8];
      a1[1] = v42;
      v43 = a1[11];
      a1[2] = a1[10];
      a1[3] = v43;
    }

    else
    {
      v105 = a1[2];
      v104 = a1[3];
      v107 = *a1;
      v106 = a1[1];
      v108 = a1[5];
      *a1 = a1[4];
      a1[1] = v108;
      v109 = a1[7];
      a1[2] = a1[6];
      a1[3] = v109;
      a1[4] = v107;
      a1[5] = v106;
      a1[6] = v105;
      a1[7] = v104;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_47;
      }

      v39 = a1[6];
      v38 = a1[7];
      v41 = a1[4];
      v40 = a1[5];
      v110 = a1[9];
      a1[4] = a1[8];
      a1[5] = v110;
      v111 = a1[11];
      a1[6] = a1[10];
      a1[7] = v111;
    }

    a1[8] = v41;
    a1[9] = v40;
    a1[10] = v39;
    a1[11] = v38;
LABEL_47:
    if (!(*a3)(v35, a1 + 8))
    {
      return 1;
    }

    v113 = a1[10];
    v112 = a1[11];
    v115 = a1[8];
    v114 = a1[9];
    v116 = v35[3];
    v118 = *v35;
    v117 = v35[1];
    a1[10] = v35[2];
    a1[11] = v116;
    a1[8] = v118;
    a1[9] = v117;
    *v35 = v115;
    v35[1] = v114;
    v35[2] = v113;
    v35[3] = v112;
    if (!(*a3)(a1 + 8, a1 + 4))
    {
      return 1;
    }

    v120 = a1[6];
    v119 = a1[7];
    v122 = a1[4];
    v121 = a1[5];
    v123 = a1[9];
    a1[4] = a1[8];
    a1[5] = v123;
    v124 = a1[11];
    a1[6] = a1[10];
    a1[7] = v124;
    a1[8] = v122;
    a1[9] = v121;
    a1[10] = v120;
    a1[11] = v119;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if ((*a3)(a2 - 4, a1))
    {
      v9 = a1[2];
      v8 = a1[3];
      v11 = *a1;
      v10 = a1[1];
      v12 = a2[-1];
      v14 = *v7;
      v13 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v12;
      *a1 = v14;
      a1[1] = v13;
      *v7 = v11;
      a2[-3] = v10;
      result = 1;
      a2[-2] = v9;
      a2[-1] = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v26 = a1 + 8;
  v27 = (*a3)(a1 + 4, a1);
  v28 = (*a3)(a1 + 8, a1 + 4);
  if (v27)
  {
    if (v28)
    {
      v30 = a1[2];
      v29 = a1[3];
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[9];
      *a1 = *v26;
      a1[1] = v33;
      v34 = a1[11];
      a1[2] = a1[10];
      a1[3] = v34;
    }

    else
    {
      v85 = a1[2];
      v84 = a1[3];
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[5];
      *a1 = a1[4];
      a1[1] = v88;
      v89 = a1[7];
      a1[2] = a1[6];
      a1[3] = v89;
      a1[4] = v87;
      a1[5] = v86;
      a1[6] = v85;
      a1[7] = v84;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_33;
      }

      v30 = a1[6];
      v29 = a1[7];
      v32 = a1[4];
      v31 = a1[5];
      v90 = a1[9];
      a1[4] = *v26;
      a1[5] = v90;
      v91 = a1[11];
      a1[6] = a1[10];
      a1[7] = v91;
    }

    *v26 = v32;
    a1[9] = v31;
    a1[10] = v30;
    a1[11] = v29;
  }

  else if (v28)
  {
    v52 = a1[6];
    v51 = a1[7];
    v54 = a1[4];
    v53 = a1[5];
    v55 = a1[9];
    a1[4] = *v26;
    a1[5] = v55;
    v56 = a1[11];
    a1[6] = a1[10];
    a1[7] = v56;
    *v26 = v54;
    a1[9] = v53;
    a1[10] = v52;
    a1[11] = v51;
    if ((*a3)(a1 + 4, a1))
    {
      v58 = a1[2];
      v57 = a1[3];
      v60 = *a1;
      v59 = a1[1];
      v61 = a1[5];
      *a1 = a1[4];
      a1[1] = v61;
      v62 = a1[7];
      a1[2] = a1[6];
      a1[3] = v62;
      a1[4] = v60;
      a1[5] = v59;
      a1[6] = v58;
      a1[7] = v57;
    }
  }

LABEL_33:
  v92 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v93 = 0;
  v94 = 0;
  while (1)
  {
    if ((*a3)(v92, v26))
    {
      v95 = v92[1];
      v131 = *v92;
      v132 = v95;
      v96 = v92[3];
      v133 = v92[2];
      v134 = v96;
      v97 = v93;
      while (1)
      {
        v98 = (a1 + v97);
        v99 = *(a1 + v97 + 144);
        v98[12] = *(a1 + v97 + 128);
        v98[13] = v99;
        v100 = *(a1 + v97 + 176);
        v98[14] = *(a1 + v97 + 160);
        v98[15] = v100;
        if (v97 == -128)
        {
          break;
        }

        v97 -= 64;
        if (((*a3)(&v131, v98 + 4) & 1) == 0)
        {
          v101 = (a1 + v97 + 192);
          goto LABEL_41;
        }
      }

      v101 = a1;
LABEL_41:
      v102 = v132;
      *v101 = v131;
      v101[1] = v102;
      v103 = v134;
      v101[2] = v133;
      v101[3] = v103;
      if (++v94 == 8)
      {
        return &v92[4] == a2;
      }
    }

    v26 = v92;
    v93 += 64;
    v92 += 4;
    if (v92 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_100219330(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 6;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + (v10 << 6));
      do
      {
        a5 = sub_10021952C(a1, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v15 = v13[2];
          v14 = v13[3];
          v17 = *v13;
          v16 = v13[1];
          v18 = *(a1 + 48);
          v20 = *a1;
          v19 = *(a1 + 16);
          v13[2] = *(a1 + 32);
          v13[3] = v18;
          *v13 = v20;
          v13[1] = v19;
          *a1 = v17;
          *(a1 + 16) = v16;
          *(a1 + 32) = v15;
          *(a1 + 48) = v14;
          a5 = sub_10021952C(a1, a4, v9, a1);
        }

        v13 += 4;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v36 = v7;
        v21 = 0;
        v37 = *a1;
        v38 = *(a1 + 16);
        v39 = *(a1 + 32);
        v40 = *(a1 + 48);
        v22 = a1;
        do
        {
          v23 = &v22[4 * v21];
          v24 = v23 + 4;
          v25 = (2 * v21) | 1;
          v26 = 2 * v21 + 2;
          if (v26 < v9)
          {
            v27 = v23 + 8;
            if ((*a4)(v23 + 4, v23 + 8))
            {
              v24 = v27;
              v25 = v26;
            }
          }

          v28 = *v24;
          v29 = v24[1];
          v30 = v24[3];
          v22[2] = v24[2];
          v22[3] = v30;
          *v22 = v28;
          v22[1] = v29;
          v22 = v24;
          v21 = v25;
        }

        while (v25 <= ((v9 - 2) >> 1));
        v7 = v36 - 4;
        if (v24 == &v36[-4])
        {
          v24[2] = v39;
          v24[3] = v40;
          *v24 = v37;
          v24[1] = v38;
        }

        else
        {
          v31 = *v7;
          v32 = v36[-3];
          v33 = v36[-1];
          v24[2] = v36[-2];
          v24[3] = v33;
          *v24 = v31;
          v24[1] = v32;
          *v7 = v37;
          v36[-3] = v38;
          v36[-2] = v39;
          v36[-1] = v40;
          sub_10021967C(a1, &v24[4], a4, (&v24[4] - a1) >> 6);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_10021952C(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 4))
      {
        v14 += 4;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v17 = v7[1];
        v27 = *v7;
        v28 = v17;
        v18 = v7[3];
        v29 = v7[2];
        v30 = v18;
        do
        {
          v19 = v14;
          v20 = *v14;
          v21 = v14[1];
          v22 = v14[3];
          v7[2] = v14[2];
          v7[3] = v22;
          *v7 = v20;
          v7[1] = v21;
          if (v9 < v13)
          {
            break;
          }

          v23 = (2 * v13) | 1;
          v14 = (a1 + (v23 << 6));
          v24 = 2 * v13 + 2;
          if (v24 < a3)
          {
            if ((*a2)((a1 + (v23 << 6)), v14 + 4))
            {
              v14 += 4;
              v23 = v24;
            }
          }

          v7 = v19;
          v13 = v23;
        }

        while (!(*a2)(v14, &v27));
        result = v27;
        v25 = v28;
        v26 = v30;
        v19[2] = v29;
        v19[3] = v26;
        *v19 = result;
        v19[1] = v25;
      }
    }
  }

  return result;
}

double sub_10021967C(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + (v6 >> 1 << 6));
    v11 = (a2 - 64);
    if ((*a3)(v10, (a2 - 64)))
    {
      v13 = v11[1];
      v21 = *v11;
      v22 = v13;
      v14 = v11[3];
      v23 = v11[2];
      v24 = v14;
      do
      {
        v15 = v10;
        v16 = *v10;
        v17 = v10[1];
        v18 = v10[3];
        v11[2] = v10[2];
        v11[3] = v18;
        *v11 = v16;
        v11[1] = v17;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + (v9 << 6));
        v11 = v15;
      }

      while (((*a3)(v10, &v21) & 1) != 0);
      v19 = v22;
      *v15 = v21;
      v15[1] = v19;
      result = *&v23;
      v20 = v24;
      v15[2] = v23;
      v15[3] = v20;
    }
  }

  return result;
}

void *sub_100219740(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 6)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10021986C(v6, v10);
    }

    sub_1000C1D48();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 6)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_10021986C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_100217A4C(a1, a2);
  }

  sub_1000C1D48();
}

__n128 sub_1002198A8(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 5;
      }

      sub_100217A4C(a1[4], v11);
    }

    v7 = ((v6 >> 6) + 1) / -2;
    v8 = ((v6 >> 6) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
    a1[2] = &v9[v10];
  }

  result = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v4[2] = a2[2];
  v4[3] = v14;
  *v4 = result;
  v4[1] = v13;
  a1[2] += 4;
  return result;
}

uint64_t sub_1002199C4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((*(result + 16) - *result) >> 3) < a4)
  {
    sub_100217508(result);
    if (a4 <= 0x276276276276276)
    {
      v9 = 0x9D89D89D89D89D8ALL * ((v7[2] - *v7) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x4EC4EC4EC4EC4EC5 * ((v7[2] - *v7) >> 3)) >= 0x13B13B13B13B13BLL)
      {
        v10 = 0x276276276276276;
      }

      else
      {
        v10 = v9;
      }

      sub_100217568(v7, v10);
    }

    sub_1000C1D48();
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0x4EC4EC4EC4EC4EC5 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_10026EC3C(v8, v6);
        v6 += 104;
        v8 += 104;
      }

      while (v6 != a3);
      v11 = v7[1];
    }

    while (v11 != v8)
    {
      v11 -= 104;
      result = sub_10026EC38(v11);
    }

    v7[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_10026EC3C(v8, v14);
        v14 += 104;
        v8 += 104;
        v13 -= 104;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_100219B6C(v7, v6 + v12, a3, v11);
    v7[1] = result;
  }

  return result;
}

uint64_t sub_100219B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10026EC00(a4, v6);
      v6 += 104;
      a4 += 104;
      v7 -= 104;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100219BCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 104;
    do
    {
      v4 = sub_10026EC38(v4) - 104;
      v2 += 104;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021A694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021A6D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021A71C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021A760(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021AF98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021AFDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10021B394(void *a1)
{
  v1 = a1;
  v2 = [NSScanner scannerWithString:v1];
  v13 = 0;
  if ([v2 scanInt:&v13] && ((v3 = objc_msgSend(v2, "isAtEnd"), v4 = v13, v13 >= 0) ? (v5 = v3) : (v5 = 0), v5 == 1))
  {
    v6 = v2;
  }

  else
  {
    v12 = 0.0;
    v6 = [NSScanner scannerWithString:v1];

    if ([v6 scanFloat:&v12])
    {
      v7 = [v6 isAtEnd];
      if (v12 >= 0.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8 == 1;
      v10 = vcvtas_u32_f32(v12);
      if (v9)
      {
        v4 = v10;
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

uint64_t sub_10021B4A0(void *a1)
{
  v1 = a1;
  v2 = [v1 UTF8String];
  LOBYTE(v3) = *v2;
  if (*v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v3 & 0x80) != 0)
      {
        v5 = __maskrune(v3, 0x100uLL);
      }

      else
      {
        v5 = _DefaultRuneLocale.__runetype[v3] & 0x100;
      }

      if (!v5 || (v6 = (*v2 & 0xFFFFFFFFFFFFFFDFLL) - 65, ((0x34FE4F3uLL >> v6) & 1) != 0))
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_17;
      }

      v7 = dword_1014630F8[v6];
      if (!v2[1])
      {
        break;
      }

      v8 = dword_1014630F8[(v2[1] & 0xFFFFFFFFFFFFFFDFLL) - 65];
      if (v8 <= v7)
      {
        v3 = v2[1];
      }

      else
      {
        v7 = v8 - v7;
        v3 = v2[2];
        ++v2;
      }

      v4 += v7;
      ++v2;
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    v4 += v7;
  }

  else
  {
    v4 = 0;
  }

LABEL_17:

  return v4;
}

uint64_t sub_10021B5C4(void *a1)
{
  v1 = [a1 uppercaseString];
  v2 = sub_10021B4A0(v1);

  return v2;
}

uint64_t sub_10021B60C(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [v1 UTF8String];
  v4 = *v3;
  if (v2)
  {
    v5 = 0;
    while (v4 < 0 ? __maskrune(v4, 0x100uLL) : _DefaultRuneLocale.__runetype[v4] & 0x100)
    {
      v4 = *v3;
      if (((v3[v5] ^ *v3) & 0xDF) != 0)
      {
        break;
      }

      if (v2 == ++v5)
      {
        goto LABEL_9;
      }
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_9:
    v7 = 26 * v2 + (v4 & 0xDF) - 90;
  }

  return v7;
}

uint64_t sub_10021B6FC(void *a1)
{
  v1 = [a1 uppercaseString];
  v2 = sub_10021B60C(v1);

  return v2;
}

void sub_10021B744(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021B788(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021BA8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021BAD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10021CEBC(unsigned int a1)
{
  if (!a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013360DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013360F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336178();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v3 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPArabicLabelFromNumber"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:422 isFatal:0 description:"Illegal value for arabic numeral topic label <= 0"];
  }

  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = [NSString stringWithFormat:@"%d", v5];

  return v6;
}

id sub_10021D084(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_101A34888, memory_order_acquire) & 1) == 0)
  {
    sub_1013361A0();
  }

  if (!a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336204();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336218();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013362A0();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v3 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPRomanUpperLabelFromNumber"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:525 isFatal:0 description:"Illegal value for roman numeral topic label <= 0"];
  }

  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = +[NSMutableString string];
  v7 = 12;
  do
  {
    v8 = &unk_101849E68 + 16 * v7;
    if (v5 >= *v8)
    {
      v9 = *(v8 + 1);
      do
      {
        [v6 appendString:v9];
        v5 -= *v8;
      }

      while (v5 >= *v8);
    }

    v11 = v7-- != 0;
  }

  while (v5 && v11);

  return v6;
}

id sub_10021D2AC(unsigned int a1)
{
  v1 = sub_10021D084(a1);
  v2 = [v1 lowercaseString];

  return v2;
}

id sub_10021D308(int a1)
{
  v1 = sub_10021FFCC(a1, aAbcdefghijklmn_0, 0x1AuLL);
  v2 = [v1 lowercaseString];

  return v2;
}

id sub_10021D370(int a1)
{
  v2 = +[NSMutableString string];
  v3 = aAbcdefghijklmn_0[((a1 - 1) & 3) + 26];
  v4 = -1;
  do
  {
    [v2 appendFormat:@"%C", v3];
    ++v4;
  }

  while ((a1 - 1) >> 2 > v4);

  return v2;
}

id sub_10021D420(uint64_t a1, unsigned int a2)
{
  v4 = +[NSMutableString string];
  v5 = v4;
  v6 = a2;
  if (a1)
  {
    v7 = &unk_10146319C + 16 * a2;
    v8 = *(&off_101849F78 + a2);
    v9 = v4;
    v23 = v9;
    v24 = a2;
    v25 = 1;
    v26 = v8;
    v10 = sub_100220250(v7, (v7 + 16), a1, &v23);
    v11 = sub_100220338(v10, a2);
    [v9 appendString:v11];

    v12 = &word_1014631FC[10 * a2];
    v22 = *v12;
    v13 = [NSString stringWithCharacters:&v22 length:1];
    if (a2 && a2 != 3)
    {
      v18 = [v9 componentsSeparatedByString:v13];
      v14 = [NSMutableArray arrayWithArray:v18];

      [v14 removeObject:&stru_1018BCA28];
      v19 = [v14 componentsJoinedByString:v13];
      v15 = [v19 mutableCopy];

      if ([v15 length] >= 2)
      {
        v20 = [v15 characterAtIndex:0];
        v21 = [v15 characterAtIndex:1];
        if (v20 == v12[1] && (v21 == *(v7 + 2) || v21 == *(v7 + 6) || v21 == word_101463274[12 * v6 + 10]))
        {
          [v15 deleteCharactersInRange:{0, 1}];
        }
      }
    }

    else
    {
      v14 = [v9 stringByReplacingOccurrencesOfString:v13 withString:&stru_1018BCA28];
      v15 = [v14 mutableCopy];
    }

    v16 = v15;
  }

  else
  {
    [v4 crl_appendCharacter:word_1014631FC[10 * a2]];
    v16 = v5;
  }

  return v16;
}

id sub_10021D6FC(unsigned int a1)
{
  if (!a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013362C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013362DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336364();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v3 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPCircledNumberLabelFromNumber"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:814 isFatal:0 description:"Illegal value for circled number numeral topic label <= 0"];
  }

  v5 = 0;
  while (1)
  {
    v6 = dword_1014633DC[v5];
    if (a1 >= v6 && dword_1014633E8[v5] + v6 > a1)
    {
      break;
    }

    if (++v5 == 3)
    {
      goto LABEL_15;
    }
  }

  v9 = word_1014633F4[v5] + a1 - v6;
  v7 = [NSString stringWithCharacters:&v9 length:1];
  if (!v7)
  {
LABEL_15:
    v7 = sub_10021CEBC(a1);
  }

  return v7;
}

id sub_10021D918(unsigned int a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133638C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013363A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336428();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v5 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPArabicLabelFromNumberAndLocale(unsigned int, NSString *__strong)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:434 isFatal:0 description:"Illegal value for arabic numeral topic label <= 0"];
  }

  if (a1 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1;
  }

  v8 = objc_alloc_init(NSNumberFormatter);
  v9 = [[NSLocale alloc] initWithLocaleIdentifier:v3];
  [v8 setLocale:v9];

  v10 = [NSNumber numberWithUnsignedInt:v7];
  v11 = [v8 stringFromNumber:v10];

  return v11;
}

id sub_10021DB84(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 0xF4240)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336450();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336464();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013364EC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v4 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPArabianAbjadLabelFromNumber(uint)"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:747 isFatal:0 description:"number out of bounds for algorithm"];

LABEL_14:
    v6 = sub_100220CAC(v1 / 0x3E8, __b);
    v2 = v6 + 1;
    *&__b[2 * v6] = 39;
    v1 %= 0x3E8u;
    goto LABEL_15;
  }

  if (!a1)
  {
    v11 = [NSString stringWithCharacters:&unk_101463432 length:3];
    goto LABEL_26;
  }

  if (a1 >= 0x3E8)
  {
    goto LABEL_14;
  }

  v2 = 0;
LABEL_15:
  v7 = sub_100220CAC(v1, &__b[2 * v2]) + v2;
  if (v7 >= 0xC)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336514();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133653C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013365C4();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v9 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPArabianAbjadLabelFromNumber(uint)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:767 isFatal:0 description:"string out of bounds"];
  }

  v11 = [NSString stringWithCharacters:__b length:v7];
LABEL_26:

  return v11;
}

id sub_10021DEEC(unsigned int a1)
{
  v1 = a1;
  if (a1 >= 0xF4240)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013365EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336600();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336688();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v4 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPHebrewBiblicalLabelFromNumber(uint)"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:689 isFatal:0 description:"Hebrew number out of bounds for algorithm"];

LABEL_14:
    v6 = sub_1002212D4(v1 / 0x3E8, __b);
    v2 = v6 + 1;
    *&__b[2 * v6] = 1523;
    v1 %= 0x3E8u;
    goto LABEL_15;
  }

  if (!a1)
  {
    v11 = [NSString stringWithCharacters:&unk_10146349C length:3];
    goto LABEL_26;
  }

  if (a1 >= 0x3E8)
  {
    goto LABEL_14;
  }

  v2 = 0;
LABEL_15:
  v7 = sub_1002212D4(v1, &__b[2 * v2]) + v2;
  if (v7 >= 0xE)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013366B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013366D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336760();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v9 = [NSString stringWithUTF8String:"NSString *(anonymous namespace)::CRLWPHebrewBiblicalLabelFromNumber(uint)"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:709 isFatal:0 description:"string out of bounds"];
  }

  v11 = [NSString stringWithCharacters:__b length:v7];
LABEL_26:

  return v11;
}

void sub_10021E254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021E298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021E2DC(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  [v1 addCharactersInRange:{46, 1}];
  [v1 addCharactersInRange:{40, 1}];
  [v1 addCharactersInRange:{41, 1}];
  v2 = qword_101A34878;
  qword_101A34878 = v1;
}

void sub_10021ED78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021EDBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021EE00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021EE44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021EE88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021EECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F630(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F6B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F6FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F740(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F7C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021F80C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021FBFC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_10021FC3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021FC80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021FEBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021FF00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021FF44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10021FF88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10021FFCC(int a1, uint64_t a2, unint64_t a3)
{
  v6 = +[NSMutableString string];
  if (a1)
  {
    v7 = (a1 - 1);
    v8 = *(a2 + 2 * (v7 % a3));
    if ((v7 / a3 + 1) < 100)
    {
      v9 = v7 / a3 + 1;
    }

    else
    {
      v9 = 100;
    }

    while (1)
    {
      v10 = __OFSUB__(v9--, 1);
      if (v9 < 0 != v10)
      {
        break;
      }

      [v6 crl_appendCharacter:v8];
    }
  }

  return v6;
}

void sub_100220070(void *a1, unsigned int a2, int a3)
{
  v5 = a1;
  if (a2 >= 0xA)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336C30();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336C44();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336CCC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v7 = [NSString stringWithUTF8String:"void (anonymous namespace)::appendIdeographicDigit(NSMutableString *__strong, unsigned int, CRLWPListIdeographicType)"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:195 isFatal:0 description:"inDigit is larger than single digit"];
  }

  [v5 crl_appendCharacter:word_1014631FC[10 * a3 + a2]];
}

uint64_t sub_100220250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *(a4 + 8);
      v9 = *(a4 + 12);
      v10 = *(a4 + 16);
      v11 = *a4;
      v12 = v11;
      v13 = *v7;
      v14 = a3 / *v7;
      if (a3 && (v14 != 1 || (v9 & 1) != 0 || v8 && v8 != 3))
      {
        v10(v11, a3 / v13);
      }

      if (v13 <= a3)
      {
        [v12 crl_appendCharacter:*(v7 + 4)];
      }

      v15 = *v7;
      v7 += 8;
      a3 = a3 - v15 * v14;
    }

    while (v7 != a2);
  }

  return a3;
}

id sub_100220338(uint64_t a1, unsigned int a2)
{
  if (a1 >> 4 >= 0x271)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336CF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336D08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336D90();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v5 = [NSString stringWithUTF8String:"NSMutableString *(anonymous namespace)::ideographicNumberStringForSmallValue(unsigned int, CRLWPListIdeographicType, BOOL)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:308 isFatal:0 description:"inValue too large for ideographicNumberStringForSmallValue"];
  }

  v7 = +[NSMutableString string];
  v8 = *(&off_10184A028 + a2);
  v9 = v7;
  v12 = v9;
  v13 = a2;
  v14 = 0;
  v15 = v8;
  v10 = sub_100220250(&unk_101463274 + 24 * a2, &unk_101463274 + 24 * a2 + 24, a1, &v12);
  if (v10)
  {
    sub_100220070(v9, v10, a2);
  }

  return v9;
}

void sub_10022055C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002205A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002205E4(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = sub_100220338(a2, 0);
  [v4 appendString:v3];
}

void sub_100220680(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = sub_100220338(a2, 1u);
  [v4 appendString:v3];
}

void sub_10022071C(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = sub_100220338(a2, 2u);
  [v4 appendString:v3];
}

void sub_1002207B8(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = sub_100220338(a2, 3u);
  [v4 appendString:v3];
}

void sub_100220854(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = sub_100220338(a2, 4u);
  [v4 appendString:v3];
}

void sub_1002208F0(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = sub_100220338(a2, 5u);
  [v4 appendString:v3];
}

void sub_10022098C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002209D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100220A44(int a1, uint64_t a2, unint64_t a3, int a4)
{
  LODWORD(v7) = a1;
  v8 = +[NSMutableString string];
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = (v7 - 1);
      if (a4)
      {
        v11 = *(a2 + 2 * (v10 % a3)) + 96;
      }

      else
      {
        v11 = *(a2 + 2 * (v10 % a3));
      }

      [v8 crl_insertCharacter:v11 atIndex:0];
      v12 = v10 - (v10 % a3);
      if (v12 < a3)
      {
        break;
      }

      v7 = v12 / a3;
    }

    while (v9++ < 0x64);
  }

  return v8;
}

void sub_100220B14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100220B58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100220B9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100220BE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100220C24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100220C68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_100220CAC(unsigned int a1, char *__b)
{
  if (a1 >= 0x3E8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336DB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336DCC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336E54();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v6 = [NSString stringWithUTF8String:"uint (anonymous namespace)::toAbjadUnder1000(uint, unichar *)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:720 isFatal:0 description:"number out of range"];
  }

  else if (a1 < 0x190)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = a1 / 0x190uLL;
  memset_pattern16(__b, &unk_1014634C0, 2 * (v4 - 1) + 2);
LABEL_14:
  if (a1 % 0x190 >= 0x64)
  {
    *&__b[2 * v4] = word_101463438[a1 % 0x190 / 0x64 - 1];
    v4 = (v4 + 1);
  }

  v8 = a1 % 0x190 % 0x64;
  if (v8 - 15 > 1)
  {
    if (v8 >= 0xA)
    {
      *&__b[2 * v4] = word_10146344C[a1 % 0x190 % 0x64 / 0xA - 1];
      v4 = (v4 + 1);
    }

    if (a1 % 0x190 % 0x64 % 0xA)
    {
      *&__b[2 * v4] = word_10146345E[a1 % 0x190 % 0x64 % 0xA - 1];
      v4 = (v4 + 1);
    }
  }

  else
  {
    v9 = &__b[2 * v4];
    *v9 = 1610;
    v4 = (v4 + 2);
    *(v9 + 1) = word_10146345E[v8 - 11];
  }

  if (v4 >= 6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336E7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336EA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336F2C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v11 = [NSString stringWithUTF8String:"uint (anonymous namespace)::toAbjadUnder1000(uint, unichar *)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:742 isFatal:0 description:"string out of range"];
  }

  return v4;
}

void sub_1002210B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002210F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022113C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002211C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022124C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221290(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

unint64_t sub_1002212D4(unsigned int a1, char *__b)
{
  if (a1 >= 0x3E8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101336F54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101336F68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101336FF0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_101335C2C();
    }

    v6 = [NSString stringWithUTF8String:"uint (anonymous namespace)::toHebrewUnder1000(uint, unichar *)"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:653 isFatal:0 description:"number out of range"];
  }

  else if (a1 < 0x190)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = a1 / 0x190uLL;
  memset_pattern16(__b, &unk_1014634D0, 2 * (v4 - 1) + 2);
LABEL_14:
  if (a1 % 0x190 >= 0x64)
  {
    *&__b[2 * v4] = a1 % 0x190 / 0x64 + 1510;
    v4 = (v4 + 1);
  }

  v8 = a1 % 0x190 % 0x64;
  if (v8 - 15 <= 1)
  {
    v9 = &__b[2 * v4];
    *v9 = 1496;
    LODWORD(v4) = v4 + 2;
    *(v9 + 1) = v8 + 1478;
LABEL_23:
    v10 = v4;
    v11 = &__b[2 * v4];
    *v11 = *(v11 - 1);
    *(v11 - 1) = 1524;
    v4 = (v4 + 1);
    if (v10 >= 6)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101337018();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101337040();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013370C8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_101335C2C();
      }

      v13 = [NSString stringWithUTF8String:"uint (anonymous namespace)::toHebrewUnder1000(uint, unichar *)"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/NSString+CRLWPAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:684 isFatal:0 description:"string out of range"];
    }

    return v4;
  }

  if (a1 % 0x190 % 0x64 >= 0xA)
  {
    *&__b[2 * v4] = word_1014634A2[v8 / 0xAu - 1];
    v4 = (v4 + 1);
  }

  if (a1 % 0x190 % 0x64 % 0xA)
  {
    *&__b[2 * v4] = a1 % 0x190 % 0x64 % 0xA + 1487;
    v4 = (v4 + 1);
  }

  if (v4 >= 2)
  {
    goto LABEL_23;
  }

  return v4;
}

void sub_1002216DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221720(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221764(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002217A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002217EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221830(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100221874()
{
  for (i = &stru_1000000B0.segname[8]; i != -8; i -= 16)
  {
  }
}

void sub_100222510(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100222554(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100222994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002229D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100222C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100222CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_100222E78(double *a1, double a2, double a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = sub_10011F31C(a2, a3, *a1);
  v8 = v7;
  v9 = a1[2];
  v10 = a1[3];
  v11 = sub_10011F31C(v9, v10, v4);
  v13 = sub_10011F328(v6, v8, v11, v12);
  v14 = v13 / sub_10011F068(v9, v10, v4, v5);

  return sub_1004C3240(v14, 0.0, 1.0);
}

void sub_100223970(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 168);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100223A38;
  v12[3] = &unk_10184A3A0;
  v12[4] = v3;
  v5 = v2;
  v6 = a1[7];
  v13 = v5;
  v14 = v6;
  v15 = a1[8];
  dispatch_sync(v4, v12);
  v11 = a1[6];
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8, v9, v10);
  }
}

uint64_t sub_100223A38(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  [*(*(a1 + 32) + 80) _setInputType:*(a1 + 48)];
  *(*(a1 + 32) + 304) = *(a1 + 56);
  [*(a1 + 32) setUseRuler:0];
  [*(a1 + 32) setCanSnapToRuler:0];
  [*(a1 + 32) setIsSnappedToRuler:0];
  [*(a1 + 32) setStrokeMaxForce:0.0];
  [*(a1 + 32) setTouchSensitivity:1.0];
  *(*(a1 + 32) + 88) = *(a1 + 48);
  *(*(a1 + 32) + 96) = 0;
  memset(v11, 0, sizeof(v11));
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v2 = *(*(a1 + 32) + 80);
  __asm { FMOV            V0.2D, #1.0 }

  v12 = _Q0;
  [v2 _setBaseValues:v11];
  [*(a1 + 40) timestamp];
  *(*(*(a1 + 32) + 288) + 104) = v8;
  v9 = [*(a1 + 32) outputFilter];
  return (*(*v9 + 16))(v9, *(a1 + 48), *(*(a1 + 32) + 304));
}

id sub_100223BE0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  [*(a1 + 32) setRulerTransform:v4];
  [*(a1 + 32) setRulerWidth:*(a1 + 88)];
  [*(a1 + 32) setUseRuler:1];
  return [*(a1 + 32) setCanSnapToRuler:1];
}

void sub_100224300(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013372E0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013372F4(v3);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013373A8();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"void CRLPKPointReductionFilter::setPointReductionFilterThresholdMultiplier(CGFloat)"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKPointReductionFilter.h"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:46 isFatal:0 description:"Unexpected multiplier value < 0 (%f).", *&a2];
  }

  else
  {
    *(a1 + 128) = a2;
  }
}

uint64_t sub_100224560(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilter];
  result = (*(*v2 + 32))(v2, *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1002246C8(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10022B9BC(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 80 * a2;
  }
}

void sub_1002249B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002249F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100224AEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 1)
  {
    sub_1002246C8((v2 + 32), *(v2 + 56));
    v3 = [*(a1 + 32) outputFilter];
    *(*(a1 + 32) + 56) = (*(*v3 + 40))(v3, *(*(a1 + 32) + 56), *(a1 + 32) + 32);
    *(*(a1 + 32) + 64) = 0;
    v2 = *(a1 + 32);
  }

  sub_1002246C8(*(a1 + 48), 0xCCCCCCCCCCCCCCCDLL * ((*(v2 + 40) - *(v2 + 32)) >> 4));
  v4 = *(a1 + 32);
  v5 = v4[5];
  v6 = (v4[4] + 80 * *(a1 + 56));
  if (v6 != v5)
  {
    memmove((80 * *(a1 + 56) + **(a1 + 48)), v6, v5 - v6);
    v4 = *(a1 + 32);
  }

  *(*(*(a1 + 40) + 8) + 24) = v4[7];
}

void sub_100224CAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v11 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    v12 = v11 + 1;
    if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1000C1D48();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v14 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1000C1DF0(a1, v14);
    }

    v15 = 88 * v11;
    v16 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v16;
    v17 = *(a2 + 32);
    v18 = *(a2 + 48);
    v19 = *(a2 + 64);
    *(v15 + 80) = *(a2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v10 = 88 * v11 + 88;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v8;
    *(v4 + 64) = v9;
    *(v4 + 32) = v7;
    v10 = v4 + 88;
  }

  *(a1 + 8) = v10;
}

id sub_100224E60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (*(v2 + 112) != v3)
  {
    v4 = 0;
    v5 = 0;
    while (2)
    {
      v6 = v5;
      v7 = *(v2 + 96);
      v8 = *(v2 + 8);
      v9 = 0x2E8BA2E8BA2E8BA3 * ((*(v2 + 16) - v8) >> 3);
      v5 = v3;
      while (v9 <= v7)
      {
LABEL_8:
        v5 += 11;
        if (v5 == *(v2 + 112))
        {
          v3 = v5;
          if ((v4 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }
      }

      v10 = v9 - v7;
      v11 = 88 * v7;
      while (*(v8 + v11 + 64) != v5[8])
      {
        v11 += 88;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }

      *(v8 + v11 + 16) = v5[2];
      v12 = *(a1 + 32);
      if (!*(v12 + 88))
      {
        *(*(v12 + 8) + v11 + 16) = *(*(v12 + 8) + v11 + 16) / *(v12 + 312);
        v12 = *(a1 + 32);
      }

      *(*(v12 + 8) + v11 + 64) = -1;
      v2 = *(a1 + 32);
      v3 = v5 + 11;
      v4 = 1;
      v6 = v5;
      if (v5 + 11 != *(v2 + 112))
      {
        continue;
      }

      break;
    }

LABEL_15:
    v13 = *(v2 + 104);
    v14 = v6 + 11;
    if (v6 + 11 != v13)
    {
      v15 = v3 - v14;
      if (v3 != v14)
      {
        memmove(*(v2 + 104), v14, v3 - v14);
      }

      *(v2 + 112) = v13 + v15;
      v2 = *(a1 + 32);
    }
  }

LABEL_19:
  result = [v2 updateImmutableCount];
  v17 = *(a1 + 32);
  if (*(v17 + 128) == 1 && *(v17 + 96) >= (0x2E8BA2E8BA2E8BA3 * ((*(v17 + 16) - *(v17 + 8)) >> 3)))
  {
    *(v17 + 128) = 0;
    v18 = *(*(a1 + 32) + 136);

    return dispatch_semaphore_signal(v18);
  }

  return result;
}

void sub_100225204(void *a1)
{
  v1 = a1[4];
  if (*(v1 + 80))
  {
    v3 = *(v1 + 168);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3321888768;
    v4[2] = sub_1002252D4;
    v4[3] = &unk_10184A4D0;
    v6 = 0;
    v7 = 0;
    __p = 0;
    sub_10022BB30(&__p, a1[5], a1[6], 0x2E8BA2E8BA2E8BA3 * ((a1[6] - a1[5]) >> 3));
    v4[4] = a1[4];
    dispatch_sync(v3, v4);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void *sub_1002252D4(void *result)
{
  v3 = result[6] - result[5];
  if (v3 >= 1)
  {
    v16 = v1;
    v17 = v2;
    v4 = result;
    v5 = 0;
    v6 = v3 / 0x58uLL;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v8 = v4[4];
      v9 = v4[5] + v5;
      v10 = *(v9 + 16);
      v14[0] = *v9;
      v14[1] = v10;
      v12 = *(v9 + 48);
      v11 = *(v9 + 64);
      v13 = *(v9 + 32);
      v15 = *(v9 + 80);
      v14[3] = v12;
      v14[4] = v11;
      v14[2] = v13;
      result = [v8 _drawingAddPoint:v14];
      v5 += 88;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100225378(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_10022BB30(v2, *(a2 + 40), *(a2 + 48), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 48) - *(a2 + 40)) >> 3));
}

void sub_1002253A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_10022545C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80))
  {
    v2 = *(v1 + 168);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100225510;
    v3[3] = &unk_10184A4A8;
    v3[4] = v1;
    v6 = *(a1 + 72);
    v7 = *(a1 + 88);
    v8 = *(a1 + 104);
    v9 = *(a1 + 120);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    dispatch_sync(v2, v3);
  }
}

id sub_100225510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 88);
  v5[2] = *(a1 + 72);
  v5[3] = v2;
  v5[4] = *(a1 + 104);
  v6 = *(a1 + 120);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  return [v1 _drawingAddPoint:v5];
}

void sub_1002256B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v3 = *(v2 + 168);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100225914;
    block[3] = &unk_10184A508;
    block[4] = v2;
    block[5] = &v15;
    dispatch_sync(v3, block);
    if (*(v16 + 24) == 1)
    {
      v4 = dispatch_time(0, 200000000);
      v5 = dispatch_get_global_queue(25, 0);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1002259D8;
      v13[3] = &unk_10183F960;
      v13[4] = *(a1 + 32);
      dispatch_after(v4, v5, v13);

      dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 168);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002259E0;
    v12[3] = &unk_10183F960;
    v12[4] = v6;
    dispatch_sync(v7, v12);
    (*(*(a1 + 40) + 16))();
    v8 = *(a1 + 32);
    v9 = *(v8 + 168);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100225AA8;
    v11[3] = &unk_10183F960;
    v11[4] = v8;
    dispatch_sync(v9, v11);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v10 = *(*(a1 + 40) + 16);

    v10();
  }
}

id sub_100225914(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 1;
  [*(a1 + 32) removePredictedTouches];
  v2 = [*(a1 + 32) outputFilter];
  (*(*v2 + 24))(v2);
  [*(a1 + 32) setCanSnapToRuler:0];
  *(*(*(a1 + 32) + 200) + 40) = 0;
  result = [*(a1 + 32) updateImmutableCount];
  if (*(*(a1 + 32) + 96) != 0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)) >> 3))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(a1 + 32) + 128) = 1;
  }

  return result;
}

void sub_1002259E0(uint64_t a1)
{
  __p = 0;
  v4 = 0;
  v5 = 0;
  v2 = [*(a1 + 32) compressionFilter];
  (*(*v2 + 40))(v2, 0, &__p);
  [*(*(a1 + 32) + 80) _setPoints:? count:? copy:?];
  [*(*(a1 + 32) + 80) set_inflight:0];
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_100225A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100225AA8(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilter];
  (*(*v2 + 48))(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;
}

void sub_100225BDC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100225C6C;
  block[3] = &unk_10183F960;
  block[4] = v2;
  dispatch_sync(v3, block);
}

void sub_100225C6C(uint64_t a1)
{
  v2 = [*(a1 + 32) outputFilter];
  (*(*v2 + 48))(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;
}

void sub_10022601C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  v32 = *(v30 - 128);
  if (v32)
  {
    *(v30 - 120) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 104);
  if (v33)
  {
    *(v30 - 96) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002262C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a18, 8);

  v26 = *(v24 - 72);
  if (v26)
  {
    *(v24 - 64) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100226328(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100226340(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100226438(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 168);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002264C8;
  block[3] = &unk_10184A5A8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

id sub_1002267D8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v4 = [WeakRetained getInputUpdatedRangeFromIndex:a2];

  return v4;
}

id sub_100226828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v6 = [WeakRetained copyInputUpdatedRangeFromIndex:a2 into:a3];

  return v6;
}

void sub_100226888(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  [WeakRetained reset];
}

void sub_100226910(uint64_t a1)
{
  objc_destroyWeak((a1 + 8));

  operator delete();
}

void sub_100226990(uint64_t a1)
{
  objc_destroyWeak((a1 + 48));

  operator delete();
}

double sub_1002269DC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f64[0];
  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 16))(v6, a2, a3);
  }

  result = v3 * 0.5;
  *(a1 + 24) = v3;
  *(a1 + 32) = v3 * 0.5;
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_100226A50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained isSnappedToRuler])
  {
  }

  else
  {
    v9 = *(a1 + 40);

    if (v9 != 1)
    {
      v10 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v6) >> 3);
      v11 = *a3;
      v12 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
      if (v10 + 1 < v12 - 1)
      {
        v13 = (v11 + 88 * (v10 + 1));
        v15 = *v13;
        v14 = v13[1];
        v16 = v12 - v10 - 2;
        v17 = (v11 + 8 * ((v5 - v6) >> 3) + 96);
        do
        {
          v18 = v17[10];
          v19 = v17[11];
          v20 = sub_10011F334(v15, v14, *(v17 - 12));
          v21 = sub_10011F334(v18, v19, v20);
          v23 = sub_10011F340(v21, v22, 0.333333333);
          v25 = v24;
          v26 = sub_10011F31C(v23, v24, v15);
          v28 = v27;
          v29 = sub_100120074(v26, v27);
          v30 = *(a1 + 32);
          if (v29 >= v30)
          {
            v31 = sub_10011F340(v26, v28, v30 / v29);
            v23 = sub_10011F334(v15, v14, v31);
            v25 = v32;
          }

          *(v17 - 1) = v23;
          *v17 = v25;
          v17 += 11;
          v14 = v19;
          v15 = v18;
          --v16;
        }

        while (v16);
      }

      if (v7 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v7;
      }

      v34 = v33 - 1;
      if (!*(a1 + 16))
      {
        return v34;
      }
    }
  }

  return v7;
}

uint64_t sub_100226C40(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  return result;
}

void *sub_100226C90(void *a1)
{
  *a1 = off_10184A698;
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  *a1 = off_101839AC8;
  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  *a1 = off_101839B30;
  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_100226D48(void *a1)
{
  *a1 = off_10184A698;
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  *a1 = off_101839AC8;
  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  *a1 = off_101839B30;
  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  operator delete();
}

float64x2_t sub_100226E20(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v8 = a3;
    (*(*v5 + 16))(v5, a2);
    a3 = v8;
  }

  *(a1 + 24) = a3;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  v6 = vmulq_n_f64(vmulq_n_f64(xmmword_101463510, a3), *(a1 + 128));
  result = vmulq_f64(v6, v6);
  *(a1 + 136) = result;
  return result;
}

void *sub_100226EA8(uint64_t a1)
{
  result = sub_1000C18B4(a1);
  *(a1 + 120) = 0;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_100226ED4(uint64_t a1)
{
  sub_1000C1498((a1 + 48), *(a1 + 32) - *(a1 + 120));
  *(a1 + 32) = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 72);

  return v2(a1);
}

void sub_100226F70(uint64_t a1)
{
  if (*(a1 + 56) != *(a1 + 48) && (*(a1 + 200) & 1) == 0)
  {
    sub_100227728(a1);
    sub_1000C1498((a1 + 80), *(a1 + 72));
    sub_1000DAA88((a1 + 152), 0);
    *buf = -1;
    *v65 = 0;
    sub_1000DACAC(a1 + 152, buf);
    v2 = *(a1 + 112);
    v3 = v2 + 1;
    if (v2 + 1 < (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3)))
    {
      v4 = (16 * v2) | 8;
      v5 = 88 * v2 + 8;
      do
      {
        v6 = v3;
        v7 = *(a1 + 112);
        v8 = 1.79769313e308;
        if (v2 >= v7)
        {
          v63 = v3 >> 63;
          v9 = v5;
          v10 = v4;
          v11 = *(a1 + 112);
          do
          {
            v12 = sub_10011F068(*(*(a1 + 48) + 88 * v6), *(*(a1 + 48) + 88 * v6 + 8), *(*(a1 + 48) + v9 - 8), *(*(a1 + 48) + v9));
            if (*(*(a1 + 152) - 16 * v11 + v10) < 1.79769313e308 && v12 >= *(a1 + 136))
            {
              v13 = sub_1002278B0(a1, v2, v6) + *(*(a1 + 152) - 16 * *(a1 + 112) + v10);
              if (v13 < v8)
              {
                v7 = v2;
                v8 = v13;
              }

              v14 = v6;
              if (v63)
              {
                v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_1013374A8();
                }

                log = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  *&buf[4] = v16;
                  *v65 = 2082;
                  *&v65[2] = "virtual void CRLPKPointReductionFilter::run()";
                  v66 = 2082;
                  v67 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKPointReductionFilter.h";
                  v68 = 1024;
                  v69 = 170;
                  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", buf, 0x22u);
                }

                v59 = v16;
                if (qword_101AD5A10 != -1)
                {
                  dispatch_once(&qword_101AD5A10, &stru_10184A728);
                }

                v17 = off_1019EDA68;
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  loga = v17;
                  v19 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  *&buf[4] = v59;
                  *v65 = 2114;
                  *&v65[2] = v19;
                  _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);

                  v17 = loga;
                }

                logb = [NSString stringWithUTF8String:"virtual void CRLPKPointReductionFilter::run()"];
                v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKPointReductionFilter.h"];
                [CRLAssertionHandler handleFailureInFunction:logb file:v18 lineNumber:170 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

                v14 = 0x7FFFFFFFFFFFFFFFLL;
              }

              if (v2 < v14 - 50 || v12 > *(a1 + 144))
              {
                break;
              }

              v11 = *(a1 + 112);
            }

            v10 -= 16;
            v9 -= 88;
          }

          while (v2-- > v11);
        }

        *buf = v7;
        *v65 = v8;
        sub_1000DACAC(a1 + 152, buf);
        v3 = v6 + 1;
        v4 += 16;
        v5 += 88;
        v2 = v6;
      }

      while (v6 + 1 < 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3));
    }

    sub_1001DC32C((a1 + 176), 0);
    v20 = *(a1 + 112);
    v21 = v20 + ((*(a1 + 160) - *(a1 + 152)) >> 4) - 1;
    if (v21 > v20)
    {
      v22 = *(a1 + 184);
      do
      {
        v23 = *(a1 + 192);
        if (v22 >= v23)
        {
          v24 = *(a1 + 176);
          v25 = v22 - v24;
          v26 = (v22 - v24) >> 3;
          v27 = v26 + 1;
          if ((v26 + 1) >> 61)
          {
            sub_1000C1D48();
          }

          v28 = v23 - v24;
          if (v28 >> 2 > v27)
          {
            v27 = v28 >> 2;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            sub_1000E7D14(a1 + 176, v29);
          }

          v30 = (v22 - v24) >> 3;
          v31 = (8 * v26);
          v32 = (8 * v26 - 8 * v30);
          *v31 = v21;
          v22 = v31 + 1;
          memcpy(v32, v24, v25);
          v33 = *(a1 + 176);
          *(a1 + 176) = v32;
          *(a1 + 184) = v22;
          *(a1 + 192) = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v22++ = v21;
        }

        *(a1 + 184) = v22;
        v20 = *(a1 + 112);
        v21 = *(*(a1 + 152) + 16 * (v21 - v20));
      }

      while (v21 > v20);
    }

    v35 = *(a1 + 80);
    v34 = *(a1 + 88);
    if (v34 == v35)
    {
      sub_100224CAC(a1 + 80, *(a1 + 48));
      v20 = *(a1 + 112);
      v35 = *(a1 + 80);
      v34 = *(a1 + 88);
    }

    v37 = *(a1 + 176);
    v36 = *(a1 + 184);
    v38 = v34 - v35 == 88 && v36 - v37 == 8;
    if (v38 && (v39 = *(a1 + 56), sub_10011ECC8(*v35, v35[1], *(v39 - 88), *(v39 - 80))))
    {
      v40 = *(a1 + 48);
      if (v39 - v40 >= 89)
      {
        v41 = (v39 - v40) / 0x58uLL;
        v42 = *(v34 - 9);
        v43 = *(v34 - 8);
        if (v41 <= 2)
        {
          v41 = 2;
        }

        v44 = v41 - 1;
        v45 = v40 + 104;
        do
        {
          if (v42 <= *v45)
          {
            v42 = *v45;
          }

          *(v34 - 9) = v42;
          v46 = *(v45 + 64);
          if ((v43 & 1) != 0 && (v46 & 1) == 0)
          {
            v43 = 0;
            *(v34 - 7) = *(v45 + 16);
            *(v34 - 8) = 0;
          }

          else if (v46 == v43)
          {
            v47 = *(v34 - 7);
            if (v47 <= *(v45 + 16))
            {
              v47 = *(v45 + 16);
            }

            *(v34 - 7) = v47;
          }

          v45 += 88;
          --v44;
        }

        while (v44);
      }
    }

    else
    {
      if (v36 != v37)
      {
        v48 = 0;
        v49 = -1;
        do
        {
          v51 = *(v36 - 8);
          v36 -= 8;
          v50 = v51;
          v52 = v34 - v35;
          if (v51 < *(a1 + 32) - *(a1 + 120) && 0x2E8BA2E8BA2E8BA3 * (v52 >> 3) > (*(a1 + 72) + 5))
          {
            v48 = v50;
            v49 = 0x2E8BA2E8BA2E8BA3 * (v52 >> 3);
          }

          sub_100224CAC(a1 + 80, *(a1 + 48) + 88 * v50);
          v35 = *(a1 + 80);
          v34 = *(a1 + 88);
          *(v34 - 2) = sub_100120090(*(v35 + v52 - 88), *(v35 + v52 - 80), *(v34 - 11), *(v34 - 10));
          if (v20 + 1 < v50)
          {
            v53 = *(v34 - 9);
            v54 = *(v34 - 8);
            v55 = ~v20 + v50;
            v56 = *(a1 + 48) + 88 * v20 + 104;
            do
            {
              if (v53 <= *v56)
              {
                v53 = *v56;
              }

              *(v34 - 9) = v53;
              v57 = *(v56 + 64);
              if ((v54 & 1) != 0 && (v57 & 1) == 0)
              {
                v54 = 0;
                *(v34 - 7) = *(v56 + 16);
                *(v34 - 8) = 0;
              }

              else if (v57 == v54)
              {
                v58 = *(v34 - 7);
                if (v58 <= *(v56 + 16))
                {
                  v58 = *(v56 + 16);
                }

                *(v34 - 7) = v58;
              }

              v56 += 88;
              --v55;
            }

            while (v55);
          }

          v20 = v50;
        }

        while (v36 != *(a1 + 176));
        if (v49 > 0)
        {
          *(a1 + 72) = v49 + 1;
          *(a1 + 112) = v48;
        }
      }

      if (*(a1 + 16) == 1)
      {
        *(a1 + 72) = 0x2E8BA2E8BA2E8BA3 * (v34 - v35);
        *(a1 + 112) = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
        *(a1 + 200) = 1;
      }
    }
  }
}

void sub_100227728(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  v3 = *(a1 + 32) - v2 - 20;
  v4 = v1 + 1;
  if (v1 + 1 < v3)
  {
    v6 = *(a1 + 48);
    v7 = (v6 + 88 * v1);
    v8 = *v7;
    v9 = v7[1];
    v10 = *(a1 + 112);
    do
    {
      if (sub_10011F068(*(v6 + 88 * v4), *(v6 + 88 * v4 + 8), v8, v9) > *(a1 + 136) || v4 >= v3 - 1)
      {
        v12 = v10 - v1;
        if (v10 <= v1)
        {
          v1 = v4;
        }

        else
        {
          v13 = v6 + 88 * v1;
          v14 = *(v13 + 16);
          v15 = *(v13 + 80);
          v16 = v13 + 104;
          v17 = v10 - v1;
          do
          {
            if (v14 <= *v16)
            {
              v14 = *v16;
            }

            *(v13 + 16) = v14;
            v18 = *(v16 + 64);
            if ((v15 & 1) != 0 && (v18 & 1) == 0)
            {
              v15 = 0;
              *(v13 + 32) = *(v16 + 16);
              *(v13 + 80) = 0;
            }

            else if (v18 == v15)
            {
              v19 = *(v13 + 32);
              if (v19 <= *(v16 + 16))
              {
                v19 = *(v16 + 16);
              }

              *(v13 + 32) = v19;
            }

            v16 += 88;
            --v17;
          }

          while (v17);
          v20 = 88 * v1 + 88;
          v21 = 88 * v4;
          if (v20 != 88 * v4)
          {
            v22 = (v6 + v20);
            v23 = *(a1 + 56);
            v24 = v23 - (v6 + v21);
            if (v23 != v6 + v21)
            {
              memmove(v22, (v6 + v21), v23 - (v6 + v21));
              v2 = *(a1 + 120);
              v6 = *(a1 + 48);
            }

            *(a1 + 56) = &v22[v24];
          }

          v2 += v12;
          *(a1 + 120) = v2;
          v3 -= v12;
          v4 = v1;
        }

        v25 = (v6 + 88 * v1);
        v8 = *v25;
        v9 = v25[1];
      }

      v10 = v4++;
    }

    while (v4 < v3);
  }
}

double sub_1002278B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 88 * a3);
  v15 = *(v3 + 88 * a2);
  v16 = v4;
  v5 = 0.0;
  if (a2 + 1 < a3)
  {
    v7 = v15;
    v8 = v16;
    v9 = ~a2 + a3;
    v10 = 88 * a2;
    do
    {
      v11 = sub_100222E78(&v15, *(v3 + v10 + 88), *(v3 + v10 + 96));
      v12 = sub_100120ABC(*&v7, *(&v7 + 1), *&v8, *(&v8 + 1), v11);
      v3 = *(a1 + 48);
      v5 = v5 + sub_10011F068(v12, v13, *(v3 + v10 + 88), *(v3 + v10 + 96));
      v10 += 88;
      --v9;
    }

    while (v9);
  }

  return v5;
}

void sub_1002279B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002279F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100227A3C(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *a1 = off_1018399F0;
  *(a1 + 8) = a2;
  v4 = a3;
  *(a1 + 120) = 0;
  objc_storeWeak((a1 + 120), v4);

  return a1;
}

double sub_100227AB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = off_10184A758;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 56) = _Q0;
  *(a1 + 72) = _Q0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 300;
  result = 300.0;
  *(a1 + 112) = xmmword_101463520;
  *(a1 + 128) = 0;
  return result;
}

void sub_100227B44(uint64_t a1)
{
  objc_destroyWeak((a1 + 128));

  operator delete();
}

__n128 sub_100227B90(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = *(a1 + 8);
  if (v6)
  {
    (*(*v6 + 16))(v6, a2, a3);
  }

  *(a1 + 24) = v3;
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 56) = result;
  *(a1 + 72) = result;
  *(a1 + 88) = a2;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_100227C18(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (*(a1 + 88) != 1 || *(a1 + 96) != 1)
  {
    return v6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 128));
  if (([WeakRetained isSnappedToRuler] & 1) != 0 || a3[1] == *a3)
  {

    return v6;
  }

  v8 = *(*a3 + 80);

  if ((v8 & 1) == 0)
  {
    return v6;
  }

  v9 = *(a1 + 32);
  if (v9 != -1)
  {
    goto LABEL_7;
  }

  v20 = *a3;
  v21 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
  v22 = v21 - 1;
  if (v21 - 1 > a2)
  {
    v23 = (v20 + 88 * a2 + 80);
    v9 = a2;
    while (*v23 == 1)
    {
      ++v9;
      v23 += 88;
      if (v22 == v9)
      {
        goto LABEL_33;
      }
    }

    *(a1 + 32) = v9;
    *(a1 + 72) = vextq_s8(*(v23 - 56), *(v23 - 56), 8uLL);
    if (v9 != -1)
    {
LABEL_7:
      if ((a2 & 0x8000000000000000) != 0)
      {
        v42 = sub_1013374D0(&v46);
        v43 = v47;
        if (v42)
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v44 = [NSString stringWithUTF8String:"virtual NSUInteger CRLPKEstimatedAltitudeAndAzimuthFilter::copyUpdatedRangeFromIndex(NSUInteger, std::vector<CRLPKInputPoint> *)"];
        v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKEstimatedAltitudeAndAzimuthFilter.h"];
        [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:169 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];
      }

      else
      {
        v10 = v9 - a2;
        if (v9 > a2)
        {
          v11 = (*a3 + 88);
          v12 = 0.0;
          v13 = v9;
          do
          {
            v14 = sub_100120090(*v11, v11[1], *(v11 - 11), *(v11 - 10));
            v11[9] = v14;
            v12 = v12 + v14;
            v11 += 11;
            --v13;
          }

          while (v13);
          if (v12 >= *(a1 + 112))
          {
            v24 = *(a1 + 40);
            v25 = *a3;
            if (v24 == -1)
            {
              v24 = sub_10022809C(a3, v9, *(a1 + 48), *(a1 + 120));
              *(a1 + 40) = v24;
              *(a1 + 56) = vextq_s8(*(v25 + 88 * v24 + 24), *(v25 + 88 * v24 + 24), 8uLL);
            }

            if (v24 + 1 < v9)
            {
              v26 = ~v24 + v9;
              v27 = (v25 + 88 * v24 + 160);
              v28 = 0.0;
              do
              {
                v29 = *v27;
                v27 += 11;
                v28 = v28 + v29;
                --v26;
              }

              while (v26);
              if (v24 + 1 < v9)
              {
                v30 = *(a1 + 56);
                v31 = *(a1 + 72);
                v32 = ~v24 + v9;
                v33 = v25 + 88 * v24 + 112;
                v34 = 0.0;
                do
                {
                  v34 = v34 + *(v33 + 48);
                  v35 = vmlaq_n_f64(vmulq_n_f64(v31, v34 / v28), v30, 1.0 - v34 / v28);
                  *v33 = vextq_s8(v35, v35, 8uLL);
                  v33 += 88;
                  --v32;
                }

                while (v32);
              }
            }

            v18 = a3[1] - v25;
          }

          else
          {
            v15 = *a3;
            v16 = *(*a3 + 88 * v9 + 24);
            v17 = (*a3 + 88 * a2 + 24);
            do
            {
              *v17 = v16;
              v17 = (v17 + 88);
              --v10;
            }

            while (v10);
            v18 = a3[1] - v15;
          }

          v36 = 0x2E8BA2E8BA2E8BA3 * (v18 >> 3);
          goto LABEL_39;
        }
      }

      return v6;
    }
  }

LABEL_33:
  if (v21 <= *(a1 + 104))
  {
    return 0;
  }

  v37 = *(a1 + 48);
  if (v37 != -1)
  {
    v38 = sub_10022809C(a3, v21 - 1, 0, *(a1 + 120) * 1.25);
    if (v37 <= v38)
    {
      v36 = v38;
    }

    else
    {
      v36 = v37;
    }

    *(a1 + 48) = v36;
LABEL_39:
    if (v36 >= v6)
    {
      return v6;
    }

    else
    {
      return v36;
    }
  }

  v39 = 0.0;
  if (v21 >= 2)
  {
    v40 = (v20 + 96);
    v41 = v21 - 1;
    do
    {
      v39 = v39 + sub_100120090(*(v40 - 1), *v40, *(v40 - 12), *(v40 - 11));
      v40 += 11;
      --v41;
    }

    while (v41);
  }

  if (v39 <= *(a1 + 112) * 1.25)
  {
    return 0;
  }

  result = sub_10022809C(a3, v22, 0, *(a1 + 120) * 1.25);
  *(a1 + 48) = result;
  if (result >= v6)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10022809C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a2;
  v8 = a3 + 1;
  v9 = 88 * a2 + 8;
  v10 = 0.0;
  do
  {
    result = -1;
    if (v6 < 1)
    {
      break;
    }

    if (v6 < a3)
    {
      break;
    }

    v12 = sub_100120090(*(*a1 + v9 - 8), *(*a1 + v9), *(*a1 + v9 - 96), *(*a1 + v9 - 88));
    result = v6 - 1;
    if (v6 == 1)
    {
      break;
    }

    v9 -= 88;
    v10 = v10 + v12;
  }

  while (v10 <= a4 && v8 != v6--);
  return result;
}

void sub_10022813C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100228180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002281DC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3);
  }

  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2 == 0;
  return result;
}

uint64_t sub_100228254(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32) + a2);
  if (*(a1 + 40) != 1)
  {
    return (v5 - *(a1 + 32)) & ~((v5 - *(a1 + 32)) >> 63);
  }

  sub_10022832C(a1, a3);
  return 0;
}

uint64_t sub_1002282D4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return result;
}

void sub_10022832C(uint64_t a1, void *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if ((0x2E8BA2E8BA2E8BA3 * ((v2 - *a2) >> 3)) >= 3 && *(a1 + 40) == 1)
  {
    v6 = -1;
    v7 = 1;
    v8 = 160;
    v9 = 0.0;
    do
    {
      v9 = v9 + *&v3[v8];
      if (v9 / *(a1 + 24) > 6.0 && v6 == -1)
      {
        if (v7 >> 31)
        {
          v27 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013375F4();
          }

          log = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *&buf[4] = v27;
            v35 = 2082;
            v36 = "void CRLPKStartHookFilter::fixStartHook(std::vector<CRLPKInputPoint> *)";
            v37 = 2082;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStartHookFilter.h";
            v39 = 1024;
            v40 = 115;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            dispatch_once(&qword_101AD5A10, &stru_10184A868);
          }

          v12 = off_1019EDA68;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v14 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v27;
            v35 = 2114;
            v36 = v14;
            v28 = v14;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          logb = [NSString stringWithUTF8String:"void CRLPKStartHookFilter::fixStartHook(std::vector<CRLPKInputPoint> *)"];
          v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStartHookFilter.h"];
          [CRLAssertionHandler handleFailureInFunction:logb file:v13 lineNumber:115 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

          v3 = *a2;
          v2 = a2[1];
          v6 = 0x7FFFFFFF;
        }

        else
        {
          v6 = v7;
        }
      }

      ++v7;
      v11 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
      v8 += 88;
    }

    while (v7 < v11);
    if (v9 / *(a1 + 24) >= 24.0 && v6 != -1)
    {
      if (v11 >> 31)
      {
        v25 = sub_10133761C(&v33);
        loga = *buf;
        if (v25)
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        logc = [NSString stringWithUTF8String:"void CRLPKStartHookFilter::fixStartHook(std::vector<CRLPKInputPoint> *)"];
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStartHookFilter.h"];
        [CRLAssertionHandler handleFailureInFunction:logc file:v26 lineNumber:132 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

        v16 = 2147483645;
      }

      else
      {
        v16 = v11 - 2;
      }

      if (v6 < v16)
      {
        *(a1 + 40) = 0;
        v17 = *a2;
        if (*(*a2 + 88 * v6 + 48) - *(*a2 + 48) <= 0.1)
        {
          v18 = v6;
          v19 = 88 * v6;
          v20 = &v17[v19 + 88];
          while (v18-- >= 1)
          {
            v22 = sub_100228914(&v17[v19 - 88], &v17[v19], &v17[v19 + 88]);
            v19 -= 88;
            v20 -= 88;
            if (v22 < 150.0)
            {
              *(a1 + 32) = v18 + 1;
              v23 = &v17[v19 + 88];
              v24 = a2[1];
              if (v23 != v24)
              {
                memmove(v17, v23, &v24[-v20]);
              }

              a2[1] = &v24[v17 - v20];
              return;
            }
          }
        }
      }
    }
  }
}

void sub_100228804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100228848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022888C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002288D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

long double sub_100228914(double *a1, double *a2, double *a3)
{
  v4 = *a2;
  v5 = sub_10011F31C(*a1, a1[1], *a2);
  v7 = v6;
  v8 = sub_10011F31C(*a3, a3[1], v4);
  v10 = v9;
  v11 = sub_100120074(v5, v7);
  v12 = sub_100120074(v8, v10);
  v13 = sub_10011F328(v5, v7, v8, v10) / (v11 * v12);
  if (v13 < -1.0)
  {
    v13 = -1.0;
  }

  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  return acos(v13) * 57.2957795;
}

uint64_t sub_1002289FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3);
  }

  *(a1 + 24) = v3;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = a2 == 0;
  return result;
}

uint64_t sub_100228A78(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a2 - 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
  v6 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v7 = v6;
  if (*(a1 + 40) != 1)
  {
    v8 = *(a1 + 32);
    v9 = a3[1] - *a3;
    if (v9 < 0)
    {
      v14 = sub_101337768(&v18);
      v15 = v19;
      if (v14)
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v16 = [NSString stringWithUTF8String:"virtual NSUInteger CRLPKEndHookFilter::copyUpdatedRangeFromIndex(NSUInteger, std::vector<CRLPKInputPoint> *)"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKEndHookFilter.h"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:58 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0x2E8BA2E8BA2E8BA3 * (v9 >> 3);
    }

    if (v8 < v10 + v5)
    {
      v11 = *(a1 + 32);
      if (v11 > v5)
      {
        sub_1000C1498(a3, v11 - v5);
      }
    }

    goto LABEL_9;
  }

  if (*(a1 + 16))
  {
    sub_100228D0C(a1, a3);
    *(a1 + 32) = v5 + 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
LABEL_9:
    if (v7 >= *(a1 + 32))
    {
      return *(a1 + 32);
    }

    else
    {
      return v7;
    }
  }

  v13 = 8;
  if (v6 > 8)
  {
    v13 = v6;
  }

  return v13 - 8;
}

uint64_t sub_100228CB0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

void sub_100228D0C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  v4 = 0x2E8BA2E8BA2E8BA3 * (v3 >> 3);
  if (v4 >= 3)
  {
    v6 = *(a1 + 24);
    v7 = v4 - 2;
    v8 = (v2 + 160);
    v9 = 0.0;
    v10 = v4 - 2;
    do
    {
      v11 = *v8;
      v8 += 11;
      v9 = v9 + v11;
    }

    while (v9 / v6 < 24.0 && v10-- != 0);
    if (v9 / v6 >= 24.0)
    {
      v13 = 2;
      if (v7 < 2)
      {
        v13 = v4 - 2;
      }

      v14 = (v2 + 8 * (v3 >> 3) - 16);
      v15 = 0.0;
      v16 = v4 - 1;
      while (--v16 >= 3)
      {
        if (*(v2 + v3 - 40) - *(v14 - 14) > 0.1)
        {
          return;
        }

        v17 = *v14;
        v14 -= 11;
        v15 = v15 + v17;
        if (v15 / v6 > 6.0)
        {
          goto LABEL_18;
        }
      }

      v16 = v13;
      if (v3 < 264)
      {
        return;
      }

LABEL_18:
      if (v16 > v7)
      {
        v7 = v16;
      }

      v18 = v7 - v16;
      v19 = (v2 + 88 * v16);
      v20 = v16 - 1;
      while (v18)
      {
        v21 = v19 + 11;
        v22 = sub_100228914(v19 + 11, v19, v19 - 11);
        --v18;
        ++v20;
        v19 = v21;
        if (v22 < 150.0)
        {
          goto LABEL_25;
        }
      }

      v20 = v4 - 1;
LABEL_25:
      if (v3 < 0)
      {
        v26 = sub_10133788C(&v30);
        v27 = v31;
        if (v26)
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v28 = [NSString stringWithUTF8String:"void CRLPKEndHookFilter::fixEndHook(std::vector<CRLPKInputPoint> *)"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKEndHookFilter.h"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:151 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v20 != v4 - 1)
      {
        v23 = a2[1];
        v24 = 0x2E8BA2E8BA2E8BA3 * ((v23 - *a2) >> 3);
        if ((v20 - v24) <= -2)
        {
          v25 = v24 - v20 - 2;
          if (v25 >= 7)
          {
            v25 = 7;
          }

          a2[1] = v23 - 88 * v25 - 88;
        }
      }
    }
  }
}

void sub_100228FD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100229018(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022905C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002290A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1002290FC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  *(a1 + 32) = 0x3FA99999A0000000;
  *(a1 + 40) = 0;
  return result;
}

unint64_t sub_100229170(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v6 = a3[1];
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v10 = *a3;
  v9 = a3[1];
  v11 = v9 - *a3;
  if (v9 != *a3)
  {
    v12 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v7) >> 3);
    v13 = 0x2E8BA2E8BA2E8BA3 * (v11 >> 3);
    if (v12 >= v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = v10 + 8 * ((v6 - v7) >> 3);
      v16 = *(a1 + 32);
      v17 = (v15 + 72);
      v18 = (v15 + 160);
      v19 = v13 - 1 - v12;
      v20 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v7) >> 3);
      do
      {
        v21 = v10 + 88 * v20;
        v22 = *(v21 + 48);
        v23 = v22 - v16;
        v24 = 0.0;
        if ((v20 & 0x8000000000000000) == 0)
        {
          if (v20)
          {
            v25 = v17;
            v26 = v20;
            while (1)
            {
              v27 = *(v25 - 14);
              if (v27 <= v23)
              {
                break;
              }

              v28 = *v25;
              v25 -= 11;
              v24 = v24 + v28;
              if (!--v26)
              {
                goto LABEL_9;
              }
            }

            v24 = v24 + *v25 * (*(v25 - 3) - v23) / (*(v25 - 3) - v27);
          }

          else
          {
LABEL_9:
            v23 = *(v10 + 48);
          }
        }

        if (v20 == v13 - 1)
        {
LABEL_15:
          v29 = *(v10 + 88 * v13 - 40);
        }

        else
        {
          v29 = v22 + v16;
          v30 = v19;
          v31 = v18;
          while (1)
          {
            v32 = *(v31 - 3);
            v33 = *v31;
            if (v32 >= v29)
            {
              break;
            }

            v24 = v24 + v33;
            v31 += 11;
            if (!--v30)
            {
              goto LABEL_15;
            }
          }

          v24 = v24 + v33 * (v29 - *(v31 - 14)) / (v32 - *(v31 - 14));
          v14 = v20;
        }

        v34 = v29 - v23;
        v35 = 0.0;
        if (v34 > 0.0)
        {
          v35 = v24 / v34 / *(a1 + 24);
        }

        ++v20;
        *(v21 + 40) = v35;
        v17 += 11;
        v18 += 11;
        --v19;
      }

      while (v20 != v13);
    }

    if ((*(a1 + 16) & 1) == 0 && (*(a1 + 40) & 1) == 0)
    {
      v36 = v12 - a2 + v14;
      if (result >= v36)
      {
        return v36;
      }
    }
  }

  return result;
}

uint64_t sub_100229350(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = off_10184AA18;
  *(a1 + 8) = a2;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  v4 = a3;
  *(a1 + 104) = 0;
  objc_storeWeak((a1 + 104), v4);

  return a1;
}

uint64_t sub_1002293CC(uint64_t a1)
{
  objc_destroyWeak((a1 + 104));
  *a1 = off_101839B30;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100229424(uint64_t a1)
{
  objc_destroyWeak((a1 + 104));
  *a1 = off_101839B30;
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10022949C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3);
  }

  *(a1 + 24) = v3;
  *(a1 + 96) = a2;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_10022950C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 16) = 1;
  *(a1 + 80) = 1;
  *(a1 + 72) = *(a1 + 32);
  return result;
}

uint64_t sub_10022956C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_1002295DC(uint64_t a1)
{
  if (*(a1 + 56) != *(a1 + 48))
  {
    if (*(a1 + 96) == 1)
    {
      v2 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 104));
      v2 = [WeakRetained isSnappedToRuler] ^ 1;
    }

    v4 = *(a1 + 80);
    if ((v4 & 1) == 0)
    {
      v5 = sub_10011F31C(*(*(a1 + 56) - 88), *(*(a1 + 56) - 80), **(a1 + 48));
      v7 = v6;
      *(a1 + 88) = atan2(-v5, v6);
      if (sub_100120084(v5, v7) / (*(a1 + 24) * *(a1 + 24)) <= 400.0)
      {
        v4 = 0;
        if (v2)
        {
LABEL_9:
          v8 = *(a1 + 72);
          v9 = *(a1 + 48);
          v10 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - v9) >> 3);
          v11 = v10 - v8;
          if (v10 > v8)
          {
            v12 = 0;
            v13 = *(a1 + 88);
            v14 = vdupq_n_s64(v11 - 1);
            v15 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
            v16 = (v9 + 88 * v8 + 112);
            do
            {
              v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_101463530)));
              if (v17.i8[0])
              {
                *(v16 - 11) = v13;
              }

              if (v17.i8[4])
              {
                *v16 = v13;
              }

              v12 += 2;
              v16 += 22;
            }

            while (v15 != v12);
          }
        }

LABEL_18:
        if (v4)
        {
          *(a1 + 72) = *(a1 + 32);
        }

        return;
      }

      v4 = 1;
      *(a1 + 80) = 1;
    }

    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }
}

uint64_t sub_10022975C(uint64_t a1)
{
  objc_destroyWeak((a1 + 104));
  *a1 = off_10184AB80;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = off_10184ABE8;
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1002297E0(uint64_t a1)
{
  objc_destroyWeak((a1 + 104));
  *a1 = off_10184AB80;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = off_10184ABE8;
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_100229884(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1002298E4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1002299C0(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = (*(*a1 + 64))(a1);
  sub_100229E64(a3, *(a3 + 8), (*v6 + 80 * a2), *(v6 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 8) - (*v6 + 80 * a2)) >> 4));
  return a1[9];
}

void *sub_100229A6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 64))(a1);
  result[1] = *result;
  return result;
}

uint64_t sub_100229AFC(uint64_t a1)
{
  sub_1000C1498((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 72);

  return v2(a1);
}

void sub_100229B98(uint64_t a1)
{
  sub_1002246C8((a1 + 80), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  v2 = *(a1 + 72);
  if (v2 < 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3))
  {
    v3 = 88 * v2;
    v4 = 80 * v2;
    do
    {
      WeakRetained = objc_loadWeakRetained((a1 + 104));
      v6 = WeakRetained;
      v7 = *(a1 + 48) + v3;
      v8 = *(v7 + 16);
      v16[0] = *v7;
      v16[1] = v8;
      v10 = *(v7 + 48);
      v9 = *(v7 + 64);
      v11 = *(v7 + 32);
      v17 = *(v7 + 80);
      v16[3] = v10;
      v16[4] = v9;
      v16[2] = v11;
      if (WeakRetained)
      {
        [WeakRetained outputCurrentStrokePoint:v16];
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
      }

      v12 = (*(a1 + 80) + v4);
      *v12 = v18;
      v13 = v19;
      v14 = v20;
      v15 = v22;
      v12[3] = v21;
      v12[4] = v15;
      v12[1] = v13;
      v12[2] = v14;

      ++v2;
      v3 += 88;
      v4 += 80;
    }

    while (v2 < 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  }

  *(a1 + 72) = *(a1 + 32);
}

void *sub_100229CE8(void *a1)
{
  *a1 = off_10184AB80;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184ABE8;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100229D64(void *a1)
{
  *a1 = off_10184AB80;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184ABE8;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_100229E04(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

char *sub_100229E64(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 4);
    if (v12 > 0x333333333333333)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x199999999999999)
    {
      v15 = 0x333333333333333;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_10022A114(a1, v15);
    }

    v38 = 16 * (v13 >> 4);
    v39 = 80 * a5;
    v40 = v38;
    do
    {
      *v40 = *v7;
      v41 = v7[1];
      v42 = v7[2];
      v43 = v7[4];
      v40[3] = v7[3];
      v40[4] = v43;
      v40[1] = v41;
      v40[2] = v42;
      v40 += 5;
      v7 += 5;
      v39 -= 80;
    }

    while (v39);
    memcpy((v38 + 80 * a5), v5, *(a1 + 8) - v5);
    v44 = *a1;
    v45 = v38 + 80 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v46 = v5 - v44;
    v47 = (v38 - (v5 - v44));
    memcpy(v47, v44, v46);
    v48 = *a1;
    *a1 = v47;
    *(a1 + 8) = v45;
    *(a1 + 16) = 0;
    if (v48)
    {
      operator delete(v48);
    }

    return v38;
  }

  v16 = v10 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v31 = 5 * a5;
    v32 = &__dst[80 * a5];
    v33 = (v10 - 80 * a5);
    v34 = *(a1 + 8);
    while (v33 < v10)
    {
      *v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[4];
      v34[3] = v33[3];
      v34[4] = v37;
      v34[1] = v35;
      v34[2] = v36;
      v33 += 5;
      v34 += 5;
    }

    *(a1 + 8) = v34;
    if (v10 != v32)
    {
      memmove(&__dst[80 * a5], __dst, v10 - v32);
    }

    v30 = 16 * v31;
    v28 = v5;
    v29 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[80 * a5];
    v21 = v10 + v18;
    if (&v19[-80 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -80 * a5];
      do
      {
        v24 = (v22 - v7);
        *v24 = *(v23 - v7);
        v25 = *(v23 - v7 + 16);
        v26 = *(v23 - v7 + 32);
        v27 = *(v23 - v7 + 64);
        v24[3] = *(v23 - v7 + 48);
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
        v23 += 80;
        v22 += 80;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[80 * a5], v5, v19 - v20);
    }

    v28 = v5;
    v29 = v7;
    v30 = v10 - v5;
LABEL_28:
    memmove(v28, v29, v30);
  }

  return v5;
}

void sub_10022A114(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_10022A184(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3);
  }

  v7 = 0.0;
  if (!a2)
  {
    v7 = 1.0;
  }

  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_10022A200(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_10022A254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *a3;
  v6 = *(a3 + 8);
  result = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (!a2 && *(a3 + 8) != *a3)
  {
    *(a1 + 48) = **a3;
  }

  v9 = *(a1 + 32);
  if (v9 > 0.0)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 4);
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4);
    if (*(a3 + 8) != *a3 && v11 > v10)
    {
      v13 = *(a1 + 48);
      v14 = v11 - v10;
      v15 = (*a3 + 16 * ((v6 - v7) >> 4) + 72);
      do
      {
        v16 = *(v15 - 9) - v13;
        if (v16 < v9)
        {
          *v15 = *v15 * (1.0 - *(a1 + 40) * (1.0 - v16 / v9));
        }

        v15 += 10;
        --v14;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t sub_10022A360(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_10022A3C8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2, a3);
  }

  v7 = 0.0;
  if (!a2)
  {
    v7 = 1.0;
  }

  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_10022A444(uint64_t a1, uint64_t a2, char **a3)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v9 = v8;
  if (!a2 && a3[1] != *a3)
  {
    *(a1 + 48) = **a3;
  }

  v10 = *(a1 + 32);
  if (v10 > 0.0)
  {
    v13 = a3;
    v12 = *a3;
    v11 = v13[1];
    v14 = v11 - v12;
    if (v11 != v12)
    {
      if (*(a1 + 56) <= *(v11 - 10))
      {
        v15 = *(v11 - 10);
      }

      else
      {
        v15 = *(a1 + 56);
      }

      *(a1 + 56) = v15;
      if (*(a1 + 16) == 1)
      {
        if (v10 > 0.0 && v15 - *(a1 + 48) > v10 + v10)
        {
          v16 = 0xCCCCCCCCCCCCCCCDLL * (v14 >> 4);
          v17 = &v12[16 * (v14 >> 4) + 16];
          v18 = v16;
          while (--v18)
          {
            v19 = (v17 - 80);
            v20 = v15 - *(v17 - 96);
            v17 -= 80;
            if (v20 > v10)
            {
              v21 = *(v19 - 1);
              v22 = *v19;
              goto LABEL_22;
            }
          }

          v22 = 0.0;
          v21 = 0.0;
LABEL_22:
          if (sub_10011F068(v21, v22, *(v11 - 9), *(v11 - 8)) > 225.0)
          {
            v24 = v16 - 1;
            if (v16 != 1)
            {
              v25 = &v12[80 * v16 - 8];
              do
              {
                v26 = v15 - *(v25 - 9);
                if (v26 >= v10)
                {
                  break;
                }

                *v25 = *v25 * (1.0 - *(a1 + 40) * (1.0 - v26 / v10));
                v25 -= 10;
                --v24;
              }

              while (v24);
            }
          }
        }
      }

      else if (v8)
      {
        v23 = &v12[16 * ((v6 - v7) >> 4) + 80 * v8 - 80 * a2];
        do
        {
          if (*v23 <= v15 - v10)
          {
            break;
          }

          v23 -= 10;
          --v9;
        }

        while (v9);
      }
    }
  }

  return v9;
}

void *sub_10022A624(void *a1)
{
  *a1 = off_10184ADF8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AE60;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10022A6A0(void *a1)
{
  *a1 = off_10184ADF8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AE60;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_10022A73C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_10022A79C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_10022A878(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = (*(*a1 + 64))(a1);
  sub_10022ACD0(a3, *(a3 + 8), (*v6 + 24 * a2), *(v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - (*v6 + 24 * a2)) >> 3));
  return a1[9];
}

void *sub_10022A924(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 64))(a1);
  result[1] = *result;
  return result;
}

uint64_t sub_10022A9B4(uint64_t a1)
{
  sub_1002246C8((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 72);

  return v2(a1);
}

void sub_10022AA50(void *a1)
{
  sub_10022AF60(a1 + 10, 0xCCCCCCCCCCCCCCCDLL * ((a1[7] - a1[6]) >> 4));
  v2 = a1[9];
  v3 = a1[6];
  if (v2 < 0xCCCCCCCCCCCCCCCDLL * ((a1[7] - v3) >> 4))
  {
    v4 = 10 * v2;
    v5 = 24 * v2;
    do
    {
      *v11 = *&v3[v4];
      v6 = *&v3[v4 + 2];
      v7 = *&v3[v4 + 4];
      v8 = *&v3[v4 + 8];
      *&v11[6] = *&v3[v4 + 6];
      *&v11[8] = v8;
      *&v11[2] = v6;
      *&v11[4] = v7;
      [CRLPKStrokePoint compressStrokePoint:v11 withTimestamp:*v3];
      v9 = a1[10] + v5;
      v10 = *&v11[11];
      *(v9 + 16) = v11[13];
      *v9 = v10;
      ++v2;
      v3 = a1[6];
      v4 += 10;
      v5 += 24;
    }

    while (v2 < 0xCCCCCCCCCCCCCCCDLL * ((a1[7] - v3) >> 4));
  }

  a1[9] = a1[4];
}

void *sub_10022AB54(void *a1)
{
  *a1 = off_10184ADF8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AE60;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10022ABD0(void *a1)
{
  *a1 = off_10184ADF8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AE60;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_10022AC70(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

char *sub_10022ACD0(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_10013DF58(a1, v15);
    }

    v34 = 8 * (v13 >> 3);
    v35 = 24 * a5;
    v36 = v34;
    do
    {
      v37 = *v7;
      *(v36 + 16) = *(v7 + 2);
      *v36 = v37;
      v36 += 24;
      v7 += 24;
      v35 -= 24;
    }

    while (v35);
    memcpy((v34 + 24 * a5), v5, *(a1 + 8) - v5);
    v38 = *a1;
    v39 = v34 + 24 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v40 = v5 - v38;
    v41 = (v34 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v34;
  }

  v16 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 3)) >= a5)
  {
    v29 = 3 * a5;
    v30 = &__dst[24 * a5];
    v31 = v10 - 24 * a5;
    v32 = *(a1 + 8);
    while (v31 < v10)
    {
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      v32 += 24;
      v31 += 24;
    }

    *(a1 + 8) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[24 * a5], __dst, v10 - v30);
    }

    v28 = 8 * v29;
    v26 = v5;
    v27 = v7;
    goto LABEL_28;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = (v10 + v18);
  *(a1 + 8) = v10 + v18;
  if (v16 >= 1)
  {
    v20 = &v5[24 * a5];
    v21 = v10 + v18;
    if (&v19[-24 * a5] < v10)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -24 * a5];
      do
      {
        v24 = v22 - v7;
        v25 = *(v23 - v7);
        *(v24 + 16) = *(v23 - v7 + 16);
        *v24 = v25;
        v23 += 24;
        v22 += 24;
      }

      while (v23 - v7 < v10);
      v21 = v22 - v7;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[24 * a5], v5, v19 - v20);
    }

    v26 = v5;
    v27 = v7;
    v28 = v10 - v5;
LABEL_28:
    memmove(v26, v27, v28);
  }

  return v5;
}

void sub_10022AF60(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10022AF9C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_10022AF9C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10013DF58(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void *sub_10022B110(void *a1)
{
  *a1 = off_10184AF88;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AFF0;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10022B18C(void *a1)
{
  *a1 = off_10184AF88;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AFF0;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_10022B228(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_10022B288(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_10022B2DC(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = (*(*a1 + 64))(a1);
  sub_100229E64(a3, *(a3 + 8), (*v6 + 80 * a2), *(v6 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 8) - (*v6 + 80 * a2)) >> 4));
  return a1[9];
}

void *sub_10022B388(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 64))(a1);
  result[1] = *result;
  return result;
}

uint64_t sub_10022B418(uint64_t a1)
{
  sub_10022AF60((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 72);

  return v2(a1);
}

void sub_10022B4B4(uint64_t a1)
{
  if (*(a1 + 104) <= 0.0)
  {
    v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013379B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013379C4(v2);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337A60();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"virtual void CRLPKDecompressionFilter::run()"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKCompressionFilter.h"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:34 isFatal:0 description:"Reference timestamp is needed to decompress points."];
  }

  sub_1002246C8((a1 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3));
  v6 = *(a1 + 72);
  v7 = *(a1 + 48);
  if (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v7) >> 3))
  {
    v8 = 24 * v6;
    v9 = 80 * v6;
    do
    {
      v10 = (v7 + v8);
      v11 = *v10;
      v17 = *(v10 + 2);
      v16 = v11;
      [CRLPKStrokePoint decompressStrokePoint:&v16 withTimestamp:*(a1 + 104)];
      v12 = (*(a1 + 80) + v9);
      *v12 = v18;
      v13 = v19;
      v14 = v20;
      v15 = v22;
      v12[3] = v21;
      v12[4] = v15;
      v12[1] = v13;
      v12[2] = v14;
      ++v6;
      v7 = *(a1 + 48);
      v8 += 24;
      v9 += 80;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - v7) >> 3));
  }

  *(a1 + 72) = *(a1 + 32);
}

void *sub_10022B730(void *a1)
{
  *a1 = off_10184AF88;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AFF0;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_10022B7AC(void *a1)
{
  *a1 = off_10184AF88;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10184AFF0;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_10022B84C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_10022B8AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022B8F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022B934(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022B978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022B9BC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 80 * ((80 * a2 - 80) / 0x50) + 80;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x333333333333333)
    {
      sub_1000C1D48();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x199999999999999)
    {
      v9 = 0x333333333333333;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_10022A114(a1, v9);
    }

    v11 = 80 * v6;
    v12 = 80 * ((80 * a2 - 80) / 0x50) + 80;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_10022BB30(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10022BBAC(result, a4);
  }

  return result;
}

void sub_10022BB90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022BBAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_1000C1DF0(a1, a2);
  }

  sub_1000C1D48();
}

uint64_t sub_10022BBFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000DB64C(result, a4);
  }

  return result;
}

void sub_10022BC5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022BC90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

id sub_10022BCB0()
{
  v3 = *v1;
  *v0 = *v1;

  return v3;
}

NSSet *__cdecl sub_10022C1DC(id a1, NSDictionary *a2, NSSet *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[NSMutableSet set];
  v7 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v5;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v13);
        v16 = v15;
        if (v15 && ([v15 locked] & 1) == 0)
        {
          v17 = v6;
          v18 = v16;
        }

        else
        {
          v17 = v7;
          v18 = v13;
        }

        [v17 addObject:v18];
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v10);
  }

  v33 = v8;
  v34 = v7;

  v19 = +[NSMutableSet set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = objc_opt_class();
        v27 = [(NSDictionary *)v4 objectForKey:v25];
        v28 = sub_100014370(v26, v27);

        if (v28)
        {
          [v19 unionSet:v28];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  if ([v19 count])
  {
    v29 = +[NSMutableSet set];
    v30 = v34;
    [v29 unionSet:v34];
    [v29 unionSet:v19];
    v31 = [v29 copy];
  }

  else
  {
    v31 = 0;
    v30 = v34;
  }

  return v31;
}

void sub_10022CA20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022CA64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022CD7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022CDC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022D1F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022D238(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022D978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022D9BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022DA00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022DA44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E19C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E1E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E268(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E52C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E6F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022E73C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022EB7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022EBC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022EC04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022EC48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022FEA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10022FEE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100230710(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100230754(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100230BCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100230C10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100231370(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002313B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100231CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100231D08(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 crl_enumerateBoardItemNestedRecursivelyUsingBlock:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1002323D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002323EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"text"];

  v9 = sub_100013F00(v7, v8);

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002324D4;
  v10[3] = &unk_10184B550;
  v10[4] = *(a1 + 32);
  v10[5] = a4;
  [v9 enumerateObjectsUsingBlock:v10];
}

void sub_1002324D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"hasText"];

  v9 = sub_100013F00(v7, v8);
  LODWORD(v6) = [v9 BOOLValue];

  if (v6)
  {
    v10 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *v10 = 1;
    *a4 = 1;
  }
}

void sub_100232A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100232A20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"class"];

  aClassName = sub_100013F00(v7, v8);

  v9 = aClassName;
  if (aClassName)
  {
    v10 = NSClassFromString(aClassName);
    v9 = aClassName;
    if (v10)
    {
      v11 = [(objc_class *)v10 isSubclassOfClass:objc_opt_class()];
      v9 = aClassName;
      if ((v11 & 1) == 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }
}

void sub_100232BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100232BF4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = objc_opt_class();
  v7 = [v14 objectForKeyedSubscript:@"class"];
  v8 = sub_100013F00(v6, v7);

  if (v8)
  {
    v9 = NSClassFromString(v8);
    if (v9)
    {
      v10 = v9;
      if ([(objc_class *)v9 isSubclassOfClass:objc_opt_class()])
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }

      else if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
      {
        v11 = objc_opt_class();
        v12 = [v14 objectForKeyedSubscript:@"containsFreehandDrawing"];
        v13 = sub_100013F00(v11, v12);

        if ([v13 BOOLValue])
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }
}

BOOL sub_100233254(id a1, NSDictionary *a2)
{
  v2 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = objc_opt_class();
  v4 = [(NSDictionary *)v2 objectForKeyedSubscript:@"text"];
  v5 = sub_100013F00(v3, v4);

  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = [v10 objectForKeyedSubscript:@"hasVisibleText"];
        v13 = sub_100013F00(v11, v12);
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = [v10 objectForKeyedSubscript:@"hasText"];
          v17 = sub_100013F00(v15, v16);
          v18 = [v17 BOOLValue];

          if (v18)
          {
            v19 = 1;
            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_13:

  return v19;
}

void sub_100233800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100233844(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100233B64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100233BA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100235B8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [UIImage systemImageNamed:*(a1 + 40)];
  v4 = [UICommand commandWithTitle:v2 image:v3 action:"snapToShape:" propertyList:0];

  [*(a1 + 48) snapToShape:v4];
  return 1;
}

id sub_1002371BC(uint64_t a1)
{
  v2 = [*(a1 + 32) crlaxInteractiveCanvasController];
  v3 = [v2 crlaxScrollLayoutToVisibleAndFocusTheAssociatedRep:*(a1 + 40)];

  return v3;
}

void sub_10023AECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10023AF18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023AF30(void *a1)
{
  v2 = *(*(a1[4] + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(CRLBezierSubpath);
    v4 = *(a1[4] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [*(*(a1[5] + 8) + 40) addObject:*(*(a1[4] + 8) + 40)];
    v2 = *(*(a1[4] + 8) + 40);
  }

  [v2 addNode:*(*(a1[6] + 8) + 40)];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10023EEE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10023EF2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10023F16C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10023F1B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10023F4AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10023F4F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10023F6F0(id a1)
{
  v1 = objc_alloc_init(CRLFreehandDrawingLocalShapeRegistry);
  v2 = qword_101A348A8;
  qword_101A348A8 = v1;
}

id sub_10023FD80(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (!a2)
  {
    a2 = v3[2];
  }

  return [v3 p_provideBoardItemWithURL:a2 factory:a1[5] completionHandler:a1[6]];
}

void sub_10023FF50(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 32) stop];
  [*(*(a1 + 32) + 32) advanceToStage:1];
  if (v3)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_1013389FC();
    }

    v4 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101338A10(v4, v3);
    }

    if (*(a1 + 56))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002400D8;
      block[3] = &unk_10183B230;
      v8 = *(a1 + 56);
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) URL];
    [v5 p_provideBoardItemWithFinalURL:v6 factory:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

void sub_100240094(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

uint64_t sub_100240280(uint64_t a1)
{
  [*(*(a1 + 32) + 48) boardItem];

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

double sub_1002406C0(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  result = NAN;
  *(a1 + 56) = xmmword_101464828;
  return result;
}

uint64_t sub_1002406E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t sub_10024074C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a2;
  v12 = a3;
  *a1 = v11;
  v13 = v12;
  v14 = v13;
  *(a1 + 8) = v13;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 40) = a4;
  *(a1 + 48) = a6;
  *(a1 + 56) = xmmword_101464828;
  if (v13 == v11)
  {
    *(a1 + 8) = 0;

    a4 = *(a1 + 32);
  }

  *(a1 + 56) = xmmword_101464828;
  *(a1 + 16) = a4;

  return a1;
}

double sub_1002407F0(uint64_t a1)
{
  v1 = *(a1 + 32) - 1;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  result = NAN;
  *(a1 + 56) = xmmword_101464828;
  *(a1 + 16) = v1;
  return result;
}

double sub_100240814(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 < *(a1 + 24))
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = NAN;
  *(a1 + 56) = xmmword_101464828;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 16) = v2;
  return result;
}

double sub_100240858@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_1002406E8(a2, a1);
  v3 = *(v2 + 32) - 1;
  *(v2 + 32) = v3;
  *(v2 + 40) = v3;
  result = NAN;
  *(v2 + 56) = xmmword_101464828;
  *(v2 + 16) = v3;
  return result;
}

id sub_100240898(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 56);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [*a1 textRangeForParagraphAtIndex:*(a1 + 16)];
      *(a1 + 56) = v4;
      *(a1 + 64) = v5;
    }

    else
    {
      v5 = *(a1 + 64);
    }

    *a2 = v4;
    a2[1] = v5;
  }

  if (*(a1 + 16) <= *(a1 + 24))
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      v7 = *a1;
    }

    v6 = [v7 paragraphStyleAtParIndex:? effectiveRange:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100240930(uint64_t a1)
{
  result = *(a1 + 56);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*a1 textRangeForParagraphAtIndex:*(a1 + 16)];
    *(a1 + 56) = result;
    *(a1 + 64) = v3;
  }

  return result;
}

id sub_100240978(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [*a1 textRangeForParagraphAtIndex:*(a1 + 16)];
    v4 = v3;
    *(a1 + 56) = v2;
    *(a1 + 64) = v3;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = [*a1 substringWithRange:{v2, v4}];

  return v5;
}

id sub_1002409FC(uint64_t a1)
{
  if (*(a1 + 16) <= *(a1 + 24))
  {
    if (*(a1 + 8))
    {
      v5 = *(a1 + 8);
    }

    else
    {
      v5 = *a1;
    }

    v3 = [v5 listStyleAtParIndex:v1 effectiveRange:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_100240A60(uint64_t a1)
{
  v1 = sub_1002409FC(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 firstLabelType] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100241360(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_101A348B8;
  qword_101A348B8 = v1;

  if (!qword_101A348B8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338B04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338B18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101338BB4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLImageProviderPool sharedPool]_block_invoke");
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageProviderPool.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:65 isFatal:0 description:"invalid nil value for '%{public}s'", "instance"];
  }
}

void sub_1002414B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002414F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100241B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100241B48(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

id sub_100241B88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = 5;
  while (1)
  {
    result = [a2 readToBuffer:v4 size:v5];
    v5 -= result;
    if (v5 == 5)
    {
      break;
    }

    v4 += v5;
    if (!v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return result;
    }
  }

  return result;
}

void sub_100241BF0(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_100241C30(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_10024233C(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_10024237C(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_1002423BC(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_1002423FC(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_1002425B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002425F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002427C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024280C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100242A48(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_100242C1C(id a1)
{
  v1 = sub_1004BD804("CRLImageProviderPoolCat");
  v2 = off_1019EEA08;
  off_1019EEA08 = v1;
}

void sub_1002437A8(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_1002437E8(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_100243828(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_100243868(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_1002438A8(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_1002438E8(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_100243928(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_100243968(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002439AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002439F0(id a1)
{
  v1 = sub_1004BD804("CRLFileDescriptors");
  v2 = off_1019EEA00;
  off_1019EEA00 = v1;
}

void sub_1002441D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100244218(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100244524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [v3 userInfo];

  v6 = [v5 objectForKey:@"CRLProgressOverallProgress"];
  v9 = sub_100014370(v4, v6);

  v7 = v9;
  if (v9)
  {
    v8 = *(a1 + 32);
    [v9 doubleValue];
    (*(v8 + 16))(v8);
    v7 = v9;
  }
}

void sub_100244748(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10024577C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002457C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100245804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100245848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100245FC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024600C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002464F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100246538(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002470DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100247120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100247940(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100247984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100247D9C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100247EB0(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100249B48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249B8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249BD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249C14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249C58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249C9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249F24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100249F68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024A320(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024A364(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024A4E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024A528(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BD4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BD90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BDD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BE18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BE5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BEA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BEE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BF28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BF6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BFB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024BFF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C07C(id a1)
{
  v1 = sub_1004BD804("CRLUUIDSelectionCat");
  v2 = off_1019EEB30;
  off_1019EEB30 = v1;
}

void sub_10024C0BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C100(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C144(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C188(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C1CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C210(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C2DC(id a1)
{
  v1 = sub_1004BD804("CRLEditorStackCat");
  v2 = off_1019EEB38;
  off_1019EEB38 = v1;
}

void sub_10024C5C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C604(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C648(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024C68C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024CA68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024CAAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024CC8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024CCD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024CECC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024CF10(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024D5A8(id a1)
{
  v1 = sub_1004BD804("CRLEditorStackCat");
  v2 = off_1019EEB38;
  off_1019EEB38 = v1;
}

void sub_10024D5E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024D62C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024D670(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024D6B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024DA7C(id a1)
{
  v1 = sub_1004BD804("CRLEditorStackCat");
  v2 = off_1019EEB38;
  off_1019EEB38 = v1;
}

void sub_10024DABC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024DB00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024DB44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024DB88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024DD48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024DD8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024E76C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024E7B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024E7F4(id a1)
{
  v1 = sub_1004BD804("CRLEditorStackCat");
  v2 = off_1019EEB38;
  off_1019EEB38 = v1;
}

void sub_10024EB94(id a1)
{
  v1 = sub_1004BD804("CRLEditorStackCat");
  v2 = off_1019EEB38;
  off_1019EEB38 = v1;
}

void sub_10024EDA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10024FA3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10024FA80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100250CF8(id a1)
{
  v3 = [NSString stringWithFormat:@"%C%C", 65532, 14];
  v1 = [NSCharacterSet characterSetWithCharactersInString:v3];
  v2 = qword_101A348D8;
  qword_101A348D8 = v1;
}

void sub_100250D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) crlaxStorage];
      v8 = [v7 crlaxAttachmentOrFootnoteAtCharIndex:a2 + v6];

      v9 = [objc_opt_class() crlaxAttachmentElementForAttachment:v8 inTextRep:*(a1 + 32)];
      if (v9)
      {
        [*(a1 + 40) addAttribute:@"UIAccessibilityTokenAttachment" value:v9 range:{a2, 1}];
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

void sub_100251598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002515B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002515CC(void *a1, unint64_t a2, NSUInteger a3, void *a4, void *a5)
{
  v28 = a4;
  v9 = a5;
  if (!*(*(a1[5] + 8) + 40))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = [NSMutableAttributedString alloc];
    v12 = a1[4];
    if (isKindOfClass)
    {
      v13 = [v11 initWithAttributedString:v12];
    }

    else
    {
      v13 = [v11 initWithString:v12];
    }

    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [*(*(a1[5] + 8) + 40) beginEditing];
  }

  v16 = a1[6];
  v17 = a2 >= v16;
  v18 = a2 - v16;
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (v19 >= [*(*(a1[5] + 8) + 40) length])
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"The attribute being applied is out of bounds!", v21, v22, v23, v24, v25, v27))
      {
        abort();
      }
    }
  }

  v31.length = [*(*(a1[5] + 8) + 40) length];
  v30.location = v19;
  v30.length = a3;
  v31.location = 0;
  v26 = NSIntersectionRange(v30, v31);
  [*(*(a1[5] + 8) + 40) addAttribute:v28 value:v9 range:{v26.location, v26.length}];
}

void sub_100252C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100252C54(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_100253B48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100253B8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100254114(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100254158(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002542B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002542D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained crlaxSetPreventSelectedTextRangeChanges:0];
}

void sub_100255154(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002551DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255220(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255264(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002552A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002552EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255330(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025565C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002556A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255C70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255CB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255CF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255D3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100255D80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002560C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100256104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100256148(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025618C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100257680(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002576C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100257708(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025774C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100257790(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1002577D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100258270(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100258380(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1002588E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100258924(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100258FD0(uint64_t a1, void *a2)
{
  v3 = [a2 id];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100259014(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100259058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100259F94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100259FD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025A01C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025A060(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025ABC8(id a1)
{
  v4 = dispatch_get_global_queue(33, 0);
  v1 = [CRLWidthLimitedQueue alloc];
  v2 = [(CRLWidthLimitedQueue *)v1 initWithLimit:qword_101AD5CD8 name:@"com.apple.freeform.freehand-drawing.child-rendering" targetQueue:v4];
  v3 = qword_101A34900;
  qword_101A34900 = v2;
}

void sub_10025AC44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025AC88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025AE54(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025AE98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B3F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B438(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B47C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B4C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B548(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10025B910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[37] == *(a1 + 32))
  {
    v3 = WeakRetained;
    [WeakRetained p_cleanUpExistingStrokeAnimationIfNeeded];
    WeakRetained = v3;
  }
}

void sub_10025B978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025B9BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025BCBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025BD00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025BD44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025BD88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C0AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C0F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C134(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C4A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C4EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C8C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C908(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C94C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025C9D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10025CA18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}