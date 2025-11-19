unint64_t sub_2394AE338(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = 0;
  v6 = sub_23949E8C0(a1 + 16, &v10);
  if (v6)
  {
    goto LABEL_2;
  }

  if (v10 != 1)
  {
    v7 = 0x1E000000000;
LABEL_8:
    LODWORD(v6) = 47;
    return v7 | v6;
  }

  if (!sub_23949EB88(a1 + 16, a1 + 176))
  {
    v7 = 0x1E100000000;
    goto LABEL_8;
  }

  v8 = (*(*a2 + 40))(a2);
  v6 = sub_2394ADF30(a1, v8, a2, a3);
LABEL_2:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2394AE410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v8 = sub_23949E8C0(a1 + 16, &v11);
  if (v8)
  {
    goto LABEL_2;
  }

  if (v11 != 2)
  {
    v9 = 0x1EC00000000;
    goto LABEL_8;
  }

  v8 = sub_23949E8C0(a1 + 176, &v11);
  if (!v8)
  {
    if (v11 == 1)
    {
      v8 = sub_2394ADF30(a1, a2, a3, a4);
      goto LABEL_2;
    }

    v9 = 0x1EF00000000;
LABEL_8:
    LODWORD(v8) = 47;
    return v9 | v8;
  }

LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394AE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v8 = sub_23949E8C0(a1 + 16, &v11);
  if (v8)
  {
    goto LABEL_2;
  }

  if (v11 != 6)
  {
    v9 = 0x1FB00000000;
    goto LABEL_8;
  }

  v8 = sub_23949E8C0(a1 + 176, &v11);
  if (!v8)
  {
    if (v11 - 1 <= 1)
    {
      v8 = sub_2394ADF30(a1, a2, a3, a4);
      goto LABEL_2;
    }

    v9 = 0x1FE00000000;
LABEL_8:
    LODWORD(v8) = 47;
    return v9 | v8;
  }

LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394AE594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v8 = sub_23949E8C0(a1 + 16, &v11);
  if (v8)
  {
    goto LABEL_2;
  }

  if (v11 != 3)
  {
    v9 = 0x20A00000000;
    goto LABEL_8;
  }

  v8 = sub_23949E8C0(a1 + 176, &v11);
  if (!v8)
  {
    if (v11 - 1 <= 1)
    {
      v8 = sub_2394ADF30(a1, a2, a3, a4);
      goto LABEL_2;
    }

    v9 = 0x20D00000000;
LABEL_8:
    LODWORD(v8) = 47;
    return v9 | v8;
  }

LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2394AE658(int a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = sub_2393F77A4(a5, 128, 3u);
  if (v10)
  {
    goto LABEL_3;
  }

  v10 = sub_2393F77A4(a5, 0, 0x10u);
  if (v10)
  {
    goto LABEL_3;
  }

  v11 = 0x11B00000000;
  LODWORD(v10) = 47;
  if (a1 > 3)
  {
    if ((a1 - 4) < 2)
    {
      goto LABEL_10;
    }

    if (a1 != 6)
    {
      goto LABEL_4;
    }

    v10 = sub_2394ADCE0(1, a5);
    if (v10)
    {
      goto LABEL_3;
    }

    v14 = 1;
  }

  else
  {
    if ((a1 - 1) >= 2)
    {
      if (a1 != 3)
      {
        goto LABEL_4;
      }

      v10 = sub_2394ADCE0(1, a5);
      if (!v10)
      {
        v10 = sub_2394ADDB0(1u, a5);
        if (!v10)
        {
          *v19 = 100730370;
          v10 = sub_2394ADE5C(v19, 2, a5);
          if (!v10)
          {
            goto LABEL_10;
          }
        }
      }

      goto LABEL_3;
    }

    v10 = sub_2394ADCE0(0, a5);
    if (v10)
    {
      goto LABEL_3;
    }

    v14 = 96;
  }

  v10 = sub_2394ADDB0(v14, a5);
  if (!v10)
  {
LABEL_10:
    v10 = sub_2393F77A4(a5, 0, 0x10u);
    if (!v10)
    {
      v10 = sub_2393F5C58(a5, 1284);
      if (!v10)
      {
        v10 = sub_2393F7918(a5, 0, 4u, 0);
        if (!v10)
        {
          v10 = sub_2393F7E60((a2 + 8), 0x41uLL, v19);
          if (!v10)
          {
            v10 = sub_2393F7164(a5, v19, 0x14u);
            if (!v10)
            {
              v10 = sub_2393F77B0(a5);
              if (!v10)
              {
                v10 = sub_2393F77B0(a5);
              }
            }
          }
        }
      }
    }

    if (!v10)
    {
      v10 = sub_2393F77A4(a5, 0, 0x10u);
      if (!v10)
      {
        v10 = sub_2393F5C58(a5, 1285);
        if (!v10)
        {
          v10 = sub_2393F7918(a5, 0, 4u, 0);
          if (!v10)
          {
            v10 = sub_2393F77A4(a5, 0, 0x10u);
            if (!v10)
            {
              v10 = sub_2393F7E60((a3 + 8), 0x41uLL, v19);
              if (!v10)
              {
                v10 = sub_2393F717C(a5, 128, 0, v19, 0x14u);
                if (!v10)
                {
                  v10 = sub_2393F77B0(a5);
                  if (!v10)
                  {
                    v10 = sub_2393F77B0(a5);
                    if (!v10)
                    {
                      v10 = sub_2393F77B0(a5);
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (!v10)
      {
        if (*a4 != 1)
        {
          goto LABEL_35;
        }

        v10 = sub_2393F77A4(a5, 0, 0x10u);
        if (!v10)
        {
          v15 = *sub_2394AE998(a4);
          v16 = sub_2394AE998(a4);
          v10 = sub_2393F7134(a5, v15, *(v16 + 4));
          if (!v10)
          {
            v10 = sub_2393F7918(a5, 0, 4u, 0);
            if (!v10)
            {
              v17 = *(sub_2394AE998(a4) + 2);
              v18 = sub_2394AE998(a4);
              v10 = sub_2393F7164(a5, v17, *(v18 + 12));
              if (!v10)
              {
                v10 = sub_2393F77B0(a5);
                if (!v10)
                {
                  v10 = sub_2393F77B0(a5);
                  if (!v10)
                  {
LABEL_35:
                    v10 = sub_2393F77B0(a5);
                    if (!v10)
                    {
                      v10 = sub_2393F77B0(a5);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_3:
  v11 = v10 & 0xFFFFFFFF00000000;
LABEL_4:
  v12 = *MEMORY[0x277D85DE8];
  return v11 | v10;
}

_BYTE *sub_2394AE998(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952EDB0();
  }

  return a1 + 8;
}

void *sub_2394AE9B8(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_239535EB4();
  }

  return result;
}

uint64_t sub_2394AE9D4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 32);
    v2 = v1 == 0;
    if (v1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x33600000000;
    }

    if (v2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = 0x33600000000;
    v4 = 3;
  }

  return v4 | v3;
}

uint64_t sub_2394AEA1C(void *a1)
{
  sub_2393D6A10(a1 + 7, (a1 + 5), sub_2394B7194);
  sub_2393D6A10(a1 + 14, (a1 + 12), sub_2394B71B0);
  sub_2393D6A10(a1 + 21, (a1 + 19), sub_2394B71CC);
  sub_2393D6A10(a1 + 28, (a1 + 26), sub_2394B71E8);
  sub_2393D6A10(a1 + 35, (a1 + 33), sub_2394B7204);

  return sub_2393D6A10(a1 + 42, (a1 + 40), sub_2394B7220);
}

uint64_t sub_2394AEAF0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_239535F64();
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_2394AEB0C(uint64_t *a1, uint64_t a2, const char *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (v4)
  {
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = &unk_284BBC810;
    v32[0] = &unk_284BBC878;
    v32[1] = 0;
    v33 = a2;
    v34 = 0;
    v35 = 0xFFFF;
    v36 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    memset(v19, 0, sizeof(v19));
    v9 = &unk_284BBC928;
    v18[0] = &unk_284BBC990;
    v18[1] = 0;
    v20 = -1;
    v21 = 0;
    v22 = 1;
    result = sub_2394B6EC4(&v23, v32, v4);
    if (result == 216 || !result)
    {
      if (sub_2394AED2C(&v9, a1[3], &v23, *a3))
      {
        strncpy(&v19[2], a3 + 2, 0x11uLL);
        v19[18] = 0;
        result = sub_2394B7060(&v9, v18, a1[3]);
      }

      else
      {
        *v19 = *a3;
        strncpy(&v19[2], a3 + 2, 0x11uLL);
        v19[18] = 0;
        result = (*(*a1 + 56))(a1, a2, WORD1(v34), v19);
      }
    }
  }

  else
  {
    result = 0x351000000ACLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394AED2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 171) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 154);
  *(a1 + 176) = 0;
  *(a1 + 182) = 1;
  if (!*(a3 + 156))
  {
    return 0;
  }

  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v8 = *(a1 + 152);
    if (v8 == a4)
    {
      break;
    }

    *(a1 + 182) = 0;
    *(a1 + 180) = v8;
    *(a1 + 152) = *(a1 + 178);
    v9 = *(a1 + 176) + 1;
    *(a1 + 176) = v9;
    if (*(a3 + 156) <= v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2394AEE0C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = &unk_284BBC810;
  v35[0] = &unk_284BBC878;
  v35[1] = 0;
  v36 = a2;
  v37 = 0;
  v38 = 0xFFFF;
  v39 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v22, 0, sizeof(v22));
  v11 = &unk_284BBC928;
  v20 = &unk_284BBC990;
  v21 = 0;
  v23 = -1;
  v24 = 0;
  v25 = 1;
  v7 = sub_2394B6EC4(&v26, v35, *(a1 + 24));
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394AED2C(&v11, *(a1 + 24), &v26, a3))
  {
    *a4 = a3;
    strncpy((a4 + 2), &v22[2], 0x11uLL);
    LODWORD(v7) = 0;
    v8 = 0;
    *(a4 + 18) = 0;
  }

  else
  {
    v8 = 0x36D00000000;
    LODWORD(v7) = 216;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

unint64_t sub_2394AEFCC(uint64_t *a1, uint64_t a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = &unk_284BBC810;
  v35[0] = &unk_284BBC878;
  v35[1] = 0;
  v36 = a2;
  v37 = 0;
  v38 = 0xFFFF;
  v39 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  v10 = &unk_284BBC928;
  v19 = &unk_284BBC990;
  v20 = 0;
  v23 = -1;
  v24 = 0;
  v25 = 1;
  v6 = sub_2394B6EC4(&v26, v35, a1[3]);
  if (!v6)
  {
    if (!sub_2394AED2C(&v10, a1[3], &v26, a3))
    {
      v7 = 0x37A00000000;
      LODWORD(v6) = 216;
      goto LABEL_5;
    }

    v6 = (*(*a1 + 72))(a1, a2, WORD1(v24));
  }

  v7 = v6 & 0xFFFFFFFF00000000;
LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

uint64_t sub_2394AF18C(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = &unk_284BBC810;
    v54[0] = &unk_284BBC878;
    v54[1] = 0;
    v55 = a2;
    v56 = 0;
    v57 = 0xFFFF;
    v58 = 0;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    memset(v41, 0, sizeof(v41));
    v31 = &unk_284BBC928;
    v40[0] = &unk_284BBC990;
    v40[1] = 0;
    v42 = -1;
    v43 = 0;
    v44 = 1;
    v9 = sub_2394B6EC4(&v45, v54, v5);
    if (v9 && v9 != 216)
    {
      goto LABEL_19;
    }

    v10 = sub_2394AED2C(&v31, *(a1 + 24), &v45, *a4);
    if (v10 && WORD1(v43) != a3)
    {
      v11 = 0x38C00000000;
      LODWORD(v9) = 26;
LABEL_20:
      result = v9 | v11;
      goto LABEL_21;
    }

    *v41 = *a4;
    LOWORD(v43) = 0;
    strncpy(&v41[2], a4 + 2, 0x11uLL);
    v41[18] = 0;
    if (v10)
    {
      v9 = sub_2394B7060(&v31, v40, *(a1 + 24));
    }

    else
    {
      if (WORD1(v56) <= a3)
      {
        if (WORD1(v56) != a3)
        {
          v11 = 0x3A700000000;
          LODWORD(v9) = 47;
          goto LABEL_20;
        }

        if (WORD1(v56) >= *(a1 + 8))
        {
          v11 = 0x3A800000000;
          LODWORD(v9) = 31;
          goto LABEL_20;
        }

        ++WORD1(v56);
      }

      else
      {
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        *v26 = 0;
        *&v26[8] = 0;
        *&v26[15] = 0;
        v15 = &unk_284BBC928;
        v24 = &unk_284BBC990;
        v25 = 0;
        v27 = 0;
        v28 = -1;
        v29 = 0;
        v30 = 1;
        sub_2394AF65C(&v15, *(a1 + 24), &v45, a3);
        v44 = v30;
        HIDWORD(v43) = HIDWORD(v29);
        v9 = sub_2394AF730(a1, a2, *v26);
        if (v9)
        {
          goto LABEL_19;
        }

        v9 = sub_2394B6C54(&v15, &v24, *(a1 + 24));
        if (v9)
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 16);
        if (v13)
        {
          (*(*v13 + 24))(v13, a2, v26);
        }
      }

      v9 = sub_2394B7060(&v31, v40, *(a1 + 24));
      if (!v9)
      {
        if (v44 == 1)
        {
          LOWORD(v56) = *v41;
        }

        else
        {
          *v26 = HIWORD(v43);
          memset(&v26[2], 0, 17);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v15 = &unk_284BBC928;
          v24 = &unk_284BBC990;
          v25 = 0;
          v27 = a2;
          v28 = -1;
          v29 = 0;
          v30 = 1;
          v9 = sub_2394B6EC4(&v15, &v24, *(a1 + 24));
          if (v9)
          {
            goto LABEL_19;
          }

          WORD2(v29) = *v41;
          v9 = sub_2394B7060(&v15, &v24, *(a1 + 24));
          if (v9)
          {
            goto LABEL_19;
          }
        }

        v9 = sub_2394AFA10(&v45, *(a1 + 24));
        if (!v9)
        {
          v9 = *(a1 + 16);
          if (v9)
          {
            (*(*v9 + 16))(v9, a2, v41);
            v11 = 0;
            LODWORD(v9) = 0;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_20;
        }
      }
    }

LABEL_19:
    v11 = v9 & 0xFFFFFFFF00000000;
    goto LABEL_20;
  }

  result = 0x381000000ACLL;
LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394AF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 171) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 154);
  *(a1 + 176) = 0;
  *(a1 + 182) = 1;
  if (!*(a3 + 156))
  {
    return 0;
  }

  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v8 = *(a1 + 176);
    if (v8 == a4)
    {
      break;
    }

    *(a1 + 182) = 0;
    *(a1 + 180) = *(a1 + 152);
    *(a1 + 152) = *(a1 + 178);
    v9 = v8 + 1;
    *(a1 + 176) = v9;
    if (*(a3 + 156) <= v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2394AF730(uint64_t a1, char a2, int a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = &unk_284BBC810;
    v52[0] = &unk_284BBC878;
    v52[1] = 0;
    v53 = a2;
    v54 = 0;
    v55 = 0xFFFF;
    v56 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v39 = 0;
    memset(v40, 0, sizeof(v40));
    v29 = &unk_284BBC928;
    v38[0] = &unk_284BBC990;
    v38[1] = 0;
    *v41 = -1;
    *&v41[2] = 0;
    v42 = 1;
    if (sub_2394B6EC4(&v43, v52, v4))
    {
      v7 = 0x52E00000000;
      v8 = 113;
    }

    else if (sub_2394AED2C(&v29, *(a1 + 24), &v43, a3))
    {
      v23 = v39;
      v24 = *v41;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = &unk_284BBCA18;
      v22[0] = &unk_284BBCA80;
      v22[1] = 0;
      v25 = a2;
      v26 = 0;
      v27 = 0;
      v28 = 1;
      if (*&v41[2])
      {
        v10 = 0;
        while (1)
        {
          v11 = sub_2394B6EC4(&v13, v22, *(a1 + 24));
          if (v11)
          {
            break;
          }

          sub_2394B6C54(&v13, v22, *(a1 + 24));
          v24 = HIWORD(v26);
          if (++v10 >= *&v41[2])
          {
            goto LABEL_10;
          }
        }

        v7 = v11 & 0xFFFFFFFF00000000;
      }

      else
      {
LABEL_10:
        *v41 = 0xFFFF;
        v11 = sub_2394B7060(&v29, v38, *(a1 + 24));
        v7 = v11 & 0xFFFFFFFF00000000;
        if (!v11)
        {
          v7 = 0;
          LODWORD(v11) = 0;
        }
      }

      v8 = v11;
    }

    else
    {
      v7 = 0x52F00000000;
      v8 = 16;
    }

    result = v8 | v7;
  }

  else
  {
    result = 0x529000000ACLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394AFA10(uint64_t a1, uint64_t a2)
{
  result = sub_2394B5984(a1, a2);
  if (!result)
  {

    return sub_2394B7060(a1, a1 + 136, a2);
  }

  return result;
}

uint64_t sub_2394AFA64(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = &unk_284BBC810;
    v36[0] = &unk_284BBC878;
    v36[1] = 0;
    v37 = a2;
    v38 = 0;
    v39 = 0xFFFF;
    v40 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    memset(v23, 0, sizeof(v23));
    v12 = &unk_284BBC928;
    v21 = &unk_284BBC990;
    v22 = 0;
    v24 = -1;
    v25 = 0;
    v26 = 1;
    v8 = sub_2394B6EC4(&v27, v36, v5);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else if (sub_2394AF65C(&v12, *(a1 + 24), &v27, a3))
    {
      *a4 = *v23;
      strncpy((a4 + 2), &v23[2], 0x11uLL);
      LODWORD(v8) = 0;
      v9 = 0;
      *(a4 + 18) = 0;
    }

    else
    {
      v9 = 0x3C900000000;
      LODWORD(v8) = 216;
    }

    result = v9 | v8;
  }

  else
  {
    result = 0x3C3000000ACLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394AFC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (!v4)
  {
    result = 0x3D3000000ACLL;
    goto LABEL_6;
  }

  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  v60 = &unk_284BBC810;
  v69[0] = &unk_284BBC878;
  v69[1] = 0;
  v70 = a2;
  v71 = 0;
  v72 = 0xFFFF;
  v73 = 0;
  v54 = 0u;
  v53 = 0u;
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v55[1] = 0;
  memset(v56, 0, sizeof(v56));
  v46 = &unk_284BBC928;
  v55[0] = &unk_284BBC990;
  v57 = -1;
  v58 = 0;
  v59 = 1;
  v7 = sub_2394B6EC4(&v60, v69, v4);
  if (!v7)
  {
    if (!sub_2394AF65C(&v46, *(a1 + 24), &v60, a3))
    {
      v8 = 0x3D900000000;
      LODWORD(v7) = 216;
      goto LABEL_4;
    }

    v40 = *v56;
    v41 = v57;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = &unk_284BBCA18;
    v39[0] = &unk_284BBCA80;
    v39[1] = 0;
    v42 = a2;
    v43 = 0;
    v44 = 0;
    v45 = 1;
    if (v58)
    {
      v11 = 0;
      do
      {
        if (sub_2394B6EC4(&v30, v39, *(a1 + 24)))
        {
          break;
        }

        sub_2394B6C54(&v30, v39, *(a1 + 24));
        v41 = HIWORD(v43);
        ++v11;
      }

      while (v11 < v58);
    }

    v7 = sub_2394B6C54(&v46, v55, *(a1 + 24));
    if (!v7)
    {
      if (v59 == 1)
      {
        LOWORD(v71) = WORD2(v58);
        goto LABEL_15;
      }

      v22 = HIWORD(v58);
      v24 = 0;
      v23 = 0;
      v25 = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = &unk_284BBC928;
      v21[0] = &unk_284BBC990;
      v21[1] = 0;
      v26 = a2;
      v27 = -1;
      v28 = 0;
      v29 = 1;
      v7 = sub_2394B6EC4(&v12, v21, *(a1 + 24));
      if (!v7)
      {
        WORD2(v28) = WORD2(v58);
        v7 = sub_2394B7060(&v12, v21, *(a1 + 24));
        if (!v7)
        {
LABEL_15:
          if (WORD1(v71))
          {
            --WORD1(v71);
          }

          v7 = sub_2394AFA10(&v60, *(a1 + 24));
          if (!v7)
          {
            v7 = *(a1 + 16);
            if (v7)
            {
              (*(*v7 + 24))(v7, a2, v56);
              v8 = 0;
              LODWORD(v7) = 0;
            }

            else
            {
              v8 = 0;
            }

            goto LABEL_4;
          }
        }
      }
    }
  }

  v8 = v7 & 0xFFFFFFFF00000000;
LABEL_4:
  result = v7 | v8;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B002C(uint64_t a1, char a2, int a3, int a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_3;
  }

  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = &unk_284BBC810;
  v51[0] = &unk_284BBC878;
  v51[1] = 0;
  v52 = a2;
  v53 = 0;
  v54 = 0xFFFF;
  v55 = 0;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v37 = 0;
  memset(v38, 0, sizeof(v38));
  v26 = &unk_284BBC928;
  v35 = &unk_284BBC990;
  v36 = 0;
  v39 = -1;
  v40 = 0;
  v41 = 1;
  v21 = -65536;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = &unk_284BBCA18;
  v19 = &unk_284BBCA80;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  if (!sub_2394B6EC4(&v42, v51, v5))
  {
    result = sub_2394AED2C(&v26, *(a1 + 24), &v42, a3);
    if (result)
    {
      result = sub_2394B024C(&v10, *(a1 + 24), &v42, &v26, a4);
    }
  }

  else
  {
LABEL_3:
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B024C(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, int a5)
{
  *(a1 + 156) = *(a3 + 152);
  *(a1 + 152) = a4[76];
  *(a1 + 154) = a4[86];
  *(a1 + 158) = 0;
  *(a1 + 164) = 1;
  if (!a4[87])
  {
    return 0;
  }

  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v9 = *(a1 + 154);
    if (v9 == a5)
    {
      break;
    }

    *(a1 + 164) = 0;
    *(a1 + 162) = v9;
    *(a1 + 154) = *(a1 + 160);
    v10 = *(a1 + 158) + 1;
    *(a1 + 158) = v10;
    if (a4[87] <= v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2394B0328(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = &unk_284BBC810;
    v68[0] = &unk_284BBC878;
    v68[1] = 0;
    v69 = a2;
    v70 = 0;
    v71 = 0xFFFF;
    v72 = 0;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    memset(v55, 0, sizeof(v55));
    v45 = &unk_284BBC928;
    v54[0] = &unk_284BBC990;
    v54[1] = 0;
    v56 = -1;
    v57 = 0;
    v58 = 1;
    v9 = sub_2394B6EC4(&v59, v68, v5);
    if (v9 && v9 != 216)
    {
      goto LABEL_22;
    }

    if (sub_2394AED2C(&v45, *(a1 + 24), &v59, a3))
    {
      v40 = -65536;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = &unk_284BBCA18;
      v38 = &unk_284BBCA80;
      v39 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 1;
      if (sub_2394B024C(&v29, *(a1 + 24), &v59, &v45, a4))
      {
LABEL_6:
        v10 = 0;
        LODWORD(v9) = 0;
LABEL_23:
        result = v9 | v10;
        goto LABEL_24;
      }

      HIWORD(v40) = a4;
      v9 = sub_2394B7060(&v29, &v38, *(a1 + 24));
      if (!v9)
      {
        if (v44 == 1)
        {
          v56 = HIWORD(v40);
        }

        else
        {
          v9 = sub_2394B7060(&v29, &v38, *(a1 + 24));
          if (v9)
          {
            goto LABEL_22;
          }

          v23 = *v55;
          v24 = v43;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = &unk_284BBCA18;
          v22[0] = &unk_284BBCA80;
          v22[1] = 0;
          v25 = a2;
          v26 = 0;
          v27 = 0;
          v28 = 1;
          v9 = sub_2394B6EC4(&v13, v22, *(a1 + 24));
          if (v9)
          {
            goto LABEL_22;
          }

          HIWORD(v26) = HIWORD(v40);
          v9 = sub_2394B7060(&v13, v22, *(a1 + 24));
          if (v9)
          {
            goto LABEL_22;
          }
        }

        LOWORD(v57) = v57 + 1;
        v9 = sub_2394B7060(&v45, v54, *(a1 + 24));
      }
    }

    else
    {
      if (WORD1(v70) >= *(a1 + 8))
      {
        v10 = 0x41B00000000;
        LODWORD(v9) = 31;
        goto LABEL_23;
      }

      LOWORD(v40) = a3;
      HIWORD(v40) = a4;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = &unk_284BBCA18;
      v38 = &unk_284BBCA80;
      v39 = 0;
      v41 = a2;
      v42 = 0;
      v43 = 0;
      v44 = 1;
      v9 = sub_2394B7060(&v29, &v38, *(a1 + 24));
      if (!v9)
      {
        *v55 = a3;
        v55[2] = 0;
        v56 = a4;
        LOWORD(v57) = 1;
        HIDWORD(v57) = v70;
        v9 = sub_2394B7060(&v45, v54, *(a1 + 24));
        if (!v9)
        {
          LODWORD(v70) = __PAIR32__(WORD1(v70), *v55) + 0x10000;
          v9 = sub_2394AFA10(&v59, *(a1 + 24));
          if (!v9)
          {
            v9 = *(a1 + 16);
            if (!v9)
            {
              v10 = 0;
              goto LABEL_23;
            }

            (*(*v9 + 16))(v9, a2, v55);
            goto LABEL_6;
          }
        }
      }
    }

LABEL_22:
    v10 = v9 & 0xFFFFFFFF00000000;
    goto LABEL_23;
  }

  result = 0x40F000000ACLL;
LABEL_24:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B07EC(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a1[3];
  if (v5)
  {
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = &unk_284BBC810;
    v68[0] = &unk_284BBC878;
    v68[1] = 0;
    v69 = a2;
    v70 = 0;
    v71 = 0xFFFF;
    v72 = 0;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v54 = 0;
    memset(v55, 0, sizeof(v55));
    v44 = &unk_284BBC928;
    v53[0] = &unk_284BBC990;
    v53[1] = 0;
    v56 = -1;
    v57 = 0;
    v58 = 1;
    v39 = -65536;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = &unk_284BBCA18;
    v38[0] = &unk_284BBCA80;
    v38[1] = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 1;
    v9 = sub_2394B6EC4(&v59, v68, v5);
    if (v9)
    {
      goto LABEL_3;
    }

    if (sub_2394AED2C(&v44, a1[3], &v59, a3))
    {
      if (sub_2394B024C(&v29, a1[3], &v59, &v44, a4))
      {
        sub_2394B6C54(&v29, v38, a1[3]);
        if (v43 == 1)
        {
          v56 = HIWORD(v41);
        }

        else
        {
          v23 = v54;
          v24 = v42;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v13 = &unk_284BBCA18;
          v22[0] = &unk_284BBCA80;
          v22[1] = 0;
          v25 = a2;
          v26 = 0;
          v27 = 0;
          v28 = 1;
          v9 = sub_2394B6EC4(&v13, v22, a1[3]);
          if (v9)
          {
            goto LABEL_3;
          }

          HIWORD(v26) = HIWORD(v41);
          v9 = sub_2394B7060(&v13, v22, a1[3]);
          if (v9)
          {
            goto LABEL_3;
          }
        }

        if (v57 < 2u)
        {
          v9 = (*(*a1 + 72))(a1, a2, WORD1(v57));
        }

        else
        {
          LOWORD(v57) = v57 - 1;
          v9 = sub_2394B7060(&v44, v53, a1[3]);
        }

LABEL_3:
        v10 = v9 & 0xFFFFFFFF00000000;
LABEL_14:
        result = v10 | v9;
        goto LABEL_15;
      }

      v10 = 0x45100000000;
    }

    else
    {
      v10 = 0x45000000000;
    }

    LODWORD(v9) = 216;
    goto LABEL_14;
  }

  result = 0x449000000ACLL;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B0B84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (v4)
  {
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = &unk_284BBC810;
    v56[0] = &unk_284BBC878;
    v56[1] = 0;
    v57 = a2;
    v58 = 0;
    v59 = 0xFFFF;
    v60 = 0;
    v7 = sub_2394B6EC4(&v47, v56, v4);
    v8 = v7;
    if (v7)
    {
LABEL_3:
      v9 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v39 = v58;
      v41 = 0;
      v40 = 0;
      v42 = 0;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = &unk_284BBC928;
      v38[0] = &unk_284BBC990;
      v38[1] = 0;
      v43 = a2;
      v44 = -1;
      v45 = 0;
      v46 = 1;
      v24 = -65536;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = &unk_284BBCA18;
      v22 = &unk_284BBCA80;
      v23 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 1;
      if (WORD1(v58))
      {
        v11 = 0;
        while (!sub_2394B6EC4(&v29, v38, a1[3]))
        {
          if (sub_2394B024C(&v13, a1[3], &v47, &v29, a3))
          {
            v7 = (*(*a1 + 96))(a1, a2, v39, a3);
            v8 = v7;
            if (v7)
            {
              goto LABEL_3;
            }
          }

          v39 = WORD2(v45);
          if (++v11 >= WORD1(v58))
          {
            break;
          }
        }
      }

      v9 = 0;
      v8 = 0;
    }

    result = v8 | v9;
  }

  else
  {
    result = 0x470000000ACLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394B0E44(uint64_t a1, char a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B0E88((a1 + 40), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B0E88(unint64_t *a1, uint64_t a2, char *a3)
{
  v6 = sub_2393D52C4(0x28uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B0F24(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B0F24(uint64_t a1, uint64_t a2, char a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC498;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = &unk_284BBC810;
  v16[0] = &unk_284BBC878;
  v16[1] = 0;
  v17 = a3;
  v18 = 0;
  v19 = 0xFFFF;
  v20 = 0;
  if (!sub_2394B6EC4(&v7, v16, *(a2 + 24)))
  {
    *(a1 + 18) = v18;
    v4 = WORD1(v18);
    *(a1 + 24) = 0;
    *(a1 + 32) = v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL sub_2394B104C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    v6 = 0;
  }

  else
  {
    v4 = *(a1 + 16);
    v19 = *(a1 + 18);
    v20[1] = 0;
    v20[0] = 0;
    v21 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = &unk_284BBC928;
    v18[0] = &unk_284BBC990;
    v18[1] = 0;
    v22 = v4;
    v23 = -1;
    v24 = 0;
    v25 = 1;
    v5 = sub_2394B6EC4(&v9, v18, *(*(a1 + 8) + 24));
    v6 = v5 == 0;
    if (!v5)
    {
      ++*(a1 + 24);
      *(a1 + 18) = WORD2(v24);
      *a2 = v19;
      strncpy((a2 + 2), v20, 0x11uLL);
      *(a2 + 18) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2394B11B4(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_2394B1264(uint64_t a1, char a2, int a3)
{
  v5 = a3;
  v4 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B12B0((a1 + 152), a1, &v4, &v5);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B12B0(unint64_t *a1, uint64_t a2, char *a3, int *a4)
{
  v8 = sub_2393D52C4(0x48uLL);
  v9 = v8;
  if (v8)
  {
    sub_2394B135C(v8, a2, *a3, *a4);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v9;
      v10[1] = a1 + 2;
      v10[2] = 0;
      v11 = a1[4];
      v10[2] = v11;
      *(v11 + 8) = v10;
      a1[4] = v10;
      v12 = a1[1];
      v13 = *a1 + 1;
      *a1 = v13;
      if (v13 > v12)
      {
        a1[1] = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_2394B135C(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v45 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC4D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = &unk_284BBC810;
  v40[0] = &unk_284BBC878;
  v40[1] = 0;
  v41 = a3;
  v42 = 0;
  v43 = 0xFFFF;
  v44 = 0;
  if (!sub_2394B6EC4(&v31, v40, *(a2 + 24)))
  {
    if ((a4 & 0x10000) != 0)
    {
      v23 = a4;
      v25 = 0;
      v24 = 0;
      v26 = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = &unk_284BBC928;
      v21 = &unk_284BBC990;
      v22 = 0;
      v27 = a3;
      v28 = -1;
      v29 = 0;
      v30 = 1;
      if (sub_2394B6EC4(&v12, &v21, *(a2 + 24)))
      {
        goto LABEL_2;
      }

      *(a1 + 20) = a4;
      *(a1 + 18) = a4;
      v11 = 1;
    }

    else
    {
      v23 = v42;
      v25 = 0;
      v24 = 0;
      v26 = 0;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = &unk_284BBC928;
      v21 = &unk_284BBC990;
      v22 = 0;
      v27 = a3;
      v28 = -1;
      v29 = 0;
      v30 = 1;
      if (sub_2394B6EC4(&v12, &v21, *(a2 + 24)))
      {
        goto LABEL_2;
      }

      v10 = v42;
      *(a1 + 20) = v42;
      *(a1 + 18) = v10;
      v11 = WORD1(v42);
    }

    *(a1 + 32) = v11;
    *(a1 + 40) = v28;
    *(a1 + 56) = v29;
  }

LABEL_2:
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2394B15F4(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v36 = *(a1 + 18);
  v38 = 0;
  v37 = 0;
  v39 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = &unk_284BBC928;
  v35[0] = &unk_284BBC990;
  v35[1] = 0;
  v40 = v1;
  v41 = -1;
  v42 = 0;
  v43 = 1;
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if (sub_2394B6EC4(&v26, v35, *(*(a1 + 8) + 24)))
      {
        break;
      }

      v5 = *(a1 + 16);
      v20 = v36;
      v21 = v41;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = &unk_284BBCA18;
      v19[0] = &unk_284BBCA80;
      v19[1] = 0;
      v22 = v5;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      if (v42)
      {
        v6 = 0;
        do
        {
          if (sub_2394B6EC4(&v10, v19, *(*(a1 + 8) + 24)))
          {
            break;
          }

          v21 = HIWORD(v23);
          ++v6;
        }

        while (v6 < v42);
        v3 += v6;
      }

      v36 = WORD2(v42);
    }

    while (v4++ < *(a1 + 32));
  }

  else
  {
    v3 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL sub_2394B1814(uint64_t a1, _WORD *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
LABEL_10:
    v6 = 0;
  }

  else
  {
    v3 = *(a1 + 20);
    while (1)
    {
      v4 = *(a1 + 16);
      v42 = v3;
      v44 = 0;
      v43 = 0;
      v45 = 0;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41[0] = &unk_284BBC990;
      v41[1] = 0;
      v32 = &unk_284BBC928;
      v46 = v4;
      v47 = -1;
      v48 = 0;
      v49 = 1;
      v5 = sub_2394B6EC4(&v32, v41, *(*(a1 + 8) + 24));
      v6 = v5 == 0;
      if (v5)
      {
        *(a1 + 24) = *(a1 + 32);
        goto LABEL_13;
      }

      if (*(a1 + 64))
      {
        v7 = 0;
        *(a1 + 40) = v47;
        v8 = v48;
        *(a1 + 48) = 0;
        *(a1 + 56) = v8;
        *(a1 + 64) = 0;
      }

      else
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
      }

      if (v7 < v8)
      {
        v9 = *(a1 + 16);
        v10 = *(a1 + 40);
        v26 = *(a1 + 20);
        v27 = v10;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = &unk_284BBCA18;
        v25[0] = &unk_284BBCA80;
        v25[1] = 0;
        v28 = v9;
        v29 = 0;
        v30 = 0;
        v31 = 1;
        if (!sub_2394B6EC4(&v16, v25, *(*(a1 + 8) + 24)))
        {
          break;
        }
      }

      v3 = WORD2(v48);
      *(a1 + 20) = WORD2(v48);
      v11 = *(a1 + 32);
      v12 = *(a1 + 24) + 1;
      *(a1 + 24) = v12;
      *(a1 + 64) = 1;
      if (v12 >= v11)
      {
        goto LABEL_10;
      }
    }

    *a2 = v42;
    a2[1] = v27;
    *(a1 + 40) = HIWORD(v29);
    ++*(a1 + 48);
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_2394B1A98(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394B1B48(uint64_t a1, char a2, uint64_t a3, unsigned __int16 *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = &unk_284BBC810;
    v55[0] = &unk_284BBC878;
    v55[1] = 0;
    v56 = a2;
    v57 = 0;
    v58 = 0xFFFF;
    v59 = 0;
    v43 = 0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39[1] = 0;
    v40 = 0;
    v41 = 0;
    v42 = 1;
    v30 = &unk_284BBCB08;
    v39[0] = &unk_284BBCB70;
    v44 = a2;
    v45 = 0;
    v9 = sub_2394B6EC4(&v46, v55, v5);
    if (v9 && v9 != 216)
    {
      goto LABEL_10;
    }

    if (sub_2394B1E9C(&v30, *(a1 + 24), &v46, a4) && WORD1(v40) != a3)
    {
      v10 = 0x55200000000;
      LODWORD(v9) = 26;
LABEL_11:
      result = v9 | v10;
      goto LABEL_12;
    }

    v12 = sub_2394B1FA0(&v30, *(a1 + 24), &v46, a3);
    v45 = *a4;
    if (v12)
    {
      v9 = sub_2394B7060(&v30, v39, *(a1 + 24));
    }

    else
    {
      if (HIWORD(v57) != a3)
      {
        v10 = 0x55F00000000;
        LODWORD(v9) = 47;
        goto LABEL_11;
      }

      if (HIWORD(v57) >= *(a1 + 8))
      {
        v10 = 0x56000000000;
        LODWORD(v9) = 31;
        goto LABEL_11;
      }

      WORD2(v40) = 0;
      v9 = sub_2394B7060(&v30, v39, *(a1 + 24));
      if (v9)
      {
        goto LABEL_10;
      }

      if (v42 == 1)
      {
        WORD2(v57) = v40;
      }

      else
      {
        v27 = 0;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v24 = HIWORD(v40);
        v25 = 0;
        v26 = 1;
        v14 = &unk_284BBCB08;
        v23[0] = &unk_284BBCB70;
        v23[1] = 0;
        v28 = a2;
        v29 = 0;
        v9 = sub_2394B6EC4(&v14, v23, *(a1 + 24));
        if (v9)
        {
          goto LABEL_10;
        }

        WORD1(v25) = v40;
        v9 = sub_2394B7060(&v14, v23, *(a1 + 24));
        if (v9)
        {
          goto LABEL_10;
        }
      }

      ++HIWORD(v57);
      v9 = sub_2394AFA10(&v46, *(a1 + 24));
    }

LABEL_10:
    v10 = v9 & 0xFFFFFFFF00000000;
    goto LABEL_11;
  }

  result = 0x547000000ACLL;
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B1E9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  *(a1 + 168) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 158);
  *(a1 + 160) = 0;
  *(a1 + 154) = 0;
  v5 = 1;
  *(a1 + 162) = 1;
  if (*(a3 + 160))
  {
    while (1)
    {
      if ((*(*a1 + 40))(a1, a2))
      {
        LOWORD(v10) = *(a1 + 160);
LABEL_10:
        v5 = v10 + 1;
        goto LABEL_11;
      }

      if (*(a1 + 170) == *a4 && *(a1 + 172) == a4[1])
      {
        return 1;
      }

      v9 = *(a1 + 152);
      v10 = *(a1 + 160);
      if (v9 > v10)
      {
        LOWORD(v10) = *(a1 + 152);
      }

      *(a1 + 160) = v10;
      *(a1 + 162) = 0;
      *(a1 + 158) = v9;
      *(a1 + 152) = *(a1 + 156);
      v11 = *(a1 + 154) + 1;
      *(a1 + 154) = v11;
      if (*(a3 + 160) <= v11)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_11:
    result = 0;
    *(a1 + 152) = v5;
  }

  return result;
}

uint64_t sub_2394B1FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 168) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 158);
  *(a1 + 160) = 0;
  *(a1 + 154) = 0;
  v5 = 1;
  *(a1 + 162) = 1;
  if (*(a3 + 160))
  {
    while (1)
    {
      if ((*(*a1 + 40))(a1, a2))
      {
        LOWORD(v11) = *(a1 + 160);
LABEL_9:
        v5 = v11 + 1;
        goto LABEL_10;
      }

      v9 = *(a1 + 154);
      if (v9 == a4)
      {
        return 1;
      }

      v10 = *(a1 + 152);
      v11 = *(a1 + 160);
      if (v10 > v11)
      {
        LOWORD(v11) = *(a1 + 152);
      }

      *(a1 + 160) = v11;
      *(a1 + 162) = 0;
      *(a1 + 158) = v10;
      *(a1 + 152) = *(a1 + 156);
      v12 = v9 + 1;
      *(a1 + 154) = v12;
      if (*(a3 + 160) <= v12)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_10:
    result = 0;
    *(a1 + 152) = v5;
  }

  return result;
}

uint64_t sub_2394B208C(uint64_t a1, char a2, uint64_t a3, _DWORD *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = &unk_284BBC810;
    v38[0] = &unk_284BBC878;
    v38[1] = 0;
    v39 = a2;
    v40 = 0;
    v41 = 0xFFFF;
    v42 = 0;
    v26 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v23 = 1;
    v24 = 0;
    v25 = 1;
    v12 = &unk_284BBCB08;
    v21 = &unk_284BBCB70;
    v22 = 0;
    v27 = 0;
    v28 = 0;
    v8 = sub_2394B6EC4(&v29, v38, v5);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else if (sub_2394B1FA0(&v12, *(a1 + 24), &v29, a3))
    {
      LODWORD(v8) = 0;
      v9 = 0;
      *a4 = v28;
    }

    else
    {
      v9 = 0x57F00000000;
      LODWORD(v8) = 216;
    }

    result = v9 | v8;
  }

  else
  {
    result = 0x579000000ACLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2394B2268(uint64_t a1)
{
  *(a1 + 164) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 154) = 0;
  *(a1 + 162) = 1;
  *a1 = &unk_284BBCB08;
  *(a1 + 136) = &unk_284BBCB70;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 170) = 0;
  return result;
}

uint64_t sub_2394B22E8(uint64_t a1, char a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (!v4)
  {
    result = 0x589000000ACLL;
    goto LABEL_6;
  }

  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = &unk_284BBC810;
  v52[0] = &unk_284BBC878;
  v52[1] = 0;
  v53 = a2;
  v54 = 0;
  v55 = 0xFFFF;
  v56 = 0;
  v40 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v27 = &unk_284BBCB08;
  v36[0] = &unk_284BBCB70;
  v36[1] = 0;
  v41 = 0;
  v42 = 0;
  v7 = sub_2394B6EC4(&v43, v52, v4);
  if (!v7)
  {
    if (!sub_2394B1FA0(&v27, *(a1 + 24), &v43, a3))
    {
      v8 = 0x58F00000000;
      LODWORD(v7) = 216;
      goto LABEL_4;
    }

    v7 = sub_2394B6C54(&v27, v36, *(a1 + 24));
    if (!v7)
    {
      if (v39 == 1)
      {
        WORD2(v54) = WORD1(v38);
LABEL_11:
        if (HIWORD(v54))
        {
          --HIWORD(v54);
        }

        v7 = sub_2394AFA10(&v43, *(a1 + 24));
        goto LABEL_3;
      }

      v24 = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v21 = WORD2(v38);
      v22 = 0;
      v23 = 1;
      v11 = &unk_284BBCB08;
      v20[0] = &unk_284BBCB70;
      v20[1] = 0;
      v25 = a2;
      v26 = 0;
      v7 = sub_2394B6EC4(&v11, v20, *(a1 + 24));
      if (!v7)
      {
        WORD1(v22) = WORD1(v38);
        v7 = sub_2394B7060(&v11, v20, *(a1 + 24));
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

LABEL_3:
  v8 = v7 & 0xFFFFFFFF00000000;
LABEL_4:
  result = v8 | v7;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394B25AC(uint64_t a1, char a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = &unk_284BBC810;
    v33[0] = &unk_284BBC878;
    v33[1] = 0;
    v34 = a2;
    v35 = 0;
    v36 = 0xFFFF;
    v37 = 0;
    if (sub_2394B6EC4(&v24, v33, v2))
    {
      result = 0x5AC00000071;
    }

    else
    {
      v21 = 0;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v18 = WORD2(v35);
      v19 = 0;
      v20 = 1;
      v8 = &unk_284BBCB08;
      v17[0] = &unk_284BBCB70;
      v17[1] = 0;
      v22 = a2;
      v23 = 0;
      if (HIWORD(v35))
      {
        v6 = 0;
        do
        {
          if (sub_2394B6EC4(&v8, v17, *(a1 + 24)))
          {
            break;
          }

          sub_2394B6C54(&v8, v17, *(a1 + 24));
          v18 = WORD1(v19);
          ++v6;
        }

        while (v6 < HIWORD(v35));
      }

      HIDWORD(v35) = 0;
      result = sub_2394AFA10(&v24, *(a1 + 24));
    }
  }

  else
  {
    result = 0x5A9000000ACLL;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394B27A0(uint64_t a1, char a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B27E4((a1 + 96), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B27E4(unint64_t *a1, uint64_t a2, char *a3)
{
  v6 = sub_2393D52C4(0x28uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B2880(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B2880(uint64_t a1, uint64_t a2, char a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC508;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = &unk_284BBC810;
  v16[0] = &unk_284BBC878;
  v16[1] = 0;
  v17 = a3;
  v18 = 0;
  v19 = 0xFFFF;
  v20 = 0;
  if (!sub_2394B6EC4(&v7, v16, *(a2 + 24)))
  {
    *(a1 + 18) = WORD2(v18);
    v4 = HIWORD(v18);
    *(a1 + 24) = 0;
    *(a1 + 32) = v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL sub_2394B29A8(uint64_t a1, _DWORD *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    result = 0;
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 18);
    v22 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v19 = v5;
    v20 = 0;
    v21 = 1;
    v9 = &unk_284BBCB08;
    v18[0] = &unk_284BBCB70;
    v18[1] = 0;
    v23 = v4;
    v24 = 0;
    v6 = sub_2394B6EC4(&v9, v18, *(*(a1 + 8) + 24));
    result = v6 == 0;
    if (!v6)
    {
      ++*(a1 + 24);
      *(a1 + 18) = WORD1(v20);
      *a2 = v24;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394B2ADC(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394B2B8C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = &unk_284BBC810;
    v50[0] = &unk_284BBC878;
    v50[1] = 0;
    v51 = a2;
    v52 = 0;
    v53 = 0xFFFF;
    v54 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v17 = &unk_284BBCC10;
    v26[0] = &unk_284BBCC78;
    v26[1] = 0;
    v27 = 0;
    v28 = -1;
    v29 = 1;
    v30 = 0x10000;
    v8 = sub_2394B6EC4(&v41, v50, v5);
    if (!v8 || v8 == 216)
    {
      v9 = sub_2394B2E78(&v17, *(a1 + 24), &v41, *(a4 + 36));
      v30 = *(a4 + 18);
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      v31 = *a4;
      *(&v34 + 1) = a4[3];
      *(&v37 + 1) = a4[6];
      if (HIBYTE(v30))
      {
        v10 = 0;
        v11 = &v31;
        v12 = (a4 + 1);
        while (1)
        {
          sub_238DB6950(v16, v12, 16);
          v8 = sub_2393F3628(v16, a3, v11);
          if (v8)
          {
            break;
          }

          ++v10;
          v11 += 6;
          v12 += 24;
          if (v10 >= *(a4 + 75))
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        if (v9)
        {
          v8 = sub_2394B7060(&v17, v26, *(a1 + 24));
        }

        else
        {
          if (HIWORD(v53) >= *(a1 + 10))
          {
            v14 = 0x61800000000;
            LODWORD(v8) = 31;
            goto LABEL_15;
          }

          LOWORD(v28) = v53;
          v8 = sub_2394B7060(&v17, v26, *(a1 + 24));
          if (!v8)
          {
            ++HIWORD(v53);
            LOWORD(v53) = *(a4 + 36);
            v8 = sub_2394AFA10(&v41, *(a1 + 24));
          }
        }
      }
    }

    v14 = v8 & 0xFFFFFFFF00000000;
LABEL_15:
    result = v8 | v14;
    goto LABEL_16;
  }

  result = 0x5F5000000ACLL;
LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B2E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 152) = *(a3 + 152);
  *(a1 + 160) = *(a3 + 162);
  *(a1 + 158) = 1;
  if (!*(a3 + 164))
  {
    return 0;
  }

  v8 = 1;
  while (1)
  {
    if ((*(*a1 + 40))(a1, a2))
    {
      return 0;
    }

    v9 = *(a1 + 160);
    if (v9 == a4)
    {
      break;
    }

    *(a1 + 158) = 0;
    *(a1 + 156) = v9;
    *(a1 + 160) = *(a1 + 154);
    if (v8++ >= *(a3 + 164))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2394B2F50(uint64_t a1, char a2, unsigned int a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 24);
  if (v5)
  {
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = &unk_284BBC810;
    v41[0] = &unk_284BBC878;
    v41[1] = 0;
    v42 = a2;
    v43 = 0;
    v44 = 0xFFFF;
    v45 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = &unk_284BBCC10;
    v23 = &unk_284BBCC78;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v27 = 1;
    v28 = 0x10000;
    v8 = sub_2394B6EC4(&v32, v41, v5);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else if (sub_2394B2E78(&v14, *(a1 + 24), &v32, a3))
    {
      for (i = 0; i != 72; i += 24)
      {
        *(a4 + i) = 0;
        sub_2393F9144(a4 + i + 8, 16);
      }

      LODWORD(v8) = 0;
      v9 = 0;
      *(a4 + 72) = v28;
      v12 = v30;
      *a4 = v29;
      *(a4 + 24) = v12;
      *(a4 + 48) = v31;
    }

    else
    {
      v9 = 0x62B00000000;
      LODWORD(v8) = 216;
    }

    result = v9 | v8;
  }

  else
  {
    result = 0x625000000ACLL;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B314C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  if (!v4)
  {
    result = 0x63C000000ACLL;
    goto LABEL_6;
  }

  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = &unk_284BBC810;
  v52[0] = &unk_284BBC878;
  v52[1] = 0;
  v53 = a2;
  v54 = 0;
  v55 = 0xFFFF;
  v56 = 0;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = &unk_284BBCC10;
  v38[0] = &unk_284BBCC78;
  v38[1] = 0;
  v39 = 0;
  v40 = -1;
  v41 = 1;
  v42 = 0x10000;
  v7 = sub_2394B6EC4(&v43, v52, v4);
  if (!v7)
  {
    if (!sub_2394B2E78(&v29, a1[3], &v43, a3))
    {
      v8 = 0x64200000000;
      LODWORD(v7) = 216;
      goto LABEL_4;
    }

    v7 = sub_2394B6C54(&v29, v38, a1[3]);
    if (!v7)
    {
      if (v41 == 1)
      {
        LOWORD(v55) = v40;
        goto LABEL_11;
      }

      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = &unk_284BBCC10;
      v23[0] = &unk_284BBCC78;
      v23[1] = 0;
      v24 = a2;
      v25 = -1;
      v26 = 1;
      v28 = 1;
      v27 = HIWORD(v40);
      v7 = sub_2394B6EC4(&v14, v23, a1[3]);
      if (!v7)
      {
        LOWORD(v25) = v40;
        v7 = sub_2394B7060(&v14, v23, a1[3]);
        if (!v7)
        {
LABEL_11:
          if (HIWORD(v55))
          {
            --HIWORD(v55);
          }

          v7 = sub_2394AFA10(&v43, a1[3]);
          if (!v7)
          {
            sub_2394B2268(&v14);
            v11 = HIWORD(v54);
            if (HIWORD(v54))
            {
              v12 = 0;
              do
              {
                sub_2394B6EC4(&v43, v52, a1[3]);
                v13 = sub_2394B34A4(&v14, a1[3], &v43, a3);
                if (v13 == -1)
                {
                  break;
                }

                (*(*a1 + 144))(a1, a2, v13);
                ++v12;
              }

              while (v12 < v11);
            }

            LODWORD(v7) = 0;
            v8 = 0;
            goto LABEL_4;
          }
        }
      }
    }
  }

  v8 = v7 & 0xFFFFFFFF00000000;
LABEL_4:
  result = v8 | v7;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B34A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 168) = *(a3 + 152);
  *(a1 + 152) = *(a3 + 158);
  *(a1 + 160) = 0;
  *(a1 + 154) = 0;
  v5 = 1;
  *(a1 + 162) = 1;
  if (*(a3 + 160))
  {
    while (1)
    {
      if ((*(*a1 + 40))(a1, a2))
      {
        LOWORD(v10) = *(a1 + 160);
LABEL_9:
        v5 = v10 + 1;
        goto LABEL_10;
      }

      if (*(a1 + 172) == a4)
      {
        return *(a1 + 154);
      }

      v9 = *(a1 + 152);
      v10 = *(a1 + 160);
      if (v9 > v10)
      {
        LOWORD(v10) = *(a1 + 152);
      }

      *(a1 + 160) = v10;
      *(a1 + 162) = 0;
      *(a1 + 158) = v9;
      *(a1 + 152) = *(a1 + 156);
      v11 = *(a1 + 154) + 1;
      *(a1 + 154) = v11;
      if (*(a3 + 160) <= v11)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_10:
    *(a1 + 152) = v5;
    return -1;
  }
}

void *sub_2394B3594(uint64_t a1, char a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B35D8((a1 + 208), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B35D8(unint64_t *a1, uint64_t a2, char *a3)
{
  v6 = sub_2393D52C4(0x28uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B3674(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B3674(uint64_t a1, uint64_t a2, char a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC540;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = &unk_284BBC810;
  v16[0] = &unk_284BBC878;
  v16[1] = 0;
  v17 = a3;
  v18 = 0;
  v19 = 0xFFFF;
  v20 = 0;
  if (!sub_2394B6EC4(&v7, v16, *(a2 + 24)))
  {
    *(a1 + 18) = v19;
    v4 = HIWORD(v19);
    *(a1 + 24) = 0;
    *(a1 + 32) = v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL sub_2394B379C(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) >= *(a1 + 32))
  {
    v7 = 0;
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 18);
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = &unk_284BBCC10;
    v21[0] = &unk_284BBCC78;
    v21[1] = 0;
    v22 = v4;
    v23 = -1;
    v24 = 1;
    HIWORD(v25) = 1;
    LOWORD(v25) = v5;
    v6 = sub_2394B6EC4(&v12, v21, *(*(a1 + 8) + 24));
    v7 = v6 == 0;
    if (!v6)
    {
      v8 = 0;
      ++*(a1 + 24);
      *(a1 + 18) = v23;
      do
      {
        *(a2 + v8) = 0;
        sub_2393F9144(a2 + v8 + 8, 16);
        v8 += 24;
      }

      while (v8 != 72);
      *(a2 + 72) = v25;
      v9 = v27;
      *a2 = v26;
      *(a2 + 24) = v9;
      *(a2 + 48) = v28;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_2394B3924(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

unint64_t sub_2394B39D4(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = &unk_284BBC810;
  v37[0] = &unk_284BBC878;
  v37[1] = 0;
  v38 = a2;
  v39 = 0;
  v40 = 0xFFFF;
  v41 = 0;
  result = sub_2394B6EC4(&v28, v37, a1[3]);
  if (result == 216 || !result)
  {
    v5 = HIWORD(v39);
    if (HIWORD(v39))
    {
      v6 = 0;
      v7 = -1;
      do
      {
        (*(*a1 + 144))(a1, a2, v5 + v7);
        ++v6;
        v5 = HIWORD(v39);
        --v7;
      }

      while (v6 < HIWORD(v39));
    }

    v8 = WORD1(v39);
    if (WORD1(v39))
    {
      v9 = 0;
      v10 = -1;
      do
      {
        (*(*a1 + 72))(a1, a2, v8 + v10);
        ++v9;
        v8 = WORD1(v39);
        --v10;
      }

      while (v9 < WORD1(v39));
    }

    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = &unk_284BBCC10;
    v22[0] = &unk_284BBCC78;
    v22[1] = 0;
    v23 = a2;
    v24 = -1;
    v25 = 1;
    v27 = 1;
    v26 = v40;
    if (HIWORD(v40))
    {
      v11 = 0;
      do
      {
        if (sub_2394B6EC4(&v13, v22, a1[3]))
        {
          break;
        }

        (*(*a1 + 184))(a1, a2, v26);
        v26 = v24;
        ++v11;
      }

      while (v11 < HIWORD(v40));
    }

    result = sub_2394B3C5C(&v28, a1[3]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394B3C5C(uint64_t a1, uint64_t a2)
{
  result = sub_2394B6738(a1, a2);
  if (!result)
  {

    return sub_2394B6C54(a1, a1 + 136, a2);
  }

  return result;
}

char *sub_2394B3CB0(uint64_t a1, char a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = &unk_284BBC810;
  v51[0] = &unk_284BBC878;
  v51[1] = 0;
  v52 = a2;
  v53 = 0;
  v54 = 0xFFFF;
  v55 = 0;
  v5 = sub_2394B6EC4(&v42, v51, *(a1 + 24));
  result = 0;
  if (!v5)
  {
    v39 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v36 = WORD2(v53);
    v37 = 0;
    v38 = 1;
    v26 = &unk_284BBCB08;
    v35[0] = &unk_284BBCB70;
    v35[1] = 0;
    v40 = v52;
    v41 = 0;
    if (HIWORD(v53))
    {
      v7 = 0;
      while (!sub_2394B6EC4(&v26, v35, *(a1 + 24)))
      {
        if (HIWORD(v41))
        {
          v8 = v41 == a3;
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          v19 = 0u;
          v18 = 0u;
          v17 = 0u;
          v16 = 0u;
          v15 = 0u;
          v14 = 0u;
          v13 = 0u;
          v12 = 0u;
          v11 = &unk_284BBCC10;
          v20 = &unk_284BBCC78;
          v21 = 0;
          v22 = 0;
          v23 = -1;
          v24 = 1;
          v25 = 0x10000;
          if (!sub_2394B2E78(&v11, *(a1 + 24), &v42, HIWORD(v41)))
          {
            break;
          }

          if (HIBYTE(v25) - 1 <= 2)
          {
            v10 = (&v11 + qword_2395D7300[(HIBYTE(v25) - 1)]);
            result = sub_2394B3F68((a1 + 320), a1, (v10 + 5), v10 + 4, (v10 + 13));
            goto LABEL_14;
          }
        }

        ++v7;
        v36 = WORD1(v37);
        if (v7 >= HIWORD(v53))
        {
          break;
        }
      }
    }

    result = 0;
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2394B3F68(unint64_t *a1, uint64_t a2, uint64_t a3, __int16 *a4, uint64_t a5)
{
  v10 = sub_2393D52C4(0x38uLL);
  v11 = v10;
  if (v10)
  {
    v12 = *a4;
    *v10 = &unk_284BBC6D0;
    *(v10 + 1) = a2;
    *(v10 + 8) = 0;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    sub_2394B4D68(v10, a3, v12, a5);
    v13 = sub_2393D52C4(0x18uLL);
    if (v13)
    {
      *v13 = v11;
      v13[1] = a1 + 2;
      v13[2] = 0;
      v14 = a1[4];
      v13[2] = v14;
      *(v14 + 8) = v13;
      a1[4] = v13;
      v15 = a1[1];
      v16 = *a1 + 1;
      *a1 = v16;
      if (v16 > v15)
      {
        a1[1] = v16;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2394B4044(uint64_t a1, char a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v51 = 0u;
  v50 = 0u;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = &unk_284BBC810;
  v53[0] = &unk_284BBC878;
  v53[1] = 0;
  v54 = a2;
  v55 = 0;
  v56 = 0xFFFF;
  v57 = 0;
  if (sub_2394B6EC4(&v44, v53, *(a1 + 24)))
  {
    result = 0x6EF000000D8;
  }

  else
  {
    v41 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v38 = WORD2(v55);
    v39 = 0;
    v40 = 1;
    *&v27[134] = &unk_284BBCB08;
    v36 = &unk_284BBCB70;
    v37 = 0;
    v42 = v54;
    v43 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = &unk_284BBCC10;
    v21 = &unk_284BBCC78;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v25 = 1;
    v26 = 0x10000;
    if (sub_2394B2E78(&v12, *(a1 + 24), &v44, 0))
    {
      if (v26)
      {
        v6 = 0x6F800000000;
        v7 = 172;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        *(a3 + 72) = 0;
        *(a3 + 74) = HIWORD(v26);
        v10 = v27;
        do
        {
          *(a3 + v8) = 0;
          sub_2393F9144(a3 + v8 + 8, 16);
          if (v9 < HIBYTE(v26))
          {
            *(a3 + v8) = *(v10 - 10);
            *(a3 + v8 + 8) = *v10;
          }

          ++v9;
          v8 += 24;
          v10 += 3;
        }

        while (v8 != 72);
        v7 = 0;
        v6 = 0;
      }
    }

    else
    {
      v6 = 0x6F500000000;
      v7 = 216;
    }

    result = v6 | v7;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394B42F4(void *a1)
{
  v2 = *(a1[1] + 32);
  (*(*v2 + 40))(v2, a1 + 3);
  (*(*v2 + 40))(v2, a1 + 5);
  v3 = a1[1] + 320;

  sub_2394B4390(v3, a1);
}

void sub_2394B4390(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (*(*a2 + 8))(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_2394B450C(uint64_t a1, __int16 a2)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    return sub_2394B4550((a1 + 264), a1, &v3);
  }

  else
  {
    return 0;
  }
}

void *sub_2394B4550(unint64_t *a1, uint64_t a2, __int16 *a3)
{
  v6 = sub_2393D52C4(0x60uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B45EC(v6, a2, *a3);
    v8 = sub_2393D52C4(0x18uLL);
    if (v8)
    {
      *v8 = v7;
      v8[1] = a1 + 2;
      v8[2] = 0;
      v9 = a1[4];
      v8[2] = v9;
      *(v9 + 8) = v8;
      a1[4] = v8;
      v10 = a1[1];
      v11 = *a1 + 1;
      *a1 = v11;
      if (v11 > v10)
      {
        a1[1] = v11;
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2394B45EC(uint64_t a1, uint64_t a2, __int16 a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBC578;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = &unk_284BBC6D0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0;
  v12 = 0;
  v7 = &unk_284BBCCD0;
  v10[0] = &unk_284BBCD38;
  v10[1] = 0;
  if (!sub_2394B6D28(&v7, v10, *(a2 + 24)))
  {
    v4 = v11;
    *(a1 + 18) = v11;
    *(a1 + 19) = v4;
    *(a1 + 20) = 0;
    *(a1 + 22) = v12;
    *(a1 + 26) = 0;
    *(a1 + 32) = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2394B4730(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 18);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52[1] = 0;
  v43 = &unk_284BBC810;
  v52[0] = &unk_284BBC878;
  v53 = v1;
  v54 = 0;
  v55 = 0xFFFF;
  v56 = 0;
  if (*(a1 + 22))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (sub_2394B6EC4(&v43, v52, *(*(a1 + 8) + 24)))
      {
        break;
      }

      v40 = 0;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v37 = WORD2(v54);
      v38 = 0;
      v39 = 1;
      v27 = &unk_284BBCB08;
      v36[0] = &unk_284BBCB70;
      v36[1] = 0;
      v41 = v53;
      v42 = 0;
      if (HIWORD(v54))
      {
        v5 = 0;
        do
        {
          if (sub_2394B6EC4(&v27, v36, *(*(a1 + 8) + 24)))
          {
            break;
          }

          v19 = 0u;
          v18 = 0u;
          v17 = 0u;
          v16 = 0u;
          v15 = 0u;
          v14 = 0u;
          v13 = 0u;
          v12 = 0u;
          v11 = &unk_284BBCC10;
          v20 = &unk_284BBCC78;
          v21 = 0;
          v22 = 0;
          v23 = -1;
          v24 = 1;
          v25 = 0x10000;
          if (!sub_2394B2E78(&v11, *(*(a1 + 8) + 24), &v43, HIWORD(v42)))
          {
            break;
          }

          v6 = HIBYTE(v25);
          if (HIBYTE(v25))
          {
            v7 = &v26;
            do
            {
              v8 = *v7;
              v7 += 24;
              if (v8 == *(a1 + 16))
              {
                ++v4;
              }

              --v6;
            }

            while (v6);
          }

          ++v5;
          v37 = WORD1(v38);
        }

        while (v5 < HIWORD(v54));
      }

      ++v3;
      v53 = v56;
    }

    while (v3 < *(a1 + 22));
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2394B49F8(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) < *(a1 + 22))
  {
    v13 = a1 + 40;
    v3 = 0uLL;
    do
    {
      v4 = *(a1 + 19);
      v49 = v3;
      v50 = v3;
      v51 = v3;
      v52 = v3;
      v53 = v3;
      v54 = v3;
      v55 = v3;
      v48 = v3;
      v56[1] = 0;
      v47 = &unk_284BBC810;
      v56[0] = &unk_284BBC878;
      v57 = v4;
      v58 = 0;
      v59 = 0xFFFF;
      v60 = 0;
      if (sub_2394B6EC4(&v47, v56, *(*(a1 + 8) + 24)))
      {
        break;
      }

      if (*(a1 + 26) >= HIWORD(v58))
      {
        *(a1 + 19) = v60;
        ++*(a1 + 20);
        *(a1 + 32) = 1;
        *(a1 + 26) = 0;
        v3 = 0uLL;
      }

      else
      {
        if (*(a1 + 32))
        {
          v5 = WORD2(v58);
          *(a1 + 24) = WORD2(v58);
          *(a1 + 32) = 0;
        }

        else
        {
          v5 = *(a1 + 24);
        }

        v6 = *(a1 + 19);
        v44 = 0;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v41 = v5;
        v42 = 0;
        v43 = 1;
        v31 = &unk_284BBCB08;
        v40[0] = &unk_284BBCB70;
        v40[1] = 0;
        v45 = v6;
        v46 = 0;
        if (sub_2394B6EC4(&v31, v40, *(*(a1 + 8) + 24)))
        {
          break;
        }

        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v19 = 0u;
        v18 = 0u;
        v17 = 0u;
        v16 = 0u;
        v15 = &unk_284BBCC10;
        v24 = &unk_284BBCC78;
        v25 = 0;
        v26 = 0;
        v27 = -1;
        v28 = 1;
        v29 = 0x10000;
        v7 = sub_2394B2E78(&v15, *(*(a1 + 8) + 24), &v47, HIWORD(v46));
        if (!v7)
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 28);
        if (v8 >= HIBYTE(v29))
        {
          *(a1 + 24) = WORD1(v42);
          ++*(a1 + 26);
          *(a1 + 28) = 0;
          v3 = 0uLL;
        }

        else
        {
          *(a1 + 28) = v8 + 1;
          v9 = &v30[3 * v8];
          v10 = *(v9 + 4);
          v3 = 0uLL;
          if (v10 == *(a1 + 16))
          {
            sub_2394B4D68(v13, v9 + 10, v10, v9 + 26);
            *(a2 + 2) = v57;
            *a2 = v46;
            *(a2 + 3) = BYTE2(v29);
            *(a2 + 8) = v13;
            goto LABEL_17;
          }
        }
      }
    }

    while (*(a1 + 20) < *(a1 + 22));
  }

  v7 = 0;
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2394B4D68(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = *(*(a1 + 8) + 32);
  (*(*v8 + 40))(v8, a1 + 24);
  (*(*v8 + 40))(v8, a1 + 40);
  *(a1 + 16) = a3;
  v9 = *(*(a1 + 8) + 32);
  (*(*v9 + 16))(v9, a2, a1 + 24);
  v10 = *(*v9 + 16);

  return v10(v9, a4, a1 + 40);
}

void sub_2394B4E7C(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 32);
  (*(*v2 + 40))(v2, a1 + 64);
  (*(*v2 + 40))(v2, a1 + 80);
  v3 = *(a1 + 8) + 264;

  sub_2394B4F18(v3, a1);
}

void sub_2394B4F18(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void sub_2394B4FE4(uint64_t *a1)
{
  sub_238DCCDE8(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394B5024(void *a1)
{
  *a1 = &unk_284BBC6D0;
  v2 = a1 + 3;
  sub_2393F9144(a1 + 5, 16);
  sub_2393F9144(v2, 16);
  return a1;
}

void sub_2394B5080(void *a1)
{
  *a1 = &unk_284BBC6D0;
  v1 = a1 + 3;
  sub_2393F9144(a1 + 5, 16);
  sub_2393F9144(v1, 16);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394B5124(void *a1)
{
  *a1 = &unk_284BBC578;
  a1[5] = &unk_284BBC6D0;
  sub_2393F9144(a1 + 10, 16);
  sub_2393F9144(a1 + 8, 16);
  return a1;
}

void sub_2394B519C(void *a1)
{
  *a1 = &unk_284BBC578;
  a1[5] = &unk_284BBC6D0;
  sub_2393F9144(a1 + 10, 16);
  sub_2393F9144(a1 + 8, 16);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394B5298(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 152))
  {
    sub_239296DA0("f/%x/g", v8, *(a1 + 152));
    v3 = 0;
    v4 = 0;
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  else
  {
    v3 = 0x5600000000;
    v4 = 113;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

uint64_t sub_2394B5340(uint64_t result)
{
  *(result + 154) = 0;
  *(result + 162) = 0xFFFF;
  *(result + 166) = 0;
  return result;
}

unint64_t sub_2394B5354(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 154));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 156));
      if (!result)
      {
        result = sub_2393C818C(a2, 3uLL, *(a1 + 158));
        if (!result)
        {
          result = sub_2393C818C(a2, 4uLL, *(a1 + 160));
          if (!result)
          {
            result = sub_2393C818C(a2, 5uLL, *(a1 + 162));
            if (!result)
            {
              result = sub_2393C818C(a2, 6uLL, *(a1 + 164));
              if (!result)
              {
                result = sub_2393C818C(a2, 7uLL, *(a1 + 166));
                if (!result)
                {
                  return sub_2393C8DE0(a2, v5);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B5434(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x7600000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5F70(a2, (a1 + 154));
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 156));
            if (!v4)
            {
              v4 = sub_2393C6FD0(a2, 3);
              if (!v4)
              {
                v4 = sub_2393C5F70(a2, (a1 + 158));
                if (!v4)
                {
                  v4 = sub_2393C6FD0(a2, 4);
                  if (!v4)
                  {
                    v4 = sub_2393C5F70(a2, (a1 + 160));
                    if (!v4)
                    {
                      v4 = sub_2393C6FD0(a2, 5);
                      if (!v4)
                      {
                        v4 = sub_2393C5F70(a2, (a1 + 162));
                        if (!v4)
                        {
                          v4 = sub_2393C6FD0(a2, 6);
                          if (!v4)
                          {
                            v4 = sub_2393C5F70(a2, (a1 + 164));
                            if (!v4)
                            {
                              v4 = sub_2393C6FD0(a2, 7);
                              if (!v4)
                              {
                                v4 = sub_2393C5ED0(a2, (a1 + 166));
                                if (!v4)
                                {
                                  v4 = sub_2393C6A98(a2, v7);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B55BC(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    sub_239296DA0("f/%x/g", v8, *(a1 + 16));
    v3 = 0;
    v4 = 0;
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  else
  {
    v3 = 0x5600000000;
    v4 = 113;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

uint64_t sub_2394B5674(uint64_t result)
{
  *(result + 18) = 0;
  *(result + 26) = 0xFFFF;
  *(result + 30) = 0;
  return result;
}

uint64_t sub_2394B569C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 171))
  {
    sub_239296DA0("f/%x/g/%x", v8, *(a1 + 171), *(a1 + 152));
    v3 = 0;
    v4 = 0;
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  else
  {
    v3 = 0x11C00000000;
    v4 = 113;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

uint64_t sub_2394B5748(uint64_t result)
{
  *(result + 154) = 0;
  *(result + 172) = 0xFFFF;
  *(result + 178) = 0;
  return result;
}

unint64_t sub_2394B575C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v6);
  if (!result)
  {
    v5 = strnlen((a1 + 154), 0x10uLL);
    result = sub_2393C8548(a2, 1uLL, (a1 + 154), v5);
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 172));
      if (!result)
      {
        result = sub_2393C818C(a2, 3uLL, *(a1 + 174));
        if (!result)
        {
          result = sub_2393C818C(a2, 4uLL, *(a1 + 178));
          if (!result)
          {
            return sub_2393C8DE0(a2, v6);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B5810(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x13900000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C65A4(a2, (a1 + 154), 0x11uLL);
        if (!v4)
        {
          *(a1 + 154 + strnlen((a1 + 154), 0x10uLL)) = 0;
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 172));
            if (!v4)
            {
              v4 = sub_2393C6FD0(a2, 3);
              if (!v4)
              {
                v4 = sub_2393C5F70(a2, (a1 + 174));
                if (!v4)
                {
                  v4 = sub_2393C6FD0(a2, 4);
                  if (!v4)
                  {
                    v4 = sub_2393C5F70(a2, (a1 + 178));
                    if (!v4)
                    {
                      v4 = sub_2393C6A98(a2, v7);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B5970(uint64_t result)
{
  *(result + 18) = 0;
  *(result + 36) = 0xFFFF;
  *(result + 42) = 0;
  return result;
}

unint64_t sub_2394B5984(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v30 = 0;
  v31 = 0;
  v26 = &unk_284BBCCD0;
  v29[0] = &unk_284BBCD38;
  v29[1] = 0;
  v4 = sub_2394B6D28(&v26, v29, a2);
  if (v4 == 216)
  {
    v30 = *(a1 + 152);
    v31 = 1;
LABEL_14:
    v4 = sub_2394B5B98(&v26, v29, a2);
    goto LABEL_15;
  }

  if (v4)
  {
LABEL_15:
    v9 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_16;
  }

  v5 = v30;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = &unk_284BBC810;
  v21[0] = &unk_284BBC878;
  v21[1] = 0;
  v22 = v30;
  v23 = 0;
  v24 = 0xFFFF;
  v25 = 0;
  if (!v31)
  {
    v8 = 1;
LABEL_13:
    *(a1 + 166) = v5;
    v30 = *(a1 + 152);
    v31 = v8;
    goto LABEL_14;
  }

  v6 = 0;
  while (1)
  {
    if (sub_2394B6EC4(&v12, v21, a2))
    {
      v7 = v31;
LABEL_12:
      v5 = v30;
      v8 = v7 + 1;
      goto LABEL_13;
    }

    if (v22 == *(a1 + 152))
    {
      break;
    }

    v22 = v25;
    ++v6;
    v7 = v31;
    if (v6 >= v31)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v4) = 0;
  v9 = 0;
LABEL_16:
  v10 = *MEMORY[0x277D85DE8];
  return v9 | v4;
}

uint64_t sub_2394B5B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    result = (*(*a2 + 16))(a2, v10);
    if (!result)
    {
      sub_2393C7B90(v9);
      v7 = sub_2393C7BB8(v9, a1 + 8, 0x20uLL);
      result = (*(*a2 + 24))(a2, v9, v7);
      if (!result)
      {
        result = (*(*a3 + 24))(a3, v10, a1 + 8, v9[22]);
      }
    }
  }

  else
  {
    result = 0x2D0000002FLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B5CE0(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 156))
  {
    sub_239296DA0("f/%x/g/%x/e/%x", v8, *(a1 + 156), *(a1 + 152), *(a1 + 154));
    v3 = 0;
    v4 = 0;
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  else
  {
    v3 = 0x22F00000000;
    v4 = 113;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

unint64_t sub_2394B5DA0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 154));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 160));
      if (!result)
      {
        return sub_2393C8DE0(a2, v5);
      }
    }
  }

  return result;
}

unint64_t sub_2394B5E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x24300000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5F70(a2, (a1 + 154));
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 160));
            if (!v4)
            {
              v4 = sub_2393C6A98(a2, v7);
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B5F3C(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 168))
  {
    sub_239296DA0("f/%x/gk/%x", v8, *(a1 + 168), *(a1 + 152));
    v3 = 0;
    v4 = 0;
    v5 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v9;
  }

  else
  {
    v3 = 0x19800000000;
    v4 = 113;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

unint64_t sub_2394B5FE8(unsigned __int16 *a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, a1[85]);
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, a1[86]);
      if (!result)
      {
        result = sub_2393C818C(a2, 3uLL, a1[78]);
        if (!result)
        {
          return sub_2393C8DE0(a2, v5);
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394B6078(_WORD *a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x1AD00000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5F70(a2, a1 + 85);
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, a1 + 86);
            if (!v4)
            {
              v4 = sub_2393C6FD0(a2, 3);
              if (!v4)
              {
                v4 = sub_2393C5F70(a2, a1 + 78);
                if (!v4)
                {
                  v4 = sub_2393C6A98(a2, v7);
                }
              }
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B61AC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 152))
  {
    v2 = *(a1 + 160);
    if (v2 == 0xFFFF)
    {
      v4 = 0x28D00000000;
      v5 = 133;
    }

    else
    {
      sub_239296DA0("f/%x/k/%x", v9, *(a1 + 152), v2);
      v4 = 0;
      v5 = 0;
      v6 = v9[1];
      *a2 = v9[0];
      *(a2 + 16) = v6;
      *(a2 + 32) = v10;
    }
  }

  else
  {
    v4 = 0x28C00000000;
    v5 = 113;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

_OWORD *sub_2394B6278(uint64_t a1)
{
  *(a1 + 168) = 0u;
  result = (a1 + 168);
  *(result - 3) = 1;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  *(result - 7) = -1;
  return result;
}

unint64_t sub_2394B62A4(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v13);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 162));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 163));
      if (!result)
      {
        v11 = 0;
        v12 = 0;
        result = sub_2393C8CE0(a2, 3uLL, 22, &v12);
        if (!result)
        {
          v6 = 0;
          v7 = (a1 + 178);
          v8 = 144;
          while (1)
          {
            *v14 = 0uLL;
            result = sub_2393C8CE0(a2, 0x100uLL, 21, &v11);
            if (result)
            {
              break;
            }

            if (v6 >= *(a1 + 163))
            {
              v10 = 0;
              v9 = 0;
            }

            else
            {
              v9 = *(v7 - 10);
              v10 = *(v7 - 1);
              *v14 = *v7;
            }

            result = sub_2393C8154(a2, 4uLL, v9);
            if (result)
            {
              break;
            }

            result = sub_2393C818C(a2, 5uLL, v10);
            if (result)
            {
              break;
            }

            result = sub_2393C8364(a2, 6uLL, v14, 0x10uLL);
            if (result)
            {
              break;
            }

            result = sub_2393C8DE0(a2, v11);
            if (result)
            {
              break;
            }

            v7 += 3;
            ++v6;
            v8 -= 48;
            if (!v8)
            {
              result = sub_2393C8DE0(a2, v12);
              if (!result)
              {
                result = sub_2393C818C(a2, 7uLL, *(a1 + 154));
                if (!result)
                {
                  result = sub_2393C8DE0(a2, v13);
                }
              }

              break;
            }
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394B644C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (v4)
  {
    goto LABEL_2;
  }

  if (sub_2393C5C40(a2) != 21)
  {
    v5 = 0x2DA00000000;
LABEL_32:
    LODWORD(v4) = 172;
    return v5 | v4;
  }

  v17 = 0;
  v4 = sub_2393C6A2C(a2, &v17);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C6FD0(a2, 1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_238EA4DB4(a2, (a1 + 162));
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C6FD0(a2, 2);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C5ED0(a2, (a1 + 163));
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393C6FD0(a2, 3);
  if (v4)
  {
    goto LABEL_2;
  }

  if (sub_2393C5C40(a2) != 22)
  {
    v5 = 0x2E900000000;
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 0;
  v4 = sub_2393C6A2C(a2, &v16);
  if (v4)
  {
    goto LABEL_2;
  }

  v7 = (a1 + 168);
  v8 = 144;
  v12 = 172;
  do
  {
    v4 = sub_2393C6FD0(a2, 256);
    if (v4)
    {
      goto LABEL_2;
    }

    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x2F000000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v4 = sub_2393C6A2C(a2, &v15);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C6FD0(a2, 4);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C5F2C(a2, v7);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C6FD0(a2, 5);
    if (v4)
    {
      goto LABEL_2;
    }

    v9 = v7 + 1;
    v4 = sub_2393C5F70(a2, v9);
    if (v4)
    {
      goto LABEL_2;
    }

    v14 = 0uLL;
    v10 = sub_2393C6FD0(a2, 6);
    if (v10 || (v10 = sub_2393C60CC(a2, &v14), v10))
    {
      v5 = v10 & 0xFFFFFFFF00000000;
      v12 = v10;
LABEL_37:
      LODWORD(v4) = v12;
      return v5 | v4;
    }

    if (*(&v14 + 1) != 16)
    {
      v5 = 0x2FD00000000;
      goto LABEL_37;
    }

    *(v9 + 2) = *v14;
    v11 = v9 + 18;
    v13[0] = v11;
    v13[1] = 16;
    v4 = sub_2393F3570(&v14, v13);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393C6A98(a2, v15);
    if (v4)
    {
      goto LABEL_2;
    }

    v7 = (v11 + 22);
    v8 -= 48;
  }

  while (v8);
  v4 = sub_2393C6A98(a2, v16);
  if (v4 || (v4 = sub_2393C6FD0(a2, 7), v4) || (v4 = sub_2393C5F70(a2, (a1 + 154)), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v4 = sub_2393C6A98(a2, v17);
LABEL_2:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

double sub_2394B670C(uint64_t a1)
{
  *(a1 + 26) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 18) = -1;
  return result;
}

unint64_t sub_2394B6738(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v39 = 0;
  v40 = 0;
  v35 = &unk_284BBCCD0;
  v38[0] = &unk_284BBCD38;
  v38[1] = 0;
  v4 = sub_2394B6D28(&v35, v38, a2);
  v5 = v4;
  if (v4 && v4 != 216)
  {
    goto LABEL_12;
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = &unk_284BBC810;
  v32 = &unk_284BBC878;
  v33 = 0;
  v34[0] = v39;
  *&v34[2] = 0;
  *&v34[10] = 0xFFFF;
  v34[14] = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = &unk_284BBC810;
  v20 = &unk_284BBC878;
  v21 = 0;
  v22[0] = 0;
  *&v22[2] = 0;
  *&v22[10] = 0xFFFF;
  v22[14] = 0;
  if (v40)
  {
    v6 = 0;
    LODWORD(v5) = 216;
    while (1)
    {
      if (sub_2394B6EC4(&v23, &v32, a2))
      {
LABEL_8:
        v7 = 0xE100000000;
        goto LABEL_13;
      }

      if (v34[0] == *(a1 + 152))
      {
        break;
      }

      v16 = v28;
      v17 = v29;
      v18 = v30;
      v19 = v31;
      v12 = v24;
      v13 = v25;
      v14 = v26;
      v15 = v27;
      v21 = v33;
      *v22 = *v34;
      *&v22[7] = *&v34[7];
      v34[0] = v34[14];
      if (++v6 >= v40)
      {
        goto LABEL_8;
      }
    }

    if (v6)
    {
      v22[14] = *(a1 + 166);
      v5 = sub_2394AFA10(&v11, a2);
      if (v5)
      {
LABEL_12:
        v7 = v5 & 0xFFFFFFFF00000000;
        goto LABEL_13;
      }
    }

    else
    {
      v39 = *(a1 + 166);
    }

    if (v40)
    {
      --v40;
      v10 = sub_2394B5B98(&v35, v38, a2);
      LODWORD(v5) = v10;
      v7 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = 0xD900000000;
      LODWORD(v5) = 172;
    }
  }

  else
  {
    v7 = 0xE100000000;
    LODWORD(v5) = 216;
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return v5 | v7;
}

unint64_t sub_2394B6AA8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_2393C8CE0(a2, 0x100uLL, 21, &v5);
  if (!result)
  {
    result = sub_2393C818C(a2, 1uLL, *(a1 + 56));
    if (!result)
    {
      result = sub_2393C818C(a2, 2uLL, *(a1 + 58));
      if (!result)
      {
        return sub_2393C8DE0(a2, v5);
      }
    }
  }

  return result;
}

unint64_t sub_2394B6B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393C6FD0(a2, 256);
  if (!v4)
  {
    if (sub_2393C5C40(a2) != 21)
    {
      v5 = 0x3D00000000;
      LODWORD(v4) = 172;
      return v5 | v4;
    }

    v7 = 0;
    v4 = sub_2393C6A2C(a2, &v7);
    if (!v4)
    {
      v4 = sub_2393C6FD0(a2, 1);
      if (!v4)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 56));
        if (!v4)
        {
          v4 = sub_2393C6FD0(a2, 2);
          if (!v4)
          {
            v4 = sub_2393C5F70(a2, (a1 + 58));
            if (!v4)
            {
              v4 = sub_2393C6A98(a2, v7);
            }
          }
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

uint64_t sub_2394B6BF4(uint64_t result)
{
  *(result + 56) = 0;
  *(result + 58) = 0;
  return result;
}

uint64_t sub_2394B6C00(uint64_t a1, uint64_t a2)
{
  *a2 = *"g/gfl";
  *(a2 + 16) = *&algn_2395D72E4[10];
  *(a2 + 32) = 0;
  return 0;
}

uint64_t sub_2394B6C48(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t sub_2394B6C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = (*(*a2 + 16))(a2, v6);
    if (!result)
    {
      result = (*(*a3 + 32))(a3, v6);
    }
  }

  else
  {
    result = 0x560000002FLL;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B6D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v6 = (*(*a2 + 16))(a2, v14);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      (*(*a2 + 40))(a2);
      v13 = 32;
      v10 = (*(*a3 + 16))(a3, v14, a1 + 8, &v13);
      if (v10 == 160)
      {
        v8 = 0x4B00000000;
        LODWORD(v10) = 216;
      }

      else
      {
        if (!v10)
        {
          sub_2393C5AAC(v12);
          sub_2393C5ADC(v12, a1 + 8, v13);
          v10 = (*(*a2 + 32))(a2, v12);
        }

        v8 = v10 & 0xFFFFFFFF00000000;
      }

      v7 = v10;
    }

    result = v7 | v8;
  }

  else
  {
    result = 0x3E0000002FLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B6EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v6 = (*(*a2 + 16))(a2, v14);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      (*(*a2 + 40))(a2);
      v13 = 128;
      v10 = (*(*a3 + 16))(a3, v14, a1 + 8, &v13);
      if (v10 == 160)
      {
        v8 = 0x4B00000000;
        LODWORD(v10) = 216;
      }

      else
      {
        if (!v10)
        {
          sub_2393C5AAC(v12);
          sub_2393C5ADC(v12, a1 + 8, v13);
          v10 = (*(*a2 + 32))(a2, v12);
        }

        v8 = v10 & 0xFFFFFFFF00000000;
      }

      v7 = v10;
    }

    result = v7 | v8;
  }

  else
  {
    result = 0x3E0000002FLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B7060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    result = (*(*a2 + 16))(a2, v10);
    if (!result)
    {
      sub_2393C7B90(v9);
      v7 = sub_2393C7BB8(v9, a1 + 8, 0x80uLL);
      result = (*(*a2 + 24))(a2, v9, v7);
      if (!result)
      {
        result = (*(*a3 + 24))(a3, v10, a1 + 8, v9[22]);
      }
    }
  }

  else
  {
    result = 0x2D0000002FLL;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394B723C(uint64_t a1, const char *a2, unsigned int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  sub_2393D895C(a3, &v11, &v10 + 1, &v10, &v9 + 1, &v9, &v8);
  snprintf(__str, 0x1AuLL, "%04u-%02u-%02uT%02u:%02u:%02u", v11, HIBYTE(v10), v10, HIBYTE(v9), v9, v8);
  v4 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = "(null)";
    }

    *buf = 136315394;
    v13 = v5;
    v14 = 2080;
    v15 = __str;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%s%s", buf, 0x16u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    result = sub_2393D5320(0x17u, 2);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394B73A8(uint64_t *a1, _DWORD *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 18;
  v11 = 0;
  v3 = *a1;
  v13[0] = *"g/lkgt";
  v13[1] = *&algn_2395D731F[9];
  v14 = 0;
  v4 = (*(*v3 + 16))(v3, v13, v15, &v12);
  v5 = v4;
  if (v4 || (sub_2393C5AAC(v13), sub_2393C5ADC(v13, v15, v12), v4 = sub_2393C7114(v13, 21, 256), v5 = v4, v4))
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = 0;
    v9 = sub_2393C6A2C(v13, &v10);
    if (v9 || (v9 = sub_2393C6FD0(v13, 0), v9) || (v9 = sub_2393C5FC8(v13, &v11), v9))
    {
      v6 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v6 = 0;
      LODWORD(v9) = 0;
      *a2 = v11;
    }

    v5 = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 | v6;
}

unint64_t sub_2394B74E8(uint64_t *a1, unsigned int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v10);
  sub_2393C7BB8(v10, v14, 0x12uLL);
  v9 = 0;
  v4 = sub_2393C8CE0(v10, 0x100uLL, 21, &v9);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C81D4(v10, 0, a2);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C8DE0(v10, v9);
  if (v4)
  {
    goto LABEL_4;
  }

  if (HIWORD(v11))
  {
    v5 = 0x5200000000;
    LODWORD(v4) = 25;
    goto LABEL_5;
  }

  v8 = *a1;
  v12[0] = *"g/lkgt";
  v12[1] = *&algn_2395D731F[9];
  v13 = 0;
  v4 = (*(*v8 + 24))(v8, v12, v14, v11);
  if (v4)
  {
LABEL_4:
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394B7620(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = sub_239476450();
  v4 = (*(*v3 + 48))(v3, &v16);
  if (v4)
  {
LABEL_10:
    v6 = HIDWORD(v4);
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v5 = sub_2394B73A8(a1, &v15);
  v6 = HIDWORD(v5);
  if (!v5)
  {
    v9 = v15;
    v8 = sub_2394B723C(v5, "Last Known Good Time: ", v15);
    if (v9 >= v16)
    {
      LODWORD(v4) = 0;
      *(a1 + 8) = 1;
      *(a1 + 12) = v9;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  LODWORD(v4) = v5;
  if (v5 == 160)
  {
    v7 = sub_2393D9044(0x17u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Last Known Good Time: [unknown]", buf, 2u);
    }

    v8 = sub_2393D5398(2u);
    if (v8)
    {
      v8 = sub_2393D5320(0x17u, 2);
    }

LABEL_9:
    sub_2394B723C(v8, "Setting Last Known Good Time to firmware build time ", v16);
    *(a1 + 8) = 1;
    v10 = v16;
    *(a1 + 12) = v16;
    v4 = sub_2394B74E8(a1, v10);
    goto LABEL_10;
  }

LABEL_11:
  v11 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = sub_2393C9138();
    *buf = 136315138;
    v18 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to init Last Known Good Time: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0x17u, 1);
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v4 | (v6 << 32);
}

unint64_t sub_2394B7858(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  if (v5 != 1)
  {
    v14 = 134;
    LODWORD(v13) = 3;
    goto LABEL_11;
  }

  v8 = sub_2393B50CC(v4);
  v9 = sub_2394B723C(v8, "Last Known Good Time: ", *v8);
  v10 = a2;
  sub_2394B723C(v9, "New proposed Last Known Good Time: ", a2);
  v11 = sub_239476450();
  v12 = (*(*v11 + 48))(v11, &v19);
  v13 = v12;
  if (!v12)
  {
    if (v19 <= a2)
    {
      if (a2 >= a3)
      {
        v12 = sub_2394B74E8(a1, a2);
        v13 = v12;
        if (!v12)
        {
          *(a1 + 8) = 1;
          *(a1 + 12) = a2;
        }

        goto LABEL_3;
      }

      v14 = 143;
    }

    else
    {
      v14 = 141;
    }

    LODWORD(v13) = 47;
    goto LABEL_11;
  }

LABEL_3:
  v14 = HIDWORD(v13);
  if (!v13)
  {
    sub_2394B723C(v12, "Updating Last Known Good Time to ", v10);
    goto LABEL_15;
  }

LABEL_11:
  v15 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_2393C9138();
    *buf = 136315138;
    v21 = v16;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed to update Last Known Good Time: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0x17u, 1);
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return v13 | (v14 << 32);
}

uint64_t sub_2394B7A64(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 8);
  if (*(a1 + 8) != 1)
  {
    return 0xAD00000003;
  }

  v5 = sub_2393B50CC((a1 + 8));
  v6 = sub_2394B723C(v5, "Last Known Good Time: ", *v5);
  sub_2394B723C(v6, "New proposed Last Known Good Time: ", a2);
  v7 = sub_2393B50CC(v2);
  if (*v7 >= a2)
  {
    v9 = sub_2393D9044(0x17u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Retaining current Last Known Good Time", v10, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x17u, 2);
    }

    return 0;
  }

  else
  {
    sub_2394B723C(v7, "Updating pending Last Known Good Time to ", a2);
    result = 0;
    *(a1 + 8) = 1;
    *(a1 + 12) = a2;
  }

  return result;
}

unint64_t sub_2394B7B8C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 8);
  if (*(a1 + 8) == 1)
  {
    v3 = sub_2393B50CC((a1 + 8));
    sub_2394B723C(v3, "Committing Last Known Good Time to storage: ", *v3);
    v4 = sub_2393B50CC(v1);
    v5 = sub_2394B74E8(a1, *v4);
    v6 = v5;
    v7 = HIDWORD(v5);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 192;
    v6 = 3;
  }

  v8 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to commit Last Known Good Time: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0x17u, 1);
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v6 | (v7 << 32);
}

uint64_t sub_2394B7CF8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 8);
  if (*(a1 + 8) != 1)
  {
    v6 = 207;
    LODWORD(v5) = 3;
LABEL_5:
    v7 = sub_2393D9044(0x17u);
    v5 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sub_2393C9138();
      *buf = 136315138;
      v15 = v8;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Clearing Last Known Good Time; failed to load a previous value from persistence: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x17u, 1);
    }

    *v1 = 0;
    goto LABEL_10;
  }

  v3 = sub_2393B50CC((a1 + 8));
  sub_2394B723C(v3, "Pending Last Known Good Time: ", *v3);
  v4 = sub_2394B73A8(a1, &v13);
  LODWORD(v5) = v4;
  v6 = HIDWORD(v4);
  if (v4)
  {
    goto LABEL_5;
  }

  v11 = v13;
  sub_2394B723C(v4, "Previous Last Known Good Time: ", v13);
  *(a1 + 8) = 1;
  *(a1 + 12) = v11;
  v12 = sub_2393D9044(0x17u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Reverted Last Known Good Time to previous value", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0x17u, 2);
  }

  v5 = 0;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return v5 | (v6 << 32);
}

uint64_t sub_2394B7EEC(uint64_t a1)
{
  if (*(a1 + 8) && *(a1 + 24))
  {
    return (*(a1 + 104) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394B7F3C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  if ((a2 - 1) > 0xFDu || v4 == 0)
  {
    return 0;
  }

  if (*(a1 + 16) == a2)
  {
    if (a3 != 2)
    {
      if (a3 == 1)
      {
        if (*(a1 + 40))
        {
          return 1;
        }

        if (!*(a1 + 56))
        {
          return sub_2394B7FB4(v4, a2, a3);
        }
      }

      else if (!a3)
      {
        if (!*(a1 + 24))
        {
          return sub_2394B7FB4(v4, a2, a3);
        }

        return 1;
      }

      return 0;
    }

    if (*(a1 + 56))
    {
      return 1;
    }
  }

  return sub_2394B7FB4(v4, a2, a3);
}

BOOL sub_2394B7FB4(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = sub_2394B9728(a2, a3, v9);
  if (v9[0])
  {
    v7 = 400;
    result = (*(*a1 + 16))(a1, v9, v8, &v7, v4) == 0;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2394B806C(uint64_t a1, uint64_t a2)
{
  result = sub_2394B7F3C(a1, a2, 0);
  if (result)
  {

    return sub_2394B7F3C(a1, a2, 2);
  }

  return result;
}

uint64_t sub_2394B80D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    v7 = 0x11100000000;
    goto LABEL_7;
  }

  v5 = a2;
  if ((a2 - 1) > 0xFDu)
  {
    v7 = 0x11200000000;
    v8 = 113;
    return v7 | v8;
  }

  if ((*(a3 + 8) - 1) > 0x18F)
  {
    v7 = 0x11300000000;
    v8 = 47;
    return v7 | v8;
  }

  if ((*(a1 + 104) & 7) != 0)
  {
    v7 = 0x11700000000;
LABEL_7:
    v8 = 3;
    return v7 | v8;
  }

  if (sub_2394B7FB4(v4, a2, 0))
  {
    v7 = 0x11800000000;
    goto LABEL_7;
  }

  v10 = *(a3 + 8);
  v11 = sub_2393D52C4(v10);
  if (v11)
  {
    v12 = v11;
    memcpy(v11, *a3, *(a3 + 8));
    v8 = 0;
    v7 = 0;
    *(a1 + 24) = v12;
    *(a1 + 32) = v10;
    *(a1 + 16) = v5;
    *(a1 + 104) |= 2u;
  }

  else
  {
    v7 = 0x11B00000000;
    v8 = 11;
  }

  return v7 | v8;
}

uint64_t sub_2394B8200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = 0x12900000000;
    goto LABEL_8;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x12A00000000;
    goto LABEL_10;
  }

  if ((*(a3 + 8) - 1) > 0x18F)
  {
    v9 = 0x12B00000000;
LABEL_13:
    v10 = 47;
    return v9 | v10;
  }

  if (*(a4 + 8) > 0x190uLL)
  {
    v9 = 0x12C00000000;
    goto LABEL_13;
  }

  if ((*(a1 + 104) & 5) == 0)
  {
    if ((*(a1 + 104) & 2) == 0)
    {
      v9 = 0x13200000000;
      goto LABEL_8;
    }

    if (*(a1 + 16) == a2)
    {
      if (sub_2394B7FB4(v5, a2, 2))
      {
        v9 = 0x13800000000;
        goto LABEL_8;
      }

      if (sub_2394B7FB4(*(a1 + 8), a2, 1))
      {
        v9 = 0x13900000000;
        goto LABEL_8;
      }

      v12 = *(a3 + 8);
      v13 = sub_2393D52C4(v12);
      if (v13)
      {
        v14 = v13;
        memcpy(v13, *a3, *(a3 + 8));
        v15 = *(a4 + 8);
        if (!v15)
        {
          v17 = 0;
          goto LABEL_29;
        }

        v16 = sub_2393D52C4(*(a4 + 8));
        if (v16)
        {
          v17 = v16;
          memcpy(v16, *a4, *(a4 + 8));
LABEL_29:
          v10 = 0;
          v9 = 0;
          *(a1 + 56) = v14;
          *(a1 + 64) = v12;
          *(a1 + 40) = v17;
          *(a1 + 48) = v15;
          *(a1 + 104) |= 1u;
          return v9 | v10;
        }

        j__free(v14);
        v9 = 0x14200000000;
      }

      else
      {
        v9 = 0x13C00000000;
      }

      v10 = 11;
      return v9 | v10;
    }

    v9 = 0x13500000000;
LABEL_10:
    v10 = 113;
    return v9 | v10;
  }

  v9 = 0x12F00000000;
LABEL_8:
  v10 = 3;
  return v9 | v10;
}

uint64_t sub_2394B83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    v9 = 0x15100000000;
    goto LABEL_8;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x15200000000;
    v10 = 113;
    return v9 | v10;
  }

  if ((*(a3 + 8) - 1) > 0x18F)
  {
    v9 = 0x15300000000;
LABEL_12:
    v10 = 47;
    return v9 | v10;
  }

  if (*(a4 + 8) > 0x190uLL)
  {
    v9 = 0x15400000000;
    goto LABEL_12;
  }

  if ((*(a1 + 104) & 3) == 0)
  {
    if ((*(a1 + 104) & 4) != 0)
    {
      v9 = 0x15B00000000;
      goto LABEL_8;
    }

    if (!sub_2394B7FB4(v5, a2, 0))
    {
      v9 = 0x15E00000000;
      goto LABEL_8;
    }

    if (!sub_2394B7FB4(*(a1 + 8), a2, 2))
    {
      v9 = 0x16100000000;
      goto LABEL_8;
    }

    v12 = *(a3 + 8);
    v13 = sub_2393D52C4(v12);
    if (v13)
    {
      v14 = v13;
      memcpy(v13, *a3, *(a3 + 8));
      v15 = *(a4 + 8);
      if (!v15)
      {
        v17 = 0;
        goto LABEL_26;
      }

      v16 = sub_2393D52C4(*(a4 + 8));
      if (v16)
      {
        v17 = v16;
        memcpy(v16, *a4, *(a4 + 8));
LABEL_26:
        v10 = 0;
        v9 = 0;
        *(a1 + 56) = v14;
        *(a1 + 64) = v12;
        *(a1 + 40) = v17;
        *(a1 + 48) = v15;
        *(a1 + 16) = a2;
        *(a1 + 104) |= 4u;
        return v9 | v10;
      }

      j__free(v14);
      v9 = 0x16D00000000;
    }

    else
    {
      v9 = 0x16700000000;
    }

    v10 = 11;
    return v9 | v10;
  }

  v9 = 0x15800000000;
LABEL_8:
  v10 = 3;
  return v9 | v10;
}

uint64_t sub_2394B85B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((a2 - 1) > 0xFDu)
    {
      v3 = 0x18000000000;
      v4 = 113;
    }

    else
    {
      v2 = sub_2394B806C(a1, a2);
      if (v2)
      {
        v3 = 0;
      }

      else
      {
        v3 = 0x18200000000;
      }

      if (v2)
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }
    }
  }

  else
  {
    v3 = 0x17F00000000;
    v4 = 3;
  }

  return v4 | v3;
}

unint64_t sub_2394B8634(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v8 = sub_2394B85B4(a1, a2);
  if (v8)
  {
    goto LABEL_2;
  }

  if (a4)
  {
    if (a4 >= 0x191)
    {
      v9 = 0x18A00000000;
      LODWORD(v8) = 47;
      return v8 | v9;
    }

    if (*(a1 + 16) == a2)
    {
      sub_2393C56C0((a1 + 72), a4);
      v11 = *(a1 + 72);
      if (!v11)
      {
        v9 = 0x19E00000000;
        LODWORD(v8) = 11;
        return v8 | v9;
      }

      *(a1 + 80) = a4;
      memcpy(v11, a3, a4);
      goto LABEL_12;
    }

    v13 = *(a1 + 8);
    v14 = a2;
    v15 = a3;
    v16 = a4;
LABEL_16:
    v8 = sub_2394B8750(v13, v14, 1, v15, v16);
    goto LABEL_2;
  }

  if (*(a1 + 16) != a2)
  {
    v13 = *(a1 + 8);
    v14 = a2;
    v15 = 0;
    v16 = 0;
    goto LABEL_16;
  }

  *(a1 + 80) = 0;
  v12 = *(a1 + 72);
  if (v12)
  {
    j__free(v12);
    *(a1 + 72) = 0;
  }

LABEL_12:
  v8 = 0;
  *(a1 + 104) |= 0x10u;
LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

unint64_t sub_2394B8750(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    sub_239296DA0("f/%x/vvsc", v12, a2);
  }

  else
  {
    sub_239296DA0("f/%x/vvs", v12, a2);
  }

  v14[0] = v12[0];
  v14[1] = v12[1];
  v15 = v13;
  if (LOBYTE(v12[0]))
  {
    if (a5)
    {
      v8 = (*(*a1 + 24))(a1, v14, a4, a5);
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = (*(*a1 + 32))(a1, v14);
      if (v8)
      {
        v9 = v8 & 0xFFFFFFFF00000000;
        if (v8 == 160)
        {
          LODWORD(v8) = 0;
          v9 = 0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0xA900000000;
    LODWORD(v8) = 172;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

unint64_t sub_2394B88A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2394B85B4(a1, a2);
  if (v8)
  {
    goto LABEL_2;
  }

  if (a4 == 85)
  {
    if (*(a1 + 16) == a2)
    {
      sub_2393C56C0((a1 + 88), 0x55uLL);
      v12 = *(a1 + 88);
      if (!v12)
      {
        v9 = 0x1C600000000;
        LODWORD(v8) = 11;
        return v8 | v9;
      }

      v8 = 0;
      *(a1 + 96) = 85;
      v13 = *(a3 + 16);
      *v12 = *a3;
      *(v12 + 16) = v13;
      v14 = *(a3 + 32);
      v15 = *(a3 + 48);
      v16 = *(a3 + 64);
      *(v12 + 77) = *(a3 + 77);
      *(v12 + 48) = v15;
      *(v12 + 64) = v16;
      *(v12 + 32) = v14;
      goto LABEL_13;
    }

    v17 = *(a1 + 8);
    v18 = a2;
    v19 = a3;
    v20 = 85;
LABEL_17:
    v8 = sub_2394B8750(v17, v18, 0, v19, v20);
    goto LABEL_2;
  }

  if (a4)
  {
    v9 = 0x1B100000000;
    LODWORD(v8) = 47;
    return v8 | v9;
  }

  if (*(a1 + 16) != a2)
  {
    v17 = *(a1 + 8);
    v18 = a2;
    v19 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  *(a1 + 96) = 0;
  v11 = *(a1 + 88);
  if (v11)
  {
    j__free(v11);
    *(a1 + 88) = 0;
  }

  v8 = 0;
LABEL_13:
  *(a1 + 104) |= 8u;
LABEL_2:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

unint64_t sub_2394B89E4(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    if ((a2 - 1) > 0xFD)
    {
      v6 = 0x1D700000000;
      v7 = 113;
    }

    else
    {
      v26[6] = v2;
      v26[7] = v3;
      if (*(a1 + 16) == a2)
      {
        v5 = *(a1 + 56);
        if (!v5 || (*(a1 + 104) & 5) == 0)
        {
          v6 = 0x1D900000000;
          goto LABEL_13;
        }

        if (*(a1 + 24) && (*(a1 + 104) & 6) == 6)
        {
          v6 = 0x1DE00000000;
LABEL_13:
          v7 = 3;
          return v6 | v7;
        }

        sub_238DB6950(v26, v5, *(a1 + 64));
        v9 = sub_2394B8C44(*(a1 + 8), *(a1 + 16), 2, v26);
        v11 = v10;
        sub_238DB6950(v25, *(a1 + 40), *(a1 + 48));
        v24[0] = sub_2394B8C44(*(a1 + 8), *(a1 + 16), 1, v25);
        v24[1] = v12;
        v22 = 0;
        v23 = 0;
        if (*(a1 + 8))
        {
          v13 = *(a1 + 24);
          if (v13)
          {
            if ((*(a1 + 104) & 2) != 0)
            {
              sub_238DB6950(v21, v13, *(a1 + 32));
              v22 = sub_2394B8C44(*(a1 + 8), *(a1 + 16), 0, v21);
              v23 = v14;
            }
          }
        }

        v21[0] = sub_2394B8D7C(a1, *(a1 + 16));
        v21[1] = v15;
        *&v20 = v9;
        *(&v20 + 1) = v11;
        v16 = &v20;
        v17 = v24;
        if (v9)
        {
          v17 = &v20;
        }

        v20 = *v17;
        v18 = &v22;
        if (v20)
        {
          v18 = &v20;
        }

        v20 = *v18;
        if (!v20)
        {
          v16 = v21;
        }

        v20 = *v16;
        if (v20)
        {
          v19 = *(a1 + 104);
          if (v19)
          {
            sub_2394B8E90(*(a1 + 8), *(a1 + 16), 2);
            sub_2394B8E90(*(a1 + 8), *(a1 + 16), 1);
            sub_2394B8750(*(a1 + 8), *(a1 + 16), 1, 0, 0);
            sub_2394B8750(*(a1 + 8), *(a1 + 16), 0, 0, 0);
            v19 = *(a1 + 104);
          }

          if ((v19 & 2) != 0)
          {
            sub_2394B8E90(*(a1 + 8), *(a1 + 16), 0);
          }

          v6 = v20 & 0xFFFFFFFF00000000;
          v7 = v20;
        }

        else
        {
          sub_238DCC8D8(a1);
          v7 = 0;
          v6 = 0;
        }
      }

      else
      {
        v6 = 0x1D700000000;
        v7 = 113;
      }
    }
  }

  else
  {
    v6 = 0x1D600000000;
    v7 = 3;
  }

  return v6 | v7;
}

unint64_t sub_2394B8C44(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7.n128_f64[0] = sub_2394B9728(a2, a3, v12);
  if (v12[0])
  {
    if (a3 != 1 || a4[1])
    {
      v8 = (*(*a1 + 24))(a1, v12, *a4, a4[1], v7);
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = (*(*a1 + 32))(a1, v12, v7.n128_f64[0]);
      if (v8)
      {
        v9 = v8 & 0xFFFFFFFF00000000;
        if (v8 == 160)
        {
          LODWORD(v8) = 0;
          v9 = 0;
        }
      }

      else
      {
        LODWORD(v8) = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0x7B00000000;
    LODWORD(v8) = 172;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

uint64_t sub_2394B8D7C(uint64_t a1, int a2)
{
  if (!*(a1 + 8))
  {
    v9 = 0x25100000003;
LABEL_14:
    *&v15 = v9;
    return v15;
  }

  v3 = *(a1 + 104);
  if ((v3 & 0x18) == 0)
  {
    return 0;
  }

  if ((a2 - 1) > 0xFD || *(a1 + 16) != a2)
  {
    v9 = 0x25700000071;
    goto LABEL_14;
  }

  v4 = 0;
  v5 = 0;
  v13 = 0;
  v14 = 0;
  if ((v3 & 0x10) != 0)
  {
    sub_238DB6950(&v11, *(a1 + 72), *(a1 + 80));
    v5 = sub_2394B8750(*(a1 + 8), *(a1 + 16), 1, v11, v12);
    v4 = v6;
    v3 = *(a1 + 104);
  }

  if ((v3 & 8) != 0)
  {
    sub_238DB6950(&v11, *(a1 + 88), *(a1 + 96));
    v13 = sub_2394B8750(*(a1 + 8), *(a1 + 16), 0, v11, v12);
    v14 = v7;
  }

  *&v15 = v5;
  *(&v15 + 1) = v4;
  v8 = &v15;
  if (!v5)
  {
    v8 = &v13;
  }

  return *v8;
}

uint64_t sub_2394B8E90(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = sub_2394B9728(a2, a3, v7);
  if (v7[0])
  {
    result = (*(*a1 + 32))(a1, v7, v4);
  }

  else
  {
    result = 0x91000000ACLL;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2394B8F3C(uint64_t *a1, uint64_t a2)
{
  if ((a2 - 1) > 0xFDu)
  {
    return 0;
  }

  else
  {
    v4 = sub_2394B7FB4(a1[1], a2, 0);
    v5 = 1;
    v6 = sub_2394B7FB4(a1[1], a2, 1);
    v7 = sub_2394B7FB4(a1[1], a2, 2);
    if (!a1[3] && !a1[5])
    {
      v5 = a1[7] != 0;
    }

    return v4 || v6 || v7 || v5;
  }
}

uint64_t sub_2394B8FF0(uint64_t *a1, uint64_t a2)
{
  if (!a1[1])
  {
    v35 = 0x22C00000003;
LABEL_42:
    *&v45 = v35;
    return v45;
  }

  if ((a2 - 1) >= 0xFEu)
  {
    v35 = 0x22D00000071;
    goto LABEL_42;
  }

  if (!sub_2394B8F3C(a1, a2))
  {
    v35 = 0x23000000071;
    goto LABEL_42;
  }

  sub_238DCC8D8(a1);
  v4 = sub_2394B8E90(a1[1], a2, 2);
  v6 = v5;
  v7 = sub_2394B8E90(a1[1], a2, 1);
  v9 = v8;
  v10 = sub_2394B8E90(a1[1], a2, 0);
  v12 = v11;
  v13 = sub_2394B8750(a1[1], a2, 1, 0, 0);
  v15 = v14;
  v16 = sub_2394B8750(a1[1], a2, 0, 0, 0);
  v18 = HIDWORD(v7);
  if (v7 == 160)
  {
    v19 = 0;
  }

  else
  {
    v19 = v7;
  }

  if (v7 == 160)
  {
    LODWORD(v18) = 0;
    v20 = 0;
  }

  else
  {
    v20 = v9;
  }

  v21 = HIDWORD(v10);
  if (v10 == 160)
  {
    v22 = 0;
  }

  else
  {
    v22 = v10;
  }

  if (v10 == 160)
  {
    LODWORD(v21) = 0;
    v23 = 0;
  }

  else
  {
    v23 = v12;
  }

  v24 = HIDWORD(v13);
  if (v13 == 160)
  {
    v25 = 0;
  }

  else
  {
    v25 = v13;
  }

  if (v13 == 160)
  {
    LODWORD(v24) = 0;
    v26 = 0;
  }

  else
  {
    v26 = v15;
  }

  v27 = HIDWORD(v16);
  if (v16 == 160)
  {
    v17 = 0;
    LODWORD(v27) = 0;
    LODWORD(v16) = 0;
  }

  if (v4 == 160)
  {
    v28 = 0;
  }

  else
  {
    v28 = v6;
  }

  v43[0] = v19;
  v43[1] = v18;
  v41[0] = v22;
  v41[1] = v21;
  v42 = v23;
  v39[0] = v25;
  v39[1] = v24;
  v40 = v26;
  v37[0] = v16;
  v37[1] = v27;
  v38 = v17;
  if (v4 == 160)
  {
    v29 = 0;
  }

  else
  {
    v29 = v4;
  }

  v44 = v20;
  *&v45 = v29;
  *(&v45 + 1) = v28;
  v30 = v29 == 0;
  v31 = &v45;
  v32 = v43;
  if (!v30)
  {
    v32 = &v45;
  }

  v45 = *v32;
  v33 = v41;
  if (v45)
  {
    v33 = &v45;
  }

  v45 = *v33;
  v34 = v39;
  if (v45)
  {
    v34 = &v45;
  }

  v45 = *v34;
  if (!v45)
  {
    v31 = v37;
  }

  return *v31;
}

uint64_t sub_2394B9204(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(a1 + 16) != a2)
  {
    v9 = 0x27700000000;
    v10 = 216;
    return v10 | v9 & 0x3FF00000000;
  }

  v15 = v4;
  v16 = v5;
  if (a3 == 2)
  {
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 64);
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        v9 = 0x29300000000;
        v10 = 47;
        return v10 | v9 & 0x3FF00000000;
      }

      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = *(a1 + 32);
        goto LABEL_12;
      }

LABEL_14:
      v9 = 0x29600000000;
      v10 = 216;
      return v10 | v9 & 0x3FF00000000;
    }

    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 48);
  }

LABEL_12:
  sub_238DB6950(&__src, v7, v8);
  v11 = __len;
  if (*(a4 + 8) >= __len)
  {
    memmove(*a4, __src, __len);
    sub_238DB8498(a4, v11);
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0x18300000000;
    v10 = 25;
  }

  return v10 | v9 & 0x3FF00000000;
}

unint64_t sub_2394B9314(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 8))
  {
    v9 = 0x29C00000000;
    LODWORD(v8) = 3;
    goto LABEL_21;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x29D00000000;
    LODWORD(v8) = 113;
    goto LABEL_21;
  }

  v8 = sub_2394B9204(a1, a2, a3, a4);
  if (v8 != 216)
  {
LABEL_20:
    v9 = v8 & 0xFFFFFFFF00000000;
    goto LABEL_21;
  }

  if (a3 != 1 || !*(a1 + 56))
  {
    v10 = *(a1 + 8);
    v11 = sub_2394B9728(a2, a3, v18);
    if (v18[0])
    {
      v12 = *a4;
      v17 = a4[1];
      v13 = (*(*v10 + 16))(v10, v18, v12, &v17, v11);
      if (a3 == 1 && v13 == 160)
      {
        sub_238DB8498(a4, 0);
        v8 = 0x64000000D8;
      }

      else
      {
        if (v13 == 160)
        {
          LODWORD(v13) = 216;
          LODWORD(v14) = 111;
        }

        else
        {
          v14 = HIDWORD(v13);
          if (!v13)
          {
            sub_238DB8498(a4, v17);
            LODWORD(v13) = 0;
          }
        }

        v8 = v13 | (v14 << 32);
      }
    }

    else
    {
      v8 = 0x59000000ACLL;
    }

    goto LABEL_20;
  }

  v9 = 0x2AD00000000;
  LODWORD(v8) = 216;
LABEL_21:
  v15 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

unint64_t sub_2394B94DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    if ((a2 - 1) <= 0xFD)
    {
      if (a3 == 1)
      {
        if ((*(a1 + 104) & 0x10) != 0 && *(a1 + 16) == a2)
        {
          v6 = *(a1 + 72);
          v7 = *(a1 + 80);
LABEL_13:
          sub_238DB6950(__len, v6, v7);
          v10 = __len[1];
          if (*(a4 + 8) >= __len[1])
          {
            v11 = __len[0];
            v12 = *a4;
LABEL_27:
            memmove(v12, v11, v10);
            v14 = a4;
            v15 = v10;
            goto LABEL_28;
          }

LABEL_24:
          v16 = 0x18300000000;
          LODWORD(v13) = 25;
          goto LABEL_29;
        }

        sub_239296DA0("f/%x/vvsc", __len, a2);
      }

      else
      {
        if (a3)
        {
          goto LABEL_22;
        }

        if ((*(a1 + 104) & 8) != 0 && *(a1 + 16) == a2)
        {
          v6 = *(a1 + 88);
          v7 = *(a1 + 96);
          goto LABEL_13;
        }

        sub_239296DA0("f/%x/vvs", __len, a2);
      }

      v23[0] = *__len;
      v23[1] = v21;
      v24 = v22;
      if (LOBYTE(__len[0]))
      {
        v19 = 400;
        v13 = (*(**(a1 + 8) + 16))(*(a1 + 8), v23, __len, &v19);
        if (!v13)
        {
          v10 = v19;
          if (*(a4 + 8) >= v19)
          {
            v12 = *a4;
            v11 = __len;
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (v13 == 216 || v13 == 160)
        {
          v14 = a4;
          v15 = 0;
LABEL_28:
          sub_238DB8498(v14, v15);
          LODWORD(v13) = 0;
          v16 = 0;
          goto LABEL_29;
        }

        v16 = v13;
LABEL_29:
        v8 = v16 & 0xFFFFFFFF00000000;
        v9 = v13;
        goto LABEL_30;
      }

LABEL_22:
      v16 = 0x2D200000000;
      LODWORD(v13) = 47;
      goto LABEL_29;
    }

    v8 = 0x2B800000000;
    v9 = 113;
  }

  else
  {
    v8 = 0x2B700000000;
    v9 = 3;
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
  return v8 | v9;
}

void sub_2394B96F0(uint64_t a1)
{
  sub_238DCC9E4(a1);

  JUMPOUT(0x23EE77B60);
}

double sub_2394B9728@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_239296DA0("f/%x/i", a3, a1);
    }

    else if (a2 == 2)
    {
      sub_239296DA0("f/%x/n", a3, a1);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    sub_239296DA0("f/%x/r", a3, a1);
  }

  return result;
}

const char *sub_2394B9798(int a1)
{
  if (a1 > 303)
  {
    if (a1 > 599)
    {
      if (a1 > 604)
      {
        if (a1 > 700)
        {
          switch(a1)
          {
            case 701:
              return "Some unexpected invalid argument was provided internally to the device attestation procedure (likely malformed input data from candidate device)";
            case 702:
              return "An internal error arose in the device attestation procedure (likely malformed input data from candidate device)";
            case 703:
              return "Reached a critical-but-unimplemented part of the device attestation procedure!";
          }
        }

        else
        {
          switch(a1)
          {
            case 605:
              return "Certification declaration product ID failed to cross-reference with DAC and/or PAI and/or Basic Information cluster";
            case 606:
              return "Certification declaration required a fixed allowed PAA which does not match the final PAA found";
            case 700:
              return "Failed to allocate memory to process attestation verification";
          }
        }

        return "<AttestationVerificationResult does not have a description!>";
      }

      if (a1 <= 601)
      {
        if (a1 == 600)
        {
          return "Certification declaration missing the required key ID in CMS envelope";
        }

        else
        {
          return "Could not find matching trusted verification certificate for the certification declaration's key ID";
        }
      }

      else if (a1 == 602)
      {
        return "Certification declaration signature failed to validate against the verification certificate";
      }

      else if (a1 == 603)
      {
        return "Certification declaration format is invalid";
      }

      else
      {
        return "Certification declaration vendor ID failed to cross-reference with DAC and/or PAI and/or Basic Information cluster";
      }
    }

    if (a1 > 400)
    {
      if (a1 <= 500)
      {
        if (a1 == 401)
        {
          return "Firmware information missing";
        }

        if (a1 == 500)
        {
          return "Attestation signature failed to validate against DAC subject public key";
        }
      }

      else
      {
        switch(a1)
        {
          case 501:
            return "Attestation elements payload is malformed";
          case 502:
            return "Attestation nonce does not match the one from Attestation Request";
          case 503:
            return "Attestation signature format is invalid (likely wrong signature algorithm in certificate)";
        }
      }
    }

    else
    {
      if (a1 <= 305)
      {
        if (a1 == 304)
        {
          return "DAC is invalid in some way according to X.509 backend";
        }

        else
        {
          return "DAC vendor ID mismatch (either between DAC and PAI, or between DAC and Basic Information cluster)";
        }
      }

      switch(a1)
      {
        case 306:
          return "DAC product ID mismatch (either between DAC and PAI, or between DAC and Basic Information cluster)";
        case 307:
          return "DAC authority not found (OBSOLETE: consider using a different error)";
        case 400:
          return "Firmware information mismatch";
      }
    }

    return "<AttestationVerificationResult does not have a description!>";
  }

  if (a1 <= 201)
  {
    if (a1 > 103)
    {
      if (a1 <= 105)
      {
        if (a1 == 104)
        {
          return "PAA is revoked (consider removing from DCL or PAA trust store!)";
        }

        else
        {
          return "PAA format is invalid";
        }
      }

      switch(a1)
      {
        case 106:
          return "PAA argument is invalid in some way according to X.509 backend";
        case 200:
          return "PAI is expired";
        case 201:
          return "PAI signature is invalid";
      }
    }

    else
    {
      if (a1 > 100)
      {
        if (a1 == 101)
        {
          return "PAA not found in DCL and/or local PAA trust store";
        }

        if (a1 == 102)
        {
          return "PAA is expired";
        }

        return "PAA signature is invalid";
      }

      if (!a1)
      {
        return "Success";
      }

      if (a1 == 100)
      {
        return "PAA is untrusted (OBSOLETE: consider using a different error)";
      }
    }

    return "<AttestationVerificationResult does not have a description!>";
  }

  if (a1 <= 206)
  {
    if (a1 <= 203)
    {
      if (a1 == 202)
      {
        return "PAI is revoked";
      }

      else
      {
        return "PAI format is invalid";
      }
    }

    else if (a1 == 204)
    {
      return "PAI argument is invalid in some way according to X.509 backend";
    }

    else if (a1 == 205)
    {
      return "PAI vendor ID mismatch (did not match VID present in PAA)";
    }

    else
    {
      return "PAI authority not found (OBSOLETE: consider using a different error)";
    }
  }

  else
  {
    if (a1 <= 300)
    {
      switch(a1)
      {
        case 207:
          return "PAI is missing/empty from attestation information data";
        case 208:
          return "Both PAI and DAC are revoked";
        case 300:
          return "DAC is expired";
      }

      return "<AttestationVerificationResult does not have a description!>";
    }

    if (a1 == 301)
    {
      return "DAC signature is invalid";
    }

    else if (a1 == 302)
    {
      return "DAC is revoked";
    }

    else
    {
      return "DAC format is invalid";
    }
  }
}

unint64_t sub_2394B9B60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v21[15] = *MEMORY[0x277D85DE8];
  sub_2393F7EB0(v21);
  v18 = &v20;
  v19 = 32;
  v9 = sub_2393F7F38(v21);
  if (v9 || (v10 = *a3, v11 = a3[1], v9 = sub_2393F7FF0(v21), v9) || (v12 = *a4, v13 = a4[1], v9 = sub_2393F7FF0(v21), v9) || (v9 = sub_2393F817C(v21, &v18), v9))
  {
    v14 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v17 = sub_2393F8B68(a2, v18, v19, a5);
    if (v17)
    {
      LODWORD(v9) = v17;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v17)
    {
      v14 = v17 & 0xFFFFFFFF00000000;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_2393F7EB8(v21);
  v15 = *MEMORY[0x277D85DE8];
  return v14 | v9;
}

uint64_t sub_2394B9C80(uint64_t result)
{
  if (result)
  {
    qword_27DF77518 = result;
  }

  return result;
}

uint64_t sub_2394B9C90(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 56);
  sub_2393C56C0(a1, v4);
  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    memcpy(v5, *(a2 + 48), *(a2 + 56));
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *(a2 + 72);
  sub_2393C56C0((a1 + 16), v6);
  v7 = *(a1 + 16);
  if (v7)
  {
    *(a1 + 24) = v6;
    memcpy(v7, *(a2 + 64), *(a2 + 72));
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 50) = *(a2 + 98);
  v19 = 0uLL;
  v18 = 0uLL;
  v17 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v13 = 0;
  v14[0] = 0;
  *(v14 + 7) = 0;
  sub_2393C5AAC(v15);
  v15[18] = 21;
  if (!sub_2394A5BF0(a2, &v19, &v18, &v17, v16, v12))
  {
    v8 = *(&v19 + 1);
    v9 = sub_2393D52C4(*(&v19 + 1));
    v10 = v9;
    if (v9)
    {
      memcpy(v9, v19, *(&v19 + 1));
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 32) = v10;
    *(a1 + 40) = v8;
  }

  return a1;
}

void sub_2394B9DE8()
{
  v0 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v2 = "src/credentials/attestation_verifier/DeviceAttestationVerifier.cpp";
    v3 = 1024;
    v4 = 78;
    v5 = 2080;
    v6 = "false";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0x1Bu, 1);
  }

  abort();
}

uint64_t *sub_2394B9EBC()
{
  result = qword_27DF7C0C0;
  if (!qword_27DF7C0C0)
  {
    result = sub_2394BD344();
    qword_27DF7C0C0 = result;
  }

  return result;
}

double sub_2394B9EF8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    v13 = v2;
    v14 = v3;
    for (i = 1; i != a2; ++i)
    {
      v12 = *(a1 + 16 * i);
      LODWORD(v7) = i;
      if (i >= 1)
      {
        v7 = i & 0x7FFFFFFF;
        v8 = (a1 + 16 * v7);
        while (1)
        {
          v9 = v7 - 1;
          v10 = sub_2394BA084(&v12);
          if (v10 <= sub_2394BA084((a1 + 16 * (v7 - 1))))
          {
            break;
          }

          *v8-- = *(a1 + 16 * --v7);
          if ((v9 + 1) <= 1)
          {
            LODWORD(v7) = 0;
            break;
          }
        }
      }

      result = *&v12;
      *(a1 + 16 * v7) = v12;
    }
  }

  return result;
}

double sub_2394B9FC0(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >= 2)
  {
    v2 = *a1;
    for (i = 1; i != v1; ++i)
    {
      v9 = *(v2 + 16 * i);
      LODWORD(v4) = i;
      if (i >= 1)
      {
        v4 = i & 0x7FFFFFFF;
        v5 = (v2 + 16 * v4);
        while (1)
        {
          v6 = v4 - 1;
          v7 = sub_2394BA084(&v9);
          if (v7 <= sub_2394BA084((v2 + 16 * (v4 - 1))))
          {
            break;
          }

          *v5-- = *(v2 + 16 * --v4);
          if ((v6 + 1) <= 1)
          {
            LODWORD(v4) = 0;
            break;
          }
        }
      }

      result = *&v9;
      *(v2 + 16 * v4) = v9;
    }
  }

  return result;
}

uint64_t sub_2394BA084(_DWORD *a1)
{
  if (!sub_2393CFB10(a1))
  {
    return 2;
  }

  if (sub_2393CFBB4(a1))
  {
    return 7;
  }

  if (!sub_2393D0D58(a1))
  {
    goto LABEL_10;
  }

  if (sub_2393CFB8C(a1))
  {
    return 6;
  }

  if (sub_2393CFBA0(a1))
  {
    return 5;
  }

LABEL_10:
  if (sub_2393CFB8C(a1))
  {
    return 4;
  }

  if (sub_2393CFBA0(a1))
  {
    return 3;
  }

  return 1;
}

uint64_t *sub_2394BA124()
{
  result = qword_27DF7C0C8;
  if (!qword_27DF7C0C8)
  {
    result = sub_2394BD3AC();
    qword_27DF7C0C8 = result;
  }

  return result;
}

unint64_t sub_2394BA160(void *a1)
{
  if (a1[1])
  {
    v1 = 0x1B00000000;
    LODWORD(v2) = 3;
  }

  else
  {
    v2 = (*(**a1 + 16))(*a1);
    if (v2)
    {
      v1 = v2 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = sub_2393D52C4(0x20uLL);
      if (v4)
      {
        LODWORD(v2) = 0;
        v1 = 0;
        *v4 = 0u;
        v4[1] = 0u;
        *v4 = 1;
      }

      else
      {
        v1 = 0x1F00000000;
        LODWORD(v2) = 11;
      }

      a1[1] = v4;
    }
  }

  return v1 | v2;
}

void sub_2394BA220(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    *(v1 + 8) = 0;
    sub_2394BA25C(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_2394BA25C(int *a1)
{
  if (!*a1)
  {
    sub_239530290();
  }

  v2 = *a1 - 1;
  *a1 = v2;
  if (!v2)
  {

    j__free(a1);
  }
}

uint64_t sub_2394BA294(uint64_t *a1, __int128 *a2)
{
  if (!a1[1])
  {
    return 0x2E00000003;
  }

  v2 = *a1;
  v4 = *a2;
  v5 = *(a2 + 2);
  return (*(*v2 + 64))(v2, 2, &v4);
}

uint64_t sub_2394BA310(uint64_t *a1, __int128 *a2)
{
  if (!a1[1])
  {
    return 0x3500000003;
  }

  v2 = *a1;
  v4 = *a2;
  v5 = *(a2 + 2);
  return (*(*v2 + 64))(v2, 3, &v4);
}

uint64_t sub_2394BA38C(uint64_t *a1, __int128 *a2)
{
  if (!a1[1])
  {
    return 0x3C00000003;
  }

  v2 = *a1;
  v4 = *a2;
  v5 = *(a2 + 2);
  return (*(*v2 + 64))(v2, 1, &v4);
}

uint64_t sub_2394BA408(void *a1)
{
  if (a1[1])
  {
    return (*(**a1 + 72))(*a1);
  }

  else
  {
    return 0x4300000003;
  }
}

uint64_t sub_2394BA464(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = 0;
    while (*(*a1 + v2) != 43)
    {
      if (v1 == ++v2)
      {
        v2 = a1[1];
        break;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  if (v2 >= v1 - 1)
  {
    return 0;
  }

  else
  {
    sub_238DB6950(v6, *a1 + v2 + 1, v1 + ~v2);
    v3 = sub_2394BA5C8(v6, 0);
    if (v3 >= 0x10000)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2394BA500(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 0;
  if (v2)
  {
    while (*(v1 + v3) != 43)
    {
      if (v2 == ++v3)
      {
        v3 = a1[1];
        break;
      }
    }
  }

  sub_238DB6950(v7, v1, v3);
  v4 = sub_2394BA5C8(v7, 0);
  if (v4 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2394BA568(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0);
  if (v1 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2394BA594(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0);
  if (v1 >= 0x100)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2394BA5C8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3 > 0xA)
  {
    goto LABEL_17;
  }

  if (v3 >= 2)
  {
    v4 = *a1;
    if (**a1 == 48)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    v4 = *a1;
LABEL_7:
    memcpy(__dst, v4, v3);
    v5 = &__dst[v3];
    goto LABEL_9;
  }

  v5 = __dst;
LABEL_9:
  *v5 = 0;
  v10 = 0;
  v6 = strtoul(__dst, &v10, 10);
  if (v10 > __dst)
  {
    if (*v10)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == -1;
    }

    if (!v7)
    {
      if (HIDWORD(v6))
      {
        a2 = a2;
      }

      else
      {
        a2 = v6;
      }
    }
  }

LABEL_17:
  v8 = *MEMORY[0x277D85DE8];
  return a2;
}

const void **sub_2394BA6B8(const void **result, _BYTE *__dst)
{
  if (__dst)
  {
    v2 = __dst;
    v3 = result[1];
    if (v3)
    {
      if (v3 >= 0x20)
      {
        v4 = 32;
      }

      else
      {
        v4 = result[1];
      }

      result = memcpy(__dst, *result, v4);
      v2 += v4;
    }

    *v2 = 0;
  }

  return result;
}

uint64_t sub_2394BA70C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_2393D6044(*a1, *(a1 + 8), a2, 50);
  *a3 = result;
  return result;
}

const void **sub_2394BA744(const void **result, _BYTE *__dst)
{
  if (__dst)
  {
    v2 = __dst;
    v3 = result[1];
    if (v3)
    {
      if (v3 >= 0x80)
      {
        v4 = 128;
      }

      else
      {
        v4 = result[1];
      }

      result = memcpy(__dst, *result, v4);
      v2 += v4;
    }

    *v2 = 0;
  }

  return result;
}

unint64_t sub_2394BA7C0(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0xFFFFFFFFLL);
  LODWORD(v2) = v1 & 0x3FFF00;
  if (v1 <= 0x36EE80)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v1 <= 0x36EE80)
  {
    v2 = v2;
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 < 0x36EE81) << 32) | v3;
}

uint64_t sub_2394BA810(uint64_t a1)
{
  v1 = sub_2394BA5C8(a1, 0);
  if (v1 >= 0x10000)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = v1;
  }

  if (v2)
  {
    return v2 | 0x10000u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394BA844(void *a1)
{
  v2 = 0;
  for (i = &unk_2395D744A; ; i += 16)
  {
    v4 = a1[1];
    if (v4 == strlen(&unk_2395D7440 + v2 + 10))
    {
      break;
    }

LABEL_8:
    v2 += 16;
    if (v2 == 240)
    {
      return 0;
    }
  }

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = __tolower(*(*a1 + v5));
      if (v6 != __tolower(i[v5]))
      {
        break;
      }

      if (++v5 >= a1[1])
      {
        return *(&unk_2395D7440 + v2 + 8);
      }
    }

    goto LABEL_8;
  }

  return *(&unk_2395D7440 + v2 + 8);
}

uint64_t sub_2394BA900(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2394BA844(a1);
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result != 5)
      {
        result = sub_2393D6044(*a2, *(a2 + 8), a3 + 190, 50);
        *(a3 + 168) = result;
        return result;
      }

      v10 = (a3 + 257);
      v11 = *(a2 + 8);
      if (!v11)
      {
        goto LABEL_32;
      }

      v12 = *a2;
      v13 = v11 >= 0x20;
      v14 = 32;
    }

    else
    {
      if (result != 7)
      {
        if (result == 8)
        {
          result = sub_2394BA5C8(a2, 0);
          if (result >= 0x10000)
          {
            v16 = 0;
          }

          else
          {
            v16 = result;
          }

          *(a3 + 186) = v16;
          return result;
        }

        if (result == 9)
        {
          v7 = *(a2 + 8) == 1 && **a2 == 49;
          *(a3 + 189) = v7;
          return result;
        }

        goto LABEL_37;
      }

      v10 = (a3 + 290);
      v11 = *(a2 + 8);
      if (!v11)
      {
LABEL_32:
        *v10 = 0;
        return result;
      }

      v12 = *a2;
      v13 = v11 >= 0x80;
      v14 = 128;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    result = memcpy(v10, v12, v15);
    v10 += v15;
    goto LABEL_32;
  }

  if (result > 2)
  {
    if (result == 3)
    {
      result = sub_2394BA5C8(a2, 0);
      if (result >= 0x100)
      {
        v9 = 0;
      }

      else
      {
        v9 = result;
      }

      *(a3 + 188) = v9;
    }

    else
    {
      result = sub_2394BA5C8(a2, 0);
      *(a3 + 176) = result;
    }

    return result;
  }

  if (result == 1)
  {
    result = sub_2394BA5C8(a2, 0);
    if (result >= 0x10000)
    {
      v8 = 0;
    }

    else
    {
      v8 = result;
    }

    *(a3 + 180) = v8;
    return result;
  }

  if (result == 2)
  {
    *(a3 + 182) = sub_2394BA500(a2);
    result = sub_2394BA464(a2);
    *(a3 + 184) = result;
    return result;
  }

LABEL_37:

  return sub_2394BAAE0(a1, a2, a3);
}

uint64_t sub_2394BAAE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2394BA844(a1);
  if (result <= 11)
  {
    if (result == 10)
    {
      result = sub_2394BA5C8(a2, 0xFFFFFFFFLL);
      v12 = result & 0x3FFF00;
      v13 = result;
      if (result > 0x36EE80)
      {
        v13 = 0;
        v12 = 0;
      }

      *(a3 + 144) = v12 | v13;
      *(a3 + 148) = result <= 0x36EE80;
    }

    else if (result == 11)
    {
      result = sub_2394BA5C8(a2, 0xFFFFFFFFLL);
      v7 = result & 0x3FFF00;
      v8 = result;
      if (result > 0x36EE80)
      {
        v8 = 0;
        v7 = 0;
      }

      *(a3 + 152) = v7 | v8;
      *(a3 + 156) = result <= 0x36EE80;
    }
  }

  else
  {
    switch(result)
    {
      case 0xC:
        result = sub_2394BA5C8(a2, 0);
        if (result >= 0x10000)
        {
          v9 = 0x10000;
        }

        else
        {
          v9 = result;
        }

        if (v9)
        {
          v10 = v9 | 0x10000;
        }

        else
        {
          v10 = 0;
        }

        *(a3 + 160) = v10;
        *(a3 + 162) = BYTE2(v10);
        break;
      case 0xD:
        result = sub_2394BA5C8(a2, 0);
        if (result >= 0x100)
        {
          v11 = 0;
        }

        else
        {
          v11 = result;
        }

        *(a3 + 139) = (v11 & 2) != 0;
        *(a3 + 140) = (v11 & 4) != 0;
        break;
      case 0xE:
        if (*(a2 + 8) == 1 && (**a2 & 0xFE) == 48)
        {
          v6 = 256;
        }

        else
        {
          v6 = 0;
        }

        *(a3 + 141) = v6 | (*(a2 + 8) == 1 && (**a2 & 0xFE) == 48 && **a2 == 49);
        break;
    }
  }

  return result;
}

uint64_t sub_2394BAC50(uint64_t a1, uint64_t a2, __int128 **a3, int a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  if (v5)
  {
    if (a4)
    {
      *buf = 0;
      v28 = 0;
      v6 = *(*v5 + 24);
LABEL_4:
      result = v6();
      goto LABEL_28;
    }

    if (!a2)
    {
      *buf = 0;
      v28 = 0;
      v6 = *(*v5 + 24);
      goto LABEL_4;
    }

    v26 = 0uLL;
    if (sub_23948BE88(a2, &v26))
    {
      v11 = *(a1 + 32);
      *buf = 0;
      v28 = 0;
      v6 = *(*v11 + 24);
      goto LABEL_4;
    }

    *buf = 0;
    v28 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    memset(&v29[40], 0, 47);
    sub_2394BD44C(buf);
    strncpy(&v29[41], (a2 + 34), 0x29uLL);
    LOBYTE(v29[61]) = 0;
    *buf = *(a2 + 92);
    v29[40] = *(a2 + 88);
    v36 = v26;
    v12 = a3[1];
    if (v12)
    {
      v13 = 0;
      v14 = *a3;
      v15 = v29;
      v16 = 16 * v12;
      while (v13 != -5)
      {
        v17 = *v14++;
        *v15++ = v17;
        --v13;
        v16 -= 16;
        if (!v16)
        {
          v18 = -v13;
          goto LABEL_24;
        }
      }

      v19 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Can't add more IPs to ResolvedNodeData", v25, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0x22u, 2);
      }

      v18 = 5;
    }

    else
    {
      v18 = 0;
    }

LABEL_24:
    v28 = v18;
    if (*(a2 + 104))
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = strlen(*(*(a2 + 96) + v20));
        sub_238DB6950(v25, *(*(a2 + 96) + v20), v22);
        sub_238DB6950(v24, *(*(a2 + 96) + v20 + 8), *(*(a2 + 96) + v20 + 16));
        sub_2394BAAE0(v25, v24, buf);
        ++v21;
        v20 += 24;
      }

      while (v21 < *(a2 + 104));
    }

    sub_2394BAF90(buf);
    result = (*(**(a1 + 32) + 16))(*(a1 + 32), buf);
  }

  else
  {
    v8 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "No delegate to handle node resolution data.", buf, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      result = sub_2393D5320(0x22u, 1);
    }
  }

LABEL_28:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394BAF90(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 168);
    v3 = *(a1 + 176);
    *buf = 67109888;
    v10 = HIDWORD(v3);
    v11 = 1024;
    v12 = v3;
    v13 = 1024;
    v14 = HIDWORD(v4);
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Node ID resolved for %08X%08X-%08X%08X", buf, 0x1Au);
  }

  if (sub_2393D5398(2u))
  {
    v8 = HIDWORD(*(a1 + 168));
    v7 = HIDWORD(*(a1 + 176));
    sub_2393D5320(0x22u, 2);
  }

  result = sub_2394BD4D0(a1);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394BB090(uint64_t a1, void *a2)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 1;
  v4 = sub_23949EB1C(a2);
  sub_23948BE88(a1, v4);
  LOBYTE(a1) = *(a1 + 148) == 0;
  result = sub_23949EB1C(a2);
  *(result + 16) = a1;
  return result;
}

void sub_2394BB0EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 152) = 0;
  *(a3 + 156) = 0;
  *(a3 + 160) = 0;
  *(a3 + 164) = 0;
  *(a3 + 168) = 0;
  *(a3 + 170) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 135) = 0u;
  sub_2394BD44C(a3 + 8);
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 411) = 0u;
  *a3 = 0;
  v6 = sub_23949EAFC(a3);
  strncpy(v6 + 98, (a1 + 34), 0x29uLL);
  *(v6 + 138) = 0;
  strncpy(v6 + 240, a1, 0x11uLL);
  *(v6 + 256) = 0;
  *buf = *(a1 + 92);
  sub_2394B9FC0(a2);
  v7 = a2[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a2;
    v10 = v6 + 2;
    v11 = 16 * v7;
    while (v8 != -5)
    {
      v12 = *v9++;
      *v10++ = v12;
      --v8;
      v11 -= 16;
      if (!v11)
      {
        v13 = -v8;
        goto LABEL_12;
      }
    }

    v14 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Can't add more IPs to DiscoveredNodeData", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x22u, 2);
    }

    v13 = 5;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  *v6 = *(a1 + 92);
  v6[1] = v13;
  *(v6 + 48) = *(a1 + 88);
  if (*(a1 + 104))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = strlen(*(*(a1 + 96) + v15));
      sub_238DB6950(buf, *(*(a1 + 96) + v15), v17);
      sub_238DB6950(v18, *(*(a1 + 96) + v15 + 8), *(*(a1 + 96) + v15 + 16));
      sub_2394BA900(buf, v18, v6);
      ++v16;
      v15 += 24;
    }

    while (v16 < *(a1 + 104));
  }
}

unint64_t sub_2394BB300(_BYTE *a1)
{
  if (a1[16])
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    a1[16] = 1;
    v4 = sub_2394804C4(sub_2394BB3B8, sub_2394BB59C, a1);
    v1 = v4;
    if (v4)
    {
      a1[16] = 0;
      v2 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      (*(*a1 + 80))(a1);
      v1 = 0;
      v2 = 0;
    }
  }

  return v2 | v1;
}

uint64_t sub_2394BB3B8(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "DNS-SD initialization failed with %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      result = sub_2393D5320(0x22u, 1);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 16) = 2;
    v11 = 0;
    *buf = 0u;
    v10 = 0u;
    *buf = -32750;
    if (qword_27DF7BD08 != -1)
    {
      sub_239533430(a1);
    }

    result = sub_239479EA8(&byte_27DF7BCA8, buf);
    if (result)
    {
      v6 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 136315138;
        v8 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Posting DNS-SD platform initialized event failed with %s", v7, 0xCu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
        result = sub_2393D5320(0x22u, 1);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394BB59C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 == 69)
  {
    v2 = (*(*a1 + 32))(a1);
    v11 = 0;
    *v9 = 0u;
    v10 = 0u;
    *v9 = -32749;
    if (qword_27DF7BD08 != -1)
    {
      sub_239533430(v2);
    }

    result = sub_239479EA8(&byte_27DF7BCA8, v9);
    if (result)
    {
      v4 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v8 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to post DNS-SD restart event: %s", buf, 0xCu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
LABEL_13:
        result = sub_2393D5320(0x22u, 1);
      }
    }
  }

  else
  {
    v5 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136315138;
      *&v9[4] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "DNS-SD error: %s", v9, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      goto LABEL_13;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394BB78C(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    result = sub_23948052C();
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_2394BB7C0(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    result = sub_23948052C();
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_2394BB7F4(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (a3 >= 0x11)
  {
    return sub_2393D5E58((a1 + 17), 8, a2, a3, 3u);
  }

  else
  {
    return 0x1FD0000000BLL;
  }
}

uint64_t sub_2394BB870(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = sub_2393D9044(0x22u);
  v8 = v7;
  if (a4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "mDNS service published error: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      v10 = 1;
LABEL_16:
      result = sub_2393D5320(0x22u, v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = "(null)";
      }

      if (a3)
      {
        v12 = a3;
      }

      else
      {
        v12 = "(null)";
      }

      *buf = 136315394;
      v15 = v11;
      v16 = 2080;
      v17 = v12;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "mDNS service published: %s; instance name: %s", buf, 0x16u);
    }

    result = sub_2393D5398(2u);
    if (result)
    {
      v10 = 2;
      goto LABEL_16;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394BBA0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a7;
  v11 = *(a7 + 4);
  v8 = *(a7 + 24);
  v10[0] = a7 + 9;
  v10[1] = v8;
  return sub_2394BBA6C(a1, a2, a3, a4, a5, a6, v7, &v11, v10, 1, *(a7 + 56), *(a7 + 64), *(a7 + 8));
}

unint64_t sub_2394BBA6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, int *a8, void *a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v39 = *MEMORY[0x277D85DE8];
  v26[0] = a11;
  v26[1] = a12;
  memset(v28, 0, sizeof(v28));
  v31 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 120;
  v21 = sub_23948BFBC(v28, 0x29uLL, a9);
  if (v21)
  {
    goto LABEL_10;
  }

  if (a10 == 1)
  {
    v21 = sub_23948BE1C(v27, 0x22uLL, v26);
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = (*(*a1 + 72))(a1, v27, 34);
    if (v21)
    {
      goto LABEL_10;
    }
  }

  strncpy(v29, a2, 9uLL);
  v29[8] = 0;
  if (a13)
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v29[10] = v22;
  v31 = *a8;
  v29[9] = a10;
  v30 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v21 = sub_239480598(v27, sub_2394BB870, a1);
  if (!v21)
  {
    LODWORD(v21) = 0;
    v23 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v23 = v21 & 0xFFFFFFFF00000000;
LABEL_11:
  v24 = *MEMORY[0x277D85DE8];
  return v23 | v21;
}

unint64_t sub_2394BBC18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a7;
  v11 = *(a7 + 4);
  v8 = *(a7 + 24);
  v10[0] = a7 + 9;
  v10[1] = v8;
  return sub_2394BBA6C(a1, a2, a3, a4, a5, a6, v7, &v11, v10, 0, 0, 0, *(a7 + 8));
}

uint64_t sub_2394BBC70(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 24))(a1))
  {
    v14 = 0;
    v15 = 0;
    v21 = 0;
    v4 = sub_2394BBE3C(0xAu, v22, &v15, v20, 8uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_7;
    }

    v4 = sub_2394BBE3C(0xBu, v22, &v15, v19, 8uLL, a2);
    v5 = v4;
    if (v4 || (v4 = sub_2394BBE3C(0xCu, v22, &v15, v13, 6uLL, a2), v5 = v4, v4) || (v4 = sub_2394BBE3C(0xDu, v22, &v15, v12, 2uLL, a2), v5 = v4, v4) || (v4 = sub_2394BBE3C(0xEu, v22, &v15, v11, 2uLL, a2), v5 = v4, v4))
    {
LABEL_7:
      v6 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      v9 = *(a2 + 64);
      LOBYTE(v16) = 8;
      *(&v16 + 1) = v9;
      v17 = 0;
      v10 = sub_2394BDB24(&v16, &v21, &v14, __str, 0x13uLL);
      if (v10 || (v10 = sub_2394BBA0C(a1, "_matter", v22, v15, &v21, v14, a2), v10))
      {
        v6 = v10 & 0xFFFFFFFF00000000;
      }

      else
      {
        LODWORD(v10) = 0;
        v6 = 0;
      }

      v5 = v10;
    }

    result = v6 | v5;
  }

  else
  {
    result = 0x27100000003;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394BBE3C(unsigned int a1, uint64_t a2, void *a3, char *a4, size_t a5, uint64_t a6)
{
  if (a1 - 10 < 3)
  {
    v11 = sub_2394BE454(a4, a5, a6 + 32, a1);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = strnlen(a4, a5);
    v13 = 0;
    v12 = 0;
    v15 = (*a3)++;
    v16 = (a2 + 24 * v15);
    *v16 = &unk_2395D75A0 + 16 * a1 + 10;
    v16[1] = a4;
    v16[2] = v14;
    return v12 | v13;
  }

  if (a1 == 14)
  {
    if (*(a6 + 50))
    {
      v11 = sub_2394BE5EC(a4, a5, 1, "%d");
      goto LABEL_11;
    }

LABEL_13:
    v13 = 0;
    v12 = 0;
    return v12 | v13;
  }

  if (!*(a6 + 48))
  {
    goto LABEL_13;
  }

  v18 = *(a6 + 48);
  v11 = sub_2394BE5EC(a4, a5, 1, "%u");
LABEL_11:
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = v11 & 0xFFFFFFFF00000000;
  v13 = v11;
  if (v11 == 28)
  {
    v13 = 0;
    v12 = 0;
  }

  return v12 | v13;
}

unint64_t sub_2394BBF6C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 24))(a1))
  {
    v23 = 0;
    v24 = 0;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v4 = sub_2394BC340(2, v40, &v24, v37, 0xCuLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(4, v40, &v24, v36, 0xBuLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(5, v40, &v24, v35, 0x21uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(10, v40, &v24, v34, 8uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(11, v40, &v24, v33, 8uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(12, v40, &v24, v22, 6uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(13, v40, &v24, v21, 2uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v4 = sub_2394BC340(14, v40, &v24, v20, 2uLL, a2);
    v5 = v4;
    if (v4)
    {
      goto LABEL_29;
    }

    v6 = *(a2 + 60);
    if ((v6 & 0x10000) != 0)
    {
      LOBYTE(v27) = 3;
      *(&v27 + 1) = v6;
      v28 = 0;
      v4 = sub_2394BDB24(&v27, v38, &v23, __str, 8uLL);
      v5 = v4;
      if (v4)
      {
        goto LABEL_29;
      }
    }

    v7 = *(a2 + 68);
    if ((v7 & 0x100000000) == 0 || (LOBYTE(v27) = 4, *(&v27 + 1) = v7, v28 = 0, v4 = sub_2394BDB24(&v27, v38, &v23, v31, 0xDuLL), !v4))
    {
      if (*(a2 + 54) == 1)
      {
        v4 = sub_2394BC340(9, v40, &v24, &v27, 2uLL, a2);
        if (!v4)
        {
          v9 = v23;
          v8 = v24;
          v10 = "_matterd";
          goto LABEL_17;
        }
      }

      else
      {
        v4 = sub_2394BC340(1, v40, &v24, v19, 6uLL, a2);
        if (!v4)
        {
          v4 = sub_2394BC340(3, v40, &v24, v18, 2uLL, a2);
          if (!v4)
          {
            v4 = sub_2394BC340(6, v40, &v24, v30, 0x65uLL, a2);
            if (!v4)
            {
              v4 = sub_2394BC340(8, v40, &v24, v29, 0xBuLL, a2);
              if (!v4)
              {
                v4 = sub_2394BC340(7, v40, &v24, &v27, 0x81uLL, a2);
                if (!v4)
                {
                  v12 = *(a2 + 51);
                  LOBYTE(v25) = 1;
                  *(&v25 + 1) = v12;
                  v26 = 0;
                  v4 = sub_2394BDB24(&v25, v38, &v23, v17, 5uLL);
                  if (!v4)
                  {
                    v13 = *(a2 + 52);
                    LOBYTE(v25) = 2;
                    *(&v25 + 1) = v13;
                    v26 = 0;
                    v4 = sub_2394BDB24(&v25, v38, &v23, v16, 7uLL);
                    if (!v4)
                    {
                      if (!*(a2 + 56) || (LOBYTE(v25) = 5, *(&v25 + 1) = 0, v26 = 0, v4 = sub_2394BDB24(&v25, v38, &v23, v15, 4uLL), !v4))
                      {
                        v9 = v23;
                        v8 = v24;
                        v10 = "_matterc";
LABEL_17:
                        v4 = sub_2394BBC18(a1, v10, v40, v8, v38, v9, a2);
                        if (!v4)
                        {
                          v4 = 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v5 = v4;
LABEL_29:
    result = v5 | v4 & 0xFFFFFFFF00000000;
    goto LABEL_30;
  }

  result = 0x28200000003;
LABEL_30:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394BC340(int a1, uint64_t a2, void *a3, char *a4, size_t a5, __int16 *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        if (*(a6 + 113) != 1)
        {
          goto LABEL_25;
        }
      }

      else if (*(a6 + 215) != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {
          if (a1 == 9)
          {
            v11 = a6[173] & ((a6[173] & 0x100) >> 8);
LABEL_30:
            v16 = sub_2394BE5EC(a4, a5, 1, "%u");
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        if ((*(a6 + 19) & 0x10000) != 0)
        {
          goto LABEL_30;
        }

LABEL_25:
        v16 = 0xD30000001CLL;
        goto LABEL_31;
      }

      if (*(a6 + 345) != 1)
      {
        goto LABEL_25;
      }
    }

    v16 = sub_2394BE5EC(a4, a5, 0, "%s");
    goto LABEL_31;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v15 = a6[28];
      goto LABEL_30;
    }

    if ((*(a6 + 34) & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (a1 == 1)
  {
    v14 = a6[26];
    goto LABEL_30;
  }

  if (a1 != 2)
  {
LABEL_26:
    v26 = *a6;
    v27 = *(a6 + 1);
    v28 = *(a6 + 4);
    *v29 = *(a6 + 12);
    *&v29[11] = *(a6 + 35);
    if ((a1 - 10) < 3)
    {
      v17 = sub_2394BE454(a4, a5, &v29[8], a1);
LABEL_46:
      v25 = v17 & 0xFFFFFFFF00000000;
LABEL_47:
      v16 = v17 | v25;
      goto LABEL_31;
    }

    if (a1 == 14)
    {
      if (v29[26])
      {
        v17 = sub_2394BE5EC(a4, a5, 1, "%d");
        goto LABEL_46;
      }

      v25 = 0x11200000000;
    }

    else
    {
      if (a1 != 13)
      {
        v25 = 0x11500000000;
        LODWORD(v17) = 47;
        goto LABEL_47;
      }

      if (*&v29[24])
      {
        v17 = sub_2394BE5EC(a4, a5, 1, "%u");
        goto LABEL_46;
      }

      v25 = 0x10100000000;
    }

    LODWORD(v17) = 28;
    goto LABEL_47;
  }

  if ((*(a6 + 15) & 0x10000) != 0)
  {
    if ((*(a6 + 16) & 0x10000) != 0)
    {
      v13 = sub_2394BE5EC(a4, a5, 3, "%u+%u");
    }

    else
    {
      v13 = sub_2394BE5EC(a4, a5, 1, "%u");
    }

    v12 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    v12 = 0xD900000000;
    LODWORD(v13) = 28;
  }

  v16 = v12 | v13;
LABEL_31:
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFF00000000;
    v19 = v16;
    if (v16 == 28)
    {
      v19 = 0;
      v18 = 0;
    }
  }

  else
  {
    v20 = strnlen(a4, a5);
    v19 = 0;
    v18 = 0;
    v21 = (*a3)++;
    v22 = (a2 + 24 * v21);
    *v22 = &unk_2395D75A0 + 16 * a1 + 10;
    v22[1] = a4;
    v22[2] = v20;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18 | v19;
}