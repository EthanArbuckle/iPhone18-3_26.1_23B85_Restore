uint64_t sub_239424744(unint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23945004C(0x30uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 26) = 0u;
    *v6 = 0u;
    v6[1] = 0u;
    v8 = sub_239423E1C(a1, a2, a2, a3, v6);
  }

  else
  {
    v8 = 0;
  }

  sub_239422D38(v7);
  return v8;
}

uint64_t sub_2394247C0(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = sub_23942209C(a2);
  v5 = 64 - v4;
  if (!sub_23942350C(a1, a1, 64 - v4))
  {
    return -1;
  }

  v6 = *(a1 + 8);
  if (v6 < 1)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v7 = a2 << -v4;
  v8 = v6 - 1;
  do
  {
    v9 = *a1;
    v10 = *(*a1 + 8 * v8);
    v11 = __udivti3();
    v12 = v10 - v7 * v11;
    *(v9 + 8 * v8) = v11;
    v13 = v8-- + 1;
  }

  while (v13 > 1);
  LODWORD(v6) = *(a1 + 8);
  if (v6 < 1)
  {
LABEL_16:
    if (!v6)
    {
LABEL_17:
      *(a1 + 16) = 0;
    }

    return v12 >> v5;
  }

  while (!*(*a1 - 8 + 8 * v6))
  {
    v14 = __OFSUB__(v6, 1);
    LODWORD(v6) = v6 - 1;
    if ((v6 < 0) ^ v14 | (v6 == 0))
    {
      *(a1 + 8) = 0;
      goto LABEL_17;
    }
  }

  *(a1 + 8) = v6;
  return v12 >> v5;
}

uint64_t sub_2394248D4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2 + 1;
  v4 = (*a1 + 8 * v2 - 8);
  do
  {
    v5 = *v4--;
    v6 = __umodti3();
    --v3;
  }

  while (v3 > 1);
  return v6;
}

uint64_t sub_239424958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (v5 = *(a2 + 8), !v5))
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    return 1;
  }

  v6 = a3;
  v7 = (a3 - 1) >> 6;
  if (v7 >= v5)
  {
    return sub_239421F90(a1, a2) != 0;
  }

  v8 = v7 + 1;
  result = sub_239421600(a1, v7 + 1);
  if (result)
  {
    memcpy(*a1, *a2, 8 * v8);
    if ((v6 & 0x3F) != 0)
    {
      *(*a1 + 8 * v7) &= ~(-1 << (v6 & 0x3F));
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 8) = v8;
    if (v8 < 1)
    {
      if (v7 == -1)
      {
LABEL_17:
        *(a1 + 16) = 0;
      }
    }

    else
    {
      while (!*(*a1 - 8 + 8 * v8))
      {
        v10 = __OFSUB__(v8, 1);
        LODWORD(v8) = v8 - 1;
        if (((v8 & 0x80000000) != 0) ^ v10 | (v8 == 0))
        {
          *(a1 + 8) = 0;
          goto LABEL_17;
        }
      }

      *(a1 + 8) = v8;
    }

    return 1;
  }

  return result;
}

uint64_t sub_239424A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_239424958(a1, a2, a3);
  if (result)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      return 1;
    }

    v7 = 0;
    v8 = *a1;
    do
    {
      v9 = *v8++;
      v7 |= v9;
      --v6;
    }

    while (v6);
    if (v7 && *(a1 + 16))
    {
      v10 = ((a3 - 1) >> 6) + 1;
      result = sub_239421600(a1, v10);
      if (result)
      {
        v11 = *(a1 + 8);
        if (v10 != v11)
        {
          bzero((*a1 + 8 * v11), 8 * (v10 - v11));
        }

        *(a1 + 16) = 0;
        *(a1 + 8) = v10;
        if (v10 >= 1)
        {
          v12 = 0;
          do
          {
            *(*a1 + 8 * v12) = ~*(*a1 + 8 * v12);
            ++v12;
            v10 = *(a1 + 8);
          }

          while (v12 < v10);
        }

        if ((a3 & 0x3F) != 0)
        {
          *(*a1 + 8 * v10 - 8) &= ~(-1 << (a3 & 0x3F));
          LODWORD(v10) = *(a1 + 8);
        }

        if (v10 < 1)
        {
          if (!v10)
          {
LABEL_23:
            *(a1 + 16) = 0;
          }
        }

        else
        {
          while (!*(*a1 - 8 + 8 * v10))
          {
            v13 = __OFSUB__(v10, 1);
            LODWORD(v10) = v10 - 1;
            if ((v10 < 0) ^ v13 | (v10 == 0))
            {
              *(a1 + 8) = 0;
              goto LABEL_23;
            }
          }

          *(a1 + 8) = v10;
        }

        sub_239457D80(&stru_27DF76A28, sub_239422078);

        return sub_2394213B4(a1, a1, &qword_27DF777F0);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_239424BD8(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    v4 = *(a1 + 8);
    if (v4 < 1)
    {
      LOWORD(v2) = 0;
    }

    else
    {
      v6 = a2;
      v7 = sub_23942209C(a2 - 1);
      v2 = 0;
      v8 = ((1 << (v7 + 32)) + a2 - 1) / v6;
      v9 = v7 - 1;
      v10 = v4 + 1;
      v11 = (*a1 + 8 * v4 - 8);
      do
      {
        v12 = *v11--;
        v13 = WORD2(v12) | ((HIWORD(v12) - ((((v8 * (__PAIR64__(v2, HIDWORD(v12)) >> 16)) >> 32) + (((__PAIR64__(v2, HIDWORD(v12)) >> 16) - ((v8 * (__PAIR64__(v2, HIDWORD(v12)) >> 16)) >> 32)) >> 1)) >> v9) * a2) << 16);
        HIDWORD(v14) = HIDWORD(v12) - ((((v8 * v13) >> 32) + ((v13 - ((v8 * v13) >> 32)) >> 1)) >> v9) * a2;
        LODWORD(v14) = v12;
        v15 = v12 | ((WORD1(v12) - ((((v8 * (v14 >> 16)) >> 32) + (((v14 >> 16) - ((v8 * (v14 >> 16)) >> 32)) >> 1)) >> v9) * a2) << 16);
        v2 = v12 - ((((v8 * v15) >> 32) + ((v15 - ((v8 * v15) >> 32)) >> 1)) >> v9) * a2;
        --v10;
      }

      while (v10 > 1);
    }
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t sub_239424CFC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239422DA4(a4);
  if (a1 == a2 || (v8 = a1, a1 == a3))
  {
    v8 = sub_239422E50(a4);
  }

  v9 = sub_239422E50(a4);
  result = 0;
  if (v8)
  {
    if (v9)
    {
      result = sub_239421F90(v9, a2);
      if (result)
      {
        v11 = sub_239422114(a3);
        if (*(a3 + 8) >= 1 && (**a3 & 1) != 0)
        {
          result = sub_239421F90(v8, a2);
          if (!result)
          {
            goto LABEL_22;
          }
        }

        else
        {
          result = sub_239421600(v8, 1uLL);
          if (!result)
          {
            goto LABEL_22;
          }

          *(v8 + 4) = 0;
          **v8 = 1;
          *(v8 + 2) = 1;
        }

        if (v11 < 2)
        {
LABEL_19:
          if (v8 == a1 || (result = sub_239421F90(a1, v8)) != 0)
          {
            result = 1;
          }
        }

        else
        {
          v12 = v11;
          v13 = 1;
          while (1)
          {
            result = sub_23942429C(v9, v9, a4);
            if (!result)
            {
              break;
            }

            if (v13 >> 6 < *(a3 + 8) && ((*(*a3 + 8 * (v13 >> 6)) >> v13) & 1) != 0)
            {
              result = sub_239424304(v8, v8, v9, a4);
              if (!result)
              {
                break;
              }
            }

            if (v12 == ++v13)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }
  }

LABEL_22:
  if (!*(a4 + 40))
  {
    v14 = *(a4 + 8);
    v15 = *(a4 + 16) - 1;
    *(a4 + 16) = v15;
    *(a4 + 32) = *(v14 + 8 * v15);
  }

  return result;
}

uint64_t sub_239424E8C(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = a2 >> 6;
  if (v2 >= *(a1 + 8))
  {
    return 0;
  }

  else
  {
    return (*(*a1 + 8 * v2) >> a2) & 1;
  }
}

uint64_t sub_239424EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16))
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/exponentiation.c", 614);
    goto LABEL_3;
  }

  v11 = a2;
  if (*(a2 + 16) || (v13 = *(a4 + 8), (sub_2394228F8(*a2, *(a2 + 8), *a4, v13) & 0x80000000) == 0))
  {
    if (!sub_239423800(a1, v11, a4, a5))
    {
      goto LABEL_3;
    }

    v13 = *(a4 + 8);
    v11 = a1;
  }

  if (v13 < 1 || (**a4 & 1) == 0)
  {
    *&v46[56] = 0;
    v14 = sub_239422114(a3);
    if (!v14)
    {
      v5 = 1;
      if (sub_239421600(a1, 1uLL))
      {
        *(a1 + 16) = 0;
        **a1 = 1;
        *(a1 + 8) = 1;
        goto LABEL_4;
      }

LABEL_3:
      v5 = 0;
LABEL_4:
      v6 = *MEMORY[0x277D85DE8];
      return v5;
    }

    v15 = v14;
    memset(v46, 0, 60);
    sub_239422DA4(a5);
    v16 = sub_239422E50(a5);
    v17 = sub_239422E50(a5);
    v5 = 0;
    v47 = v17;
    if (v16)
    {
      v18 = v17;
      if (v17)
      {
        if (*(a4 + 16))
        {
          if (!sub_239421F90(v16, a4))
          {
            goto LABEL_71;
          }

          *(v16 + 4) = 0;
          v19 = v16;
        }

        else
        {
          v19 = a4;
        }

        if (!sub_239447188(v46, v19) || !sub_239423800(v18, v11, a4, a5))
        {
          goto LABEL_71;
        }

        v21 = *(v18 + 8);
        if (v21)
        {
          v22 = 0;
          v23 = *v18;
          do
          {
            v24 = *v23++;
            v22 |= v24;
            --v21;
          }

          while (v21);
          if (v22)
          {
            v49 = 0;
            memset(v48, 0, sizeof(v48));
            if (v15 > 0x29F)
            {
              v25 = 6;
              goto LABEL_38;
            }

            if (v15 > 0xEF)
            {
              v25 = 5;
              goto LABEL_38;
            }

            if (v15 > 0x4F)
            {
              v25 = 4;
              goto LABEL_38;
            }

            if (v15 >= 0x18)
            {
              v25 = 3;
LABEL_38:
              if (sub_2394471CC(v16, v18, v18, v46, a5))
              {
                v26 = v48;
                v27 = 2;
                while (1)
                {
                  v28 = sub_239422E50(a5);
                  *v26 = v28;
                  if (!v28 || !sub_2394471CC(v28, *(v26 - 1), v16, v46, a5))
                  {
                    break;
                  }

                  v29 = v27++ >> (v25 - 1);
                  ++v26;
                  if (v29)
                  {
                    goto LABEL_45;
                  }
                }
              }

              goto LABEL_71;
            }

            v25 = 1;
LABEL_45:
            v30 = 1;
            if (sub_239421600(a1, 1uLL))
            {
              v31 = 0;
              v32 = v15 - 1;
              *(a1 + 16) = 0;
              **a1 = 1;
              *(a1 + 8) = 1;
              while (1)
              {
                v33 = v32 - 1;
                while (1)
                {
                  v34 = v32;
                  if ((v32 & 0x80000000) == 0)
                  {
                    v35 = *(a3 + 8);
                    v36 = v34 >> 6;
                    if (v36 < v35 && ((*(*a3 + 8 * v36) >> v34) & 1) != 0)
                    {
                      break;
                    }
                  }

                  if ((v31 & 1) != 0 && !sub_2394471CC(a1, a1, a1, v46, a5))
                  {
                    goto LABEL_71;
                  }

                  v32 = v34 - 1;
                  --v33;
                  v5 = 1;
                  if (!v34)
                  {
                    goto LABEL_72;
                  }
                }

                if (v25 < 2)
                {
                  v41 = 0;
                  v37 = 0;
                }

                else
                {
                  v37 = 0;
                  v38 = 1;
                  v39 = 1;
                  do
                  {
                    if (v33 == -1)
                    {
                      break;
                    }

                    if (v33 >> 6 < v35)
                    {
                      v40 = (v39 << (v38 - v37)) | 1;
                      if ((*(*a3 + 8 * (v33 >> 6)) >> v33))
                      {
                        v37 = v38;
                        v39 = v40;
                      }
                    }

                    ++v38;
                    --v33;
                  }

                  while (v25 != v38);
                  v41 = v39 >> 1;
                }

                if (!(v30 & 1 | (v37 < 0)))
                {
                  break;
                }

LABEL_68:
                if (!sub_2394471CC(a1, a1, *&v48[8 * v41 - 8], v46, a5))
                {
                  goto LABEL_71;
                }

                v30 = 0;
                v43 = ~v37;
                v31 = 1;
                v5 = 1;
                v32 = v34 + v43;
                if (v32 < 0)
                {
                  goto LABEL_72;
                }
              }

              v42 = v37 + 1;
              while (sub_2394471CC(a1, a1, a1, v46, a5))
              {
                if (!--v42)
                {
                  goto LABEL_68;
                }
              }
            }

LABEL_71:
            v5 = 0;
            goto LABEL_72;
          }
        }

        *(a1 + 16) = 0;
        *(a1 + 8) = 0;
        v5 = 1;
      }
    }

LABEL_72:
    if (!*(a5 + 40))
    {
      v44 = *(a5 + 8);
      v45 = *(a5 + 16) - 1;
      *(a5 + 16) = v45;
      *(a5 + 32) = *(v44 + 8 * v45);
    }

    sub_239421EC8(v46);
    sub_239421EC8(&v46[24]);
    goto LABEL_4;
  }

  v20 = *MEMORY[0x277D85DE8];

  return sub_2394253C4(a1, v11, a3, a4, a5, 0);
}

uint64_t sub_2394253C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 8);
  if (v6 < 1 || (v8 = *a4, v9 = **a4, (v9 & 1) == 0))
  {
    v10 = 104;
    v11 = 634;
LABEL_9:
    sub_2394170F4(3, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/exponentiation.c", v11);
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  if (*(a4 + 16))
  {
    v10 = 109;
    v11 = 638;
    goto LABEL_9;
  }

  if (*(a2 + 16) || (sub_2394228F8(*a2, *(a2 + 8), *a4, *(a4 + 8)) & 0x80000000) == 0)
  {
    v10 = 107;
    v11 = 643;
    goto LABEL_9;
  }

  v20 = sub_239422114(a3);
  if (!v20)
  {
    v25 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v6 != 1)
    {
      v26 = v6 - 1;
      v27 = v8 + 1;
      do
      {
        v28 = *v27++;
        v25 |= v28;
        --v26;
      }

      while (v26);
    }

    if (!v25)
    {
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      v17 = 1;
      goto LABEL_11;
    }

    v17 = 1;
    if (sub_239421600(a1, 1uLL))
    {
      *(a1 + 16) = 0;
      **a1 = 1;
      *(a1 + 8) = 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = v20;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  sub_239422DA4(a5);
  v22 = sub_239422E50(a5);
  v23 = sub_239422E50(a5);
  v24 = 0;
  v17 = 0;
  v54 = v23;
  if (v22 && v23)
  {
    if (a6)
    {
      v24 = 0;
LABEL_25:
      v53 = v24;
      if (v21 <= 0x29F)
      {
        if (v21 <= 0xEF)
        {
          if (v21 <= 0x4F)
          {
            if (v21 <= 0x17)
            {
              v29 = 1;
            }

            else
            {
              v29 = 3;
            }
          }

          else
          {
            v29 = 4;
          }
        }

        else
        {
          v29 = 5;
        }
      }

      else
      {
        v29 = 6;
      }

      if (!sub_239425948(v23, a2, a6, a6, a5))
      {
LABEL_77:
        v17 = 0;
LABEL_79:
        v24 = v53;
        goto LABEL_80;
      }

      v52 = v29;
      if (v29 >= 2)
      {
        v30 = sub_239422E50(a5);
        if (v30)
        {
          v31 = v30;
          if (sub_239425948(v30, v23, v23, a6, a5))
          {
            v32 = v29 - 1;
            v33 = v55;
            v34 = 2;
            while (1)
            {
              v35 = sub_239422E50(a5);
              *v33 = v35;
              if (!v35 || !sub_239425948(v35, *(v33 - 1), v31, a6, a5))
              {
                break;
              }

              v36 = v34 >> v32;
              ++v33;
              ++v34;
              if (v36)
              {
                goto LABEL_43;
              }
            }
          }
        }

        goto LABEL_77;
      }

LABEL_43:
      v37 = 0;
      v38 = v21 - 1;
      while (1)
      {
        v39 = v38;
        if ((v38 & 0x80000000) != 0)
        {
          goto LABEL_47;
        }

LABEL_45:
        v40 = *(a3 + 8);
        if (v39 >> 6 >= v40 || ((*(*a3 + 8 * (v39 >> 6)) >> v39) & 1) == 0)
        {
LABEL_47:
          while ((v37 & 1) == 0 || sub_239425948(v22, v22, v22, a6, a5))
          {
            if (!v39)
            {
              goto LABEL_78;
            }

            --v39;
            v38 += 0x7FFFFFFF;
            if ((v39 & 0x80000000) == 0)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_77;
        }

        if (v52 < 2 || !v39)
        {
          break;
        }

        v41 = 0;
        v42 = (v38 & 0x7FFFFFFF) - 1;
        v43 = 1;
        v44 = 1;
        do
        {
          if ((v42 & 0x8000000000000000) != 0 || v42 >> 6 >= v40)
          {
            v46 = 1;
          }

          else
          {
            v45 = *(*a3 + 8 * (v42 >> 6)) & (1 << v42);
            v46 = v45 == 0;
            if (v45)
            {
              v44 = (v44 << (v43 - v41)) | 1;
            }
          }

          if (!v46)
          {
            v41 = v43;
          }

          if (v43 + 1 >= v52)
          {
            break;
          }

          --v42;
        }

        while (v43++ < (v39 & 0x7FFFFFFF));
        v48 = v44 >> 1;
        if ((v37 & 1) == 0)
        {
          goto LABEL_74;
        }

        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

LABEL_72:
        if (!sub_239425948(v22, v22, (&v54)[v48], a6, a5))
        {
          goto LABEL_77;
        }

LABEL_75:
        if (v39 == v41)
        {
LABEL_78:
          v17 = sub_239425A2C(a1, v22, a6, a5);
          goto LABEL_79;
        }

        v38 = ~v41 + v39;
        v37 = 1;
      }

      v48 = 0;
      v41 = 0;
      if (v37)
      {
LABEL_69:
        v49 = v41 + 1;
        while (sub_239425948(v22, v22, v22, a6, a5))
        {
          if (!--v49)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_77;
      }

LABEL_74:
      if (!sub_239421F90(v22, (&v54)[v48]))
      {
        goto LABEL_77;
      }

      goto LABEL_75;
    }

    v24 = sub_2394258B8(a4, a5);
    a6 = v24;
    if (v24)
    {
      goto LABEL_25;
    }

    v17 = 0;
  }

LABEL_80:
  sub_239425AB8(v24);
  if (!*(a5 + 40))
  {
    v50 = *(a5 + 8);
    v51 = *(a5 + 16) - 1;
    *(a5 + 16) = v51;
    *(a5 + 32) = *(v50 + 8 * v51);
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void **sub_2394258B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23945004C(0x40uLL);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  if (!sub_239429960(v4, a1) || !sub_239429BB8(v5, a2))
  {
LABEL_4:
    sub_239425AB8(v5);
    return 0;
  }

  return v5;
}

uint64_t sub_239425948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 16) || *(a3 + 16))
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/montgomery.c", 421);
    return 0;
  }

  sub_239422DA4(a5);
  result = sub_239422E50(a5);
  if (result)
  {
    v11 = result;
    if (a2 != a3)
    {
      result = sub_2394280E8(result, a2, a3, a5);
      if (!result)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = sub_23942A6E0(result, a2, a5);
    if (result)
    {
LABEL_8:
      result = sub_239429D24(a1, v11, a4);
    }
  }

LABEL_9:
  if (!*(a5 + 40))
  {
    v12 = *(a5 + 8);
    v13 = *(a5 + 16) - 1;
    *(a5 + 16) = v13;
    *(a5 + 32) = *(v12 + 8 * v13);
  }

  return result;
}

void **sub_239425A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v9 = result;
    result = sub_239421F90(result, a2);
    if (result)
    {
      result = sub_239429D24(a1, v9, a3);
    }
  }

  if (!*(a4 + 40))
  {
    v10 = *(a4 + 8);
    v11 = *(a4 + 16) - 1;
    *(a4 + 16) = v11;
    *(a4 + 32) = *(v10 + 8 * v11);
  }

  return result;
}

void sub_239425AB8(void **a1)
{
  if (a1)
  {
    sub_239421EC8(a1);
    sub_239421EC8(a1 + 3);

    sub_239450144(a1);
  }
}

void sub_239425B00(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v39[144] = *MEMORY[0x277D85DE8];
  if (a5 >> 58 || a3 > 9 || *(a6 + 32) != a3)
  {
    abort();
  }

  v8 = a5;
  if (a5)
  {
    v11 = -64 * a5;
    while (1)
    {
      v12 = *(a4 - 8 + 8 * v8);
      if (v12)
      {
        break;
      }

      v11 += 64;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v15 = sub_23942209C(v12) - v11;
    v16 = v15 - 64;
    if ((v15 - 64) <= 0x29F)
    {
      if (v16 <= 0xEF)
      {
        if (v16 <= 0x17)
        {
          v18 = 1;
        }

        else
        {
          v18 = 3;
        }

        if (v16 <= 0x4F)
        {
          v17 = v18;
        }

        else
        {
          v17 = 4;
        }
      }

      else
      {
        v17 = 5;
      }
    }

    else
    {
      v17 = 6;
    }

    if (v17 >= 5)
    {
      v19 = 5;
    }

    else
    {
      v19 = v17;
    }

    if (a3)
    {
      __memcpy_chk();
    }

    v37 = v17;
    if (v17 >= 2)
    {
      v36 = v15;
      sub_239425F5C(v38, v39, v39, a3, a6);
      if (v19 != 1)
      {
        v20 = 2;
        do
        {
          sub_239425F5C(&v39[9 * v20 - 9], &v39[9 * v20 - 18], v38, a3, a6);
        }

        while (!(v20++ >> (v19 - 1)));
      }

      v15 = v36;
    }

    v22 = 0;
    v23 = v15 - 65;
    while (1)
    {
      v24 = v23 - 1;
      for (i = v23; i >> 6 >= v8 || ((*(a4 + 8 * (i >> 6)) >> i) & 1) == 0; --i)
      {
        if (v22)
        {
          sub_239425F5C(a1, a1, a1, a3, a6);
        }

        if (!i)
        {
          goto LABEL_61;
        }

        --v24;
      }

      if (v17 < 2 || !i)
      {
        break;
      }

      v26 = 0;
      v27 = 1;
      v28 = 1;
      do
      {
        if (v24 >> 6 >= v8)
        {
          v30 = 1;
        }

        else
        {
          v29 = *(a4 + 8 * (v24 >> 6)) & (1 << v24);
          v30 = v29 == 0;
          if (v29)
          {
            v28 = (v28 << (v27 - v26)) | 1;
          }
        }

        if (!v30)
        {
          v26 = v27;
        }

        if (v27 + 1 >= v19)
        {
          break;
        }

        --v24;
      }

      while (i > v27++);
      v32 = v28 >> 1;
      if ((v22 & 1) == 0)
      {
LABEL_57:
        if (a3)
        {
          memcpy(a1, &v39[9 * v32], 8 * a3);
        }

        goto LABEL_59;
      }

      if (v26 != -1)
      {
        goto LABEL_54;
      }

LABEL_56:
      sub_239425F5C(a1, a1, &v39[9 * v32], a3, a6);
LABEL_59:
      v23 = i - (v26 + 1);
      v22 = 1;
      v34 = i == v26;
      v17 = v37;
      if (v34)
      {
LABEL_61:
        sub_239450194(v39, 0x480uLL);
        v35 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    v32 = 0;
    v26 = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_54:
    v33 = v26 + 1;
    do
    {
      sub_239425F5C(a1, a1, a1, a3, a6);
      --v33;
    }

    while (v33);
    goto LABEL_56;
  }

LABEL_8:
  v13 = *a6;
  v14 = *MEMORY[0x277D85DE8];

  sub_239425E7C(a1, a3, v13, a3, a6);
}

void sub_239425E7C(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 > 9)
  {
    goto LABEL_11;
  }

  v7 = 2 * a2;
  if (*(a5 + 32) != a2 || v7 < a4)
  {
    goto LABEL_11;
  }

  memset(v11, 0, sizeof(v11));
  if (a4)
  {
    __memcpy_chk();
  }

  if (!sub_239429E50(a1, a2, v11, v7, a5))
  {
LABEL_11:
    abort();
  }

  sub_239450194(v11, 16 * a2);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_239425F5C(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v12[18] = *MEMORY[0x277D85DE8];
  if (a4 > 9 || *(a5 + 32) != a4)
  {
    goto LABEL_8;
  }

  v10 = 2 * a4;
  if (a2 == a3)
  {
    sub_239429F44(v12, v10, a2, a4);
  }

  else
  {
    sub_23942A054(v12, v10, a2, a4, a3, a4);
  }

  if (!sub_239429E50(a1, a4, v12, 2 * a4, a5))
  {
LABEL_8:
    abort();
  }

  sub_239450194(v12, 16 * a4);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239426030(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >> 6 >= a2)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 8 * (a3 >> 6)) >> a3) & 1;
  }
}

void sub_239426054(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v15[8] = *MEMORY[0x277D85DE8];
  if (a3 > 9 || *(a4 + 32) != a3)
  {
    abort();
  }

  if (a3)
  {
    v8 = *(a4 + 24);
    __memcpy_chk();
    if (v14 < 2)
    {
      v14 |= 0xFFFFFFFFFFFFFFFELL;
      if (a3 != 1)
      {
        v9 = a3 - 2;
        v10 = v15;
        do
        {
          v11 = v9;
          if ((*v10++)-- != 0)
          {
            break;
          }

          --v9;
        }

        while (v11);
      }
    }

    else
    {
      v14 -= 2;
    }
  }

  else
  {
    v14 = -1;
  }

  sub_239425B00(a1, a2, a3, &v14, a3, a4);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239426160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 + 8);
  if (v6 < 1 || (v8 = *a4, v9 = **a4, (v9 & 1) == 0))
  {
    v10 = 104;
    v11 = 938;
LABEL_9:
    sub_2394170F4(3, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/exponentiation.c", v11);
    return 0;
  }

  if (*(a4 + 16))
  {
    v10 = 109;
    v11 = 942;
    goto LABEL_9;
  }

  if (*(a2 + 16) || sub_2394228F8(*a2, *(a2 + 8), *a4, *(a4 + 8)) >= 0)
  {
    v10 = 107;
    v11 = 948;
    goto LABEL_9;
  }

  v19 = *(a3 + 8);
  if (!v19)
  {
    v21 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v6 != 1)
    {
      v22 = v6 - 1;
      v23 = v8 + 1;
      do
      {
        v24 = *v23++;
        v21 |= v24;
        --v22;
      }

      while (v22);
    }

    if (!v21)
    {
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      return 1;
    }

    v17 = 1;
    if (sub_239421600(a1, 1uLL))
    {
      *(a1 + 16) = 0;
      **a1 = 1;
      *(a1 + 8) = 1;
      return v17;
    }

    return 0;
  }

  if (a6)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v20 = sub_2394258B8(a4, a5);
  a6 = v20;
  if (v20)
  {
LABEL_22:
    v25 = *(a6 + 32);
    if (v19 == 1)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    if (v19 <= 1)
    {
      v27 = v26;
    }

    else
    {
      v27 = 4;
    }

    if (v19 <= 4)
    {
      v28 = v27;
    }

    else
    {
      v28 = 5;
    }

    if (v19 > 14)
    {
      v28 = 6;
    }

    v49 = v28;
    v29 = 1 << v28;
    v47 = v20;
    v48 = 8 * *(a6 + 32) * ((1 << v28) + 2);
    v30 = sub_23945004C(v48 + 64);
    v31 = v30;
    if (v30)
    {
      v46 = -v30 & 0x3FLL;
      v32 = v30 + v46;
      __dst = v30 + v46;
      if (v25)
      {
        bzero(__dst, v48);
        v32 = __dst;
      }

      v55 = &v32[8 * (v25 << v49)];
      v51 = &v55[8 * v25];
      v52 = 0;
      v53 = v25;
      v56 = 0;
      v57 = v25;
      v54 = 0x200000000;
      v58 = 0x200000000;
      if (sub_239426654(&v55, a6, a5) && sub_2394223D0(&v55, v25) && sub_239425948(&v51, a2, a6, a6, a5) && sub_2394223D0(&v51, v25))
      {
        sub_2394222A0(__dst, v25, &v55);
        sub_2394222A0(&__dst[8 * v25], v25, &v51);
        if (v49 < 2)
        {
LABEL_48:
          v36 = (v19 << 6) - 1;
          v37 = 0;
          v38 = v36 % v49;
          if (((v36 % v49) & 0x80000000) == 0)
          {
            v39 = v38 + 1;
            do
            {
              if (v36 < 0 || (v40 = v36 >> 6, v40 >= *(a3 + 8)))
              {
                LODWORD(v41) = 0;
              }

              else
              {
                v41 = (*(*a3 + 8 * v40) >> v36) & 1;
              }

              v37 = v41 | (2 * v37);
              --v36;
              --v39;
            }

            while (v39 > 0);
            v36 = (v19 << 6) - 2 - v38;
          }

          if (sub_239426720(&v55, v25, __dst, v37, v49))
          {
LABEL_57:
            if (v36 < 0)
            {
              v17 = sub_239425A2C(a1, &v55, a6, a5);
              goto LABEL_70;
            }

            v42 = 0;
            v43 = 0;
            while (sub_239425948(&v55, &v55, &v55, a6, a5))
            {
              v44 = (v36 + v42);
              if ((v44 & 0x80000000) != 0 || v44 >> 6 >= *(a3 + 8))
              {
                LODWORD(v45) = 0;
              }

              else
              {
                v45 = (*(*a3 + 8 * ((v36 + v42) >> 6)) >> (v36 + v42)) & 1;
              }

              v43 = v45 | (2 * v43);
              --v42;
              if (!(v49 + v42))
              {
                if (sub_239426720(&v51, v25, __dst, v43, v49))
                {
                  v36 -= v49;
                  if (sub_239425948(&v55, &v55, &v51, a6, a5))
                  {
                    goto LABEL_57;
                  }
                }

                break;
              }
            }
          }
        }

        else if (sub_239425948(&v55, &v51, &v51, a6, a5))
        {
          sub_2394222A0(&__dst[16 * v25], v25, &v55);
          if (v29 <= 4)
          {
            v33 = 4;
          }

          else
          {
            v33 = v29;
          }

          v34 = &v31[3 * v25] + v46;
          v35 = v33 - 3;
          while (sub_239425948(&v55, &v51, &v55, a6, a5))
          {
            sub_2394222A0(v34, v25, &v55);
            v34 += 8 * v25;
            if (!--v35)
            {
              goto LABEL_48;
            }
          }
        }
      }
    }

    else
    {
      __dst = 0;
    }

    v17 = 0;
LABEL_70:
    v20 = v47;
    goto LABEL_71;
  }

  v31 = 0;
  v48 = 0;
  __dst = 0;
  v17 = 0;
LABEL_71:
  sub_239425AB8(v20);
  if (!v31 && __dst)
  {
    sub_239450194(__dst, v48);
  }

  sub_239450144(v31);
  return v17;
}

uint64_t sub_239426654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5 >= 1 && (*(*(a2 + 24) + 8 * v5 - 8) & 0x8000000000000000) != 0)
  {
    result = sub_239421600(a1, v5);
    if (result)
    {
      **a1 = -**(a2 + 24);
      LODWORD(v7) = *(a2 + 32);
      if (v7 >= 2)
      {
        v8 = 1;
        do
        {
          *(*a1 + 8 * v8) = ~*(*(a2 + 24) + 8 * v8);
          ++v8;
          v7 = *(a2 + 32);
        }

        while (v8 < v7);
      }

      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      return 1;
    }
  }

  else
  {

    return sub_239425A2C(a1, a2, a2, a3);
  }

  return result;
}

uint64_t sub_239426720(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v10 = a2;
  result = sub_239421600(a1, a2);
  if (result)
  {
    v12 = 8 * v10;
    if (a2)
    {
      bzero(*a1, v12);
    }

    v13 = 0;
    do
    {
      if (a2 >= 1)
      {
        v14 = 0;
        do
        {
          *(*a1 + v14) |= *(a3 + v14) & ((((v13 ^ a4) - 1) & ~(v13 ^ a4)) >> 63);
          v14 += 8;
        }

        while (8 * a2 != v14);
      }

      ++v13;
      a3 += v12;
    }

    while (!(v13 >> a5));
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t sub_2394267EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v12 = *(a4 + 8);
  if (v12 >= 1)
  {
    while (!*(*a4 - 8 + 8 * v12))
    {
      v13 = __OFSUB__(v12--, 1);
      if ((v12 < 0) ^ v13 | (v12 == 0))
      {
        goto LABEL_8;
      }
    }

    if (v12 == 1)
    {
      v10 = a2 % **a4;
    }
  }

LABEL_8:
  if (v10)
  {
    if (!sub_239421600(&v17, 1uLL))
    {
      sub_2394170F4(3, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/exponentiation.c", 1271);
      v15 = 0;
      goto LABEL_14;
    }

    LODWORD(v19) = 0;
    *v17 = v10;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  LODWORD(v18) = v14;
  v15 = sub_2394253C4(a1, &v17, a3, a4, a5, a6);
LABEL_14:
  sub_239421EC8(&v17);
  return v15;
}

uint64_t sub_2394268FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v8 = a8;
  v16 = 0;
  memset(v19, 0, sizeof(v19));
  if ((a8 || (v8 = sub_239426A1C(a6, a7), (v16 = v8) != 0)) && sub_2394253C4(a1, a2, a3, a6, a7, v8) && sub_2394253C4(v19, a4, a5, a6, a7, v8) && sub_239425948(a1, a1, v8, v8, a7))
  {
    v17 = sub_239425948(a1, a1, v19, v8, a7);
  }

  else
  {
    v17 = 0;
  }

  sub_239425AB8(v16);
  sub_239421EC8(v19);
  return v17;
}

void **sub_239426A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23945004C(0x40uLL);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_3;
  }

  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  if (!sub_23942989C(v4, a1, a2))
  {
LABEL_3:
    sub_239425AB8(v5);
    return 0;
  }

  return v5;
}

uint64_t sub_239426A94(void **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = 0;
  if (*(a4 + 8) < 1 || (**a4 & 1) == 0)
  {
    v6 = 104;
    v7 = 121;
LABEL_7:
    sub_2394170F4(3, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/gcd.c", v7);
    return 0;
  }

  if (*(a3 + 16) || (sub_2394229D8(a3, a4) & 0x80000000) == 0)
  {
    v6 = 107;
    v7 = 126;
    goto LABEL_7;
  }

  sub_239422DA4(a5);
  v13 = sub_239422E50(a5);
  v14 = sub_239422E50(a5);
  v15 = sub_239422E50(a5);
  result = sub_239422E50(a5);
  if (result)
  {
    v16 = result;
    *(result + 16) = 0;
    *(result + 8) = 0;
    result = sub_239421600(v15, 1uLL);
    if (result)
    {
      *(v15 + 4) = 0;
      **v15 = 1;
      *(v15 + 2) = 1;
      result = sub_239421F90(v14, a3);
      if (result)
      {
        result = sub_239421F90(v13, a4);
        if (result)
        {
          *(v13 + 4) = 0;
          while (1)
          {
            LODWORD(v17) = *(v14 + 2);
            if (!v17)
            {
              break;
            }

            v18 = 0;
            v17 = v17;
            v19 = *v14;
            do
            {
              v20 = *v19++;
              v18 |= v20;
              --v17;
            }

            while (v17);
            if (!v18)
            {
              break;
            }

            v21 = 0;
            while (v21 >> 6 >= *(v14 + 2) || ((*(*v14 + 8 * (v21 >> 6)) >> v21) & 1) == 0)
            {
              if (*(v15 + 2) < 1 || (**v15 & 1) == 0 || (result = sub_2394214EC(v15, v15, a4), result))
              {
                result = sub_239426E30(v15, v15);
                ++v21;
                if (result)
                {
                  continue;
                }
              }

              goto LABEL_53;
            }

            if (!v21 || (result = sub_23942373C(v14, v14, v21), result))
            {
              v22 = 0;
              while (1)
              {
                v23 = *(v13 + 2);
                if (v22 >> 6 < v23)
                {
                  v24 = *v13;
                  if ((*(*v13 + 8 * (v22 >> 6)) >> v22))
                  {
                    break;
                  }
                }

                if (*(v16 + 8) < 1 || (**v16 & 1) == 0 || (result = sub_2394214EC(v16, v16, a4), result))
                {
                  v25 = sub_239426E30(v16, v16);
                  result = 0;
                  ++v22;
                  if (v25)
                  {
                    continue;
                  }
                }

                goto LABEL_53;
              }

              if (v22)
              {
                result = sub_23942373C(v13, v13, v22);
                if (!result)
                {
                  goto LABEL_53;
                }

                v24 = *v13;
                v23 = *(v13 + 2);
              }

              if ((sub_2394228F8(*v14, *(v14 + 2), v24, v23) & 0x80000000) != 0)
              {
                result = sub_2394214EC(v16, v16, v15);
                if (!result)
                {
                  goto LABEL_53;
                }

                v26 = v13;
                v27 = v13;
                v28 = v14;
              }

              else
              {
                result = sub_2394214EC(v15, v15, v16);
                if (!result)
                {
                  goto LABEL_53;
                }

                v26 = v14;
                v27 = v14;
                v28 = v13;
              }

              result = sub_239421484(v26, v27, v28);
              if (result)
              {
                continue;
              }
            }

            goto LABEL_53;
          }

          if (sub_239422B0C(v13))
          {
            result = sub_239421B30(v16, a4, v16);
            if (result)
            {
              if (!*(v16 + 16) && (sub_2394228F8(*v16, *(v16 + 8), *a4, *(a4 + 8)) & 0x80000000) != 0 || (result = sub_239423800(v16, v16, a4, a5), result))
              {
                result = sub_239421F90(a1, v16) != 0;
              }
            }
          }

          else
          {
            *a2 = 1;
            sub_2394170F4(3, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/gcd.c", 248);
            result = 0;
          }
        }
      }
    }
  }

LABEL_53:
  if (!*(a5 + 40))
  {
    v29 = *(a5 + 8);
    v30 = *(a5 + 16) - 1;
    *(a5 + 16) = v30;
    *(a5 + 32) = *(v29 + 8 * v30);
  }

  return result;
}

uint64_t sub_239426E30(uint64_t a1, uint64_t *a2)
{
  result = sub_239421600(a1, *(a2 + 2));
  if (result)
  {
    v5 = *(a2 + 2);
    if (v5)
    {
      v6 = *a1;
      v7 = *a2;
      v8 = v5 - 1;
      if (v8)
      {
        v9 = v7 + 8;
        v10 = v8;
        v11 = *a1;
        do
        {
          *v11++ = *(v9 - 8) >> 1;
          v9 += 8;
          --v10;
        }

        while (v10);
      }

      v6[v8] = *(v7 + 8 * v8) >> 1;
      v12 = *(a2 + 2);
      *(a1 + 8) = v12;
      *(a1 + 16) = *(a2 + 4);
      v13 = (a1 + 16);
      if (v12 >= 1)
      {
        while (!*(*a1 - 8 + 8 * v12))
        {
          v14 = __OFSUB__(v12--, 1);
          if ((v12 < 0) ^ v14 | (v12 == 0))
          {
            *(a1 + 8) = 0;
            goto LABEL_12;
          }
        }

        *(a1 + 8) = v12;
        return 1;
      }

      if (v12)
      {
        return 1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      v13 = (a1 + 16);
    }

LABEL_12:
    *v13 = 0;
    return 1;
  }

  return result;
}

void **sub_239426F04(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = 0;
LABEL_5:
    if (!*(a2 + 16) && (v10 = *(a3 + 8), (sub_2394228F8(*a2, *(a2 + 8), *a3, v10) & 0x80000000) != 0))
    {
      v12 = 0;
    }

    else
    {
      v11 = sub_239421F2C(a2);
      if (!v11)
      {
        v12 = 0;
        goto LABEL_16;
      }

      a2 = v11;
      if (!sub_239423800(v11, v11, a3, a4))
      {
        v12 = a2;
        goto LABEL_16;
      }

      v10 = *(a3 + 8);
      v12 = a2;
    }

    if (v10 >= 1 && (**a3 & 1) != 0)
    {
      if (sub_239426A94(v7, &v14, a2, a3, a4))
      {
        goto LABEL_17;
      }
    }

    else if (sub_239427050(v7, &v14, a2, a3, a4))
    {
LABEL_17:
      sub_239421EC8(v12);
      return v7;
    }

LABEL_16:
    sub_239421EC8(v8);
    v7 = 0;
    goto LABEL_17;
  }

  v9 = sub_23945004C(0x18uLL);
  v7 = v9;
  if (v9)
  {
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v9 + 5) = 1;
    v8 = v9;
    goto LABEL_5;
  }

  return v7;
}

uint64_t sub_239427050(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = 0;
  if (*(a3 + 16) || (v10 = *a3, v11 = *(a3 + 8), v12 = *a4, v13 = *(a4 + 8), (sub_2394228F8(*a3, v11, *a4, v13) & 0x80000000) == 0))
  {
    v14 = 107;
    v15 = 174;
LABEL_4:
    sub_2394170F4(3, 0, v14, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/gcd_extra.c", v15);
    return 0;
  }

  if (!v11)
  {
    goto LABEL_87;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v18 |= v10[v17++];
  }

  while (v11 != v17);
  if (!v18)
  {
LABEL_87:
    if (sub_239422B0C(a4))
    {
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      return 1;
    }

    *a2 = 1;
    v14 = 112;
    v15 = 183;
    goto LABEL_4;
  }

  if ((v11 < 1 || (*v10 & 1) == 0) && (v13 < 1 || (*v12 & 1) == 0))
  {
    *a2 = 1;
    v14 = 112;
    v15 = 199;
    goto LABEL_4;
  }

  if (v11 >= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v11;
  }

  sub_239422DA4(a5);
  v20 = sub_239422E50(a5);
  v21 = sub_239422E50(a5);
  v22 = sub_239422E50(a5);
  v91 = sub_239422E50(a5);
  v90 = sub_239422E50(a5);
  v93 = sub_239422E50(a5);
  v92 = sub_239422E50(a5);
  v23 = sub_239422E50(a5);
  result = 0;
  if (v20)
  {
    if (v21)
    {
      if (v22)
      {
        if (v91)
        {
          if (v90)
          {
            if (v93)
            {
              if (v92)
              {
                if (v23)
                {
                  v89 = v23;
                  result = sub_239421F90(v20, a3);
                  if (result)
                  {
                    result = sub_239421F90(v21, a4);
                    if (result)
                    {
                      v88 = v21;
                      result = sub_239421600(v22, 1uLL);
                      if (result)
                      {
                        *(v22 + 4) = 0;
                        **v22 = 1;
                        *(v22 + 2) = 1;
                        result = sub_239421600(v93, 1uLL);
                        if (result)
                        {
                          *(v93 + 4) = 0;
                          **v93 = 1;
                          *(v93 + 2) = 1;
                          result = sub_2394223D0(v20, v13);
                          if (result)
                          {
                            result = sub_2394223D0(v21, v13);
                            if (result)
                            {
                              result = sub_2394223D0(v22, v13);
                              if (result)
                              {
                                result = sub_2394223D0(v90, v13);
                                if (result)
                                {
                                  result = sub_2394223D0(v91, v19);
                                  if (result)
                                  {
                                    result = sub_2394223D0(v93, v19);
                                    if (result)
                                    {
                                      result = sub_2394223D0(v92, v13);
                                      if (result)
                                      {
                                        result = sub_2394223D0(v89, v13);
                                        if (result)
                                        {
                                          v87 = v19;
                                          v24 = v19 + v13;
                                          if (__CFADD__(v19, v13))
                                          {
                                            v25 = 102;
                                            v26 = 248;
LABEL_81:
                                            sub_2394170F4(3, 0, v25, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/gcd_extra.c", v26);
                                            result = 0;
                                            goto LABEL_82;
                                          }

                                          if (v24)
                                          {
                                            v78 = 0;
                                            v27 = v24 << 6;
                                            if (v27 <= 1)
                                            {
                                              v27 = 1;
                                            }

                                            v68 = v27;
                                            do
                                            {
                                              v28 = ((**v20 << 63) >> 63) & -(**v88 & 1);
                                              v29 = sub_239421D64(*v92, *v88, *v20, v13);
                                              v30 = *v88;
                                              v31 = *v92;
                                              v79 = v28;
                                              v84 = (v29 - 1) & v28;
                                              if (v13)
                                              {
                                                v32 = v13;
                                                do
                                                {
                                                  v33 = *v31++;
                                                  *v30 = *v30 & ~((v29 - 1) & v28) | v33 & (v29 - 1) & v28;
                                                  ++v30;
                                                  --v32;
                                                }

                                                while (v32);
                                                v31 = *v92;
                                                v30 = *v88;
                                              }

                                              v34 = -v29;
                                              sub_239421D64(v31, *v20, v30, v13);
                                              v35 = v79 & v34;
                                              v36 = *v92;
                                              v80 = v79 & v34;
                                              if (v13)
                                              {
                                                v37 = *v20;
                                                v38 = v13;
                                                do
                                                {
                                                  v39 = *v36++;
                                                  *v37 = *v37 & ~v35 | v39 & v35;
                                                  ++v37;
                                                  --v38;
                                                }

                                                while (v38);
                                                v36 = *v92;
                                              }

                                              v72 = sub_2394216D4(v36, *v22, *v90, v13);
                                              v40 = v72 - sub_239421D64(*v89, *v92, *a4, v13);
                                              v41 = *v92;
                                              v73 = v40;
                                              if (v13)
                                              {
                                                v42 = *v89;
                                                v43 = v13;
                                                do
                                                {
                                                  v44 = *v42++;
                                                  *v41 = v44 & ~v40 | *v41 & v40;
                                                  ++v41;
                                                  --v43;
                                                }

                                                while (v43);
                                                v45 = *v22;
                                                v46 = *v92;
                                                v47 = v13;
                                                do
                                                {
                                                  v48 = *v46++;
                                                  *v45 = *v45 & ~v80 | v48 & v80;
                                                  ++v45;
                                                  --v47;
                                                }

                                                while (v47);
                                                v49 = *v90;
                                                v50 = *v92;
                                                v51 = v13;
                                                do
                                                {
                                                  v52 = *v50++;
                                                  *v49 = *v49 & ~v84 | v52 & v84;
                                                  ++v49;
                                                  --v51;
                                                }

                                                while (v51);
                                                v41 = *v92;
                                              }

                                              v53 = v87;
                                              sub_2394216D4(v41, *v91, *v93, v87);
                                              sub_239421D64(*v89, *v92, *a3, v87);
                                              v54 = *v92;
                                              if (v13)
                                              {
                                                v55 = *v89;
                                                v56 = v87;
                                                do
                                                {
                                                  v57 = *v55++;
                                                  *v54 = v57 & ~v73 | *v54 & v73;
                                                  ++v54;
                                                  --v56;
                                                }

                                                while (v56);
                                                v58 = *v91;
                                                v59 = *v92;
                                                v60 = v87;
                                                do
                                                {
                                                  v61 = *v59++;
                                                  *v58 = *v58 & ~v80 | v61 & v80;
                                                  ++v58;
                                                  --v60;
                                                }

                                                while (v60);
                                                v62 = *v93;
                                                v63 = *v92;
                                                do
                                                {
                                                  v64 = *v63++;
                                                  *v62 = *v62 & ~v84 | v64 & v84;
                                                  ++v62;
                                                  --v53;
                                                }

                                                while (v53);
                                                v54 = *v92;
                                              }

                                              v81 = **v88;
                                              v85 = (**v20 & 1) - 1;
                                              sub_239428258(*v20, v85, v54, v13);
                                              v74 = -(**v91 & 1) | -(**v22 & 1);
                                              v70 = sub_2394282CC(*v22, v74 & v85, *a4, *v92, v13);
                                              v75 = sub_2394282CC(*v91, v74 & v85, *a3, *v92, v87);
                                              v69 = *v22;
                                              sub_239428258(*v22, v85, *v92, v13);
                                              if (v13)
                                              {
                                                v69[v13 - 1] |= (v70 & v85) << 63;
                                                v71 = *v91;
                                                sub_239428258(*v91, v85, *v92, v87);
                                                v71[v87 - 1] |= (v75 & v85) << 63;
                                              }

                                              else
                                              {
                                                sub_239428258(*v91, v85, *v92, v87);
                                              }

                                              v86 = (v81 & 1) - 1;
                                              sub_239428258(*v88, v86, *v92, v13);
                                              v82 = -(**v93 & 1) | -(**v90 & 1);
                                              v76 = sub_2394282CC(*v90, v82 & v86, *a4, *v92, v13);
                                              v83 = sub_2394282CC(*v93, v82 & v86, *a3, *v92, v87);
                                              v65 = *v90;
                                              sub_239428258(*v90, v86, *v92, v13);
                                              if (v13)
                                              {
                                                v65[v13 - 1] |= (v76 & v86) << 63;
                                                v77 = *v93;
                                                sub_239428258(*v93, v86, *v92, v87);
                                                v77[v87 - 1] |= (v83 & v86) << 63;
                                              }

                                              else
                                              {
                                                sub_239428258(*v93, v86, *v92, v87);
                                              }

                                              ++v78;
                                            }

                                            while (v78 != v68);
                                          }

                                          if (!sub_239422B0C(v20))
                                          {
                                            *a2 = 1;
                                            v25 = 112;
                                            v26 = 322;
                                            goto LABEL_81;
                                          }

                                          result = sub_239421F90(a1, v22) != 0;
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
        }
      }
    }
  }

LABEL_82:
  if (!*(a5 + 40))
  {
    v66 = *(a5 + 8);
    v67 = *(a5 + 16) - 1;
    *(a5 + 16) = v67;
    *(a5 + 32) = *(v66 + 8 * v67);
  }

  return result;
}

uint64_t sub_239427900(void **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = 0;
  if (*(a3 + 16) || sub_2394229D8(a3, a4 + 24) >= 0)
  {
    sub_2394170F4(3, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/gcd.c", 334);
    return 0;
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    if (sub_239427A14(v12, 1uLL, a4 + 24) && sub_239425948(a1, v12, a3, a4, a5) && sub_239426A94(a1, a2, a1, a4 + 24, a5))
    {
      v10 = sub_239425948(a1, v12, a1, a4, a5);
    }

    else
    {
      v10 = 0;
    }

    sub_239421EC8(v12);
  }

  return v10;
}

uint64_t sub_239427A14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_239421600(a1, *(a3 + 8));
  if (result)
  {
    result = sub_23942C260(*a1, a2, *a3, *(a3 + 8), &unk_2395CAC64);
    if (result)
    {
      *(a1 + 16) = 0;
      *(a1 + 8) = *(a3 + 8);
      return 1;
    }
  }

  return result;
}

uint64_t sub_239427A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v11 = result;
    result = sub_239421F90(result, a3);
    if (result)
    {
      result = sub_2394219A4(v11, 2uLL);
      if (result)
      {
        result = sub_2394253C4(a1, a2, v11, a3, a4, a5) != 0;
      }
    }
  }

  if (!*(a4 + 40))
  {
    v12 = *(a4 + 8);
    v13 = *(a4 + 16) - 1;
    *(a4 + 16) = v13;
    *(a4 + 32) = *(v12 + 8 * v13);
  }

  return result;
}

void **sub_239427B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v11 = result;
    result = sub_239421F90(result, a3);
    if (result)
    {
      result = sub_2394219A4(v11, 2uLL);
      if (result)
      {
        result = sub_239426160(a1, a2, v11, a3, a4, a5);
      }
    }
  }

  if (!*(a4 + 40))
  {
    v12 = *(a4 + 8);
    v13 = *(a4 + 16) - 1;
    *(a4 + 16) = v13;
    *(a4 + 32) = *(v12 + 8 * v13);
  }

  return result;
}

uint64_t sub_239427BE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  result = sub_239427C50(a1, &v7, a2, a3, a4);
  if (result)
  {
    v6 = v7;

    return sub_23942350C(a1, a1, v6);
  }

  return result;
}

uint64_t sub_239427C50(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 8) <= *(a4 + 8))
  {
    v7 = *(a4 + 8);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  if (v7)
  {
    sub_239422DA4(a5);
    v11 = sub_239422E50(a5);
    v12 = sub_239422E50(a5);
    v13 = sub_239422E50(a5);
    result = 0;
    if (v11)
    {
      if (v12)
      {
        if (v13)
        {
          result = sub_239421F90(v11, a3);
          if (result)
          {
            result = sub_239421F90(v12, a4);
            if (result)
            {
              result = sub_2394223D0(v11, v7);
              if (result)
              {
                result = sub_2394223D0(v12, v7);
                if (result)
                {
                  result = sub_2394223D0(v13, v7);
                  if (result)
                  {
                    v15 = *(a3 + 8);
                    v16 = (*(a4 + 8) + v15) << 6;
                    if (v16 >= v15 << 6)
                    {
                      v37 = a2;
                      v17 = 0;
                      if (v16)
                      {
                        v18 = 0;
                        v38 = (*(a4 + 8) + v15) << 6;
                        do
                        {
                          v19 = ((**v11 << 63) >> 63) & -(**v12 & 1);
                          v20 = sub_239421D64(*v13, *v11, *v12, v7);
                          v21 = *v11;
                          v22 = *v13;
                          v23 = v7;
                          do
                          {
                            v24 = *v22++;
                            *v21 = *v21 & ~((v20 - 1) & v19) | v24 & (v20 - 1) & v19;
                            ++v21;
                            --v23;
                          }

                          while (v23);
                          v25 = -v20;
                          sub_239421D64(*v13, *v12, *v11, v7);
                          v26 = *v12;
                          v27 = *v13;
                          v28 = v7;
                          do
                          {
                            v29 = *v27++;
                            *v26 = *v26 & ~(v19 & v25) | v29 & v19 & v25;
                            ++v26;
                            --v28;
                          }

                          while (v28);
                          v30 = **v12 & 1;
                          v31 = (**v11 & 1) - 1;
                          v32 = v30 - 1;
                          v17 -= (v30 - 1) & v31;
                          sub_239428258(*v11, v31, *v13, v7);
                          sub_239428258(*v12, v32, *v13, v7);
                          ++v18;
                        }

                        while (v18 != v38);
                      }

                      v33 = 0;
                      if (v7 <= 1)
                      {
                        v34 = 1;
                      }

                      else
                      {
                        v34 = v7;
                      }

                      do
                      {
                        *(*v12 + 8 * v33) |= *(*v11 + 8 * v33);
                        ++v33;
                      }

                      while (v34 != v33);
                      *v37 = v17;
                      result = sub_2394221F0(a1, *v12, v7);
                    }

                    else
                    {
                      sub_2394170F4(3, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/gcd_extra.c", 78);
                      result = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (!*(a5 + 40))
    {
      v35 = *(a5 + 8);
      v36 = *(a5 + 16) - 1;
      *(a5 + 16) = v36;
      *(a5 + 32) = *(v35 + 8 * v36);
    }
  }

  else
  {
    *a2 = 0;
    *(a1 + 16) = 0;
    result = 1;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_239427F1C(_BOOL4 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v9 = result;
    v18 = 0;
    result = sub_239427C50(result, &v18, a2, a3, a4);
    if (result)
    {
      v10 = v9[2];
      if (v10)
      {
        v11 = **v9 ^ 1 | v18;
        if (v10 >= 2)
        {
          v12 = (*v9 + 8);
          v13 = v10 - 1;
          do
          {
            v14 = *v12++;
            v11 |= v14;
            --v13;
          }

          while (v13);
        }

        v15 = v11 == 0;
      }

      else
      {
        v15 = 0;
      }

      *a1 = v15;
      result = 1;
    }
  }

  if (!*(a4 + 40))
  {
    v16 = *(a4 + 8);
    v17 = *(a4 + 16) - 1;
    *(a4 + 16) = v17;
    *(a4 + 32) = *(v16 + 8 * v17);
  }

  return result;
}

uint64_t sub_239428004(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v9 = result;
    result = sub_2394280E8(a1, a2, a3, a4);
    if (result)
    {
      v12 = 0;
      result = sub_239427C50(v9, &v12, a2, a3, a4);
      if (result)
      {
        result = sub_239423A68(a1, 0, a1, v9, 0, a4);
        if (result)
        {
          result = sub_23942813C(a1, a1, v12, a4);
        }
      }
    }
  }

  if (!*(a4 + 40))
  {
    v10 = *(a4 + 8);
    v11 = *(a4 + 16) - 1;
    *(a4 + 16) = v11;
    *(a4 + 32) = *(v10 + 8 * v11);
  }

  return result;
}

uint64_t sub_2394280E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) || *(a3 + 16))
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/mul.c", 524);
    return 0;
  }

  else
  {

    return sub_23942A288(a1, a2, a3, a4);
  }
}

uint64_t sub_23942813C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_239422DA4(a4);
  v8 = sub_239422E50(a4);
  if (v8 && (v9 = v8, sub_239421F90(a1, a2)) && sub_239421600(v9, *(a1 + 8)))
  {
    v10 = *(a1 + 8);
    v11 = 1;
    if (v10)
    {
      v12 = 0;
      v13 = v10 << 6;
      do
      {
        sub_23942C66C(*v9, *a1, 1 << v12, *(a1 + 8));
        v14 = *(a1 + 8);
        if (v14)
        {
          v15 = *a1;
          v16 = *v9;
          do
          {
            v17 = *v16++;
            *v15 = *v15 & (((a3 >> v12) & 1) - 1) | v17 & -((a3 >> v12) & 1);
            ++v15;
            --v14;
          }

          while (v14);
        }

        ++v12;
      }

      while (v13 >> v12);
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  if (!*(a4 + 40))
  {
    v18 = *(a4 + 8);
    v19 = *(a4 + 16) - 1;
    *(a4 + 16) = v19;
    *(a4 + 32) = *(v18 + 8 * v19);
  }

  return v11;
}

uint64_t *sub_239428258(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      *a3 = *result >> 1;
    }

    else
    {
      v4 = result + 1;
      v5 = a4 - 1;
      v6 = a3;
      do
      {
        *v6++ = *(v4++ - 1) >> 1;
        --v5;
      }

      while (v5);
      a3[a4 - 1] = result[a4 - 1] >> 1;
    }

    do
    {
      v7 = *a3++;
      *result = *result & ~a2 | v7 & a2;
      ++result;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t sub_2394282CC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v8 = a1;
  for (i = sub_2394216D4(a4, a1, a3, a5); v5; --v5)
  {
    v10 = *v6++;
    *v8 = *v8 & ~a2 | v10 & a2;
    ++v8;
  }

  return i & a2;
}

uint64_t sub_239428340(unint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 < 4)
  {
    v4 = 0;
    do
    {
LABEL_25:
      v27 = *a2++;
      v28 = (v27 * a4) >> 64;
      v29 = v27 * a4;
      v6 = __CFADD__(*a1, v4);
      v30 = *a1 + v4;
      v31 = v6;
      v32 = v30 + v29;
      v4 = (__PAIR128__(v31, v30) + __PAIR128__(v28, v29)) >> 64;
      *a1++ = v32;
      --a3;
    }

    while (a3);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = a1[1];
    v6 = __CFADD__(*a1, v4);
    v7 = *a1 + v4;
    v8 = v6;
    v9 = __PAIR128__(v8, v7) + *a2 * a4;
    *a1 = v9;
    v10 = a2[1];
    v11 = (v10 * a4) >> 64;
    v12 = v10 * a4;
    v6 = __CFADD__(v12, v5);
    v13 = v12 + v5;
    if (v6)
    {
      ++v11;
    }

    v6 = __CFADD__(v13, *(&v9 + 1));
    v14 = v13 + *(&v9 + 1);
    if (v6)
    {
      v15 = v11 + 1;
    }

    else
    {
      v15 = v11;
    }

    a1[1] = v14;
    v16 = a2[2];
    v17 = a1[2];
    v18 = a1[3];
    v6 = __CFADD__(v16 * a4, v17);
    v19 = v16 * a4 + v17;
    v20 = (v16 * a4) >> 64;
    if (v6)
    {
      ++v20;
    }

    v6 = __CFADD__(v19, v15);
    v21 = v19 + v15;
    if (v6)
    {
      ++v20;
    }

    a1[2] = v21;
    v22 = a2[3];
    v23 = (v22 * a4) >> 64;
    v24 = v22 * a4;
    v6 = __CFADD__(v24, v18);
    v25 = v24 + v18;
    if (v6)
    {
      ++v23;
    }

    v6 = __CFADD__(v25, v20);
    v26 = v25 + v20;
    if (v6)
    {
      v4 = v23 + 1;
    }

    else
    {
      v4 = v23;
    }

    a1[3] = v26;
    a2 += 4;
    a1 += 4;
    a3 -= 4;
  }

  while (a3 >= 4);
  if (a3)
  {
    goto LABEL_25;
  }

  return v4;
}

_OWORD *sub_239428434(_OWORD *result, unint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      goto LABEL_8;
    }

    do
    {
      *result = *a2 * *a2;
      result[1] = a2[1] * a2[1];
      result[2] = a2[2] * a2[2];
      result[3] = a2[3] * a2[3];
      a2 += 4;
      result += 4;
      a3 -= 4;
    }

    while (a3 >= 4);
    if (a3)
    {
LABEL_8:
      do
      {
        v3 = *a2++;
        *result++ = v3 * v3;
        --a3;
      }

      while (a3);
    }
  }

  return result;
}

void *sub_2394284B4(void *result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v3 = (*a3 * v5) >> 64;
  *result = *a3 * *a2;
  v6 = a2[1];
  v8 = *a3;
  v7 = a3[1];
  v9 = (__PAIR128__(v7, v4) * v5) >> 64;
  if (__CFADD__(v7 * *a2, v3))
  {
    v10 = ((v7 * *a2) >> 64) + 1;
  }

  else
  {
    v10 = (v7 * *a2) >> 64;
  }

  v11 = (v8 * v6) >> 64;
  v12 = v8 * v6;
  v13 = __CFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v11;
  }

  result[1] = v14;
  v16 = a2[2];
  v17 = a3[1];
  v18 = (*a3 * v16) >> 64;
  v19 = *a3 * v16;
  v13 = __CFADD__(v19, v15 + v10);
  v20 = v19 + v15 + v10;
  if (v13)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v18;
  }

  v13 = __CFADD__(__CFADD__(v15, v10), v21);
  v22 = __CFADD__(v15, v10) + v21;
  v23 = v13;
  v25 = *a2;
  v24 = a2[1];
  v26 = (v17 * v24) >> 64;
  v27 = v17 * v24;
  v13 = __CFADD__(v20, v27);
  v28 = v20 + v27;
  if (v13)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v26;
  }

  v13 = __CFADD__(v22, v29);
  v30 = v22 + v29;
  v31 = v13;
  v32 = a3[2];
  v33 = (v32 * v25) >> 64;
  v34 = v32 * v25;
  v13 = __CFADD__(v28, v34);
  v35 = v28 + v34;
  if (v13)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v13 = __CFADD__(v30, v36);
  v37 = v30 + v36;
  v38 = v23 + v13 + v31;
  result[2] = v35;
  v39 = a2[1];
  v41 = a3[2];
  v40 = a3[3];
  v42 = v40 * *a2;
  v13 = __CFADD__(v42, v37);
  v43 = v42 + v37;
  if (v13)
  {
    v44 = ((v40 * *a2) >> 64) + 1;
  }

  else
  {
    v44 = (v40 * *a2) >> 64;
  }

  v45 = v38 + v44;
  v46 = (v41 * v39) >> 64;
  v47 = v41 * v39;
  v13 = __CFADD__(v43, v47);
  v48 = v43 + v47;
  if (v13)
  {
    v49 = v46 + 1;
  }

  else
  {
    v49 = v46;
  }

  v13 = __CFADD__(v45, v49);
  v50 = v45 + v49;
  v51 = v13;
  if (__CFADD__(v38, v44))
  {
    v52 = v51 + 1;
  }

  else
  {
    v52 = v51;
  }

  v53 = a2[2];
  v54 = a2[3];
  v56 = *a3;
  v55 = a3[1];
  v57 = (v55 * v53) >> 64;
  v58 = v55 * v53;
  v13 = __CFADD__(v48, v58);
  v59 = v48 + v58;
  if (v13)
  {
    v60 = v57 + 1;
  }

  else
  {
    v60 = v57;
  }

  v13 = __CFADD__(v50, v60);
  v61 = v50 + v60;
  v62 = v13;
  v63 = (v56 * v54) >> 64;
  v64 = v56 * v54;
  v13 = __CFADD__(v59, v64);
  v65 = v59 + v64;
  if (v13)
  {
    v66 = v63 + 1;
  }

  else
  {
    v66 = v63;
  }

  v67 = __PAIR128__(v52, v61) + __PAIR128__(v62, v66);
  result[3] = v65;
  v68 = a3[1];
  v69 = *a3 * a2[4] + v67;
  v70 = *(&v67 + 1) + v67;
  v71 = __CFADD__(*(&v67 + 1), v67);
  v73 = a2[2];
  v72 = a2[3];
  v74 = (v68 * v72) >> 64;
  v75 = v68 * v72;
  v13 = __CFADD__(v69, v75);
  v76 = v69 + v75;
  if (v13)
  {
    v77 = v74 + 1;
  }

  else
  {
    v77 = v74;
  }

  v13 = __CFADD__(v70, v77);
  v78 = v70 + v77;
  v79 = v13;
  v80 = a3[2];
  v81 = a3[3];
  v82 = (v80 * v73) >> 64;
  v83 = v80 * v73;
  v13 = __CFADD__(v76, v83);
  v84 = v76 + v83;
  if (v13)
  {
    v85 = v82 + 1;
  }

  else
  {
    v85 = v82;
  }

  v13 = __CFADD__(v78, v85);
  v86 = v78 + v85;
  v87 = v71 + v13 + v79;
  v89 = *a2;
  v88 = a2[1];
  v90 = (v81 * v88) >> 64;
  v91 = v81 * v88;
  v13 = __CFADD__(v84, v91);
  v92 = v84 + v91;
  if (v13)
  {
    v93 = v90 + 1;
  }

  else
  {
    v93 = v90;
  }

  v13 = __CFADD__(v86, v93);
  v94 = v86 + v93;
  v95 = v13;
  v96 = a3[4];
  v97 = (v96 * v89) >> 64;
  v98 = v96 * v89;
  v13 = __CFADD__(v92, v98);
  v99 = v92 + v98;
  if (v13)
  {
    v100 = v97 + 1;
  }

  else
  {
    v100 = v97;
  }

  v101 = __PAIR128__(v87, v94) + __PAIR128__(v95, v100);
  result[4] = v99;
  v102 = a2[1];
  v104 = a3[4];
  v103 = a3[5];
  v105 = v103 * *a2;
  v13 = __CFADD__(v105, v101);
  v106 = v105 + v101;
  if (v13)
  {
    v107 = ((v103 * *a2) >> 64) + 1;
  }

  else
  {
    v107 = (v103 * *a2) >> 64;
  }

  v108 = *(&v101 + 1) + v101;
  v109 = (v104 * v102) >> 64;
  v110 = v104 * v102;
  v13 = __CFADD__(v106, v110);
  v111 = v106 + v110;
  if (v13)
  {
    v112 = v109 + 1;
  }

  else
  {
    v112 = v109;
  }

  v13 = __CFADD__(v108, v112);
  v113 = v108 + v112;
  v114 = v13;
  if (__CFADD__(*(&v101 + 1), v101))
  {
    v115 = v114 + 1;
  }

  else
  {
    v115 = v114;
  }

  v116 = a2[2];
  v117 = a2[3];
  v119 = a3[2];
  v118 = a3[3];
  v120 = (v118 * v116) >> 64;
  v121 = v118 * v116;
  v13 = __CFADD__(v111, v121);
  v122 = v111 + v121;
  if (v13)
  {
    v123 = v120 + 1;
  }

  else
  {
    v123 = v120;
  }

  v13 = __CFADD__(v113, v123);
  v124 = v113 + v123;
  v125 = v13;
  v126 = (v119 * v117) >> 64;
  v127 = v119 * v117;
  v13 = __CFADD__(v122, v127);
  v128 = v122 + v127;
  if (v13)
  {
    v129 = v126 + 1;
  }

  else
  {
    v129 = v126;
  }

  v130 = __PAIR128__(v115, v124) + __PAIR128__(v125, v129);
  v131 = a2[4];
  v132 = a2[5];
  v134 = *a3;
  v133 = a3[1];
  v135 = (v133 * v131) >> 64;
  v136 = v133 * v131;
  v13 = __CFADD__(v128, v136);
  v137 = v128 + v136;
  if (v13)
  {
    v138 = v135 + 1;
  }

  else
  {
    v138 = v135;
  }

  v139 = __CFADD__(v130, v138);
  v140 = (v134 * v132) >> 64;
  v141 = v134 * v132;
  v13 = __CFADD__(v137, v141);
  v142 = v137 + v141;
  if (v13)
  {
    v143 = v140 + 1;
  }

  else
  {
    v143 = v140;
  }

  v144 = v130 + __PAIR128__(v139, v143);
  result[5] = v142;
  v145 = a3[1];
  v146 = *a3 * a2[6] + v144;
  v147 = *(&v144 + 1) + v144;
  v148 = __CFADD__(*(&v144 + 1), v144);
  v150 = a2[4];
  v149 = a2[5];
  v151 = (v145 * v149) >> 64;
  v152 = v145 * v149;
  v13 = __CFADD__(v146, v152);
  v153 = v146 + v152;
  if (v13)
  {
    v154 = v151 + 1;
  }

  else
  {
    v154 = v151;
  }

  v13 = __CFADD__(v147, v154);
  v155 = v147 + v154;
  v156 = v13;
  v157 = a3[2];
  v158 = a3[3];
  v159 = (v157 * v150) >> 64;
  v160 = v157 * v150;
  v13 = __CFADD__(v153, v160);
  v161 = v153 + v160;
  if (v13)
  {
    v162 = v159 + 1;
  }

  else
  {
    v162 = v159;
  }

  v13 = __CFADD__(v155, v162);
  v163 = v155 + v162;
  v164 = v148 + v13 + v156;
  v166 = a2[2];
  v165 = a2[3];
  v167 = (v158 * v165) >> 64;
  v168 = v158 * v165;
  v13 = __CFADD__(v161, v168);
  v169 = v161 + v168;
  if (v13)
  {
    v170 = v167 + 1;
  }

  else
  {
    v170 = v167;
  }

  v13 = __CFADD__(v163, v170);
  v171 = v163 + v170;
  v172 = v13;
  v173 = a3[4];
  v174 = a3[5];
  v175 = (v173 * v166) >> 64;
  v176 = v173 * v166;
  v13 = __CFADD__(v169, v176);
  v177 = v169 + v176;
  if (v13)
  {
    v178 = v175 + 1;
  }

  else
  {
    v178 = v175;
  }

  v179 = __PAIR128__(v164, v171) + __PAIR128__(v172, v178);
  v181 = *a2;
  v180 = a2[1];
  v182 = (v174 * v180) >> 64;
  v183 = v174 * v180;
  v13 = __CFADD__(v177, v183);
  v184 = v177 + v183;
  if (v13)
  {
    v185 = v182 + 1;
  }

  else
  {
    v185 = v182;
  }

  v186 = __CFADD__(v179, v185);
  v187 = a3[6];
  v188 = (v187 * v181) >> 64;
  v189 = v187 * v181;
  v13 = __CFADD__(v184, v189);
  v190 = v184 + v189;
  if (v13)
  {
    v191 = v188 + 1;
  }

  else
  {
    v191 = v188;
  }

  v192 = v179 + __PAIR128__(v186, v191);
  result[6] = v190;
  v193 = a2[1];
  v195 = a3[6];
  v194 = a3[7];
  v196 = v194 * *a2;
  v13 = __CFADD__(v196, v192);
  v197 = v196 + v192;
  if (v13)
  {
    v198 = ((v194 * *a2) >> 64) + 1;
  }

  else
  {
    v198 = (v194 * *a2) >> 64;
  }

  v199 = *(&v192 + 1) + v192;
  v200 = (v195 * v193) >> 64;
  v201 = v195 * v193;
  v13 = __CFADD__(v197, v201);
  v202 = v197 + v201;
  if (v13)
  {
    v203 = v200 + 1;
  }

  else
  {
    v203 = v200;
  }

  v13 = __CFADD__(v199, v203);
  v204 = v199 + v203;
  v205 = v13;
  if (__CFADD__(*(&v192 + 1), v192))
  {
    v206 = v205 + 1;
  }

  else
  {
    v206 = v205;
  }

  v207 = a2[2];
  v208 = a2[3];
  v210 = a3[4];
  v209 = a3[5];
  v211 = (v209 * v207) >> 64;
  v212 = v209 * v207;
  v13 = __CFADD__(v202, v212);
  v213 = v202 + v212;
  if (v13)
  {
    v214 = v211 + 1;
  }

  else
  {
    v214 = v211;
  }

  v13 = __CFADD__(v204, v214);
  v215 = v204 + v214;
  v216 = v13;
  v217 = (v210 * v208) >> 64;
  v218 = v210 * v208;
  v13 = __CFADD__(v213, v218);
  v219 = v213 + v218;
  if (v13)
  {
    v220 = v217 + 1;
  }

  else
  {
    v220 = v217;
  }

  v221 = __PAIR128__(v206, v215) + __PAIR128__(v216, v220);
  v222 = a2[4];
  v223 = a2[5];
  v225 = a3[2];
  v224 = a3[3];
  v226 = (v224 * v222) >> 64;
  v227 = v224 * v222;
  v13 = __CFADD__(v219, v227);
  v228 = v219 + v227;
  if (v13)
  {
    v229 = v226 + 1;
  }

  else
  {
    v229 = v226;
  }

  v230 = __CFADD__(v221, v229);
  v231 = (v225 * v223) >> 64;
  v232 = v225 * v223;
  v13 = __CFADD__(v228, v232);
  v233 = v228 + v232;
  if (v13)
  {
    v234 = v231 + 1;
  }

  else
  {
    v234 = v231;
  }

  v235 = v221 + __PAIR128__(v230, v234);
  v236 = a2[6];
  v237 = a2[7];
  v239 = *a3;
  v238 = a3[1];
  v240 = (v238 * v236) >> 64;
  v241 = v238 * v236;
  v13 = __CFADD__(v233, v241);
  v242 = v233 + v241;
  if (v13)
  {
    v243 = v240 + 1;
  }

  else
  {
    v243 = v240;
  }

  v244 = __CFADD__(v235, v243);
  v245 = (v239 * v237) >> 64;
  v246 = v239 * v237;
  v13 = __CFADD__(v242, v246);
  v247 = v242 + v246;
  if (v13)
  {
    v248 = v245 + 1;
  }

  else
  {
    v248 = v245;
  }

  v249 = v235 + __PAIR128__(v244, v248);
  result[7] = v247;
  v250 = a3[2];
  v251 = a3[1] * a2[7] + v249;
  v252 = *(&v249 + 1) + v249;
  v253 = __CFADD__(*(&v249 + 1), v249);
  v255 = a2[5];
  v254 = a2[6];
  v256 = (v250 * v254) >> 64;
  v257 = v250 * v254;
  v13 = __CFADD__(v251, v257);
  v258 = v251 + v257;
  if (v13)
  {
    v259 = v256 + 1;
  }

  else
  {
    v259 = v256;
  }

  v13 = __CFADD__(v252, v259);
  v260 = v252 + v259;
  v261 = v13;
  v262 = a3[3];
  v263 = a3[4];
  v264 = (v262 * v255) >> 64;
  v265 = v262 * v255;
  v13 = __CFADD__(v258, v265);
  v266 = v258 + v265;
  if (v13)
  {
    v267 = v264 + 1;
  }

  else
  {
    v267 = v264;
  }

  v13 = __CFADD__(v260, v267);
  v268 = v260 + v267;
  v269 = v253 + v13 + v261;
  v271 = a2[3];
  v270 = a2[4];
  v272 = (v263 * v270) >> 64;
  v273 = v263 * v270;
  v13 = __CFADD__(v266, v273);
  v274 = v266 + v273;
  if (v13)
  {
    v275 = v272 + 1;
  }

  else
  {
    v275 = v272;
  }

  v13 = __CFADD__(v268, v275);
  v276 = v268 + v275;
  v277 = v13;
  v278 = a3[5];
  v279 = a3[6];
  v280 = (v278 * v271) >> 64;
  v281 = v278 * v271;
  v13 = __CFADD__(v274, v281);
  v282 = v274 + v281;
  if (v13)
  {
    v283 = v280 + 1;
  }

  else
  {
    v283 = v280;
  }

  v284 = __PAIR128__(v269, v276) + __PAIR128__(v277, v283);
  v286 = a2[1];
  v285 = a2[2];
  v287 = (v279 * v285) >> 64;
  v288 = v279 * v285;
  v13 = __CFADD__(v282, v288);
  v289 = v282 + v288;
  if (v13)
  {
    v290 = v287 + 1;
  }

  else
  {
    v290 = v287;
  }

  v291 = __CFADD__(v284, v290);
  v292 = a3[7];
  v293 = (v292 * v286) >> 64;
  v294 = v292 * v286;
  v13 = __CFADD__(v289, v294);
  v295 = v289 + v294;
  if (v13)
  {
    v296 = v293 + 1;
  }

  else
  {
    v296 = v293;
  }

  v297 = v284 + __PAIR128__(v291, v296);
  result[8] = v295;
  v298 = a2[3];
  v299 = a3[6];
  v300 = a3[7] * a2[2] + v297;
  v301 = *(&v297 + 1) + v297;
  v302 = (v299 * v298) >> 64;
  v303 = v299 * v298;
  v13 = __CFADD__(v300, v303);
  v304 = v300 + v303;
  if (v13)
  {
    v305 = v302 + 1;
  }

  else
  {
    v305 = v302;
  }

  v13 = __CFADD__(v301, v305);
  v306 = v301 + v305;
  v307 = v13;
  if (__CFADD__(*(&v297 + 1), v297))
  {
    v308 = v307 + 1;
  }

  else
  {
    v308 = v307;
  }

  v309 = a2[4];
  v310 = a2[5];
  v312 = a3[4];
  v311 = a3[5];
  v313 = (v311 * v309) >> 64;
  v314 = v311 * v309;
  v13 = __CFADD__(v304, v314);
  v315 = v304 + v314;
  if (v13)
  {
    v316 = v313 + 1;
  }

  else
  {
    v316 = v313;
  }

  v13 = __CFADD__(v306, v316);
  v317 = v306 + v316;
  v318 = v13;
  v319 = (v312 * v310) >> 64;
  v320 = v312 * v310;
  v13 = __CFADD__(v315, v320);
  v321 = v315 + v320;
  if (v13)
  {
    v322 = v319 + 1;
  }

  else
  {
    v322 = v319;
  }

  v323 = __PAIR128__(v308, v317) + __PAIR128__(v318, v322);
  v324 = a2[6];
  v325 = a2[7];
  v327 = a3[2];
  v326 = a3[3];
  v328 = (v326 * v324) >> 64;
  v329 = v326 * v324;
  v13 = __CFADD__(v321, v329);
  v330 = v321 + v329;
  if (v13)
  {
    v331 = v328 + 1;
  }

  else
  {
    v331 = v328;
  }

  v332 = __CFADD__(v323, v331);
  v333 = (v327 * v325) >> 64;
  v334 = v327 * v325;
  v13 = __CFADD__(v330, v334);
  v335 = v330 + v334;
  if (v13)
  {
    v336 = v333 + 1;
  }

  else
  {
    v336 = v333;
  }

  v337 = v323 + __PAIR128__(v332, v336);
  result[9] = v335;
  v338 = a3[4];
  v339 = a3[3] * a2[7] + v337;
  v340 = *(&v337 + 1) + v337;
  v341 = __CFADD__(*(&v337 + 1), v337);
  v343 = a2[5];
  v342 = a2[6];
  v344 = (v338 * v342) >> 64;
  v345 = v338 * v342;
  v13 = __CFADD__(v339, v345);
  v346 = v339 + v345;
  if (v13)
  {
    v347 = v344 + 1;
  }

  else
  {
    v347 = v344;
  }

  v13 = __CFADD__(v340, v347);
  v348 = v340 + v347;
  v349 = v13;
  v350 = a3[5];
  v351 = a3[6];
  v352 = (v350 * v343) >> 64;
  v353 = v350 * v343;
  v13 = __CFADD__(v346, v353);
  v354 = v346 + v353;
  if (v13)
  {
    v355 = v352 + 1;
  }

  else
  {
    v355 = v352;
  }

  v13 = __CFADD__(v348, v355);
  v356 = v348 + v355;
  v357 = v341 + v13 + v349;
  v359 = a2[3];
  v358 = a2[4];
  v360 = (v351 * v358) >> 64;
  v361 = v351 * v358;
  v13 = __CFADD__(v354, v361);
  v362 = v354 + v361;
  if (v13)
  {
    v363 = v360 + 1;
  }

  else
  {
    v363 = v360;
  }

  v13 = __CFADD__(v356, v363);
  v364 = v356 + v363;
  v365 = v13;
  v366 = a3[7];
  v367 = (v366 * v359) >> 64;
  v368 = v366 * v359;
  v13 = __CFADD__(v362, v368);
  v369 = v362 + v368;
  if (v13)
  {
    v370 = v367 + 1;
  }

  else
  {
    v370 = v367;
  }

  v371 = __PAIR128__(v357, v364) + __PAIR128__(v365, v370);
  result[10] = v369;
  v372 = a2[5];
  v373 = a3[6];
  v374 = a3[7] * a2[4] + v371;
  v375 = *(&v371 + 1) + v371;
  v376 = (v373 * v372) >> 64;
  v377 = v373 * v372;
  v13 = __CFADD__(v374, v377);
  v378 = v374 + v377;
  if (v13)
  {
    v379 = v376 + 1;
  }

  else
  {
    v379 = v376;
  }

  v13 = __CFADD__(v375, v379);
  v380 = v375 + v379;
  v381 = v13;
  v382 = a2[6];
  v383 = a2[7];
  v385 = a3[4];
  v384 = a3[5];
  v386 = (v384 * v382) >> 64;
  v387 = v384 * v382;
  if (__CFADD__(*(&v371 + 1), v371))
  {
    ++v381;
  }

  v13 = __CFADD__(v378, v387);
  v388 = v378 + v387;
  if (v13)
  {
    v389 = v386 + 1;
  }

  else
  {
    v389 = v386;
  }

  v13 = __CFADD__(v380, v389);
  v390 = v380 + v389;
  v391 = v13;
  v392 = (v385 * v383) >> 64;
  v393 = v385 * v383;
  v13 = __CFADD__(v388, v393);
  v394 = v388 + v393;
  if (v13)
  {
    v395 = v392 + 1;
  }

  else
  {
    v395 = v392;
  }

  v396 = __PAIR128__(v381, v390) + __PAIR128__(v391, v395);
  result[11] = v394;
  v397 = a3[6];
  v398 = a3[5] * a2[7] + v396;
  v399 = *(&v396 + 1) + v396;
  v400 = __CFADD__(*(&v396 + 1), v396);
  v402 = a2[5];
  v401 = a2[6];
  v403 = (v397 * v401) >> 64;
  v404 = v397 * v401;
  v13 = __CFADD__(v398, v404);
  v405 = v398 + v404;
  if (v13)
  {
    v406 = v403 + 1;
  }

  else
  {
    v406 = v403;
  }

  v13 = __CFADD__(v399, v406);
  v407 = v399 + v406;
  v408 = v13;
  v409 = a3[7];
  v410 = (v409 * v402) >> 64;
  v411 = v409 * v402;
  v13 = __CFADD__(v405, v411);
  v412 = v405 + v411;
  if (v13)
  {
    v413 = v410 + 1;
  }

  else
  {
    v413 = v410;
  }

  v13 = __CFADD__(v407, v413);
  v414 = v407 + v413;
  v415 = v400 + v13 + v408;
  result[12] = v412;
  v416 = a2[6];
  v417 = a2[7];
  v419 = a3[6];
  v418 = a3[7];
  v420 = (v418 * v416) >> 64;
  v421 = v418 * v416;
  v13 = __CFADD__(v421, v414);
  v422 = v421 + v414;
  if (v13)
  {
    v423 = v420 + 1;
  }

  else
  {
    v423 = v420;
  }

  v424 = v415 + v423;
  v425 = (v419 * v417) >> 64;
  v426 = v419 * v417;
  v13 = __CFADD__(v422, v426);
  v427 = v422 + v426;
  if (v13)
  {
    v428 = v425 + 1;
  }

  else
  {
    v428 = v425;
  }

  v13 = __CFADD__(v424, v428);
  v429 = v424 + v428;
  v430 = v13;
  result[13] = v427;
  v431 = a2[7];
  v432 = a3[7];
  v433 = (v432 * v431) >> 64;
  v434 = v432 * v431;
  v13 = __CFADD__(v434, v429);
  v435 = v434 + v429;
  if (v13)
  {
    v436 = v433 + 1;
  }

  else
  {
    v436 = v433;
  }

  result[14] = v435;
  result[15] = v430 + __CFADD__(v415, v423) + v436;
  return result;
}

void *sub_239428C0C(void *result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v3 = (*a3 * v5) >> 64;
  *result = *a3 * *a2;
  v6 = a2[1];
  v8 = *a3;
  v7 = a3[1];
  v9 = (__PAIR128__(v7, v4) * v5) >> 64;
  if (__CFADD__(v7 * *a2, v3))
  {
    v10 = ((v7 * *a2) >> 64) + 1;
  }

  else
  {
    v10 = (v7 * *a2) >> 64;
  }

  v11 = (v8 * v6) >> 64;
  v12 = v8 * v6;
  v13 = __CFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v11;
  }

  result[1] = v14;
  v16 = a2[2];
  v17 = a3[1];
  v18 = (*a3 * v16) >> 64;
  v19 = *a3 * v16;
  v13 = __CFADD__(v19, v15 + v10);
  v20 = v19 + v15 + v10;
  if (v13)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v18;
  }

  v13 = __CFADD__(__CFADD__(v15, v10), v21);
  v22 = __CFADD__(v15, v10) + v21;
  v23 = v13;
  v25 = *a2;
  v24 = a2[1];
  v26 = (v17 * v24) >> 64;
  v27 = v17 * v24;
  v13 = __CFADD__(v20, v27);
  v28 = v20 + v27;
  if (v13)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v26;
  }

  v13 = __CFADD__(v22, v29);
  v30 = v22 + v29;
  v31 = v13;
  v32 = a3[2];
  v33 = (v32 * v25) >> 64;
  v34 = v32 * v25;
  v13 = __CFADD__(v28, v34);
  v35 = v28 + v34;
  if (v13)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v13 = __CFADD__(v30, v36);
  v37 = v30 + v36;
  v38 = v23 + v13 + v31;
  result[2] = v35;
  v39 = a2[1];
  v41 = a3[2];
  v40 = a3[3];
  v42 = v40 * *a2;
  v13 = __CFADD__(v42, v37);
  v43 = v42 + v37;
  if (v13)
  {
    v44 = ((v40 * *a2) >> 64) + 1;
  }

  else
  {
    v44 = (v40 * *a2) >> 64;
  }

  v45 = v38 + v44;
  v46 = (v41 * v39) >> 64;
  v47 = v41 * v39;
  v13 = __CFADD__(v43, v47);
  v48 = v43 + v47;
  if (v13)
  {
    v49 = v46 + 1;
  }

  else
  {
    v49 = v46;
  }

  v13 = __CFADD__(v45, v49);
  v50 = v45 + v49;
  v51 = v13;
  v13 = __CFADD__(v38, v44);
  v52 = a2[2];
  v53 = a2[3];
  v55 = *a3;
  v54 = a3[1];
  v56 = (v54 * v52) >> 64;
  v57 = v54 * v52;
  if (v13)
  {
    ++v51;
  }

  v13 = __CFADD__(v48, v57);
  v58 = v48 + v57;
  if (v13)
  {
    v59 = v56 + 1;
  }

  else
  {
    v59 = v56;
  }

  v13 = __CFADD__(v50, v59);
  v60 = v50 + v59;
  v61 = v13;
  v62 = (v55 * v53) >> 64;
  v63 = v55 * v53;
  v13 = __CFADD__(v58, v63);
  v64 = v58 + v63;
  if (v13)
  {
    v65 = v62 + 1;
  }

  else
  {
    v65 = v62;
  }

  v66 = __PAIR128__(v51, v60) + __PAIR128__(v61, v65);
  result[3] = v64;
  v67 = a3[2];
  v68 = a3[1] * a2[3] + v66;
  v69 = *(&v66 + 1) + v66;
  v70 = __CFADD__(*(&v66 + 1), v66);
  v72 = a2[1];
  v71 = a2[2];
  v73 = (v67 * v71) >> 64;
  v74 = v67 * v71;
  v13 = __CFADD__(v68, v74);
  v75 = v68 + v74;
  if (v13)
  {
    v76 = v73 + 1;
  }

  else
  {
    v76 = v73;
  }

  v13 = __CFADD__(v69, v76);
  v77 = v69 + v76;
  v78 = v13;
  v79 = a3[3];
  v80 = (v79 * v72) >> 64;
  v81 = v79 * v72;
  v13 = __CFADD__(v75, v81);
  v82 = v75 + v81;
  if (v13)
  {
    v83 = v80 + 1;
  }

  else
  {
    v83 = v80;
  }

  v13 = __CFADD__(v77, v83);
  v84 = v77 + v83;
  v85 = v70 + v13 + v78;
  result[4] = v82;
  v86 = a2[2];
  v87 = a2[3];
  v89 = a3[2];
  v88 = a3[3];
  v90 = (v88 * v86) >> 64;
  v91 = v88 * v86;
  v13 = __CFADD__(v91, v84);
  v92 = v91 + v84;
  if (v13)
  {
    v93 = v90 + 1;
  }

  else
  {
    v93 = v90;
  }

  v94 = v85 + v93;
  v95 = (v89 * v87) >> 64;
  v96 = v89 * v87;
  v13 = __CFADD__(v92, v96);
  v97 = v92 + v96;
  if (v13)
  {
    v98 = v95 + 1;
  }

  else
  {
    v98 = v95;
  }

  v13 = __CFADD__(v94, v98);
  v99 = v94 + v98;
  v100 = v13;
  result[5] = v97;
  v101 = a2[3];
  v102 = a3[3];
  v103 = (v102 * v101) >> 64;
  v104 = v102 * v101;
  v13 = __CFADD__(v104, v99);
  v105 = v104 + v99;
  if (v13)
  {
    v106 = v103 + 1;
  }

  else
  {
    v106 = v103;
  }

  result[6] = v105;
  result[7] = v100 + __CFADD__(v85, v93) + v106;
  return result;
}

void *sub_239428DE4(void *result, unint64_t *a2)
{
  v2 = (*a2 * *a2) >> 64;
  *result = *a2 * *a2;
  v3 = a2[1];
  v4 = (*a2 * v3) >> 64;
  v5 = *a2 * v3;
  v6 = __CFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v6 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v6)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  result[1] = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 * v11) >> 64;
  v14 = v11 * v11;
  v6 = __CFADD__(v14, v10 + v8);
  v15 = v14 + v10 + v8;
  if (v6)
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v6 = __CFADD__(__CFADD__(v10, v8), v16);
  v17 = __CFADD__(v10, v8) + v16;
  v18 = v6;
  v19 = a2[2];
  v20 = (v12 * v19) >> 64;
  v21 = v12 * v19;
  v6 = __CFADD__(v15, v21);
  v22 = v15 + v21;
  if (v6)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  v6 = __CFADD__(v17, v23);
  v24 = v17 + v23;
  v25 = v6;
  v6 = __CFADD__(v22, v21);
  v26 = v22 + v21;
  if (v6)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v20;
  }

  v6 = __CFADD__(v24, v27);
  v28 = v24 + v27;
  v29 = v18 + v6 + v25;
  result[2] = v26;
  v31 = a2[2];
  v30 = a2[3];
  v32 = a2[1];
  v33 = (*a2 * v30) >> 64;
  v34 = *a2 * v30;
  v6 = __CFADD__(v34, v28);
  v35 = v34 + v28;
  if (v6)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v29 + v36;
  v6 = __CFADD__(v35, v34);
  v38 = v35 + v34;
  if (v6)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v33;
  }

  v6 = __CFADD__(v37, v39);
  v40 = v37 + v39;
  v41 = v6;
  if (__CFADD__(v29, v36))
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = (v32 * v31) >> 64;
  v44 = v32 * v31;
  v6 = __CFADD__(v38, v44);
  v45 = v38 + v44;
  if (v6)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v43;
  }

  v6 = __CFADD__(v40, v46);
  v47 = v40 + v46;
  v48 = v6;
  v6 = __CFADD__(v45, v44);
  v49 = v45 + v44;
  if (v6)
  {
    v50 = v43 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = __PAIR128__(v42, v47) + __PAIR128__(v48, v50);
  result[3] = v49;
  v52 = a2[3];
  v53 = a2[2] * a2[2] + v51;
  v54 = *(&v51 + 1) + v51;
  v55 = __CFADD__(*(&v51 + 1), v51);
  v57 = *a2;
  v56 = a2[1];
  v58 = (v56 * v52) >> 64;
  v59 = v56 * v52;
  v6 = __CFADD__(v53, v59);
  v60 = v53 + v59;
  if (v6)
  {
    v61 = v58 + 1;
  }

  else
  {
    v61 = v58;
  }

  v6 = __CFADD__(v54, v61);
  v62 = v54 + v61;
  v63 = v6;
  v6 = __CFADD__(v60, v59);
  v64 = v60 + v59;
  if (v6)
  {
    v65 = v58 + 1;
  }

  else
  {
    v65 = v58;
  }

  v6 = __CFADD__(v62, v65);
  v66 = v62 + v65;
  v67 = v55 + v6 + v63;
  v68 = a2[4];
  v69 = (v57 * v68) >> 64;
  v70 = v57 * v68;
  v6 = __CFADD__(v64, v70);
  v71 = v64 + v70;
  if (v6)
  {
    v72 = v69 + 1;
  }

  else
  {
    v72 = v69;
  }

  v6 = __CFADD__(v66, v72);
  v73 = v66 + v72;
  v74 = v6;
  v6 = __CFADD__(v71, v70);
  v75 = v71 + v70;
  if (v6)
  {
    v76 = v69 + 1;
  }

  else
  {
    v76 = v69;
  }

  v77 = __PAIR128__(v67, v73) + __PAIR128__(v74, v76);
  result[4] = v75;
  v79 = a2[4];
  v78 = a2[5];
  v80 = a2[1];
  v81 = (*a2 * v78) >> 64;
  v82 = *a2 * v78;
  v83 = v82 + v77;
  if (__CFADD__(v82, v77))
  {
    v84 = v81 + 1;
  }

  else
  {
    v84 = v81;
  }

  v85 = *(&v77 + 1) + v84;
  v6 = __CFADD__(v83, v82);
  v86 = v83 + v82;
  if (v6)
  {
    v87 = v81 + 1;
  }

  else
  {
    v87 = v81;
  }

  v6 = __CFADD__(v85, v87);
  v88 = v85 + v87;
  v89 = v6;
  if (__CFADD__(*(&v77 + 1), v84))
  {
    v90 = v89 + 1;
  }

  else
  {
    v90 = v89;
  }

  v91 = (v80 * v79) >> 64;
  v92 = v80 * v79;
  v6 = __CFADD__(v86, v92);
  v93 = v86 + v92;
  if (v6)
  {
    v94 = v91 + 1;
  }

  else
  {
    v94 = v91;
  }

  v6 = __CFADD__(v88, v94);
  v95 = v88 + v94;
  v96 = v6;
  v6 = __CFADD__(v93, v92);
  v97 = v93 + v92;
  if (v6)
  {
    v98 = v91 + 1;
  }

  else
  {
    v98 = v91;
  }

  v99 = __PAIR128__(v90, v95) + __PAIR128__(v96, v98);
  v101 = a2[2];
  v100 = a2[3];
  v102 = (v101 * v100) >> 64;
  v103 = v101 * v100;
  v6 = __CFADD__(v97, v103);
  v104 = v97 + v103;
  if (v6)
  {
    v105 = v102 + 1;
  }

  else
  {
    v105 = v102;
  }

  v106 = __CFADD__(v99, v105);
  v6 = __CFADD__(v104, v103);
  v107 = v104 + v103;
  if (v6)
  {
    v108 = v102 + 1;
  }

  else
  {
    v108 = v102;
  }

  v109 = v99 + __PAIR128__(v106, v108);
  result[5] = v107;
  v110 = a2[2];
  v111 = a2[3] * a2[3] + v109;
  v112 = *(&v109 + 1) + v109;
  v113 = __CFADD__(*(&v109 + 1), v109);
  v114 = a2[4];
  v115 = a2[5];
  v116 = (v110 * v114) >> 64;
  v117 = v110 * v114;
  v6 = __CFADD__(v111, v117);
  v118 = v111 + v117;
  if (v6)
  {
    v119 = v116 + 1;
  }

  else
  {
    v119 = v116;
  }

  v6 = __CFADD__(v112, v119);
  v120 = v112 + v119;
  v121 = v6;
  v6 = __CFADD__(v118, v117);
  v122 = v118 + v117;
  if (v6)
  {
    v123 = v116 + 1;
  }

  else
  {
    v123 = v116;
  }

  v6 = __CFADD__(v120, v123);
  v124 = v120 + v123;
  v125 = v113 + v6 + v121;
  v127 = *a2;
  v126 = a2[1];
  v128 = (v126 * v115) >> 64;
  v129 = v126 * v115;
  v6 = __CFADD__(v122, v129);
  v130 = v122 + v129;
  if (v6)
  {
    v131 = v128 + 1;
  }

  else
  {
    v131 = v128;
  }

  v6 = __CFADD__(v124, v131);
  v132 = v124 + v131;
  v133 = v6;
  v6 = __CFADD__(v130, v129);
  v134 = v130 + v129;
  if (v6)
  {
    v135 = v128 + 1;
  }

  else
  {
    v135 = v128;
  }

  v136 = __PAIR128__(v125, v132) + __PAIR128__(v133, v135);
  v137 = a2[6];
  v138 = (v127 * v137) >> 64;
  v139 = v127 * v137;
  v6 = __CFADD__(v134, v139);
  v140 = v134 + v139;
  if (v6)
  {
    v141 = v138 + 1;
  }

  else
  {
    v141 = v138;
  }

  v142 = __CFADD__(v136, v141);
  v6 = __CFADD__(v140, v139);
  v143 = v140 + v139;
  if (v6)
  {
    v144 = v138 + 1;
  }

  else
  {
    v144 = v138;
  }

  v145 = v136 + __PAIR128__(v142, v144);
  result[6] = v143;
  v147 = a2[6];
  v146 = a2[7];
  v148 = a2[1];
  v149 = (*a2 * v146) >> 64;
  v150 = *a2 * v146;
  v151 = v150 + v145;
  if (__CFADD__(v150, v145))
  {
    v152 = v149 + 1;
  }

  else
  {
    v152 = v149;
  }

  v153 = *(&v145 + 1) + v152;
  v6 = __CFADD__(v151, v150);
  v154 = v151 + v150;
  if (v6)
  {
    v155 = v149 + 1;
  }

  else
  {
    v155 = v149;
  }

  v6 = __CFADD__(v153, v155);
  v156 = v153 + v155;
  v157 = v6;
  if (__CFADD__(*(&v145 + 1), v152))
  {
    v158 = v157 + 1;
  }

  else
  {
    v158 = v157;
  }

  v159 = (v148 * v147) >> 64;
  v160 = v148 * v147;
  v6 = __CFADD__(v154, v160);
  v161 = v154 + v160;
  if (v6)
  {
    v162 = v159 + 1;
  }

  else
  {
    v162 = v159;
  }

  v6 = __CFADD__(v156, v162);
  v163 = v156 + v162;
  v164 = v6;
  v6 = __CFADD__(v161, v160);
  v165 = v161 + v160;
  if (v6)
  {
    v166 = v159 + 1;
  }

  else
  {
    v166 = v159;
  }

  v167 = __PAIR128__(v158, v163) + __PAIR128__(v164, v166);
  v169 = a2[4];
  v168 = a2[5];
  v170 = a2[2];
  v171 = a2[3];
  v172 = (v170 * v168) >> 64;
  v173 = v170 * v168;
  v6 = __CFADD__(v165, v173);
  v174 = v165 + v173;
  if (v6)
  {
    v175 = v172 + 1;
  }

  else
  {
    v175 = v172;
  }

  v176 = __CFADD__(v167, v175);
  v6 = __CFADD__(v174, v173);
  v177 = v174 + v173;
  if (v6)
  {
    v178 = v172 + 1;
  }

  else
  {
    v178 = v172;
  }

  v179 = v167 + __PAIR128__(v176, v178);
  v180 = (v171 * v169) >> 64;
  v181 = v171 * v169;
  v6 = __CFADD__(v177, v181);
  v182 = v177 + v181;
  if (v6)
  {
    v183 = v180 + 1;
  }

  else
  {
    v183 = v180;
  }

  v184 = __CFADD__(v179, v183);
  v6 = __CFADD__(v182, v181);
  v185 = v182 + v181;
  if (v6)
  {
    ++v180;
  }

  v186 = v179 + __PAIR128__(v184, v180);
  result[7] = v185;
  v187 = a2[3];
  v188 = a2[4] * a2[4] + v186;
  v189 = *(&v186 + 1) + v186;
  v190 = __CFADD__(*(&v186 + 1), v186);
  v191 = a2[5];
  v192 = a2[6];
  v193 = (v187 * v191) >> 64;
  v194 = v187 * v191;
  v6 = __CFADD__(v188, v194);
  v195 = v188 + v194;
  if (v6)
  {
    v196 = v193 + 1;
  }

  else
  {
    v196 = v193;
  }

  v6 = __CFADD__(v189, v196);
  v197 = v189 + v196;
  v198 = v6;
  v6 = __CFADD__(v195, v194);
  v199 = v195 + v194;
  if (v6)
  {
    v200 = v193 + 1;
  }

  else
  {
    v200 = v193;
  }

  v6 = __CFADD__(v197, v200);
  v201 = v197 + v200;
  v202 = v190 + v6 + v198;
  v204 = a2[1];
  v203 = a2[2];
  v205 = (v203 * v192) >> 64;
  v206 = v203 * v192;
  v6 = __CFADD__(v199, v206);
  v207 = v199 + v206;
  if (v6)
  {
    v208 = v205 + 1;
  }

  else
  {
    v208 = v205;
  }

  v6 = __CFADD__(v201, v208);
  v209 = v201 + v208;
  v210 = v6;
  v6 = __CFADD__(v207, v206);
  v211 = v207 + v206;
  if (v6)
  {
    v212 = v205 + 1;
  }

  else
  {
    v212 = v205;
  }

  v213 = __PAIR128__(v202, v209) + __PAIR128__(v210, v212);
  v214 = a2[7];
  v215 = (v204 * v214) >> 64;
  v216 = v204 * v214;
  v6 = __CFADD__(v211, v216);
  v217 = v211 + v216;
  if (v6)
  {
    v218 = v215 + 1;
  }

  else
  {
    v218 = v215;
  }

  v219 = __CFADD__(v213, v218);
  v6 = __CFADD__(v217, v216);
  v220 = v217 + v216;
  if (v6)
  {
    v221 = v215 + 1;
  }

  else
  {
    v221 = v215;
  }

  v222 = v213 + __PAIR128__(v219, v221);
  result[8] = v220;
  v224 = a2[6];
  v223 = a2[7];
  v225 = a2[2];
  v226 = a2[3];
  v227 = (v225 * v223) >> 64;
  v228 = v225 * v223;
  v229 = v228 + v222;
  if (__CFADD__(v228, v222))
  {
    v230 = v227 + 1;
  }

  else
  {
    v230 = v227;
  }

  v231 = *(&v222 + 1) + v230;
  v6 = __CFADD__(v229, v228);
  v232 = v229 + v228;
  if (v6)
  {
    v233 = v227 + 1;
  }

  else
  {
    v233 = v227;
  }

  v6 = __CFADD__(v231, v233);
  v234 = v231 + v233;
  v235 = v6;
  if (__CFADD__(*(&v222 + 1), v230))
  {
    v236 = v235 + 1;
  }

  else
  {
    v236 = v235;
  }

  v237 = (v226 * v224) >> 64;
  v238 = v226 * v224;
  v6 = __CFADD__(v232, v238);
  v239 = v232 + v238;
  if (v6)
  {
    v240 = v237 + 1;
  }

  else
  {
    v240 = v237;
  }

  v6 = __CFADD__(v234, v240);
  v241 = v234 + v240;
  v242 = v6;
  v6 = __CFADD__(v239, v238);
  v243 = v239 + v238;
  if (v6)
  {
    v244 = v237 + 1;
  }

  else
  {
    v244 = v237;
  }

  v245 = __PAIR128__(v236, v241) + __PAIR128__(v242, v244);
  v247 = a2[4];
  v246 = a2[5];
  v248 = (v247 * v246) >> 64;
  v249 = v247 * v246;
  v6 = __CFADD__(v243, v249);
  v250 = v243 + v249;
  if (v6)
  {
    v251 = v248 + 1;
  }

  else
  {
    v251 = v248;
  }

  v252 = __CFADD__(v245, v251);
  v6 = __CFADD__(v250, v249);
  v253 = v250 + v249;
  if (v6)
  {
    v254 = v248 + 1;
  }

  else
  {
    v254 = v248;
  }

  v255 = v245 + __PAIR128__(v252, v254);
  result[9] = v253;
  v256 = a2[6];
  v257 = a2[5] * a2[5] + v255;
  v258 = *(&v255 + 1) + v255;
  v259 = __CFADD__(*(&v255 + 1), v255);
  v261 = a2[3];
  v260 = a2[4];
  v262 = (v260 * v256) >> 64;
  v263 = v260 * v256;
  v6 = __CFADD__(v257, v263);
  v264 = v257 + v263;
  if (v6)
  {
    v265 = v262 + 1;
  }

  else
  {
    v265 = v262;
  }

  v6 = __CFADD__(v258, v265);
  v266 = v258 + v265;
  v267 = v6;
  v6 = __CFADD__(v264, v263);
  v268 = v264 + v263;
  if (v6)
  {
    v269 = v262 + 1;
  }

  else
  {
    v269 = v262;
  }

  v6 = __CFADD__(v266, v269);
  v270 = v266 + v269;
  v271 = v259 + v6 + v267;
  v272 = a2[7];
  v273 = (v261 * v272) >> 64;
  v274 = v261 * v272;
  v6 = __CFADD__(v268, v274);
  v275 = v268 + v274;
  if (v6)
  {
    v276 = v273 + 1;
  }

  else
  {
    v276 = v273;
  }

  v6 = __CFADD__(v270, v276);
  v277 = v270 + v276;
  v278 = v6;
  v6 = __CFADD__(v275, v274);
  v279 = v275 + v274;
  if (v6)
  {
    v280 = v273 + 1;
  }

  else
  {
    v280 = v273;
  }

  v281 = __PAIR128__(v271, v277) + __PAIR128__(v278, v280);
  result[10] = v279;
  v283 = a2[6];
  v282 = a2[7];
  v284 = a2[4];
  v285 = a2[5];
  v286 = (v284 * v282) >> 64;
  v287 = v284 * v282;
  v288 = v287 + v281;
  if (__CFADD__(v287, v281))
  {
    v289 = v286 + 1;
  }

  else
  {
    v289 = v286;
  }

  v290 = *(&v281 + 1) + v289;
  v6 = __CFADD__(v288, v287);
  v291 = v288 + v287;
  if (v6)
  {
    v292 = v286 + 1;
  }

  else
  {
    v292 = v286;
  }

  v6 = __CFADD__(v290, v292);
  v293 = v290 + v292;
  v294 = v6;
  if (__CFADD__(*(&v281 + 1), v289))
  {
    v295 = v294 + 1;
  }

  else
  {
    v295 = v294;
  }

  v296 = (v285 * v283) >> 64;
  v297 = v285 * v283;
  v6 = __CFADD__(v291, v297);
  v298 = v291 + v297;
  if (v6)
  {
    v299 = v296 + 1;
  }

  else
  {
    v299 = v296;
  }

  v6 = __CFADD__(v293, v299);
  v300 = v293 + v299;
  v301 = v6;
  v6 = __CFADD__(v298, v297);
  v302 = v298 + v297;
  if (v6)
  {
    v303 = v296 + 1;
  }

  else
  {
    v303 = v296;
  }

  v304 = __PAIR128__(v295, v300) + __PAIR128__(v301, v303);
  result[11] = v302;
  v305 = a2[5];
  v306 = a2[6] * a2[6] + v304;
  v307 = *(&v304 + 1) + v304;
  v308 = __CFADD__(*(&v304 + 1), v304);
  v309 = a2[7];
  v310 = (v305 * v309) >> 64;
  v311 = v305 * v309;
  v6 = __CFADD__(v306, v311);
  v312 = v306 + v311;
  if (v6)
  {
    v313 = v310 + 1;
  }

  else
  {
    v313 = v310;
  }

  v6 = __CFADD__(v307, v313);
  v314 = v307 + v313;
  v315 = v6;
  v6 = __CFADD__(v312, v311);
  v316 = v312 + v311;
  if (v6)
  {
    v317 = v310 + 1;
  }

  else
  {
    v317 = v310;
  }

  v6 = __CFADD__(v314, v317);
  v318 = v314 + v317;
  v319 = v308 + v6 + v315;
  result[12] = v316;
  v321 = a2[6];
  v320 = a2[7];
  v322 = (v321 * v320) >> 64;
  v323 = v321 * v320;
  v6 = __CFADD__(v323, v318);
  v324 = v323 + v318;
  if (v6)
  {
    v325 = v322 + 1;
  }

  else
  {
    v325 = v322;
  }

  v326 = v319 + v325;
  v6 = __CFADD__(v324, v323);
  v327 = v324 + v323;
  if (v6)
  {
    v328 = v322 + 1;
  }

  else
  {
    v328 = v322;
  }

  v6 = __CFADD__(v326, v328);
  v329 = v326 + v328;
  v330 = v6;
  result[13] = v327;
  v331 = a2[7];
  v332 = (v331 * v331) >> 64;
  v333 = v331 * v331;
  v6 = __CFADD__(v333, v329);
  v334 = v333 + v329;
  if (v6)
  {
    v335 = v332 + 1;
  }

  else
  {
    v335 = v332;
  }

  result[14] = v334;
  result[15] = v330 + __CFADD__(v319, v325) + v335;
  return result;
}

void *sub_2394293CC(void *result, unint64_t *a2)
{
  v2 = (*a2 * *a2) >> 64;
  *result = *a2 * *a2;
  v3 = a2[1];
  v4 = (*a2 * v3) >> 64;
  v5 = *a2 * v3;
  v6 = __CFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v6 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v6)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  result[1] = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 * v11) >> 64;
  v14 = v11 * v11;
  v6 = __CFADD__(v14, v10 + v8);
  v15 = v14 + v10 + v8;
  if (v6)
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v6 = __CFADD__(__CFADD__(v10, v8), v16);
  v17 = __CFADD__(v10, v8) + v16;
  v18 = v6;
  v19 = a2[2];
  v20 = (v12 * v19) >> 64;
  v21 = v12 * v19;
  v6 = __CFADD__(v15, v21);
  v22 = v15 + v21;
  if (v6)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  v6 = __CFADD__(v17, v23);
  v24 = v17 + v23;
  v25 = v6;
  v6 = __CFADD__(v22, v21);
  v26 = v22 + v21;
  if (v6)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v20;
  }

  v6 = __CFADD__(v24, v27);
  v28 = v24 + v27;
  v29 = v18 + v6 + v25;
  result[2] = v26;
  v31 = a2[2];
  v30 = a2[3];
  v32 = a2[1];
  v33 = (*a2 * v30) >> 64;
  v34 = *a2 * v30;
  v6 = __CFADD__(v34, v28);
  v35 = v34 + v28;
  if (v6)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v29 + v36;
  v6 = __CFADD__(v35, v34);
  v38 = v35 + v34;
  if (v6)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v33;
  }

  v6 = __CFADD__(v37, v39);
  v40 = v37 + v39;
  v41 = v6;
  if (__CFADD__(v29, v36))
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = (v32 * v31) >> 64;
  v44 = v32 * v31;
  v6 = __CFADD__(v38, v44);
  v45 = v38 + v44;
  if (v6)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v43;
  }

  v6 = __CFADD__(v40, v46);
  v47 = v40 + v46;
  v48 = v6;
  v6 = __CFADD__(v45, v44);
  v49 = v45 + v44;
  if (v6)
  {
    v50 = v43 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = __PAIR128__(v42, v47) + __PAIR128__(v48, v50);
  result[3] = v49;
  v52 = a2[1];
  v53 = a2[2] * a2[2] + v51;
  v54 = *(&v51 + 1) + v51;
  v55 = __CFADD__(*(&v51 + 1), v51);
  v56 = a2[3];
  v57 = (v52 * v56) >> 64;
  v58 = v52 * v56;
  v6 = __CFADD__(v53, v58);
  v59 = v53 + v58;
  if (v6)
  {
    v60 = v57 + 1;
  }

  else
  {
    v60 = v57;
  }

  v6 = __CFADD__(v54, v60);
  v61 = v54 + v60;
  v62 = v6;
  v6 = __CFADD__(v59, v58);
  v63 = v59 + v58;
  if (v6)
  {
    v64 = v57 + 1;
  }

  else
  {
    v64 = v57;
  }

  v6 = __CFADD__(v61, v64);
  v65 = v61 + v64;
  v66 = v55 + v6 + v62;
  result[4] = v63;
  v68 = a2[2];
  v67 = a2[3];
  v69 = (v68 * v67) >> 64;
  v70 = v68 * v67;
  v6 = __CFADD__(v70, v65);
  v71 = v70 + v65;
  if (v6)
  {
    v72 = v69 + 1;
  }

  else
  {
    v72 = v69;
  }

  v73 = v66 + v72;
  v6 = __CFADD__(v71, v70);
  v74 = v71 + v70;
  if (v6)
  {
    v75 = v69 + 1;
  }

  else
  {
    v75 = v69;
  }

  v6 = __CFADD__(v73, v75);
  v76 = v73 + v75;
  v77 = v6;
  result[5] = v74;
  v78 = a2[3];
  v79 = (v78 * v78) >> 64;
  v80 = v78 * v78;
  v6 = __CFADD__(v80, v76);
  v81 = v80 + v76;
  if (v6)
  {
    v82 = v79 + 1;
  }

  else
  {
    v82 = v79;
  }

  result[6] = v81;
  result[7] = v77 + __CFADD__(v66, v72) + v82;
  return result;
}

uint64_t sub_23942954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) < 1 || (**a2 & 1) == 0)
  {
    v4 = 104;
    v5 = 73;
LABEL_6:
    sub_2394170F4(3, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/jacobi.c", v5);
    return 4294967294;
  }

  if (*(a2 + 16))
  {
    v4 = 109;
    v5 = 79;
    goto LABEL_6;
  }

  sub_239422DA4(a3);
  v9 = sub_239422E50(a3);
  v10 = sub_239422E50(a3);
  if (v10 && (v11 = v10, sub_239421F90(v9, a1)) && sub_239421F90(v11, a2))
  {
    v13 = (v9 + 1);
    v12 = *(v9 + 2);
    if (v12)
    {
      v14 = 1;
      v15 = v11;
      while (1)
      {
        v16 = 0;
        v11 = v9;
        v9 = v15;
        v17 = *v11;
        v18 = v12;
        do
        {
          v19 = *v17++;
          v16 |= v19;
          --v18;
        }

        while (v18);
        if (!v16)
        {
          break;
        }

          ;
        }

        if (!sub_23942373C(v11, v11, i))
        {
          goto LABEL_41;
        }

        if (i)
        {
          if (*(v9 + 2))
          {
            v21 = **v9 & 7;
          }

          else
          {
            v21 = 0;
          }

          v14 *= dword_2395CAC44[v21];
        }

        v22 = *v13;
        if (*(v11 + 4))
        {
          if (v22)
          {
            v23 = ~**v11;
          }

          else
          {
            LOBYTE(v23) = -1;
          }
        }

        else if (v22)
        {
          v23 = **v11;
        }

        else
        {
          LOBYTE(v23) = 0;
        }

        v13 = (v9 + 1);
        if (*(v9 + 2))
        {
          v24 = **v9;
        }

        else
        {
          LOBYTE(v24) = 0;
        }

        if (!sub_239423800(v9, v9, v11, a3))
        {
          goto LABEL_41;
        }

        if ((v23 & v24 & 2) != 0)
        {
          v14 = -v14;
        }

        *(v11 + 4) = 0;
        v12 = *v13;
        v15 = v11;
        if (!*v13)
        {
          goto LABEL_46;
        }
      }

      v11 = v15;
    }

    else
    {
      v14 = 1;
    }

LABEL_46:
    if (sub_239422B0C(v11))
    {
      result = v14;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
LABEL_41:
    result = 4294967294;
  }

  if (!*(a3 + 40))
  {
    v25 = *(a3 + 8);
    v26 = *(a3 + 16) - 1;
    *(a3 + 16) = v26;
    *(a3 + 32) = *(v25 + 8 * v26);
  }

  return result;
}

double sub_2394297AC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_2394297C8(void **a1)
{
  sub_239421EC8(a1);

  sub_239421EC8(a1 + 3);
}

double sub_239429800()
{
  v0 = sub_23945004C(0x40uLL);
  if (v0)
  {
    result = 0.0;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 0;
  }

  return result;
}

void **sub_239429838(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    if (sub_239421F90(a1, a2) && sub_239421F90(v2 + 3, a2 + 24))
    {
      v2[6] = *(a2 + 48);
      v2[7] = *(a2 + 56);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_23942989C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!sub_239429960(a1, a2))
  {
    return 0;
  }

  if (a3)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v6 = sub_23945004C(0x30uLL);
  if (!v6)
  {
    return 0;
  }

  v5 = v6;
  *(v6 + 26) = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  a3 = v6;
LABEL_6:
  v7 = a1[8];
  a1[4] = 0;
  a1[2] = 0;
  if (sub_239429B0C(a1, v7 << 7) && sub_239422F7C(0, a1, a1, (a1 + 6), a3))
  {
    v8 = sub_2394223D0(a1, a1[8]);
  }

  else
  {
    v8 = 0;
  }

  sub_239422D38(v5);
  return v8;
}

uint64_t sub_239429960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = 0;
  v6 = *a2;
  do
  {
    v5 |= *&v6[8 * v4++];
  }

  while (v2 != v4);
  if (!v5)
  {
LABEL_8:
    v7 = 105;
    v8 = 170;
    goto LABEL_9;
  }

  if (v2 < 1 || (*v6 & 1) == 0)
  {
    v7 = 104;
    v8 = 174;
LABEL_9:
    sub_2394170F4(3, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/montgomery.c", v8);
    return 0;
  }

  if (*(a2 + 16))
  {
    v7 = 109;
    v8 = 178;
    goto LABEL_9;
  }

  if (v2 >= 0x401)
  {
    v10 = 0;
    v11 = v2 - 1024;
    v12 = (v6 + 0x2000);
    do
    {
      v13 = *v12++;
      v10 |= v13;
      --v11;
    }

    while (v11);
    if (v10)
    {
      v7 = 102;
      v8 = 182;
      goto LABEL_9;
    }
  }

  if (!sub_239421F90((a1 + 24), a2))
  {
    v7 = 68;
    v8 = 188;
    goto LABEL_9;
  }

  v14 = *(a1 + 32);
  if (v14 < 1)
  {
    if (!v14)
    {
LABEL_25:
      *(a1 + 40) = 0;
    }
  }

  else
  {
    while (!*(*(a1 + 24) - 8 + 8 * v14))
    {
      v15 = __OFSUB__(v14--, 1);
      if ((v14 < 0) ^ v15 | (v14 == 0))
      {
        *(a1 + 32) = 0;
        goto LABEL_25;
      }
    }

    *(a1 + 32) = v14;
  }

  v16 = 0;
  v17 = 1;
  v18 = 64;
  do
  {
    v19 = v16;
    v20 = -(v17 & 1);
    v17 = (**(a1 + 24) & v20 & v17) + ((**(a1 + 24) & v20 ^ v17) >> 1);
    v16 = v20 & 0x8000000000000000 | (v19 >> 1);
    --v18;
  }

  while (v18);
  *(a1 + 48) = v16;
  *(a1 + 56) = 0;
  return 1;
}

uint64_t sub_239429B0C(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 >> 6;
  if (*(a1 + 8) <= (a2 >> 6))
  {
    result = sub_239421600(a1, (v4 + 1));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 8);
    if (v6 <= v4)
    {
      v7 = 8 * v6;
      v8 = v4 - v6 + 1;
      do
      {
        *(*a1 + v7) = 0;
        v7 += 8;
        --v8;
      }

      while (v8);
    }

    *(a1 + 8) = v4 + 1;
  }

  result = 1;
  *(*a1 + 8 * v4) |= 1 << (v2 & 0x3F);
  return result;
}

uint64_t sub_239429BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_239422114((a1 + 24));
  if (v4 == 1)
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
LABEL_3:
    v5 = *(a1 + 32);

    return sub_2394223D0(a1, v5);
  }

  else
  {
    v7 = v4;
    v8 = *(a1 + 32);
    if (sub_239429B0C(a1, v4 - 1) && sub_239424480(a1, a1, v8 - v7 + (v8 << 6) + 1, a1 + 24, a2))
    {
      v9 = 6;
      while (sub_239425948(a1, a1, a1, a1, a2))
      {
        if (!--v9)
        {
          goto LABEL_3;
        }
      }
    }

    return 0;
  }
}

uint64_t sub_239429C8C(uint64_t *a1, pthread_rwlock_t *a2, uint64_t a3, uint64_t a4)
{
  sub_239457D1C(a2);
  v8 = *a1;
  sub_239457D5C(a2);
  if (v8)
  {
    return 1;
  }

  sub_239457D3C(a2);
  if (*a1)
  {
    v9 = 1;
  }

  else
  {
    v10 = sub_239426A1C(a3, a4);
    *a1 = v10;
    v9 = v10 != 0;
  }

  sub_239457D5C(a2);
  return v9;
}

uint64_t sub_239429D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/montgomery.c", 323);
    return 0;
  }

  else
  {
    v6 = *(a3 + 32);
    if (v6)
    {
      result = sub_2394223D0(a2, 2 * v6);
      if (result)
      {
        result = sub_239421600(a1, *(a3 + 32));
        if (result)
        {
          v8 = *(a3 + 32);
          *(a1 + 8) = v8;
          *(a1 + 16) = 0;
          v9 = *a1;
          v10 = *a2;
          v11 = *(a2 + 8);

          return sub_239429E50(v9, v8, v10, v11, a3);
        }
      }
    }

    else
    {
      *(a1 + 8) = 0;
      return 1;
    }
  }

  return result;
}

BOOL sub_239429DEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 32);
  v4 = *(a1 + 8);
  if (v4 <= v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = v4 - v3;
  v7 = (*a1 + 8 * v3);
  do
  {
    v8 = *v7++;
    v5 |= v8;
    --v6;
  }

  while (v6);
  return v5 == 0;
}

uint64_t sub_239429E50(unint64_t *a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 32);
  if (v5 == a2 && 2 * v5 == a4)
  {
    v11 = *(a5 + 24);
    v12 = 0;
    if (v5)
    {
      v13 = *(a5 + 48);
      v14 = a3;
      v15 = a2;
      do
      {
        v16 = sub_239428340(v14, v11, a2, *v14 * v13);
        v17 = v14[a2];
        v18 = v16 + v12 + v17;
        v12 = (v18 <= v17) & ((v16 + v12 != 0) | v12);
        v14[a2] = v18;
        ++v14;
        --v15;
      }

      while (v15);
    }

    sub_23942389C(a1, &a3[a2], v12, v11, a2);
    return 1;
  }

  else
  {
    sub_2394170F4(3, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/montgomery.c", 294);
    return 0;
  }
}

void sub_239429F44(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v8[18] = *MEMORY[0x277D85DE8];
  if (a4 > 9 || 2 * a4 != a2)
  {
    abort();
  }

  if (a4 == 8)
  {
    v6 = *MEMORY[0x277D85DE8];

    sub_239428DE4(a1, a3);
  }

  else if (a4 == 4)
  {
    v5 = *MEMORY[0x277D85DE8];

    sub_2394293CC(a1, a3);
  }

  else
  {
    sub_23942A89C(a1, a3, a4, v8);
    sub_239450194(v8, 16 * a4);
    v7 = *MEMORY[0x277D85DE8];
  }
}

void sub_23942A054(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6)
{
  if (a6 + a4 != a2)
  {
    abort();
  }

  if (a4 == 8 && a6 == 8)
  {

    sub_2394284B4(a1, a3, a5);
  }

  else
  {

    sub_23942A4EC(a1, a3, a4, a5, a6);
  }
}

unint64_t sub_23942A0B8(uint64_t **a1)
{
  result = 0;
  v3 = **a1;
  v4 = 1;
  v5 = 64;
  do
  {
    v6 = -(v4 & 1);
    v4 = (v3 & v6 & v4) + ((v3 & v6 ^ v4) >> 1);
    result = v6 & 0x8000000000000000 | (result >> 1);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_23942A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  v10 = v8 - v9;
  if (v8 >= v9)
  {
    v11 = *(a3 + 8);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (v8 <= v9)
  {
    v12 = *(a3 + 8);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v14 = result;
    result = sub_239421600(a1, v12);
    if (result)
    {
      result = sub_239421600(v14, v12);
      if (result)
      {
        sub_23942A1D8(*a1, *a2, *a3, v11, v10, *v14);
        *(a1 + 8) = v12;
        result = 1;
      }
    }
  }

  if (!*(a4 + 40))
  {
    v15 = *(a4 + 8);
    v16 = *(a4 + 16) - 1;
    *(a4 + 16) = v16;
    *(a4 + 32) = *(v15 + 8 * v16);
  }

  return result;
}

uint64_t sub_23942A1D8(unint64_t *a1, unint64_t *a2, unint64_t *a3, int a4, signed int a5, unint64_t *a6)
{
  v6 = a6;
  v12 = sub_239447508(a6, a2, a3, a4, a5);
  sub_239447508(a1, a3, a2, a4, -a5);
  if (a5 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = -a5;
  }

  result = -v12;
  LODWORD(v15) = v13 + a4;
  if (v15)
  {
    v15 = v15;
    do
    {
      v16 = *v6++;
      *a1 = v16 & (v12 - 1) | *a1 & result;
      ++a1;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_23942A288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 8);
  v6 = *(a3 + 8);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
    return 1;
  }

  sub_239422DA4(a4);
  if (a1 != a2 && (v12 = a1, a1 != a3) || (result = sub_239422E50(a4), (v12 = result) != 0))
  {
    *(v12 + 4) = *(a3 + 16) ^ *(a2 + 16);
    if (v5 == 8 && v6 == 8)
    {
      result = sub_239421600(v12, 0x10uLL);
      if (result)
      {
        *(v12 + 2) = 16;
        sub_2394284B4(*v12, *a2, *a3);
LABEL_34:
        if (v12 == a1 || (result = sub_239421F90(a1, v12)) != 0)
        {
          result = 1;
        }
      }
    }

    else
    {
      v13 = v6 + v5;
      if (v5 >= 16 && v6 >= 16 && (v5 - v6 + 1) <= 2)
      {
        if (v5 - v6 >= 0)
        {
          v14 = v5;
        }

        else
        {
          v14 = v6;
        }

        v15 = sub_23942209C(v14);
        result = sub_239422E50(a4);
        if (!result)
        {
          goto LABEL_37;
        }

        v16 = result;
        v17 = v15 - 1;
        v18 = 1 << (v15 - 1);
        v22 = v18;
        if (v5 <= v18 && v6 <= v18)
        {
          result = sub_239421600(result, (4 << v17));
          if (!result)
          {
            goto LABEL_37;
          }

          result = sub_239421600(v12, (1 << v15));
          if (!result)
          {
            goto LABEL_37;
          }

          sub_23944793C(*v12, *a2, *a3, v22, v5 - v22, v6 - v22, *v16);
        }

        else
        {
          result = sub_239421600(result, 8 << v17);
          if (!result)
          {
            goto LABEL_37;
          }

          result = sub_239421600(v12, 4 << v17);
          if (!result)
          {
            goto LABEL_37;
          }

          sub_2394475B4(*v12, *a2, *a3, v22, v5 - v22, v6 - v22, *v16);
        }

        *(v12 + 2) = v6 + v5;
        goto LABEL_34;
      }

      result = sub_239421600(v12, v13);
      if (result)
      {
        *(v12 + 2) = v13;
        sub_23942A4EC(*v12, *a2, v5, *a3, v6);
        goto LABEL_34;
      }
    }
  }

LABEL_37:
  if (!*(a4 + 40))
  {
    v20 = *(a4 + 8);
    v21 = *(a4 + 16) - 1;
    *(a4 + 16) = v21;
    *(a4 + 32) = *(v20 + 8 * v21);
  }

  return result;
}

void sub_23942A4EC(void *a1, unint64_t *a2, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  if (a3 < a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  if (a3 < a5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  if (a3 < a5)
  {
    v8 = a3;
  }

  else
  {
    v8 = a5;
  }

  if (a3 < a5)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (v8)
  {
    a1[v6] = sub_23942367C(a1, v9, v6, *v7);
    if (v8 != 1)
    {
      v10 = 0;
      v11 = v7 + 2;
      v12 = 4 - v8;
      v13 = &a1[v6 + 4];
      do
      {
        *&v13[v10 * 8 - 24] = sub_239428340(&a1[v10 + 1], v9, v6, v11[v10 - 1]);
        if (v12 == 2)
        {
          break;
        }

        *&v13[v10 * 8 - 16] = sub_239428340(&a1[v10 + 2], v9, v6, v11[v10]);
        if (v12 == 1)
        {
          break;
        }

        *&v13[v10 * 8 - 8] = sub_239428340(&a1[v10 + 3], v9, v6, v11[v10 + 1]);
        if (!v12)
        {
          break;
        }

        *&v13[v10 * 8] = sub_239428340(&a1[v10 + 4], v9, v6, v11[v10 + 2]);
        v12 += 4;
        v10 += 4;
      }

      while (v12 != 3);
    }
  }

  else if (8 * v6)
  {

    bzero(a1, 8 * v6);
  }
}

uint64_t sub_23942A658(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 1;
  }

  if (a2)
  {
    v4 = sub_23942367C(*a1, *a1, v2, a2);
    if (v4)
    {
      v5 = v4;
      result = sub_239421600(a1, *(a1 + 8) + 1);
      if (!result)
      {
        return result;
      }

      v7 = *a1;
      v8 = *(a1 + 8);
      *(a1 + 8) = v8 + 1;
      v7[v8] = v5;
    }
  }

  else
  {
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  return 1;
}

uint64_t sub_23942A6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4 <= 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = 1;
    goto LABEL_25;
  }

  sub_239422DA4(a3);
  v7 = a1;
  if (a2 == a1)
  {
    v7 = sub_239422E50(a3);
  }

  v8 = sub_239422E50(a3);
  result = 0;
  if (v7)
  {
    if (v8)
    {
      result = sub_239421600(v7, 2 * v4);
      if (result)
      {
        if (v4 == 8)
        {
          sub_239428DE4(*v7, *a2);
          goto LABEL_20;
        }

        if (v4 == 4)
        {
          sub_2394293CC(*v7, *a2);
LABEL_20:
          *(v7 + 4) = 0;
          *(v7 + 2) = 2 * v4;
          if (v7 == a1 || (result = sub_239421F90(a1, v7)) != 0)
          {
            result = 1;
          }

          goto LABEL_23;
        }

        if (v4 <= 0xF)
        {
          v10 = *v7;
          v11 = *a2;
          v12 = &v16;
LABEL_19:
          sub_23942A89C(v10, v11, v4, v12);
          goto LABEL_20;
        }

        if ((v4 & (v4 - 1)) != 0)
        {
          result = sub_239421600(v8, 2 * v4);
          if (result)
          {
            v10 = *v7;
            v11 = *a2;
            v12 = *v8;
            goto LABEL_19;
          }
        }

        else
        {
          result = sub_239421600(v8, (4 * v4));
          if (result)
          {
            sub_23942A9A4(*v7, *a2, v4, *v8);
            goto LABEL_20;
          }
        }
      }
    }
  }

LABEL_23:
  if (!*(a3 + 40))
  {
    v13 = *(a3 + 8);
    v14 = *(a3 + 16) - 1;
    *(a3 + 16) = v14;
    *(a3 + 32) = *(v13 + 8 * v14);
  }

LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_23942A89C(void *result, unint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v7 = result;
    v8 = 2 * a3;
    result[2 * a3 - 1] = 0;
    *result = 0;
    v9 = a3 - 1;
    if (v9)
    {
      result[a3] = sub_23942367C(result + 1, a2 + 1, v9, *a2);
      if (a3 >= 3)
      {
        v10 = a3 - 2;
        v11 = v7 + 3;
        v12 = &v7[a3 + 1];
        v13 = a2 + 2;
        do
        {
          *v12++ = sub_239428340(v11, v13, v10, *(v13 - 1));
          v11 += 2;
          ++v13;
          --v10;
        }

        while (v10);
      }
    }

    sub_2394216D4(v7, v7, v7, v8);
    sub_239428434(a4, a2, a3);

    return sub_2394216D4(v7, v7, a4, v8);
  }

  return result;
}

void *sub_23942A9A4(uint64_t *a1, unint64_t *a2, unint64_t a3, unint64_t *a4)
{
  if (a3 == 8)
  {

    return sub_239428DE4(a1, a2);
  }

  else if (a3 > 0xF)
  {
    v9 = a3 >> 1;
    v10 = 2 * a3;
    v11 = sub_239421D64(&a4[a3 >> 1], a2, &a2[a3 >> 1], a3 >> 1);
    sub_239421D64(a4, &a2[a3 >> 1], a2, a3 >> 1);
    v12 = 0;
    do
    {
      a4[v12] = a4[(a3 >> 1) + v12] & (v11 - 1) | a4[v12] & -v11;
      ++v12;
    }

    while (v9 != v12);
    v13 = &a4[a3];
    sub_23942A9A4(v13, a4, a3 >> 1, &a4[v10]);
    sub_23942A9A4(a1, a2, a3 >> 1, &a4[v10]);
    sub_23942A9A4(&a1[a3], &a2[a3 >> 1], a3 >> 1, &a4[v10]);
    v14 = sub_2394216D4(a4, a1, &a1[a3], a3);
    v15 = sub_239421D64(v13, a4, v13, a3);
    result = sub_2394216D4(&a1[v9], &a1[v9], v13, a3);
    if (v9 + a3 < 2 * a3)
    {
      v16 = result + v14 - v15;
      v17 = a3 - v9;
      v18 = &a1[v9 + a3];
      do
      {
        v19 = &v16[*v18];
        v16 = __CFADD__(*v18, v16);
        *v18++ = v19;
        --v17;
      }

      while (v17);
    }
  }

  else
  {

    return sub_23942A89C(a1, a2, a3, a4);
  }

  return result;
}

void *sub_23942AB98(void *result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  result[1] = a2;
  return result;
}

uint64_t sub_23942ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return (*(a1 + 8))(a2, a3, a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_23942ABC4(uint64_t a1, int a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  if (a2 > 3746)
  {
    v11 = 3;
LABEL_13:
    v12 = a3 != 0;
    goto LABEL_14;
  }

  if (a2 > 1344)
  {
    v11 = 4;
    goto LABEL_13;
  }

  if (a2 > 475)
  {
    v11 = 5;
    goto LABEL_13;
  }

  if (a2 > 399)
  {
    v11 = 6;
    goto LABEL_13;
  }

  if (a2 > 346)
  {
    v11 = 7;
    goto LABEL_13;
  }

  if (a2 >= 308)
  {
    v11 = 8;
    goto LABEL_13;
  }

  if (a2 <= 1)
  {
    v45 = 393;
LABEL_105:
    sub_2394170F4(3, 0, 103, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/prime.c", v45);
    return 0;
  }

  if (a2 <= 0x36)
  {
    v11 = 34;
  }

  else
  {
    v11 = 27;
  }

  v12 = a3 != 0;
  if (a2 == 2 && a3)
  {
    v45 = 397;
    goto LABEL_105;
  }

LABEL_14:
  v13 = sub_23945004C(0x30uLL);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v49 = a5;
  *(v13 + 26) = 0u;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_239422DA4(v13);
  v15 = sub_239422E50(v14);
  if (!v15)
  {
LABEL_92:
    v42 = 0;
    goto LABEL_93;
  }

  v16 = v15;
  v17 = 0;
  v52 = a4;
  v50 = v12;
  do
  {
LABEL_17:
    if (!a4)
    {
      while (sub_23942BFC8(a1, a2, 1, 1u))
      {
        if (!sub_23942B1B8(a1))
        {
          goto LABEL_69;
        }
      }

      goto LABEL_92;
    }

    v51 = v17;
    sub_239422DA4(v14);
    v18 = sub_239422E50(v14);
    v19 = v18;
    if (v12)
    {
      v20 = sub_239422E50(v14);
      v21 = sub_239422E50(v14);
      if (!v21)
      {
        goto LABEL_65;
      }

      v22 = v21;
      if (!sub_239426E30(v21, a4))
      {
        goto LABEL_65;
      }

      v23 = 1;
      if (!sub_23942BFC8(v20, a2 - 1, 0, 1u))
      {
        goto LABEL_66;
      }

      if (!sub_239422F7C(0, v19, v20, v22, v14) || !sub_239421B30(v20, v20, v19))
      {
        goto LABEL_65;
      }

      if (v49)
      {
        if (!sub_239426E30(v19, v49) || !sub_2394213B4(v20, v20, v19))
        {
          goto LABEL_65;
        }
      }

      else
      {
        v23 = 1;
        if (!sub_2394217D4(v20, 1uLL))
        {
          goto LABEL_66;
        }
      }

      if (sub_239424670(a1, v20))
      {
        v23 = 1;
        if (!sub_2394217D4(a1, 1uLL))
        {
LABEL_66:
          if (!*(v14 + 40))
          {
            v33 = *(v14 + 8);
            v34 = *(v14 + 16) - 1;
            *(v14 + 16) = v34;
            *(v14 + 32) = *(v33 + 8 * v34);
          }

          v12 = v50;
          v17 = v51;
          if (v23)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }

        v30 = 512;
        if (*(a1 + 8) > 16)
        {
          v30 = 1024;
        }

        v47 = v30;
        v48 = v20;
        v31 = 1;
        while (1)
        {
          while (1)
          {
            v32 = word_2395CB0B0[v31];
            if (!sub_239424BD8(a1, v32) || !sub_239424BD8(v48, v32))
            {
              break;
            }

            v23 = 0;
            if (++v31 == v47)
            {
              goto LABEL_66;
            }
          }

          if (!sub_2394213B4(a1, a1, v52))
          {
            break;
          }

          v31 = 1;
          v23 = 1;
          if (!sub_2394213B4(v48, v48, v22))
          {
            goto LABEL_66;
          }
        }
      }

LABEL_65:
      v23 = 1;
      goto LABEL_66;
    }

    if (!v18)
    {
      goto LABEL_37;
    }

    v24 = 1;
    if (!sub_23942BFC8(a1, a2, 0, 1u))
    {
      goto LABEL_38;
    }

    if (!sub_239422F7C(0, v19, a1, a4, v14) || !sub_239421B30(a1, a1, v19))
    {
LABEL_37:
      v24 = 1;
      goto LABEL_38;
    }

    if (v49)
    {
      if (!sub_2394213B4(a1, a1, v49))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v24 = 1;
      if (!sub_2394217D4(a1, 1uLL))
      {
        goto LABEL_38;
      }
    }

    if (*(a1 + 8) <= 16)
    {
      v27 = 512;
    }

    else
    {
      v27 = 1024;
    }

    for (i = 1; i != v27; ++i)
    {
      while (1)
      {
        v29 = sub_239424BD8(a1, word_2395CB0B0[i]);
        v24 = v29 < 2;
        if (v29 > 1)
        {
          break;
        }

        i = 1;
        if (!sub_2394213B4(a1, a1, a4))
        {
          goto LABEL_38;
        }
      }
    }

LABEL_38:
    if (!*(v14 + 40))
    {
      v25 = *(v14 + 8);
      v26 = *(v14 + 16) - 1;
      *(v14 + 16) = v26;
      *(v14 + 32) = *(v25 + 8 * v26);
    }

    v12 = v50;
    v17 = v51;
    if (v24)
    {
      goto LABEL_92;
    }

LABEL_69:
    if (a6 && !(*(a6 + 8))(0, v17, a6))
    {
      goto LABEL_92;
    }

    v17 = (v17 + 1);
    if (v12)
    {
      a4 = v52;
      if (sub_239426E30(v16, a1))
      {
        v35 = 0;
        while (1)
        {
          v54 = 0;
          v36 = sub_23942B670(&v54, a1, 1, v14, 0, 0);
          v37 = v54;
          if (!v36)
          {
            v37 = -1;
          }

          if (v37 == -1)
          {
            break;
          }

          if (!v37)
          {
            goto LABEL_17;
          }

          v55 = 0;
          v38 = sub_23942B670(&v55, v16, 1, v14, 0, 0);
          v39 = v55;
          if (!v38)
          {
            v39 = -1;
          }

          if (v39 == -1)
          {
            break;
          }

          if (!v39)
          {
            goto LABEL_17;
          }

          if (a6 && !(*(a6 + 8))(1, v35, a6))
          {
            break;
          }

          v35 = (v35 + 1);
          if (v11 == v35)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_92;
    }

    v53 = 0;
    v40 = sub_23942B670(&v53, a1, v11, v14, 0, a6);
    v41 = v53;
    if (!v40)
    {
      v41 = -1;
    }

    a4 = v52;
  }

  while (!v41);
  if (v41 == -1)
  {
    goto LABEL_92;
  }

LABEL_96:
  v42 = 1;
LABEL_93:
  if (!*(v14 + 40))
  {
    v43 = *(v14 + 8);
    v44 = *(v14 + 16) - 1;
    *(v14 + 16) = v44;
    *(v14 + 32) = *(v43 + 8 * v44);
  }

  sub_239422D38(v14);
  return v42;
}

uint64_t sub_23942B170(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = 0;
  if (sub_23942B670(&v6, a1, a2, a3, a4, a5))
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL sub_23942B1B8(unsigned int *a1)
{
  v3 = 0;
  result = sub_23942B204(&v3, a1);
  if (result)
  {
    return !sub_239422B64(a1, v3);
  }

  return result;
}

BOOL sub_23942B204(__int16 *a1, uint64_t a2)
{
  if (*(a2 + 8) <= 16)
  {
    v4 = 512;
  }

  else
  {
    v4 = 1024;
  }

  v5 = 3;
  if (sub_239424BD8(a2, 3u))
  {
    v7 = v4 - 2;
    v8 = -1;
    v9 = &word_2395CB0B4;
    while (v7)
    {
      v10 = *v9++;
      v5 = v10;
      --v8;
      --v7;
      if (!sub_239424BD8(a2, v10))
      {
        result = -v8 < v4;
        goto LABEL_10;
      }
    }

    return 0;
  }

  else
  {
    result = 1;
LABEL_10:
    *a1 = v5;
  }

  return result;
}

uint64_t sub_23942B2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = sub_239422E50(a3);
  *(a1 + 8) = sub_239422E50(a3);
  *(a1 + 16) = sub_239422E50(a3);
  v6 = sub_239422E50(a3);
  *(a1 + 24) = v6;
  v7 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  sub_239457D80(&stru_27DF76A28, sub_239422078);
  if (!sub_239421BFC(v7, a2 + 24, &qword_27DF777F0))
  {
    return 0;
  }

  v8 = *a1;
  v9 = sub_23942B3EC(*a1);
  *(a1 + 36) = v9;
  if (!sub_23942813C(*(a1 + 8), v8, v9, a3))
  {
    return 0;
  }

  *(a1 + 32) = sub_239422114((a2 + 24));
  if (!sub_239426654(*(a1 + 16), a2, a3))
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v10 = *(a1 + 24);

  return sub_239421BFC(v10, a2 + 24, v11);
}

uint64_t sub_23942B3EC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  LODWORD(result) = 0;
  v4 = 0;
  v5 = *v2;
  v6 = v1 << 6;
  do
  {
    v7 = *v5++;
    v8 = (((v7 << 32) - 1) & ~(v7 << 32)) >> 63;
    v9 = v8 & 0x20;
    v10 = v8 & HIDWORD(v7) | v7 & ~v8;
    v11 = (((v10 << 48) - 1) & ~(v10 << 48)) >> 63;
    v12 = v11 & 0x10;
    v13 = v11 & (v10 >> 16) | v10 & ~v11;
    v14 = (((v13 << 56) - 1) & ~(v13 << 56)) >> 63;
    v15 = v14 & 8;
    v16 = v14 & (v13 >> 8) | v13 & ~v14;
    v17 = (((v16 << 60) - 1) & ~(v16 << 60)) >> 63;
    v18 = v17 & 4;
    v19 = v17 & (v16 >> 4) | v16 & ~v17;
    v20 = (((v19 << 62) - 1) & ~(v19 << 62)) >> 63;
    LODWORD(v17) = v20 & 2;
    v21 = v20 & (v19 >> 2);
    LODWORD(v19) = v19 & ~v20;
    v22 = ((v7 - 1) & ~v7) >> 63;
    v23 = v9 | v12 | v15 | v18 | v17 | (((((v21 | v19) << 63) - 1) & ~((v21 | v19) << 63)) >> 63);
    LODWORD(v19) = v22 | v4;
    v4 |= ~v22;
    result = (v3 + v23) & ~v19 | result;
    v3 += 64;
  }

  while (v6 != v3);
  return result;
}

uint64_t sub_23942B510(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239422DA4(a5);
  result = sub_239422E50(a5);
  if (result)
  {
    v11 = result;
    result = sub_239426160(result, a3, *(a1 + 8), a4 + 24, a5, a4);
    if (result)
    {
      result = sub_239425948(v11, v11, a4, a4, a5);
      if (result)
      {
        v12 = sub_239422C60(v11, *(a1 + 16));
        v13 = -(sub_239422C60(v11, *(a1 + 24)) | v12);
        if (*(a1 + 32) >= 2)
        {
          v14 = 1;
          do
          {
            if (v14 == *(a1 + 36))
            {
              v15 = ~v13;
            }

            else
            {
              v15 = 0;
            }

            if (v15)
            {
              break;
            }

            result = sub_239425948(v11, v11, v11, a4, a5);
            if (!result)
            {
              goto LABEL_14;
            }

            v13 |= -sub_239422C60(v11, *(a1 + 24));
            if ((sub_239422C60(v11, *(a1 + 16)) & ~v13) != 0)
            {
              break;
            }

            ++v14;
          }

          while (v14 < *(a1 + 32));
        }

        *a2 = v13 & 1;
        result = 1;
      }
    }
  }

LABEL_14:
  if (!*(a5 + 40))
  {
    v16 = *(a5 + 8);
    v17 = *(a5 + 16) - 1;
    *(a5 + 16) = v17;
    *(a5 + 32) = *(v16 + 8 * v17);
  }

  return result;
}

uint64_t sub_23942B670(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  *a1 = 0;
  sub_239457D80(&stru_27DF76A28, sub_239422078);
  if (sub_2394229D8(a2, &qword_27DF777F0) < 1)
  {
    return 1;
  }

  if (*(a2 + 8) < 1 || (**a2 & 1) == 0)
  {
    v12 = a2;
    v13 = 2;
LABEL_5:
    *a1 = sub_239422B64(v12, v13);
    return 1;
  }

  if (sub_239422B64(a2, 3))
  {
    v14 = 1;
    *a1 = 1;
    return v14;
  }

  if (a5)
  {
    LOWORD(v34[0]) = 0;
    if (sub_23942B204(v34, a2))
    {
      v13 = LOWORD(v34[0]);
      v12 = a2;
      goto LABEL_5;
    }

    if (a6 && !(*(a6 + 8))(1, 0xFFFFFFFFLL, a6))
    {
      return 0;
    }
  }

  if (!a3)
  {
    v16 = sub_239422114(a2);
    if (v16 <= 3746)
    {
      if (v16 <= 1344)
      {
        if (v16 <= 475)
        {
          if (v16 <= 399)
          {
            if (v16 <= 346)
            {
              if (v16 <= 307)
              {
                if (v16 <= 54)
                {
                  a3 = 34;
                }

                else
                {
                  a3 = 27;
                }
              }

              else
              {
                a3 = 8;
              }
            }

            else
            {
              a3 = 7;
            }
          }

          else
          {
            a3 = 6;
          }
        }

        else
        {
          a3 = 5;
        }
      }

      else
      {
        a3 = 4;
      }
    }

    else
    {
      a3 = 3;
    }
  }

  if (a4)
  {
    v17 = 0;
    goto LABEL_35;
  }

  v18 = sub_23945004C(0x30uLL);
  if (!v18)
  {
    return 0;
  }

  a4 = v18;
  *(v18 + 26) = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  v17 = v18;
LABEL_35:
  sub_239422DA4(a4);
  v19 = sub_239422E50(a4);
  v20 = sub_2394258B8(a2, a4);
  v21 = v20;
  v14 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  if (v19 && v20)
  {
    if (sub_23942B2C8(v34, v20, a4))
    {
      v31 = v17;
      v22 = 0;
      v23 = a3;
      v24 = 1;
      v25 = *&v34[0];
      while (1)
      {
        v33 = 0;
        if (!sub_23942B994(v19, &v33, 2uLL, v25) || (v26 = v33, v32 = 0, !sub_23942B510(v34, &v32, v19, v21, a4)))
        {
LABEL_51:
          v14 = 0;
          goto LABEL_53;
        }

        if (!v32)
        {
          break;
        }

        if (a6 && !(*(a6 + 8))(1, v24 - 1, a6))
        {
          goto LABEL_51;
        }

        v22 += v26;
        v28 = v24++ < 0x10;
        if (!(v28 | ((((v22 - v23) ^ v22 | v22 ^ v23) ^ v22) >> 63)))
        {
          v14 = 1;
          *a1 = 1;
          goto LABEL_53;
        }
      }

      *a1 = 0;
      v14 = 1;
LABEL_53:
      v17 = v31;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_239425AB8(v21);
  if (!*(a4 + 40))
  {
    v29 = *(a4 + 8);
    v30 = *(a4 + 16) - 1;
    *(a4 + 16) = v30;
    *(a4 + 32) = *(v29 + 8 * v30);
  }

  sub_239422D38(v17);
  return v14;
}

uint64_t sub_23942B994(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = 0;
  result = sub_23942C364(&v15, &v14, a3, *a4, *(a4 + 8));
  if (result)
  {
    v9 = v15;
    result = sub_239421600(a1, v15);
    if (result)
    {
      v10 = v14;
      v11 = v14 >> 1;
      if (v9 != 1 || v11 >= a3)
      {
        sub_23942C3F4(*a1, 8 * v9, &unk_2395CADE8);
        *(*a1 + 8 * v9 - 8) &= v10;
        v13 = sub_23942C1D4(*a1, a3, *a4, v9);
        *a2 = v13;
        **a1 |= a3 & (v13 - 1);
        *(*a1 + 8 * v9 - 8) &= -v13 | v11;
        *(a1 + 16) = 0;
        *(a1 + 8) = v9;
        return 1;
      }

      else
      {
        sub_2394170F4(3, 0, 108, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/random.c", 323);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23942BAC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (sub_23942B670(&v5, a1, a2, a3, 0, a4))
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_23942BB10(int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 8) < 1 || (**a2 & 1) == 0 || (v41 = 3, v40 = 0x200000000, v38 = &v41, v39 = 0x100000001, sub_2394229D8(a2, &v38) <= 0))
  {
    sub_2394170F4(3, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/prime.c", 807);
    return 0;
  }

  if (!a3)
  {
    v10 = sub_239422114(a2);
    if (v10 <= 3746)
    {
      if (v10 <= 1344)
      {
        if (v10 <= 475)
        {
          if (v10 <= 399)
          {
            if (v10 <= 346)
            {
              if (v10 <= 307)
              {
                if (v10 <= 54)
                {
                  a3 = 34;
                }

                else
                {
                  a3 = 27;
                }
              }

              else
              {
                a3 = 8;
              }
            }

            else
            {
              a3 = 7;
            }
          }

          else
          {
            a3 = 6;
          }
        }

        else
        {
          a3 = 5;
        }
      }

      else
      {
        a3 = 4;
      }
    }

    else
    {
      a3 = 3;
    }
  }

  sub_239422DA4(a4);
  v13 = sub_239422E50(a4);
  if (!v13)
  {
    goto LABEL_65;
  }

  v14 = v13;
  if (!sub_239421F90(v13, a2) || !sub_2394219A4(v14, 1uLL))
  {
    goto LABEL_65;
  }

  v15 = 0;
  v16 = -1;
  while (v15 >> 6 >= *(v14 + 8) || ((*(*v14 + 8 * (v15 >> 6)) >> v15) & 1) == 0)
  {
    ++v15;
    ++v16;
  }

  v17 = sub_239422E50(a4);
  if (!v17 || (v18 = v17, !sub_23942373C(v17, v14, v15)))
  {
LABEL_65:
    v21 = 0;
    goto LABEL_66;
  }

  v32 = v18;
  v19 = sub_239422E50(a4);
  v36 = sub_239422E50(a4);
  v35 = sub_239422E50(a4);
  v37 = sub_239422E50(a4);
  v20 = sub_239422E50(a4);
  v11 = 0;
  v21 = 0;
  if (v19 && v36 && v35 && v37 && v20)
  {
    v34 = v19;
    v29 = v20;
    v22 = sub_239426A1C(a2, a4);
    v21 = v22;
    if (v22)
    {
      if (a3 >= 1)
      {
        v30 = v22;
        v23 = 1;
        while (1)
        {
          v31 = v23;
          if (!sub_239427A14(v34, 2uLL, v14) || !sub_239427BE0(v36, v34, a2, a4))
          {
            goto LABEL_69;
          }

          v24 = 1;
          v40 = 0x200000000;
          v41 = 1;
          v38 = &v41;
          v39 = 0x100000001;
          if (sub_2394229D8(v36, &v38) > 0)
          {
            goto LABEL_71;
          }

          if (!sub_2394253C4(v35, v34, v32, a2, a4, v30))
          {
            goto LABEL_69;
          }

          if (!sub_239422B0C(v35) && sub_2394229D8(v35, v14))
          {
            break;
          }

LABEL_44:
          if (a5 && !(*(a5 + 8))(1, (v31 - 1), a5))
          {
            goto LABEL_69;
          }

          v23 = v31 + 1;
          if (v31 == a3)
          {
            v24 = 0;
            goto LABEL_71;
          }
        }

        v25 = v16;
        v26 = v37;
        if (v15 >= 2)
        {
          do
          {
            v33 = v25;
            if (!sub_239421F90(v26, v35) || !sub_2394241E0(v35, v26, v26, a2, a4))
            {
              goto LABEL_69;
            }

            if (!sub_2394229D8(v35, v14))
            {
              goto LABEL_44;
            }

            if (sub_239422B0C(v35))
            {
              goto LABEL_59;
            }

            v25 = v33 - 1;
            v26 = v37;
          }

          while (v33 != 1);
        }

        if (sub_239421F90(v26, v35) && sub_2394241E0(v35, v26, v26, a2, a4) && (sub_239422B0C(v35) || sub_239421F90(v37, v35)))
        {
LABEL_59:
          if (sub_239421F90(v29, v37) && sub_2394219A4(v29, 1uLL) && sub_239427BE0(v36, v29, a2, a4))
          {
            v40 = 0x200000000;
            v41 = 1;
            v38 = &v41;
            v39 = 0x100000001;
            if (sub_2394229D8(v36, &v38) >= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = 2;
            }

LABEL_71:
            v21 = v30;
            goto LABEL_72;
          }
        }

LABEL_69:
        v11 = 0;
        v21 = v30;
        goto LABEL_67;
      }

      v24 = 0;
LABEL_72:
      *a1 = v24;
      v11 = 1;
      goto LABEL_67;
    }

LABEL_66:
    v11 = 0;
  }

LABEL_67:
  sub_239425AB8(v21);
  if (!*(a4 + 40))
  {
    v27 = *(a4 + 8);
    v28 = *(a4 + 16) - 1;
    *(a4 + 16) = v28;
    *(a4 + 32) = *(v27 + 8 * v28);
  }

  return v11;
}

uint64_t sub_23942BFC8(uint64_t result, int a2, int a3, unsigned int a4)
{
  if (result)
  {
    if ((a3 - 2) <= 0xFFFFFFFC)
    {
      v5 = 66;
      v6 = 131;
LABEL_9:
      sub_2394170F4(3, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/random.c", v6);
      return 0;
    }

    if (a4 >= 2)
    {
      v5 = 66;
      v6 = 136;
      goto LABEL_9;
    }

    v9 = result;
    if (!a2)
    {
      *(result + 16) = 0;
      *(result + 8) = 0;
      return 1;
    }

    if (a2 >= 2147483585)
    {
      v5 = 102;
      v6 = 146;
      goto LABEL_9;
    }

    v10 = a2 >= -63 ? a2 + 63 : a2 + 126;
    v11 = 1 - a2 >= 0 ? -((1 - a2) & 0x3F) : (a2 - 1) & 0x3F;
    v12 = v10 >> 6;
    result = sub_239421600(result, v12);
    if (result)
    {
      v13 = v10 >> 6;
      if (v11 < 63)
      {
        v14 = ~(-1 << (v11 + 1));
      }

      else
      {
        v14 = -1;
      }

      sub_23942C3F4(*v9, 8 * v12, &unk_2395CADE8);
      v15 = v13 - 1;
      *(*v9 + 8 * (v13 - 1)) &= v14;
      if (a3 == -1)
      {
        goto LABEL_30;
      }

      if (a2 >= 2 && a3 == 1)
      {
        if (!v11)
        {
          *(*v9 + 8 * v15) |= 1uLL;
          v17 = (*v9 + 8 * v13 - 16);
          v16 = 0x8000000000000000;
          goto LABEL_29;
        }

        v16 = 3 << (v11 - 1);
      }

      else
      {
        v16 = 1 << v11;
      }

      v17 = (*v9 + 8 * v15);
LABEL_29:
      *v17 |= v16;
LABEL_30:
      if (a4 == 1)
      {
        **v9 |= 1uLL;
      }

      *(v9 + 16) = 0;
      *(v9 + 8) = v13;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23942C1D4(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = 0;
      v5 = a4 - 1;
      if (a4 != 1)
      {
        v6 = a1 + 1;
        do
        {
          v7 = *v6++;
          v4 |= v7;
          --v5;
        }

        while (v5);
      }

      v8 = ~(((v4 - 1) & ~v4 & (((*a1 - a2) ^ *a1 | *a1 ^ a2) ^ *a1)) >> 63);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = -1;
  }

  return *&v8 & (sub_2394228F8(a1, a4, a3, a4) >> 31);
}

uint64_t sub_23942C260(char *a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = 0;
  result = sub_23942C364(&v18, &v17, a2, a3, a4);
  if (result)
  {
    v11 = v18;
    v12 = &a1[8 * v18];
    v13 = 8 * (a4 - v18);
    if (v13)
    {
      bzero(&a1[8 * v18], v13);
    }

    v14 = -100;
    v15 = v17;
    while (!__CFADD__(v14++, 1))
    {
      sub_23942C3F4(a1, 8 * v11, a5);
      *(v12 - 1) &= v15;
      if (sub_23942C1D4(a1, a2, a3, v11))
      {
        return 1;
      }
    }

    sub_2394170F4(3, 0, 115, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/random.c", 271);
    return 0;
  }

  return result;
}

uint64_t sub_23942C364(void *a1, unint64_t *a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v5 = a4[a5 - 1];
    if (v5)
    {
      break;
    }

    if (!--a5)
    {
      goto LABEL_8;
    }
  }

  if (a5 == 1 && *a4 <= a3)
  {
LABEL_8:
    sub_2394170F4(3, 0, 108, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/random.c", 230);
    return 0;
  }

  else
  {
    v6 = v5 | (v5 >> 1) | ((v5 | (v5 >> 1)) >> 2);
    v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
    *a1 = a5;
    *a2 = v7 | (v7 >> 16) | ((v7 | (v7 >> 16)) >> 32);
    return 1;
  }
}

void sub_23942C3F4(char *a1, unint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_30;
  }

  v4 = a2;
  sub_239457D80(&stru_27DF76DD8, sub_23943DD28);
  v6 = qword_27DF78B30;
  v7 = sub_2394558EC();
  v8 = v7;
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = !v7;
  }

  if (v9)
  {
    sub_239455904(v24, 0x20uLL);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  for (i = 0; i != 2; ++i)
  {
    v24[i] = veorq_s8(v24[i], *(a3 + i * 16));
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v11 = sub_239457DA0(1);
  if (v11)
  {
    v12 = v11;
    v13 = v11 + 37;
    if (*(v11 + 74) > 0xFFFu)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = sub_2394500B0(0x138uLL);
    if (!v14 || (v12 = v14, !sub_239457E4C(1u, v14, sub_23943DD6C)))
    {
      v12 = v22;
    }

    *(v12 + 75) = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_239455904(v21, 0x30uLL);
    if (!sub_23943D838(v12, v21, &v18, 0))
    {
      goto LABEL_31;
    }

    v13 = v12 + 74;
    *(v12 + 74) = 0;
    *(v12 + 36) = v6;
    *(v12 + 76) = v8;
  }

  if (*(v12 + 36) != v6 || *(v12 + 76) != v8)
  {
LABEL_20:
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_239455904(v21, 0x30uLL);
    if (sub_23943D93C(v12, v21, &v18, 0))
    {
      *v13 = 0;
      *(v12 + 36) = v6;
      *(v12 + 76) = v8;
      goto LABEL_22;
    }

LABEL_31:
    abort();
  }

LABEL_22:
  v15 = 32;
  do
  {
    if (v4 >= 0x10000)
    {
      v16 = 0x10000;
    }

    else
    {
      v16 = v4;
    }

    if (!sub_23943DB08(v12, a1, v16, v24, v15))
    {
      goto LABEL_31;
    }

    v15 = 0;
    a1 += v16;
    ++*v13;
    v4 -= v16;
  }

  while (v4);
  if (v12 == v22)
  {
    sub_239450194(v12, 0x120uLL);
  }

LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_23942C66C(void *__dst, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v5 = __dst;
  v6 = a3 >> 6;
  v7 = a4 - v6;
  if (a4 <= v6)
  {
    if (!a4)
    {
      return;
    }

    v13 = 8 * a4;
    goto LABEL_14;
  }

  v9 = a3 & 0x3F;
  if ((a3 & 0x3F) != 0)
  {
    if (a4 - 1 > v6)
    {
      v10 = ~v6 + a4;
      v11 = (a2 + 8 * v6 + 8);
      v12 = __dst;
      do
      {
        *v12++ = (*v11 << (64 - v9)) | (*(v11 - 1) >> v9);
        ++v11;
        --v10;
      }

      while (v10);
    }

    __dst[a4 - 1 - v6] = *(a2 + 8 * (a4 - 1)) >> v9;
  }

  else if (8 * v7)
  {
    memmove(__dst, (a2 + 8 * v6), 8 * v7);
  }

  if (a3 >= 0x40)
  {
    v13 = 8 * v6;
    __dst = &v5[a4 - v6];
LABEL_14:

    bzero(__dst, v13);
  }
}

void *sub_23942C760(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v3 = a2 + 8;
      v4 = a3 - 1;
      v5 = result;
      do
      {
        *v5++ = *(v3 - 8) >> 1;
        v3 += 8;
        --v4;
      }

      while (v4);
    }

    result[a3 - 1] = *(a2 + 8 * (a3 - 1)) >> 1;
  }

  return result;
}

uint64_t sub_23942C7A0(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 8) <= (a2 >> 6))
  {
    return 0;
  }

  *(*a1 + 8 * (a2 >> 6)) &= ~(1 << a2);
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    if (!v2)
    {
LABEL_10:
      *(a1 + 16) = 0;
    }
  }

  else
  {
    while (!*(*a1 - 8 + 8 * v2))
    {
      v3 = __OFSUB__(v2--, 1);
      if ((v2 < 0) ^ v3 | (v2 == 0))
      {
        *(a1 + 8) = 0;
        goto LABEL_10;
      }
    }

    *(a1 + 8) = v2;
  }

  return 1;
}

uint64_t sub_23942C818(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = a2 >> 6;
  if ((a2 >> 6) < *(a1 + 8))
  {
    if ((a2 & 0x3F) != 0)
    {
      *(a1 + 8) = v2 + 1;
      *(*a1 + 8 * v2) &= ~(-1 << (a2 & 0x3F));
      v2 = *(a1 + 8);
    }

    else
    {
      *(a1 + 8) = v2;
    }

    if (v2 < 1)
    {
      if (!v2)
      {
LABEL_13:
        *(a1 + 16) = 0;
      }
    }

    else
    {
      while (!*(*a1 - 8 + 8 * v2))
      {
        v4 = __OFSUB__(v2--, 1);
        if ((v2 < 0) ^ v4 | (v2 == 0))
        {
          *(a1 + 8) = 0;
          goto LABEL_13;
        }
      }

      *(a1 + 8) = v2;
    }
  }

  return 1;
}

uint64_t sub_23942C8A8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    goto LABEL_18;
  }

  v8 = *a3;
  v9 = **a3;
  if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
  if (v7 != 1)
  {
    v12 = v7 - 1;
    v13 = v8 + 1;
    do
    {
      v14 = *v13++;
      v11 |= v14;
      --v12;
    }

    while (v12);
  }

  if (!v11)
  {
LABEL_18:
    if (!v7)
    {
      goto LABEL_24;
    }

    v8 = *a3;
    v9 = **a3;
LABEL_20:
    v24 = v9 ^ 2;
    if (v7 >= 2)
    {
      v25 = v7 - 1;
      v26 = v8 + 1;
      do
      {
        v27 = *v26++;
        v24 |= v27;
        --v25;
      }

      while (v25);
    }

    if (!v24)
    {
      v19 = a1;
      if (!a1)
      {
        v28 = sub_23945004C(0x18uLL);
        v19 = v28;
        if (!v28)
        {
          goto LABEL_37;
        }

        v28[1] = 0;
        v28[2] = 0;
        *v28 = 0;
        *(v28 + 5) = 1;
      }

      if (a2[2])
      {
        v29 = **a2;
        if (v29)
        {
          if (sub_239421600(v19, 1uLL))
          {
            v23 = v29 & 1;
            goto LABEL_34;
          }

          goto LABEL_37;
        }
      }

      goto LABEL_31;
    }

LABEL_24:
    sub_2394170F4(3, 0, 114, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/sqrt.c", 88);
    return 0;
  }

  v15 = a2[2];
  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = 0;
  v17 = *a2;
  do
  {
    v18 = *v17++;
    v16 |= v18;
    --v15;
  }

  while (v15);
  if (!v16 || sub_239422B0C(a2))
  {
LABEL_12:
    v19 = a1;
    if (a1)
    {
      goto LABEL_15;
    }

    v20 = sub_23945004C(0x18uLL);
    v19 = v20;
    if (v20)
    {
      v20[1] = 0;
      v20[2] = 0;
      *v20 = 0;
      *(v20 + 5) = 1;
LABEL_15:
      v21 = sub_239422B0C(a2);
      if (v21)
      {
        v22 = v21;
        if (sub_239421600(v19, 1uLL))
        {
          v23 = v22;
LABEL_34:
          *(v19 + 16) = 0;
          **v19 = v23;
          v30 = 1;
          goto LABEL_35;
        }

        goto LABEL_37;
      }

LABEL_31:
      v30 = 0;
      *(v19 + 16) = 0;
LABEL_35:
      *(v19 + 8) = v30;
      return v19;
    }

LABEL_37:
    if (v19 != a1)
    {
      sub_239421EC8(v19);
    }

    return 0;
  }

  sub_239422DA4(a4);
  v32 = sub_239422E50(a4);
  v33 = sub_239422E50(a4);
  v34 = sub_239422E50(a4);
  v35 = sub_239422E50(a4);
  v36 = sub_239422E50(a4);
  v37 = sub_239422E50(a4);
  if (!v37)
  {
    goto LABEL_91;
  }

  v38 = v37;
  v74 = v33;
  v19 = a1;
  if (!a1)
  {
    v39 = sub_23945004C(0x18uLL);
    v19 = v39;
    if (!v39)
    {
      goto LABEL_89;
    }

    v39[1] = 0;
    v39[2] = 0;
    *v39 = 0;
    *(v39 + 5) = 1;
  }

  if (!sub_239423800(v32, a2, a3, a4))
  {
    goto LABEL_89;
  }

    ;
  }

  if (i == 2)
  {
    if (sub_239423E1C(v35, v32, v32, a3, a4))
    {
      if (sub_23942373C(v34, a3, 3u))
      {
        *(v34 + 4) = 0;
        if (sub_2394253C4(v74, v35, v34, a3, a4, 0))
        {
          if (sub_23942436C(v38, v74, a3, a4) && sub_2394241E0(v35, v35, v38, a3, a4) && sub_2394219A4(v35, 1uLL) && sub_2394241E0(v36, v32, v74, a3, a4) && sub_2394241E0(v36, v36, v35, a3, a4) && sub_239421F90(v19, v36))
          {
            goto LABEL_53;
          }
        }
      }
    }

    goto LABEL_89;
  }

  if (i == 1)
  {
    if (sub_23942373C(v34, a3, 2u))
    {
      *(v34 + 4) = 0;
      if (sub_2394217D4(v34, 1uLL))
      {
        if (sub_2394253C4(v19, v32, v34, a3, a4, 0))
        {
LABEL_53:
          if (!sub_23942436C(v36, v19, a3, a4))
          {
            goto LABEL_89;
          }

          if (!sub_2394229D8(v36, v32))
          {
            goto LABEL_92;
          }

          v41 = 110;
          v42 = 409;
          goto LABEL_88;
        }
      }
    }

LABEL_89:
    if (v19 != a1)
    {
      sub_239421EC8(v19);
    }

LABEL_91:
    v19 = 0;
    goto LABEL_92;
  }

  if (!sub_239421F90(v34, a3))
  {
    goto LABEL_89;
  }

  v72 = v36;
  v73 = v35;
  v71 = v32;
  *(v34 + 4) = 0;
  v43 = 2;
  while (1)
  {
    if (v43 <= 0x15)
    {
      goto LABEL_79;
    }

    v44 = sub_239422114(a3);
    if (!sub_23942BFC8(v38, v44, 0, 0))
    {
      goto LABEL_89;
    }

    v45 = *(v38 + 8);
    v46 = v45;
    if ((sub_2394228F8(*v38, v45, *a3, *(a3 + 8)) & 0x80000000) == 0)
    {
      v47 = sub_2394213B4;
      if (!*(a3 + 16))
      {
        v47 = sub_239421B30;
      }

      if (!v47(v38, v38, a3))
      {
        goto LABEL_89;
      }

      v45 = *(v38 + 8);
      v46 = v45;
    }

    if (!v45)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v49 = *v38;
    do
    {
      v50 = *v49++;
      v48 |= v50;
      --v46;
    }

    while (v46);
    if (!v48)
    {
LABEL_79:
      if (!sub_239421948(v38, v43))
      {
        goto LABEL_89;
      }
    }

    v51 = sub_23942954C(v38, v34, a4);
    if (v51 < -1)
    {
      goto LABEL_89;
    }

    if (v51 != 1)
    {
      break;
    }

    if (++v43 == 82)
    {
      goto LABEL_87;
    }
  }

  if (v51 != -1)
  {
    if (!v51)
    {
      v41 = 114;
      v42 = 257;
      goto LABEL_88;
    }

LABEL_87:
    v41 = 115;
    v42 = 267;
    goto LABEL_88;
  }

  if (!sub_23942373C(v34, v34, i) || !sub_2394253C4(v38, v38, v34, a3, a4, 0))
  {
    goto LABEL_89;
  }

  if (sub_239422B0C(v38))
  {
    v41 = 114;
    v42 = 282;
LABEL_88:
    sub_2394170F4(3, 0, v41, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/sqrt.c", v42);
    goto LABEL_89;
  }

  if (!sub_239426E30(v73, v34))
  {
    goto LABEL_89;
  }

  v54 = *(v73 + 8);
  if (v54)
  {
    v55 = 0;
    v56 = *v73;
    do
    {
      v57 = *v56++;
      v55 |= v57;
      --v54;
    }

    while (v54);
    if (v55)
    {
      if (!sub_2394253C4(v72, v71, v73, a3, a4, 0))
      {
        goto LABEL_89;
      }

      v58 = *(v72 + 8);
      if (!v58)
      {
        goto LABEL_137;
      }

      v59 = 0;
      v60 = *v72;
      do
      {
        v61 = *v60++;
        v59 |= v61;
        --v58;
      }

      while (v58);
      if (!v59)
      {
        goto LABEL_137;
      }

LABEL_116:
      if (sub_23942436C(v74, v72, a3, a4) && sub_2394241E0(v74, v74, v71, a3, a4))
      {
        v67 = v71;
        v66 = v72;
        v68 = v72;
        while (sub_2394241E0(v66, v68, v67, a3, a4))
        {
          if (sub_239422B0C(v74))
          {
            v36 = v72;
            v32 = v71;
            if (sub_239421F90(v19, v72))
            {
              goto LABEL_53;
            }

            goto LABEL_89;
          }

          v69 = i - 2;
          if (i < 2)
          {
LABEL_138:
            v41 = 110;
            v42 = 377;
            goto LABEL_88;
          }

          v70 = i - 1;
          LODWORD(i) = 1;
          while (1)
          {
            if (i == 1)
            {
              if (!sub_23942436C(v73, v74, a3, a4))
              {
                goto LABEL_89;
              }
            }

            else if (!sub_2394241E0(v73, v73, v73, a3, a4))
            {
              goto LABEL_89;
            }

            if (sub_239422B0C(v73))
            {
              break;
            }

            LODWORD(i) = i + 1;
            --v69;
            --v70;
            if (v69 == -1)
            {
              goto LABEL_138;
            }
          }

          if (!sub_239421F90(v73, v38))
          {
            goto LABEL_89;
          }

          if (v69 >= 1)
          {
            while (sub_23942436C(v73, v73, a3, a4))
            {
              if (--v70 < 2)
              {
                goto LABEL_134;
              }
            }

            goto LABEL_89;
          }

LABEL_134:
          if (!sub_2394241E0(v38, v73, v73, a3, a4) || !sub_2394241E0(v72, v72, v73, a3, a4))
          {
            goto LABEL_89;
          }

          v66 = v74;
          v68 = v74;
          v67 = v38;
        }
      }

      goto LABEL_89;
    }
  }

  if (!sub_239423800(v73, v71, a3, a4))
  {
    goto LABEL_89;
  }

  v62 = *(v73 + 8);
  if (v62)
  {
    v63 = 0;
    v64 = *v73;
    do
    {
      v65 = *v64++;
      v63 |= v65;
      --v62;
    }

    while (v62);
    if (v63)
    {
      if (!sub_239421600(v72, 1uLL))
      {
        goto LABEL_89;
      }

      *(v72 + 16) = 0;
      **v72 = 1;
      *(v72 + 8) = 1;
      goto LABEL_116;
    }
  }

LABEL_137:
  *(v19 + 16) = 0;
  *(v19 + 8) = 0;
LABEL_92:
  if (!*(a4 + 40))
  {
    v52 = *(a4 + 8);
    v53 = *(a4 + 16) - 1;
    *(a4 + 16) = v53;
    *(a4 + 32) = *(v52 + 8 * v53);
  }

  return v19;
}

uint64_t sub_23942D13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    sub_2394170F4(3, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/sqrt.c", 430);
    return 0;
  }

  else
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v9 = *a2;
    do
    {
      v10 = *v9++;
      v8 |= v10;
      --v6;
    }

    while (v6);
    if (v8)
    {
      sub_239422DA4(a3);
      v11 = a1;
      if (a1 == a2)
      {
        v11 = sub_239422E50(a3);
      }

      v12 = sub_239422E50(a3);
      v13 = sub_239422E50(a3);
      v14 = sub_239422E50(a3);
      result = 0;
      if (v11)
      {
        if (v12)
        {
          if (v13)
          {
            if (v14)
            {
              sub_239457D80(&stru_27DF76A28, sub_239422078);
              v15 = sub_239422114(a2);
              result = sub_23942350C(v11, &qword_27DF777F0, v15 >> 1);
              if (result)
              {
                if (sub_239422F7C(v12, 0, a2, v11, a3))
                {
                  v16 = 1;
                  do
                  {
                    v17 = v13;
                    if (!sub_2394213B4(v12, v12, v11) || !sub_239426E30(v11, v12) || !sub_23942429C(v12, v11, a3) || !sub_239421B30(v14, a2, v12))
                    {
                      break;
                    }

                    *(v14 + 4) = 0;
                    if ((v16 & 1) == 0 && (sub_2394229D8(v14, v13) & 0x80000000) == 0)
                    {
                      if (sub_2394229D8(v12, a2))
                      {
                        v18 = 110;
                        v19 = 487;
                        goto LABEL_24;
                      }

                      result = a1 != a2 || sub_239421F90(a1, v11) != 0;
                      goto LABEL_25;
                    }

                    v16 = 0;
                    v13 = v14;
                    v14 = v17;
                  }

                  while (sub_239422F7C(v12, 0, a2, v11, a3));
                }

                v18 = 3;
                v19 = 467;
LABEL_24:
                sub_2394170F4(3, 0, v18, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/bn/sqrt.c", v19);
                result = 0;
              }
            }
          }
        }
      }

LABEL_25:
      if (!*(a3 + 40))
      {
        v20 = *(a3 + 8);
        v21 = *(a3 + 16) - 1;
        *(a3 + 16) = v21;
        *(a3 + 32) = *(v20 + 8 * v21);
      }
    }

    else
    {
LABEL_27:
      *(a1 + 16) = 0;
      *(a1 + 8) = 0;
      return 1;
    }
  }

  return result;
}

void *sub_23942D3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23945004C(0x248uLL);
  bzero(v8, 0x248uLL);
  if (!sub_23942D478(v8, a1, a2, a3, a4) && v8)
  {
    if (*v8)
    {
      (*(*v8 + 24))(v8);
      *v8 = 0;
    }

    sub_239450144(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_23942D478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 8))
  {

    return sub_23942D574(a1, a2, a3, a4, a5, 0);
  }

  else
  {
    sub_2394170F4(30, 0, 124, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", 65);
    *a1 = 0;
    return 0;
  }
}

void sub_23942D4E8(void *a1)
{
  if (a1)
  {
    if (*a1)
    {
      (*(*a1 + 24))(a1);
      *a1 = 0;
    }

    sub_239450144(a1);
  }
}

uint64_t sub_23942D53C(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    result = (*(*result + 24))(result);
    *v1 = 0;
  }

  return result;
}

uint64_t sub_23942D574(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a2 != a4)
  {
    sub_2394170F4(30, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", 78);
    goto LABEL_6;
  }

  *a1 = a2;
  v7 = *(a2 + 1);
  if (v7)
  {
    result = v7(a1, a3, a4, a5);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = (*(a2 + 2))(a1, a3, a4, a5, a6);
  if (!result)
  {
LABEL_6:
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t sub_23942D610(uint64_t a1, char *a2, void *a3, size_t a4, uint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  if (__CFADD__(a8, *(*a1 + 2)))
  {
    v12 = 117;
    v13 = 123;
LABEL_10:
    sub_2394170F4(30, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", v13);
    goto LABEL_11;
  }

  if (a4 < a8)
  {
    v12 = 103;
    v13 = 128;
    goto LABEL_10;
  }

  if (a7 != a2 && &a2[a4] > a7 && &a7[a8] > a2)
  {
    v12 = 115;
    v13 = 133;
    goto LABEL_10;
  }

  v16 = *(*a1 + 40);
  v17 = 0;
  if (v16(a1, a2, &a2[a8], &v17, a4 - a8))
  {
    v14 = v17 + a8;
    result = 1;
    goto LABEL_14;
  }

LABEL_11:
  if (a4)
  {
    bzero(a2, a4);
  }

  v14 = 0;
  result = 0;
LABEL_14:
  *a3 = v14;
  return result;
}

uint64_t sub_23942D738(uint64_t *a1, char *a2, char *a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, char *a8, size_t a9, uint64_t a10, uint64_t a11)
{
  v15 = &a8[a9];
  v16 = &a2[a9];
  if (a8 != a2 && (v15 > a2 ? (v17 = v16 > a8) : (v17 = 0), v17) || &a3[a5] > a2 && v16 > a3 || &a3[a5] > a8 && v15 > a3)
  {
    v18 = 115;
    v19 = 162;
LABEL_11:
    sub_2394170F4(30, 0, v18, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", v19);
    goto LABEL_12;
  }

  v21 = *a1;
  if (a11 && !*(v21 + 4))
  {
    v18 = 112;
    v19 = 167;
    goto LABEL_11;
  }

  if ((*(v21 + 40))(a1, a2, a3, a4, a5))
  {
    return 1;
  }

LABEL_12:
  if (a9)
  {
    bzero(a2, a9);
  }

  if (a5)
  {
    bzero(a3, a5);
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t sub_23942D86C(unsigned __int8 *a1, char *a2, size_t *a3, size_t a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8)
{
  if (a7 != a2 && &a2[a4] > a7 && &a7[a8] > a2)
  {
    v11 = 115;
    v12 = 191;
    goto LABEL_5;
  }

  v15 = *(*a1 + 32);
  if (!v15)
  {
    v16 = a1[576];
    v13 = a8 - v16;
    if (a8 >= v16)
    {
      if (v13 <= a4)
      {
        if (sub_23942D9B0(a1, a2, a5, a6, a7, a8 - v16))
        {
          result = 1;
LABEL_9:
          *a3 = v13;
          return result;
        }

LABEL_6:
        if (a4)
        {
          bzero(a2, a4);
        }

        v13 = 0;
        result = 0;
        goto LABEL_9;
      }

      v11 = 103;
      v12 = 214;
    }

    else
    {
      v11 = 101;
      v12 = 208;
    }

LABEL_5:
    sub_2394170F4(30, 0, v11, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", v12);
    goto LABEL_6;
  }

  if (!v15(a1, a2))
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_23942D9B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, size_t a6)
{
  if (a5 != a2 && &a5[a6] > a2 && &a2[a6] > a5)
  {
    v8 = 115;
    v9 = 238;
LABEL_9:
    sub_2394170F4(30, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", v9);
    goto LABEL_10;
  }

  v10 = *(*a1 + 48);
  if (!v10)
  {
    v8 = 104;
    v9 = 243;
    goto LABEL_9;
  }

  if (v10(a1, a2))
  {
    return 1;
  }

LABEL_10:
  if (a6)
  {
    bzero(a2, a6);
  }

  return 0;
}

uint64_t sub_23942DA74(uint64_t a1)
{
  v1 = *(*a1 + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23942DA8C(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a1 + 64);
  if (v5)
  {
    v6 = v5();
LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  v7 = a1[576];
  v6 = v7 + a4;
  if (!__CFADD__(v7, a4))
  {
    goto LABEL_6;
  }

  sub_2394170F4(30, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/aead.c", 281);
  v6 = 0;
  v8 = 0;
LABEL_7:
  *a2 = v6;
  return v8;
}

double sub_23942DB08(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_23942DB28()
{
  v0 = sub_23945004C(0x98uLL);
  if (v0)
  {
    v0[18] = 0;
    result = 0.0;
    *(v0 + 7) = 0u;
    *(v0 + 8) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 6) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *v0 = 0u;
  }

  return result;
}

uint64_t sub_23942DB64(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(*a1 + 40);
    if (v2)
    {
      v2(a1);
    }
  }

  sub_239450144(*(a1 + 16));
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return 1;
}

void sub_23942DBC4(void *a1)
{
  if (a1)
  {
    sub_23942DB64(a1);

    sub_239450144(a1);
  }
}

uint64_t sub_23942DC04(uint64_t a1, uint64_t *a2)
{
  if (!a2 || !*a2)
  {
    v3 = 108;
    v4 = 103;
    goto LABEL_6;
  }

  if (*(a2 + 36))
  {
    v3 = 66;
    v4 = 108;
LABEL_6:
    sub_2394170F4(30, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v4);
    return 0;
  }

  sub_23942DB64(a1);
  v7 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 16) = v7;
  v8 = *(a2 + 5);
  v10 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = v8;
  *(a1 + 32) = v10;
  *(a1 + 48) = v9;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = *(a2 + 6);
  *(a1 + 144) = a2[18];
  *(a1 + 112) = v12;
  *(a1 + 128) = v11;
  *(a1 + 96) = v13;
  v14 = a2[2];
  v15 = *a2;
  if (v14)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      result = sub_239450350(v14, v16);
      *(a1 + 16) = result;
      if (!result)
      {
        goto LABEL_14;
      }

      v15 = *a2;
    }
  }

  if ((*(v15 + 21) & 0x10) == 0)
  {
    return 1;
  }

  result = (*(v15 + 48))(a2, 8, 0, a1);
  if (result)
  {
    return 1;
  }

LABEL_14:
  *a1 = 0;
  return result;
}