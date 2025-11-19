uint64_t sub_240AC7D44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = &qword_27E516570;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12 == v11)
      {
        goto LABEL_8;
      }
    }

    v12 = &unk_278CB2F00;
  }

  else
  {
    v12 = &unk_278CB2F00;
  }

LABEL_8:
  v13 = v12[16];
  if (!v13)
  {
    v13 = &off_281500BF0;
  }

  v14 = v13[2];
  if (!v14 || (v15 = *(a1 + 3744), result = v14(), result))
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v17 = a1 + 136;
    v18 = *(a1 + 132);
    if (!a3)
    {
      if (v18 >= 1)
      {
        v20 = 0;
        while (*(a1 + 4 * v20 + 136) != a2)
        {
          if (v18 == ++v20)
          {
            goto LABEL_45;
          }
        }

        sub_240AC813C(a1, v20);
        *(v17 + 4 * v20) = 0;
        v38 = *(a1 + 8);
        if (v38)
        {
          v39 = &qword_27E516570;
          while (1)
          {
            v39 = *v39;
            if (!v39)
            {
              goto LABEL_66;
            }

            if (v39 == v38)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_65:
        v39 = &unk_278CB2F00;
LABEL_67:
        v67 = v39[16];
        if (!v67)
        {
          v67 = &off_281500BF0;
        }

        v68 = v67[3];
        if (v68)
        {
          v69 = *(a1 + 3744);
          v68();
        }

        return 1;
      }

      goto LABEL_45;
    }

    if (v18 < 1)
    {
LABEL_17:
      if (v18 > 0x63)
      {
        sub_240AC15A4(*(a1 + 8), 2, "Too many tags (%d)", a4, a5, a6, a7, a8, 100);
LABEL_45:
        v43 = *(a1 + 8);
        if (v43)
        {
          v44 = &qword_27E516570;
          while (1)
          {
            v44 = *v44;
            if (!v44)
            {
              break;
            }

            if (v44 == v43)
            {
              goto LABEL_52;
            }
          }

          v44 = &unk_278CB2F00;
        }

        else
        {
          v44 = &unk_278CB2F00;
        }

LABEL_52:
        v45 = v44[16];
        if (!v45)
        {
          v45 = &off_281500BF0;
        }

        v46 = v45[3];
        if (v46)
        {
          v47 = *(a1 + 3744);
          v46();
        }

        return 0;
      }

      *(a1 + 132) = v18 + 1;
      LODWORD(v19) = v18;
    }

    else
    {
      v19 = 0;
      while (*(a1 + 4 * v19 + 136) != a2)
      {
        if (v18 == ++v19)
        {
          goto LABEL_17;
        }
      }

      sub_240AC813C(a1, v19);
    }

    v21 = a1 + 4 * v19;
    *(v21 + 1736) = 0;
    *(v21 + 536) = 0;
    v22 = *(a1 + 8);
    v23 = sub_240AE2040(v22, a2);
    if (v23)
    {
      v29 = v23;
      v35 = sub_240AC6BD8(*(a1 + 72));
      v36 = *(v29 + 11);
      if (v36)
      {
        v37 = v36(a3, v35);
      }

      else
      {
        v37 = *(v29 + 2);
      }

      LODWORD(v40) = *(v29 + 1);
      if (v40)
      {
        v41 = v19;
        if (v40 >= 0x14)
        {
          v40 = 20;
        }

        else
        {
          v40 = v40;
        }

        v42 = 8;
        while (*&v29[v42] != v37)
        {
          v42 += 4;
          if (!--v40)
          {
            goto LABEL_43;
          }
        }

        v48 = *(a1 + 8);
        v49 = sub_240AD5100(v48, v37);
        if (v49)
        {
          v55 = a1 + 8 * v41;
          *(v17 + 4 * v41) = a2;
          *(v55 + 2936) = v49;
          v56 = a1 + 4 * v41;
          *(v56 + 936) = 0;
          *(v56 + 1336) = 0;
          v57 = *v49;
          v58 = *(v49 + 6);
          v59 = *(v49 + 2);
          v73 = *(v49 + 1);
          v74 = v59;
          v72 = v57;
          *(&v74 + 1) = *(a1 + 8);
          v75 = v58;
          LODWORD(v75) = *(a1 + 72);
          v60 = (*(&v73 + 1))(&v72, a3, *v29);
          *(v55 + 2136) = v60;
          if (v60)
          {
            v66 = *(a1 + 8);
            if (v66)
            {
              v39 = &qword_27E516570;
              while (1)
              {
                v39 = *v39;
                if (!v39)
                {
                  break;
                }

                if (v39 == v66)
                {
                  goto LABEL_67;
                }
              }

LABEL_66:
              v39 = &unk_278CB2F00;
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          v70 = bswap32(v37);
          v71 = 0;
          sub_240AC15A4(*(a1 + 8), 12, "Malformed struct in type '%s' for tag '%s'", v61, v62, v63, v64, v65, &v70);
        }

        else
        {
          v70 = bswap32(v37);
          v71 = 0;
          sub_240AC15A4(v48, 8, "Unsupported type '%s' for tag '%s'", v50, v51, v52, v53, v54, &v70);
        }
      }

      else
      {
LABEL_43:
        v70 = bswap32(v37);
        v71 = 0;
        sub_240AC15A4(*(a1 + 8), 8, "Unsupported type '%s' for tag '%s'", v30, v31, v32, v33, v34, &v70);
      }
    }

    else
    {
      sub_240AC15A4(v22, 8, "Unsupported tag '%x'", v24, v25, v26, v27, v28, a2);
    }

    goto LABEL_45;
  }

  return result;
}

uint64_t sub_240AC813C(uint64_t result, unsigned int a2)
{
  v2 = result + 2136;
  if (*(result + 2136 + 8 * a2))
  {
    v3 = a2;
    if (*(result + 4 * a2 + 1736))
    {
      v4 = *(result + 8);
      if (v4)
      {
        v5 = &qword_27E516570;
        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          if (v5 == v4)
          {
            goto LABEL_13;
          }
        }

        v5 = &unk_278CB2F00;
      }

      else
      {
        v5 = &unk_278CB2F00;
      }

LABEL_13:
      v10 = v5[6];
      if (!v10)
      {
        v10 = &xmmword_281500C10;
      }

      v11 = *(v10 + 2);

      return v11();
    }

    else
    {
      v6 = *(result + 8 * a2 + 2936);
      if (v6)
      {
        v7 = *v6;
        v8 = *(v6 + 6);
        v9 = v6[2];
        v12[1] = v6[1];
        v13 = v9;
        v12[0] = v7;
        *(&v13 + 1) = *(result + 8);
        v14 = v8;
        LODWORD(v14) = *(result + 72);
        result = (v9)(v12);
        *(v2 + 8 * v3) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_240AC8234(uint64_t a1, uint64_t a2)
{
  result = sub_240AC7924(a2, 0x63686164u);
  if (result)
  {
    *a1 = *result;
    v5 = *(result + 16);
    v6 = *(result + 32);
    v7 = *(result + 48);
    *(a1 + 64) = *(result + 64);
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *a1 = 0x3FF0000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
    *(a1 + 32) = 0x3FF0000000000000;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0x3FF0000000000000;
    if (!(*(a2 + 72) >> 26) && *(a2 + 76) == 1835955314)
    {
      result = sub_240AC7924(a2, 0x77747074u);
      if (result)
      {

        return sub_240AE2748(a1, result, &xmmword_27E516510);
      }

      else
      {
        *a1 = 0x3FF0000000000000;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0x3FF0000000000000;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        *(a1 + 64) = 0x3FF0000000000000;
      }
    }
  }

  return result;
}

uint64_t sub_240AC8344(uint64_t a1, unsigned int a2)
{
  v68 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 8);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 76) != 1852662636)
  {
    if (a2 > 3 || (v11 = *(a1 + 132), v11 < 1))
    {
LABEL_25:
      if (*(a1 + 80) == 1196573017)
      {
        v18 = *(a1 + 8);
        v19 = sub_240AC7924(a1, 0x6B545243u);
        v62[0] = v19;
        if (v19)
        {
          v20 = v19;
          v6 = sub_240ACADFC(v18, 1u, 3);
          if (v6)
          {
            if (*(a1 + 84) == 1281450528)
            {
              v61 = -2139062144;
              v24 = sub_240AC1684(v18, 2, 0, 0, &v61, v21, v22, v23);
              if (v24)
              {
                v25 = v24;
                *&v63 = v20;
                *(&v63 + 1) = v24;
                *&v64 = v24;
                v26 = sub_240AC977C(v18, 3, 1u, &xmmword_240C87680, 0);
                if (sub_240ACB414(v6, 1, v26))
                {
                  v27 = sub_240AC904C(v18, 3, &v63);
                  if (sub_240ACB414(v6, 1, v27))
                  {
                    sub_240AC26D0(v25);
                    goto LABEL_98;
                  }
                }

                sub_240AC26D0(v25);
              }
            }

            else
            {
              v43 = sub_240AC904C(v18, 1, v62);
              if (v43)
              {
                v44 = *v6;
                if (*v6)
                {
                  do
                  {
                    v45 = v44;
                    v44 = *(v44 + 56);
                  }

                  while (v44);
                  *(v45 + 56) = v43;
                  v43[7] = 0;
                }

                else
                {
                  *v6 = v43;
                }

                if (sub_240ACAF44(v6))
                {
                  v57 = sub_240AC977C(v18, 3, 1u, qword_240C14C00, 0);
                  if (sub_240ACB414(v6, 1, v57))
                  {
                    goto LABEL_98;
                  }

                  v20 = v62[0];
                }
              }
            }
          }

          sub_240AC26D0(v20);
LABEL_96:
          sub_240ACB1C0(v6);
        }
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v28 = *(a1 + 8);
        if (sub_240AC8AE0(&v63, a1))
        {
          v29 = 0;
          v30 = &v63;
          do
          {
            for (i = 0; i != 24; i += 8)
            {
              *(v30 + i) = *(v30 + i) * 0.50000763;
            }

            ++v29;
            v30 = (v30 + 24);
          }

          while (v29 != 3);
          v62[0] = sub_240AC7924(a1, 0x72545243u);
          v32 = sub_240AC7924(a1, 0x67545243u);
          v62[1] = v32;
          v33 = sub_240AC7924(a1, 0x62545243u);
          v6 = 0;
          v62[2] = v33;
          if (v62[0])
          {
            if (v32)
            {
              if (v33)
              {
                v6 = sub_240ACADFC(v28, 3u, 3);
                if (v6)
                {
                  v34 = sub_240AC904C(v28, 3, v62);
                  if (!v34)
                  {
                    goto LABEL_96;
                  }

                  v35 = *v6;
                  if (*v6)
                  {
                    do
                    {
                      v36 = v35;
                      v35 = *(v35 + 56);
                    }

                    while (v35);
                    *(v36 + 56) = v34;
                    v34[7] = 0;
                  }

                  else
                  {
                    *v6 = v34;
                  }

                  if (!sub_240ACAF44(v6))
                  {
                    goto LABEL_96;
                  }

                  v59 = sub_240AC977C(v28, 3, 3u, &v63, 0);
                  if (!sub_240ACB414(v6, 1, v59))
                  {
                    goto LABEL_96;
                  }

                  if (*(a1 + 84) == 1281450528)
                  {
                    sub_240ACAB1C(v28);
                    v53 = v60;
LABEL_104:
                    if (!sub_240ACB414(v6, 1, v53))
                    {
                      goto LABEL_96;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_98;
        }
      }

LABEL_97:
      v6 = 0;
      goto LABEL_98;
    }

    v12 = 136;
    v13 = *(a1 + 132);
    while (*(a1 + v12) != dword_240C14BD0[a2])
    {
      v12 += 4;
      if (!--v13)
      {
        v14 = dword_240C14BC0[a2];
        v15 = 136;
        v16 = *(a1 + 132);
        while (*(a1 + v15) != v14)
        {
          v15 += 4;
          if (!--v16)
          {
            v14 = 1093812784;
            break;
          }
        }

        v17 = 136;
        while (*(a1 + v17) != v14)
        {
          v17 += 4;
          if (!--v11)
          {
            goto LABEL_25;
          }
        }

        v47 = sub_240AC7924(a1, v14);
        if (!v47)
        {
          goto LABEL_97;
        }

        v48 = *(a1 + 132);
        if (v48 < 1)
        {
LABEL_88:
          v55 = *MEMORY[0x277D85DE8];

          return sub_240ACB2E4(v47);
        }

        do
        {
          v49 = 0;
          while (*(a1 + 136 + 4 * v49) != v14)
          {
            if (v48 == ++v49)
            {
              goto LABEL_88;
            }
          }

          v14 = *(a1 + 536 + 4 * v49);
        }

        while (v14);
        v50 = **(a1 + 8 * v49 + 2936);
        v6 = sub_240ACB2E4(v47);
        if (v50 == 1835430962 && *(a1 + 84) == 1281450528)
        {
          if (*(a1 + 80) == 1281450528)
          {
            v51 = sub_240AC977C(v3, 3, 3u, qword_240C14C90, 0);
            if (!v51)
            {
              goto LABEL_96;
            }

            v51[1].i32[1] = 874525216;
            if (!v6)
            {
              goto LABEL_96;
            }

            v51[7] = *v6;
            *v6 = v51;
            if (!sub_240ACAF44(v6))
            {
              goto LABEL_96;
            }
          }

          v52 = sub_240AC977C(v3, 3, 3u, qword_240C14C48, 0);
          v53 = v52;
          if (v52)
          {
            v52[1].i32[1] = 840971296;
          }

          goto LABEL_104;
        }

        goto LABEL_98;
      }
    }

    v37 = *(a1 + 8);
    v38 = sub_240AC7924(a1, dword_240C14BD0[a2]);
    v6 = sub_240ACB2E4(v38);
    if (!v6)
    {
      goto LABEL_98;
    }

    v39 = *(a1 + 80);
    v40 = *(a1 + 84);
    if (v39 == 1482250784)
    {
      v41 = sub_240AC977C(v37, 3, 3u, qword_240C14DE0, 0);
      if (!v41)
      {
        goto LABEL_96;
      }

      v42 = 2016568352;
    }

    else
    {
      if (v39 != 1281450528)
      {
LABEL_59:
        if (v40 == 1482250784)
        {
          v8 = sub_240AC977C(v37, 3, 3u, qword_240C14D38, 0);
          if (!v8)
          {
            goto LABEL_96;
          }

          v8[1].i32[1] = 1681029152;
          v54 = *v6;
          if (*v6)
          {
            do
            {
              v10 = v54;
              v54 = *(v54 + 56);
            }

            while (v54);
            goto LABEL_12;
          }

          goto LABEL_85;
        }

        if (v40 != 1281450528)
        {
          goto LABEL_98;
        }

        v8 = sub_240AC977C(v37, 3, 3u, qword_240C14CD8, qword_240C14D20);
        if (!v8)
        {
          goto LABEL_96;
        }

        v8[1].i32[1] = 1681026080;
        v46 = *v6;
        if (!*v6)
        {
          goto LABEL_85;
        }

        do
        {
          v10 = v46;
          v46 = *(v46 + 56);
        }

        while (v46);
        goto LABEL_12;
      }

      v41 = sub_240AC977C(v37, 3, 3u, qword_240C14D80, qword_240C14DC8);
      if (!v41)
      {
        goto LABEL_96;
      }

      v42 = 1815241760;
    }

    v41[1].i32[1] = v42;
    v41[7] = *v6;
    *v6 = v41;
    if (!sub_240ACAF44(v6))
    {
      goto LABEL_96;
    }

    goto LABEL_59;
  }

  v4 = sub_240AC7924(a1, 0x6E636C32u);
  if (!v4)
  {
    goto LABEL_97;
  }

  v5 = v4;
  v6 = sub_240ACADFC(v3, 0, 0);
  if (!v6)
  {
    sub_240ACC2E0(v5);
    goto LABEL_98;
  }

  sub_240ACC658(v5, 1);
  if (!v7)
  {
    goto LABEL_96;
  }

  *(v7 + 56) = *v6;
  *v6 = v7;
  if (!sub_240ACAF44(v6))
  {
    goto LABEL_96;
  }

  v8 = sub_240AC977C(v3, 3, 3u, qword_240C14C48, 0);
  if (!v8)
  {
    goto LABEL_96;
  }

  v8[1].i32[1] = 840971296;
  v9 = *v6;
  if (*v6)
  {
    do
    {
      v10 = v9;
      v9 = *(v9 + 56);
    }

    while (v9);
LABEL_12:
    *(v10 + 56) = v8;
    v8[7] = 0;
    goto LABEL_86;
  }

LABEL_85:
  *v6 = v8;
LABEL_86:
  if (!sub_240ACAF44(v6))
  {
    goto LABEL_96;
  }

LABEL_98:
  v58 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_240AC8AE0(void *a1, uint64_t *a2)
{
  v4 = sub_240AC7924(a2, 0x7258595Au);
  v5 = sub_240AC7924(a2, 0x6758595Au);
  v6 = sub_240AC7924(a2, 0x6258595Au);
  v7 = 0;
  if (v4 && v5 && v6)
  {
    v8 = *v5;
    v9 = *v6;
    *a1 = *v4;
    a1[1] = v8;
    a1[2] = v9;
    v10 = v5[1];
    v11 = v6[1];
    a1[3] = v4[1];
    a1[4] = v10;
    a1[5] = v11;
    v12 = v5[2];
    v13 = v6[2];
    a1[6] = v4[2];
    a1[7] = v12;
    a1[8] = v13;
    return 1;
  }

  return v7;
}

void *sub_240AC8B98(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    do
    {
      if (*(v1 + 8) == 1668052340)
      {
        v3 = *(*(v1 + 48) + 8);
        *(v3 + 8) |= 0x100u;
        result = sub_240AC36B4(v2[7], v3);
      }

      v1 = *(v1 + 56);
    }

    while (v1);
  }

  return result;
}

uint64_t sub_240AC8C00(_DWORD *a1)
{
  v1 = a1[20];
  if (v1 == 1380401696)
  {
    v5 = a1[33];
    if (v5 >= 1)
    {
      v6 = a1 + 34;
      v7 = a1 + 34;
      v8 = a1[33];
      while (1)
      {
        v9 = *v7++;
        if (v9 == 1918392666)
        {
          break;
        }

        if (!--v8)
        {
          return 0;
        }
      }

      v10 = a1 + 34;
      v11 = a1[33];
      while (1)
      {
        v12 = *v10++;
        if (v12 == 1733843290)
        {
          break;
        }

        if (!--v11)
        {
          return 0;
        }
      }

      v14 = a1 + 34;
      v15 = a1[33];
      while (1)
      {
        v16 = *v14++;
        if (v16 == 1649957210)
        {
          break;
        }

        result = 0;
        if (!--v15)
        {
          return result;
        }
      }

      v17 = v6;
      v18 = v5;
      while (1)
      {
        v19 = *v17++;
        if (v19 == 1918128707)
        {
          break;
        }

        result = 0;
        if (!--v18)
        {
          return result;
        }
      }

      v20 = v6;
      v21 = v5;
      while (1)
      {
        v22 = *v20++;
        if (v22 == 1733579331)
        {
          break;
        }

        result = 0;
        if (!--v21)
        {
          return result;
        }
      }

      while (1)
      {
        v23 = *v6++;
        if (v23 == 1649693251)
        {
          break;
        }

        result = 0;
        if (!--v5)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  if (v1 != 1196573017)
  {
    return 0;
  }

  v2 = a1[33];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = a1 + 34;
  while (1)
  {
    v4 = *v3++;
    if (v4 == 1800688195)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_240AC8D68(_DWORD *a1, int a2)
{
  if (a1[19] == 1818848875)
  {
    if (a1[22] == a2)
    {
      return 1;
    }
  }

  else
  {
    v3 = a1[33];
    if (v3 >= 1)
    {
      v4 = a1 + 34;
      while (1)
      {
        v5 = *v4++;
        if (v5 == dword_240C14BC0[a2])
        {
          break;
        }

        if (!--v3)
        {
          return sub_240AC8C00(a1);
        }
      }

      return 1;
    }
  }

  return sub_240AC8C00(a1);
}

uint64_t sub_240AC8DC4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v5 = sub_240ACC9A8(a1, a2);
  if (v5)
  {
    v6 = 0;
    v7 = v4;
    do
    {
      v8 = *(v5 + 16);
      v9 = v8 + v6;
      v10 = *a3;
      *(v9 + 8) = *(*a3 + 104);
      *(v9 + 20) = *(v10 + 116);
      *v9 = *(v10 + 96);
      v11 = sub_240AC7924(v10, 0x74656368u);
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      *(v9 + 16) = v12;
      v13 = sub_240AC7924(v10, 0x646D6E64u);
      if (v13)
      {
        v13 = sub_240ACBCC4(v13);
      }

      *(v8 + v6 + 40) = v13;
      v14 = sub_240AC7924(v10, 0x646D6464u);
      if (v14)
      {
        v14 = sub_240ACBCC4(v14);
      }

      *(v8 + v6 + 48) = v14;
      v15 = sub_240AC7924(v10, 0x64657363u);
      if (v15)
      {
        v15 = sub_240ACBCC4(v15);
      }

      *(v8 + v6 + 56) = v15;
      ++a3;
      v6 += 64;
      --v7;
    }

    while (v7);
  }

  return v5;
}

int32x2_t sub_240AC8ED0(uint64_t *a1, __int32 a2)
{
  if (a1)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        goto LABEL_8;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_8:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))(a1, 64, 0x10A00405BC1CEE9);
  if (v6)
  {
    *v6 = a1;
    result = vdup_n_s32(0x69646E20u);
    v6[1] = result;
    v6[2].i32[0] = a2;
    v6[2].i32[1] = a2;
    v6[3] = sub_240AC8F90;
    v6[4] = 0;
    v6[5] = 0;
    v6[6] = 0;
  }

  return result;
}

uint64_t sub_240AC8FA8(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a1;
  if (*a1)
  {
    v10 = 0;
    do
    {
      ++v10;
      v9 = *(v9 + 56);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (v10 == a2)
  {
    v19 = &a9;
    v11 = a2;
    v12 = a1;
    while (1)
    {
      v13 = *v12;
      v14 = v19;
      v19 += 8;
      if (*(v13 + 8) != *v14)
      {
        break;
      }

      v12 = (v13 + 56);
      if (!--v11)
      {
        do
        {
          v15 = *a1;
          v16 = v19;
          v19 += 8;
          v17 = *v16;
          if (v17)
          {
            *v17 = v15;
          }

          a1 = (v15 + 56);
          --a2;
        }

        while (a2);
        return 1;
      }
    }
  }

  return 0;
}

int32x2_t *sub_240AC904C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {
        goto LABEL_8;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_8:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  v8 = (*(v7 + 1))(a1, 64, 0x10A00405BC1CEE9);
  v9 = v8;
  if (v8)
  {
    *v8 = a1;
    v8[1] = vdup_n_s32(0x63767374u);
    v8[2].i32[0] = a2;
    v8[2].i32[1] = a2;
    v8[3] = sub_240AC9678;
    v8[4] = sub_240AC9434;
    v8[5] = sub_240AC92F8;
    v8[6] = 0;
    if (a1)
    {
      v10 = &qword_27E516570;
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          break;
        }

        if (v10 == a1)
        {
          goto LABEL_18;
        }
      }

      v10 = &unk_278CB2F00;
    }

    else
    {
      v10 = &unk_278CB2F00;
    }

LABEL_18:
    v11 = v10[6];
    if (!v11)
    {
      v11 = &xmmword_281500C10;
    }

    v12 = (*(v11 + 1))(a1, 16, 0x10800407411B482);
    if (v12)
    {
      v13 = v12;
      v9[6] = v12;
      *v12 = a2;
      if (a1)
      {
        v14 = &qword_27E516570;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (v14 == a1)
          {
            goto LABEL_28;
          }
        }

        v14 = &unk_278CB2F00;
      }

      else
      {
        v14 = &unk_278CB2F00;
      }

LABEL_28:
      v15 = v14[6];
      if (!v15)
      {
        v15 = &xmmword_281500C10;
      }

      v16 = (*(v15 + 4))(a1, a2, 8, 0x2004093837F09);
      *(v13 + 1) = v16;
      if (v16)
      {
        if (!a2)
        {
          return v9;
        }

        v24 = 0;
        v25 = 8 * a2;
        while (1)
        {
          v26 = a3 ? sub_240AC2A40(*(a3 + v24), v17, v18, v19, v20, v21, v22, v23) : sub_240AC2604(a1, 1);
          *(*(v13 + 1) + v24) = v26;
          if (!*(*(v13 + 1) + v24))
          {
            break;
          }

          v24 += 8;
          if (v25 == v24)
          {
            return v9;
          }
        }
      }
    }

    v27 = v9[5];
    if (v27)
    {
      v27(v9);
    }

    if (*v9)
    {
      v28 = &qword_27E516570;
      while (1)
      {
        v28 = *v28;
        if (!v28)
        {
          break;
        }

        if (v28 == *v9)
        {
          goto LABEL_48;
        }
      }

      v28 = &unk_278CB2F00;
    }

    else
    {
      v28 = &unk_278CB2F00;
    }

LABEL_48:
    v29 = v28[6];
    if (!v29)
    {
      v29 = &xmmword_281500C10;
    }

    (*(v29 + 2))();
    return 0;
  }

  return v9;
}

uint64_t **sub_240AC92F8(uint64_t **result)
{
  v1 = result[6];
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (!*(v1 + 1))
  {
    goto LABEL_21;
  }

  v3 = *v1;
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(v1 + 1) + 8 * i);
      if (v5)
      {
        sub_240AC26D0(v5);
        v3 = *v1;
      }
    }

    v6 = *v2;
    if (!*(v1 + 1))
    {
      goto LABEL_22;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *result;
    if (*v2)
    {
LABEL_10:
      v7 = &qword_27E516570;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        if (v7 == v6)
        {
          goto LABEL_18;
        }
      }

      v7 = &unk_278CB2F00;
      goto LABEL_18;
    }
  }

  v7 = &unk_278CB2F00;
LABEL_18:
  v8 = v7[6];
  if (!v8)
  {
    v8 = &xmmword_281500C10;
  }

  (*(v8 + 2))();
LABEL_21:
  v6 = *v2;
LABEL_22:
  if (v6)
  {
    v9 = &qword_27E516570;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9 == v6)
      {
        goto LABEL_29;
      }
    }

    v9 = &unk_278CB2F00;
  }

  else
  {
    v9 = &unk_278CB2F00;
  }

LABEL_29:
  v10 = v9[6];
  if (!v10)
  {
    v10 = &xmmword_281500C10;
  }

  v11 = *(v10 + 2);

  return v11();
}

unsigned int *sub_240AC9434(uint64_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = a1[6];
  v5 = v3[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))();
  v7 = v6;
  if (v6)
  {
    *v6 = *v4;
    if (*a1)
    {
      v8 = &qword_27E516570;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (v8 == *a1)
        {
          goto LABEL_18;
        }
      }

      v8 = &unk_278CB2F00;
    }

    else
    {
      v8 = &unk_278CB2F00;
    }

LABEL_18:
    v9 = v8[6];
    if (!v9)
    {
      v9 = &xmmword_281500C10;
    }

    v10 = (*(v9 + 4))();
    *(v7 + 1) = v10;
    if (!v10)
    {
      goto LABEL_43;
    }

    if (!*v7)
    {
      return v7;
    }

    v18 = 0;
    while (1)
    {
      *(*(v7 + 1) + 8 * v18) = sub_240AC2A40(*(v4[1] + 8 * v18), v11, v12, v13, v14, v15, v16, v17);
      v11 = *(v7 + 1);
      if (!*(v11 + 8 * v18))
      {
        break;
      }

      if (++v18 >= *v7)
      {
        return v7;
      }
    }

    v19 = *v7;
    if (v19)
    {
      for (i = 0; i < v19; ++i)
      {
        v21 = *(*(v7 + 1) + 8 * i);
        if (v21)
        {
          sub_240AC26D0(v21);
          v19 = *v7;
        }
      }

      v22 = *a1;
      if (!*(v7 + 1))
      {
        goto LABEL_44;
      }

      if (v22)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v22 = *a1;
      if (*a1)
      {
LABEL_33:
        v23 = &qword_27E516570;
        while (1)
        {
          v23 = *v23;
          if (!v23)
          {
            break;
          }

          if (v23 == v22)
          {
            goto LABEL_40;
          }
        }

        v23 = &unk_278CB2F00;
        goto LABEL_40;
      }
    }

    v23 = &unk_278CB2F00;
LABEL_40:
    v24 = v23[6];
    if (!v24)
    {
      v24 = &xmmword_281500C10;
    }

    (*(v24 + 2))();
LABEL_43:
    v22 = *a1;
LABEL_44:
    if (v22)
    {
      v25 = &qword_27E516570;
      while (1)
      {
        v25 = *v25;
        if (!v25)
        {
          break;
        }

        if (v25 == v22)
        {
          goto LABEL_51;
        }
      }

      v25 = &unk_278CB2F00;
    }

    else
    {
      v25 = &unk_278CB2F00;
    }

LABEL_51:
    v26 = v25[6];
    if (!v26)
    {
      v26 = &xmmword_281500C10;
    }

    (*(v26 + 2))();
    return 0;
  }

  return v7;
}

void sub_240AC9678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3 && *(v3 + 1) && *v3)
  {
    v6 = 0;
    do
    {
      *(a2 + 4 * v6) = sub_240AC2CFC(*(*(v3 + 1) + 8 * v6), *(a1 + 4 * v6));
      ++v6;
    }

    while (v6 < *v3);
  }
}

uint64_t sub_240AC96E4(uint64_t **a1)
{
  v2 = a1[5];
  if (v2)
  {
    (v2)(a1);
  }

  if (*a1)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == *a1)
      {
        goto LABEL_10;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_10:
  v4 = v3[6];
  if (!v4)
  {
    v4 = &xmmword_281500C10;
  }

  v5 = *(v4 + 2);

  return v5();
}

int32x2_t *sub_240AC977C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a3 * a2;
  if (!v5 || v5 >= 0xFFFFFFFF / a3 || v5 >= 0xFFFFFFFF / a2)
  {
    return 0;
  }

  v8 = 0;
  if (v5 >= a2 && v5 >= a3)
  {
    if (a1)
    {
      v12 = &qword_27E516570;
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        if (v12 == a1)
        {
          goto LABEL_13;
        }
      }

      v12 = &unk_278CB2F00;
    }

    else
    {
      v12 = &unk_278CB2F00;
    }

LABEL_13:
    v13 = v12[6];
    if (!v13)
    {
      v13 = &xmmword_281500C10;
    }

    v14 = (*(v13 + 1))(a1, 64, 0x10A00405BC1CEE9);
    v8 = v14;
    if (v14)
    {
      *v14 = a1;
      v14[1] = vdup_n_s32(0x6D617466u);
      v14[2].i32[0] = a3;
      v14[2].i32[1] = a2;
      v14[3] = sub_240AC9D30;
      v14[4] = sub_240AC9BA4;
      v14[5] = sub_240AC9A48;
      v14[6] = 0;
      if (a1)
      {
        v15 = &qword_27E516570;
        while (1)
        {
          v15 = *v15;
          if (!v15)
          {
            break;
          }

          if (v15 == a1)
          {
            goto LABEL_23;
          }
        }

        v15 = &unk_278CB2F00;
      }

      else
      {
        v15 = &unk_278CB2F00;
      }

LABEL_23:
      v16 = v15[6];
      if (!v16)
      {
        v16 = &xmmword_281500C10;
      }

      v17 = (*(v16 + 1))(a1, 16, 0x80040803F642BLL);
      if (v17)
      {
        v18 = v17;
        if (a1)
        {
          v19 = &qword_27E516570;
          while (1)
          {
            v19 = *v19;
            if (!v19)
            {
              break;
            }

            if (v19 == a1)
            {
              goto LABEL_33;
            }
          }

          v19 = &unk_278CB2F00;
        }

        else
        {
          v19 = &unk_278CB2F00;
        }

LABEL_33:
        v20 = v19[6];
        if (!v20)
        {
          v20 = &xmmword_281500C10;
        }

        v21 = (*(v20 + 4))(a1, v5, 8, 0x100004000313F17);
        *v18 = v21;
        if (v21)
        {
          do
          {
            v22 = *a4++;
            *v21++ = v22;
            --v5;
          }

          while (v5);
          if (!a5)
          {
            goto LABEL_52;
          }

          if (a1)
          {
            v23 = &qword_27E516570;
            while (1)
            {
              v23 = *v23;
              if (!v23)
              {
                break;
              }

              if (v23 == a1)
              {
                goto LABEL_45;
              }
            }

            v23 = &unk_278CB2F00;
          }

          else
          {
            v23 = &unk_278CB2F00;
          }

LABEL_45:
          v24 = v23[6];
          if (!v24)
          {
            v24 = &xmmword_281500C10;
          }

          v25 = (*(v24 + 4))(a1, a2, 8, 0x100004000313F17);
          v18[1] = v25;
          if (v25)
          {
            if (a2 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = a2;
            }

            do
            {
              v27 = *a5++;
              *v25++ = v27;
              --v26;
            }

            while (v26);
LABEL_52:
            v8[6] = v18;
            return v8;
          }
        }

        sub_240AC9A48(v8);
      }

      return 0;
    }
  }

  return v8;
}

uint64_t **sub_240AC9A48(uint64_t **result)
{
  v1 = result[6];
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      v3 = *result;
      if (*v2)
      {
        v4 = &qword_27E516570;
        while (1)
        {
          v4 = *v4;
          if (!v4)
          {
            break;
          }

          if (v4 == v3)
          {
            goto LABEL_10;
          }
        }

        v4 = &unk_278CB2F00;
      }

      else
      {
        v4 = &unk_278CB2F00;
      }

LABEL_10:
      v5 = v4[6];
      if (!v5)
      {
        v5 = &xmmword_281500C10;
      }

      result = (*(v5 + 2))();
    }

    if (v1[1])
    {
      if (*v2)
      {
        v6 = &qword_27E516570;
        while (1)
        {
          v6 = *v6;
          if (!v6)
          {
            break;
          }

          if (v6 == *v2)
          {
            goto LABEL_21;
          }
        }

        v6 = &unk_278CB2F00;
      }

      else
      {
        v6 = &unk_278CB2F00;
      }

LABEL_21:
      v7 = v6[6];
      if (!v7)
      {
        v7 = &xmmword_281500C10;
      }

      result = (*(v7 + 2))();
    }

    if (v2[6])
    {
      if (*v2)
      {
        v8 = &qword_27E516570;
        while (1)
        {
          v8 = *v8;
          if (!v8)
          {
            break;
          }

          if (v8 == *v2)
          {
            goto LABEL_33;
          }
        }

        v8 = &unk_278CB2F00;
      }

      else
      {
        v8 = &unk_278CB2F00;
      }

LABEL_33:
      v9 = v8[6];
      if (!v9)
      {
        v9 = &xmmword_281500C10;
      }

      v10 = *(v9 + 2);

      return v10();
    }
  }

  return result;
}

void *sub_240AC9BA4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = *(a1 + 48);
  v5 = v3[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))();
  if (v6)
  {
    v7 = *v4;
    v8 = (8 * *(a1 + 16) * *(a1 + 20));
    if (*a1)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == *a1)
        {
          goto LABEL_18;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_18:
    v10 = v9[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    *v6 = (*(v10 + 5))();
    if (v4[1])
    {
      v11 = (8 * *(a1 + 20));
      if (*a1)
      {
        v12 = &qword_27E516570;
        while (1)
        {
          v12 = *v12;
          if (!v12)
          {
            break;
          }

          if (v12 == *a1)
          {
            goto LABEL_28;
          }
        }

        v12 = &unk_278CB2F00;
      }

      else
      {
        v12 = &unk_278CB2F00;
      }

LABEL_28:
      v13 = v12[6];
      if (!v13)
      {
        v13 = &xmmword_281500C10;
      }

      v6[1] = (*(v13 + 5))();
    }
  }

  return v6;
}

float sub_240AC9D30(float *a1, uint64_t a2, uint64_t a3, float result)
{
  v4 = *(a3 + 20);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 48);
    v8 = *(a3 + 16);
    v9 = v7[1];
    do
    {
      if (v8)
      {
        v10 = 0.0;
        v11 = a1;
        v12 = v5;
        v13 = v8;
        do
        {
          v14 = *v11++;
          v10 = v10 + v14 * *(*v7 + 8 * v12++);
          --v13;
        }

        while (v13);
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = 0.0;
        if (!v9)
        {
          goto LABEL_8;
        }
      }

      v10 = v10 + *(v9 + 8 * v6);
LABEL_8:
      result = v10;
      *(a2 + 4 * v6++) = result;
      v5 += v8;
    }

    while (v6 != v4);
  }

  return result;
}

int32x2_t *sub_240AC9DB8(uint64_t *a1, int *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 >= 9)
  {
    sub_240AC15A4(a1, 2, "Too many input channels (%d channels, max=%d)", a4, a5, a6, a7, a8, a3);
    return 0;
  }

  if (a1)
  {
    v13 = &qword_27E516570;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      if (v13 == a1)
      {
        goto LABEL_10;
      }
    }

    v13 = &unk_278CB2F00;
  }

  else
  {
    v13 = &unk_278CB2F00;
  }

LABEL_10:
  v14 = v13[6];
  if (!v14)
  {
    v14 = &xmmword_281500C10;
  }

  v15 = (*(v14 + 1))(a1, 64, 0x10A00405BC1CEE9);
  v16 = v15;
  if (v15)
  {
    *v15 = a1;
    v15[1] = vdup_n_s32(0x636C7574u);
    v15[2].i32[0] = a3;
    v15[2].i32[1] = a4;
    v15[3] = sub_240ACA544;
    v15[4] = sub_240ACA2EC;
    v15[5] = sub_240ACA190;
    v15[6] = 0;
    if (a1)
    {
      v17 = &qword_27E516570;
      while (1)
      {
        v17 = *v17;
        if (!v17)
        {
          break;
        }

        if (v17 == a1)
        {
          goto LABEL_20;
        }
      }

      v17 = &unk_278CB2F00;
    }

    else
    {
      v17 = &unk_278CB2F00;
    }

LABEL_20:
    v18 = v17[6];
    if (!v18)
    {
      v18 = &xmmword_281500C10;
    }

    v19 = (*(v18 + 1))(a1, 24, 0x10B2040FFF1735BLL);
    if (!v19)
    {
      v24 = v16[5];
      if (v24)
      {
        v24(v16);
      }

      if (*v16)
      {
        v25 = &qword_27E516570;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            goto LABEL_77;
          }

          if (v25 == *v16)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_76;
    }

    v20 = v19;
    v16[6] = v19;
    if (a3)
    {
      v21 = a3;
      v22 = 1;
      while (1)
      {
        v23 = a2[v21 - 1];
        if (!v23)
        {
          break;
        }

        v22 *= v23;
        if (((v23 * v22) & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        if (!(--v21 * 4))
        {
          goto LABEL_38;
        }
      }

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

LABEL_38:
    v26 = v22 * a4;
    *(v19 + 16) = v26;
    if (!v26)
    {
      v28 = v16[5];
      if (v28)
      {
        v28(v16);
      }

      if (*v16)
      {
        v25 = &qword_27E516570;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            goto LABEL_77;
          }

          if (v25 == *v16)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_76;
    }

    if (a1)
    {
      v27 = &qword_27E516570;
      while (1)
      {
        v27 = *v27;
        if (!v27)
        {
          break;
        }

        if (v27 == a1)
        {
          goto LABEL_53;
        }
      }

      v27 = &unk_278CB2F00;
    }

    else
    {
      v27 = &unk_278CB2F00;
    }

LABEL_53:
    v29 = v27[6];
    if (!v29)
    {
      v29 = &xmmword_281500C10;
    }

    v30 = (*(v29 + 4))(a1, v26, 2, 0x1000040BDFB0063);
    *v20 = v30;
    if (!v30)
    {
      v35 = v16[5];
      if (v35)
      {
        v35(v16);
      }

      if (*v16)
      {
        v25 = &qword_27E516570;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            goto LABEL_77;
          }

          if (v25 == *v16)
          {
            goto LABEL_78;
          }
        }
      }

LABEL_76:
      v25 = &unk_278CB2F00;
LABEL_78:
      v38 = v25[6];
      if (!v38)
      {
        v38 = &xmmword_281500C10;
      }

      (*(v38 + 2))();
      return 0;
    }

    if (a5)
    {
      for (i = 0; i != v26; ++i)
      {
        *(*v20 + 2 * i) = *(a5 + 2 * i);
      }

      v34 = *v20;
    }

    else
    {
      v34 = v30;
    }

    v36 = sub_240AC59A8(a1, a2, a3, a4, v34, 0, v31, v32);
    v20[1] = v36;
    if (!v36)
    {
      v37 = v16[5];
      if (v37)
      {
        v37(v16);
      }

      if (*v16)
      {
        v25 = &qword_27E516570;
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          if (v25 == *v16)
          {
            goto LABEL_78;
          }
        }

LABEL_77:
        v25 = &unk_278CB2F00;
        goto LABEL_78;
      }

      goto LABEL_76;
    }
  }

  return v16;
}

uint64_t **sub_240ACA190(uint64_t **result)
{
  v1 = result[6];
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      v3 = *result;
      if (*v2)
      {
        v4 = &qword_27E516570;
        while (1)
        {
          v4 = *v4;
          if (!v4)
          {
            break;
          }

          if (v4 == v3)
          {
            goto LABEL_10;
          }
        }

        v4 = &unk_278CB2F00;
      }

      else
      {
        v4 = &unk_278CB2F00;
      }

LABEL_10:
      v5 = v4[6];
      if (!v5)
      {
        v5 = &xmmword_281500C10;
      }

      result = (*(v5 + 2))();
    }

    v6 = v1[1];
    if (v6)
    {
      if (*v6)
      {
        v7 = &qword_27E516570;
        while (1)
        {
          v7 = *v7;
          if (!v7)
          {
            break;
          }

          if (v7 == *v6)
          {
            goto LABEL_21;
          }
        }

        v7 = &unk_278CB2F00;
      }

      else
      {
        v7 = &unk_278CB2F00;
      }

LABEL_21:
      v8 = v7[6];
      if (!v8)
      {
        v8 = &xmmword_281500C10;
      }

      result = (*(v8 + 2))();
    }

    if (v2[6])
    {
      if (*v2)
      {
        v9 = &qword_27E516570;
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (v9 == *v2)
          {
            goto LABEL_33;
          }
        }

        v9 = &unk_278CB2F00;
      }

      else
      {
        v9 = &unk_278CB2F00;
      }

LABEL_33:
      v10 = v9[6];
      if (!v10)
      {
        v10 = &xmmword_281500C10;
      }

      v11 = *(v10 + 2);

      return v11();
    }
  }

  return result;
}

void *sub_240ACA2EC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = *(a1 + 48);
  v5 = v3[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))();
  v9 = v6;
  if (v6)
  {
    v10 = *(v4 + 20);
    *(v6 + 16) = *(v4 + 16);
    *(v6 + 20) = v10;
    if (*v4)
    {
      v11 = *a1;
      if (v10)
      {
        if (v11)
        {
          v12 = &qword_27E516570;
          while (1)
          {
            v12 = *v12;
            if (!v12)
            {
              break;
            }

            if (v12 == v11)
            {
              goto LABEL_26;
            }
          }

          v12 = &unk_278CB2F00;
        }

        else
        {
          v12 = &unk_278CB2F00;
        }

LABEL_26:
        v15 = v12[6];
        if (!v15)
        {
          v15 = &xmmword_281500C10;
        }

        v16 = *(v15 + 5);
      }

      else
      {
        if (v11)
        {
          v14 = &qword_27E516570;
          while (1)
          {
            v14 = *v14;
            if (!v14)
            {
              break;
            }

            if (v14 == v11)
            {
              goto LABEL_31;
            }
          }

          v14 = &unk_278CB2F00;
        }

        else
        {
          v14 = &unk_278CB2F00;
        }

LABEL_31:
        v17 = v14[6];
        if (!v17)
        {
          v17 = &xmmword_281500C10;
        }

        v16 = *(v17 + 5);
      }

      v18 = v16();
      *v9 = v18;
      if (!v18)
      {
LABEL_48:
        if (*a1)
        {
          v22 = &qword_27E516570;
          while (1)
          {
            v22 = *v22;
            if (!v22)
            {
              break;
            }

            if (v22 == *a1)
            {
              goto LABEL_55;
            }
          }

          v22 = &unk_278CB2F00;
        }

        else
        {
          v22 = &unk_278CB2F00;
        }

LABEL_55:
        v23 = v22[6];
        if (!v23)
        {
          v23 = &xmmword_281500C10;
        }

        (*(v23 + 2))();
        return 0;
      }

      v13 = v18;
    }

    else
    {
      v13 = *v6;
    }

    v19 = sub_240AC59A8(*a1, (*(v4 + 8) + 20), *(*(v4 + 8) + 12), *(*(v4 + 8) + 16), v13, *(*(v4 + 8) + 8), v7, v8);
    v9[1] = v19;
    if (v19)
    {
      return v9;
    }

    if (*v9)
    {
      if (*a1)
      {
        v20 = &qword_27E516570;
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (v20 == *a1)
          {
            goto LABEL_45;
          }
        }

        v20 = &unk_278CB2F00;
      }

      else
      {
        v20 = &unk_278CB2F00;
      }

LABEL_45:
      v21 = v20[6];
      if (!v21)
      {
        v21 = &xmmword_281500C10;
      }

      (*(v21 + 2))();
    }

    goto LABEL_48;
  }

  return v9;
}

uint64_t sub_240ACA544(float *a1, float *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 48);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = v16;
    do
    {
      v8 = *a1 * 65535.0 + 0.5;
      if (v8 <= 0.0)
      {
        v9 = 0;
      }

      else if (v8 >= 65535.0)
      {
        v9 = -1;
      }

      else
      {
        v9 = (COERCE_UNSIGNED_INT64(v8 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      *v7++ = v9;
      ++a1;
      --v6;
    }

    while (v6);
  }

  result = (*(*(v5 + 8) + 128))(v16, v15);
  v11 = *(a3 + 20);
  if (v11)
  {
    v12 = v15;
    do
    {
      v13 = *v12++;
      *a2++ = v13 / 65535.0;
      --v11;
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ACA678(uint64_t result, uint64_t (*a2)(void, void), uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = *(result + 48);
    if (!v3)
    {
LABEL_35:
      result = 0;
      goto LABEL_36;
    }

    result = 0;
    v4 = v3[1];
    v7 = *(v4 + 16);
    v5 = v4 + 16;
    v6 = v7;
    v8 = *(v5 - 4);
    if ((v8 - 9) >= 0xFFFFFFF8 && (v6 - 128) >= 0xFFFFFF81)
    {
      v36[0] = 0;
      v36[1] = 0;
      v37 = 0;
      memset(v35, 0, 256);
      v10 = 4 * v8;
      v11 = 1;
      while (1)
      {
        v12 = *(v5 + v10);
        if (!v12)
        {
          goto LABEL_35;
        }

        v11 *= v12;
        if (((v12 * v11) & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_35;
        }

        v10 -= 4;
        if (!v10)
        {
          if (!v11)
          {
            goto LABEL_35;
          }

          if (v11 < 1)
          {
            result = 1;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            v34 = v8;
            do
            {
              if (v8 >= 1)
              {
                v15 = v8;
                v16 = v14;
                do
                {
                  v17 = *(v5 + 4 * v15);
                  v18 = v16;
                  v16 /= v17;
                  v19 = (v18 - v16 * v17) * 65535.0 / (v17 - 1) + 0.5;
                  if (v19 <= 0.0)
                  {
                    v20 = 0;
                  }

                  else if (v19 >= 65535.0)
                  {
                    v20 = -1;
                  }

                  else
                  {
                    v20 = (COERCE_UNSIGNED_INT64(v19 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
                  }

                  *(&v35[32] + v15-- + 3) = v20;
                }

                while (v15 + 1 > 1);
              }

              v21 = 2 * v13;
              if (*v3)
              {
                v22 = v6 < 1;
              }

              else
              {
                v22 = 1;
              }

              if (!v22)
              {
                v23 = (*v3 + v21);
                v24 = v35;
                v25 = v6;
                do
                {
                  v26 = *v23++;
                  *v24++ = v26;
                  --v25;
                }

                while (v25);
              }

              v27 = a3;
              v28 = a2;
              result = a2(v36, v35);
              if (!result)
              {
                break;
              }

              v29 = !*v3 || v6 < 1;
              v8 = v34;
              if (!v29)
              {
                v30 = v35;
                v31 = v6;
                do
                {
                  v32 = *v30++;
                  *(*v3 + v21) = v32;
                  v21 += 2;
                  --v31;
                }

                while (v31);
              }

              v13 += v6;
              ++v14;
              result = 1;
              a3 = v27;
              a2 = v28;
            }

            while (v14 != v11);
          }

          break;
        }
      }
    }
  }

LABEL_36:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ACA8F4(__int16 *a1, _WORD *a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 >= 1)
  {
    do
    {
      v4 = *a1++;
      *a2++ = v4;
      --v3;
    }

    while (v3);
  }

  return 1;
}

double sub_240ACA918(uint64_t *a1)
{
  if (a1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == a1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  v4 = (*(v3 + 1))(a1, 64, 0x10A00405BC1CEE9);
  if (v4)
  {
    *v4 = a1;
    result = 9.73243756e270;
    *(v4 + 8) = xmmword_240C11200;
    *(v4 + 24) = sub_240ACA9CC;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
  }

  return result;
}

float32_t sub_240ACA9CC(uint64_t a1, float32x2_t *a2)
{
  _Q3 = vmlaq_f64(vdupq_n_s64(0xC060000000000000), vdupq_n_s64(0x406FE00000000000uLL), vcvtq_f64_f32(*(a1 + 4)));
  v3.f64[0] = (*a1 * 100.0 + 16.0) / 116.0 + _Q3.f64[0] * 0.002;
  _D2 = 0xBF747AE147AE147BLL;
  v3.f64[1] = (*a1 * 100.0 + 16.0) / 116.0;
  __asm { FMLA            D0, D2, V3.D[1] }

  v10 = vmulq_f64(xmmword_27E516510, vbslq_s8(vcgeq_f64(vdupq_n_s64(0x3FCA7B9611A7B961uLL), v3), vmulq_f64(vaddq_f64(v3, vdupq_n_s64(0xBFC1A7B9611A7B96)), vdupq_n_s64(0x3FC07004DED20922uLL)), vmulq_f64(v3, vmulq_f64(v3, v3))));
  if (_D0 <= 0.206896552)
  {
    v11 = (_D0 + -0.137931034) * 0.128418549;
  }

  else
  {
    v11 = _D0 * (_D0 * _D0);
  }

  v12 = v11 * *&qword_27E516520;
  *a2 = vcvt_f32_f64(vdivq_f64(v10, vdupq_n_s64(0x3FFFFFE000000000uLL)));
  result = v12 / 1.99996948;
  a2[1].f32[0] = result;
  return result;
}

float *sub_240ACAAF4(float *result, float *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    do
    {
      v4 = *result++;
      v5 = v4;
      if (v4 < 0.0)
      {
        v5 = 0.0;
      }

      *a2++ = v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_240ACAB1C(uint64_t *a1)
{
  if (a1)
  {
    v2 = &qword_27E516570;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2 == a1)
      {
        goto LABEL_8;
      }
    }

    v2 = &unk_278CB2F00;
  }

  else
  {
    v2 = &unk_278CB2F00;
  }

LABEL_8:
  v3 = v2[6];
  if (!v3)
  {
    v3 = &xmmword_281500C10;
  }

  v4 = (*(v3 + 1))(a1, 64, 0x10A00405BC1CEE9);
  if (v4)
  {
    *v4 = a1;
    result = 1.5544118e213;
    *(v4 + 8) = xmmword_240C11210;
    *(v4 + 24) = sub_240ACABD0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
  }

  return result;
}

float32_t sub_240ACABD0(float32x2_t *a1, float32x2_t *a2)
{
  v7 = 0uLL;
  v8 = 0.0;
  v5 = vmulq_f64(vcvtq_f64_f32(*a1), vdupq_n_s64(0x3FFFFFE000000000uLL));
  v6 = a1[1].f32[0] * 1.99996948;
  sub_240AD37AC(&v7, v5.f64);
  *&v3.f64[0] = v7;
  v3.f64[1] = *(&v7 + 1) + 128.0;
  *a2 = vcvt_f32_f64(vdivq_f64(v3, xmmword_240C11220));
  result = (v8 + 128.0) / 255.0;
  a2[1].f32[0] = result;
  return result;
}

uint64_t **sub_240ACAC80(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == v2)
      {
        goto LABEL_9;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_9:
  v4 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = v3[6];
  if (!v6)
  {
    v6 = &xmmword_281500C10;
  }

  v7 = (*(v6 + 1))(v2, 64, 0x10A00405BC1CEE9);
  v8 = v7;
  if (v7)
  {
    *v7 = v2;
    LODWORD(v9) = v4;
    *(&v9 + 1) = v16;
    DWORD1(v9) = v4;
    *(v7 + 8) = v9;
    *(v7 + 24) = v17;
    *(v7 + 40) = v5;
    *(v7 + 48) = 0;
    *(v7 + 12) = *(a1 + 12);
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = v10(a1);
      v8[6] = v11;
      if (!v11)
      {
        v12 = v8[5];
        if (v12)
        {
          (v12)(v8);
        }

        if (*v8)
        {
          v13 = &qword_27E516570;
          while (1)
          {
            v13 = *v13;
            if (!v13)
            {
              break;
            }

            if (v13 == *v8)
            {
              goto LABEL_23;
            }
          }

          v13 = &unk_278CB2F00;
        }

        else
        {
          v13 = &unk_278CB2F00;
        }

LABEL_23:
        v14 = v13[6];
        if (!v14)
        {
          v14 = &xmmword_281500C10;
        }

        (*(v14 + 2))();
        return 0;
      }
    }
  }

  return v8;
}

uint64_t sub_240ACADFC(uint64_t *a1, unsigned int a2, int a3)
{
  if ((a3 | a2) > 0xF)
  {
    return 0;
  }

  if (a1)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {
        goto LABEL_9;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_9:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  v8 = (*(v7 + 1))(a1, 72, 0x10A00403C456A6ALL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 8) = a2;
    *(v8 + 12) = a3;
    *(v8 + 16) = v8;
    *(v8 + 24) = sub_240ACB06C;
    *(v8 + 32) = sub_240ACAF9C;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = a1;
    if (!sub_240ACAF44(v8))
    {
      if (a1)
      {
        v10 = &qword_27E516570;
        while (1)
        {
          v10 = *v10;
          if (!v10)
          {
            break;
          }

          if (v10 == a1)
          {
            goto LABEL_20;
          }
        }

        v10 = &unk_278CB2F00;
      }

      else
      {
        v10 = &unk_278CB2F00;
      }

LABEL_20:
      v11 = v10[6];
      if (!v11)
      {
        v11 = &xmmword_281500C10;
      }

      (*(v11 + 2))(a1, v9);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_240ACAF44(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v2 = *a1;
  do
  {
    v3 = v2;
    v2 = *(v2 + 56);
  }

  while (v2);
  v4 = *(v3 + 20);
  *(a1 + 2) = *(v1 + 16);
  *(a1 + 3) = v4;
  v5 = *(v1 + 56);
  if (!v5)
  {
    return 1;
  }

  while (*(v5 + 16) == *(v1 + 20))
  {
    v1 = *(v1 + 56);
    v5 = *(v5 + 56);
    if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_240ACAF9C(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 2);
  __memmove_chk();
  v6 = *a3;
  if (*a3)
  {
    v7 = 0;
    do
    {
      v8 = v7 ^ 1;
      (*(v6 + 24))(&v11[512 * v7], &v11[512 * (v7 ^ 1)], v6);
      v6 = *(v6 + 56);
      v7 = v8;
    }

    while (v6);
  }

  else
  {
    v8 = 0;
  }

  result = memcpy(a2, &v11[512 * v8], 4 * *(a3 + 3));
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *sub_240ACB06C(unsigned __int16 *result, __int16 *a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 2);
  if (v5)
  {
    v6 = v16;
    do
    {
      v7 = *result++;
      *v6++ = v7 / 65535.0;
      --v5;
    }

    while (v5);
  }

  v8 = *a3;
  if (*a3)
  {
    v9 = 0;
    do
    {
      v10 = v9 ^ 1;
      result = (*(v8 + 24))(&v16[512 * v9], &v16[512 * (v9 ^ 1)], v8);
      v8 = *(v8 + 56);
      v9 = v10;
    }

    while (v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a3 + 3);
  if (v11)
  {
    v12 = &v16[512 * v10];
    do
    {
      v13 = *v12 * 65535.0 + 0.5;
      if (v13 <= 0.0)
      {
        v14 = 0;
      }

      else if (v13 >= 65535.0)
      {
        v14 = -1;
      }

      else
      {
        v14 = (COERCE_UNSIGNED_INT64(v13 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      *a2++ = v14;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240ACB1C0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      do
      {
        v3 = v2;
        v2 = v2[7];
        v4 = v3[5];
        if (v4)
        {
          (v4)(v3);
        }

        if (*v3)
        {
          v5 = &qword_27E516570;
          while (1)
          {
            v5 = *v5;
            if (!v5)
            {
              break;
            }

            if (v5 == *v3)
            {
              goto LABEL_11;
            }
          }
        }

        v5 = &unk_278CB2F00;
LABEL_11:
        v6 = v5[6];
        if (!v6)
        {
          v6 = &xmmword_281500C10;
        }

        (*(v6 + 2))();
      }

      while (v2);
    }

    v7 = v1[5];
    if (v7)
    {
      v7(v1[7], v1[2]);
    }

    v8 = v1[7];
    if (v8)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == v8)
        {
          goto LABEL_24;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_24:
    v10 = v9[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    v11 = *(v10 + 2);

    return v11();
  }

  return result;
}

uint64_t sub_240ACB2E4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_240ACADFC(*(a1 + 56), *(a1 + 8), *(a1 + 12));
  if (v2)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = sub_240ACAC80(v3);
        if (!v6)
        {
          sub_240ACB1C0(v2);
          return 0;
        }

        v7 = v2;
        if ((v4 & 1) == 0)
        {
          goto LABEL_9;
        }

        if (v5)
        {
          break;
        }

LABEL_10:
        v3 = *(v3 + 56);
        v4 = 1;
        v5 = v6;
        if (!v3)
        {
          goto LABEL_11;
        }
      }

      v7 = v5 + 7;
LABEL_9:
      *v7 = v6;
      goto LABEL_10;
    }

LABEL_11:
    *(v2 + 24) = *(a1 + 24);
    v8 = *(a1 + 48);
    *(v2 + 40) = *(a1 + 40);
    *(v2 + 48) = v8;
    if (v8)
    {
      *(v2 + 16) = v8(*(a1 + 56), *(a1 + 16));
    }

    *(v2 + 64) = *(a1 + 64);
    if (!sub_240ACAF44(v2))
    {
      v9 = *(a1 + 56);
      if (v9)
      {
        v10 = &qword_27E516570;
        while (1)
        {
          v10 = *v10;
          if (!v10)
          {
            break;
          }

          if (v10 == v9)
          {
            goto LABEL_22;
          }
        }

        v10 = &unk_278CB2F00;
      }

      else
      {
        v10 = &unk_278CB2F00;
      }

LABEL_22:
      v11 = v10[6];
      if (!v11)
      {
        v11 = &xmmword_281500C10;
      }

      (*(v11 + 2))();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_240ACB414(uint64_t *a1, int a2, uint64_t a3)
{
  if (a1 && a3)
  {
    v3 = *a1;
    if (a2)
    {
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *(v3 + 56);
        }

        while (v3);
        *(v4 + 56) = a3;
        *(a3 + 56) = 0;
        return sub_240ACAF44(a1);
      }
    }

    else
    {
      *(a3 + 56) = v3;
    }

    *a1 = a3;
    return sub_240ACAF44(a1);
  }

  return 0;
}

uint64_t sub_240ACB454(uint64_t a1)
{
  v1 = 0;
  v5[0] = 0x3FF0000000000000;
  memset(&v5[1], 0, 24);
  v5[4] = 0x3FF0000000000000;
  memset(&v5[5], 0, 24);
  v5[8] = 0x3FF0000000000000;
  v2 = v5;
  while (2)
  {
    for (i = 0; i != 3; ++i)
    {
      if (vabdd_f64(*&v2[i], *(a1 + i * 8)) >= 0.0000152590219)
      {
        return 0;
      }
    }

    ++v1;
    v2 += 3;
    a1 += 24;
    if (v1 != 3)
    {
      continue;
    }

    break;
  }

  return 1;
}

float64x2_t sub_240ACB4CC(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 * *(a3 + 40) + *a2 * *(a3 + 16) + v4 * *(a3 + 64);
  *a1 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a3 + 24), v3), *a3, *a2), *(a3 + 48), v4);
  *(a1 + 16) = v5;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = v7 * *(a3 + 40) + v6 * *(a3 + 16) + v8 * *(a3 + 64);
  *(a1 + 24) = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a3 + 24), v7), *a3, v6), *(a3 + 48), v8);
  *(a1 + 40) = v9;
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = v11 * *(a3 + 40) + v10 * *(a3 + 16) + v12 * *(a3 + 64);
  v14 = vmlaq_n_f64(vmulq_n_f64(*(a3 + 24), v11), *a3, v10);
  result = *(a3 + 48);
  *(a1 + 48) = vmlaq_n_f64(v14, result, v12);
  *(a1 + 64) = v13;
  return result;
}

uint64_t sub_240ACB590(double *a1, double *a2)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = v4 * v2 - v5 * v3;
  v8 = a1[3];
  v9 = v5 * v6 - v8 * v2;
  v10 = v8 * v3 - v4 * v6;
  v11 = a1[1] * v9 + *a1 * v7 + a1[2] * v10;
  if (fabs(v11) < 0.0001)
  {
    return 0;
  }

  *a2 = v7 / v11;
  a2[1] = (a1[2] * a1[7] - a1[1] * a1[8]) / v11;
  a2[2] = (a1[1] * a1[5] - a1[2] * a1[4]) / v11;
  a2[3] = v9 / v11;
  a2[4] = (*a1 * a1[8] - a1[2] * a1[6]) / v11;
  a2[5] = (a1[2] * a1[3] - *a1 * a1[5]) / v11;
  a2[6] = v10 / v11;
  a2[7] = (a1[1] * a1[6] - *a1 * a1[7]) / v11;
  a2[8] = (*a1 * a1[4] - a1[1] * a1[3]) / v11;
  return 1;
}

uint64_t sub_240ACB698(double *a1, uint64_t a2, double *a3)
{
  v13 = 0.0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v5;
  v15 = *(a2 + 64);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  result = sub_240ACB590(v14, &v9);
  if (result)
  {
    v8 = *(&v10 + 1);
    *a1 = *(&v9 + 1) * a3[1] + *&v9 * *a3 + *&v10 * a3[2];
    a1[1] = *&v11 * a3[1] + v8 * *a3 + *(&v11 + 1) * a3[2];
    a1[2] = *(&v12 + 1) * a3[1] + *&v12 * *a3 + v13 * a3[2];
    return 1;
  }

  return result;
}

uint64_t **sub_240ACB75C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 2;
  }

  if (a1)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        goto LABEL_11;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_11:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 1))(a1, 40, 0x10A0040EFE6929DLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    if (a1)
    {
      v8 = &qword_27E516570;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (v8 == a1)
        {
          goto LABEL_21;
        }
      }

      v8 = &unk_278CB2F00;
    }

    else
    {
      v8 = &unk_278CB2F00;
    }

LABEL_21:
    v9 = v8[6];
    if (!v9)
    {
      v9 = &xmmword_281500C10;
    }

    v10 = (*(v9 + 4))(a1, v3, 12, 0x10000403E1C8BA9);
    v7[2] = v10;
    if (v10)
    {
      *(v7 + 2) = v3;
      *(v7 + 3) = 0;
    }

    else
    {
      if (a1)
      {
        v11 = &qword_27E516570;
        while (1)
        {
          v11 = *v11;
          if (!v11)
          {
            break;
          }

          if (v11 == a1)
          {
            goto LABEL_32;
          }
        }

        v11 = &unk_278CB2F00;
      }

      else
      {
        v11 = &unk_278CB2F00;
      }

LABEL_32:
      v12 = v11[6];
      if (!v12)
      {
        v12 = &xmmword_281500C10;
      }

      (*(v12 + 2))(a1, v7);
      return 0;
    }
  }

  return v7;
}

uint64_t sub_240ACB8DC(uint64_t **a1, __int16 a2, unsigned __int8 a3, __int16 a4, unsigned __int8 a5, char *__s)
{
  v6 = __s;
  v12 = strlen(__s);
  if (!a1)
  {
    return 0;
  }

  v13 = v12;
  if (*a1)
  {
    v14 = &qword_27E516570;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (v14 == *a1)
      {
        goto LABEL_9;
      }
    }

    v14 = &unk_278CB2F00;
  }

  else
  {
    v14 = &unk_278CB2F00;
  }

LABEL_9:
  v15 = v14[6];
  if (!v15)
  {
    v15 = &xmmword_281500C10;
  }

  v16 = (*(v15 + 4))();
  if (!v16)
  {
    return 0;
  }

  v17 = a3 | (a2 << 8);
  v18 = a5 | (a4 << 8);
  if (v13)
  {
    v19 = v13;
    v20 = v16;
    do
    {
      v21 = *v6++;
      *v20++ = v21;
      --v19;
    }

    while (v19);
  }

  v22 = sub_240ACBA58(a1, 4 * v13, v16, v17, v18);
  if (*a1)
  {
    v23 = &qword_27E516570;
    while (1)
    {
      v23 = *v23;
      if (!v23)
      {
        break;
      }

      if (v23 == *a1)
      {
        goto LABEL_23;
      }
    }

    v23 = &unk_278CB2F00;
  }

  else
  {
    v23 = &unk_278CB2F00;
  }

LABEL_23:
  v24 = v23[6];
  if (!v24)
  {
    v24 = &xmmword_281500C10;
  }

  (*(v24 + 2))();
  return v22;
}

uint64_t sub_240ACBA58(uint64_t a1, unsigned int a2, const void *a3, int a4, int a5)
{
  v11 = *(a1 + 8);
  v10 = *(a1 + 12);
  if (v10 < v11)
  {
LABEL_14:
    if (v10)
    {
      v17 = 0;
      v18 = (*(a1 + 16) + 2);
      while (*v18 != a5 || *(v18 - 1) != a4)
      {
        ++v17;
        v18 += 6;
        if (v10 == v17)
        {
          goto LABEL_22;
        }
      }

      if ((v17 & 0x80000000) == 0)
      {
        return 0;
      }
    }

LABEL_22:
    v20 = *(a1 + 24);
    v19 = *(a1 + 28);
    if (v20 - v19 < a2)
    {
      while (1)
      {
        v21 = v20;
        if (v20)
        {
          v20 *= 2;
        }

        else
        {
          v20 = 256;
        }

        if (v20 < v21)
        {
          return 0;
        }

        if (*a1)
        {
          v22 = &qword_27E516570;
          while (1)
          {
            v22 = *v22;
            if (!v22)
            {
              break;
            }

            if (v22 == *a1)
            {
              goto LABEL_33;
            }
          }
        }

        v22 = &unk_278CB2F00;
LABEL_33:
        v23 = *(a1 + 32);
        v24 = v22[6];
        if (!v24)
        {
          v24 = &xmmword_281500C10;
        }

        result = (*(v24 + 3))();
        if (!result)
        {
          return result;
        }

        *(a1 + 32) = result;
        *(a1 + 24) = v20;
        v19 = *(a1 + 28);
        if (v20 - v19 >= a2)
        {
          goto LABEL_39;
        }
      }
    }

    result = *(a1 + 32);
    if (result)
    {
LABEL_39:
      memmove((result + v19), a3, a2);
      *(a1 + 28) += a2;
      v25 = *(a1 + 12);
      v26 = *(a1 + 16) + 12 * v25;
      *(v26 + 4) = v19;
      *(v26 + 8) = a2;
      *(v26 + 2) = a5;
      *v26 = a4;
      *(a1 + 12) = v25 + 1;
      return 1;
    }

    return result;
  }

  if ((v11 & 0x80000000) != 0)
  {
    return 0;
  }

  v12 = *a1;
  v13 = *(a1 + 16);
  if (*a1)
  {
    v14 = &qword_27E516570;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (v14 == v12)
      {
        goto LABEL_10;
      }
    }

    v14 = &unk_278CB2F00;
  }

  else
  {
    v14 = &unk_278CB2F00;
  }

LABEL_10:
  v15 = v14[6];
  if (!v15)
  {
    v15 = &xmmword_281500C10;
  }

  result = (*(v15 + 3))();
  if (result)
  {
    *(a1 + 16) = result;
    *(a1 + 8) = 2 * v11;
    v10 = *(a1 + 12);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_240ACBC94(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 - 4;
  do
  {
    v3 = *(v2 + 1);
    v2 += 4;
  }

  while (v3);
  return sub_240ACBA58(a1, (v2 - a2) & 0xFFFFFFFC, a2, 25966, 21843);
}

uint64_t **sub_240ACBCC4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_240ACB75C(*a1, *(a1 + 12));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 12);
    if (*(v2 + 2) >= v4)
    {
      v5 = v2[2];
      if (v5)
      {
        v6 = *(a1 + 16);
        if (v6)
        {
          memmove(v5, v6, 12 * v4);
          *(v3 + 3) = *(a1 + 12);
          if (*(a1 + 28))
          {
            if (*a1)
            {
              v7 = &qword_27E516570;
              while (1)
              {
                v7 = *v7;
                if (!v7)
                {
                  break;
                }

                if (v7 == *a1)
                {
                  goto LABEL_15;
                }
              }

              v7 = &unk_278CB2F00;
            }

            else
            {
              v7 = &unk_278CB2F00;
            }

LABEL_15:
            v8 = v7[6];
            if (!v8)
            {
              v8 = &xmmword_281500C10;
            }

            v9 = (*v8)();
            v3[4] = v9;
            if (v9)
            {
              v10 = *(a1 + 28);
              *(v3 + 6) = v10;
              v11 = *(a1 + 32);
              if (v11)
              {
                memmove(v9, v11, v10);
                *(v3 + 7) = *(a1 + 28);
                return v3;
              }
            }
          }

          else
          {
            v3[4] = 0;
            *(v3 + 6) = 0;
          }
        }
      }
    }

    sub_240ACBDDC(v3);
    return 0;
  }

  return v3;
}

uint64_t **sub_240ACBDDC(uint64_t **result)
{
  if (result)
  {
    v1 = result;
    if (result[2])
    {
      v2 = *result;
      if (*v1)
      {
        v3 = &qword_27E516570;
        while (1)
        {
          v3 = *v3;
          if (!v3)
          {
            break;
          }

          if (v3 == v2)
          {
            goto LABEL_11;
          }
        }

        v3 = &unk_278CB2F00;
      }

      else
      {
        v3 = &unk_278CB2F00;
      }

LABEL_11:
      v4 = v3[6];
      if (!v4)
      {
        v4 = &xmmword_281500C10;
      }

      (*(v4 + 2))();
    }

    if (v1[4])
    {
      if (*v1)
      {
        v5 = &qword_27E516570;
        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          if (v5 == *v1)
          {
            goto LABEL_22;
          }
        }

        v5 = &unk_278CB2F00;
      }

      else
      {
        v5 = &unk_278CB2F00;
      }

LABEL_22:
      v6 = v5[6];
      if (!v6)
      {
        v6 = &xmmword_281500C10;
      }

      (*(v6 + 2))();
    }

    if (*v1)
    {
      v7 = &qword_27E516570;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        if (v7 == *v1)
        {
          goto LABEL_32;
        }
      }

      v7 = &unk_278CB2F00;
    }

    else
    {
      v7 = &unk_278CB2F00;
    }

LABEL_32:
    v8 = v7[6];
    if (!v8)
    {
      v8 = &xmmword_281500C10;
    }

    v9 = *(v8 + 2);

    return v9();
  }

  return result;
}

int *sub_240ACBF1C(int *result, __int16 a2, unsigned __int8 a3, unsigned __int16 *a4, _BYTE *a5, unsigned int a6)
{
  v13 = 0;
  if (result)
  {
    result = sub_240ACBFCC(result, &v13, (a3 | (a2 << 8)), bswap32(*a4) >> 16);
    if (result)
    {
      LODWORD(v8) = v13 >> 2;
      if (a5)
      {
        if (a6)
        {
          if (v8 >= a6)
          {
            v8 = a6 - 1;
          }

          else
          {
            v8 = v8;
          }

          if (v8)
          {
            v9 = a5;
            v10 = v8;
            do
            {
              v11 = *result++;
              *v9++ = v11;
              --v10;
            }

            while (v10);
            v12 = v8;
          }

          else
          {
            v12 = 0;
          }

          a5[v12] = 0;
          return (v8 + 1);
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return (v8 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_240ACBFCC(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    v5 = 0;
    v6 = -1;
    v7 = *(a1 + 16);
    while (1)
    {
      if (*v7 == a3)
      {
        if (v6 == -1)
        {
          v6 = v5;
        }

        if (v7[1] == a4)
        {
          break;
        }
      }

      ++v5;
      v7 += 6;
      if (v4 == v5)
      {
        if (v6 != -1)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v6 = 0;
LABEL_11:
    v7 = (*(a1 + 16) + 12 * v6);
  }

  if (a2)
  {
    *a2 = *(v7 + 2);
  }

  return *(a1 + 32) + *(v7 + 1);
}

uint64_t sub_240ACC054(uint64_t *a1, unsigned int a2, int a3, const char *a4, const char *a5)
{
  if (a1)
  {
    v10 = &qword_27E516570;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10 == a1)
      {
        goto LABEL_8;
      }
    }

    v10 = &unk_278CB2F00;
  }

  else
  {
    v10 = &unk_278CB2F00;
  }

LABEL_8:
  v11 = v10[6];
  if (!v11)
  {
    v11 = &xmmword_281500C10;
  }

  v12 = (*(v11 + 1))(a1, 96, 0x102004020B35232);
  v13 = v12;
  if (v12)
  {
    *v12 = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = a1;
    do
    {
      if (*(v13 + 4) >= a2)
      {
        strncpy((v13 + 12), a4, 0x20uLL);
        strncpy((v13 + 45), a5, 0x20uLL);
        *(v13 + 77) = 0;
        *(v13 + 44) = 0;
        *(v13 + 8) = a3;
        return v13;
      }
    }

    while (sub_240ACC1BC(v13));
    if (a1)
    {
      v14 = &qword_27E516570;
      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (v14 == a1)
        {
          goto LABEL_22;
        }
      }

      v14 = &unk_278CB2F00;
    }

    else
    {
      v14 = &unk_278CB2F00;
    }

LABEL_22:
    v15 = v14[6];
    if (!v15)
    {
      v15 = &xmmword_281500C10;
    }

    (*(v15 + 2))(a1, v13);
    return 0;
  }

  return v13;
}

uint64_t sub_240ACC1BC(uint64_t a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = 2 * v2;
  }

  else
  {
    v3 = 64;
  }

  v4 = *(a1 + 88);
  if (v3 <= 0x19000)
  {
    if (v4)
    {
      v6 = &qword_27E516570;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (v6 == v4)
        {
          goto LABEL_18;
        }
      }

      v6 = &unk_278CB2F00;
    }

    else
    {
      v6 = &unk_278CB2F00;
    }

LABEL_18:
    v7 = v6[6];
    if (!v7)
    {
      v7 = &xmmword_281500C10;
    }

    result = (*(v7 + 3))();
    if (result)
    {
      *(a1 + 80) = result;
      *(a1 + 4) = v3;
      return 1;
    }
  }

  else
  {
    if (*(a1 + 80))
    {
      if (v4)
      {
        v5 = &qword_27E516570;
        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          if (v5 == v4)
          {
            goto LABEL_24;
          }
        }

        v5 = &unk_278CB2F00;
      }

      else
      {
        v5 = &unk_278CB2F00;
      }

LABEL_24:
      v9 = v5[6];
      if (!v9)
      {
        v9 = &xmmword_281500C10;
      }

      (*(v9 + 2))();
    }

    result = 0;
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t sub_240ACC2E0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 80))
    {
      v2 = *(result + 88);
      if (v2)
      {
        v3 = &qword_27E516570;
        while (1)
        {
          v3 = *v3;
          if (!v3)
          {
            break;
          }

          if (v3 == v2)
          {
            goto LABEL_11;
          }
        }

        v3 = &unk_278CB2F00;
      }

      else
      {
        v3 = &unk_278CB2F00;
      }

LABEL_11:
      v4 = v3[6];
      if (!v4)
      {
        v4 = &xmmword_281500C10;
      }

      (*(v4 + 2))();
    }

    v5 = *(v1 + 88);
    if (v5)
    {
      v6 = &qword_27E516570;
      while (1)
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        if (v6 == v5)
        {
          goto LABEL_21;
        }
      }

      v6 = &unk_278CB2F00;
    }

    else
    {
      v6 = &unk_278CB2F00;
    }

LABEL_21:
    v7 = v6[6];
    if (!v7)
    {
      v7 = &xmmword_281500C10;
    }

    v8 = *(v7 + 2);

    return v8();
  }

  return result;
}

uint64_t sub_240ACC3C8(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_240ACC054(*(a1 + 11), *a1, a1[2], a1 + 12, a1 + 45);
  if (v2)
  {
    while (*(v2 + 4) < a1[1])
    {
      if (!sub_240ACC1BC(v2))
      {
        return 0;
      }
    }

    v3 = *(a1 + 3);
    v4 = *(a1 + 7);
    *(v2 + 44) = *(a1 + 44);
    *(v2 + 28) = v4;
    *(v2 + 12) = v3;
    v5 = *(a1 + 45);
    v6 = *(a1 + 61);
    *(v2 + 77) = *(a1 + 77);
    *(v2 + 61) = v6;
    *(v2 + 45) = v5;
    *(v2 + 8) = a1[2];
    memmove(*(v2 + 80), *(a1 + 10), 294 * *a1);
    *v2 = *a1;
  }

  return v2;
}

uint64_t sub_240ACC48C(uint64_t result, char *__src, uint64_t a3, __int16 *a4)
{
  if (result)
  {
    v7 = result;
    if ((*result + 1) <= *(result + 4) || (result = sub_240ACC1BC(result), result))
    {
      v8 = v7[2];
      if (v8)
      {
        v9 = *(v7 + 10);
        v10 = *v7;
        v11 = 294 * *v7 + 262;
        v12 = a4;
        do
        {
          if (a4)
          {
            v13 = *v12;
          }

          else
          {
            v13 = 0;
          }

          *(v9 + v11) = v13;
          v11 += 2;
          ++v12;
          --v8;
        }

        while (v8);
      }

      else
      {
        v9 = *(v7 + 10);
        v10 = *v7;
      }

      for (i = 0; i != 6; i += 2)
      {
        if (a3)
        {
          v15 = *(a3 + i);
        }

        else
        {
          v15 = 0;
        }

        *(v9 + 294 * v10 + 256 + i) = v15;
      }

      v16 = (v9 + 294 * v10);
      if (__src)
      {
        strncpy(v16, __src, 0xFFuLL);
        *(*(v7 + 10) + 294 * *v7 + 255) = 0;
      }

      else
      {
        *v16 = 0;
      }

      ++*v7;
      return 1;
    }
  }

  return result;
}

uint64_t sub_240ACC5A8(uint64_t result, unsigned int a2, char *__dst, uint64_t a4, void *a5)
{
  if (result)
  {
    v6 = result;
    if (*result <= a2)
    {
      return 0;
    }

    else
    {
      if (__dst)
      {
        strcpy(__dst, (*(result + 80) + 294 * a2));
      }

      if (a4)
      {
        v9 = *(v6 + 80) + 294 * a2;
        v10 = *(v9 + 256);
        *(a4 + 4) = *(v9 + 260);
        *a4 = v10;
      }

      if (a5)
      {
        memmove(a5, (*(v6 + 80) + 294 * a2 + 262), 2 * *(v6 + 8));
      }

      return 1;
    }
  }

  return result;
}

int32x2_t sub_240ACC658(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (a2)
  {
    v3 = sub_240ACC774;
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 8);
    v3 = sub_240ACC888;
  }

  v5 = sub_240ACC3C8(a1);
  if (v2)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == v2)
      {
        goto LABEL_11;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_11:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  v8 = (*(v7 + 1))(v2, 64, 0x10A00405BC1CEE9);
  if (v8)
  {
    *v8 = v2;
    result = vdup_n_s32(0x6E636C20u);
    v8[1] = result;
    v8[2].i32[0] = 1;
    v8[2].i32[1] = v4;
    v8[3] = v3;
    v8[4] = sub_240ACC76C;
    v8[5] = sub_240ACC764;
    v8[6] = v5;
  }

  return result;
}

float *sub_240ACC774(float *result, float32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 48);
  v10 = *result * 65535.0 + 0.5;
  if (v10 <= 0.0)
  {
    v11 = 0;
  }

  else if (v10 >= 65535.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = (COERCE_UNSIGNED_INT64(v10 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  if (*v9 <= v11)
  {
    result = sub_240AC15A4(*(v9 + 88), 2, "Color %d out of range", a4, a5, a6, a7, a8, v11);
    v15 = 0;
    v16 = 0.0;
  }

  else
  {
    v12 = (*(v9 + 80) + 294 * v11);
    v13.i64[0] = v12[128];
    v13.i64[1] = v12[129];
    v14 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v15 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_u64(v13), v14));
    LOWORD(v14.f64[0]) = v12[130];
    v16 = *&v14.f64[0] / 65535.0;
  }

  *a2 = v15;
  a2[1].f32[0] = v16;
  return result;
}

void sub_240ACC888(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a3 + 48);
  v10 = *a1 * 65535.0 + 0.5;
  if (v10 <= 0.0)
  {
    v11 = 0;
  }

  else if (v10 >= 65535.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = (COERCE_UNSIGNED_INT64(v10 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
  }

  v12 = v11;
  if (*v9 <= v11)
  {
    sub_240AC15A4(*(v9 + 88), 2, "Color %d out of range", a4, a5, a6, a7, a8, v11);
    v17 = *(v9 + 8);
    if (v17)
    {

      bzero(a2, 4 * v17);
    }
  }

  else
  {
    v13 = *(v9 + 8);
    if (v13)
    {
      v14 = (*(v9 + 80) + 294 * v12 + 262);
      do
      {
        v15 = *v14++;
        v16 = v15 / 65535.0;
        *a2++ = v16;
        --v13;
      }

      while (v13);
    }
  }
}

uint64_t sub_240ACC9A8(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 256) < 0xFFFFFF01)
  {
    return 0;
  }

  if (a1)
  {
    v5 = &qword_27E516570;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5 == a1)
      {
        goto LABEL_10;
      }
    }

    v5 = &unk_278CB2F00;
  }

  else
  {
    v5 = &unk_278CB2F00;
  }

LABEL_10:
  v6 = v5[6];
  if (!v6)
  {
    v6 = &xmmword_281500C10;
  }

  v7 = (*(v6 + 1))(a1, 24, 0x1020040F89CB87BLL);
  v2 = v7;
  if (v7)
  {
    *(v7 + 8) = a1;
    if (a1)
    {
      v8 = &qword_27E516570;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (v8 == a1)
        {
          goto LABEL_20;
        }
      }

      v8 = &unk_278CB2F00;
    }

    else
    {
      v8 = &unk_278CB2F00;
    }

LABEL_20:
    v9 = v8[6];
    if (!v9)
    {
      v9 = &xmmword_281500C10;
    }

    v10 = (*(v9 + 4))(a1, a2, 64, 0x10200405A8B1BAELL);
    *(v2 + 16) = v10;
    *v2 = a2;
    if (!v10)
    {
      if (a1)
      {
        v14 = &qword_27E516570;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (v14 == a1)
          {
            goto LABEL_33;
          }
        }

        v14 = &unk_278CB2F00;
      }

      else
      {
        v14 = &unk_278CB2F00;
      }

LABEL_33:
      v15 = v14[6];
      if (!v15)
      {
        v15 = &xmmword_281500C10;
      }

      (*(v15 + 2))(a1, v2);
      return 0;
    }

    v11 = a2;
    v12 = (v10 + 40);
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_240ACCB4C(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 2);
      v5 = *(v4 + v2 + 40);
      if (v5)
      {
        sub_240ACBDDC(v5);
        v4 = *(a1 + 2);
      }

      v6 = *(v4 + v2 + 48);
      if (v6)
      {
        sub_240ACBDDC(v6);
        v4 = *(a1 + 2);
      }

      v7 = *(v4 + v2 + 56);
      if (v7)
      {
        sub_240ACBDDC(v7);
      }

      ++v3;
      v2 += 64;
    }

    while (v3 < *a1);
  }

  if (*(a1 + 2))
  {
    v8 = *(a1 + 1);
    if (v8)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == v8)
        {
          goto LABEL_18;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_18:
    v10 = v9[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    (*(v10 + 2))();
  }

  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = &qword_27E516570;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12 == v11)
      {
        goto LABEL_28;
      }
    }

    v12 = &unk_278CB2F00;
  }

  else
  {
    v12 = &unk_278CB2F00;
  }

LABEL_28:
  v13 = v12[6];
  if (!v13)
  {
    v13 = &xmmword_281500C10;
  }

  v14 = *(v13 + 2);

  return v14();
}

uint64_t sub_240ACCC94(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == v2)
      {
        goto LABEL_9;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_9:
  v4 = v3[6];
  if (!v4)
  {
    v4 = &xmmword_281500C10;
  }

  v5 = (*v4)();
  if (v5)
  {
    v6 = *(a1 + 1);
    v7 = *a1;
    if (v6)
    {
      v8 = &qword_27E516570;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        if (v8 == v6)
        {
          goto LABEL_19;
        }
      }

      v8 = &unk_278CB2F00;
    }

    else
    {
      v8 = &unk_278CB2F00;
    }

LABEL_19:
    v9 = v8[6];
    if (!v9)
    {
      v9 = &xmmword_281500C10;
    }

    v10 = (*(v9 + 4))();
    *(v5 + 16) = v10;
    if (v10)
    {
      *(v5 + 8) = *(a1 + 1);
      v11 = *a1;
      *v5 = *a1;
      if (v11)
      {
        v12 = 0;
        v13 = 56;
        do
        {
          *(v10 + v13 - 48) = *(*(a1 + 2) + v13 - 48);
          v14 = *(a1 + 2) + v13;
          v15 = *(v5 + 16) + v13;
          *(v15 - 56) = *(v14 - 56);
          *(v15 - 36) = *(v14 - 36);
          v16 = *(a1 + 2) + v13;
          *(*(v5 + 16) + v13 - 40) = *(v16 - 40);
          *(*(v5 + 16) + v13 - 16) = sub_240ACBCC4(*(v16 - 16));
          *(*(v5 + 16) + v13 - 8) = sub_240ACBCC4(*(*(a1 + 2) + v13 - 8));
          v17 = sub_240ACBCC4(*(*(a1 + 2) + v13));
          v10 = *(v5 + 16);
          *(v10 + v13) = v17;
          ++v12;
          v13 += 64;
        }

        while (v12 < *a1);
      }

      return v5;
    }

    sub_240ACCB4C(v5);
    return 0;
  }

  return v5;
}

uint64_t sub_240ACCE7C(void **a1)
{
  v2 = *a1;
  while (v2)
  {
    v3 = v2[1];
    if (v3)
    {
      sub_240ACBDDC(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      sub_240ACBDDC(v4);
    }

    if (v2[3])
    {
      v5 = a1[1];
      if (v5)
      {
        v6 = &qword_27E516570;
        while (1)
        {
          v6 = *v6;
          if (!v6)
          {
            break;
          }

          if (v6 == v5)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = &unk_278CB2F00;
LABEL_13:
      v7 = v6[6];
      if (!v7)
      {
        v7 = &xmmword_281500C10;
      }

      (*(v7 + 2))();
    }

    if (v2[4])
    {
      v8 = a1[1];
      if (v8)
      {
        v9 = &qword_27E516570;
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (v9 == v8)
          {
            goto LABEL_23;
          }
        }
      }

      v9 = &unk_278CB2F00;
LABEL_23:
      v10 = v9[6];
      if (!v10)
      {
        v10 = &xmmword_281500C10;
      }

      (*(v10 + 2))();
    }

    v2 = *v2;
    v11 = a1[1];
    if (v11)
    {
      v12 = &qword_27E516570;
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        if (v12 == v11)
        {
          goto LABEL_32;
        }
      }
    }

    v12 = &unk_278CB2F00;
LABEL_32:
    v13 = v12[6];
    if (!v13)
    {
      v13 = &xmmword_281500C10;
    }

    (*(v13 + 2))();
  }

  v14 = a1[1];
  if (v14)
  {
    v15 = &qword_27E516570;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15 == v14)
      {
        goto LABEL_42;
      }
    }

    v15 = &unk_278CB2F00;
  }

  else
  {
    v15 = &unk_278CB2F00;
  }

LABEL_42:
  v16 = v15[6];
  if (!v16)
  {
    v16 = &xmmword_281500C10;
  }

  v17 = *(v16 + 2);

  return v17();
}

uint64_t sub_240ACD00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = &qword_27E516570;
    while (1)
    {
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      if (v11 == v10)
      {
        goto LABEL_8;
      }
    }

    v11 = &unk_278CB2F00;
  }

  else
  {
    v11 = &unk_278CB2F00;
  }

LABEL_8:
  v12 = v11[6];
  if (!v12)
  {
    v12 = &xmmword_281500C10;
  }

  result = (*(v12 + 1))();
  if (result)
  {
    v14 = result;
    *(result + 8) = sub_240ACBCC4(a4);
    v14[2] = sub_240ACBCC4(a5);
    v14[3] = sub_240ACD108(*(a1 + 8), a2);
    v14[4] = sub_240ACD108(*(a1 + 8), a3);
    *v14 = *a1;
    *a1 = v14;
    return 1;
  }

  return result;
}

uint64_t sub_240ACD108(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 - 4;
  do
  {
    v3 = *(v2 + 4);
    v2 += 4;
  }

  while (v3);
  if (a1)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        goto LABEL_12;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_12:
  v6 = v4[6];
  if (!v6)
  {
    v6 = &xmmword_281500C10;
  }

  return (*(v6 + 5))();
}

uint64_t sub_240ACD190(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = *a1;
    v23 = v2;
    v4 = 0;
    if (*a1)
    {
      v5 = a1;
      do
      {
        if (*(v3 + 3) == 1768189472)
        {
          *v5 = v3[7];
          sub_240AC96E4(v3);
          v4 = 1;
        }

        else
        {
          v5 = (v3 + 7);
        }

        v3 = *v5;
      }

      while (*v5);
    }

    v28 = sub_240AD0858(a1, 1815246880, 2016570400);
    v27 = sub_240AD0858(a1, 2016570400, 1815246880);
    v26 = sub_240AD0858(a1, 874525216, 840971296);
    v25 = sub_240AD0858(a1, 840971296, 874525216);
    v24 = sub_240AD0858(a1, 1681026080, 1815241760);
    v6 = sub_240AD0858(a1, 1681029152, 2016568352);
    v7 = *a1;
    if (*a1)
    {
      v8 = 0;
      v9 = a1;
      do
      {
        v11 = (v7 + 7);
        v10 = v7[7];
        if (!v10)
        {
          break;
        }

        if (*(v7 + 3) == 1835103334 && *(v10 + 3) == 1835103334)
        {
          v12 = v7[6];
          v13 = v10[6];
          v30 = 0;
          memset(v29, 0, sizeof(v29));
          if (v12[1] || v13[1] || *(*v9 + 4) != 3 || *(*v9 + 5) != 3 || *(*v11 + 4) != 3 || *(*v11 + 5) != 3)
          {
            goto LABEL_31;
          }

          sub_240ACB4CC(v29, *v13, *v12);
          v14 = *v11;
          v15 = (*v11)[7];
          *v11 = v15;
          sub_240AC96E4(v14);
          v16 = *v9;
          *v9 = (*v9)[7];
          sub_240AC96E4(v16);
          v17 = 0;
          v18 = 0;
          memset(&v31[1], 0, 24);
          v31[0] = 0x3FF0000000000000;
          v31[4] = 0x3FF0000000000000;
          memset(&v31[5], 0, 24);
          v31[8] = 0x3FF0000000000000;
LABEL_20:
          v19 = 3;
          v20 = v17;
          while (vabdd_f64(*(v31 + v20), *(v29 + v20)) < 0.00000999999975)
          {
            v20 += 8;
            if (!--v19)
            {
              ++v18;
              v17 += 24;
              if (v18 != 3)
              {
                goto LABEL_20;
              }

              goto LABEL_28;
            }
          }

          v21 = sub_240AC977C(*(a1 + 56), 3, 3u, v29, 0);
          if (!v21)
          {
            goto LABEL_31;
          }

          v21[7] = v15;
          *v9 = v21;
LABEL_28:
          v10 = *v9;
          v8 = 1;
        }

        else
        {
          v9 = (v7 + 7);
        }

        v7 = v10;
      }

      while (v10);
    }

    else
    {
LABEL_31:
      v8 = 0;
    }

    v2 = 1;
  }

  while (v28 | v4 | v27 | v26 | v25 | v24 | v6 | v8);
  return v23;
}

uint64_t sub_240ACD49C(uint64_t *a1, int a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  if ((*a3 & 0x400000) != 0 || (*a4 & 0x400000) != 0)
  {
    goto LABEL_57;
  }

  v8 = (HIWORD(*a3) & 0x1F) - 1;
  v9 = v8 > 0x1D ? 0 : *&aYargBgryargBgr[4 * v8];
  v10 = (HIWORD(*a4) & 0x1F) - 1;
  if (v10 > 0x1D || !v9)
  {
    goto LABEL_57;
  }

  v11 = *&aYargBgryargBgr[4 * v10];
  v12 = sub_240AD3D24(v9, *a5);
  v13 = *a1;
  v14 = **a1;
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v12;
  v16 = 0;
  v17 = **a1;
  do
  {
    ++v16;
    v17 = *(v17 + 56);
  }

  while (v17);
  if (!v16)
  {
LABEL_12:
    v15 = 2;
  }

  if (v14)
  {
    while (*(v14 + 8) != 1852009504)
    {
      v14 = *(v14 + 56);
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_57;
  }

LABEL_16:
  result = sub_240ACADFC(v13[7], *(v13 + 2), *(v13 + 3));
  if (result)
  {
    v22 = result;
    if ((*a5 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    v23 = *v13;
    if (!*v13)
    {
      v24 = 0;
      goto LABEL_22;
    }

    if (*(v23 + 8) == 1668707188 && !sub_240AD00F0(*v13))
    {
      v36 = sub_240ACAC80(v23);
      if (!v36 || (v23 = v36, v36[7] = *v22, *v22 = v36, !sub_240ACAF44(v22)))
      {
LABEL_56:
        sub_240ACB1C0(v22);
LABEL_57:
        result = 0;
        goto LABEL_58;
      }

      v24 = *v13;
      if (*v13)
      {
        *v13 = *(v24 + 56);
        *(v24 + 56) = 0;
        sub_240ACAF44(v13);
      }
    }

    else
    {
LABEL_21:
      v24 = 0;
      v23 = 0;
    }

LABEL_22:
    v25 = v13[7];
    v26 = *(v13 + 2);
    v27 = *(v13 + 3);
    v52[0] = vdupq_n_s32(v15);
    v52[1] = v52[0];
    v28 = sub_240AC9DB8(v25, v52, v26, v27, 0, v19, v20, v21);
    if (v28)
    {
      v29 = v28;
      v30 = *v22;
      if (*v22)
      {
        do
        {
          v31 = v30;
          v30 = v30[7];
        }

        while (v30);
        v31[7] = v28;
        v28[7] = 0;
      }

      else
      {
        *v22 = v28;
      }

      if (sub_240ACAF44(v22))
      {
        v50 = v23;
        v51 = v11;
        if ((*a5 & 1) == 0)
        {
LABEL_34:
          v35 = 0;
          v34 = 0;
          goto LABEL_60;
        }

        v32 = 0;
        v33 = v13;
        do
        {
          v34 = v32;
          v32 = *v33;
          v33 = (*v33 + 7);
        }

        while (v32);
        if (!v34)
        {
          goto LABEL_59;
        }

        if (*(v34 + 2) != 1668707188 || sub_240AD00F0(v34))
        {
          goto LABEL_34;
        }

        v34 = sub_240ACAC80(v34);
        if (sub_240ACB414(v22, 1, v34))
        {
          v37 = *v13;
          if (*v13)
          {
            v38 = 0;
            do
            {
              v35 = v37;
              v39 = v38;
              v37 = *(v37 + 56);
              v38 = v35;
            }

            while (v37);
            v40 = (v39 + 56);
            if (!v39)
            {
              v40 = v13;
            }

            *v40 = 0;
            sub_240ACAF44(v13);
LABEL_60:
            if (sub_240ACA678(v29, sub_240ACF244, v13))
            {
              if (v24)
              {
                sub_240AC96E4(v24);
              }

              if (v35)
              {
                sub_240AC96E4(v35);
              }

              sub_240ACB1C0(v13);
              if (v50)
              {
                v44 = *(*(v50 + 48) + 8);
              }

              else
              {
                v44 = 0;
              }

              v45 = *(v29 + 48);
              if (v34)
              {
                v46 = v34[6][1];
              }

              else
              {
                v46 = 0;
              }

              if (v44 | v46)
              {
                v47 = sub_240ACE340(*(v22 + 56), *(v45 + 8), *(v22 + 8), v44, *(v22 + 12), v46);
                *(v22 + 48) = sub_240ACEB30;
                *(v22 + 40) = sub_240ACECB8;
                v48 = sub_240ACEE10;
              }

              else
              {
                v47 = *(v45 + 8);
                v48 = *(v47 + 128);
                *(v22 + 40) = 0;
                *(v22 + 48) = 0;
              }

              *(v22 + 16) = v47;
              *(v22 + 24) = v48;
              v49 = *a5;
              if (a2 == 3)
              {
                v49 |= 4u;
                *a5 = v49;
              }

              if ((v49 & 4) == 0)
              {
                sub_240ACE590(v22, v9, v51);
              }

              *a1 = v22;
              result = 1;
              goto LABEL_58;
            }

            goto LABEL_48;
          }

LABEL_59:
          v35 = 0;
          goto LABEL_60;
        }
      }
    }

    v35 = 0;
LABEL_48:
    if (v24)
    {
      *(v24 + 56) = *v13;
      *v13 = v24;
      sub_240ACAF44(v13);
    }

    if (v35)
    {
      v41 = *v13;
      if (*v13)
      {
        do
        {
          v42 = v41;
          v41 = *(v41 + 56);
        }

        while (v41);
        *(v42 + 56) = v35;
        *(v35 + 56) = 0;
      }

      else
      {
        *v13 = v35;
      }

      sub_240ACAF44(v13);
    }

    goto LABEL_56;
  }

LABEL_58:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ACD8C4(uint64_t **a1, int a2, _DWORD *a3, _DWORD *a4, _BYTE *a5)
{
  v112 = *MEMORY[0x277D85DE8];
  if ((*a3 & 0x400000) != 0)
  {
    goto LABEL_87;
  }

  result = 0;
  if ((*a4 & 0x5F1000) != 0x40000 || (*a3 & 0x1F1000) != 0x40000)
  {
    goto LABEL_88;
  }

  if ((*a3 & 7) != 1 && (*a5 & 0x10) == 0)
  {
LABEL_87:
    result = 0;
    goto LABEL_88;
  }

  v10 = *a1;
  v11 = **a1;
  if (v11)
  {
    while (*(v11 + 8) != 1852009504)
    {
      v11 = *(v11 + 56);
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_87;
  }

LABEL_9:
  v12 = 0;
  v13 = *a5;
  memset(v110, 0, sizeof(v110));
  memset(v109, 0, sizeof(v109));
  v14 = v10;
  do
  {
    v15 = v12;
    v12 = *v14;
    v14 = (*v14 + 56);
  }

  while (v12);
  v19 = sub_240AD3D24(1380401696, v13);
  if (*(v15 + 8) == 1668707188)
  {
    v20 = *(v15 + 48);
    v21 = *v20;
    if (v21)
    {
      v22 = *(v20 + 1);
      while (!sub_240ACE084(*v22))
      {
        ++v22;
        if (!--v21)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_75;
    }
  }

LABEL_16:
  if (*(v10 + 2))
  {
    v23 = 0;
    while (1)
    {
      v24 = sub_240AC1684(v10[7], 4096, 0, 0, 0, v16, v17, v18);
      *(v110 + v23) = v24;
      if (!v24)
      {
        goto LABEL_75;
      }

      ++v23;
      v25 = *(v10 + 2);
      if (v23 >= v25)
      {
        goto LABEL_22;
      }
    }
  }

  v25 = 0;
LABEL_22:
  v103 = a2;
  v104 = v19;
  v26 = 0;
  v27 = vdupq_n_s64(4uLL);
  v105 = v27;
  do
  {
    while (1)
    {
      if (v25)
      {
        v28 = v26 / 4095.0;
        *&v28 = v28;
        v29 = (v25 + 3) & 0x1FFFFFFFCLL;
        v30 = vdupq_n_s64(v25 - 1);
        v31 = &v108;
        v32 = xmmword_240C111D0;
        v33 = xmmword_240C111C0;
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v30, v32));
          if (vuzp1_s16(v34, *&v28).u8[0])
          {
            *(v31 - 2) = LODWORD(v28);
          }

          if (vuzp1_s16(v34, *&v28).i8[2])
          {
            *(v31 - 1) = LODWORD(v28);
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v30, *&v33))).i32[1])
          {
            *v31 = LODWORD(v28);
            *(v31 + 1) = LODWORD(v28);
          }

          v33 = vaddq_s64(v33, v27);
          v32 = vaddq_s64(v32, v27);
          v31 += 2;
          v29 -= 4;
        }

        while (v29);
      }

      (v10[4])(v107, v106, v10);
      v43 = *(v10 + 2);
      if (v43)
      {
        break;
      }

      v25 = 0;
      v50 = 0;
      ++v26;
      v27 = v105;
      if (v26 == 4096)
      {
        goto LABEL_68;
      }
    }

    v44 = v110;
    v45 = v106;
    v46 = *(v10 + 2);
    v27 = v105;
    do
    {
      v47 = *v45 * 65535.0 + 0.5;
      if (v47 <= 0.0)
      {
        v48 = 0;
      }

      else if (v47 >= 65535.0)
      {
        v48 = -1;
      }

      else
      {
        v48 = (COERCE_UNSIGNED_INT64(v47 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      v49 = *v44++;
      *(*(v49 + 48) + 2 * v26) = v48;
      ++v45;
      --v46;
    }

    while (v46);
    ++v26;
    v25 = v43;
  }

  while (v26 != 4096);
  for (i = 0; i != v43; ++i)
  {
    v52 = *(v110 + i);
    v53 = *(v52 + 40);
    LODWORD(v42) = vcvtmd_s64_f64(v53 * 0.02 + 0.5);
    v54 = *(v52 + 48);
    v55 = *v54;
    v56 = v54[v53 - 1];
    if (v55 <= v56)
    {
      v57 = 65535.0;
    }

    else
    {
      v57 = 0.0;
    }

    if (v55 <= v56)
    {
      v58 = 0.0;
    }

    else
    {
      v58 = 65535.0;
    }

    v59 = v42;
    if (v42 >= 1)
    {
      v60 = 0;
      v27.i16[0] = v54[v42];
      v61 = v27.u64[0];
      v58 = (v61 - v58) / v59;
      *v27.i64 = v61 - v58 * v59;
      do
      {
        v62 = *v27.i64 + v60 * v58 + 0.5;
        if (v62 <= 0.0)
        {
          v63 = 0;
        }

        else if (v62 >= 65535.0)
        {
          v63 = -1;
        }

        else
        {
          v63 = (COERCE_UNSIGNED_INT64(v62 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        }

        v54[v60++] = v63;
      }

      while (v42 != v60);
    }

    v64 = v53 + ~v42;
    if (v64 < v53)
    {
      LOWORD(v58) = v54[v64];
      v65 = *&v58;
      v66 = (v57 - v65) / v59;
      v67 = v65 - v66 * v64;
      LODWORD(v42) = v42 + 1;
      v68 = &v54[v64];
      do
      {
        v69 = v67 + v64 * v66 + 0.5;
        if (v69 <= 0.0)
        {
          v70 = 0;
        }

        else if (v69 >= 65535.0)
        {
          v70 = -1;
        }

        else
        {
          v27.i64[0] = 0x4238000000000000;
          v70 = (COERCE_UNSIGNED_INT64(v69 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        }

        *v68++ = v70;
        ++v64;
        v42 = (v42 - 1);
      }

      while (v42);
    }
  }

  v50 = v43;
LABEL_68:
  v71 = 0;
  v72 = 8 * v50;
  while (v72 != v71)
  {
    v73 = *(v110 + v71);
    sub_240AC2DBC(v73);
    v74 = sub_240AC2E6C(v73);
    v71 += 8;
    if (sub_240ACE084(v73))
    {
      v75 = 1;
    }

    else
    {
      v75 = v74 == 0;
    }

    if (v75)
    {
      goto LABEL_75;
    }
  }

  if (v43)
  {
    v82 = 0;
    while (1)
    {
      v83 = sub_240AC2A68(*(v110 + v82), v35, v36, v37, v38, v39, v40, v41);
      *(v109 + v82) = v83;
      if (!v83)
      {
        break;
      }

      if (++v82 >= *(v10 + 2))
      {
        goto LABEL_93;
      }
    }

LABEL_75:
    v76 = 0;
    v77 = 0;
LABEL_76:
    if (*(v10 + 2))
    {
      v78 = 0;
      do
      {
        v79 = *(v110 + v78);
        if (v79)
        {
          sub_240AC26D0(v79);
        }

        v80 = *(v109 + v78);
        if (v80)
        {
          sub_240AC26D0(v80);
        }

        ++v78;
      }

      while (v78 < *(v10 + 2));
    }

    if (v77)
    {
      sub_240ACB1C0(v77);
    }

    if (v76)
    {
      sub_240ACB1C0(v76);
    }

    goto LABEL_87;
  }

LABEL_93:
  v77 = sub_240ACB2E4(v10);
  if (!v77 || (v84 = sub_240AC904C(v10[7], *(v10 + 2), v109)) == 0 || (v84[7] = *v77, *v77 = v84, !sub_240ACAF44(v77)))
  {
    v76 = 0;
    goto LABEL_76;
  }

  v76 = sub_240ACADFC(v10[7], *(v10 + 2), *(v10 + 3));
  if (!v76)
  {
    goto LABEL_76;
  }

  v85 = sub_240AC904C(v10[7], *(v10 + 2), v110);
  if (!v85)
  {
    goto LABEL_76;
  }

  v86 = v85;
  v85[7] = *v76;
  *v76 = v85;
  if (!sub_240ACAF44(v76))
  {
    goto LABEL_76;
  }

  v90 = v10[7];
  v91 = *(v10 + 2);
  v92 = *(v10 + 3);
  v111[0] = vdupq_n_s32(v104);
  v111[1] = v111[0];
  v93 = sub_240AC9DB8(v90, v111, v91, v92, 0, v87, v88, v89);
  if (!sub_240ACB414(v76, 1, v93) || !sub_240ACA678(v93, sub_240ACF244, v77))
  {
    goto LABEL_76;
  }

  if (*(v10 + 2))
  {
    v94 = 0;
    do
    {
      v95 = *(v110 + v94);
      if (v95)
      {
        sub_240AC26D0(v95);
      }

      v96 = *(v109 + v94);
      if (v96)
      {
        sub_240AC26D0(v96);
      }

      ++v94;
    }

    while (v94 < *(v10 + 2));
  }

  sub_240ACB1C0(v77);
  v97 = v76[7];
  v98 = *(*&v93[6] + 8);
  if ((*a3 & 7) == 1)
  {
    result = sub_240ACE100(v97, v98, *(*&v86[6] + 8));
    v99 = sub_240ACEF80;
    v100 = sub_240ACEF18;
    v101 = sub_240ACEFDC;
    if (!result)
    {
      goto LABEL_88;
    }
  }

  else
  {
    result = sub_240ACE340(v97, v98, 3u, *(*&v86[6] + 8), 3, 0);
    v99 = sub_240ACECB8;
    v100 = sub_240ACEB30;
    v101 = sub_240ACEE10;
    if (!result)
    {
      goto LABEL_88;
    }
  }

  v76[5] = v99;
  v76[6] = v100;
  v76[2] = result;
  v76[3] = v101;
  v102 = *a5;
  if (v103 == 3)
  {
    v102 |= 4u;
    *a5 = v102;
  }

  if ((v102 & 4) != 0 || (result = sub_240ACE590(v76, 1380401696, 1380401696), result))
  {
    sub_240ACB1C0(v10);
    *a1 = v76;
    result = 1;
  }

LABEL_88:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ACE084(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    v2 = 0;
    return v2 > v1;
  }

  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  do
  {
    v7 = *v4++;
    v6 = v7;
    if (!v7)
    {
      ++v3;
    }

    if (v6 == 0xFFFF)
    {
      ++v2;
    }

    --v5;
  }

  while (v5);
  if (v3 != 1 || v2 != 1)
  {
    v1 /= 0x14u;
    if (v3 > v1)
    {
      return 1;
    }

    return v2 > v1;
  }

  return 0;
}

uint64_t **sub_240ACE100(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {
        goto LABEL_8;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_8:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  v8 = (*(v7 + 1))(a1, 4624, 0x1060040C2778AD2);
  if (v8)
  {
    v24 = a1;
    v9 = 0;
    v10 = 1552;
    v11 = 528;
    do
    {
      if (a3)
      {
        v12 = *a3;
        v26 = 257 * v9;
        v25 = 0;
        (*(*v12 + 128))(&v26, &v25);
        v13 = v25;
        v14 = a3[1];
        v28 = 257 * v9;
        v27 = 0;
        (*(*v14 + 128))(&v28, &v27);
        v15 = v27;
        v16 = a3[2];
        v30 = 257 * v9;
        v29 = 0;
        (*(*v16 + 128))(&v30, &v29);
        v17 = v29;
      }

      else
      {
        v17 = 257 * v9;
        v15 = 257 * v9;
        v13 = 257 * v9;
      }

      v18 = (*(a2 + 13) * v13 + 0x7FFF) / 0xFFFF + *(a2 + 13) * v13;
      v19 = (*(a2 + 14) * v15 + 0x7FFF) / 0xFFFF + *(a2 + 14) * v15;
      v20 = (*(a2 + 15) * v17 + 0x7FFF) / 0xFFFF + *(a2 + 15) * v17;
      v21 = (v8 + v10);
      *v21 = (v18 >> 16) * *(a2 + 23);
      v21[256] = (v19 >> 16) * *(a2 + 22);
      v21[512] = *(a2 + 21) * (v20 >> 16);
      *(v8 + v9 + 8) = v18;
      v22 = (v8 + v11);
      *v22 = v19;
      v22[256] = v20;
      ++v9;
      v10 += 4;
      v11 += 2;
    }

    while (v10 != 2576);
    *v8 = v24;
    v8[1] = a2;
  }

  return v8;
}

uint64_t sub_240ACE340(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t **a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v12 = &qword_27E516570;
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      if (v12 == a1)
      {
        goto LABEL_8;
      }
    }

    v12 = &unk_278CB2F00;
  }

  else
  {
    v12 = &unk_278CB2F00;
  }

LABEL_8:
  v13 = v12[6];
  if (!v13)
  {
    v13 = &xmmword_281500C10;
  }

  v14 = (*(v13 + 1))(a1, 176, 0x10E00408F167396);
  v15 = v14;
  if (v14)
  {
    *(v14 + 8) = a3;
    *(v14 + 12) = a5;
    if (a3)
    {
      v16 = (v14 + 80);
      v17 = a3;
      v18 = a4;
      do
      {
        if (a4)
        {
          v19 = **v18;
          *v16 = v19;
          v20 = *(v19 + 128);
        }

        else
        {
          *v16 = 0;
          v20 = sub_240ACEF0C;
        }

        *(v16 - 8) = v20;
        ++v16;
        ++v18;
        --v17;
      }

      while (v17);
    }

    *(v14 + 152) = a2;
    *(v14 + 144) = *(a2 + 128);
    if (a1)
    {
      v21 = &qword_27E516570;
      while (1)
      {
        v21 = *v21;
        if (!v21)
        {
          break;
        }

        if (v21 == a1)
        {
          goto LABEL_24;
        }
      }

      v21 = &unk_278CB2F00;
    }

    else
    {
      v21 = &unk_278CB2F00;
    }

LABEL_24:
    v22 = v21[6];
    if (!v22)
    {
      v22 = &xmmword_281500C10;
    }

    *(v14 + 160) = (*(v22 + 4))(a1, a5, 8, 0x80040B8603338);
    if (a1)
    {
      v23 = &qword_27E516570;
      while (1)
      {
        v23 = *v23;
        if (!v23)
        {
          break;
        }

        if (v23 == a1)
        {
          goto LABEL_33;
        }
      }

      v23 = &unk_278CB2F00;
    }

    else
    {
      v23 = &unk_278CB2F00;
    }

LABEL_33:
    v24 = v23[6];
    if (!v24)
    {
      v24 = &xmmword_281500C10;
    }

    *(v15 + 168) = (*(v24 + 4))(a1, a5, 8, 0x2004093837F09);
    if (a5)
    {
      v25 = 0;
      do
      {
        if (a6)
        {
          *(*(v15 + 168) + v25) = **(a6 + v25);
          v26 = *(*(*(v15 + 168) + v25) + 128);
        }

        else
        {
          *(*(v15 + 168) + v25) = 0;
          v26 = sub_240ACEF0C;
        }

        *(*(v15 + 160) + v25) = v26;
        v25 += 8;
      }

      while (8 * a5 != v25);
    }
  }

  return v15;
}

uint64_t sub_240ACE590(uint64_t a1, int a2, int a3)
{
  result = 0;
  __dst[4] = *MEMORY[0x277D85DE8];
  if (a2 <= 1196573016)
  {
    if (a2 == 1129142560)
    {
      v5 = 3;
      v6 = &word_27E516560;
    }

    else
    {
      if (a2 != 1129142603)
      {
        goto LABEL_44;
      }

      v5 = 4;
      v6 = &word_27E516558;
    }
  }

  else
  {
    switch(a2)
    {
      case 1196573017:
        v5 = 1;
        v6 = &word_27E5164C0;
        break;
      case 1281450528:
        v5 = 3;
        v6 = &word_27E5164B0;
        break;
      case 1380401696:
        v5 = 3;
        v6 = &word_27E516498;
        break;
      default:
        goto LABEL_44;
    }
  }

  result = 0;
  if (a3 <= 1196573016)
  {
    if (a3 == 1129142560)
    {
      LODWORD(v7) = 3;
      v8 = &word_27E516560;
    }

    else
    {
      if (a3 != 1129142603)
      {
        goto LABEL_44;
      }

      LODWORD(v7) = 4;
      v8 = &word_27E516558;
    }
  }

  else
  {
    switch(a3)
    {
      case 1196573017:
        LODWORD(v7) = 1;
        v8 = &word_27E5164C0;
        break;
      case 1281450528:
        LODWORD(v7) = 3;
        v8 = &word_27E5164B0;
        break;
      case 1380401696:
        LODWORD(v7) = 3;
        v8 = &word_27E516498;
        break;
      default:
        goto LABEL_44;
    }
  }

  if (*(a1 + 8) != v5 || *(a1 + 12) != v7)
  {
    result = 0;
    goto LABEL_44;
  }

  (*(a1 + 24))(v6, v82, *(a1 + 16));
  v15 = 0;
  v7 = v7;
  while (1)
  {
    v16 = v8[v15];
    v17 = *&v82[v15 * 2];
    v18 = v16 - v17;
    if (v16 - v17 < 0)
    {
      v18 = v17 - v16;
    }

    if (v18 > 0xF000)
    {
      goto LABEL_43;
    }

    if (v16 != v17)
    {
      break;
    }

    if (v7 == ++v15)
    {
      goto LABEL_43;
    }
  }

  if (sub_240AC8FA8(a1, 3, v9, v10, v11, v12, v13, v14, 116) || sub_240AC8FA8(a1, 2, v19, v20, v21, v22, v23, v24, 116) || sub_240AC8FA8(a1, 2, v25, v26, v27, v28, v29, v30, 116) || (result = sub_240AC8FA8(a1, 1, v31, v32, v33, v34, v35, v36, 116), result))
  {
    memcpy(__dst, v6, (2 * v5));
    memcpy(v83, v8, 2 * v7);
    if (MEMORY[8] == 1668052340)
    {
      v47 = MEMORY[0x30];
      v48 = *(MEMORY[0x30] + 8);
      if (v5 == 1)
      {
        LOWORD(v42) = __dst[0].i16[0];
        LODWORD(v43) = *(v48 + 52);
        v76 = v42 * v43 / 65535.0;
        v77 = vcvtmd_s64_f64(v76);
        if (v76 != v77)
        {
          goto LABEL_43;
        }

        v65 = *(v48 + 84) * v77;
      }

      else
      {
        if (v5 != 3)
        {
          v49 = vmovl_u16(__dst[0]);
          v50.i64[0] = v49.u32[2];
          v50.i64[1] = v49.u32[3];
          v51 = vcvtq_f64_u64(v50);
          v50.i64[0] = v49.u32[0];
          v50.i64[1] = v49.u32[1];
          v52 = vcvtq_f64_u64(v50);
          v53 = *(v48 + 52);
          v50.i64[0] = DWORD2(v53);
          v50.i64[1] = HIDWORD(v53);
          v54 = vcvtq_f64_u64(v50);
          v50.i64[0] = v53;
          v50.i64[1] = DWORD1(v53);
          v55 = vdupq_n_s64(0x40EFFFE000000000uLL);
          v56 = vdivq_f64(vmulq_f64(v51, v54), v55);
          v57 = vdivq_f64(vmulq_f64(v52, vcvtq_f64_u64(v50)), v55);
          v58 = vcvtq_s64_f64(vrndmq_f64(v56));
          v59 = vcvtq_s64_f64(vrndmq_f64(v57));
          v60 = vmovn_s64(v58);
          v61 = vmovn_s64(v59);
          v50.i64[0] = v61.i32[0];
          v50.i64[1] = v61.i32[1];
          v62 = vcvtq_f64_s64(v50);
          v50.i64[0] = v60.i32[0];
          v50.i64[1] = v60.i32[1];
          if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v57, v62), vceqq_f64(v56, vcvtq_f64_s64(v50)))))) & 1) == 0)
          {
            v63 = vuzp1q_s32(v59, v58);
            v64 = vrev64q_s32(*(v48 + 84));
            v65 = vaddvq_s32(vmulq_s32(vextq_s8(v64, v64, 8uLL), v63));
            goto LABEL_56;
          }

LABEL_43:
          result = 1;
          goto LABEL_44;
        }

        LOWORD(v42) = __dst[0].i16[0];
        LODWORD(v43) = *(v48 + 52);
        LODWORD(v44) = *(v48 + 56);
        v67 = v42 * v43 / 65535.0;
        LOWORD(v45) = __dst[0].i16[1];
        *&v68 = v45;
        v69 = *&v68 * v44 / 65535.0;
        LOWORD(v68) = __dst[0].i16[2];
        LODWORD(v46) = *(v48 + 60);
        v70 = v68 * v46 / 65535.0;
        v71 = vcvtmd_s64_f64(v67);
        v72 = vcvtmd_s64_f64(v69);
        v73 = vcvtmd_s64_f64(v70);
        if (v67 != v71 || v69 != v72 || v70 != v73)
        {
          goto LABEL_43;
        }

        v65 = *(v48 + 92) * v71 + *(v48 + 88) * v72 + *(v48 + 84) * v73;
      }

LABEL_56:
      v78 = 2 * v65;
      v79 = v83;
      result = 1;
      do
      {
        v80 = *v79++;
        *(*v47 + v78) = v80;
        v78 += 2;
        --v7;
      }

      while (v7);
      goto LABEL_44;
    }

    sub_240AC15A4(MEMORY[0], 3, "(internal) Attempt to PatchLUT on non-lut stage", v37, v38, v39, v40, v41, v81);
    goto LABEL_43;
  }

LABEL_44:
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ACEB30(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = &qword_27E516570;
    while (1)
    {
      v4 = *v4;
      if (!v4)
      {
        break;
      }

      if (v4 == a1)
      {
        goto LABEL_8;
      }
    }

    v4 = &unk_278CB2F00;
  }

  else
  {
    v4 = &unk_278CB2F00;
  }

LABEL_8:
  v5 = v4[6];
  if (!v5)
  {
    v5 = &xmmword_281500C10;
  }

  v6 = (*(v5 + 5))(a1, a2, 176, 0x10E00408F167396);
  if (v6)
  {
    if (a1)
    {
      v7 = &qword_27E516570;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        if (v7 == a1)
        {
          goto LABEL_18;
        }
      }

      v7 = &unk_278CB2F00;
    }

    else
    {
      v7 = &unk_278CB2F00;
    }

LABEL_18:
    v8 = v7[6];
    if (!v8)
    {
      v8 = &xmmword_281500C10;
    }

    *(v6 + 160) = (*(v8 + 5))(a1, *(a2 + 160), (8 * *(a2 + 12)), 0x80040B8603338);
    if (a1)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == a1)
        {
          goto LABEL_27;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_27:
    v10 = v9[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    *(v6 + 168) = (*(v10 + 5))(a1, *(a2 + 168), (8 * *(a2 + 12)), 0x2004093837F09);
  }

  return v6;
}

uint64_t sub_240ACECB8(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 160))
  {
    if (a1)
    {
      v4 = &qword_27E516570;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (v4 == a1)
        {
          goto LABEL_9;
        }
      }

      v4 = &unk_278CB2F00;
    }

    else
    {
      v4 = &unk_278CB2F00;
    }

LABEL_9:
    v5 = v4[6];
    if (!v5)
    {
      v5 = &xmmword_281500C10;
    }

    (*(v5 + 2))(a1);
  }

  if (!*(a2 + 168))
  {
    goto LABEL_23;
  }

  if (a1)
  {
    v6 = &qword_27E516570;
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (v6 == a1)
      {
        goto LABEL_20;
      }
    }

    v6 = &unk_278CB2F00;
  }

  else
  {
    v6 = &unk_278CB2F00;
  }

LABEL_20:
  v7 = v6[6];
  if (!v7)
  {
    v7 = &xmmword_281500C10;
  }

  result = (*(v7 + 2))(a1);
  if (a2)
  {
LABEL_23:
    if (a1)
    {
      v9 = &qword_27E516570;
      while (1)
      {
        v9 = *v9;
        if (!v9)
        {
          break;
        }

        if (v9 == a1)
        {
          goto LABEL_30;
        }
      }

      v9 = &unk_278CB2F00;
    }

    else
    {
      v9 = &unk_278CB2F00;
    }

LABEL_30:
    v10 = v9[6];
    if (!v10)
    {
      v10 = &xmmword_281500C10;
    }

    v11 = *(v10 + 2);

    return v11(a1, a2);
  }

  return result;
}

uint64_t sub_240ACEE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a3 + 8))
  {
    v6 = 0;
    v7 = v13;
    do
    {
      (*(a3 + 8 * v6 + 16))(a1, v7, *(a3 + 8 * v6 + 80));
      ++v6;
      v7 += 2;
      a1 += 2;
    }

    while (v6 < *(a3 + 8));
  }

  result = (*(a3 + 144))(v13, v12, *(a3 + 152));
  if (*(a3 + 12))
  {
    v9 = 0;
    v10 = v12;
    do
    {
      result = (*(*(a3 + 160) + 8 * v9))(v10, a2, *(*(a3 + 168) + 8 * v9));
      ++v9;
      a2 += 2;
      v10 += 2;
    }

    while (v9 < *(a3 + 12));
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240ACEF18(uint64_t *a1)
{
  if (a1)
  {
    v1 = &qword_27E516570;
    while (1)
    {
      v1 = *v1;
      if (!v1)
      {
        break;
      }

      if (v1 == a1)
      {
        goto LABEL_8;
      }
    }

    v1 = &unk_278CB2F00;
  }

  else
  {
    v1 = &unk_278CB2F00;
  }

LABEL_8:
  v2 = v1[6];
  if (!v2)
  {
    v2 = &xmmword_281500C10;
  }

  return (*(v2 + 5))();
}

uint64_t sub_240ACEF80(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result)
    {
      v2 = &qword_27E516570;
      while (1)
      {
        v2 = *v2;
        if (!v2)
        {
          break;
        }

        if (v2 == result)
        {
          goto LABEL_10;
        }
      }

      v2 = &unk_278CB2F00;
    }

    else
    {
      v2 = &unk_278CB2F00;
    }

LABEL_10:
    v3 = v2[6];
    if (!v3)
    {
      v3 = &xmmword_281500C10;
    }

    return (*(v3 + 2))();
  }

  return result;
}

unsigned __int16 *sub_240ACEFDC(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *result >> 8;
  v5 = result[1] >> 8;
  v6 = result[2] >> 8;
  v7 = *(a3 + 2 * v4 + 16);
  v8 = *(a3 + 2 * v5 + 528);
  v9 = *(a3 + 2 * v6 + 1040);
  if (*(a3 + 2 * v4 + 16))
  {
    v10 = *(v3 + 92);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v3 + 16);
  if (*(a3 + 2 * v5 + 528))
  {
    v12 = *(v3 + 88);
    if (*(a3 + 2 * v6 + 1040))
    {
LABEL_6:
      v13 = *(v3 + 84);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (*(a3 + 2 * v6 + 1040))
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_9:
  if (v11 >= 1)
  {
    v14 = 0;
    v15 = *(a3 + 4 * v4 + 1552);
    v16 = v10 + v15;
    v17 = *(a3 + 4 * v5 + 2576);
    v18 = v12 + v17;
    v19 = v17 + v15;
    v20 = *(a3 + 4 * v6 + 3600);
    v21 = *(v3 + 120);
    v22 = v7 < v8;
    v23 = v8 < v9;
    v24 = v20 + v17 + v10 + v15;
    v25 = v18 + v16;
    v26 = v7 < v9 || v8 < v7;
    v27 = v21 + 2 * (v17 + v15 + v20);
    if (v9 < v7)
    {
      v22 = 1;
    }

    v28 = v21 + 2 * v24;
    if (v9 < v7)
    {
      v23 = 1;
    }

    result = ((v7 < v9) | (v9 < v8));
    v29 = v21 + 2 * (v25 + v20);
    v30 = v13 + v20;
    v31 = v21 + 2 * (v13 + v20 + v25);
    v32 = v16 + v17;
    v33 = v20 + v15 + v18;
    v34 = v18 + v15;
    v35 = v21 + 2 * (v32 + v20);
    v36 = v21 + 2 * (v30 + v32);
    v37 = v21 + 2 * (v30 + v19);
    v38 = 2 * v11;
    v39 = v30 + v34;
    v40 = v21 + 2 * v33;
    v41 = v34 + v20;
    v42 = v9 < v8 || v8 < v7;
    v43 = v21 + 2 * v39;
    v44 = v21 + 2 * v41;
    while (1)
    {
      v45 = *(v27 + v14);
      if (v7 >= v8 && v8 >= v9)
      {
        v49 = *(v28 + v14);
        v46 = v49 - v45;
        v50 = *(v29 + v14);
        v47 = v50 - v49;
        goto LABEL_29;
      }

      if (v7 >= v9 && v9 >= v8)
      {
        break;
      }

      if (!v22)
      {
        v53 = *(v36 + v14);
        v54 = *(v37 + v14);
        v46 = v53 - v54;
        v47 = *(v31 + v14) - v53;
LABEL_35:
        v48 = v54 - v45;
        goto LABEL_32;
      }

      if (!v26)
      {
        v50 = *(v29 + v14);
        v55 = *(v40 + v14);
        v46 = v50 - v55;
        v47 = v55 - v45;
LABEL_29:
        v51 = *(v31 + v14);
LABEL_31:
        v48 = v51 - v50;
        goto LABEL_32;
      }

      if (!v23)
      {
        v56 = *(v43 + v14);
        v46 = *(v31 + v14) - v56;
        v57 = *(v44 + v14);
        v47 = v57 - v45;
        v48 = v56 - v57;
        goto LABEL_32;
      }

      if (!v42)
      {
        v58 = *(v43 + v14);
        v46 = *(v31 + v14) - v58;
        v54 = *(v37 + v14);
        v47 = v58 - v54;
        goto LABEL_35;
      }

      v46 = 0;
      v47 = 0;
      v48 = 0;
LABEL_32:
      v52 = v47 * v8 + v46 * v7 + v48 * v9 + 32769;
      *(a2 + v14) = v45 + ((v52 + (v52 >> 16)) >> 16);
      v14 += 2;
      if (v38 == v14)
      {
        return result;
      }
    }

    v50 = *(v35 + v14);
    v46 = v50 - v45;
    v51 = *(v36 + v14);
    v47 = *(v31 + v14) - v51;
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_240ACF244(unsigned __int16 *a1, __int16 *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = v16;
    do
    {
      v7 = *a1++;
      v8 = v7 / 65535.0;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  (*(a3 + 32))(v16, v15, a3);
  v9 = *(a3 + 12);
  if (v9)
  {
    v10 = v15;
    do
    {
      v11 = *v10 * 65535.0 + 0.5;
      if (v11 <= 0.0)
      {
        v12 = 0;
      }

      else if (v11 >= 65535.0)
      {
        v12 = -1;
      }

      else
      {
        v12 = (COERCE_UNSIGNED_INT64(v11 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
      }

      *a2++ = v12;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_240ACF368(uint64_t **a1, uint64_t a2, int *a3, _DWORD *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a3;
  if ((*a3 & 0x78) != 0x18)
  {
    return 0;
  }

  v52 = v8;
  v53 = v9;
  v12 = v10 & 7;
  if ((*a4 & 0x78) != 0x18 || v12 != 1)
  {
    return 0;
  }

  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  v17 = *a1;
  if (sub_240AC8FA8(*a1, 4, a3, a4, a5, a6, a7, a8, 116))
  {
    v24 = *(v49 + 48);
    if (v24[1])
    {
      return 0;
    }

    v25 = *(v48 + 48);
    sub_240ACB4CC(&v43, *v25, *v24);
  }

  else
  {
    result = sub_240AC8FA8(v17, 3, v18, v19, v20, v21, v22, v23, 116);
    if (!result)
    {
      return result;
    }

    v25 = *(v49 + 48);
    v27 = *v25;
    v28 = *(*v25 + 48);
    v45 = *(*v25 + 32);
    v46 = v28;
    v47 = *(v27 + 8);
    v29 = *(v27 + 1);
    v43 = *v27;
    v44 = v29;
  }

  v30 = *(v25 + 8);
  if (sub_240ACB454(&v43))
  {
    v31 = v30 == 0;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  result = sub_240ACADFC(v17[7], *(v17 + 2), *(v17 + 3));
  v42 = result;
  if (result)
  {
    v33 = result;
    v34 = sub_240ACAC80(v51);
    if (v34)
    {
      v34[7] = *v33;
      *v33 = v34;
      if (sub_240ACAF44(v33))
      {
        if ((v32 & 1) != 0 || (v35 = sub_240AC977C(*(v33 + 56), 3, 3u, &v43, v30), sub_240ACB414(v33, 1, v35)))
        {
          v36 = sub_240ACAC80(v50);
          if (v36)
          {
            v37 = *v33;
            if (*v33)
            {
              do
              {
                v38 = v37;
                v37 = v37[7];
              }

              while (v37);
              v38[7] = v36;
              v36[7] = 0;
            }

            else
            {
              *v33 = v36;
            }

            if (sub_240ACAF44(v33))
            {
              if (v32)
              {
                sub_240ACF5EC(&v42, v39, a3, a4, a5);
                v33 = v42;
              }

              else
              {
                v40 = *(v51 + 48);
                v41 = *(v50 + 48);
                *a5 |= 0x40u;
                sub_240ACFB44(v33, *(v40 + 8), &v43, v30, *(v41 + 8), a4);
              }

              sub_240ACB1C0(v17);
              *a1 = v33;
              return 1;
            }
          }
        }
      }
    }

    sub_240ACB1C0(v33);
    return 0;
  }

  return result;
}

uint64_t sub_240ACF5EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v62[7] = *MEMORY[0x277D85DE8];
  if ((*(a3 + 2) & 0x40) != 0 || (*(a4 + 2) & 0x40) != 0)
  {
    goto LABEL_67;
  }

  v8 = *a1;
  v9 = **a1;
  if (v9)
  {
    while (*(v9 + 8) == 1668707188)
    {
      v9 = *(v9 + 56);
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_67;
  }

LABEL_6:
  result = sub_240ACADFC(v8[7], *(v8 + 2), *(v8 + 3));
  if (result)
  {
    v11 = result;
    v12 = v8[7];
    v13 = *(v8 + 2);
    if (v12)
    {
      v14 = &qword_27E516570;
      while (1)
      {
        v14 = *v14;
        if (!v14)
        {
          break;
        }

        if (v14 == v12)
        {
          goto LABEL_14;
        }
      }

      v14 = &unk_278CB2F00;
    }

    else
    {
      v14 = &unk_278CB2F00;
    }

LABEL_14:
    v15 = v14[6];
    if (!v15)
    {
      v15 = &xmmword_281500C10;
    }

    v16 = (*(v15 + 4))();
    if (!v16)
    {
      goto LABEL_66;
    }

    v20 = v16;
    if (*(v8 + 2))
    {
      v21 = 0;
      while (1)
      {
        v22 = sub_240AC1684(v8[7], 4096, 0, 0, 0, v17, v18, v19);
        *(v20 + 8 * v21) = v22;
        if (!v22)
        {
          break;
        }

        ++v21;
        v23 = *(v8 + 2);
        if (v21 >= v23)
        {
          goto LABEL_23;
        }
      }

LABEL_51:
      v44 = *(v8 + 2);
      if (v44)
      {
        for (i = 0; i < v44; ++i)
        {
          v46 = *(v20 + 8 * i);
          if (v46)
          {
            sub_240AC26D0(v46);
            v44 = *(v8 + 2);
          }
        }
      }

      v47 = v8[7];
      if (v47)
      {
        v48 = &qword_27E516570;
        while (1)
        {
          v48 = *v48;
          if (!v48)
          {
            break;
          }

          if (v48 == v47)
          {
            goto LABEL_63;
          }
        }

        v48 = &unk_278CB2F00;
      }

      else
      {
        v48 = &unk_278CB2F00;
      }

LABEL_63:
      v49 = v48[6];
      if (!v49)
      {
        v49 = &xmmword_281500C10;
      }

      (*(v49 + 2))();
      goto LABEL_66;
    }

    LODWORD(v23) = 0;
LABEL_23:
    v24 = 0;
    v25 = vdupq_n_s64(4uLL);
    v59 = v25;
    do
    {
      if (v23)
      {
        v26 = v24 / 4095.0;
        *&v26 = v26;
        v27 = (v23 + 3) & 0x1FFFFFFFCLL;
        v28 = vdupq_n_s64(v23 - 1);
        v29 = v62;
        v30 = xmmword_240C111D0;
        v31 = xmmword_240C111C0;
        do
        {
          v32 = vmovn_s64(vcgeq_u64(v28, v30));
          if (vuzp1_s16(v32, *&v26).u8[0])
          {
            *(v29 - 2) = LODWORD(v26);
          }

          if (vuzp1_s16(v32, *&v26).i8[2])
          {
            *(v29 - 1) = LODWORD(v26);
          }

          if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v28, *&v31))).i32[1])
          {
            *v29 = LODWORD(v26);
            v29[1] = LODWORD(v26);
          }

          v31 = vaddq_s64(v31, v25);
          v30 = vaddq_s64(v30, v25);
          v29 += 4;
          v27 -= 4;
        }

        while (v27);
      }

      (v8[4])(v61, v60, v8);
      v23 = *(v8 + 2);
      if (v23)
      {
        v33 = v60;
        v34 = v20;
        v35 = *(v8 + 2);
        do
        {
          v36 = *v33 * 65535.0 + 0.5;
          if (v36 <= 0.0)
          {
            v37 = 0;
          }

          else if (v36 >= 65535.0)
          {
            v37 = -1;
          }

          else
          {
            v37 = (COERCE_UNSIGNED_INT64(v36 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
          }

          v38 = *v34++;
          *(*(v38 + 48) + 2 * v24) = v37;
          ++v33;
          --v35;
        }

        while (v35);
      }

      ++v24;
      v25 = v59;
    }

    while (v24 != 4096);
    v39 = sub_240AC904C(v8[7], v23, v20);
    if (!v39)
    {
      goto LABEL_51;
    }

    v40 = v39;
    if (*(v8 + 2))
    {
      v41 = 0;
      do
      {
        sub_240AC26D0(*(v20 + 8 * v41));
        *(v20 + 8 * v41++) = 0;
      }

      while (v41 < *(v8 + 2));
    }

    v42 = v8[7];
    if (v42)
    {
      v43 = &qword_27E516570;
      while (1)
      {
        v43 = *v43;
        if (!v43)
        {
          break;
        }

        if (v43 == v42)
        {
          goto LABEL_71;
        }
      }

      v43 = &unk_278CB2F00;
    }

    else
    {
      v43 = &unk_278CB2F00;
    }

LABEL_71:
    v51 = v43[6];
    if (!v51)
    {
      v51 = &xmmword_281500C10;
    }

    (*(v51 + 2))();
    if (sub_240AD00F0(v40))
    {
      sub_240AC96E4(v40);
      sub_240AC8ED0(*(v11 + 56), *(v8 + 2));
      if (v52)
      {
        *(v52 + 56) = *v11;
        *v11 = v52;
        if (sub_240ACAF44(v11))
        {
          *a5 |= 0x40u;
          *(v11 + 40) = 0;
          *(v11 + 48) = 0;
          *(v11 + 16) = v11;
          *(v11 + 24) = sub_240AD083C;
LABEL_85:
          sub_240ACB1C0(v8);
          *a1 = v11;
          result = 1;
          goto LABEL_68;
        }
      }

LABEL_66:
      sub_240ACB1C0(v11);
LABEL_67:
      result = 0;
      goto LABEL_68;
    }

    *(v40 + 56) = *v11;
    *v11 = v40;
    if (!sub_240ACAF44(v11))
    {
      sub_240AC96E4(v40);
      goto LABEL_66;
    }

    v53 = *(v40 + 48);
    v54 = *(v11 + 56);
    v55 = *v53;
    v56 = *(v53 + 1);
    if ((*a3 & 7) == 1)
    {
      v57 = sub_240AD0144(v54, v55, 256, v56);
      if (!v57)
      {
        goto LABEL_66;
      }

      *a5 |= 0x40u;
      v58 = sub_240AD0810;
    }

    else
    {
      v57 = sub_240AD0144(v54, v55, 0x10000, v56);
      if (!v57)
      {
        goto LABEL_66;
      }

      *a5 |= 0x40u;
      v58 = sub_240AD04BC;
    }

    *(v11 + 16) = v57;
    *(v11 + 24) = v58;
    *(v11 + 48) = sub_240AD04E4;
    *(v11 + 40) = sub_240AD0694;
    goto LABEL_85;
  }

LABEL_68:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240ACFB44(void *a1, _DWORD **a2, uint64_t a3, float64x2_t *a4, _DWORD **a5, _DWORD *a6)
{
  v12 = *a6 & 7;
  v13 = a1[7];
  if (v13)
  {
    v14 = &qword_27E516570;
    while (1)
    {
      v14 = *v14;
      if (!v14)
      {
        break;
      }

      if (v14 == v13)
      {
        goto LABEL_8;
      }
    }

    v14 = &unk_278CB2F00;
  }

  else
  {
    v14 = &unk_278CB2F00;
  }

LABEL_8:
  v15 = v14[6];
  if (!v15)
  {
    v15 = &xmmword_281500C10;
  }

  v16 = (*v15)();
  if (v16)
  {
    v17 = v16;
    *v16 = a1[7];
    sub_240ACFD5C((v16 + 1), *a2);
    sub_240ACFD5C((v17 + 129), a2[1]);
    sub_240ACFD5C((v17 + 257), a2[2]);
    sub_240ACFDF0((v17 + 391), *a5, v12 == 1);
    sub_240ACFDF0(v17 + 35898, a5[1], v12 == 1);
    sub_240ACFDF0(v17 + 68668, a5[2], v12 == 1);
    v18 = 0;
    v19 = v17 + 385;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        *(v19 + i) = vcvtmd_s64_f64(*(a3 + 8 * i) * 16384.0 + 0.5);
      }

      ++v18;
      v19 = (v19 + 12);
      a3 += 24;
    }

    while (v18 != 3);
    if (a4)
    {
      __asm { FMOV            V2.2D, #0.5 }

      v26 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x40D0000000000000uLL), *a4))));
      v27 = vcvtmd_s64_f64(a4[1].f64[0] * 16384.0 + 0.5);
    }

    else
    {
      v27 = 0;
      v26 = 0;
    }

    *(v17 + 3116) = v26;
    *(v17 + 781) = v27;
    if (v12 == 1)
    {
      *a6 |= 0x200000u;
    }

    a1[2] = v17;
    a1[3] = sub_240ACFFF8;
    a1[6] = sub_240ACFF30;
    a1[5] = sub_240ACFF9C;
  }
}

void sub_240ACFD5C(uint64_t a1, _DWORD *a2)
{
  for (i = 0; i != 256; ++i)
  {
    v5 = i / 255.0;
    v6 = sub_240AC2CFC(a2, v5);
    v7 = vcvtmd_s64_f64(v6 * 16384.0 + 0.5);
    if (v6 >= 131070.0)
    {
      v7 = 0x7FFFFFFF;
    }

    *(a1 + 4 * i) = v7;
  }
}

void sub_240ACFDF0(uint64_t a1, _DWORD *a2, int a3)
{
  for (i = 0; i != 16385; ++i)
  {
    v7 = vcvtd_n_f64_u32(i, 0xEuLL);
    v8 = sub_240AC2CFC(a2, v7);
    if (v8 < 0.0)
    {
      v8 = 0.0;
    }

    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v9 = v8 * 65535.0 + 0.5;
    if (a3)
    {
      if (v9 <= 0.0)
      {
        goto LABEL_13;
      }

      if (v9 < 65535.0)
      {
        v10 = v9 + -32767.0 + 1.03079215e11;
        v11 = (65281 * (WORD1(v10) + 0x7FFF) + 0x800000) >> 24;
        v12 = v11 | (v11 << 8);
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= 0.0)
      {
LABEL_13:
        v12 = 0;
        goto LABEL_15;
      }

      if (v9 < 65535.0)
      {
        v12 = (COERCE_UNSIGNED_INT64(v9 + -32767.0 + 1.03079215e11) >> 16) + 0x7FFF;
        goto LABEL_15;
      }
    }

    v12 = -1;
LABEL_15:
    *(a1 + 2 * i) = v12;
  }
}

uint64_t sub_240ACFF30(uint64_t *a1)
{
  if (a1)
  {
    v1 = &qword_27E516570;
    while (1)
    {
      v1 = *v1;
      if (!v1)
      {
        break;
      }

      if (v1 == a1)
      {
        goto LABEL_8;
      }
    }

    v1 = &unk_278CB2F00;
  }

  else
  {
    v1 = &unk_278CB2F00;
  }

LABEL_8:
  v2 = v1[6];
  if (!v2)
  {
    v2 = &xmmword_281500C10;
  }

  return (*(v2 + 5))();
}

uint64_t sub_240ACFF9C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result)
    {
      v2 = &qword_27E516570;
      while (1)
      {
        v2 = *v2;
        if (!v2)
        {
          break;
        }

        if (v2 == result)
        {
          goto LABEL_10;
        }
      }

      v2 = &unk_278CB2F00;
    }

    else
    {
      v2 = &unk_278CB2F00;
    }

LABEL_10:
    v3 = v2[6];
    if (!v3)
    {
      v3 = &xmmword_281500C10;
    }

    return (*(v3 + 2))();
  }

  return result;
}

unsigned __int8 *sub_240ACFFF8(unsigned __int8 *result, _WORD *a2, _DWORD *a3)
{
  v3 = a3[*result + 2];
  v4 = a3[result[2] + 258];
  v5 = a3[result[4] + 514];
  v6 = (a3[771] * v4 + a3[770] * v3 + a3[772] * v5 + a3[779] + 0x2000) >> 14;
  v7 = (a3[774] * v4 + a3[773] * v3 + a3[775] * v5 + a3[780] + 0x2000) >> 14;
  v8 = (a3[777] * v4 + a3[776] * v3 + a3[778] * v5 + a3[781] + 0x2000) >> 14;
  if (v6 >= 0x4000)
  {
    v9 = 0x4000;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 & ~(v9 >> 31);
  if (v7 >= 0x4000)
  {
    v11 = 0x4000;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 & ~(v11 >> 31);
  if (v8 >= 0x4000)
  {
    v8 = 0x4000;
  }

  *a2 = *(a3 + v10 + 1564);
  a2[1] = *(a3 + v12 + 17949);
  a2[2] = *(a3 + (v8 & ~(v8 >> 31)) + 34334);
  return result;
}

uint64_t sub_240AD00F0(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 20);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    result = sub_240AC2DBC(*v1);
    if (!result)
    {
      break;
    }

    ++v1;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_240AD0144(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == a1)
      {
        goto LABEL_8;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_8:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  v10 = (*(v9 + 1))(a1, 24, 0x10A00409D8FE3EALL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 8) = a2;
    *(v10 + 12) = a3;
    if (a1)
    {
      v12 = &qword_27E516570;
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        if (v12 == a1)
        {
          goto LABEL_18;
        }
      }

      v12 = &unk_278CB2F00;
    }

    else
    {
      v12 = &unk_278CB2F00;
    }

LABEL_18:
    v13 = v12[6];
    if (!v13)
    {
      v13 = &xmmword_281500C10;
    }

    v14 = (*(v13 + 4))(a1, a2, 8, 0x10040436913F5);
    *(v11 + 16) = v14;
    if (v14)
    {
      if (!a2)
      {
        return v11;
      }

      v15 = 0;
      while (1)
      {
        if (a1)
        {
          v16 = &qword_27E516570;
          while (1)
          {
            v16 = *v16;
            if (!v16)
            {
              break;
            }

            if (v16 == a1)
            {
              goto LABEL_29;
            }
          }
        }

        v16 = &unk_278CB2F00;
LABEL_29:
        v17 = v16[6];
        if (!v17)
        {
          v17 = &xmmword_281500C10;
        }

        *(*(v11 + 16) + 8 * v15) = (*(v17 + 4))(a1, a3, 2, 0x1000040BDFB0063);
        if (!*(*(v11 + 16) + 8 * v15))
        {
          break;
        }

        if (a3 == 256)
        {
          for (i = 0; i != 256; ++i)
          {
            v19 = *(a4 + 8 * v15);
            v31 = 257 * i;
            v30 = 0;
            (*(*v19 + 128))(&v31, &v30);
            *(*(*(v11 + 16) + 8 * v15) + 2 * i) = v30;
          }
        }

        else
        {
          v20 = 0;
          do
          {
            v21 = *(a4 + 8 * v15);
            v33 = v20;
            v32 = 0;
            (*(*v21 + 128))(&v33, &v32);
            *(*(*(v11 + 16) + 8 * v15) + 2 * v20++) = v32;
          }

          while (a3 != v20);
        }

        if (++v15 == a2)
        {
          return v11;
        }
      }

      if (!v15)
      {
        goto LABEL_54;
      }

      for (j = 0; j != v15; ++j)
      {
        if (*(*(v11 + 16) + 8 * j))
        {
          if (a1)
          {
            v23 = &qword_27E516570;
            while (1)
            {
              v23 = *v23;
              if (!v23)
              {
                break;
              }

              if (v23 == a1)
              {
                goto LABEL_49;
              }
            }
          }

          v23 = &unk_278CB2F00;
LABEL_49:
          v24 = v23[6];
          if (!v24)
          {
            v24 = &xmmword_281500C10;
          }

          (*(v24 + 2))(a1);
        }
      }

      if (*(v11 + 16))
      {
LABEL_54:
        if (a1)
        {
          v25 = &qword_27E516570;
          while (1)
          {
            v25 = *v25;
            if (!v25)
            {
              break;
            }

            if (v25 == a1)
            {
              goto LABEL_61;
            }
          }

          v25 = &unk_278CB2F00;
        }

        else
        {
          v25 = &unk_278CB2F00;
        }

LABEL_61:
        v26 = v25[6];
        if (!v26)
        {
          v26 = &xmmword_281500C10;
        }

        (*(v26 + 2))(a1);
      }
    }

    if (a1)
    {
      v27 = &qword_27E516570;
      while (1)
      {
        v27 = *v27;
        if (!v27)
        {
          break;
        }

        if (v27 == a1)
        {
          goto LABEL_71;
        }
      }

      v27 = &unk_278CB2F00;
    }

    else
    {
      v27 = &unk_278CB2F00;
    }

LABEL_71:
    v28 = v27[6];
    if (!v28)
    {
      v28 = &xmmword_281500C10;
    }

    (*(v28 + 2))(a1, v11);
    return 0;
  }

  return v11;
}

unsigned __int16 *sub_240AD04BC(unsigned __int16 *result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *(a3 + 16);
    do
    {
      v6 = *v4++;
      v5 = v6;
      LODWORD(v6) = *result++;
      *a2++ = *(v5 + 2 * v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_240AD04E4(uint64_t *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = &qword_27E516570;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3 == a1)
      {
        goto LABEL_8;
      }
    }

    v3 = &unk_278CB2F00;
  }

  else
  {
    v3 = &unk_278CB2F00;
  }

LABEL_8:
  v4 = v3[6];
  if (!v4)
  {
    v4 = &xmmword_281500C10;
  }

  v5 = (*(v4 + 5))(a1, a2, 24, 0x10A00409D8FE3EALL);
  v6 = v5;
  if (v5)
  {
    if (a1)
    {
      v7 = &qword_27E516570;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        if (v7 == a1)
        {
          goto LABEL_18;
        }
      }

      v7 = &unk_278CB2F00;
    }

    else
    {
      v7 = &unk_278CB2F00;
    }

LABEL_18:
    v8 = v7[6];
    if (!v8)
    {
      v8 = &xmmword_281500C10;
    }

    *(v5 + 16) = (*(v8 + 5))(a1, *(v5 + 16), (8 * *(v5 + 8)), 0x10040436913F5);
    if (*(v6 + 8))
    {
      v9 = 0;
      do
      {
        if (a1)
        {
          v10 = &qword_27E516570;
          while (1)
          {
            v10 = *v10;
            if (!v10)
            {
              break;
            }

            if (v10 == a1)
            {
              goto LABEL_28;
            }
          }
        }

        v10 = &unk_278CB2F00;
LABEL_28:
        v11 = v10[6];
        if (!v11)
        {
          v11 = &xmmword_281500C10;
        }

        *(*(v6 + 16) + 8 * v9) = (*(v11 + 5))(a1, *(*(v6 + 16) + 8 * v9), (2 * *(v6 + 12)), 0x1000040BDFB0063);
        ++v9;
      }

      while (v9 < *(v6 + 8));
    }
  }

  return v6;
}

uint64_t sub_240AD0694(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (*(*(a2 + 16) + 8 * i))
      {
        if (a1)
        {
          v6 = &qword_27E516570;
          while (1)
          {
            v6 = *v6;
            if (!v6)
            {
              break;
            }

            if (v6 == a1)
            {
              goto LABEL_10;
            }
          }
        }

        v6 = &unk_278CB2F00;
LABEL_10:
        v7 = v6[6];
        if (!v7)
        {
          v7 = &xmmword_281500C10;
        }

        (*(v7 + 2))(a1);
        v4 = *(a2 + 8);
      }
    }
  }

  if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

  if (a1)
  {
    v8 = &qword_27E516570;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8 == a1)
      {
        goto LABEL_22;
      }
    }

    v8 = &unk_278CB2F00;
  }

  else
  {
    v8 = &unk_278CB2F00;
  }

LABEL_22:
  v9 = v8[6];
  if (!v9)
  {
    v9 = &xmmword_281500C10;
  }

  result = (*(v9 + 2))(a1);
  if (a2)
  {
LABEL_25:
    if (a1)
    {
      v11 = &qword_27E516570;
      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        if (v11 == a1)
        {
          goto LABEL_32;
        }
      }

      v11 = &unk_278CB2F00;
    }

    else
    {
      v11 = &unk_278CB2F00;
    }

LABEL_32:
    v12 = v11[6];
    if (!v12)
    {
      v12 = &xmmword_281500C10;
    }

    v13 = *(v12 + 2);

    return v13(a1, a2);
  }

  return result;
}

uint64_t sub_240AD0810(uint64_t result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *(a3 + 16);
    do
    {
      v5 = *v4++;
      *a2++ = *(v5 + 2 * *(result + 1));
      result += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

__int16 *sub_240AD083C(__int16 *result, _WORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    do
    {
      v4 = *result++;
      *a2++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_240AD0858(uint64_t ***a1, int a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = a1;
  result = 0;
  do
  {
    v8 = v3[7];
    if (!v8)
    {
      break;
    }

    if (*(v3 + 3) == a2 && *(v8 + 3) == a3)
    {
      v3[7] = v8[7];
      sub_240AC96E4(v8);
      v9 = *v6;
      *v6 = (*v6)[7];
      sub_240AC96E4(v9);
      v8 = *v6;
      result = 1;
    }

    else
    {
      v6 = (v3 + 7);
    }

    v3 = v8;
  }

  while (v8);
  return result;
}

uint64_t sub_240AD08FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = &qword_27E516570;
    while (1)
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      if (v7 == a1)
      {
        goto LABEL_8;
      }
    }

    v7 = &unk_278CB2F00;
  }

  else
  {
    v7 = &unk_278CB2F00;
  }

LABEL_8:
  v8 = v7[9];
  if (!v8)
  {
    v8 = &unk_27E516588;
  }

  v9 = *v8;
  if (*v8)
  {
    while (1)
    {
      result = (*v9)(a2, a3, a4);
      if (result)
      {
        break;
      }

      v9 = *(v9 + 8);
      if (!v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (a3)
    {
      v11 = a2 & 0xFFDFFFFF;
      if (a4)
      {
        v12 = &dword_2852A3040;
        v13 = 7;
        while ((v11 & ~v12[1]) != *v12)
        {
          v12 += 4;
          if (!--v13)
          {
            return 0;
          }
        }
      }

      else
      {
        v12 = &dword_2852A30B0;
        v15 = 55;
        while ((v11 & ~v12[1]) != *v12)
        {
          v12 += 4;
          if (!--v15)
          {
            return 0;
          }
        }
      }
    }

    else if (a4)
    {
      v12 = &dword_2852A3420;
      v14 = 7;
      while ((a2 & ~v12[1]) != *v12)
      {
        v12 += 4;
        if (!--v14)
        {
          return 0;
        }
      }
    }

    else
    {
      v12 = &dword_2852A3490;
      v16 = 43;
      while ((a2 & ~v12[1]) != *v12)
      {
        v12 += 4;
        if (!--v16)
        {
          return 0;
        }
      }
    }

    return *(v12 + 1);
  }

  return result;
}

char *sub_240AD0A68(uint64_t a1, uint64_t a2, char *__src, unsigned int a4)
{
  v6 = *(a1 + 4);
  v7 = (v6 >> 3) & 0xF;
  v8 = (v6 >> 7) & 7;
  v9 = (WORD1(v6) & 0x1F) - 5;
  v10 = 1.0;
  if (v9 <= 0x18)
  {
    v10 = flt_240C15020[v9];
  }

  v11 = (v6 >> 14) & 1;
  if ((v6 & 7) != 0)
  {
    v12 = *(a1 + 4) & 7;
  }

  else
  {
    v12 = 8;
  }

  if (!v7)
  {
    v22 = 0.0;
    if (v8)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v13 = 0;
  v14 = (v6 >> 10) & 1;
  if (v14 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v6 >> 7) & 7;
  }

  v16 = &__src[2 * v15];
  v17 = 2 * v7;
  v18 = v7 - 1;
  v19 = a4 / v12;
  do
  {
    if (v14)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    v21 = v10 * *(a2 + 4 * v20);
    if ((v6 & 0x2000) != 0)
    {
      v21 = v10 - v21;
    }

    v22 = v21;
    v23 = &__src[2 * (v15 + v13) * v19];
    if ((v6 & 0x1000) == 0)
    {
      v23 = v16;
    }

    *v23 = word_240C145C0[LODWORD(v21) >> 23] + ((LODWORD(v21) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(v21) >> 23]);
    ++v13;
    v16 += 2;
    --v18;
    v17 -= 2;
  }

  while (v17);
  if (!v8)
  {
LABEL_22:
    if (v11)
    {
      memmove(__src + 2, __src, 2 * (v7 - 1));
      *__src = word_240C145C0[LODWORD(v22) >> 23] + ((LODWORD(v22) & 0x7FFFFFu) >> byte_240C149C0[LODWORD(v22) >> 23]);
      LODWORD(v6) = *(a1 + 4);
    }
  }

LABEL_24:
  if ((v6 & 0x1000) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = 2 * (v7 + v8);
  }

  return &__src[v24];
}

double *sub_240AD0BDC(uint64_t a1, uint64_t a2, double *__src, unsigned int a4)
{
  v6 = *(a1 + 4);
  v7 = (v6 >> 3) & 0xF;
  v8 = (v6 >> 7) & 7;
  v9 = (WORD1(v6) & 0x1F) - 5;
  v10 = 1.0;
  if (v9 <= 0x18)
  {
    v10 = dbl_240C14F58[v9];
  }

  v11 = (v6 >> 14) & 1;
  if ((v6 & 7) != 0)
  {
    v12 = *(a1 + 4) & 7;
  }

  else
  {
    v12 = 8;
  }

  if (!v7)
  {
    v21 = 0.0;
    if (v8)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v13 = 0;
  v14 = (v6 >> 10) & 1;
  if (v14 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v6 >> 7) & 7;
  }

  v16 = &__src[v15];
  v17 = 8 * v7;
  v18 = v7 - 1;
  v19 = a4 / v12;
  do
  {
    if (v14)
    {
      v20 = v18;
    }

    else
    {
      v20 = v13;
    }

    if ((v6 & 0x2000) != 0)
    {
      v21 = v10 - v10 * *(a2 + 4 * v20);
    }

    else
    {
      v21 = v10 * *(a2 + 4 * v20);
    }

    v22 = &__src[(v15 + v13) * v19];
    if ((v6 & 0x1000) == 0)
    {
      v22 = v16;
    }

    *v22 = v21;
    ++v13;
    ++v16;
    --v18;
    v17 -= 8;
  }

  while (v17);
  if (!v8)
  {
LABEL_23:
    if (v11)
    {
      memmove(__src + 1, __src, 8 * (v7 - 1));
      *__src = v21;
      LODWORD(v6) = *(a1 + 4);
    }
  }

LABEL_25:
  if ((v6 & 0x1000) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = v7 + v8;
  }

  return &__src[v23];
}