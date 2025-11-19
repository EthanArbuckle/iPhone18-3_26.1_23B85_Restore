unint64_t sub_2394A1A88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_23949ECF0(v9);
  v7 = sub_23949F6CC(v9, a1);
  if (!v7)
  {
    v7 = sub_23949F1EC(v9, a2, a3);
  }

  nullsub_56(v9, v6);
  return v7;
}

unint64_t sub_2394A1B04(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1 || a1[1] != 16)
  {
    v5 = 0x3F00000000;
    goto LABEL_10;
  }

  v4 = sub_2393F5F1C(a1);
  if (!v4)
  {
    v4 = sub_2393F5CEC(a1);
    if (!v4)
    {
      if (*a1)
      {
LABEL_8:
        v5 = 0x4100000000;
        goto LABEL_10;
      }

      v10 = 0;
      v8 = a1[1];
      if (v8 == 24)
      {
        v4 = sub_2393F6438(a1, v11);
      }

      else
      {
        if (v8 != 23)
        {
          goto LABEL_8;
        }

        v4 = sub_2393F6364(a1, v11);
      }

      v5 = v4;
      if (v4)
      {
        goto LABEL_11;
      }

      v4 = sub_23949FA9C(v11, &v10 + 1);
      if (v4)
      {
LABEL_19:
        v6 = v4 & 0xFFFFFFFF00000000;
        return v6 | v4;
      }

      v4 = sub_2393F5CEC(a1);
      if (!v4)
      {
        if (*a1)
        {
LABEL_22:
          v5 = 0x4400000000;
          goto LABEL_10;
        }

        v9 = a1[1];
        if (v9 == 24)
        {
          v4 = sub_2393F6438(a1, v11);
        }

        else
        {
          if (v9 != 23)
          {
            goto LABEL_22;
          }

          v4 = sub_2393F6364(a1, v11);
        }

        v5 = v4;
        if (v4)
        {
          goto LABEL_11;
        }

        v4 = sub_23949FA9C(v11, &v10);
        if (!v4)
        {
          if ((v10 - 1) < HIDWORD(v10))
          {
            v6 = 0x4A00000000;
            LODWORD(v4) = 773;
            return v6 | v4;
          }

          v4 = sub_2393C81D4(a2, 4uLL, HIDWORD(v10));
          if (!v4)
          {
            v4 = sub_2393C81D4(a2, 5uLL, v10);
            if (!v4)
            {
              v4 = sub_2393F5CEC(a1);
              if (v4)
              {
                if (v4 == 768)
                {
                  v4 = sub_2393F602C(a1);
                }

                goto LABEL_2;
              }

              v5 = 0x5000000000;
LABEL_10:
              LODWORD(v4) = 773;
              goto LABEL_11;
            }
          }
        }

        goto LABEL_19;
      }
    }
  }

LABEL_2:
  v5 = v4;
LABEL_11:
  v6 = v5 & 0xFFFFFFFF00000000;
  return v6 | v4;
}

unint64_t sub_2394A1CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1 || *(a1 + 1) != 16)
  {
    v5 = 0x5C00000000;
    goto LABEL_20;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = 0x6000000000;
  LODWORD(v4) = 773;
  if (*a1 || *(a1 + 1) != 16)
  {
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = 0x6300000000;
  LODWORD(v4) = 773;
  if (*a1 || *(a1 + 1) != 6)
  {
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v10 = 0;
  v4 = sub_2393F5BA0(a1, &v10 + 1);
  if (v4)
  {
    goto LABEL_2;
  }

  if (HIWORD(v10) != 257)
  {
    v5 = 0x6600000000;
LABEL_23:
    LODWORD(v4) = 774;
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v4 = sub_2393C8140(a2, 7uLL, 1u);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1)
  {
LABEL_18:
    v5 = 0x7B00000000;
    goto LABEL_20;
  }

  v7 = *(a1 + 1);
  if (v7 == 5)
  {
    v5 = 0x7800000000;
    goto LABEL_23;
  }

  if (v7 == 16)
  {
    v5 = 0x7400000000;
    goto LABEL_23;
  }

  if (v7 != 6)
  {
    goto LABEL_18;
  }

  v4 = sub_2393F5BA0(a1, &v10);
  if (v4)
  {
LABEL_2:
    v5 = v4;
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  if (sub_2393F5B1C(v10) != 1024)
  {
    v5 = 0x8000000000;
    goto LABEL_23;
  }

  v4 = sub_2393C8140(a2, 8uLL, v10);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1);
  if (!v4)
  {
    v5 = 0x8500000000;
    goto LABEL_20;
  }

  if (v4 != 768)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F602C(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = 0x8800000000;
  LODWORD(v4) = 773;
  if (!*a1 && *(a1 + 1) == 3)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v5 = 0x8B00000000;
      goto LABEL_20;
    }

    v9 = *(a1 + 8);
    if (*v9)
    {
      v5 = 0x8E00000000;
      goto LABEL_20;
    }

    v4 = sub_2393C83AC(a2, 9uLL, v9 + 1, v8 - 1);
    if (!v4)
    {
      v4 = sub_2393F5CEC(a1);
      if (v4)
      {
        if (v4 == 768)
        {
          v4 = sub_2393F602C(a1);
        }

        goto LABEL_2;
      }

      v5 = 0x9500000000;
LABEL_20:
      LODWORD(v4) = 773;
      return v5 & 0xFFFFFFFF00000000 | v4;
    }

    goto LABEL_2;
  }

  return v5 & 0xFFFFFFFF00000000 | v4;
}

unint64_t sub_2394A1F58(unsigned __int8 *a1, uint64_t a2)
{
  v9 = 0;
  v4 = sub_2393C8CE0(a2, 0xAuLL, 23, &v9);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_3;
  }

  if (*a1 || a1[1] != 16)
  {
    v5 = 0x17600000000;
LABEL_134:
    LODWORD(v4) = 773;
    return v5 & 0xFFFFFFFF00000000 | v4;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v4 = sub_2393F5CEC(a1);
    if (v4)
    {
      break;
    }

    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v4 = sub_2393F60B0(a1, &v13, &v12);
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = 0xA800000000;
    if (*a1 || a1[1] != 16)
    {
      goto LABEL_134;
    }

    v4 = sub_2393F5F1C(a1);
    if (v4)
    {
      goto LABEL_20;
    }

    v4 = sub_2393F5CEC(a1);
    if (v4)
    {
      goto LABEL_20;
    }

    v5 = 0xAB00000000;
    if (*a1 || a1[1] != 6)
    {
      goto LABEL_134;
    }

    v4 = sub_2393F5BA0(a1, &v15);
    if (v4)
    {
      goto LABEL_20;
    }

    if (v15 != 0xFFFF && sub_2393F5B1C(v15) != 1280)
    {
      v5 = 0xB000000000;
      goto LABEL_134;
    }

    v4 = sub_2393F5CEC(a1);
    if (v4)
    {
      goto LABEL_20;
    }

    if (*a1)
    {
      goto LABEL_142;
    }

    v7 = a1[1];
    if (v7 == 1)
    {
      v4 = sub_2393F62C0(a1, &v14);
      if (v4)
      {
        goto LABEL_20;
      }

      if (!v14)
      {
        v5 = 0xB900000000;
        goto LABEL_134;
      }

      v4 = sub_2393F5CEC(a1);
      if (v4)
      {
        goto LABEL_20;
      }

      if (*a1)
      {
        goto LABEL_142;
      }

      v7 = a1[1];
    }

    if (v7 != 4)
    {
LABEL_142:
      v5 = 0xC200000000;
      goto LABEL_134;
    }

    v4 = sub_2393F6100(a1);
    if (v4)
    {
      goto LABEL_20;
    }

    if (v15 > 0x502u)
    {
      switch(v15)
      {
        case 0x503u:
          if (!v14)
          {
            v5 = 0x13E00000000;
            goto LABEL_134;
          }

          v4 = sub_2393C8CE0(a2, 3uLL, 22, &v16);
          if (v4)
          {
            goto LABEL_20;
          }

          v4 = sub_2393F5CEC(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v5 = 0x14400000000;
          if (*a1 || a1[1] != 16)
          {
            goto LABEL_134;
          }

          v4 = sub_2393F5F1C(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          while (1)
          {
            v4 = sub_2393F5CEC(a1);
            if (v4)
            {
              break;
            }

            LOWORD(v10) = 0;
            v4 = sub_2393F5BA0(a1, &v10);
            if (v4)
            {
              goto LABEL_20;
            }

            if (v10 == 0xFFFF)
            {
              v5 = 0x14C00000000;
              LODWORD(v4) = 774;
              goto LABEL_21;
            }

            if (sub_2393F5B1C(v10) != 1536)
            {
              v5 = 0x14D00000000;
              goto LABEL_117;
            }

            v4 = sub_2393C8140(a2, 0x100uLL, v10);
            if (v4)
            {
              goto LABEL_20;
            }
          }

          if (v4 != 768)
          {
            goto LABEL_20;
          }

          v4 = sub_2393F5CEC(a1);
          if (v4 != 768)
          {
            if (v4)
            {
              goto LABEL_20;
            }

            v5 = 0x15700000000;
            goto LABEL_134;
          }

          v4 = sub_2393F602C(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v4 = sub_2393C8DE0(a2, v16);
          if (v4)
          {
            goto LABEL_20;
          }

LABEL_108:
          v4 = sub_2393F5CEC(a1);
          if (v4 == 768)
          {
            v4 = sub_2393F602C(a1);
            if (!v4)
            {
              v4 = sub_2393F5CEC(a1);
              if (v4 == 768)
              {
                v4 = sub_2393F602C(a1);
              }

              else if (!v4)
              {
                v5 = 0x16700000000;
                goto LABEL_134;
              }
            }
          }

          else if (!v4)
          {
            v5 = 0x16500000000;
            goto LABEL_134;
          }

          goto LABEL_20;
        case 0x504u:
          if (v14)
          {
            v5 = 0xE200000000;
            goto LABEL_134;
          }

          v4 = sub_2393F5CEC(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v5 = 0xE600000000;
          if (*a1 || a1[1] != 4)
          {
            goto LABEL_134;
          }

          if (*(a1 + 4) != 20)
          {
            v5 = 0xE800000000;
            goto LABEL_134;
          }

          v4 = sub_2393C83AC(a2, 4uLL, *(a1 + 1), 0x14u);
          if (v4)
          {
            goto LABEL_20;
          }

          goto LABEL_108;
        case 0x505u:
          if (v14)
          {
            v5 = 0xC700000000;
            goto LABEL_134;
          }

          v4 = sub_2393F5CEC(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v5 = 0xCA00000000;
          if (*a1 || a1[1] != 16)
          {
            goto LABEL_134;
          }

          v4 = sub_2393F5F1C(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v4 = sub_2393F5CEC(a1);
          if (v4)
          {
            goto LABEL_20;
          }

          v5 = 0xD200000000;
          if (*a1 != 128 || a1[1])
          {
            goto LABEL_134;
          }

          if (a1[20])
          {
            v5 = 0xD400000000;
            goto LABEL_134;
          }

          if (*(a1 + 4) != 20)
          {
            v5 = 0xD500000000;
            goto LABEL_134;
          }

          v4 = sub_2393C83AC(a2, 5uLL, *(a1 + 1), 0x14u);
          if (v4)
          {
            goto LABEL_20;
          }

          if (sub_2393F5CEC(a1) != 768)
          {
            v5 = 0xDB00000000;
            goto LABEL_134;
          }

          v4 = sub_2393F5CEC(a1);
          if (v4 != 768)
          {
            if (!v4)
            {
              v5 = 0xDD00000000;
              goto LABEL_134;
            }

            goto LABEL_20;
          }

LABEL_123:
          v4 = sub_2393F602C(a1);
          if (!v4)
          {
            goto LABEL_108;
          }

          goto LABEL_20;
      }

LABEL_106:
      v4 = sub_2393C83AC(a2, 6uLL, v13, v12);
      if (!v4)
      {
        v4 = sub_2393F5CEC(a1);
        if (!v4)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_20;
    }

    if (v15 == 1281)
    {
      if (!v14)
      {
        v5 = 0x10800000000;
        goto LABEL_134;
      }

      v4 = sub_2393F5CEC(a1);
      if (v4)
      {
        goto LABEL_20;
      }

      v5 = 0x10B00000000;
      if (*a1 || a1[1] != 16)
      {
        goto LABEL_134;
      }

      v4 = sub_2393F5F1C(a1);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = 0;
      v10 = -1;
      if (!sub_2393F5CEC(a1) && !*a1)
      {
        v8 = a1[1];
        if (v8 == 1)
        {
          v4 = sub_2393F62C0(a1, &v11);
          if (v4)
          {
            goto LABEL_20;
          }

          if (!v11)
          {
            v5 = 0x11700000000;
            goto LABEL_117;
          }

          if (!sub_2393F5CEC(a1) && !*a1)
          {
            v8 = a1[1];
            goto LABEL_94;
          }
        }

        else
        {
LABEL_94:
          if (v8 == 2)
          {
            v4 = sub_2393F6188(a1, &v10);
            if (v4)
            {
              goto LABEL_20;
            }

            if (v10 > 0xFF)
            {
              v5 = 0x12200000000;
              goto LABEL_117;
            }

            if (!v11)
            {
              v5 = 0x12500000000;
              goto LABEL_117;
            }
          }
        }
      }

      v4 = sub_2393C8CE0(a2, 1uLL, 21, &v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = sub_2393C7E38(a2, 1uLL, v11);
      if (v4)
      {
        goto LABEL_20;
      }

      if (v10 != -1)
      {
        v4 = sub_2393C8140(a2, 2uLL, v10);
        if (v4)
        {
          goto LABEL_20;
        }
      }

      v4 = sub_2393C8DE0(a2, v16);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = sub_2393F5CEC(a1);
      if (v4 != 768)
      {
        if (!v4)
        {
          v5 = 0x13900000000;
          goto LABEL_134;
        }

        goto LABEL_20;
      }

      goto LABEL_123;
    }

    if (v15 != 1282)
    {
      goto LABEL_106;
    }

    if (!v14)
    {
      v5 = 0xF000000000;
      goto LABEL_134;
    }

    v4 = sub_2393F5CEC(a1);
    if (!v4)
    {
      v5 = 0xF300000000;
      if (*a1 || a1[1] != 3)
      {
        goto LABEL_134;
      }

      LODWORD(v10) = 0;
      v4 = sub_2393F650C(a1, &v10);
      if (!v4)
      {
        if (WORD1(v10))
        {
          v5 = 0xF800000000;
LABEL_117:
          LODWORD(v4) = 773;
          goto LABEL_21;
        }

        if (v10 > 0xFF)
        {
          v5 = 0x10000000000;
          goto LABEL_117;
        }

        v4 = sub_2393C81D4(a2, 2uLL, v10);
        if (!v4)
        {
          goto LABEL_108;
        }
      }
    }

LABEL_20:
    v5 = v4;
LABEL_21:
    if (v4)
    {
      return v5 & 0xFFFFFFFF00000000 | v4;
    }
  }

  if (v4 != 768)
  {
    goto LABEL_3;
  }

  v4 = sub_2393F5CEC(a1);
  if (!v4)
  {
    v5 = 0x18300000000;
    goto LABEL_134;
  }

  if (v4 == 768)
  {
    v4 = sub_2393F602C(a1);
    if (!v4)
    {
      v4 = sub_2393C8DE0(a2, v9);
    }
  }

LABEL_3:
  v5 = v4;
  return v5 & 0xFFFFFFFF00000000 | v4;
}

unint64_t sub_2394A2688(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v15);
  sub_23949DD70(v16, v6);
  sub_2393C5ADC(v15, a1, a2);
  sub_2393F6DA8(v14, *a3, a3[1]);
  sub_23949DB2C(v16);
  v7 = sub_2394A277C(v15, v14, v14, v16);
  v9 = v7;
  if (v7)
  {
    v10 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v11 = sub_2393F6DCC(v14);
    sub_238DB8498(a3, v11);
    v10 = 0;
    v9 = 0;
  }

  nullsub_56(v16, v8);
  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

uint64_t sub_2394A277C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (sub_2393C5C40(a1) != -1 || (v8 = sub_2393C6B34(a1), !v8))
  {
    v8 = sub_2393C7078(a1, 21, 256);
    if (!v8)
    {
      v18 = 0;
      v8 = sub_2393C6A2C(a1, &v18);
      if (!v8)
      {
        v8 = sub_2393F77A4(a2, 0, 0x10u);
        if (!v8)
        {
          sub_2393C6B34(a1);
          if (*(a1 + 16) == 9)
          {
            if (!sub_2393C7078(a1, 16, 9) && !sub_2394A2ED0(a1, (a4 + 360)))
            {
              *a4 = xmmword_278A83090;
              *(a4 + 372) = 513;
              sub_2394A0BD0(a4 + 176);
              *(a4 + 352) = 1;
              sub_2394A0BD0(a4 + 16);
              *(a4 + 368) = 16843777;
              v9 = *(a4 + 374);
              *(a4 + 376) = 1;
              *(a4 + 374) = v9 | 7;
              *(a4 + 378) = 3;
              if (*a3)
              {
                v19 = &unk_284BB9138;
                v10 = *(a4 + 360);
                v20 = *v10;
                v12 = v10[2];
                v11 = v10[3];
                v13 = *(v10 + 64);
                v21 = v10[1];
                v22 = v12;
                v24 = v13;
                v23 = v11;
                sub_2394AD9BC(&v19, a3);
              }
            }

LABEL_33:
            v8 = sub_2393F77A4(a2, 0, 0x10u);
            if (!v8)
            {
              v8 = sub_2393F5C58(a2, *(a4 + 372));
              if (!v8)
              {
                v8 = sub_2393F77B0(a2);
                if (!v8)
                {
                  v8 = sub_2394A2E2C(a1, a2, a4);
                  if (!v8)
                  {
                    v8 = sub_2393F77B0(a2);
                    if (!v8)
                    {
                      v17 = sub_2393C6AE0(a1);
                      if (v17 || (v17 = sub_2393C6A98(a1, v18), v17))
                      {
                        v8 = v17;
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_11;
          }

          v8 = sub_2393F77A4(a3, 0, 0x10u);
          if (!v8)
          {
            v8 = sub_2393F77A4(a3, 128, 0);
            if (!v8)
            {
              v8 = sub_2393F6DE8(a3, 2uLL);
              if (!v8)
              {
                v8 = sub_2393F77B0(a3);
                if (!v8)
                {
                  v8 = sub_2393C7078(a1, 16, 1);
                  if (!v8)
                  {
                    v8 = sub_2393C60CC(a1, a4);
                    if (!v8)
                    {
                      v8 = sub_2393F6EB4(a3, 0, 2u, 0, *a4, *(a4 + 8));
                      if (!v8)
                      {
                        v8 = sub_2393F77A4(a3, 0, 0x10u);
                        if (!v8)
                        {
                          LOBYTE(v19) = 0;
                          v8 = sub_2393C6FD0(a1, 2);
                          if (!v8)
                          {
                            v8 = sub_2393C5ED0(a1, &v19);
                            if (!v8)
                            {
                              v16 = v19 | 0x200;
                              *(a4 + 372) = v19 | 0x200;
                              v8 = sub_2393F5C58(a3, v16);
                              if (!v8)
                              {
                                v8 = sub_2393F77B0(a3);
                                if (!v8)
                                {
                                  v8 = sub_2393C7114(a1, 23, 3);
                                  if (!v8)
                                  {
                                    v8 = sub_2394A2DC8(a1, a3, a4 + 176);
                                    if (!v8)
                                    {
                                      v8 = sub_2394A2F60(a1, a3, a4);
                                      if (!v8)
                                      {
                                        v8 = sub_2393C7114(a1, 23, 6);
                                        if (!v8)
                                        {
                                          v8 = sub_2394A2DC8(a1, a3, a4 + 16);
                                          if (!v8)
                                          {
                                            v8 = sub_2394A3070(a1, a3, a4);
                                            if (!v8)
                                            {
                                              v8 = sub_2394A31E0(a1, a3, a4);
                                              if (!v8)
                                              {
                                                v8 = sub_2393F77B0(a3);
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

          if (!v8)
          {
            goto LABEL_33;
          }
        }
      }
    }
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_2394A2BA8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  sub_2393C5AAC(v9);
  sub_2393C5ADC(v9, a1, a2);
  return sub_2394A2C0C(v9, a3, a4);
}

unint64_t sub_2394A2C0C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2393F6DBC(v14);
  sub_23949DB2C(a2);
  if (a3)
  {
    v9 = sub_2393D52C4(0x20FuLL);
    if (!v9)
    {
      v8 = 0x2A600000000;
      LODWORD(v7) = 11;
      return v7 | v8;
    }

    v10 = v9;
    sub_2393F6DA8(v13, v9, 527);
    v7 = sub_2394A277C(a1, v14, v13, a2);
    if (!v7)
    {
      if (*(a2 + 372) != 513)
      {
        v8 = 0x2AD00000000;
        LODWORD(v7) = 23;
        goto LABEL_15;
      }

      v11 = sub_2393F6DCC(v13);
      v7 = sub_2393F7E10(v10, v11, (a2 + 392));
      if (!v7)
      {
        *(a2 + 374) |= 0x200u;
        j__free(v10);
        goto LABEL_11;
      }
    }

    v8 = v7 & 0xFFFFFFFF00000000;
LABEL_15:
    j__free(v10);
    return v7 | v8;
  }

  v6 = sub_2394A277C(a1, v14, v14, a2);
  LODWORD(v7) = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
    return v7 | v8;
  }

LABEL_11:
  if ((a3 & 2) != 0)
  {
    v8 = 0;
    LODWORD(v7) = 0;
    *(a2 + 374) |= 0x100u;
  }

  else
  {
    v8 = 0;
    LODWORD(v7) = 0;
  }

  return v7 | v8;
}

unint64_t sub_2394A2D7C(uint64_t a1, uint64_t a2)
{
  sub_2393F6DBC(v5);
  sub_23949ED30(a2);
  return sub_2394A2DC8(a1, v5, a2);
}

unint64_t sub_2394A2DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23949F2D4(a3, a1);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_23949F4C8(a3, a2);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

unint64_t sub_2394A2E2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2393C7114(a1, 16, 11);
  if (!v6)
  {
    v6 = sub_2394A3B1C(a1, (a3 + 384));
    if (!v6)
    {
      v7 = *a2;
      if (!*a2)
      {
        LODWORD(v6) = 0;
        return v7 | v6;
      }

      v6 = sub_2393F7918(a2, 0, 3u, 1);
      if (!v6)
      {
        v6 = sub_23949FEE8(*(a3 + 384), a2);
        if (!v6)
        {
          v6 = sub_2393F77B0(a2);
        }
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2394A2ED0(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = sub_2393C6160(a1, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2393C5CB8(a1) == 65)
  {
    sub_238DC45B4(&v7, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v7;
  }

  else
  {
    v5 = 0x1DA00000000;
    LODWORD(v4) = 43;
  }

  return v5 | v4;
}

unint64_t sub_2394A2F60(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2393F77A4(a2, 0, 0x10u);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393C6FD0(a1, 4);
  if (v6)
  {
    goto LABEL_13;
  }

  v7 = (a3 + 352);
  v6 = sub_2393C5FC8(a1, (a3 + 352));
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_23949FB2C(*v7, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393F75FC(a2, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393C6FD0(a1, 5);
  if (v6)
  {
    goto LABEL_13;
  }

  v8 = (a3 + 356);
  v6 = sub_2393C5FC8(a1, v8);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_23949FB2C(*v8, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  v6 = sub_2393F75FC(a2, &v11);
  if (v6)
  {
    goto LABEL_13;
  }

  if (*v8 - 1 >= *v7)
  {
    v6 = sub_2393F77B0(a2);
LABEL_13:
    v9 = v6 & 0xFFFFFFFF00000000;
    return v9 | v6;
  }

  v9 = 0x4C00000000;
  LODWORD(v6) = 80;
  return v9 | v6;
}

unint64_t sub_2394A3070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393C6FD0(a1, 7);
  if (!v6)
  {
    v11 = 0;
    v6 = sub_2393C5ED0(a1, &v11 + 1);
    if (!v6)
    {
      v9 = HIBYTE(v11);
      *(a3 + 370) = HIBYTE(v11) | 0x100;
      if (v9 != 1)
      {
        v7 = 0x5E00000000;
        LODWORD(v6) = 80;
        return v7 | v6;
      }

      v6 = sub_2393C6FD0(a1, 8);
      if (!v6)
      {
        v6 = sub_2393C5ED0(a1, &v11);
        if (!v6)
        {
          v10 = v11;
          *(a3 + 368) = v11 | 0x400;
          if (v10 != 1)
          {
            v7 = 0x6400000000;
            LODWORD(v6) = 81;
            return v7 | v6;
          }

          v6 = sub_2393F77A4(a2, 0, 0x10u);
          if (!v6)
          {
            v6 = sub_2393F77A4(a2, 0, 0x10u);
            if (!v6)
            {
              v6 = sub_2393F5C58(a2, *(a3 + 370));
              if (!v6)
              {
                v6 = sub_2393F5C58(a2, *(a3 + 368));
                if (!v6)
                {
                  v6 = sub_2393F77B0(a2);
                  if (!v6)
                  {
                    v6 = sub_2393C7114(a1, 16, 9);
                    if (!v6)
                    {
                      v6 = sub_2394A2ED0(a1, (a3 + 360));
                      if (!v6)
                      {
                        v6 = sub_2393F7438(a2, 0, *(a3 + 360), 0x41u);
                        if (!v6)
                        {
                          v6 = sub_2393F77B0(a2);
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

  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2394A31E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_2393C7114(a1, 23, 10);
  if (v6)
  {
    return v6;
  }

  v20 = 0;
  v6 = sub_2393C6A2C(a1, &v20);
  if (v6)
  {
    return v6;
  }

  v6 = sub_2393F77A4(a2, 128, 3u);
  if (v6)
  {
    return v6;
  }

  v6 = sub_2393F77A4(a2, 0, 0x10u);
  if (v6)
  {
    return v6;
  }

  v8 = 80;
  while (1)
  {
    v9 = sub_2393C6B34(a1);
    v6 = v9;
    if (v9)
    {
      break;
    }

    v10 = *(a1 + 16);
    if (v10 > 0xFF)
    {
      v12 = 0x15D00000000;
      v8 = 36;
      return v12 | v8;
    }

    if (v10 != 6)
    {
      v11 = sub_2393F77A4(a2, 0, 0x10u);
      if (v11)
      {
        goto LABEL_25;
      }

      v11 = sub_2393F5C58(a2, v10 | 0x500u);
      if (v11)
      {
        goto LABEL_25;
      }

      if ((v10 - 1) <= 2)
      {
        v11 = sub_2393F6F40(a2, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v11 = sub_2393F7918(a2, 0, 4u, 0);
      if (v11)
      {
        goto LABEL_25;
      }

      v12 = 0x18F00000000;
      if (v10 <= 2u)
      {
        if (v10 != 1)
        {
          if (v10 != 2)
          {
            return v12 | v8;
          }

          v11 = sub_2394A377C(a1, a2, a3);
          if (v11)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }

        v11 = sub_2394A3824(a1, a2, a3);
        if (!v11)
        {
LABEL_43:
          v11 = sub_2393F77B0(a2);
          if (!v11)
          {
            v11 = sub_2393F77B0(a2);
          }
        }
      }

      else
      {
        switch(v10)
        {
          case 3u:
            v11 = sub_2394A3974(a1, a2, a3);
            if (!v11)
            {
              goto LABEL_43;
            }

            break;
          case 4u:
            v11 = sub_2394A36EC(a1, a2, a3);
            if (!v11)
            {
              goto LABEL_43;
            }

            break;
          case 5u:
            v11 = sub_2394A3638(a1, a2, a3);
            if (v11)
            {
              break;
            }

            goto LABEL_43;
          default:
            return v12 | v8;
        }
      }

LABEL_25:
      v13 = HIDWORD(v11);
      goto LABEL_26;
    }

    v25 = 0uLL;
    v11 = sub_2393C7078(a1, 16, 6);
    if (v11)
    {
      goto LABEL_25;
    }

    v11 = sub_2393C60CC(a1, &v25);
    if (v11)
    {
      goto LABEL_25;
    }

    sub_2393F5CB4(&v23, v25, *(&v25 + 1));
    v11 = sub_2393F5CEC(&v23);
    if (v11)
    {
      goto LABEL_17;
    }

    v12 = 0x13400000000;
    if (v23 || v24 != 16)
    {
      goto LABEL_77;
    }

    v11 = sub_2393F5F1C(&v23);
    if (v11 || (v22 = 0, v21 = 0, v11 = sub_2393F5CEC(&v23), v11))
    {
LABEL_17:
      v13 = HIDWORD(v11);
      goto LABEL_18;
    }

    if (v23)
    {
      LODWORD(v11) = 773;
      v13 = 313;
      goto LABEL_18;
    }

    LODWORD(v11) = 773;
    v13 = 313;
    if (v24 != 6)
    {
      goto LABEL_18;
    }

    v11 = sub_2393F5BA0(&v23, &v22);
    if (v11)
    {
      goto LABEL_17;
    }

    if (v22 != -1)
    {
      v13 = 315;
      LODWORD(v11) = 774;
      goto LABEL_26;
    }

    v14 = sub_2393F5CEC(&v23);
    if (v14)
    {
      goto LABEL_52;
    }

    if (!v23 && v24 == 1)
    {
      v14 = sub_2393F62C0(&v23, &v21);
      if (v14)
      {
        goto LABEL_52;
      }

      if (v21)
      {
        *(a3 + 374) |= 0x20u;
      }

      v14 = sub_2393F5CEC(&v23);
      if (v14)
      {
LABEL_52:
        v15 = v14;
LABEL_53:
        LODWORD(v11) = v15;
        v13 = HIDWORD(v15);
        goto LABEL_18;
      }
    }

    v16 = sub_2393F5CEC(&v23);
    if (v16 != 768)
    {
      v15 = v16;
      if (!v16)
      {
        v12 = 0x14B00000000;
LABEL_77:
        v8 = 773;
        return v12 | v8;
      }

      goto LABEL_53;
    }

    v17 = sub_2393F602C(&v23);
    v13 = HIDWORD(v17);
    v19 = v17;
    if (!v17)
    {
      if (*(&v25 + 1) >> 16)
      {
        v13 = 333;
        LODWORD(v11) = 773;
        goto LABEL_26;
      }

      v11 = sub_2393F771C(a2, v25, WORD4(v25));
      if (v11)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v11) = v19;
LABEL_18:
    if (!v11)
    {
      v11 = 0;
      goto LABEL_25;
    }

LABEL_26:
    if (v11)
    {
      return v11 | (v13 << 32);
    }
  }

  if (v9 == 33)
  {
    v6 = sub_2393F77B0(a2);
    if (!v6)
    {
      v6 = sub_2393F77B0(a2);
      if (!v6)
      {
        v18 = sub_2393C6A98(a1, v20);
        if (v18)
        {
          return v18;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_2394A3638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 374) |= 0x10u;
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393C7078(a1, 16, 5);
    if (!result)
    {
      result = sub_2394A3A70(a1, (a3 + 344));
      if (!result)
      {
        result = sub_2393F717C(a2, 128, 0, *(a3 + 344), 0x14u);
        if (!result)
        {

          return sub_2393F77B0(a2);
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394A36EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 374) |= 8u;
  v6 = sub_2393C7078(a1, 16, 4);
  if (v6 || (v6 = sub_2394A3A70(a1, (a3 + 336)), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = sub_2393F7164(a2, *(a3 + 336), 0x14u);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      LODWORD(v6) = 0;
      v7 = 0;
    }
  }

  return v7 | v6;
}

unint64_t sub_2394A377C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a3 + 374) |= 2u;
  v6 = sub_2393C6F5C(a1, 2);
  if (!v6)
  {
    v10 = 0;
    v6 = sub_2393C5F70(a1, &v10);
    if (!v6)
    {
      v9 = v10;
      if (v10 > 0xFFu)
      {
        v7 = 0xCA00000000;
        LODWORD(v6) = 80;
        return v6 | v7;
      }

      v6 = sub_2393F726C(a2, v10);
      if (!v6)
      {
        *(a3 + 376) = v9;
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v6 | v7;
}

uint64_t sub_2394A3824(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 374) |= 1u;
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393C7078(a1, 21, 1);
    if (!result)
    {
      v8 = 0;
      result = sub_2393C6A2C(a1, &v8);
      if (!result)
      {
        v7 = 0;
        result = sub_2393C6FD0(a1, 1);
        if (!result)
        {
          result = sub_2393C5CE4(a1, &v7);
          if (!result)
          {
            if (v7 == 1)
            {
              result = sub_2393F6F40(a2, 1);
              if (result)
              {
                return result;
              }

              *(a3 + 374) |= 0x80u;
            }

            result = sub_2393C6B34(a1);
            if (!result || result == 33)
            {
              if (*(a1 + 16) != 2 || (result = sub_2393C5ED0(a1, (a3 + 379)), !result) && (result = sub_2393F6DE8(a2, *(a3 + 379)), !result) && (*(a3 + 374) |= 0x40u, result = sub_2393C6B34(a1), result == 33))
              {
                result = sub_2393C6AE0(a1);
                if (!result)
                {
                  result = sub_2393C6A98(a1, v8);
                  if (!result)
                  {
                    return sub_2393F77B0(a2);
                  }
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

uint64_t sub_2394A3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 374) |= 4u;
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393C7078(a1, 22, 3);
    if (!result)
    {
      v8 = 0;
      result = sub_2393C6A2C(a1, &v8);
      if (!result)
      {
        while (1)
        {
          result = sub_2393C6FD0(a1, 256);
          if (result)
          {
            break;
          }

          v7 = 0;
          result = sub_2393C5ED0(a1, &v7);
          if (result)
          {
            return result;
          }

          result = sub_2393F5C58(a2, v7 | 0x600u);
          if (result)
          {
            return result;
          }

          *(a3 + 378) |= 1 << (v7 - 1);
        }

        if (result == 33)
        {
          result = sub_2393C6A98(a1, v8);
          if (!result)
          {
            return sub_2393F77B0(a2);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394A3A70(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = sub_2393C6160(a1, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2393C5CB8(a1) == 20)
  {
    sub_2394A3B00(&v7, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v7;
  }

  else
  {
    v5 = 0x1DA00000000;
    LODWORD(v4) = 43;
  }

  return v5 | v4;
}

void *sub_2394A3B00(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_2395359B4();
  }

  return result;
}

unint64_t sub_2394A3B1C(uint64_t a1, void *a2)
{
  v8 = 0;
  v4 = sub_2393C6160(a1, &v8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2393C5CB8(a1) == 64)
  {
    sub_2394A3B00(&v7, v8);
    LODWORD(v4) = 0;
    v5 = 0;
    *a2 = v7;
  }

  else
  {
    v5 = 0x1DA00000000;
    LODWORD(v4) = 43;
  }

  return v5 | v4;
}

unint64_t sub_2394A3BAC(unsigned __int16 *a1, uint64_t a2)
{
  sub_2393C7B90(v11);
  v10 = 0;
  sub_2393C7BB8(v11, *a2, *(a2 + 8));
  v4 = sub_2393C8CE0(v11, 0x100uLL, 21, &v10 + 1);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v11, 0, *a1);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v11, 1uLL, a1[1]);
  if (v4)
  {
    goto LABEL_4;
  }

  if (!*(a1 + 204))
  {
    v5 = 0x4E00000000;
LABEL_36:
    LODWORD(v4) = 47;
    return v4 | v5;
  }

  if (*(a1 + 204) > 0x64u)
  {
    v5 = 0x4F00000000;
    goto LABEL_36;
  }

  v4 = sub_2393C8CE0(v11, 2uLL, 22, &v10);
  if (v4)
  {
    goto LABEL_4;
  }

  if (*(a1 + 204))
  {
    v7 = 0;
    do
    {
      v4 = sub_2393C818C(v11, 0x100uLL, a1[v7 + 2]);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    while (++v7 < *(a1 + 204));
  }

  v4 = sub_2393C8DE0(v11, v10);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C81D4(v11, 3uLL, *(a1 + 52));
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C847C(v11, 4uLL, a1 + 212);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C8140(v11, 5uLL, *(a1 + 232));
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v11, 6uLL, a1[117]);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C818C(v11, 7uLL, a1[118]);
  if (v4)
  {
    goto LABEL_4;
  }

  v4 = sub_2393C8140(v11, 8uLL, *(a1 + 238));
  if (v4)
  {
    goto LABEL_4;
  }

  if (*(a1 + 244) == 1)
  {
    v4 = sub_2393C818C(v11, 9uLL, a1[120]);
    if (v4)
    {
      goto LABEL_4;
    }

    v4 = sub_2393C818C(v11, 0xAuLL, a1[121]);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  if (!*(a1 + 445))
  {
LABEL_31:
    v4 = sub_2393C8DE0(v11, SHIDWORD(v10));
    if (!v4)
    {
      v4 = sub_2393C7CB8(v11);
      if (!v4)
      {
        sub_238DB8498(a2, v12);
        v5 = 0;
        LODWORD(v4) = 0;
        return v4 | v5;
      }
    }

    goto LABEL_4;
  }

  if (*(a1 + 445) > 0xAu)
  {
    v5 = 0x6500000000;
    goto LABEL_36;
  }

  v4 = sub_2393C8CE0(v11, 0xBuLL, 22, &v10);
  if (!v4)
  {
    if (*(a1 + 445))
    {
      v8 = 0;
      v9 = a1 + 245;
      do
      {
        v4 = sub_2393C8364(v11, 0x100uLL, v9, 0x14uLL);
        if (v4)
        {
          goto LABEL_4;
        }

        ++v8;
        v9 += 20;
      }

      while (v8 < *(a1 + 445));
    }

    v4 = sub_2393C8DE0(v11, v10);
    if (!v4)
    {
      goto LABEL_31;
    }
  }

LABEL_4:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_2394A3E2C(uint64_t *a1, uint64_t a2)
{
  sub_2393C5AAC(v12);
  v4 = a1[1];
  if (v4 > 0x316)
  {
    LODWORD(v5) = 47;
    v6 = 0x7E00000000;
    return v6 | v5;
  }

  v11 = 0;
  sub_2393C5ADC(v12, *a1, v4);
  v5 = sub_2393C7114(v12, 21, 256);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6A2C(v12, &v11 + 1);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 0);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5F70(v12, a2);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 1);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5F70(v12, (a2 + 2));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C7114(v12, 22, 2);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6A2C(v12, &v11);
  if (v5)
  {
    goto LABEL_12;
  }

  *(a2 + 204) = 0;
  while (1)
  {
    v5 = sub_2393C6FD0(v12, 256);
    if (v5)
    {
      break;
    }

    v8 = *(a2 + 204);
    if (v8 > 0x63)
    {
      LODWORD(v5) = 47;
      v6 = 0x9200000000;
      return v6 | v5;
    }

    *(a2 + 204) = v8 + 1;
    v5 = sub_2393C5F70(v12, (a2 + 4 + 2 * v8));
    if (v5)
    {
      goto LABEL_65;
    }
  }

  if (v5 != 33)
  {
LABEL_65:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6A98(v12, v11);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 3);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5FC8(v12, (a2 + 208));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C7114(v12, 12, 4);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C65A4(v12, (a2 + 212), 0x14uLL);
  if (v5)
  {
    goto LABEL_12;
  }

  if (strlen((a2 + 212)) != 19)
  {
    LODWORD(v5) = 35;
    v6 = 0x9D00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6FD0(v12, 5);
  if (v5 || (v5 = sub_2393C5ED0(v12, (a2 + 232)), v5) || (v5 = sub_2393C6FD0(v12, 6), v5) || (v5 = sub_2393C5F70(v12, (a2 + 234)), v5) || (v5 = sub_2393C6FD0(v12, 7), v5) || (v5 = sub_2393C5F70(v12, (a2 + 236)), v5) || (v5 = sub_2393C6FD0(v12, 8), v5) || (v5 = sub_2393C5ED0(v12, (a2 + 238)), v5))
  {
LABEL_12:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  *(a2 + 244) = 0;
  v5 = sub_2393C6FD0(v12, 9);
  v9 = v5;
  if (v5)
  {
    goto LABEL_35;
  }

  v5 = sub_2393C5F70(v12, (a2 + 240));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6FD0(v12, 10);
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C5F70(v12, (a2 + 242));
  if (v5)
  {
    goto LABEL_12;
  }

  *(a2 + 244) = 1;
  v5 = sub_2393C6B34(v12);
  v9 = v5;
  if (v5)
  {
LABEL_35:
    if (v5 == 33)
    {
      if (v13 != 10)
      {
        goto LABEL_62;
      }

LABEL_55:
      LODWORD(v5) = 35;
      v6 = 0xBA00000000;
      return v6 | v5;
    }

    if (v5 != 43)
    {
      goto LABEL_66;
    }
  }

  if (v13 == 10)
  {
    goto LABEL_55;
  }

  if (v13 == 11)
  {
    if (sub_2393C5C40(v12) != 22)
    {
      LODWORD(v5) = 43;
      v6 = 0xBE00000000;
      return v6 | v5;
    }

    v5 = sub_2393C6A2C(v12, &v11);
    if (!v5)
    {
      *(a2 + 445) = 0;
      while (1)
      {
        v5 = sub_2393C7114(v12, 16, 256);
        if (v5)
        {
          break;
        }

        if (sub_2393C5CB8(v12) != 20)
        {
          LODWORD(v5) = 43;
          v6 = 0xC500000000;
          return v6 | v5;
        }

        v10 = *(a2 + 445);
        if (v10 > 9)
        {
          LODWORD(v5) = 47;
          v6 = 0xC600000000;
          return v6 | v5;
        }

        *(a2 + 445) = v10 + 1;
        v5 = sub_2393C6430(v12, (a2 + 245 + 20 * v10), 0x14uLL);
        if (v5)
        {
          goto LABEL_65;
        }
      }

      if (v5 != 33)
      {
        goto LABEL_65;
      }

      v5 = sub_2393C6A98(v12, v11);
      if (!v5)
      {
        v5 = sub_2393C6B34(v12);
        v9 = v5;
        goto LABEL_60;
      }
    }

    goto LABEL_12;
  }

LABEL_60:
  if (v5 > 0x2B || ((1 << v5) & 0x80200000001) == 0)
  {
LABEL_66:
    v6 = v9 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

LABEL_62:
  v5 = sub_2393C6A98(v12, SHIDWORD(v11));
  if (v5)
  {
    goto LABEL_12;
  }

  v5 = sub_2393C6AE0(v12);
  v6 = v5 & 0xFFFFFFFF00000000;
  if (!v5)
  {
    v6 = 0;
    LODWORD(v5) = 0;
  }

  return v6 | v5;
}

unint64_t sub_2394A4280(uint64_t *a1, uint64_t a2)
{
  sub_2393C5AAC(v13);
  v4 = a1[1];
  if (v4 > 0x316)
  {
    LODWORD(v5) = 47;
    v6 = 0xE000000000;
    return v6 | v5;
  }

  v12 = 0;
  sub_2393C5ADC(v13, *a1, v4);
  v5 = sub_2393C7114(v13, 21, 256);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6A2C(v13, &v12 + 1);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 0);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5F70(v13, a2);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 1);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5F70(v13, (a2 + 2));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C7114(v13, 22, 2);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6A2C(v13, &v12);
  if (v5)
  {
    goto LABEL_19;
  }

  do
  {
    v5 = sub_2393C7114(v13, 4, 256);
  }

  while (!v5);
  if (v5 != 33)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6A98(v13, v12);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 3);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5FC8(v13, (a2 + 4));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C7114(v13, 12, 4);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C65A4(v13, (a2 + 22), 0x14uLL);
  if (v5)
  {
    goto LABEL_19;
  }

  if (strlen((a2 + 22)) != 19)
  {
    LODWORD(v5) = 35;
    v6 = 0xFE00000000;
    return v6 | v5;
  }

  v5 = sub_2393C6FD0(v13, 5);
  if (v5 || (v5 = sub_2393C5ED0(v13, (a2 + 8)), v5) || (v5 = sub_2393C6FD0(v13, 6), v5) || (v5 = sub_2393C5F70(v13, (a2 + 10)), v5) || (v5 = sub_2393C6FD0(v13, 7), v5) || (v5 = sub_2393C5F70(v13, (a2 + 12)), v5) || (v5 = sub_2393C6FD0(v13, 8), v5) || (v5 = sub_2393C5ED0(v13, (a2 + 14)), v5))
  {
LABEL_19:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  *(a2 + 20) = 0;
  v5 = sub_2393C6FD0(v13, 9);
  v8 = v5;
  if (v5)
  {
    goto LABEL_31;
  }

  v5 = sub_2393C5F70(v13, (a2 + 16));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6FD0(v13, 10);
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C5F70(v13, (a2 + 18));
  if (v5)
  {
    goto LABEL_19;
  }

  *(a2 + 20) = 1;
  v5 = sub_2393C6B34(v13);
  v8 = v5;
  if (v5)
  {
LABEL_31:
    if (v5 == 33)
    {
      if (v14 != 10)
      {
        goto LABEL_55;
      }

LABEL_48:
      LODWORD(v5) = 35;
      v6 = 0x11B00000000;
      return v6 | v5;
    }

    if (v5 != 43)
    {
      goto LABEL_61;
    }
  }

  if (v14 == 10)
  {
    goto LABEL_48;
  }

  if (v14 == 11)
  {
    if (sub_2393C5C40(v13) != 22)
    {
      LODWORD(v5) = 43;
      v6 = 0x11F00000000;
      return v6 | v5;
    }

    v5 = sub_2393C6A2C(v13, &v12);
    if (v5)
    {
      goto LABEL_19;
    }

    v9 = "src/credentials/CertificationDeclaration.cpp";
    while (1)
    {
      v10 = v9;
      v5 = sub_2393C7114(v13, 16, 256);
      if (v5)
      {
        break;
      }

      v11 = sub_2393C5CB8(v13);
      LODWORD(v5) = 43;
      v6 = 0x12500000000;
      v9 = v10;
      if (v11 != 20)
      {
        return v6 | v5;
      }
    }

    if (v5 != 33)
    {
      goto LABEL_19;
    }

    v5 = sub_2393C6A98(v13, v12);
    if (v5)
    {
      goto LABEL_19;
    }

    *(a2 + 21) = 1;
    v5 = sub_2393C6B34(v13);
    v8 = v5;
  }

  if (v5 > 0x2B || ((1 << v5) & 0x80200000001) == 0)
  {
LABEL_61:
    v6 = v8 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

LABEL_55:
  v5 = sub_2393C6A98(v13, SHIDWORD(v12));
  if (v5)
  {
    goto LABEL_19;
  }

  v5 = sub_2393C6AE0(v13);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    LODWORD(v5) = 0;
  }

  return v6 | v5;
}

BOOL sub_2394A4638(uint64_t a1, uint64_t a2, int a3)
{
  if (sub_2394A46A0(a1, a2, 2))
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v6 = sub_2394A4754(a1, &v8);
    result = v6 == 0;
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8 == a3;
    }
  }

  while (!v7);
  return result;
}

unint64_t sub_2394A46A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2393C5ADC(a1, *a2, *(a2 + 8));
  v5 = sub_2393C7114(a1, 21, 256);
  if (!v5)
  {
    v8 = 0;
    v5 = sub_2393C6A2C(a1, &v8 + 1);
    if (!v5)
    {
      while (1)
      {
        v5 = sub_2393C6B34(a1);
        if (v5)
        {
          break;
        }

        if (!sub_2393C7078(a1, 22, a3))
        {
          v5 = sub_2393C6A2C(a1, &v8);
          v6 = v5 & 0xFFFFFFFF00000000;
          if (!v5)
          {
            v6 = 0;
            LODWORD(v5) = 0;
          }

          return v5 | v6;
        }
      }
    }
  }

  v6 = v5 & 0xFFFFFFFF00000000;
  return v5 | v6;
}

unint64_t sub_2394A4754(uint64_t a1, _WORD *a2)
{
  v4 = sub_2393C6FD0(a1, 256);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2393C5F70(a1, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

uint64_t sub_2394A47B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_2394A46A0(a1, a2, 11))
  {
    __s2 = 0uLL;
    while (!sub_2394A4830(a1, &__s2))
    {
      v6 = *(a3 + 8);
      if (v6 == *(&__s2 + 1) && (!v6 || !memcmp(*a3, __s2, v6)))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_2394A4830(uint64_t a1, _OWORD *a2)
{
  v4 = sub_2393C6FD0(a1, 256);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2393C60CC(a1, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  return v5 | v4;
}

uint64_t sub_2394A4890(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4[1] >= 0xFFFFFFFF)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a4[1];
  }

  sub_2393F6DA8(v15, *a4, v8);
  result = sub_2393F77A4(v15, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F7134(v15, &unk_2395D6C38, 9u);
    if (!result)
    {
      result = sub_2393F77A4(v15, 128, 0);
      if (!result)
      {
        result = sub_2393F77A4(v15, 0, 0x10u);
        if (!result)
        {
          result = sub_2393F6DE8(v15, 3uLL);
          if (!result)
          {
            result = sub_2393F77A4(v15, 0, 0x11u);
            if (!result)
            {
              result = sub_2393F77A4(v15, 0, 0x10u);
              if (!result)
              {
                result = sub_2393F7134(v15, &unk_2395D6C41, 9u);
                if (!result)
                {
                  result = sub_2393F77B0(v15);
                  if (!result)
                  {
                    result = sub_2393F77B0(v15);
                    if (!result)
                    {
                      result = sub_2394A4AAC(a1, v15);
                      if (!result)
                      {
                        v17 = 0;
                        v10 = (*(*a3 + 24))(a3, *a1, a1[1], v16);
                        if (v10)
                        {
                          v11 = v10;
                          sub_2393F9144(v16, 64);
                          result = v11;
                          goto LABEL_20;
                        }

                        v12 = sub_2394A4B50(a2, v16, v15);
                        sub_2393F9144(v16, 64);
                        if (!v12)
                        {
                          result = sub_2393F77B0(v15);
                          if (result)
                          {
                            goto LABEL_20;
                          }

                          result = sub_2393F77B0(v15);
                          if (result)
                          {
                            goto LABEL_20;
                          }

                          v12 = sub_2393F77B0(v15);
                          if (!v12)
                          {
                            v14 = sub_2393F6DCC(v15);
                            sub_238DB8498(a4, v14);
                          }
                        }

                        result = v12;
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

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394A4AAC(uint64_t a1, uint64_t a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F7134(a2, &unk_2395D6C4A, 9u);
    if (!result)
    {
      result = sub_2393F77A4(a2, 128, 0);
      if (!result)
      {
        result = sub_2393F7164(a2, *a1, *(a1 + 8));
        if (!result)
        {
          result = sub_2393F77B0(a2);
          if (!result)
          {

            return sub_2393F77B0(a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394A4B50(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_2393F77A4(a3, 0, 0x11u);
  if (!result)
  {
    result = sub_2393F77A4(a3, 0, 0x10u);
    if (!result)
    {
      result = sub_2393F6DE8(a3, 3uLL);
      if (!result)
      {
        result = sub_2393F717C(a3, 128, 0, *a1, *(a1 + 8));
        if (!result)
        {
          result = sub_2393F77A4(a3, 0, 0x10u);
          if (!result)
          {
            result = sub_2393F7134(a3, &unk_2395D6C41, 9u);
            if (!result)
            {
              result = sub_2393F77B0(a3);
              if (!result)
              {
                result = sub_2393F77A4(a3, 0, 0x10u);
                if (!result)
                {
                  result = sub_2393F5C58(a3, 513);
                  if (!result)
                  {
                    result = sub_2393F77B0(a3);
                    if (!result)
                    {
                      result = sub_2393F7918(a3, 0, 4u, 0);
                      if (!result)
                      {
                        sub_2394A3B00(&v7, a2);
                        result = sub_23949FEE8(v7, a3);
                        if (!result)
                        {
                          result = sub_2393F77B0(a3);
                          if (!result)
                          {
                            result = sub_2393F77B0(a3);
                            if (!result)
                            {
                              return sub_2393F77B0(a3);
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

  return result;
}

unint64_t sub_2394A4C98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7[10] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_284BB9138;
  result = sub_2393FA970(a2, v7);
  if (!result)
  {
    result = sub_2394A4D34(a1, v7, a3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394A4D34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1[1] >= 0xFFFFFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a1[1];
  }

  sub_2393F5CB4(&v17, *a1, v5);
  v6 = sub_2393F5CEC(&v17);
  if (v6)
  {
    goto LABEL_5;
  }

  if (v17 || v18 != 16)
  {
    v6 = 0x27B00000000;
    goto LABEL_20;
  }

  v6 = sub_2393F5F1C(&v17);
  if (v6)
  {
    goto LABEL_5;
  }

  v6 = sub_2393F5CEC(&v17);
  if (v6)
  {
    goto LABEL_5;
  }

  v6 = 0x27D00000000;
  v7 = 773;
  if (v17 || v18 != 6)
  {
    goto LABEL_21;
  }

  sub_238DB6950(&v21, v19, v20);
  if (v22 == 9 && *v21 == 0x7010DF78648862ALL && *(v21 + 8) == 2)
  {
    v6 = sub_2393F5CEC(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = 0x28600000000;
    v7 = 773;
    if (v17 != 128 || v18)
    {
      goto LABEL_21;
    }

    v6 = sub_2393F5F1C(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = sub_2393F5CEC(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = 0x28800000000;
    if (v17)
    {
      goto LABEL_20;
    }

    v7 = 773;
    if (v18 != 16)
    {
      goto LABEL_21;
    }

    v6 = sub_2393F5F1C(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v16 = 0;
    v6 = sub_2393F5CEC(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = 0x28C00000000;
    v7 = 773;
    if (v17 || v18 != 2)
    {
      goto LABEL_21;
    }

    v6 = sub_2393F6188(&v17, &v16);
    if (v6)
    {
      goto LABEL_5;
    }

    if (v16 != 3)
    {
      v6 = 0x28F00000000;
      v7 = 774;
      goto LABEL_21;
    }

    v6 = sub_2393F5CEC(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = 0x29200000000;
    v7 = 773;
    if (v17 || v18 != 17)
    {
      goto LABEL_21;
    }

    v6 = sub_2393F5F1C(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = sub_2393F5CEC(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = 0x29400000000;
    v7 = 773;
    if (v17 || v18 != 16)
    {
      goto LABEL_21;
    }

    v6 = sub_2393F5F1C(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = sub_2393F5CEC(&v17);
    if (v6)
    {
      goto LABEL_5;
    }

    v6 = 0x29600000000;
    v7 = 773;
    if (v17 || v18 != 6)
    {
      goto LABEL_21;
    }

    sub_238DB6950(&v21, v19, v20);
    if (v22 != 9 || (*v21 == 0x204036501488660 ? (v12 = *(v21 + 8) == 1) : (v12 = 0), !v12))
    {
      v9 = 0x29900000000;
      goto LABEL_18;
    }

    v6 = sub_2393F5CEC(&v17);
    if (!v6)
    {
      v6 = 0x29B00000000;
      goto LABEL_20;
    }

    if (v6 == 768)
    {
      v6 = sub_2393F602C(&v17);
      if (!v6)
      {
        v6 = sub_2393F5CEC(&v17);
        if (!v6)
        {
          v6 = 0x29D00000000;
          goto LABEL_20;
        }

        if (v6 == 768)
        {
          v6 = sub_2393F602C(&v17);
          if (!v6)
          {
            v6 = sub_2394A5190(&v17, a3);
            if (!v6)
            {
              v23 = 0;
              v13 = sub_2394A5364(&v17, &v15, &v21);
              if (v13 || (v13 = sub_2393F8AC4(a2, *a3, *(a3 + 8), &v21), v13))
              {
                v14 = v13;
                v9 = v13 & 0xFFFFFFFF00000000;
                sub_2393F9144(&v21, 64);
                v7 = v14;
                goto LABEL_22;
              }

              sub_2393F9144(&v21, 64);
              v6 = sub_2393F5CEC(&v17);
              if (!v6)
              {
                v6 = 0x2AA00000000;
                goto LABEL_20;
              }

              if (v6 == 768)
              {
                v6 = sub_2393F602C(&v17);
                if (!v6)
                {
                  v6 = sub_2393F5CEC(&v17);
                  if (!v6)
                  {
                    v6 = 0x2AC00000000;
                    goto LABEL_20;
                  }

                  if (v6 == 768)
                  {
                    v6 = sub_2393F602C(&v17);
                    if (!v6)
                    {
                      v6 = sub_2393F5CEC(&v17);
                      if (v6)
                      {
                        if (v6 == 768)
                        {
                          v6 = sub_2393F602C(&v17);
                        }

                        goto LABEL_5;
                      }

                      v6 = 0x2AE00000000;
LABEL_20:
                      v7 = 773;
                      goto LABEL_21;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_5:
    v7 = v6;
LABEL_21:
    v9 = v6 & 0xFFFFFFFF00000000;
    goto LABEL_22;
  }

  v9 = 0x28300000000;
LABEL_18:
  v7 = 774;
LABEL_22:
  v10 = *MEMORY[0x277D85DE8];
  return v9 | v7;
}

unint64_t sub_2394A5190(unsigned __int8 *a1, _OWORD *a2)
{
  v4 = sub_2393F5CEC(a1);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a1 || a1[1] != 16)
  {
    v4 = 0x1A100000000;
    goto LABEL_16;
  }

  v4 = sub_2393F5F1C(a1);
  if (v4 || (v4 = sub_2393F5CEC(a1), v4))
  {
LABEL_2:
    LODWORD(v5) = v4;
LABEL_17:
    v7 = v4 & 0xFFFFFFFF00000000;
    v5 = v5;
    return v7 | v5;
  }

  v4 = 0x1A400000000;
  LODWORD(v5) = 773;
  if (*a1 || a1[1] != 6)
  {
    goto LABEL_17;
  }

  sub_238DB6950(&v9, *(a1 + 1), *(a1 + 4));
  if (*(&v9 + 1) == 9 && *v9 == 0x7010DF78648862ALL && *(v9 + 8) == 1)
  {
    v4 = sub_2393F5CEC(a1);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = 0x1A900000000;
    LODWORD(v5) = 773;
    if (*a1 != 128 || a1[1])
    {
      goto LABEL_17;
    }

    v4 = sub_2393F5F1C(a1);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = sub_2393F5CEC(a1);
    if (v4)
    {
      goto LABEL_2;
    }

    v4 = 0x1AC00000000;
    LODWORD(v5) = 773;
    if (*a1 || a1[1] != 4)
    {
      goto LABEL_17;
    }

    sub_238DB6950(&v9, *(a1 + 1), *(a1 + 4));
    *a2 = v9;
    v4 = sub_2393F5CEC(a1);
    if (!v4)
    {
      v4 = 0x1AF00000000;
      goto LABEL_16;
    }

    if (v4 == 768)
    {
      v4 = sub_2393F602C(a1);
      if (!v4)
      {
        v4 = sub_2393F5CEC(a1);
        if (v4)
        {
          if (v4 == 768)
          {
            v4 = sub_2393F602C(a1);
          }

          goto LABEL_2;
        }

        v4 = 0x1B100000000;
LABEL_16:
        LODWORD(v5) = 773;
        goto LABEL_17;
      }
    }

    goto LABEL_2;
  }

  v7 = 0x1A600000000;
  v5 = 774;
  return v7 | v5;
}

unint64_t sub_2394A5364(unsigned __int8 *a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_2393F5CEC(a1);
  if (v6)
  {
    goto LABEL_2;
  }

  if (*a1 || a1[1] != 17)
  {
    v6 = 0x1F700000000;
    goto LABEL_32;
  }

  v6 = sub_2393F5F1C(a1);
  if (v6 || (v6 = sub_2393F5CEC(a1), v6))
  {
LABEL_2:
    v7 = v6;
    return v6 & 0xFFFFFFFF00000000 | v7;
  }

  v6 = 0x1F900000000;
  v7 = 773;
  if (!*a1 && a1[1] == 16)
  {
    v6 = sub_2393F5F1C(a1);
    if (v6)
    {
      goto LABEL_2;
    }

    *&v11 = 0;
    v6 = sub_2393F5CEC(a1);
    if (v6)
    {
      goto LABEL_2;
    }

    v6 = 0x1FE00000000;
    v7 = 773;
    if (!*a1 && a1[1] == 2)
    {
      v6 = sub_2393F6188(a1, &v11);
      if (v6)
      {
        goto LABEL_2;
      }

      if (v11 != 3)
      {
        v6 = 0x20100000000;
        goto LABEL_35;
      }

      v6 = sub_2393F5CEC(a1);
      if (v6)
      {
        goto LABEL_2;
      }

      v6 = 0x20500000000;
      v7 = 773;
      if (*a1 == 128 && !a1[1])
      {
        sub_238DB6950(&v11, *(a1 + 1), *(a1 + 4));
        *a2 = v11;
        v6 = sub_2393F5CEC(a1);
        if (v6)
        {
          goto LABEL_2;
        }

        v6 = 0x20900000000;
        v7 = 773;
        if (!*a1 && a1[1] == 16)
        {
          v6 = sub_2393F5F1C(a1);
          if (v6)
          {
            goto LABEL_2;
          }

          v6 = sub_2393F5CEC(a1);
          if (v6)
          {
            goto LABEL_2;
          }

          v6 = 0x20B00000000;
          v7 = 773;
          if (!*a1 && a1[1] == 6)
          {
            sub_238DB6950(&v11, *(a1 + 1), *(a1 + 4));
            if (*(&v11 + 1) != 9 || (*v11 == 0x204036501488660 ? (v8 = *(v11 + 8) == 1) : (v8 = 0), !v8))
            {
              v6 = 0x20D00000000;
LABEL_35:
              v7 = 774;
              return v6 & 0xFFFFFFFF00000000 | v7;
            }

            v6 = sub_2393F5CEC(a1);
            if (!v6)
            {
              v6 = 0x20F00000000;
              goto LABEL_32;
            }

            if (v6 != 768)
            {
              goto LABEL_2;
            }

            v6 = sub_2393F602C(a1);
            if (v6)
            {
              goto LABEL_2;
            }

            v6 = sub_2393F5CEC(a1);
            if (v6)
            {
              goto LABEL_2;
            }

            v6 = 0x21200000000;
            v7 = 773;
            if (!*a1 && a1[1] == 16)
            {
              v6 = sub_2393F5F1C(a1);
              if (v6)
              {
                goto LABEL_2;
              }

              v6 = sub_2393F5CEC(a1);
              if (v6)
              {
                goto LABEL_2;
              }

              v6 = 0x21400000000;
              v7 = 773;
              if (!*a1 && a1[1] == 6)
              {
                sub_238DB6950(&v11, *(a1 + 1), *(a1 + 4));
                if (*(&v11 + 1) != 8 || *v11 != 0x203043DCE48862ALL)
                {
                  v6 = 0x21700000000;
                  goto LABEL_35;
                }

                v6 = sub_2393F5CEC(a1);
                if (!v6)
                {
                  v6 = 0x21900000000;
                  goto LABEL_32;
                }

                if (v6 != 768)
                {
                  goto LABEL_2;
                }

                v6 = sub_2393F602C(a1);
                if (v6)
                {
                  goto LABEL_2;
                }

                v6 = sub_2393F5CEC(a1);
                if (v6)
                {
                  goto LABEL_2;
                }

                v6 = 0x21C00000000;
                v7 = 773;
                if (!*a1 && a1[1] == 4)
                {
                  sub_238DB9BD8(&v11, a3, 64);
                  sub_238DB6950(v10, *(a1 + 1), *(a1 + 4));
                  v6 = sub_2393F2F1C(32, v10, &v11);
                  if (!v6)
                  {
                    if (*(&v11 + 1) >= 0x41uLL)
                    {
                      v6 = 0x14700000000;
                      v7 = 47;
                      return v6 & 0xFFFFFFFF00000000 | v7;
                    }

                    *(a3 + 64) = *(&v11 + 1);
                    v6 = sub_2393F5CEC(a1);
                    if (!v6)
                    {
                      v6 = 0x22300000000;
                      goto LABEL_32;
                    }

                    if (v6 == 768)
                    {
                      v6 = sub_2393F602C(a1);
                      if (!v6)
                      {
                        v6 = sub_2393F5CEC(a1);
                        if (v6)
                        {
                          if (v6 == 768)
                          {
                            v6 = sub_2393F602C(a1);
                          }

                          goto LABEL_2;
                        }

                        v6 = 0x22500000000;
LABEL_32:
                        v7 = 773;
                        return v6 & 0xFFFFFFFF00000000 | v7;
                      }
                    }
                  }

                  goto LABEL_2;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

unint64_t sub_2394A5758(uint64_t *a1, _OWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1[1] >= 0xFFFFFFFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a1[1];
  }

  sub_2393F5CB4(&v13, *a1, v3);
  v4 = sub_2393F5CEC(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  if (v13 || v14 != 16)
  {
    v4 = 0x2BD00000000;
LABEL_24:
    LODWORD(v5) = 773;
    goto LABEL_25;
  }

  v4 = sub_2393F5F1C(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = 0x2C400000000;
  LODWORD(v5) = 773;
  if (v13 != 128 || v14)
  {
    goto LABEL_25;
  }

  v4 = sub_2393F5F1C(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = 0x2C600000000;
  LODWORD(v5) = 773;
  if (v13 || v14 != 16)
  {
    goto LABEL_25;
  }

  v4 = sub_2393F5F1C(&v13);
  if (v4)
  {
    goto LABEL_5;
  }

  v6 = sub_2393F5CEC(&v13);
  if (v6)
  {
    goto LABEL_21;
  }

  v6 = sub_2393F5CEC(&v13);
  if (v6)
  {
    goto LABEL_21;
  }

  v6 = sub_2393F5CEC(&v13);
  if (v6)
  {
    goto LABEL_21;
  }

  v16 = 0;
  v9 = sub_2394A5364(&v13, a2, v15);
  sub_2393F9144(v15, 64);
  if (v9)
  {
    result = v9;
    goto LABEL_26;
  }

  v10 = sub_2393F5CEC(&v13);
  if (!v10)
  {
    v4 = 0x2D500000000;
    goto LABEL_24;
  }

  v5 = v10;
  if (v10 != 768)
  {
    goto LABEL_22;
  }

  v6 = sub_2393F602C(&v13);
  if (v6)
  {
LABEL_21:
    v5 = v6;
LABEL_22:
    v4 = v5;
    goto LABEL_25;
  }

  v11 = sub_2393F5CEC(&v13);
  if (!v11)
  {
    v4 = 0x2D700000000;
    goto LABEL_24;
  }

  v5 = v11;
  if (v11 != 768)
  {
    goto LABEL_22;
  }

  v6 = sub_2393F602C(&v13);
  if (v6)
  {
    goto LABEL_21;
  }

  v12 = sub_2393F5CEC(&v13);
  if (!v12)
  {
    v4 = 0x2D900000000;
    goto LABEL_24;
  }

  v5 = v12;
  if (v12 != 768)
  {
    goto LABEL_22;
  }

  v4 = sub_2393F602C(&v13);
LABEL_5:
  LODWORD(v5) = v4;
LABEL_25:
  result = v4 & 0xFFFFFFFF00000000 | v5;
LABEL_26:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394A5984(uint64_t *a1, _OWORD *a2)
{
  if (a1[1] >= 0xFFFFFFFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a1[1];
  }

  sub_2393F5CB4(&v7, *a1, v3);
  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  if (v7 || v8 != 16)
  {
    v4 = 0x2E800000000;
LABEL_32:
    v5 = 773;
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v4 = sub_2393F5F1C(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = 0x2EF00000000;
  v5 = 773;
  if (v7 != 128 || v8)
  {
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v4 = sub_2393F5F1C(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = 0x2F100000000;
  v5 = 773;
  if (v7 || v8 != 16)
  {
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v4 = sub_2393F5F1C(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  result = sub_2394A5190(&v7, a2);
  if (result)
  {
    return result;
  }

  v4 = sub_2393F5CEC(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (!v4)
  {
    v4 = 0x2FF00000000;
    goto LABEL_32;
  }

  if (v4 != 768)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F602C(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (!v4)
  {
    v4 = 0x30100000000;
    goto LABEL_32;
  }

  if (v4 != 768)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F602C(&v7);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393F5CEC(&v7);
  if (!v4)
  {
    v4 = 0x30300000000;
    goto LABEL_32;
  }

  if (v4 == 768)
  {
    v4 = sub_2393F602C(&v7);
  }

LABEL_5:
  v5 = v4;
  return v4 & 0xFFFFFFFF00000000 | v5;
}

unint64_t sub_2394A5B3C(uint64_t a1, void *a2)
{
  sub_2393C5AAC(v9);
  v8 = 21;
  sub_2393C5ADC(v9, *a1, *(a1 + 8));
  v4 = sub_2393C7114(v9, 21, 256);
  if (v4)
  {
    goto LABEL_10;
  }

  v4 = sub_2393C6A2C(v9, &v8);
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = 0;
  while (1)
  {
    v4 = sub_2393C6B34(v9);
    if (v4)
    {
      break;
    }

    if (v10)
    {
      ++v5;
    }
  }

  if (v4 != 33)
  {
LABEL_10:
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = 0;
    LODWORD(v4) = 0;
    *a2 = v5;
  }

  return v4 | v6;
}

unint64_t sub_2394A5BF0(uint64_t a1, _OWORD *a2, _OWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  sub_2393C5AAC(v25);
  v24 = 21;
  *a5 = 0;
  *(a5 + 8) = 0;
  sub_2393C5ADC(v25, *a1, *(a1 + 8));
  v12 = sub_2393C7114(v25, 21, 256);
  if (v12 || (v12 = sub_2393C6A2C(v25, &v24), v12))
  {
LABEL_3:
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v20 = a6;
    v15 = 0;
    v16 = 0;
    v22 = 0;
    LODWORD(v12) = 43;
LABEL_6:
    v21 = v16;
LABEL_7:
    v17 = v15;
    while (1)
    {
      v18 = sub_2393C6B34(v25);
      if (v18)
      {
        break;
      }

      v15 = v26;
      if (v26 > 0xFF)
      {
        goto LABEL_28;
      }

      if ((v16 & 1) == 0)
      {
        if (v26 == 1)
        {
LABEL_21:
          v18 = sub_2393C76AC(v25, a2);
          LOBYTE(v16) = 1;
          HIDWORD(v22) = 1;
          if (!v18)
          {
            goto LABEL_7;
          }

          goto LABEL_33;
        }

        v13 = 0x6C00000000;
        return v12 | v13;
      }

      if (v17 >= v26)
      {
        v13 = 0x7200000000;
        return v12 | v13;
      }

      v16 = 1;
      if (v26 <= 3u)
      {
        if (v26 == 1)
        {
          goto LABEL_21;
        }

        if (v26 == 2)
        {
          v18 = sub_2393C76AC(v25, a3);
          LODWORD(v22) = 1;
          if (!v18)
          {
            goto LABEL_7;
          }

          goto LABEL_33;
        }

        v17 = v26;
        if (v26 == 3)
        {
          v18 = sub_2393C5FC8(v25, a4);
          if (v18)
          {
            goto LABEL_33;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v17 = v26;
        if (v26 == 4)
        {
          v18 = sub_2393C76AC(v25, a5);
          v17 = v15;
          if (v18)
          {
            goto LABEL_33;
          }
        }
      }
    }

    if (v18 != 33)
    {
LABEL_33:
      v13 = v18 & 0xFFFFFFFF00000000;
      LODWORD(v12) = v18;
      return v12 | v13;
    }

LABEL_28:
    if (HIDWORD(v22) & v22 & v21)
    {
      v23 = 0;
      v12 = sub_2394A5B3C(a1, &v23);
      if (v12)
      {
        goto LABEL_3;
      }

      v19 = sub_2394A5E30(v20, a1, v23);
      v13 = v19 & 0xFFFFFFFF00000000;
      if (v19)
      {
        LODWORD(v12) = v19;
      }

      else
      {
        v13 = 0;
        LODWORD(v12) = 0;
      }
    }

    else
    {
      v13 = 0x9100000000;
      LODWORD(v12) = 61;
    }
  }

  return v12 | v13;
}

unint64_t sub_2394A5E30(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *a1 = a3;
  *(a1 + 8) = *a2;
  sub_2393C5ADC(a1 + 32, *(a1 + 8), *(a1 + 16));
  v4 = sub_2393C7114(a1 + 32, *(a1 + 104), 256);
  if (v4 || (v4 = sub_2393C6A2C(a1 + 32, (a1 + 104)), v4))
  {
LABEL_3:
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    while (1)
    {
      v4 = sub_2393C6B34(a1 + 32);
      if (v4)
      {
        break;
      }

      if (*(a1 + 48) >= 0x100uLL)
      {
        goto LABEL_9;
      }
    }

    if (v4 != 33)
    {
      goto LABEL_3;
    }

    *(a1 + 26) = 1;
LABEL_9:
    v5 = 0;
    LODWORD(v4) = 0;
    *(a1 + 24) = 257;
  }

  return v4 | v5;
}

unint64_t sub_2394A5EE4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  sub_2393C7B90(v22);
  if (!*(a1 + 8) || (v12 = *(a2 + 8)) == 0)
  {
    v14 = 0xA100000000;
LABEL_11:
    LODWORD(v13) = 47;
    return v14 | v13;
  }

  if (v12 != 32)
  {
    v14 = 0xA200000000;
    goto LABEL_11;
  }

  sub_2393C7BB8(v22, *a6, *(a6 + 8));
  v21 = -1;
  v13 = sub_2393C8CE0(v22, 0x100uLL, 21, &v21);
  if (v13)
  {
    goto LABEL_8;
  }

  v13 = sub_2393C8364(v22, 1uLL, *a1, *(a1 + 8));
  if (v13)
  {
    goto LABEL_8;
  }

  v13 = sub_2393C8364(v22, 2uLL, *a2, *(a2 + 8));
  if (v13)
  {
    goto LABEL_8;
  }

  v13 = sub_2393C81D4(v22, 3uLL, a3);
  if (v13)
  {
    goto LABEL_8;
  }

  v16 = *(a4 + 8);
  if (v16)
  {
    v13 = sub_2393C8364(v22, 4uLL, *a4, v16);
    if (v13)
    {
      goto LABEL_8;
    }
  }

  sub_2394A646C(a5);
  a5[3] = 0;
  while (1)
  {
    v17 = a5[3];
    if (v17 >= a5[2])
    {
      break;
    }

    v18 = *a5;
    a5[3] = v17 + 1;
    if (!v18)
    {
      break;
    }

    v19 = (v18 + 24 * v17);
    v13 = sub_2393C8364(v22, ((*v19 << 48) | (v19[1] << 32) | *(v19 + 1)) ^ 0xFFFFFFFF00000000, *(v19 + 1), *(v19 + 2));
    if (v13)
    {
      goto LABEL_8;
    }
  }

  v13 = sub_2393C8DE0(v22, v21);
  if (v13 || (v13 = sub_2393C7CB8(v22), v13))
  {
LABEL_8:
    v14 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    *a6 = sub_2393E8774(a6, 0, v23);
    *(a6 + 8) = v20;
    v14 = 0xBA00000000;
    if (v20 <= 0x384)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      LODWORD(v13) = 4;
    }

    if (v20 <= 0x384)
    {
      v14 = 0;
    }
  }

  return v14 | v13;
}

unint64_t sub_2394A60BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2393C7B90(v21);
  if (!*(a1 + 8) || (v12 = *(a2 + 8)) == 0)
  {
    v14 = 0xC600000000;
LABEL_10:
    LODWORD(v13) = 47;
    return v14 | v13;
  }

  if (v12 != 32)
  {
    v14 = 0xC700000000;
    goto LABEL_10;
  }

  sub_2393C7BB8(v21, *a6, *(a6 + 8));
  v20 = -1;
  v13 = sub_2393C8CE0(v21, 0x100uLL, 21, &v20);
  if (v13)
  {
    goto LABEL_7;
  }

  v13 = sub_2393C8364(v21, 1uLL, *a1, *(a1 + 8));
  if (v13)
  {
    goto LABEL_7;
  }

  v13 = sub_2393C8364(v21, 2uLL, *a2, *(a2 + 8));
  if (v13)
  {
    goto LABEL_7;
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    v13 = sub_2393C8364(v21, 3uLL, *a3, v16);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  if ((v17 = *(a4 + 8)) != 0 && (v13 = sub_2393C8364(v21, 4uLL, *a4, v17), v13) || (v18 = *(a5 + 8)) != 0 && (v13 = sub_2393C8364(v21, 5uLL, *a5, v18), v13) || (v13 = sub_2393C8DE0(v21, v20), v13) || (v13 = sub_2393C7CB8(v21), v13))
  {
LABEL_7:
    v14 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    *a6 = sub_2393E8774(a6, 0, v22);
    *(a6 + 8) = v19;
    if (v19 > 0x384)
    {
      v14 = 0xDF00000000;
      LODWORD(v13) = 4;
    }

    else
    {
      LODWORD(v13) = 0;
      v14 = 0;
    }
  }

  return v14 | v13;
}

unint64_t sub_2394A6260(uint64_t a1, _OWORD *a2, _OWORD *a3, void *a4, void *a5, void *a6)
{
  sub_2393C5AAC(v23);
  v22 = 21;
  *a6 = 0;
  a6[1] = 0;
  *a5 = 0;
  a5[1] = 0;
  *a4 = 0;
  a4[1] = 0;
  sub_2393C5ADC(v23, *a1, *(a1 + 8));
  v12 = sub_2393C7114(v23, 21, 256);
  if (v12 || (v12 = sub_2393C6A2C(v23, &v22), v12))
  {
    v13 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v21 = 0;
    LODWORD(v12) = 35;
LABEL_6:
    v20 = v16;
LABEL_7:
    v17 = v15;
    while (1)
    {
      v18 = sub_2393C6B34(v23);
      if (v18)
      {
        break;
      }

      v15 = v24;
      if (v24 > 0xFF)
      {
        goto LABEL_30;
      }

      if ((v16 & 1) == 0)
      {
        if (v24 != 1)
        {
          v13 = 0x10600000000;
          goto LABEL_38;
        }

LABEL_24:
        v18 = sub_2393C76AC(v23, a2);
        v16 = 1;
        v21 = 1;
        if (!v18)
        {
          goto LABEL_7;
        }

LABEL_36:
        v13 = v18 & 0xFFFFFFFF00000000;
        LODWORD(v12) = v18;
        return v12 | v13;
      }

      if (v17 >= v24)
      {
        v13 = 0x10C00000000;
LABEL_38:
        LODWORD(v12) = 43;
        return v12 | v13;
      }

      v13 = 0x12500000000;
      if (v24 <= 3u)
      {
        if (v24 != 3)
        {
          if (v24 == 1)
          {
            goto LABEL_24;
          }

          if (v24 != 2)
          {
            return v12 | v13;
          }

          v18 = sub_2393C76AC(v23, a3);
          v16 = 1;
          if (v18)
          {
            goto LABEL_36;
          }

          goto LABEL_6;
        }

        v19 = a4;
      }

      else if (v24 == 4)
      {
        v19 = a5;
      }

      else
      {
        if (v24 != 5)
        {
          return v12 | v13;
        }

        v19 = a6;
      }

      v18 = sub_2393C60CC(v23, v19);
      v16 = 1;
      v17 = v15;
      if (v18)
      {
        goto LABEL_36;
      }
    }

    if (v18 != 33)
    {
      goto LABEL_36;
    }

LABEL_30:
    if (v21 & v20)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x12C00000000;
    }

    if (v21 & v20)
    {
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = 61;
    }
  }

  return v12 | v13;
}

uint64_t *sub_2394A646C(uint64_t *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 2;
    v6 = 4;
    do
    {
      v7 = *result;
      v8 = (*result + v3);
      v9 = -1;
      v10 = v4;
      do
      {
        v12 = *v8;
        v8 += 12;
        v11 = v12;
        if (v9 >= v12)
        {
          v9 = v11;
        }

        ++v10;
      }

      while (v10 < v1);
      if (v4 >= v1)
      {
        goto LABEL_23;
      }

      v13 = v1 + v2;
      v14 = (v7 + v5);
      v15 = -1;
      do
      {
        if (v9 == *(v14 - 1) && v15 >= *v14)
        {
          v15 = *v14;
        }

        v14 += 12;
        --v13;
      }

      while (v13);
      if (v4 >= v1)
      {
LABEL_23:
        v17 = -1;
      }

      else
      {
        v16 = (v7 + v6);
        v17 = -1;
        v18 = -1;
        v19 = v4;
        do
        {
          if (v9 == *(v16 - 2) && v15 == *(v16 - 1))
          {
            v20 = *v16;
            v21 = v18 > v20;
            if (v18 >= v20)
            {
              v18 = *v16;
            }

            if (v21)
            {
              v17 = v19;
            }
          }

          ++v19;
          v16 += 6;
        }

        while (v1 != v19);
      }

      if (v17 != v4)
      {
        v22 = (v7 + 24 * v4);
        v23 = *(v22 + 2);
        v24 = *v22;
        v25 = 3 * v17;
        v26 = (v7 + 24 * v17);
        v27 = *(v26 + 2);
        *v22 = *v26;
        *(v22 + 2) = v27;
        v28 = *result + 8 * v25;
        *v28 = v24;
        *(v28 + 16) = v23;
        v1 = result[2];
      }

      ++v4;
      v3 += 24;
      --v2;
      v5 += 24;
      v6 += 24;
    }

    while (v4 < v1);
  }

  return result;
}

unint64_t sub_2394A65AC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v2 = *(a2 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if ((*(a2 + 8) - 1) > 0xFFFFFFEFFFFFFFFELL)
    {
      v3 = 0x8700000000;
      LODWORD(v4) = 47;
      return v3 & 0xFFFFFFFF00000000 | v4;
    }

    sub_238DCCC50(a1);
    *a1 = *(a2 + 8);
    *(a1 + 8) = *(a2 + 32);
    *(a1 + 137) = *(a2 + 16);
    *(a1 + 16) = *a2;
    *(a1 + 32) = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 96) = *(a2 + 112);
    *(a1 + 64) = v8;
    *(a1 + 80) = v9;
    *(a1 + 48) = v7;
    *(a1 + 138) = *(a2 + 120);
    *(a1 + 141) = *(a2 + 123);
    v10 = *(a2 + 24);
    if (v10)
    {
      if (*(a2 + 122) == 1)
      {
        v4 = sub_2394A66C0(a1, v10);
        if (v4)
        {
LABEL_11:
          v3 = v4;
          return v3 & 0xFFFFFFFF00000000 | v4;
        }
      }

      else
      {
        v4 = sub_2394A6764(a1, v10);
        if (v4)
        {
          goto LABEL_11;
        }
      }
    }

    LODWORD(v4) = 0;
    v3 = 0;
    return v3 & 0xFFFFFFFF00000000 | v4;
  }

  v3 = 0x8600000000;
  LODWORD(v4) = 47;
  return v3 & 0xFFFFFFFF00000000 | v4;
}

uint64_t sub_2394A66C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(a1 + 140) & 1) == 0)
    {
      v4 = *(a1 + 144);
      if (v4)
      {
        (**v4)(*(a1 + 144));
        j__free(v4);
      }
    }

    v5 = 0;
    v6 = 0;
    *(a1 + 140) = 1;
    *(a1 + 144) = a2;
  }

  else
  {
    v5 = 0x13000000000;
    v6 = 47;
  }

  return v6 | v5;
}

uint64_t sub_2394A6764(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v12 = 0;
    v3 = (*(*a2 + 56))(a2, v11);
    v4 = v3;
    if (v3)
    {
      v5 = v3 & 0xFFFFFFFF00000000;
LABEL_12:
      sub_2393F9144(v11, 97);
      result = v5 | v4;
      goto LABEL_13;
    }

    if (*(a1 + 140) == 1)
    {
      *(a1 + 144) = 0;
      *(a1 + 140) = 0;
    }

    else
    {
      v7 = *(a1 + 144);
      if (v7)
      {
LABEL_10:
        v9 = (*(*v7 + 64))(v7, v11);
        v4 = v9;
        v5 = v9 & 0xFFFFFFFF00000000;
        goto LABEL_12;
      }
    }

    v8 = sub_2393D52C4(0x260uLL);
    if (!v8)
    {
      *(a1 + 144) = 0;
      v5 = 0x12A00000000;
      v4 = 11;
      goto LABEL_12;
    }

    v7 = v8;
    bzero(v8 + 2, 0x250uLL);
    *v7 = &unk_284BB8F28;
    v7[1] = &unk_284BB9138;
    *(a1 + 144) = v7;
    goto LABEL_10;
  }

  result = 0x11A0000002FLL;
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394A6910(uint64_t a1, uint64_t a2)
{
  sub_238DCCC50(a1);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 141) = *(a2 + 141);
  v7 = sub_239283EA0(a2);
  v9 = (a1 + 104);
  if (v8)
  {
    if (v8 >= 0x20)
    {
      v10 = 32;
    }

    else
    {
      v10 = v8;
    }

    memcpy((a1 + 104), v7, v10);
    v9 += v10;
  }

  *v9 = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 140) = *(a2 + 140);
  *(a2 + 144) = 0;
  *(a2 + 140) = 0;

  sub_238DCCC50(a2);
}

uint64_t sub_2394A69F4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 104);
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *a2;
    if (v3 >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v3;
    }

    memcpy((a1 + 104), v4, v5);
    v2 += v5;
  }

  *v2 = 0;
  return 0;
}

unint64_t sub_2394A6A48(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v11);
  sub_2393C7BB8(v11, v14, 0x2CuLL);
  v10 = 0;
  v4 = sub_2393C8CE0(v11, 0x100uLL, 21, &v10);
  if (!v4)
  {
    v4 = sub_2393C818C(v11, 0, *(a1 + 138));
    if (!v4)
    {
      v5 = strlen((a1 + 104));
      sub_238DB9BD8(v13, a1 + 104, v5);
      v4 = sub_2393C85FC(v11, 1uLL, v13[0], v13[1]);
      if (!v4)
      {
        v4 = sub_2393C8DE0(v11, v10);
        if (!v4)
        {
          v9 = v12;
          if (HIWORD(v12))
          {
            v6 = 0xB900000000;
            LODWORD(v4) = 25;
            goto LABEL_6;
          }

          sub_239296DA0("f/%x/m", v13, *(a1 + 137));
          v4 = (*(*a2 + 24))(a2, v13, v14, v9);
          if (!v4)
          {
            result = 0;
            goto LABEL_7;
          }
        }
      }
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
LABEL_6:
  result = v6 | v4;
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394A6BB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v22[6] = *MEMORY[0x277D85DE8];
  *(a1 + 137) = a3;
  v8 = sub_2394A03F4(a5, a1, (a1 + 8));
  if (v8)
  {
    goto LABEL_11;
  }

  v22[0] = &unk_2395D6B90;
  v8 = sub_2394A0354(a4, v22);
  if (v8)
  {
    goto LABEL_11;
  }

  v9 = v22[0];
  *(a1 + 32) = *v22[0];
  v11 = *(v9 + 32);
  v10 = *(v9 + 48);
  v12 = *(v9 + 16);
  *(a1 + 96) = *(v9 + 64);
  *(a1 + 64) = v11;
  *(a1 + 80) = v10;
  *(a1 + 48) = v12;
  v21[0] = &__src;
  v21[1] = 8;
  v8 = sub_2393F3224(a1 + 24, *(a1 + 8), v21);
  if (v8)
  {
    goto LABEL_11;
  }

  *(a1 + 16) = bswap64(__src);
  v19 = 44;
  sub_239296DA0("f/%x/m", v21, *(a1 + 137));
  v8 = (*(*a2 + 16))(a2, v21, v22, &v19);
  if (v8)
  {
    goto LABEL_11;
  }

  sub_2393C5AAC(v21);
  sub_2393C5ADC(v21, v22, v19);
  v8 = sub_2393C7114(v21, 21, 256);
  if (v8)
  {
    goto LABEL_11;
  }

  v18 = 0;
  v8 = sub_2393C6A2C(v21, &v18);
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = sub_2393C6FD0(v21, 0);
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = sub_238F36E54(v21, (a1 + 138));
  if (v8)
  {
    goto LABEL_11;
  }

  v8 = sub_2393C6FD0(v21, 1);
  if (v8)
  {
    goto LABEL_11;
  }

  __src = 0uLL;
  v8 = sub_2393C61E0(v21, &__src);
  if (v8)
  {
    goto LABEL_11;
  }

  v16 = *(&__src + 1);
  if (*(&__src + 1) > 0x20uLL)
  {
    v13 = 0xED00000000;
    LODWORD(v8) = 25;
    goto LABEL_12;
  }

  v17 = (a1 + 104);
  if (*(&__src + 1))
  {
    memcpy(v17, __src, *(&__src + 1));
    v17 += v16;
  }

  *v17 = 0;
  v8 = sub_2393C6A98(v21, v18);
  if (v8 || (v8 = sub_2393C6AE0(v21), v8))
  {
LABEL_11:
    v13 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v8) = 0;
    v13 = 0;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v13 | v8;
}

unint64_t sub_2394A6DF0(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) > 0xFD)
  {
    v5 = 113;
    LODWORD(v6) = 258;
  }

  else
  {
    v2 = *(a1 + 2584);
    if (v2)
    {
      v3 = a2;
      sub_239296DA0("f/%x/m", buf, a2);
      v4 = (*(*v2 + 32))(v2, buf);
      v5 = v4;
      v6 = HIDWORD(v4);
      if (v4)
      {
        if (v4 == 160)
        {
          v7 = sub_2393D9044(0x11u);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v13 = v3;
            _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Warning: metadata not found during delete of fabric 0x%x", buf, 8u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0x11u, 1);
          }

          v5 = 160;
        }

        else
        {
          v8 = sub_2393D9044(0x11u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = sub_2393C9138();
            *buf = 67109378;
            v13 = v3;
            v14 = 2080;
            v15 = v9;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Error deleting metadata for fabric fabric 0x%x: %s", buf, 0x12u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(0x11u, 1);
          }
        }
      }
    }

    else
    {
      v5 = 3;
      LODWORD(v6) = 259;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 | (v6 << 32);
}

unint64_t sub_2394A700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v36 = *MEMORY[0x277D85DE8];
  v18 = sub_23948B4CC();
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v31 = 2080;
    v32 = "ValidateIncomingNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  *buf = -1;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_23949ED54(buf);
  v33 |= 1u;
  v34 |= 1u;
  v35 = a5;
  v19 = sub_2393D9044(0x11u);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 0;
    _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Validating NOC chain", v28, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0x11u, 2);
  }

  v20 = sub_2394A7394(*a1, *(a1 + 8), *a2, *(a2 + 8), *a3, *(a3 + 8), buf, a6, a7, a8, a9, a10);
  if (v20)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_2393C9138();
      *v28 = 136315138;
      v29 = v21;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed NOC chain validation, VerifyCredentials returned: %s", v28, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x11u, 1);
    }

    v22 = v20 | 0x5C;
    if (v20 != 92)
    {
      v22 = 0x16500000050;
    }

    v23 = v22 & 0xFFFFFFFF00000000;
    v24 = v22 & 0x5C;
  }

  else if (!a4 || *a7 == a4)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "NOC chain validation successful", v28, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x11u, 2);
    }

    v24 = 0;
    v23 = 0;
  }

  else
  {
    v23 = 0x16D00000000;
    v24 = 80;
  }

  v25 = sub_23948B4CC();
  if (os_signpost_enabled(v25))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v31 = 2080;
    v32 = "ValidateIncomingNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23 | v24;
}

unint64_t sub_2394A7394(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, unint64_t *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v48[1] = *MEMORY[0x277D85DE8];
  sub_23949D96C(&v40);
  v20 = sub_23949D9EC(&v40, 3u);
  v21 = v20;
  if (!v20)
  {
    v20 = sub_23949DBA0(&v40, a5, a6, 2);
    v21 = v20;
    if (!v20)
    {
      if (!a4 || (v20 = sub_23949DBA0(&v40, a3, a4, 1), v21 = v20, !v20))
      {
        v20 = sub_23949DBA0(&v40, a1, a2, 1);
        v21 = v20;
        if (!v20)
        {
          v25 = v40 + 424 * (v41 - 1);
          v39 = 0;
          v20 = sub_23949E60C(&v40, v25 + 16, v25 + 336, a7, &v39);
          v21 = v20;
          if (!v20)
          {
            v20 = sub_2394A0148(v40 + 424 * (v41 - 1), a10, a9);
            v21 = v20;
            if (!v20)
            {
              v38 = 0;
              if (a4)
              {
                v26 = sub_2394A04BC(v40 + 424, &v38);
                if (v26 != 216)
                {
                  if (v26)
                  {
                    goto LABEL_19;
                  }

                  if (v38 != *a9)
                  {
                    v22 = 0x1B800000000;
                    LODWORD(v26) = 198;
                    goto LABEL_20;
                  }
                }
              }

              v37 = 0;
              v26 = sub_2394A04BC(v40, &v37);
              if (!v26)
              {
                v27 = v37;
                if (v37 != *a9)
                {
                  v22 = 0x1C500000000;
                  LODWORD(v26) = 89;
                  goto LABEL_20;
                }

                goto LABEL_18;
              }

              if (v26 == 216)
              {
                v27 = *a9;
LABEL_18:
                v36[0] = v48;
                v36[1] = 8;
                v42 = &unk_284BB9138;
                v28 = *(v40 + 360);
                v43 = *v28;
                v30 = v28[2];
                v29 = v28[3];
                v31 = *(v28 + 64);
                v44 = v28[1];
                v45 = v30;
                v47 = v31;
                v46 = v29;
                v26 = sub_2393F3224(&v42, v27, v36);
                if (!v26)
                {
                  *a8 = bswap64(v48[0]);
                  if (a12)
                  {
                    *(a12 + 24) = v44;
                    *(a12 + 40) = v45;
                    *(a12 + 56) = v46;
                    *(a12 + 72) = v47;
                    *(a12 + 8) = v43;
                  }

                  v22 = 0;
                  LODWORD(v26) = 0;
                  v32 = *(v40 + 424 * (v41 - 1) + 360);
                  *(a11 + 8) = *v32;
                  v34 = *(v32 + 32);
                  v33 = *(v32 + 48);
                  v35 = *(v32 + 16);
                  *(a11 + 72) = *(v32 + 64);
                  *(a11 + 24) = v35;
                  *(a11 + 56) = v33;
                  *(a11 + 40) = v34;
                  goto LABEL_20;
                }
              }

LABEL_19:
              v22 = v26 & 0xFFFFFFFF00000000;
LABEL_20:
              v21 = v26;
              goto LABEL_4;
            }
          }
        }
      }
    }
  }

  v22 = v20 & 0xFFFFFFFF00000000;
LABEL_4:
  sub_23949D978(&v40);
  v23 = *MEMORY[0x277D85DE8];
  return v21 | v22;
}

unint64_t sub_2394A7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    v16 = 136315394;
    v17 = "Fabric";
    v18 = 2080;
    v19 = "SignWithOpKeypair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v16, 0x16u);
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    v10 = (*(*v9 + 24))(v9, a2, a3, a4);
    v11 = v10 & 0xFFFFFFFF00000000;
    v12 = v10;
  }

  else
  {
    v11 = 0x17700000000;
    v12 = 16;
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    v16 = 136315394;
    v17 = "Fabric";
    v18 = 2080;
    v19 = "SignWithOpKeypair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

uint64_t sub_2394A7848(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v13 = 136315394;
    v14 = "Fabric";
    v15 = 2080;
    v16 = "FetchRootPubKey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v13, 0x16u);
  }

  if (*(a1 + 137) && (*a1 - 1) <= 0xFFFFFFEFFFFFFFFELL)
  {
    v5 = 0;
    v6 = 0;
    *(a2 + 8) = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = *(a1 + 80);
    *(a2 + 72) = *(a1 + 96);
    *(a2 + 56) = v9;
    *(a2 + 40) = v8;
    *(a2 + 24) = v7;
  }

  else
  {
    v6 = 0x17F00000000;
    v5 = 16;
  }

  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    v13 = 136315394;
    v14 = "Fabric";
    v15 = 2080;
    v16 = "FetchRootPubKey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

unint64_t sub_2394A79FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, unint64_t *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = sub_23948B4CC();
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    v29 = "Fabric";
    v30 = 2080;
    v31 = "VerifyCredentials";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_23947632C("src/credentials/FabricTable.cpp", 393);
  v26 = buf;
  v27 = 400;
  v21 = sub_2394A7BFC(a1, a2, &v26);
  if (!v21)
  {
    sub_238DB6950(v25, v26, v27);
    v21 = sub_2394A7394(a3, a4, a5, a6, v25[0], v25[1], a7, a8, a9, a10, a11, a12);
  }

  v22 = sub_23948B4CC();
  if (os_signpost_enabled(v22))
  {
    *buf = 136315394;
    v29 = "Fabric";
    v30 = 2080;
    v31 = "VerifyCredentials";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

unint64_t sub_2394A7BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v7 = *(a1 + 2600);
  if (v7)
  {
    v8 = (*(*v7 + 120))(v7, a2, 0, a3);
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
  }

  else
  {
    v9 = 0x26200000000;
    v10 = 3;
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

uint64_t sub_2394A7DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v14[10] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_284BB9138;
  if (*(a1 + 2569) && (*(a1 + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && (~*(a1 + 2644) & 5) == 0)
  {
    v8 = a1 + 2432;
    v9 = sub_2394A7848(a1 + 2432, v14);
    v10 = a4;
    if (a4)
    {
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = *v8;
      if (!v9)
      {
LABEL_8:
        if (sub_23928F6C0(a2, v14) && *(v7 + 2440) == a3 && v10 == *v8)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v8 = 2432;
  while (1)
  {
    v11 = a4;
    if (!a4)
    {
      v11 = *v7;
    }

    if (*(v7 + 137) && (*v7 - 1) <= 0xFFFFFFEFFFFFFFFELL && !sub_2394A7848(v7, v14) && sub_23928F6C0(a2, v14) && *(v7 + 8) == a3 && v11 == *v7)
    {
      break;
    }

    v7 += 152;
    v8 -= 152;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  v8 = v7;
LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2394A7F48(uint64_t result, int a2)
{
  if (*(result + 2569) && (*(result + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && ((~*(result + 2644) & 5) == 0 ? (v2 = *(result + 2569) == a2) : (v2 = 0), v2))
  {
    result += 2432;
  }

  else
  {
    v3 = 2432;
    while (1)
    {
      if (*(result + 137))
      {
        if (*(result + 137) == a2 && (*result - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          break;
        }
      }

      result += 152;
      v3 -= 152;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2394A7FC0(uint64_t result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(result + 2569) && (*(result + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && ((~*(result + 2644) & 5) == 0 ? (v2 = *(result + 2569) == a2) : (v2 = 0), v2))
  {
    result += 2432;
  }

  else
  {
    v3 = 2432;
    while (1)
    {
      if (*(result + 137))
      {
        if (*(result + 137) == a2 && (*result - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          break;
        }
      }

      result += 152;
      v3 -= 152;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2394A803C(uint64_t result, uint64_t a2)
{
  if (*(result + 2569) && (*(result + 2432) - 1) <= 0xFFFFFFEFFFFFFFFELL && (~*(result + 2644) & 5) == 0 && *(result + 2448) == a2)
  {
    result += 2432;
  }

  else
  {
    v2 = 2432;
    while (!*(result + 137) || (*result - 1) > 0xFFFFFFEFFFFFFFFELL || *(result + 16) != a2)
    {
      result += 152;
      v2 -= 152;
      if (!v2)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2394A80C4(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchPendingNonFabricAssociatedRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  if (!*(a1 + 2600))
  {
    v6 = 0x26900000000;
    v7 = 3;
    goto LABEL_11;
  }

  v5 = *(a1 + 2644);
  if ((v5 & 2) != 0)
  {
    if ((v5 & 8) == 0)
    {
      v8 = sub_2394A7BFC(a1, *(a1 + 2616), a2);
      v6 = v8 & 0xFFFFFFFF00000000;
      v7 = v8;
      goto LABEL_11;
    }

    v6 = 0x27300000000;
  }

  else
  {
    v6 = 0x26C00000000;
  }

  v7 = 216;
LABEL_11:
  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    v12 = 136315394;
    v13 = "Fabric";
    v14 = 2080;
    v15 = "FetchPendingNonFabricAssociatedRootCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

unint64_t sub_2394A8274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchICACert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v7 = *(a1 + 2600);
  if (v7)
  {
    v8 = (*(*v7 + 120))(v7, a2, 1, a3);
    v9 = v8;
    if (v8 == 216 && (*(**(a1 + 2600) + 40))(*(a1 + 2600), a2, 2))
    {
      sub_238DB8498(a3, 0);
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v10 = v8 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v10 = 0x27C00000000;
    v9 = 3;
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchICACert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 | v9;
}

unint64_t sub_2394A847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchNOCCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v7 = *(a1 + 2600);
  if (v7)
  {
    v8 = (*(*v7 + 120))(v7, a2, 2, a3);
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
  }

  else
  {
    v9 = 0x29000000000;
    v10 = 3;
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchNOCCert";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

unint64_t sub_2394A8620(uint64_t a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchRootPubkey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v7 = sub_2394A7FC0(a1, a2);
  if (v7)
  {
    v8 = sub_2394A7848(v7, a3);
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
  }

  else
  {
    v9 = 0x29800000000;
    v10 = 113;
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    v14 = 136315394;
    v15 = "Fabric";
    v16 = 2080;
    v17 = "FetchRootPubkey";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

unint64_t sub_2394A87A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = &v11;
  v10 = 400;
  v4 = sub_2394A847C(a1, a2, &v9);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB6950(v8, v9, v10);
    v4 = sub_2394A052C(v8, a3);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      LODWORD(v4) = 0;
      v5 = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

unint64_t sub_2394A884C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2584);
  if (v2)
  {
    if (!a2)
    {
      sub_239535CEC();
    }

    v3 = *(a2 + 137);
    if ((v3 - 1) > 0xFD)
    {
      v5 = 0x2AB00000000;
      LODWORD(v4) = 172;
    }

    else
    {
      v4 = sub_2394A6A48(a2, v2);
      if (v4)
      {
        v5 = v4 & 0xFFFFFFFF00000000;
      }

      else
      {
        v6 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v10 = v3;
          _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Metadata for Fabric 0x%x persisted to storage.", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0x11u, 2);
        }

        LODWORD(v4) = 0;
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0x2A700000000;
    LODWORD(v4) = 3;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 | v4;
}

unint64_t sub_2394A8980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2584))
  {
    if (*(a2 + 137) && (*a2 - 1) < 0xFFFFFFEFFFFFFFFFLL)
    {
      v6 = 0x2B800000000;
      v7 = 3;
    }

    else
    {
      v29 = &v45;
      v30 = 400;
      v27 = &v44;
      v28 = 400;
      v8 = sub_2394A847C(a1, a3, &v29);
      if (v8 || (v8 = sub_2394A7BFC(a1, a3, &v27), v8) || (v9 = *(a1 + 2584), sub_238DB6950(&buf, v27, v28), sub_238DB6950(v26, v29, v30), v8 = sub_2394A6BB4(a2, v9, a3, &buf, v26), v8))
      {
        v10 = sub_2393D9044(0x11u);
        v7 = v8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_2393C9138();
          LODWORD(buf) = 67109378;
          HIDWORD(buf) = a3;
          v32 = 2080;
          *v33 = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to load Fabric (0x%x): %s", &buf, 0x12u);
        }

        v6 = v8 & 0xFFFFFFFF00000000;
        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0x11u, 1);
        }

        sub_238DCCC50(a2);
      }

      else
      {
        v14 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a2 + 137);
          v17 = *(a2 + 8);
          v16 = *(a2 + 16);
          v18 = *a2;
          v19 = HIDWORD(*a2);
          v20 = *(a2 + 138);
          LODWORD(buf) = 67110912;
          HIDWORD(buf) = v15;
          v32 = 1024;
          *v33 = HIDWORD(v16);
          *&v33[4] = 1024;
          *&v33[6] = v16;
          v34 = 1024;
          v35 = HIDWORD(v17);
          v36 = 1024;
          v37 = v17;
          v38 = 1024;
          v39 = v19;
          v40 = 1024;
          v41 = v18;
          v42 = 1024;
          v43 = v20;
          _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Fabric index 0x%x was retrieved from storage. Compressed FabricId 0x%08X%08X, FabricId 0x%08X%08X, NodeId 0x%08X%08X, VendorId 0x%04X", &buf, 0x32u);
        }

        if (sub_2393D5398(2u))
        {
          v24 = *a2;
          v25 = *(a2 + 138);
          v23 = HIDWORD(*(a2 + 8));
          v21 = *(a2 + 137);
          v22 = HIDWORD(*(a2 + 16));
          sub_2393D5320(0x11u, 2);
        }

        v7 = 0;
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0x2B700000000;
    v7 = 47;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

uint64_t sub_2394A8CAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, _BYTE *a11)
{
  v31 = *MEMORY[0x277D85DE8];
  v25[2] = a3;
  v25[3] = a4;
  v25[0] = a5;
  v25[1] = a6;
  v24[0] = a7;
  v24[1] = a8;
  if (a11)
  {
    v29[0] = &unk_284BB8F28;
    v29[1] = &unk_284BB9138;
    v30 = 0;
    v28 = 0;
    if (a10)
    {
      if (a10 != 97)
      {
        v22 = 0x5900000000;
        v20 = 47;
        goto LABEL_12;
      }

      v13 = *a9;
      v14 = a9[2];
      v26[1] = a9[1];
      v26[2] = v14;
      v26[0] = v13;
      v15 = a9[3];
      v16 = a9[4];
      v17 = a9[5];
      v27 = *(a9 + 96);
      v26[4] = v16;
      v26[5] = v17;
      v26[3] = v15;
      v28 = 97;
      v18 = v29;
      v19 = sub_2393F9498(v29, v26);
      v20 = v19;
      if (v19)
      {
LABEL_9:
        sub_2394A9DC0(a1);
LABEL_10:
        v22 = v19 & 0xFFFFFFFF00000000;
LABEL_12:
        sub_2393F9144(v26, 97);
        sub_2393F970C(v29);
        result = v22 | v20;
        goto LABEL_13;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_2394AB5D4(a1);
    v20 = v19;
    if (!v19)
    {
      v19 = sub_2394ABA3C(a1, v24, v25, 65521, v18, 0, 0, a11);
      v20 = v19;
      if (!v19 && (a2 & 1) == 0)
      {
        v19 = sub_2394AC43C(a1);
        v20 = v19;
      }

      if (!v20)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  result = 0x4F0000002FLL;
LABEL_13:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394A8ED0(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v10 = 136315394;
    v11 = "Fabric";
    v12 = 2080;
    v13 = "NotifyFabricUpdated";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v5 = *(a1 + 2608);
  if (v5)
  {
    do
    {
      v6 = v5[1];
      (*(*v5 + 40))(v5, a1, a2);
      v5 = v6;
    }

    while (v6);
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    v10 = 136315394;
    v11 = "Fabric";
    v12 = 2080;
    v13 = "NotifyFabricUpdated";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_2394A905C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v10 = 136315394;
    v11 = "Fabric";
    v12 = 2080;
    v13 = "NotifyFabricCommitted";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v5 = *(a1 + 2608);
  if (v5)
  {
    do
    {
      v6 = v5[1];
      (*(*v5 + 32))(v5, a1, a2);
      v5 = v6;
    }

    while (v6);
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    v10 = 136315394;
    v11 = "Fabric";
    v12 = 2080;
    v13 = "NotifyFabricCommitted";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

unint64_t sub_2394A91E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, __int16 a6, int a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = &unk_284BB9138;
  v78 = 0xFFFF;
  if (a3)
  {
    v13 = 2432;
    v14 = 11;
    v15 = a1;
    while (*(v15 + 137) && (*v15 - 1) < 0xFFFFFFEFFFFFFFFFLL)
    {
      v15 += 152;
      v13 -= 152;
      if (!v13)
      {
        v16 = 0x34100000000;
        goto LABEL_24;
      }
    }

    v59 = a4;
    v58 = a5;
    v20 = 0;
    v22 = 0;
    v19 = 0;
    LOWORD(v78) = a6;
    v74 = a2;
LABEL_10:
    v65 = &unk_284BBC458;
    v66 = 0;
    v71[0] = &unk_284BB9138;
    v23 = sub_2393D52C4(0x190uLL);
    if (v23)
    {
      v24 = v23;
      v57 = a7;
      v25 = sub_2393D52C4(0x190uLL);
      if (v25)
      {
        v26 = v25;
        v56 = a3;
        v27 = sub_2393D52C4(0x190uLL);
        if (v27)
        {
          v28 = v27;
          __src = v20;
          sub_238DB9BD8(&buf, v24, 400);
          sub_238DB9BD8(v64, v26, 400);
          sub_238DB9BD8(v63, v28, 400);
          v29 = sub_2394A847C(a1, a2, &buf);
          if (v29 || (v29 = sub_2394A8274(a1, a2, v64), v29) || (v29 = sub_2394A7BFC(a1, a2, v63), v29))
          {
            v16 = v29 & 0xFFFFFFFF00000000;
            j__free(v28);
            j__free(v26);
            j__free(v24);
LABEL_23:
            v14 = v29;
            goto LABEL_24;
          }

          sub_238DB6950(v62, buf, *(&buf + 1));
          sub_238DB6950(v61, v64[0], v64[1]);
          sub_238DB6950(v60, v63[0], v63[1]);
          v29 = sub_2394A700C(v62, v61, v60, v19, &v65, &v72, &v76, &v73, v71, &v77);
          j__free(v28);
          j__free(v26);
          j__free(v24);
          if (v29)
          {
            goto LABEL_26;
          }

          if (v59)
          {
            v32 = (*(*v59 + 40))(v59);
            v34 = v56;
            v33 = v57;
            if (!sub_23928F6C0(v32, v71))
            {
              v16 = 0x37600000000;
              LODWORD(v29) = 197;
              goto LABEL_23;
            }

            v75 = v59;
            BYTE2(v78) = v58;
          }

          else
          {
            v43 = *(a1 + 2592);
            v34 = v56;
            v33 = v57;
            if (!v43)
            {
              v16 = 0x38900000000;
              LODWORD(v29) = 3;
              goto LABEL_23;
            }

            v44 = (*(*v43 + 16))(v43);
            v45 = **(a1 + 2592);
            if (v44)
            {
              v29 = (*(v45 + 40))();
              if (v29)
              {
                goto LABEL_26;
              }
            }

            else if (!(*(v45 + 24))())
            {
              v16 = 0x38400000000;
              LODWORD(v29) = 16;
              goto LABEL_23;
            }
          }

          HIBYTE(v78) = v33 == 0;
          v29 = sub_2394A65AC(v15, &v72);
          if (v29)
          {
LABEL_26:
            v16 = v29 & 0xFFFFFFFF00000000;
            goto LABEL_23;
          }

          v35 = (v15 + 104);
          if (v22)
          {
            if (v22 >= 0x20)
            {
              v36 = 32;
            }

            else
            {
              v36 = v22;
            }

            memcpy((v15 + 104), __src, v36);
            v35 += v36;
          }

          *v35 = 0;
          v37 = sub_2393D9044(0x11u);
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          if (v34)
          {
            if (v38)
            {
              v39 = *(v15 + 137);
              LODWORD(buf) = 67109120;
              DWORD1(buf) = v39;
              _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_DEFAULT, "Added new fabric at index: 0x%x", &buf, 8u);
            }

            if (sub_2393D5398(2u))
            {
              v50 = *(v15 + 137);
              sub_2393D5320(0x11u, 2);
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *(v15 + 16);
              v41 = *v15;
              v42 = HIDWORD(*v15);
              *&buf = __PAIR64__(HIDWORD(v40), 67109888);
              WORD4(buf) = 1024;
              *(&buf + 10) = v40;
              HIWORD(buf) = 1024;
              v68 = v42;
              v69 = 1024;
              v70 = v41;
              _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_DEFAULT, "Assigned compressed fabric ID: 0x%08X%08X, node ID: 0x%08X%08X", &buf, 0x1Au);
            }

            if (!sub_2393D5398(2u))
            {
              goto LABEL_58;
            }

            v54 = HIDWORD(*v15);
            v51 = HIDWORD(*(v15 + 16));
          }

          else
          {
            if (v38)
            {
              v46 = *(v15 + 137);
              v47 = *v15;
              v48 = HIDWORD(*v15);
              LODWORD(buf) = 67109632;
              DWORD1(buf) = v46;
              WORD4(buf) = 1024;
              *(&buf + 10) = v48;
              HIWORD(buf) = 1024;
              v68 = v47;
              _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_DEFAULT, "Updated fabric at index: 0x%x, Node ID: 0x%08X%08X", &buf, 0x14u);
            }

            if (!sub_2393D5398(2u))
            {
              goto LABEL_58;
            }

            v53 = HIDWORD(*v15);
            v52 = *(v15 + 137);
          }

          sub_2393D5320(0x11u, 2);
LABEL_58:
          if (sub_2394B7A64(a1 + 2624, v66))
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v49 = sub_2393C9138();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v49;
              _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Failed to update pending Last Known Good Time: %s", &buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              sub_2393D5320(0x11u, 1);
            }
          }

          v16 = 0;
          LODWORD(v29) = 0;
          if (v34)
          {
            ++*(a1 + 2642);
          }

          goto LABEL_23;
        }

        j__free(v26);
        v16 = 0x36200000000;
      }

      else
      {
        v16 = 0x36100000000;
      }

      j__free(v24);
    }

    else
    {
      v16 = 0x36000000000;
    }

    LODWORD(v29) = 11;
    goto LABEL_23;
  }

  v17 = sub_2394A7FC0(a1, a2);
  if (v17)
  {
    v18 = v17;
    v59 = a4;
    v58 = a5;
    v15 = a1 + 2432;
    sub_238DCCC50(a1 + 2432);
    LOWORD(v78) = *(v18 + 138);
    v74 = a2;
    v19 = *(v18 + 8);
    v20 = sub_239283EA0(v18);
    v22 = v21;
    goto LABEL_10;
  }

  v16 = 0x34A00000000;
  v14 = 172;
LABEL_24:
  v30 = *MEMORY[0x277D85DE8];
  return v14 | v16;
}

unint64_t sub_2394A9924(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v28 = "Fabric";
    v29 = 2080;
    v30 = "Delete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 2584))
  {
    v9 = 0x3BA00000000;
LABEL_12:
    v10 = 47;
    goto LABEL_13;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v9 = 0x3BB00000000;
    goto LABEL_12;
  }

  v5 = *(a1 + 2608);
  if (v5)
  {
    do
    {
      v6 = v5[1];
      (*(*v5 + 16))(v5, a1, a2);
      v5 = v6;
    }

    while (v6);
  }

  v7 = sub_2394A7F48(a1, a2);
  v8 = v7;
  if (v7 == a1 + 2432)
  {
    sub_2394A9DC0(a1);
    v8 = sub_2394A7F48(a1, a2);
    if (!v8)
    {
LABEL_19:
      v14 = 0;
      goto LABEL_20;
    }
  }

  else if (!v7)
  {
    goto LABEL_19;
  }

  if (!*(v8 + 137))
  {
    goto LABEL_19;
  }

  v14 = (*v8 - 1) < 0xFFFFFFEFFFFFFFFFLL;
LABEL_20:
  v15 = sub_2394A6DF0(a1, a2);
  v16 = *(a1 + 2592);
  if (v16 && (v17 = (*(*v16 + 72))(v16, a2), v10 = v17, v17 != 113))
  {
    v9 = v17 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v18 = *(a1 + 2600);
  if (v18 && (v19 = (*(*v18 + 80))(v18, a2), v20 = v19, v19 != 113))
  {
    v26 = v19 & 0xFFFFFFFF00000000;
    if (!v14)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v20 = 0;
    v26 = 0;
    if (!v14)
    {
      goto LABEL_41;
    }
  }

  sub_238DCCC50(v8);
  if ((*(a1 + 2640) & 1) == 0)
  {
    *(a1 + 2640) = 1;
    *(a1 + 2641) = a2;
  }

  sub_2394A9F64(a1);
  if (*(a1 + 2642))
  {
    --*(a1 + 2642);
    v21 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v28) = a2;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Fabric (0x%x) deleted.", buf, 8u);
    }

    if (!sub_2393D5398(2u))
    {
      goto LABEL_41;
    }

    v22 = 2;
  }

  else
  {
    v23 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Trying to delete a fabric, but the current fabric count is already 0", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_41;
    }

    v22 = 1;
  }

  sub_2393D5320(0x11u, v22);
LABEL_41:
  v24 = *(a1 + 2608);
  if (v24)
  {
    do
    {
      v25 = v24[1];
      (*(*v24 + 24))(v24, a1, a2);
      v24 = v25;
    }

    while (v25);
  }

  if (v14)
  {
    if (v15)
    {
      v9 = v15 & 0xFFFFFFFF00000000;
      v10 = v15;
    }

    else if (!v10)
    {
      v10 = v20;
      v9 = v26;
      if (!v20)
      {
        v10 = 0;
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0x42300000000;
    v10 = 216;
  }

LABEL_13:
  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v28 = "Fabric";
    v29 = 2080;
    v30 = "Delete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

void sub_2394A9DC0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    v7 = 136315394;
    v8 = "Fabric";
    v9 = 2080;
    v10 = "RevertPendingFabricData";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v7, 0x16u);
  }

  sub_2394ABDE0(a1);
  v3 = *(a1 + 2592);
  if (v3)
  {
    (*(*v3 + 80))(v3);
  }

  v4 = *(a1 + 2600);
  if (v4)
  {
    (*(*v4 + 88))(v4);
  }

  sub_2394B7CF8(a1 + 2624);
  *(a1 + 2644) = 0;
  *(a1 + 2616) = 0;
  v5 = sub_23948B4CC();
  if (os_signpost_enabled(v5))
  {
    v7 = 136315394;
    v8 = "Fabric";
    v9 = 2080;
    v10 = "RevertPendingFabricData";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2394A9F64(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v16);
  sub_2393C7BB8(v16, v21, 0x2CuLL);
  v15 = 0;
  v2 = sub_2393C8CE0(v16, 0x100uLL, 21, &v15);
  v3 = v2;
  if (!v2)
  {
    if (*(a1 + 2640) == 1)
    {
      v5 = sub_238DE36D8((a1 + 2640));
      sub_2393C8140(v16, 0, *v5);
    }

    else
    {
      sub_2393C8948(v16, 0);
    }

    v14 = 0;
    v6 = sub_2393C8CE0(v16, 1uLL, 22, &v14);
    if (v6)
    {
      goto LABEL_13;
    }

    sub_238DCCCDC(a1, &v18);
    if (v19 != *(&v19 + 1))
    {
      if (v19 != __PAIR128__(16, 16))
      {
        goto LABEL_16;
      }

      v7 = v18;
LABEL_10:
      if (v7 != a1)
      {
LABEL_16:
        v10 = sub_238DC7C7C(&v18);
        sub_2393C8140(v16, 0x100uLL, *(v10 + 137));
        v11 = v19;
        v7 = v18;
        while (1)
        {
          if (v11 < *(&v19 + 1))
          {
            *&v19 = ++v11;
          }

          if (v11 == *(&v19 + 1))
          {
            break;
          }

          v12 = v18 + 152 * v11;
          if (*(v12 + 137) && (*v12 - 1) < 0xFFFFFFEFFFFFFFFFLL)
          {
            if (*(&v19 + 1) == 16 && v11 == 16)
            {
              goto LABEL_10;
            }

            goto LABEL_16;
          }
        }
      }
    }

    v6 = sub_2393C8DE0(v16, v14);
    if (v6)
    {
      goto LABEL_13;
    }

    v6 = sub_2393C8DE0(v16, v15);
    if (v6)
    {
      goto LABEL_13;
    }

    if (HIWORD(v17))
    {
      v4 = 0x54500000000;
      LODWORD(v6) = 25;
      goto LABEL_14;
    }

    v13 = *(a1 + 2584);
    v18 = *"g/fidx";
    v19 = unk_2395D6CAC;
    v20 = 0;
    v6 = (*(*v13 + 24))(v13, &v18, v21, v17);
    if (v6)
    {
LABEL_13:
      v4 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = 0;
      LODWORD(v6) = 0;
    }

LABEL_14:
    v3 = v6;
    goto LABEL_15;
  }

  v4 = v2 & 0xFFFFFFFF00000000;
LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return v3 | v4;
}

unint64_t sub_2394AA194(void *a1)
{
  sub_2394A9DC0(a1);
  result = sub_238DCCCDC(a1, v8);
  if (v9 != v10)
  {
    v3 = v10 == 16 && v9 == 16;
    if (!v3 || v8[0] != a1)
    {
LABEL_9:
      v5 = sub_238DC7C7C(v8);
      result = sub_2394A9924(a1, *(v5 + 137));
      v6 = v9;
      while (1)
      {
        if (v6 < v10)
        {
          v9 = ++v6;
        }

        if (v6 == v10)
        {
          break;
        }

        v7 = v8[0] + 152 * v6;
        if (*(v7 + 137) && (*v7 - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          if (v10 != 16 || v6 != 16 || v8[0] != a1)
          {
            goto LABEL_9;
          }

          return result;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394AA264(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (a2[2])
    {
      *(a1 + 2584) = *a2;
      *(a1 + 2592) = a2[1];
      *(a1 + 2600) = a2[2];
      v3 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Initializing FabricTable from persistent storage", buf, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0x11u, 3);
      }

      v4 = 0;
      *(a1 + 2642) = 0;
      do
      {
        sub_238DCCC50(a1 + v4);
        v4 += 152;
      }

      while (v4 != 2432);
      *(a1 + 2640) = 257;
      sub_2394B7620(a1 + 2624, *(a1 + 2584));
      v16 = 44;
      v5 = *(a1 + 2584);
      *buf = *"g/fidx";
      v20 = unk_2395D6CAC;
      v21 = 0;
      v6 = (*(*v5 + 16))(v5, buf, v22, &v16);
      v7 = v6;
      if (v6 == 160)
      {
        goto LABEL_10;
      }

      if (!v6)
      {
        sub_2393C5AAC(buf);
        sub_2393C5ADC(buf, v22, v16);
        v7 = sub_2394AA620(a1, buf);
        if (!v7)
        {
LABEL_10:
          *v17 = 0;
          v8 = sub_2394AA7F4(a1, v17);
          if (v8 != 160)
          {
            if (v8)
            {
              if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
              {
                v12 = sub_2393C9138();
                *buf = 136315138;
                *&buf[4] = v12;
                _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Error loading Table commit marker: %s, hope for the best!", buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393C9138();
                sub_2393D5320(0x11u, 1);
              }
            }

            else
            {
              if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *&buf[4] = v17[0];
                *&buf[8] = 1024;
                *&buf[10] = v17[1];
                _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Found a FabricTable aborted commit for index 0x%x (isAddition: %d), removing!", buf, 0xEu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(0x11u, 1);
              }

              v9 = v17[0];
              *(a1 + 2617) = v17[0];
              sub_2394A9924(a1, v9);
            }
          }

          LODWORD(v7) = 0;
          v10 = 0;
          goto LABEL_27;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v15 = sub_2393C9138();
          *v17 = 136315138;
          v18 = v15;
          _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Error loading fabric table: %s, we are in a bad state!", v17, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0x11u, 1);
        }
      }

      v10 = v7 & 0xFFFFFFFF00000000;
LABEL_27:
      v11 = v7;
      goto LABEL_28;
    }

    v10 = 0x43500000000;
  }

  else
  {
    v10 = 0x43400000000;
  }

  v11 = 47;
LABEL_28:
  v13 = *MEMORY[0x277D85DE8];
  return v10 | v11;
}

unint64_t sub_2394AA620(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_2393C7114(a2, 21, 256);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v4 = sub_2393C6A2C(a2, &v13);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = sub_2393C6FD0(a2, 0);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  if (sub_2393C5C40(a2) == 20)
  {
    a1[2640] = 0;
  }

  else
  {
    *(a1 + 1320) = 1;
    v4 = sub_2393C5ED0(a2, a1 + 2641);
    v5 = v4;
    if (v4)
    {
LABEL_8:
      v6 = v4 & 0xFFFFFFFF00000000;
      return v5 | v6;
    }
  }

  v4 = sub_2393C7114(a2, 22, 1);
  v5 = v4;
  if (v4)
  {
    goto LABEL_8;
  }

  v12 = 0;
  v8 = sub_2393C6A2C(a2, &v12);
  if (!v8)
  {
    LODWORD(v8) = 11;
    while (1)
    {
      v9 = sub_2393C6B34(a2);
      if (v9)
      {
        break;
      }

      v10 = a1[2642];
      if (v10 > 0xF)
      {
        v6 = 0x57600000000;
        goto LABEL_25;
      }

      v11 = 0;
      v9 = sub_2393C5ED0(a2, &v11);
      if (v9)
      {
        goto LABEL_23;
      }

      if (!sub_2394A8980(a1, &a1[152 * v10], v11))
      {
        ++a1[2642];
      }
    }

    if (v9 != 33)
    {
LABEL_23:
      v6 = v9 & 0xFFFFFFFF00000000;
      LODWORD(v8) = v9;
      goto LABEL_25;
    }

    v8 = sub_2393C6A98(a2, v12);
    if (!v8)
    {
      v8 = sub_2393C6A98(a2, v13);
      if (!v8)
      {
        v8 = sub_2393C6AE0(a2);
        if (!v8)
        {
          sub_2394AAF00(a1);
          v6 = 0;
          LODWORD(v8) = 0;
          goto LABEL_25;
        }
      }
    }
  }

  v6 = v8 & 0xFFFFFFFF00000000;
LABEL_25:
  v5 = v8;
  return v5 | v6;
}

unint64_t sub_2394AA7F4(uint64_t a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 36;
  v3 = *(a1 + 2584);
  v12[0] = *"g/fs/c";
  v12[1] = *&algn_2395D6CC5[9];
  v13 = 0;
  v4 = (*(*v3 + 16))(v3, v12, v14, &v11);
  v5 = v4;
  if (v4 || (sub_2393C5AAC(v12), sub_2393C5ADC(v12, v14, v11), v4 = sub_2393C7114(v12, 21, 256), v5 = v4, v4))
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = 0;
    v9 = sub_2393C6A2C(v12, &v10);
    if (v9 || (v9 = sub_2393C6FD0(v12, 0), v9) || (v9 = sub_2393C5ED0(v12, a2), v9) || (v9 = sub_2393C6FD0(v12, 1), v9) || (v9 = sub_2393C5CE4(v12, a2 + 1), v9))
    {
      v6 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v9) = 0;
      v6 = 0;
    }

    v5 = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6 | v5;
}

void sub_2394AA948(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0x11u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Forgetting fabric 0x%x", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0x11u, 2);
  }

  v5 = sub_2394A7F48(a1, a2);
  if (v5)
  {
    v6 = v5;
    sub_2394A9DC0(a1);
    sub_238DCCC50(v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2394AAA3C(uint64_t a1)
{
  if (*(a1 + 2584))
  {
    v2 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Shutting down FabricTable", v7, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x11u, 2);
    }

    v3 = *(a1 + 2608);
    if (v3)
    {
      do
      {
        v4 = *(v3 + 8);
        *(v3 + 8) = 0;
        v3 = v4;
      }

      while (v4);
    }

    sub_2394A9DC0(a1);
    v5 = 2432;
    v6 = a1;
    do
    {
      sub_238DCCC50(v6);
      v6 += 152;
      v5 -= 152;
    }

    while (v5);
    *(a1 + 2584) = 0;
  }
}

uint64_t sub_2394AAB18(uint64_t a1)
{
  v1 = *(a1 + 2617);
  *(a1 + 2617) = 0;
  return v1;
}

uint64_t sub_2394AAB28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 2608);
    if (v2)
    {
      v3 = *(a1 + 2608);
      while (v3 != a2)
      {
        v3 = *(v3 + 8);
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      v4 = 0;
      v5 = 0;
    }

    else
    {
LABEL_6:
      v4 = 0;
      v5 = 0;
      *(a2 + 8) = v2;
      *(a1 + 2608) = a2;
    }
  }

  else
  {
    v4 = 0x4AC00000000;
    v5 = 47;
  }

  return v5 | v4;
}

uint64_t sub_2394AAB8C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 2608);
    if (v2 == a2)
    {
      *(result + 2608) = *(v2 + 8);
    }

    else
    {
      while (v2)
      {
        v3 = v2;
        v2 = *(v2 + 8);
        if (v2 == a2)
        {
          *(v3 + 8) = *(a2 + 8);
          *(a2 + 8) = 0;
          return result;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394AABCC(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  v5 = 0;
  v23 = *MEMORY[0x277D85DE8];
  do
  {
    v6 = a1 + v4;
    v7 = *(a1 + v4 + 137);
    if (!*(a1 + v4 + 137) || (*v6 - 1) > 0xFFFFFFEFFFFFFFFELL)
    {
      goto LABEL_14;
    }

    v19 = buf;
    v20 = 400;
    v8 = sub_2394A7BFC(a1, v7, &v19);
    if (v8)
    {
      goto LABEL_27;
    }

    sub_238DB6950(v17, v19, v20);
    v8 = sub_2394A07C0(v17, &v18);
    if (v8)
    {
      goto LABEL_27;
    }

    if (v5 <= v18)
    {
      v5 = v18;
    }

    v19 = buf;
    v20 = 400;
    v8 = sub_2394A8274(a1, *(v6 + 137), &v19);
    if (!v8)
    {
      if (v20)
      {
        sub_238DB6950(v17, v19, v20);
        v2 = sub_2394A07C0(v17, &v18);
        if (v2)
        {
          v9 = 1;
          goto LABEL_10;
        }

        if (v5 <= v18)
        {
          v5 = v18;
        }
      }

      v19 = buf;
      v20 = 400;
      v8 = sub_2394A847C(a1, *(v6 + 137), &v19);
      if (!v8)
      {
        sub_238DB6950(v17, v19, v20);
        v10 = sub_2394A07C0(v17, &v18);
        v2 = v10;
        if (v5 <= v18)
        {
          v11 = v18;
        }

        else
        {
          v11 = v5;
        }

        v9 = v10 != 0;
        if (!v10)
        {
          v5 = v11;
        }

        goto LABEL_10;
      }
    }

    v9 = 8;
LABEL_10:
    if (v9 > 2)
    {
      goto LABEL_27;
    }

    if (v9)
    {
      goto LABEL_33;
    }

LABEL_14:
    v4 += 152;
  }

  while (v4 != 2432);
  v8 = sub_2394B7858(a1 + 2624, a2, v5);
LABEL_27:
  if (v8)
  {
    v12 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v22 = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Failed to update Known Good Time: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x11u, 1);
    }
  }

  v2 = v8;
LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

unsigned __int8 *sub_2394AAE78(uint64_t a1)
{
  v2 = *sub_2392C86E0((a1 + 2640));
  if (v2 == 254)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 + 1;
  }

  while (1)
  {
    result = sub_2392C86E0((a1 + 2640));
    if (*result == v3)
    {
      *(a1 + 2640) = 0;
      return result;
    }

    result = sub_2394A7FC0(a1, v3);
    if (!result)
    {
      break;
    }

    if (v3 == 254)
    {
      v3 = 1;
    }

    else
    {
      ++v3;
    }
  }

  *(a1 + 2640) = 1;
  *(a1 + 2641) = v3;
  return result;
}

unsigned __int8 *sub_2394AAF00(unsigned __int8 *result)
{
  if ((result[2640] & 1) == 0)
  {
    v1 = result;
    if (result[2642] <= 0xFDu)
    {
      *(result + 1320) = 257;
      result = sub_2394A7FC0(result, 1);
      if (result)
      {

        return sub_2394AAE78(v1);
      }
    }
  }

  return result;
}

uint64_t sub_2394AAF6C(uint64_t a1)
{
  v2 = *(a1 + 2592);
  if (v2)
  {
    v3 = *(*v2 + 104);

    return v3();
  }

  else
  {
    v5 = sub_2393D52C4(0x260uLL);
    v6 = v5;
    if (v5)
    {
      bzero(v5 + 2, 0x250uLL);
      *v6 = &unk_284BB8F28;
      v6[1] = &unk_284BB9138;
    }

    return v6;
  }
}

void sub_2394AB01C(uint64_t a1, void (***a2)(void))
{
  v3 = *(a1 + 2592);
  if (v3)
  {
    v4 = *(*v3 + 112);

    v4();
  }

  else if (a2)
  {
    (**a2)(a2);

    j__free(a2);
  }
}

unint64_t sub_2394AB0D0(uint64_t a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v10);
  sub_2393C7BB8(v10, v14, 0x24uLL);
  v9 = 0;
  v4 = sub_2393C8CE0(v10, 0x100uLL, 21, &v9);
  if (!v4)
  {
    v4 = sub_2393C8140(v10, 0, *a2);
    if (!v4)
    {
      v4 = sub_2393C7E38(v10, 1uLL, a2[1]);
      if (!v4)
      {
        v4 = sub_2393C8DE0(v10, v9);
        if (!v4)
        {
          if (HIWORD(v11))
          {
            v6 = 0x5BC00000000;
            LODWORD(v4) = 25;
            goto LABEL_8;
          }

          v5 = *(a1 + 2584);
          v12[0] = *"g/fs/c";
          v12[1] = *&algn_2395D6CC5[9];
          v13 = 0;
          v4 = (*(*v5 + 24))(v5, v12, v14, v11);
        }
      }
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return v6 | v4;
}

uint64_t sub_2394AB208(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 2584);
  v4[0] = *"g/fs/c";
  v4[1] = *&algn_2395D6CC5[9];
  v5 = 0;
  result = (*(*v1 + 32))(v1, v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394AB290(uint64_t a1, int a2)
{
  result = sub_2394A7FC0(a1, a2);
  if (result)
  {
    if (*(result + 144))
    {
      return 1;
    }

    else
    {
      result = *(a1 + 2592);
      if (result)
      {
        v4 = *(*result + 24);

        return v4();
      }
    }
  }

  return result;
}

unint64_t sub_2394AB310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a3;
  v15[1] = a4;
  v10 = sub_2394A7FC0(a1, a2);
  if (v10)
  {
    if (*(v10 + 144))
    {
      v11 = sub_2394A7698(v10, a3, a4, a5);
LABEL_8:
      v12 = v11 & 0xFFFFFFFF00000000;
      return v11 | v12;
    }

    v13 = *(a1 + 2592);
    if (v13)
    {
      v11 = (*(*v13 + 96))(v13, a2, v15, a5);
      goto LABEL_8;
    }

    v12 = 0x60300000000;
  }

  else
  {
    v12 = 0x5F700000000;
  }

  LODWORD(v11) = 16;
  return v11 | v12;
}

uint64_t sub_2394AB3E0(uint64_t a1, BOOL *a2)
{
  v2 = *(a1 + 2644);
  if ((v2 & 0x10) != 0)
  {
    *a2 = (v2 & 0x20) != 0;
  }

  return (v2 >> 4) & 1;
}

uint64_t sub_2394AB3F8(uint64_t a1, int a2)
{
  if (*(a1 + 2616))
  {
    v2 = *(a1 + 2616) == a2;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  if (v2)
  {
    *(a1 + 2616) = a2;
  }

  return v3;
}

uint64_t sub_2394AB418(uint64_t a1)
{
  if ((*(a1 + 2644) & 8) != 0)
  {
    return *(a1 + 2616);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2394AB430(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*(a1 + 2592))
  {
    if (*(a1 + 2644))
    {
      v7 = 0x63100000000;
LABEL_9:
      LODWORD(v8) = 3;
      return v7 | v8;
    }

    if (*(a3 + 8) < 0xFFuLL)
    {
      v7 = 0x63200000000;
      LODWORD(v8) = 25;
      return v7 | v8;
    }

    sub_2394AAF00(a1);
    if (*a2 == 1)
    {
      if ((*(a1 + 2644) & 2) != 0)
      {
        v7 = 0x63A00000000;
        goto LABEL_9;
      }

      v5 = sub_2392C86E0(a2);
      v6 = *(a1 + 2644) | 0x20;
    }

    else
    {
      if (*(a1 + 2640) != 1)
      {
        v7 = 0x64900000000;
        LODWORD(v8) = 11;
        return v7 | v8;
      }

      v5 = sub_2392C86E0((a1 + 2640));
      v6 = *(a1 + 2644) & 0xFFDF;
    }

    v10 = *v5;
    *(a1 + 2644) = v6;
    if ((v10 - 1) > 0xFDu)
    {
      v7 = 0x64C00000000;
      LODWORD(v8) = 113;
      return v7 | v8;
    }

    if (*(a1 + 2616) && *(a1 + 2616) != v10)
    {
      v7 = 0x64D00000000;
      goto LABEL_9;
    }

    *(a1 + 2616) = v10;
    v8 = (*(**(a1 + 2592) + 32))(*(a1 + 2592));
    if (v8)
    {
      v7 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v8) = 0;
      v7 = 0;
      *(a1 + 2644) |= 0x10u;
    }
  }

  else
  {
    v7 = 0x62D00000000;
    LODWORD(v8) = 3;
  }

  return v7 | v8;
}

unint64_t sub_2394AB5D4(uint64_t a1)
{
  if (!*(a1 + 2600))
  {
    v2 = 0x65600000000;
    LODWORD(v3) = 3;
    return v3 | v2;
  }

  if ((*(a1 + 2644) & 0xE) != 0)
  {
    v2 = 0x65B00000000;
LABEL_4:
    LODWORD(v3) = 3;
    return v3 | v2;
  }

  sub_2394AAF00(a1);
  if (*(a1 + 2640) != 1)
  {
    v2 = 0x66700000000;
    LODWORD(v3) = 11;
    return v3 | v2;
  }

  v4 = *sub_2392C86E0((a1 + 2640));
  if ((v4 - 1) > 0xFDu)
  {
    v2 = 0x66A00000000;
    LODWORD(v3) = 113;
    return v3 | v2;
  }

  if (*(a1 + 2616) && *(a1 + 2616) != v4)
  {
    v2 = 0x66B00000000;
    goto LABEL_4;
  }

  *(a1 + 2616) = v4;
  v3 = (*(**(a1 + 2600) + 48))(*(a1 + 2600));
  if (v3)
  {
    v2 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = 0;
    LODWORD(v3) = 0;
    *(a1 + 2644) |= 3u;
  }

  return v3 | v2;
}

unint64_t sub_2394AB704(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v30 = 2080;
    v31 = "FindExistingFabricByNocChaining";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v28 = 0;
  *buf = 0;
  v9 = sub_2394A03F4(a3, buf, &v28);
  if (v9)
  {
    goto LABEL_6;
  }

  v32 = &unk_284BB9138;
  v22 = buf;
  v23 = 400;
  v27 = &unk_2395D6B90;
  v9 = sub_2394A7BFC(a1, a2, &v22);
  if (v9)
  {
    goto LABEL_6;
  }

  sub_238DB6950(v26, v22, v23);
  v9 = sub_2394A0354(v26, &v27);
  if (v9)
  {
    goto LABEL_6;
  }

  v33 = *v27;
  v15 = v27[2];
  v14 = v27[3];
  v16 = *(v27 + 64);
  v34 = v27[1];
  v37 = v16;
  v36 = v14;
  v35 = v15;
  sub_238DCCCDC(a1, &v22);
  if (v24 == v25)
  {
    goto LABEL_15;
  }

  if (v25 == 16 && v24 == 16)
  {
    v17 = v22;
LABEL_14:
    if (v17 == a1)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v18 = sub_238DC7C7C(&v22);
  if (*(v18 + 8) != v28)
  {
    goto LABEL_19;
  }

  v19 = v18;
  *buf = &unk_284BB9138;
  v9 = sub_2394A8620(a1, *(v18 + 137), buf);
  if (v9)
  {
LABEL_6:
    v10 = v9 & 0xFFFFFFFF00000000;
    goto LABEL_7;
  }

  if (!sub_23928F6C0(buf, &v32))
  {
LABEL_19:
    v20 = v24;
    v17 = v22;
    while (1)
    {
      if (v20 < v25)
      {
        v24 = ++v20;
      }

      if (v20 == v25)
      {
        break;
      }

      v21 = &v22[152 * v20];
      if (v21[137] && (*v21 - 1) < 0xFFFFFFEFFFFFFFFFLL)
      {
        if (v25 == 16 && v20 == 16)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }
    }

LABEL_15:
    v10 = 0;
    LODWORD(v9) = 0;
    *a4 = 0;
    goto LABEL_7;
  }

  v10 = 0;
  LODWORD(v9) = 0;
  *a4 = *(v19 + 137);
LABEL_7:
  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    *&buf[4] = "Fabric";
    v30 = 2080;
    v31 = "FindExistingFabricByNocChaining";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

unint64_t sub_2394ABA3C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, char a6, int a7, _BYTE *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    v27 = "Fabric";
    v28 = 2080;
    v29 = "AddNewPendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 2600))
  {
    v15 = 0x6A500000000;
    goto LABEL_18;
  }

  if (!a8)
  {
    v15 = 0x6A600000000;
    LODWORD(v16) = 47;
    goto LABEL_19;
  }

  v14 = *(a1 + 2644);
  if ((v14 & 2) == 0)
  {
    v15 = 0x6AA00000000;
LABEL_18:
    LODWORD(v16) = 3;
    goto LABEL_19;
  }

  if ((v14 & 4) != 0)
  {
    v15 = 0x6AC00000000;
    goto LABEL_18;
  }

  sub_2394AAF00(a1);
  if (*(a1 + 2640) != 1)
  {
    v15 = 0x6B700000000;
    LODWORD(v16) = 11;
    goto LABEL_19;
  }

  v17 = *sub_2392C86E0((a1 + 2640));
  if ((v17 - 1) > 0xFDu)
  {
    v15 = 0x6BC00000000;
    LODWORD(v16) = 113;
    goto LABEL_19;
  }

  if (a5)
  {
    goto LABEL_13;
  }

  v21 = *(a1 + 2592);
  if (!v21)
  {
    v15 = 0x6C200000000;
    goto LABEL_34;
  }

  if (((*(*v21 + 24))(v21, v17) & 1) == 0 && !(*(**(a1 + 2592) + 16))(*(a1 + 2592)))
  {
    v15 = 0x6C600000000;
LABEL_34:
    LODWORD(v16) = 16;
    goto LABEL_19;
  }

LABEL_13:
  v22 = a7;
  if ((*(a1 + 2644) & 0x40) == 0)
  {
    buf[0] = 0;
    v16 = sub_2394AB704(a1, v17, a2, buf);
    if (v16)
    {
LABEL_25:
      v15 = v16 & 0xFFFFFFFF00000000;
      goto LABEL_19;
    }

    if (buf[0])
    {
      v15 = 0x6CE00000000;
      LODWORD(v16) = 126;
      goto LABEL_19;
    }
  }

  v16 = (*(**(a1 + 2600) + 56))(*(a1 + 2600), v17, a2, a3);
  if (v16)
  {
    goto LABEL_25;
  }

  if (*(a1 + 2616) && *(a1 + 2616) != v17)
  {
    v15 = 0x6D300000000;
    goto LABEL_18;
  }

  *(a1 + 2616) = v17;
  v16 = sub_2394A91E8(a1, v17, 1, a5, a6, a4, v22);
  if (v16)
  {
    sub_2394ABDE0(a1);
    goto LABEL_25;
  }

  *(a1 + 2644) |= 9u;
  *a8 = v17;
  sub_2394A8ED0(a1, v17);
  v15 = 0;
  LODWORD(v16) = 0;
LABEL_19:
  v18 = sub_23948B4CC();
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    v27 = "Fabric";
    v28 = 2080;
    v29 = "AddNewPendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16 | v15;
}

void sub_2394ABDE0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v11 = "Fabric";
    v12 = 2080;
    v13 = "RevertPendingOpCertsExceptRoot";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_238DCCC50(a1 + 2432);
  if (*(a1 + 2644))
  {
    v3 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 2616);
      *buf = 67109120;
      LODWORD(v11) = v4;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Reverting pending fabric data for fabric 0x%x", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = *(a1 + 2616);
      sub_2393D5320(0x11u, 1);
    }
  }

  v5 = *(a1 + 2600);
  if (v5)
  {
    (*(*v5 + 112))(v5);
  }

  v6 = *(a1 + 2644);
  if ((v6 & 8) != 0)
  {
    sub_2394A9924(a1, *(a1 + 2616));
    v6 = *(a1 + 2644);
  }

  *(a1 + 2644) = v6 & 0xFFF3;
  if ((v6 & 2) == 0)
  {
    *(a1 + 2616) = 0;
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    v11 = "Fabric";
    v12 = 2080;
    v13 = "RevertPendingOpCertsExceptRoot";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2394ABFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = sub_23948B4CC();
  if (os_signpost_enabled(v14))
  {
    *buf = 136315394;
    v30 = "Fabric";
    v31 = 2080;
    v32 = "UpdatePendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 2600))
  {
    v18 = 0x6ED00000000;
LABEL_26:
    v20 = 3;
    goto LABEL_27;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v18 = 0x6EE00000000;
    v20 = 47;
    goto LABEL_27;
  }

  if (!a5)
  {
    v21 = *(a1 + 2592);
    if (v21)
    {
      if (((*(*v21 + 24))(v21, a2) & 1) != 0 || (*(**(a1 + 2592) + 16))(*(a1 + 2592)))
      {
        goto LABEL_6;
      }

      v18 = 0x6F700000000;
    }

    else
    {
      v18 = 0x6F400000000;
    }

    v20 = 16;
    goto LABEL_27;
  }

LABEL_6:
  v15 = *(a1 + 2644);
  if ((v15 & 2) != 0)
  {
    v18 = 0x6FB00000000;
    goto LABEL_26;
  }

  if ((v15 & 8) != 0)
  {
    v18 = 0x6FE00000000;
    goto LABEL_26;
  }

  v16 = sub_2394A7FC0(a1, a2);
  if (!v16)
  {
    v18 = 0x70200000000;
LABEL_33:
    v20 = 113;
    goto LABEL_27;
  }

  v25 = v16;
  if (*(a4 + 8))
  {
    v27 = buf;
    v28 = 400;
    v17 = (*(**(a1 + 2600) + 128))(*(a1 + 2600), a2, 1, &v27);
    v18 = v17;
    if (v17 != 45)
    {
      if (v17)
      {
        goto LABEL_39;
      }

      if (v28)
      {
        v19 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v26 = 0;
          _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Received an UpdateNOC storage request with ICAC when VVSC already present. VVSC must be removed first.", v26, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0x11u, 1);
        }

        v18 = 0x71300000000;
        goto LABEL_26;
      }
    }

    v15 = *(a1 + 2644);
  }

  if ((v15 & 0x40) != 0)
  {
    goto LABEL_38;
  }

  buf[0] = 0;
  v18 = sub_2394AB704(a1, a2, a3, buf);
  if (v18)
  {
LABEL_39:
    v20 = v18;
    goto LABEL_27;
  }

  if (buf[0] != a2)
  {
    v18 = 0x72200000000;
    goto LABEL_33;
  }

LABEL_38:
  v18 = (*(**(a1 + 2600) + 64))(*(a1 + 2600), a2, a3, a4);
  if (v18)
  {
    goto LABEL_39;
  }

  if (*(a1 + 2616) && *(a1 + 2616) != a2)
  {
    v18 = 0x72700000000;
    goto LABEL_26;
  }

  *(a1 + 2616) = a2;
  v18 = sub_2394A91E8(a1, a2, 0, a5, a6, *(v25 + 138), a7);
  if (v18)
  {
    sub_2394ABDE0(a1);
    goto LABEL_39;
  }

  *(a1 + 2644) |= 5u;
  sub_2394A8ED0(a1, a2);
  v18 = 0;
  v20 = 0;
LABEL_27:
  v22 = sub_23948B4CC();
  if (os_signpost_enabled(v22))
  {
    *buf = 136315394;
    v30 = "Fabric";
    v31 = 2080;
    v32 = "UpdatePendingFabricCommon";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18 & 0xFFFFFFFF00000000 | v20;
}

uint64_t sub_2394AC43C(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2584) || !*(a1 + 2600))
  {
    *&v50 = 0x73F00000003;
    goto LABEL_126;
  }

  v2 = *(a1 + 2644);
  v49 = v2 & 4;
  v3 = v2 & 0xC;
  if (v2)
  {
    v4 = *(a1 + 2616);
    v5 = (*(a1 + 2616) + 1) < 2u || v3 == 0;
    v6 = *(a1 + 2644);
    if (!v5)
    {
      v6 = 0;
      if ((v2 & 6) != 2 && (v2 & 8) != 0)
      {
        v7 = sub_2393D9044(0x11u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *&buf[4] = 1;
          *&buf[8] = 1024;
          *&buf[10] = v49 >> 2;
          *&buf[14] = 1024;
          LODWORD(v57) = (v2 & 2) >> 1;
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Found inconsistent interlocks during commit %u/%u/%u!", buf, 0x14u);
        }

        v6 = 1;
        if (sub_2393D5398(1u))
        {
          v6 = 1;
          sub_2393D5320(0x11u, 1);
        }
      }
    }
  }

  else
  {
    v4 = *(a1 + 2616);
    v6 = *(a1 + 2644);
  }

  v8 = sub_2394A7F48(a1, v4);
  if ((~v2 & 5) == 0 && (v6 & 1) == 0 && (!*(a1 + 2569) || (*(a1 + 2432) - 1) > 0xFFFFFFEFFFFFFFFELL || *(a1 + 2569) != v4 || !v8))
  {
    v16 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Missing pending fabric on update during commit!", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_111;
    }

    goto LABEL_112;
  }

  v10 = (v2 & 1) == 0 || (v2 & 8) == 0;
  if (((v10 | v6) & 1) == 0)
  {
    v11 = (*(**(a1 + 2600) + 40))(*(a1 + 2600), v4, 0);
    if ((*(a1 + 2644) & 2) == 0 || (v11 & 1) == 0)
    {
      v40 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_ERROR, "Missing trusted root for fabric add during commit!", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        goto LABEL_111;
      }

      goto LABEL_112;
    }
  }

  v13 = (v2 & 1) == 0 || v3 == 0;
  if (((v13 | v6) & 1) == 0 && (sub_2394AB290(a1, v4) & 1) == 0)
  {
    v41 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Could not find an operational key during commit!", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
LABEL_111:
      sub_2393D5320(0x11u, 1);
    }

LABEL_112:
    v50 = 0uLL;
    if ((((v2 & 0xE) == 2) & v2) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_113;
  }

  v15 = (v2 & 1) == 0 || (v2 & 0xE) == 2;
  if ((v15 | v6))
  {
    v50 = 0uLL;
    if ((((v2 & 0xE) == 2) & v2) == 0)
    {
      if ((v6 & 1) == 0)
      {
LABEL_122:
        *(a1 + 2644) = 0;
        *(a1 + 2616) = 0;
        sub_238DCCC50(a1 + 2432);
        (*(**(a1 + 2600) + 88))(*(a1 + 2600));
        v45 = *(a1 + 2592);
        if (v45)
        {
          (*(*v45 + 80))(v45);
        }

        goto LABEL_126;
      }

LABEL_117:
      v44 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "Failed to commit: internally inconsistent state!", buf, 2u);
      }

      v43 = 0x785000000ACLL;
      if (!sub_2393D5398(1u))
      {
        goto LABEL_121;
      }

      goto LABEL_120;
    }

LABEL_113:
    v42 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_ERROR, "Failed to commit: tried to commit with only a new trusted root cert. No data committed.", buf, 2u);
    }

    v43 = 0x78000000003;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_121;
    }

LABEL_120:
    sub_2393D5320(0x11u, 1);
LABEL_121:
    *&v50 = v43;
    goto LABEL_122;
  }

  buf[0] = v4;
  buf[1] = (v2 & 8) >> 3;
  *&v50 = sub_2394AB0D0(a1, buf);
  *(&v50 + 1) = v17;
  v18 = v50;
  if (v50)
  {
    v19 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to store commit marker, may be inconsistent if reboot happens during fail-safe!", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x11u, 1);
    }
  }

  *(a1 + 2644) &= ~1u;
  if (v49)
  {
    v20 = sub_2394A7F48(a1, v4);
    if (!v20 || v20 == a1 + 2432)
    {
      sub_239535D84();
    }

    sub_2394A6910(v20, a1 + 2432);
  }

  v21 = sub_2394A7F48(a1, v4);
  if (!v21)
  {
    sub_239535E1C();
  }

  *buf = sub_2394A884C(a1, v21);
  *&buf[8] = v22;
  if (*buf)
  {
    v23 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v55) = 136315138;
      *(&v55 + 4) = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Failed to commit pending fabric metadata: %s", &v55, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x11u, 1);
    }
  }

  v24 = buf;
  if (v18)
  {
    v24 = &v50;
  }

  v50 = *v24;
  v55 = 0uLL;
  v25 = *(a1 + 2592);
  if (v25)
  {
    if ((*(*v25 + 24))(v25, v4))
    {
      if ((*(**(a1 + 2592) + 16))(*(a1 + 2592)))
      {
        *&v55 = (*(**(a1 + 2592) + 48))(*(a1 + 2592), v4);
        *(&v55 + 1) = v26;
        if (v55)
        {
          v27 = sub_2393D9044(0x11u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = sub_2393C9138();
            LODWORD(v54) = 136315138;
            *(&v54 + 4) = v28;
            _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Failed to commit pending operational keypair %s", &v54, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(0x11u, 1);
          }

          (*(**(a1 + 2592) + 80))(*(a1 + 2592));
        }
      }
    }
  }

  v29 = &v55;
  if (v50)
  {
    v29 = &v50;
  }

  v50 = *v29;
  *&v54 = (*(**(a1 + 2600) + 72))(*(a1 + 2600), v4);
  *(&v54 + 1) = v30;
  if (v54)
  {
    v31 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = sub_2393C9138();
      LODWORD(v53) = 136315138;
      *(&v53 + 4) = v32;
      _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Failed to commit pending operational certificates %s", &v53, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x11u, 1);
    }

    (*(**(a1 + 2600) + 88))(*(a1 + 2600));
  }

  v33 = &v50;
  if (!v50)
  {
    v33 = &v54;
  }

  v50 = *v33;
  if (sub_2394B7B8C(a1 + 2624))
  {
    v34 = sub_2393D9044(0x11u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = sub_2393C9138();
      LODWORD(v53) = 136315138;
      *(&v53 + 4) = v35;
      _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Failed to commit Last Known Good Time: %s", &v53, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0x11u, 1);
    }
  }

  v53 = 0uLL;
  if ((*(a1 + 2644) & 8) != 0)
  {
    sub_2394AAE78(a1);
    *&v53 = sub_2394A9F64(a1);
    *(&v53 + 1) = v36;
    if (v53)
    {
      v37 = sub_2393D9044(0x11u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = sub_2393C9138();
        *v51 = 136315138;
        v52 = v38;
        _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Failed to commit pending fabric indices: %s", v51, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0x11u, 1);
      }
    }
  }

  v39 = &v50;
  if (!v50)
  {
    v39 = &v53;
  }

  v50 = *v39;
  *(a1 + 2644) = 0;
  *(a1 + 2616) = 0;
  sub_238DCCC50(a1 + 2432);
  if (v50)
  {
    sub_2394A9924(a1, v4);
    sub_2394A9DC0(a1);
  }

  else
  {
    sub_2394A905C(a1, v4);
  }

  v46 = *(a1 + 2584);
  *buf = *"g/fs/c";
  v57 = *&algn_2395D6CC5[9];
  v58 = 0;
  (*(*v46 + 32))(v46, buf);
LABEL_126:
  result = v50;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394ACF40(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 2584))
  {
    if ((a2 - 1) > 0xFDu)
    {
      v10 = 0x85800000000;
      LODWORD(v9) = 113;
    }

    else
    {
      v4 = *(a3 + 8);
      if (v4 > 0x20)
      {
        v10 = 0x85A00000000;
        LODWORD(v9) = 47;
      }

      else
      {
        v6 = sub_2394A7F48(a1, a2);
        if (v6 && (v7 = v6, *(v6 + 137)) && (*v6 - 1) <= 0xFFFFFFEFFFFFFFFELL)
        {
          v8 = (v6 + 104);
          if (v4)
          {
            memcpy((v6 + 104), *a3, v4);
            v8 += v4;
          }

          *v8 = 0;
          if ((*(a1 + 2644) & 0xC) != 0 || v7 == a1 + 2432 || (v9 = sub_2394A884C(a1, v7), !v9))
          {
            v10 = 0;
            LODWORD(v9) = 0;
          }

          else
          {
            v10 = v9 & 0xFFFFFFFF00000000;
          }
        }

        else
        {
          v10 = 0x85E00000000;
          LODWORD(v9) = 113;
        }
      }
    }
  }

  else
  {
    v10 = 0x85700000000;
    LODWORD(v9) = 3;
  }

  return v9 | v10;
}

uint64_t sub_2394AD07C(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = sub_2394A7FC0(a1, a2);
  if (v4)
  {
    v5 = sub_239283EA0(v4);
    v6 = 0;
    v7 = 0;
    *a3 = v5;
    a3[1] = v8;
  }

  else
  {
    v6 = 0x86F00000000;
    v7 = 113;
  }

  return v7 | v6;
}

uint64_t sub_2394AD0D4(unsigned __int8 *a1, _BYTE *a2)
{
  sub_2394AAF00(a1);
  if (a1[2640] == 1)
  {
    v4 = *sub_2392C86E0(a1 + 2640);
    if ((v4 - 1) > 0xFD)
    {
      v5 = 0x87E00000000;
      v6 = 113;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      *a2 = v4;
    }
  }

  else
  {
    v5 = 0x87A00000000;
    v6 = 11;
  }

  return v6 | v5;
}

uint64_t sub_2394AD15C(uint64_t a1, char a2)
{
  if (*(a1 + 2644))
  {
    v4 = 0x88600000000;
    v5 = 3;
  }

  else if ((a2 - 1) > 0xFDu)
  {
    v4 = 0x88700000000;
    v5 = 113;
  }

  else if (sub_2394A7FC0(a1, a2))
  {
    v4 = 0x88A00000000;
    v5 = 126;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    *(a1 + 2640) = 1;
    *(a1 + 2641) = a2;
  }

  return v5 | v4;
}

uint64_t sub_2394AD200(uint64_t a1, char a2, int a3)
{
  if ((a2 - 1) > 0xFDu)
  {
    v5 = 0x89200000000;
    v6 = 113;
  }

  else
  {
    v4 = sub_2394A7F48(a1, a2);
    if (v4 && *(v4 + 137) && (*v4 - 1) <= 0xFFFFFFEFFFFFFFFELL)
    {
      v5 = 0;
      v6 = 0;
      *(v4 + 141) = a3 == 0;
    }

    else
    {
      v5 = 0x89600000000;
      v6 = 113;
    }
  }

  return v6 | v5;
}

uint64_t sub_2394AD2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2600);
  if (v3)
  {
    return (*(*v3 + 128))(v3, a2, 0, a3);
  }

  else
  {
    return 0x89F00000003;
  }
}

uint64_t sub_2394AD300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2600);
  if (v3)
  {
    return (*(*v3 + 128))(v3, a2, 1, a3);
  }

  else
  {
    return 0x8A600000003;
  }
}

uint64_t sub_2394AD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39[10] = *MEMORY[0x277D85DE8];
  v33[0] = a3;
  v33[1] = a4;
  v32[0] = a5;
  v32[1] = a6;
  v10 = sub_2394A7F48(a1, a2);
  if (v10)
  {
    v11 = v10;
    v39[0] = &unk_284BB9138;
    v12 = sub_2394A7848(v10, v39);
    v13 = v12;
    if (v12)
    {
      v14 = v12 & 0xFFFFFFFF00000000;
LABEL_19:
      result = v14 | v13;
      goto LABEL_20;
    }

    v30 = &v38;
    v31 = 76;
    v16 = sub_2393F36D0(1, v39, *(v11 + 8), *(v11 + 138), &v30);
    if (!v16)
    {
      if (v31 != 76)
      {
        v14 = 0x8BD00000000;
        LODWORD(v16) = 172;
        goto LABEL_18;
      }

      v28 = &v37;
      v29 = 85;
      v17 = *(a1 + 2600);
      if (!v17)
      {
        v14 = 0x89F00000000;
        LODWORD(v16) = 3;
        goto LABEL_18;
      }

      v16 = (*(*v17 + 128))(v17, a2, 0, &v28);
      if (!v16)
      {
        v26 = &v36;
        v27 = 211;
        v35 = 0;
        v18 = sub_2393D52D0(0x40uLL, 1uLL);
        if (v18)
        {
          v19 = v18;
          sub_238DB6950(v25, v30, v31);
          sub_238DB6950(v24, v28, v29);
          v16 = sub_2393F37A8(a2, v33, v32, v25, v24, &v26);
          if (v16 || (sub_238DB6950(v25, v26, v27), v16 = sub_2394AB310(a1, a2, v25[0], v25[1], v34), v16))
          {
            v14 = v16 & 0xFFFFFFFF00000000;
            j__free(v19);
          }

          else
          {
            v21 = v34[0];
            v22 = v34[1];
            v23 = v34[3];
            v19[2] = v34[2];
            v19[3] = v23;
            *v19 = v21;
            v19[1] = v22;
            *a7 = a2;
            v14 = 0;
            LODWORD(v16) = 0;
            *(a7 + 1) = *sub_2394AD5FC(&v30, 0);
            *(a7 + 8) = v19;
            *(a7 + 16) = 64;
          }
        }

        else
        {
          v14 = 0x8CB00000000;
          LODWORD(v16) = 25;
        }

        sub_2393F9144(v34, 64);
        goto LABEL_18;
      }
    }

    v14 = v16 & 0xFFFFFFFF00000000;
LABEL_18:
    v13 = v16;
    goto LABEL_19;
  }

  result = 0x8B10000002FLL;
LABEL_20:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394AD5FC(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239531EC4();
  }

  return *a1 + a2;
}

unint64_t sub_2394AD624(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2600))
  {
    v16 = 0x8E000000000;
    LODWORD(v17) = 172;
    goto LABEL_10;
  }

  if ((a2 - 1) > 0xFDu)
  {
    v16 = 0x8E100000000;
LABEL_9:
    LODWORD(v17) = 47;
    goto LABEL_10;
  }

  v12 = sub_2394A7F48(a1, a2);
  if (!v12)
  {
    v16 = 0x8E400000000;
    goto LABEL_9;
  }

  v13 = v12;
  v14 = *(a1 + 2644);
  if ((v14 & 8) != 0)
  {
    v15 = *(a1 + 2616);
  }

  else
  {
    v15 = 0;
  }

  if (v15 == a2)
  {
    v20 = 1;
  }

  else if (*(a1 + 2569))
  {
    v20 = (~v14 & 5) == 0 && *(a1 + 2569) == a2 && (*(a1 + 2432) - 1) < 0xFFFFFFEFFFFFFFFFLL;
  }

  else
  {
    v20 = 0;
  }

  *a6 = 0;
  if (*a5 != 1)
  {
LABEL_33:
    if (*a4 == 1)
    {
      __s1 = buf;
      __n = 85;
      v17 = (*(**(a1 + 2600) + 128))(*(a1 + 2600), a2, 0, &__s1);
      if (v17)
      {
        goto LABEL_45;
      }

      v26 = sub_239289A18(a4);
      if (__n != *(v26 + 1) || __n && memcmp(__s1, *v26, __n))
      {
        v27 = *(a1 + 2600);
        v28 = sub_239289A18(a4);
        v17 = (*(*v27 + 104))(v27, a2, *v28, v28[1]);
        if (v17)
        {
          goto LABEL_45;
        }

        *a6 = 1;
      }
    }

    if (*a3 != 1 || (v29 = *(v13 + 138), v29 == *sub_238EAB248(a3)) || (*(v13 + 138) = *sub_238EAB248(a3), v20))
    {
      LODWORD(v17) = 0;
      v16 = 0;
      goto LABEL_10;
    }

    v17 = sub_2394A884C(a1, v13);
    if (!v17)
    {
      LODWORD(v17) = 0;
      v16 = 0;
      *a6 = 1;
      goto LABEL_10;
    }

LABEL_45:
    v16 = v17 & 0xFFFFFFFF00000000;
    goto LABEL_10;
  }

  if (!(*(**(a1 + 2600) + 40))(*(a1 + 2600), a2, 1))
  {
    v24 = *(a1 + 2600);
    v25 = sub_239289A18(a5);
    v17 = (*(*v24 + 96))(v24, a2, *v25, v25[1]);
    if (v17)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v23 = sub_2393D9044(0x11u);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Received SetVIDVerificationStatement storage request with VVSC when ICAC already present. ICAC must be removed first.", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0x11u, 1);
  }

  v16 = 0x8F600000000;
  LODWORD(v17) = 3;
LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
  return v16 | v17;
}

uint64_t sub_2394AD99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 352);
  if (v2 > *(a1 + 8))
  {
    *(a1 + 8) = v2;
  }

  return 0;
}

uint64_t sub_2394AD9BC(uint64_t a1, uint64_t *a2)
{
  sub_23949ECF0(v8);
  sub_2394A0BD0(v8);
  v5 = sub_2393F77A4(a2, 0, 0x10u);
  if (!v5)
  {
    v5 = sub_2393F77A4(a2, 128, 0);
    if (!v5)
    {
      v5 = sub_2393F6DE8(a2, 2uLL);
      if (!v5)
      {
        v5 = sub_2393F77B0(a2);
        if (!v5)
        {
          v5 = sub_2393F6DE8(a2, 1uLL);
          if (!v5)
          {
            v5 = sub_2393F77A4(a2, 0, 0x10u);
            if (!v5)
            {
              v5 = sub_2393F5C58(a2, 513);
              if (!v5)
              {
                v5 = sub_2393F77B0(a2);
                if (!v5)
                {
                  v5 = sub_23949F4C8(v8, a2);
                  if (!v5)
                  {
                    v5 = sub_2394ADB9C(1u, 0, a2);
                    if (!v5)
                    {
                      v5 = sub_23949F4C8(v8, a2);
                      if (!v5)
                      {
                        v5 = sub_2394ADC30(a1, a2);
                        if (!v5)
                        {
                          v5 = sub_2393F77A4(a2, 128, 3u);
                          if (!v5)
                          {
                            v5 = sub_2393F77A4(a2, 0, 0x10u);
                            if (!v5)
                            {
                              sub_2394ADCE0(1, a2);
                              sub_2394ADDB0(1u, a2);
                              v7 = 100730370;
                              sub_2394ADE5C(&v7, 2, a2);
                              v5 = sub_2393F77B0(a2);
                              if (!v5)
                              {
                                v5 = sub_2393F77B0(a2);
                                if (!v5)
                                {
                                  v5 = sub_2393F77B0(a2);
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

  nullsub_56(v8, v4);
  return v5;
}

uint64_t sub_2394ADB9C(unsigned int a1, unsigned int a2, void *a3)
{
  result = sub_2393F77A4(a3, 0, 0x10u);
  if (!result)
  {
    result = sub_23949FB2C(a1, &v7);
    if (!result)
    {
      result = sub_2393F75FC(a3, &v7);
      if (!result)
      {
        result = sub_23949FB2C(a2, &v7);
        if (!result)
        {
          result = sub_2393F75FC(a3, &v7);
          if (!result)
          {
            return sub_2393F77B0(a3);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394ADC30(uint64_t a1, uint64_t a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F77A4(a2, 0, 0x10u);
    if (!result)
    {
      result = sub_2393F5C58(a2, 257);
      if (!result)
      {
        result = sub_2393F5C58(a2, 1025);
        if (!result)
        {
          result = sub_2393F77B0(a2);
          if (!result)
          {
            result = sub_2393F7438(a2, 0, (a1 + 8), 0x41u);
            if (!result)
            {

              return sub_2393F77B0(a2);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394ADCE0(int a1, uint64_t *a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F5C58(a2, 1281);
    if (!result)
    {
      result = sub_2393F6F40(a2, 1);
      if (!result)
      {
        result = sub_2393F7918(a2, 0, 4u, 0);
        if (!result)
        {
          result = sub_2393F77A4(a2, 0, 0x10u);
          if (!result)
          {
            if (a1 || (result = sub_2393F6F40(a2, 1), !result))
            {
              result = sub_2393F77B0(a2);
              if (!result)
              {
                result = sub_2393F77B0(a2);
                if (!result)
                {

                  return sub_2393F77B0(a2);
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

uint64_t sub_2394ADDB0(unsigned __int16 a1, uint64_t *a2)
{
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F5C58(a2, 1282);
    if (!result)
    {
      result = sub_2393F6F40(a2, 1);
      if (!result)
      {
        result = sub_2393F7918(a2, 0, 4u, 0);
        if (!result)
        {
          result = sub_2393F726C(a2, a1);
          if (!result)
          {
            result = sub_2393F77B0(a2);
            if (!result)
            {

              return sub_2393F77B0(a2);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394ADE5C(unsigned __int16 *a1, uint64_t a2, uint64_t *a3)
{
  result = sub_2393F77A4(a3, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F5C58(a3, 1283);
    if (!result)
    {
      result = sub_2393F6F40(a3, 1);
      if (!result)
      {
        result = sub_2393F7918(a3, 0, 4u, 0);
        if (!result)
        {
          result = sub_2393F77A4(a3, 0, 0x10u);
          if (!result)
          {
            if (a2)
            {
              v7 = 2 * a2;
              while (1)
              {
                result = sub_2393F5C58(a3, *a1);
                if (result)
                {
                  break;
                }

                ++a1;
                v7 -= 2;
                if (!v7)
                {
                  goto LABEL_10;
                }
              }
            }

            else
            {
LABEL_10:
              result = sub_2393F77B0(a3);
              if (!result)
              {
                result = sub_2393F77B0(a3);
                if (!result)
                {
                  return sub_2393F77B0(a3);
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

uint64_t sub_2394ADF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2393F6DA8(v16, *a4, a4[1]);
  v8 = (*(*a3 + 40))(a3);
  v9 = sub_2394AE148(a1, a2, v8, v16);
  if (!v9)
  {
    v18 = 0;
    v10 = *a4;
    v11 = sub_2393F6DCC(v16);
    v9 = (*(*a3 + 24))(a3, v10, v11, v17);
    if (!v9)
    {
      sub_2393F6DA8(v16, *a4, a4[1]);
      v9 = sub_2393F77A4(v16, 0, 0x10u);
      if (!v9)
      {
        v12 = (*(*a3 + 40))(a3);
        v9 = sub_2394AE148(a1, a2, v12, v16);
        if (!v9)
        {
          v9 = sub_2393F77A4(v16, 0, 0x10u);
          if (!v9)
          {
            v9 = sub_2393F5C58(v16, 513);
            if (!v9)
            {
              v9 = sub_2393F77B0(v16);
              if (!v9)
              {
                v9 = sub_2394AE2D0(v17, v16);
                if (!v9)
                {
                  v9 = sub_2393F77B0(v16);
                  if (!v9)
                  {
                    v15 = sub_2393F6DCC(v16);
                    sub_238DB8498(a4, v15);
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_2393F9144(v17, 64);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_2394AE148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v10 = 0x15500000000;
    LODWORD(v11) = 47;
  }

  else
  {
    v5 = *(a1 + 12);
    if (v5)
    {
      v6 = v5 >= *(a1 + 8);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v13 = 0;
      v11 = sub_23949E8C0(a1 + 16, &v13);
      if (!v11)
      {
        v11 = sub_2393F77A4(a4, 0, 0x10u);
        if (!v11)
        {
          v11 = sub_2393F77A4(a4, 128, 0);
          if (!v11)
          {
            v11 = sub_2393F6DE8(a4, 2uLL);
            if (!v11)
            {
              v11 = sub_2393F77B0(a4);
              if (!v11)
              {
                v11 = sub_2393F6DE8(a4, *a1);
                if (!v11)
                {
                  v11 = sub_2393F77A4(a4, 0, 0x10u);
                  if (!v11)
                  {
                    v11 = sub_2393F5C58(a4, 513);
                    if (!v11)
                    {
                      v11 = sub_2393F77B0(a4);
                      if (!v11)
                      {
                        v11 = sub_23949F4C8(a1 + 176, a4);
                        if (!v11)
                        {
                          v11 = sub_2394ADB9C(*(a1 + 8), *(a1 + 12), a4);
                          if (!v11)
                          {
                            v11 = sub_23949F4C8(a1 + 16, a4);
                            if (!v11)
                            {
                              v11 = sub_2394ADC30(a2, a4);
                              if (!v11)
                              {
                                v11 = sub_2394AE658(v13, a2, a3, (a1 + 336), a4);
                                if (!v11)
                                {
                                  v11 = sub_2393F77B0(a4);
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

      v10 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = 0x15700000000;
      LODWORD(v11) = 47;
    }
  }

  return v10 | v11;
}

uint64_t sub_2394AE2D0(uint64_t a1, uint64_t *a2)
{
  result = sub_2393F7918(a2, 0, 3u, 1);
  if (!result)
  {
    sub_2394AE9B8(&v5, a1);
    result = sub_23949FEE8(v5, a2);
    if (!result)
    {
      return sub_2393F77B0(a2);
    }
  }

  return result;
}